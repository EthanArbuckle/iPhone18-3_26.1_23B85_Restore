@interface BKSHIDEventSenderDescriptor
+ (id)anyBuiltinTouchscreenDigitizer;
+ (id)anyDigitizer;
+ (id)build:(id)build;
+ (id)protobufSchema;
+ (id)stylusOpaqueTouchDigitizer;
+ (id)wildcard;
- (BKSHIDEventSenderDescriptor)init;
- (BKSHIDEventSenderDescriptor)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesDescriptor:(id)descriptor failureReason:(id *)reason;
- (id)_initWithHardwareType:(int64_t)type associatedDisplay:(id)display authenticated:(BOOL)authenticated primaryPage:(unsigned int)page primaryUsage:(unsigned int)usage senderID:(unint64_t)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForProtobufDecoding;
- (id)initFromPropertyList:(id)list;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)propertyListEncoded;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventSenderDescriptor

- (BOOL)matchesDescriptor:(id)descriptor failureReason:(id *)reason
{
  descriptorCopy = descriptor;
  v7 = descriptorCopy;
  if (reason)
  {
    *reason = 0;
  }

  senderID = [descriptorCopy senderID];
  if (senderID && senderID != self->_senderID)
  {
    if (!reason)
    {
      goto LABEL_32;
    }

    v16 = 0;
    v17 = @"senderID does not match";
LABEL_31:
    *reason = v17;
    goto LABEL_33;
  }

  if ([v7 isAuthenticated] && !self->_authenticated)
  {
    if (!reason)
    {
      goto LABEL_32;
    }

    v16 = 0;
    v17 = @"not authenticated";
    goto LABEL_31;
  }

  hardwareType = [v7 hardwareType];
  if (hardwareType && hardwareType != self->_hardwareType)
  {
    if (!reason)
    {
      goto LABEL_32;
    }

    v16 = 0;
    v17 = @"hardware type does not match";
    goto LABEL_31;
  }

  primaryPage = [v7 primaryPage];
  primaryUsage = [v7 primaryUsage];
  if (!primaryPage)
  {
    goto LABEL_13;
  }

  if (primaryPage != self->_primaryPage)
  {
    if (!reason)
    {
      goto LABEL_32;
    }

    v16 = 0;
    v17 = @"page does not match";
    goto LABEL_31;
  }

  if (primaryUsage && primaryUsage != self->_primaryUsage)
  {
    if (reason)
    {
      v16 = 0;
      v17 = @"usage does not match";
      goto LABEL_31;
    }

LABEL_32:
    v16 = 0;
    goto LABEL_33;
  }

LABEL_13:
  associatedDisplay = [v7 associatedDisplay];
  if (associatedDisplay)
  {
    v13 = self->_associatedDisplay;
    v14 = [(BKSHIDEventDisplay *)v13 isEqual:associatedDisplay];
    v15 = v14;
    if (reason && !v14)
    {
      *reason = [MEMORY[0x1E696AEC0] stringWithFormat:@"display does not match (%@ != %@)", v13, associatedDisplay];

LABEL_27:
      v16 = 0;
      goto LABEL_28;
    }

    if (!v15)
    {
      goto LABEL_27;
    }
  }

  v16 = 1;
LABEL_28:

LABEL_33:
  return v16;
}

