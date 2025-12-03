@interface BKSHIDEventProximityAttributes
+ (id)protobufSchema;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation BKSHIDEventProximityAttributes

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__BKSHIDEventProximityAttributes_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_675 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_675, block);
  }

  v2 = protobufSchema_schema_674;

  return v2;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  v6.receiver = self;
  v6.super_class = BKSHIDEventProximityAttributes;
  formatterCopy = formatter;
  [(BKSHIDEventBaseAttributes *)&v6 appendDescriptionToFormatter:formatterCopy];
  v5 = NSStringFromBKSHIDServicesProximityDetectionMode(self->_proximityDetectionMode);
  [formatterCopy appendString:v5 withName:{@"proximityDetectionMode", v6.receiver, v6.super_class}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = BKSHIDEventProximityAttributes;
  v5 = [(BKSHIDEventBaseAttributes *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_proximityDetectionMode == equalCopy[14];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = BKSHIDEventProximityAttributes;
  result = [(BKSHIDEventBaseAttributes *)&v5 copyWithZone:zone];
  *(result + 14) = self->_proximityDetectionMode;
  return result;
}

uint64_t __48__BKSHIDEventProximityAttributes_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_674 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_677];

  return MEMORY[0x1EEE66BB8]();
}

@end