@interface BKSHIDUISensorMode
+ (BKSHIDUISensorMode)new;
+ (id)_prevailingMode:(id)mode;
+ (id)buildModeForReason:(id)reason builder:(id)builder;
- (BKSHIDUISensorMode)init;
- (BKSHIDUISensorMode)initWithCoder:(id)coder;
- (BOOL)_settingKeysAllowed:(id)allowed;
- (BOOL)isEffectivelyEqualToMode:(id)mode;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualExceptIdentifierAndReasons:(id)reasons;
- (BOOL)isRestrictedToSystemShell;
- (id)_init;
- (id)_initCopyFrom:(id)from;
- (id)didFinishProtobufDecodingWithError:(id *)error;
- (id)initForProtobufDecoding;
- (id)mutableCopy;
- (int64_t)_comparisonScore;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDUISensorMode

- (int64_t)_comparisonScore
{
  v3 = self->_proximityDetectionMode - 1;
  if (v3 > 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1863CFB58[v3];
  }

  if (self->_estimatedProximityMode)
  {
    v4 += 5000;
  }

  v5 = v4 + self->_postEventWithCurrentDetectionMask;
  if (self->_digitizerEnabled)
  {
    if ([(NSSet *)self->_multitouchHostStateKeys count])
    {
      v6 = [(NSSet *)self->_multitouchHostStateKeys mutableCopy];
      v7 = [MEMORY[0x1E695DFD8] setWithObjects:{@"CoverGestureEnabled", @"WakeOnTapEnabled", @"WakeOnSwipeEnabled", 0}];
      [v6 minusSet:v7];

      v5 += 100 * [v6 count];
    }
  }

  else
  {
    v5 += 100 * [(NSSet *)self->_multitouchHostStateKeys count]+ 4000;
  }

  return v5;
}

- (id)_init
{
  v25 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = BKSHIDUISensorMode;
  v3 = [(BKSHIDUISensorMode *)&v12 init];
  if (v3)
  {
    v4 = objc_opt_class();
    if (v4 != objc_opt_class())
    {
      v5 = objc_opt_class();
      if (v5 != objc_opt_class())
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSUISensorMode cannot be subclassed"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v9 = NSStringFromSelector(a2);
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138544642;
          v14 = v9;
          v15 = 2114;
          v16 = v11;
          v17 = 2048;
          v18 = v3;
          v19 = 2114;
          v20 = @"BKSHIDUISensorMode.m";
          v21 = 1024;
          v22 = 120;
          v23 = 2114;
          v24 = v8;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v8 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18634E724);
      }
    }

    v3->_identifier = atomic_fetch_add(&_BKSNextUIModeIdentifier_staticIdentifier, 1uLL);
    v3->_versionedPID = BSGetVersionedPID();
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (unint64_t)hash
{
  [(NSString *)self->_reason hash];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_versionedPID];
  [v3 hash];

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_changeSource];
  [v4 hash];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_displayState];
  [v5 hash];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_proximityDetectionMode];
  [v6 hash];

  multitouchHostStateKeys = self->_multitouchHostStateKeys;
  if (multitouchHostStateKeys)
  {
    [(NSSet *)multitouchHostStateKeys hash];
  }

  proximityHostStateKeys = self->_proximityHostStateKeys;
  if (proximityHostStateKeys)
  {
    [(NSSet *)proximityHostStateKeys hash];
  }

  v9 = *&self->_digitizerEnabled;

  return BSHashPurifyNS();
}

void __36__BKSHIDUISensorMode_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_reason"];
  [v2 addField:"_versionedPID"];
  [v2 addField:"_changeSource"];
  [v2 addField:"_proximityDetectionMode"];
  [v2 addField:"_displayState"];
  [v2 addField:"_digitizerEnabled"];
  [v2 addField:"_pocketTouchesExpected"];
  [v2 addRepeatingField:"_multitouchHostStateKeys" containsClass:objc_opt_class()];
  [v2 addRepeatingField:"_proximityHostStateKeys" containsClass:objc_opt_class()];
  [v2 addField:"_estimatedProximityMode"];
  [v2 addField:"_postEventWithCurrentDetectionMask"];
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSHIDUISensorMode;
  return [(BKSHIDUISensorMode *)&v3 init];
}

- (id)mutableCopy
{
  v3 = [BKSMutableHIDUISensorMode alloc];

  return [(BKSHIDUISensorMode *)v3 _initCopyFrom:self];
}