- (BKSHIDEventSenderDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"hardwareType"];
  v6 = [coderCopy decodeBoolForKey:@"authenticated"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"display"];
  v8 = [coderCopy decodeIntegerForKey:@"primaryPage"];
  v9 = [coderCopy decodeIntegerForKey:@"primaryUsage"];
  v10 = [coderCopy decodeIntegerForKey:@"senderID"];

  v11 = [(BKSHIDEventSenderDescriptor *)self _initWithHardwareType:v5 associatedDisplay:v7 authenticated:v6 primaryPage:v8 primaryUsage:v9 senderID:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  hardwareType = self->_hardwareType;
  coderCopy = coder;
  [coderCopy encodeInteger:hardwareType forKey:@"hardwareType"];
  [coderCopy encodeBool:self->_authenticated forKey:@"authenticated"];
  [coderCopy encodeObject:self->_associatedDisplay forKey:@"display"];
  [coderCopy encodeInteger:self->_primaryPage forKey:@"primaryPage"];
  [coderCopy encodeInteger:self->_primaryUsage forKey:@"primaryUsage"];
  [coderCopy encodeInt64:self->_senderID forKey:@"senderID"];
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventSenderDescriptor;
  return [(BKSHIDEventSenderDescriptor *)&v3 init];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  hardwareType = self->_hardwareType;
  v16 = formatterCopy;
  if (hardwareType)
  {
    v6 = NSStringFromBKSHIDEventHardwareType(hardwareType);
    [v16 appendString:v6 withName:@"hardwareType"];
  }

  senderID = self->_senderID;
  if (senderID)
  {
    v8 = [v16 appendUInt64:senderID withName:@"senderID" format:1];
  }

  primaryPage = self->_primaryPage;
  v10 = v16;
  if (primaryPage)
  {
    v11 = [v16 appendUnsignedInteger:primaryPage withName:@"primaryPage" format:1];
    v10 = v16;
  }

  primaryUsage = self->_primaryUsage;
  if (primaryUsage)
  {
    v13 = [v16 appendUnsignedInteger:primaryUsage withName:@"primaryUsage" format:1];
    v10 = v16;
  }

  v14 = [v10 appendObject:self->_associatedDisplay withName:@"display" skipIfNil:1];
  v15 = [v16 appendBool:self->_authenticated withName:@"authenticated" ifEqualTo:1];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    v9 = self->_hardwareType == v5[1] && self->_authenticated == *(v5 + 24) && (associatedDisplay = self->_associatedDisplay, v8 = v6[2], BSEqualObjects()) && self->_primaryPage == *(v6 + 7) && self->_primaryUsage == *(v6 + 8) && self->_senderID == v6[5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventSenderDescriptor alloc];
  hardwareType = self->_hardwareType;
  associatedDisplay = self->_associatedDisplay;
  authenticated = self->_authenticated;
  primaryPage = self->_primaryPage;
  primaryUsage = self->_primaryUsage;
  senderID = self->_senderID;

  return [(BKSHIDEventSenderDescriptor *)v4 _initWithHardwareType:hardwareType associatedDisplay:associatedDisplay authenticated:authenticated primaryPage:primaryPage primaryUsage:primaryUsage senderID:senderID];
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__BKSHIDEventSenderDescriptor_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_13121 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_13121, block);
  }

  v2 = protobufSchema_schema_13122;

  return v2;
}

uint64_t __45__BKSHIDEventSenderDescriptor_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_13122 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_106];

  return MEMORY[0x1EEE66BB8]();
}

void __45__BKSHIDEventSenderDescriptor_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_hardwareType"];
  [v2 addField:"_authenticated"];
  [v2 addField:"_associatedDisplay"];
  [v2 addField:"_primaryPage"];
  [v2 addField:"_primaryUsage"];
  [v2 addField:"_senderID"];
}

+ (id)stylusOpaqueTouchDigitizer
{
  if (stylusOpaqueTouchDigitizer_onceToken != -1)
  {
    dispatch_once(&stylusOpaqueTouchDigitizer_onceToken, &__block_literal_global_67);
  }

  v3 = stylusOpaqueTouchDigitizer_descriptor;

  return v3;
}

uint64_t __57__BKSHIDEventSenderDescriptor_stylusOpaqueTouchDigitizer__block_invoke()
{
  stylusOpaqueTouchDigitizer_descriptor = [BKSHIDEventSenderDescriptor build:&__block_literal_global_69];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)anyBuiltinTouchscreenDigitizer
{
  if (anyBuiltinTouchscreenDigitizer_onceToken != -1)
  {
    dispatch_once(&anyBuiltinTouchscreenDigitizer_onceToken, &__block_literal_global_63);
  }

  v3 = anyBuiltinTouchscreenDigitizer_descriptor;

  return v3;
}

