@interface BKSTouchAuthenticationSpecification
+ (id)buildSpecification:(id)specification;
+ (id)new;
- (BKSTouchAuthenticationSpecification)init;
- (BKSTouchAuthenticationSpecification)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)_initWithCopyOf:(id)of;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSTouchAuthenticationSpecification

- (void)appendDescriptionToFormatter:(id)formatter
{
  displays = self->_displays;
  formatterCopy = formatter;
  v6 = [formatterCopy appendObject:displays withName:@"displays"];
  v7 = [formatterCopy appendUInt64:self->_slotID withName:@"slotID" format:1];
  v8 = [formatterCopy appendUInt64:self->_secureName withName:@"secureName" format:1];
  v9 = [formatterCopy appendUInt64:self->_backgroundStatisticsTopEdgeInset withName:@"backgroundStatisticsTopEdgeInset" format:1];
  v10 = [formatterCopy appendUInt64:self->_backgroundStatisticsLeftEdgeInset withName:@"backgroundStatisticsLeftEdgeInset" format:1];
  v11 = [formatterCopy appendUInt64:self->_backgroundStatisticsBottomEdgeInset withName:@"backgroundStatisticsBottomEdgeInset" format:1];
  v12 = [formatterCopy appendUInt64:self->_backgroundStatisticsRightEdgeInset withName:@"backgroundStatisticsRightEdgeInset" format:1];
  v13 = [formatterCopy appendFloat:@"backgroundStatisticsForeground" withName:self->_backgroundStatisticsForeground];
  v14 = [formatterCopy appendFloat:@"backgroundStatisticsPassingContrast" withName:self->_backgroundStatisticsPassingContrast];
  v15 = [formatterCopy appendFloat:@"backgroundStatisticsFailingContrast" withName:self->_backgroundStatisticsFailingContrast];
  v16 = [formatterCopy appendUInt64:self->_authenticationMessageContext withName:@"authenticationMessageContext" format:1];
  v17 = NSStringFromBKSHIDEventHitTestLayerInformationMask(self->_hitTestInformationMask);
  [formatterCopy appendString:v17 withName:@"hitTestInformationMask"];

  v18 = NSStringFromBKSTouchAuthenticationInitialSampleEvent(self->_initialSampleEvent);
  [formatterCopy appendString:v18 withName:@"initialSampleEvent"];
}

- (id)_init
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSTouchAuthenticationSpecification cannot be subclassed"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v6 = NSStringFromSelector(sel__init);
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          *buf = 138544642;
          v11 = v6;
          v12 = 2114;
          v13 = v8;
          v14 = 2048;
          v15 = v1;
          v16 = 2114;
          v17 = @"BKSTouchAuthenticationSpecification.m";
          v18 = 1024;
          v19 = 73;
          v20 = 2114;
          v21 = v5;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v5 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x186382BBCLL);
      }
    }

    v9.receiver = v1;
    v9.super_class = BKSTouchAuthenticationSpecification;
    result = objc_msgSendSuper2(&v9, sel_init);
    if (result)
    {
      *(result + 8) = 1;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displays = self->_displays;
  v9 = coderCopy;
  if (displays)
  {
    [coderCopy encodeObject:displays forKey:@"displays"];
    coderCopy = v9;
  }

  [coderCopy encodeInt32:self->_slotID forKey:@"slotID"];
  [v9 encodeInt64:self->_authenticationMessageContext forKey:@"authenticationMessageContext"];
  [v9 encodeInt32:self->_secureName forKey:@"secureName"];
  [v9 encodeInt32:self->_backgroundStatisticsTopEdgeInset forKey:@"backgroundStatisticsTopEdgeInset"];
  [v9 encodeInt32:self->_backgroundStatisticsLeftEdgeInset forKey:@"backgroundStatisticsLeftEdgeInset"];
  [v9 encodeInt32:self->_backgroundStatisticsBottomEdgeInset forKey:@"backgroundStatisticsBottomEdgeInset"];
  [v9 encodeInt32:self->_backgroundStatisticsRightEdgeInset forKey:@"backgroundStatisticsRightEdgeInset"];
  *&v6 = self->_backgroundStatisticsForeground;
  [v9 encodeFloat:@"backgroundStatisticsForeground" forKey:v6];
  *&v7 = self->_backgroundStatisticsPassingContrast;
  [v9 encodeFloat:@"backgroundStatisticsPassingContrast" forKey:v7];
  *&v8 = self->_backgroundStatisticsFailingContrast;
  [v9 encodeFloat:@"backgroundStatisticsFailingContrast" forKey:v8];
  [v9 encodeInteger:self->_hitTestInformationMask forKey:@"hitTestInformationMask"];
  [v9 encodeInteger:self->_initialSampleEvent forKey:@"initialSampleEvent"];
}