- (BOOL)isRestrictedToSystemShell
{
  proximityDetectionMode = self->_proximityDetectionMode;
  result = 1;
  v7 = proximityDetectionMode > 0x14;
  v8 = (1 << proximityDetectionMode) & 0x100030;
  v9 = v7 || v8 == 0;
  if (v9 && !self->_pocketTouchesExpected)
  {
    return [(BKSHIDUISensorMode *)self _comparisonScore:v2]> 10;
  }

  return result;
}

- (BOOL)_settingKeysAllowed:(id)allowed
{
  v3 = _settingKeysAllowed__onceToken;
  allowedCopy = allowed;
  if (v3 != -1)
  {
    dispatch_once(&_settingKeysAllowed__onceToken, &__block_literal_global_137);
  }

  v5 = [allowedCopy intersectsSet:_settingKeysAllowed__disallowedSettingKeys];

  return v5 ^ 1;
}

uint64_t __42__BKSHIDUISensorMode__settingKeysAllowed___block_invoke()
{
  _settingKeysAllowed__disallowedSettingKeys = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ScreenOn", @"DigitizerSurfaceCovered", @"PocketTouchesExpected", @"FaceTouchesExpected", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)didFinishProtobufDecodingWithError:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(BKSHIDUISensorMode *)self _settingKeysAllowed:self->_multitouchHostStateKeys])
  {
    selfCopy = self;
  }

  else
  {
    if (error)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E696A798];
      multitouchHostStateKeys = self->_multitouchHostStateKeys;
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"disallowed settings:%@", multitouchHostStateKeys, *MEMORY[0x1E696A588]];
      v14[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *error = [v6 errorWithDomain:v7 code:22 userInfo:v10];
    }

    selfCopy = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__BKSHIDUISensorMode_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:0 block:v6];
}

id __48__BKSHIDUISensorMode_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _identifierDescription];
  [v2 appendString:v3 withName:0];

  v4 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"_comparisonScore"), @"score"}];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 24);
  v7 = BSProcessDescriptionForPID();
  [v5 appendString:v7 withName:0];

  [*(a1 + 32) appendString:*(*(a1 + 40) + 16) withName:@"reason"];
  v8 = *(a1 + 40);
  v9 = *(v8 + 32);
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = NSStringFromBKSHIDUISensorChangeSource(v9);
    [v10 appendString:v11 withName:@"changeSource"];

    v8 = *(a1 + 40);
  }

  v12 = *(v8 + 40);
  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = NSStringFromBKSHIDServicesProximityDetectionMode(v12);
    [v13 appendString:v14 withName:@"proximityDetectionMode"];

    v8 = *(a1 + 40);
  }

  v15 = [*(a1 + 32) appendBool:*(v8 + 72) withName:@"digitizerEnabled"];
  v16 = *(a1 + 40);
  v17 = *(v16 + 64);
  if (v17)
  {
    v18 = *(a1 + 32);
    v19 = NSStringFromBKSHIDUISensorDisplayState(v17);
    [v18 appendString:v19 withName:@"displayState"];

    v16 = *(a1 + 40);
  }

  v20 = [*(a1 + 32) appendBool:*(v16 + 73) withName:@"pocketTouchesExpected" ifEqualTo:1];
  v21 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"multitouchHostStateKeys" skipIfNil:1];
  v22 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"proximityHostStateKeys" skipIfNil:1];
  v23 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 74) withName:@"estimatedProximityMode" ifEqualTo:1];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 75) withName:@"postEventWithCurrentDetectionMask" ifEqualTo:1];
}

- (id)_initCopyFrom:(id)from
{
  fromCopy = from;
  _init = [(BKSHIDUISensorMode *)self _init];
  v6 = _init;
  if (_init)
  {
    _init[1] = atomic_fetch_add(&_BKSNextUIModeIdentifier_staticIdentifier, 1uLL);
    v7 = [*(fromCopy + 2) copy];
    v8 = v6[2];
    v6[2] = v7;

    *(v6 + 3) = *(fromCopy + 24);
    *(v6 + 10) = *(fromCopy + 10);
    v6[8] = *(fromCopy + 8);
    *(v6 + 72) = fromCopy[72];
    *(v6 + 73) = fromCopy[73];
    v9 = [*(fromCopy + 6) copy];
    v10 = v6[6];
    v6[6] = v9;

    v11 = [*(fromCopy + 7) copy];
    v12 = v6[7];
    v6[7] = v11;

    *(v6 + 74) = fromCopy[74];
    *(v6 + 75) = fromCopy[75];
  }

  return v6;
}

