@interface BKSHIDEventDescriptor
+ (id)descriptorForHIDEvent:(__IOHIDEvent *)a3;
+ (void)appendDescriptorArray:(id)a3 toDescriptionStream:(id)a4;
- (BKSHIDEventDescriptor)init;
- (BKSHIDEventDescriptor)initWithCoder:(id)a3;
- (BKSHIDEventDescriptor)initWithEventType:(unsigned int)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithEventType:(unsigned int)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)descriptorByAddingSenderIDToMatchCriteria:(unint64_t)a3;
- (id)succinctDescription;
- (int64_t)compare:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventDescriptor

- (int64_t)compare:(id)a3
{
  hidEventType = self->_hidEventType;
  v4 = *(a3 + 2);
  v5 = hidEventType >= v4;
  v6 = hidEventType > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

- (BKSHIDEventDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_type"];

  v6 = [v5 unsignedIntValue];

  return [(BKSHIDEventDescriptor *)self initWithEventType:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  hidEventType = self->_hidEventType;
  v5 = a3;
  v6 = [v3 numberWithUnsignedInt:hidEventType];
  [v5 encodeObject:v6 forKey:@"_type"];
}

- (void)appendDescriptionToStream:(id)a3
{
  hidEventType = self->_hidEventType;
  v4 = a3;
  [v4 appendString:IOHIDEventTypeGetName() withName:0];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(BKSHIDEventDescriptor *)self succinctDescriptionBuilder];
  hidEventType = self->_hidEventType;
  [v4 appendString:IOHIDEventTypeGetName() withName:0];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKSHIDEventDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(BKSHIDEventDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __36__BKSHIDEventDescriptor_description__block_invoke;
  v10 = &unk_1E6F47C78;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 description];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (v4 && (isKindOfClass & 1) != 0)
  {
    v6 = [v4 hidEventType] == self->_hidEventType;
  }

  return v6;
}

- (BKSHIDEventDescriptor)initWithEventType:(unsigned int)a3
{
  v4 = self;
  if (a3 <= 28)
  {
    if (a3 == 1)
    {
      v5 = BKSHIDEventVendorDefinedDescriptor;
      goto LABEL_12;
    }

    if (a3 == 3)
    {
      v5 = BKSHIDEventKeyboardDescriptor;
      goto LABEL_12;
    }
  }

  else
  {
    switch(a3)
    {
      case 0x1Du:
        v5 = BKSHIDEventBiometricDescriptor;
        goto LABEL_12;
      case 0x25u:
        v5 = BKSHIDEventCollectionDescriptor;
        goto LABEL_12;
      case 0x27u:
        v5 = BKSHIDEventGenericGestureDescriptor;
LABEL_12:
        v6 = objc_alloc_init(v5);
        goto LABEL_13;
    }
  }

  v10.receiver = self;
  v10.super_class = BKSHIDEventDescriptor;
  v9 = [(BKSHIDEventDescriptor *)&v10 init];
  if (v9)
  {
    v9->_hidEventType = a3;
  }

  v6 = v9;
  v4 = v6;
LABEL_13:
  v7 = v6;

  return v7;
}

- (id)_initWithEventType:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = BKSHIDEventDescriptor;
  result = [(BKSHIDEventDescriptor *)&v5 init];
  if (result)
  {
    *(result + 2) = a3;
  }

  return result;
}

- (BKSHIDEventDescriptor)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is unavailable"];
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
    v14 = self;
    v15 = 2114;
    v16 = @"BKSHIDEventDescriptor.m";
    v17 = 1024;
    v18 = 78;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)descriptorByAddingSenderIDToMatchCriteria:(unint64_t)a3
{
  v3 = [[BKSHIDEventSenderSpecificDescriptor alloc] initWithDescriptor:self senderID:a3];

  return v3;
}

+ (void)appendDescriptorArray:(id)a3 toDescriptionStream:(id)a4
{
  v5 = a4;
  v6 = [a3 sortedArrayUsingSelector:sel_compare_];
  v7 = [v6 bs_dictionaryByPartitioning:&__block_literal_global_503];
  v8 = [MEMORY[0x1E698E690] build:&__block_literal_global_24];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_3;
  v11[3] = &unk_1E6F47C78;
  v12 = v5;
  v13 = v7;
  v9 = v7;
  v10 = v5;
  [v10 overlayStyle:v8 block:v11];
}

void __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_4;
  v3[3] = &unk_1E6F47C78;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  [v2 appendBodySectionWithName:@"events" block:v3];
}

void __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_5;
  v2[3] = &unk_1E6F466E8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 integerValue];
  if (v6 == 1)
  {
    v7 = *(a1 + 32);
    v8 = @"VendorDefined";
    goto LABEL_5;
  }

  if (v6 == 3)
  {
    v7 = *(a1 + 32);
    v8 = @"Keyboard";
LABEL_5:
    v9 = [v7 appendObject:v5 withName:v8];
    goto LABEL_14;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) appendDescriptionToStream:{*(a1 + 32), v16}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
}

void __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = a2;
  v4 = [v2 setWithObject:@"OmitName"];
  [v3 setClientInformation:v4];
}

uint64_t __67__BKSHIDEventDescriptor_appendDescriptorArray_toDescriptionStream___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 hidEventType];

  return [v2 numberWithUnsignedInt:v3];
}

+ (id)descriptorForHIDEvent:(__IOHIDEvent *)a3
{
  Type = IOHIDEventGetType();
  if (Type > 28)
  {
    if (Type == 29)
    {
      v4 = [BKSHIDEventBiometricDescriptor descriptorWithBiometricEventType:IOHIDEventGetIntegerValue()];
      goto LABEL_15;
    }

    if (Type != 37)
    {
      if (Type == 39)
      {
        v4 = [BKSHIDEventGenericGestureDescriptor descriptorWithGenericGestureType:IOHIDEventGetIntegerValue()];
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v5 = BKSHIDEventCollectionDescriptor;
    IntegerValue = IOHIDEventGetIntegerValue();
LABEL_13:
    v4 = [(__objc2_class *)v5 descriptorWithPage:IntegerValue usage:IOHIDEventGetIntegerValue()];
    goto LABEL_15;
  }

  if (Type == 1)
  {
    v5 = BKSHIDEventVendorDefinedDescriptor;
    IntegerValue = IOHIDEventGetIntegerValue();
    goto LABEL_13;
  }

  if (Type == 3)
  {
    v5 = BKSHIDEventKeyboardDescriptor;
    IntegerValue = IOHIDEventGetIntegerValue();
    goto LABEL_13;
  }

LABEL_14:
  v4 = [BKSHIDEventDescriptor descriptorWithEventType:Type];
LABEL_15:

  return v4;
}

@end