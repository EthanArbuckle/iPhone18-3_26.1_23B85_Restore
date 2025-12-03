@interface BKSHIDEventKeyboardAttributes
+ (id)protobufSchema;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation BKSHIDEventKeyboardAttributes

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6.receiver = self;
  v6.super_class = BKSHIDEventKeyboardAttributes;
  [(BKSHIDEventBaseAttributes *)&v6 appendDescriptionToFormatter:formatterCopy];
  v5 = [formatterCopy appendUnsignedInteger:self->_GSModifierState withName:@"GSModifierState" format:1];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = BKSHIDEventKeyboardAttributes;
  v5 = [(BKSHIDEventBaseAttributes *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_GSModifierState == equalCopy[14];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = BKSHIDEventKeyboardAttributes;
  result = [(BKSHIDEventBaseAttributes *)&v5 copyWithZone:zone];
  *(result + 14) = self->_GSModifierState;
  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__BKSHIDEventKeyboardAttributes_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_657 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_657, block);
  }

  v2 = protobufSchema_schema_656;

  return v2;
}

uint64_t __47__BKSHIDEventKeyboardAttributes_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_656 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_659];

  return MEMORY[0x1EEE66BB8]();
}

@end