- (BOOL)isEffectivelyEqualToMode:(id)mode
{
  modeCopy = mode;
  v5 = modeCopy[6];
  multitouchHostStateKeys = self->_multitouchHostStateKeys;
  v9 = BSEqualObjects() && (v7 = modeCopy[7], proximityHostStateKeys = self->_proximityHostStateKeys, BSEqualObjects()) && *(modeCopy + 10) == self->_proximityDetectionMode && *(modeCopy + 72) == self->_digitizerEnabled && modeCopy[8] == self->_displayState && *(modeCopy + 73) == self->_pocketTouchesExpected && *(modeCopy + 74) == self->_estimatedProximityMode && *(modeCopy + 75) == self->_postEventWithCurrentDetectionMask;

  return v9;
}

- (BOOL)isEqualExceptIdentifierAndReasons:(id)reasons
{
  reasonsCopy = reasons;
  v5 = reasonsCopy;
  v6 = *(reasonsCopy + 24) == *&self->_versionedPID && [(BKSHIDUISensorMode *)self isEffectivelyEqualToMode:reasonsCopy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v11 = v8 && v8[1] == self->_identifier && (v9 = v8[2], reason = self->_reason, BSEqualObjects()) && [(BKSHIDUISensorMode *)self isEqualExceptIdentifierAndReasons:v8];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_identifier forKey:@"identifier"];
  reason = self->_reason;
  if (reason)
  {
    [coderCopy encodeObject:reason forKey:@"reason"];
  }

  [coderCopy encodeInt64:self->_versionedPID forKey:@"versionedPID"];
  [coderCopy encodeInteger:self->_changeSource forKey:@"changeSource"];
  [coderCopy encodeInteger:self->_proximityDetectionMode forKey:@"proximityDetectionMode"];
  [coderCopy encodeInteger:self->_displayState forKey:@"displayState"];
  [coderCopy encodeBool:self->_digitizerEnabled forKey:@"digitizerEnabled"];
  [coderCopy encodeBool:self->_pocketTouchesExpected forKey:@"pocketTouchesExpected"];
  [coderCopy encodeObject:self->_multitouchHostStateKeys forKey:@"multitouchHostStateKeys"];
  [coderCopy encodeObject:self->_proximityHostStateKeys forKey:@"proximityHostStateKeys"];
  [coderCopy encodeBool:self->_estimatedProximityMode forKey:@"estimatedProximityMode"];
  [coderCopy encodeBool:self->_postEventWithCurrentDetectionMask forKey:@"postEventWithCurrentDetectionMask"];
}

- (BKSHIDUISensorMode)initWithCoder:(id)coder
{
  v56 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v47.receiver = self;
  v47.super_class = BKSHIDUISensorMode;
  v5 = [(BKSHIDUISensorMode *)&v47 init];
  v5->_identifier = [coderCopy decodeIntegerForKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
  reason = v5->_reason;
  v5->_reason = v6;

  v5->_versionedPID = [coderCopy decodeInt64ForKey:@"versionedPID"];
  v5->_changeSource = [coderCopy decodeIntegerForKey:@"changeSource"];
  v5->_proximityDetectionMode = [coderCopy decodeIntegerForKey:@"proximityDetectionMode"];
  v5->_displayState = [coderCopy decodeIntegerForKey:@"displayState"];
  v5->_digitizerEnabled = [coderCopy decodeBoolForKey:@"digitizerEnabled"];
  v5->_pocketTouchesExpected = [coderCopy decodeBoolForKey:@"pocketTouchesExpected"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"multitouchHostStateKeys"];
  multitouchHostStateKeys = v5->_multitouchHostStateKeys;
  v5->_multitouchHostStateKeys = v8;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v5->_multitouchHostStateKeys;
  v11 = [(NSSet *)v10 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v43 + 1) + 8 * v14);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v24 = MEMORY[0x1E696ABC0];
          v25 = *MEMORY[0x1E696A798];
          v53 = *MEMORY[0x1E696A588];
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported type in _multitouchHostStateKeys:%@", objc_opt_class()];
          v54 = v26;
          v27 = MEMORY[0x1E695DF20];
          v28 = &v54;
          v29 = &v53;
LABEL_21:
          v30 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
          v31 = [v24 errorWithDomain:v25 code:22 userInfo:v30];
          [coderCopy failWithError:v31];

          goto LABEL_22;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSSet *)v10 countByEnumeratingWithState:&v43 objects:v55 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = v5->_proximityHostStateKeys;
  v16 = [(NSSet *)v10 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v40;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(v10);
        }

        v20 = *(*(&v39 + 1) + 8 * v19);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v24 = MEMORY[0x1E696ABC0];
          v25 = *MEMORY[0x1E696A798];
          v50 = *MEMORY[0x1E696A588];
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported type in _proximityHostStateKeys:%@", objc_opt_class()];
          v51 = v26;
          v27 = MEMORY[0x1E695DF20];
          v28 = &v51;
          v29 = &v50;
          goto LABEL_21;
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSSet *)v10 countByEnumeratingWithState:&v39 objects:v52 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  if ([(BKSHIDUISensorMode *)v5 _settingKeysAllowed:v5->_multitouchHostStateKeys])
  {
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proximityHostStateKeys"];
    proximityHostStateKeys = v5->_proximityHostStateKeys;
    v5->_proximityHostStateKeys = v21;

    v5->_estimatedProximityMode = [coderCopy decodeBoolForKey:@"estimatedProximityMode"];
    v5->_postEventWithCurrentDetectionMask = [coderCopy decodeBoolForKey:@"postEventWithCurrentDetectionMask"];
    v23 = v5;
  }

  else
  {
    v34 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A798];
    v48 = *MEMORY[0x1E696A588];
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"disallowed settings:%@", v5->_multitouchHostStateKeys];
    v49 = v36;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v38 = [v34 errorWithDomain:v35 code:22 userInfo:v37];
    [coderCopy failWithError:v38];