- (BKSTouchAuthenticationSpecification)initWithCoder:(id)coder
{
  v32 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = BKSTouchAuthenticationSpecification;
  v5 = [(BKSTouchAuthenticationSpecification *)&v28 init];
  if (v5)
  {
    [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displays"];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v27 = 0u;
    v7 = [(NSSet *)v6 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * v10);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = MEMORY[0x1E696ABC0];
            v18 = *MEMORY[0x1E696A250];
            v29 = *MEMORY[0x1E696A588];
            v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unexpected class decoded from display set: %@", objc_opt_class()];
            v30 = v19;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
            v21 = [v17 errorWithDomain:v18 code:4866 userInfo:v20];
            [coderCopy failWithError:v21];

            v16 = 0;
            goto LABEL_13;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v24 objects:v31 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    displays = v5->_displays;
    v5->_displays = v6;

    v5->_slotID = [coderCopy decodeInt32ForKey:@"slotID"];
    v5->_authenticationMessageContext = [coderCopy decodeInt64ForKey:@"authenticationMessageContext"];
    v5->_secureName = [coderCopy decodeInt32ForKey:@"secureName"];
    v5->_backgroundStatisticsTopEdgeInset = [coderCopy decodeInt32ForKey:@"backgroundStatisticsTopEdgeInset"];
    v5->_backgroundStatisticsLeftEdgeInset = [coderCopy decodeInt32ForKey:@"backgroundStatisticsLeftEdgeInset"];
    v5->_backgroundStatisticsBottomEdgeInset = [coderCopy decodeInt32ForKey:@"backgroundStatisticsBottomEdgeInset"];
    v5->_backgroundStatisticsRightEdgeInset = [coderCopy decodeInt32ForKey:@"backgroundStatisticsRightEdgeInset"];
    [coderCopy decodeFloatForKey:@"backgroundStatisticsForeground"];
    v5->_backgroundStatisticsForeground = v13;
    [coderCopy decodeFloatForKey:@"backgroundStatisticsPassingContrast"];
    v5->_backgroundStatisticsPassingContrast = v14;
    [coderCopy decodeFloatForKey:@"backgroundStatisticsFailingContrast"];
    v5->_backgroundStatisticsFailingContrast = v15;
    v5->_hitTestInformationMask = [coderCopy decodeIntegerForKey:@"hitTestInformationMask"];
    v5->_initialSampleEvent = [coderCopy decodeIntegerForKey:@"initialSampleEvent"];
  }

  v16 = v5;
LABEL_13:

  v22 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableTouchAuthenticationSpecification alloc];

  return [(BKSTouchAuthenticationSpecification *)v4 _initWithCopyOf:?];
}