uint64_t __61__BKSHIDEventSenderDescriptor_anyBuiltinTouchscreenDigitizer__block_invoke()
{
  anyBuiltinTouchscreenDigitizer_descriptor = [BKSHIDEventSenderDescriptor build:&__block_literal_global_65];

  return MEMORY[0x1EEE66BB8]();
}

void __61__BKSHIDEventSenderDescriptor_anyBuiltinTouchscreenDigitizer__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPrimaryPage:13 primaryUsage:0];
  v3 = +[BKSHIDEventDisplay builtinDisplay];
  [v2 setAssociatedDisplay:v3];
}

+ (id)anyDigitizer
{
  if (anyDigitizer_onceToken != -1)
  {
    dispatch_once(&anyDigitizer_onceToken, &__block_literal_global_58);
  }

  v3 = anyDigitizer_descriptor;

  return v3;
}

uint64_t __43__BKSHIDEventSenderDescriptor_anyDigitizer__block_invoke()
{
  anyDigitizer_descriptor = [BKSHIDEventSenderDescriptor build:&__block_literal_global_61];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)wildcard
{
  if (wildcard_onceToken != -1)
  {
    dispatch_once(&wildcard_onceToken, &__block_literal_global_13130);
  }

  v3 = wildcard_wildcard;

  return v3;
}

uint64_t __39__BKSHIDEventSenderDescriptor_wildcard__block_invoke()
{
  wildcard_wildcard = objc_alloc_init(BKSMutableHIDEventSenderDescriptor);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)build:(id)build
{
  buildCopy = build;
  v4 = objc_alloc_init(BKSMutableHIDEventSenderDescriptor);
  buildCopy[2](buildCopy, v4);

  v5 = [(BKSMutableHIDEventSenderDescriptor *)v4 copy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDEventSenderDescriptor alloc];
  hardwareType = self->_hardwareType;
  associatedDisplay = self->_associatedDisplay;
  authenticated = self->_authenticated;
  primaryPage = self->_primaryPage;
  primaryUsage = self->_primaryUsage;
  senderID = self->_senderID;

  return [(BKSHIDEventSenderDescriptor *)v4 _initWithHardwareType:hardwareType associatedDisplay:associatedDisplay authenticated:authenticated primaryPage:primaryPage primaryUsage:primaryUsage senderID:senderID];
}

