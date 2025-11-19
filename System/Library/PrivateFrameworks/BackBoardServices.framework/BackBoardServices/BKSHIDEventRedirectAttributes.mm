@interface BKSHIDEventRedirectAttributes
+ (id)protobufSchema;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation BKSHIDEventRedirectAttributes

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = BKSHIDEventRedirectAttributes;
  [(BKSHIDEventBaseAttributes *)&v6 appendDescriptionToFormatter:v4];
  v5 = [v4 appendInteger:self->_pid withName:@"pid"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = BKSHIDEventRedirectAttributes;
  result = [(BKSHIDEventBaseAttributes *)&v5 copyWithZone:a3];
  *(result + 14) = self->_pid;
  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__BKSHIDEventRedirectAttributes_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_308 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_308, block);
  }

  v2 = protobufSchema_schema_307;

  return v2;
}

uint64_t __47__BKSHIDEventRedirectAttributes_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_307 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_310];

  return MEMORY[0x1EEE66BB8]();
}

@end