LABEL_22:
    v23 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BKSHIDUISensorMode)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDUISensorMode"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDUISensorMode.m";
    v17 = 1024;
    v18 = 93;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)_prevailingMode:(id)mode
{
  v35 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  v4 = [modeCopy sortedArrayUsingComparator:&__block_literal_global_105];
  lastObject = [v4 lastObject];
  proximityDetectionMode = [lastObject proximityDetectionMode];
  if ([lastObject digitizerEnabled] && !objc_msgSend(lastObject, "pocketTouchesExpected") || proximityDetectionMode == 20)
  {
    v28 = v4;
    v29 = modeCopy;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v7 = 0;
      v12 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          if (v14 != lastObject)
          {
            if ([*(*(&v30 + 1) + 8 * i) digitizerEnabled] && objc_msgSend(v14, "pocketTouchesExpected"))
            {
              v15 = v14;

              v11 = v15;
            }

            if (proximityDetectionMode == 20)
            {
              proximityDetectionMode2 = [v14 proximityDetectionMode];
              if (proximityDetectionMode2 && proximityDetectionMode2 != 20)
              {
                v18 = v14;

                v7 = v18;
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
      v7 = 0;
    }

    if (v11 | v7)
    {
      v19 = [lastObject mutableCopy];
      changeSource = [v19 changeSource];
      modeCopy = v29;
      if (!changeSource)
      {
        changeSource = [v11 changeSource];
        if (!changeSource)
        {
          changeSource = [v7 changeSource];
        }
      }

      v4 = v28;
      [v19 setChangeSource:changeSource];
      reason = [lastObject reason];
      v22 = [reason mutableCopy];

      if (v11)
      {
        _identifierDescription = [v11 _identifierDescription];
        [v22 appendFormat:@" + pocketTouches(%@)", _identifierDescription];

        [v19 setPocketTouchesExpected:1];
      }

      if (v7)
      {
        _identifierDescription2 = [v7 _identifierDescription];
        [v22 appendFormat:@" + prox(%@)", _identifierDescription2];

        [v19 setProximityDetectionMode:{objc_msgSend(v7, "proximityDetectionMode")}];
      }

      [v19 setReason:v22];
      v25 = [v19 copy];

      lastObject = v25;
    }

    else
    {
      v4 = v28;
      modeCopy = v29;
    }
  }

  else
  {
    v7 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return lastObject;
}

uint64_t __38__BKSHIDUISensorMode__prevailingMode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 _comparisonScore];
  v6 = [v4 _comparisonScore];

  return MEMORY[0x1EEDEFF38](v5, v6);
}

+ (id)buildModeForReason:(id)reason builder:(id)builder
{
  builderCopy = builder;
  reasonCopy = reason;
  _init = [(BKSHIDUISensorMode *)[BKSMutableHIDUISensorMode alloc] _init];
  [_init setReason:reasonCopy];

  builderCopy[2](builderCopy, _init);
  v8 = [_init copy];

  return v8;
}

+ (BKSHIDUISensorMode)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDUISensorMode"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDUISensorMode.m";
    v17 = 1024;
    v18 = 98;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end