- (id)initFromPropertyList:(id)list
{
  listCopy = list;
  v44.receiver = self;
  v44.super_class = BKSHIDEventSenderDescriptor;
  v5 = [(BKSHIDEventSenderDescriptor *)&v44 init];
  if (v5)
  {
    v6 = [listCopy objectForKey:@"hardwareType"];
    v7 = objc_opt_class();
    v8 = v6;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    integerValue = [v10 integerValue];
    v5->_hardwareType = integerValue;
    v12 = [listCopy objectForKey:@"auth"];
    v13 = objc_opt_class();
    v14 = v12;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    bOOLValue = [v16 BOOLValue];
    v5->_authenticated = bOOLValue;
    v18 = [listCopy objectForKey:@"page"];
    v19 = objc_opt_class();
    v20 = v18;
    if (v19)
    {
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    unsignedIntValue = [v22 unsignedIntValue];
    v5->_primaryPage = unsignedIntValue;
    v24 = [listCopy objectForKey:@"usage"];
    v25 = objc_opt_class();
    v26 = v24;
    if (v25)
    {
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    unsignedIntValue2 = [v28 unsignedIntValue];
    v5->_primaryUsage = unsignedIntValue2;
    v30 = [listCopy objectForKey:@"senderID"];
    v31 = objc_opt_class();
    v32 = v30;
    if (v31)
    {
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    unsignedLongLongValue = [v34 unsignedLongLongValue];
    v5->_senderID = unsignedLongLongValue;
    v36 = [listCopy objectForKey:@"display"];
    v37 = objc_opt_class();
    v38 = v36;
    if (v37)
    {
      if (objc_opt_isKindOfClass())
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;

    if (v40)
    {
      if ([v40 isEqual:@"<null>"])
      {
        v41 = +[BKSHIDEventDisplay nullDisplay];
      }

      else
      {
        if ([v40 isEqual:@"<builtin>"])
        {
          +[BKSHIDEventDisplay builtinDisplay];
        }

        else
        {
          [BKSHIDEventDisplay displayWithHardwareIdentifier:v40];
        }
        v41 = ;
      }

      associatedDisplay = v5->_associatedDisplay;
      v5->_associatedDisplay = v41;
    }
  }

  return v5;
}

- (id)propertyListEncoded
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_hardwareType)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v3 setObject:v4 forKey:@"hardwareType"];
  }

  if (self->_authenticated)
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"auth"];
  }

  associatedDisplay = self->_associatedDisplay;
  if (associatedDisplay)
  {
    if ([(BKSHIDEventDisplay *)associatedDisplay _isNullDisplay])
    {
      v6 = @"<null>";
LABEL_10:
      [v3 setObject:v6 forKey:@"display"];
      goto LABEL_12;
    }

    if ([(BKSHIDEventDisplay *)self->_associatedDisplay _isBuiltinDisplay])
    {
      v6 = @"<builtin>";
      goto LABEL_10;
    }

    _hardwareIdentifier = [(BKSHIDEventDisplay *)self->_associatedDisplay _hardwareIdentifier];
    [v3 setObject:_hardwareIdentifier forKey:@"display"];
  }

LABEL_12:
  if (self->_primaryPage)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v3 setObject:v8 forKey:@"page"];
  }

  if (self->_primaryUsage)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v3 setObject:v9 forKey:@"usage"];
  }

  if (self->_senderID)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v3 setObject:v10 forKey:@"senderID"];
  }

  return v3;
}

- (id)_initWithHardwareType:(int64_t)type associatedDisplay:(id)display authenticated:(BOOL)authenticated primaryPage:(unsigned int)page primaryUsage:(unsigned int)usage senderID:(unint64_t)d
{
  v46 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  if (displayCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = MEMORY[0x1E696AEC0];
      classForCoder = [displayCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v25 = NSStringFromClass(classForCoder);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [v23 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"display", v25, v27];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(a2);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138544642;
        v35 = v29;
        v36 = 2114;
        v37 = v31;
        v38 = 2048;
        selfCopy = self;
        v40 = 2114;
        v41 = @"BKSHIDEventSenderDescriptor.m";
        v42 = 1024;
        v43 = 85;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v28 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863B40C0);
    }
  }

  v17 = objc_opt_class();
  if (v17 != objc_opt_class())
  {
    v18 = objc_opt_class();
    if (v18 != objc_opt_class())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"BKSHIDEventSenderDescriptor.m" lineNumber:86 description:@"BKSHIDEventSenderDescriptor cannot be subclassed"];
    }
  }

  v33.receiver = self;
  v33.super_class = BKSHIDEventSenderDescriptor;
  v19 = [(BKSHIDEventSenderDescriptor *)&v33 init];
  v20 = v19;
  if (v19)
  {
    v19->_hardwareType = type;
    objc_storeStrong(&v19->_associatedDisplay, display);
    v20->_authenticated = authenticated;
    v20->_primaryPage = page;
    v20->_primaryUsage = usage;
    v20->_senderID = d;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BKSHIDEventSenderDescriptor)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"BKSHIDEventSenderDescriptor.m" lineNumber:80 description:@"-init is not allowed on BKSHIDEventSenderDescriptor"];

  return 0;
}

@end