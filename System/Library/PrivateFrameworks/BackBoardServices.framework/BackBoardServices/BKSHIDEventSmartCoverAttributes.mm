@interface BKSHIDEventSmartCoverAttributes
+ (id)protobufSchema;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation BKSHIDEventSmartCoverAttributes

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v7.receiver = self;
  v7.super_class = BKSHIDEventSmartCoverAttributes;
  [(BKSHIDEventBaseAttributes *)&v7 appendDescriptionToFormatter:formatterCopy];
  v5 = [formatterCopy appendUnsignedInteger:self->_smartCoverState withName:@"smartCoverState"];
  v6 = [formatterCopy appendUnsignedInteger:self->_wakeAnimationStyle withName:@"wakeAnimationStyle"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = BKSHIDEventSmartCoverAttributes;
  v5 = [(BKSHIDEventBaseAttributes *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_smartCoverState == equalCopy[14] && self->_wakeAnimationStyle == equalCopy[15];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = BKSHIDEventSmartCoverAttributes;
  result = [(BKSHIDEventBaseAttributes *)&v5 copyWithZone:zone];
  *(result + 14) = self->_smartCoverState;
  *(result + 15) = self->_wakeAnimationStyle;
  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__BKSHIDEventSmartCoverAttributes_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_693 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_693, block);
  }

  v2 = protobufSchema_schema_692;

  return v2;
}

uint64_t __49__BKSHIDEventSmartCoverAttributes_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_692 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_695];

  return MEMORY[0x1EEE66BB8]();
}

void __49__BKSHIDEventSmartCoverAttributes_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_smartCoverState"];
  [v2 addField:"_wakeAnimationStyle"];
}

@end