- (id)_initWithCopyOf:(id)of
{
  v3 = a2;
  if (of)
  {
    of = [(BKSTouchAuthenticationSpecification *)of _init];
    if (of)
    {
      v4 = [v3[1] copy];
      v5 = *(of + 1);
      *(of + 1) = v4;

      *(of + 4) = *(v3 + 4);
      *(of + 3) = v3[3];
      *(of + 5) = *(v3 + 5);
      *(of + 16) = *(v3 + 16);
      *(of + 17) = *(v3 + 17);
      *(of + 18) = *(v3 + 18);
      *(of + 19) = *(v3 + 19);
      *(of + 10) = *(v3 + 10);
      *(of + 11) = *(v3 + 11);
      *(of + 12) = *(v3 + 12);
      *(of + 7) = v3[7];
      *(of + 8) = v3[8];
    }
  }

  return of;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSTouchAuthenticationSpecification alloc];

  return [(BKSTouchAuthenticationSpecification *)v4 _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5[1];
    displays = self->_displays;
    v8 = BSEqualObjects() && *(v5 + 4) == self->_slotID && v5[3] == self->_authenticationMessageContext && *(v5 + 5) == self->_secureName && *(v5 + 16) == self->_backgroundStatisticsTopEdgeInset && *(v5 + 17) == self->_backgroundStatisticsLeftEdgeInset && *(v5 + 18) == self->_backgroundStatisticsBottomEdgeInset && *(v5 + 19) == self->_backgroundStatisticsRightEdgeInset && v5[7] == self->_hitTestInformationMask && v5[8] == self->_initialSampleEvent;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSSet *)self->_displays hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_slotID];
  v5 = [v4 hash] ^ v3;

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_authenticationMessageContext];
  v7 = [v6 hash];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_secureName];
  v9 = v5 ^ v7 ^ [v8 hash];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_backgroundStatisticsTopEdgeInset];
  v11 = [v10 hash];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_backgroundStatisticsLeftEdgeInset];
  v13 = v11 ^ [v12 hash];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_backgroundStatisticsBottomEdgeInset];
  v15 = v9 ^ v13 ^ [v14 hash];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_backgroundStatisticsRightEdgeInset];
  v17 = [v16 hash];

  *&v18 = self->_backgroundStatisticsForeground;
  v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  v20 = v17 ^ [v19 hash];

  *&v21 = self->_backgroundStatisticsPassingContrast;
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  v23 = v20 ^ [v22 hash];

  *&v24 = self->_backgroundStatisticsFailingContrast;
  v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
  v26 = v15 ^ v23 ^ [v25 hash];

  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_hitTestInformationMask];
  v28 = [v27 hash];

  v29 = [MEMORY[0x1E696AD98] numberWithInteger:self->_initialSampleEvent];
  v30 = v26 ^ v28 ^ [v29 hash];

  v31 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) >> 27));
  return v31 ^ (v31 >> 31);
}

- (BKSTouchAuthenticationSpecification)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSTouchAuthenticationSpecification"];
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
    v16 = @"BKSTouchAuthenticationSpecification.m";
    v17 = 1024;
    v18 = 62;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

void __53__BKSTouchAuthenticationSpecification_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addRepeatingField:"_displays" containsClass:objc_opt_class()];
  [v2 addField:"_slotID"];
  [v2 addField:"_authenticationMessageContext"];
  [v2 addField:"_secureName"];
  [v2 addField:"_backgroundStatisticsTopEdgeInset"];
  [v2 addField:"_backgroundStatisticsLeftEdgeInset"];
  [v2 addField:"_backgroundStatisticsBottomEdgeInset"];
  [v2 addField:"_backgroundStatisticsRightEdgeInset"];
  [v2 addField:"_backgroundStatisticsForeground"];
  [v2 addField:"_backgroundStatisticsPassingContrast"];
  [v2 addField:"_backgroundStatisticsFailingContrast"];
  [v2 addField:"_hitTestInformationMask"];
  [v2 addField:"_initialSampleEvent"];
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSTouchAuthenticationSpecification"];
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
    v16 = @"BKSTouchAuthenticationSpecification.m";
    v17 = 1024;
    v18 = 67;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)buildSpecification:(id)specification
{
  specificationCopy = specification;
  _init = [(BKSTouchAuthenticationSpecification *)[BKSMutableTouchAuthenticationSpecification alloc] _init];
  specificationCopy[2](specificationCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end