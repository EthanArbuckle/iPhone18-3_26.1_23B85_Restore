@interface BKSHIDEventHitTestClientContext
+ (id)protobufSchema;
- (BKSHIDEventHitTestClientContext)initWithBSXPCCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation BKSHIDEventHitTestClientContext

- (BKSHIDEventHitTestClientContext)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BKSHIDEventHitTestClientContext;
  v5 = [(BKSHIDEventHitTestClientContext *)&v7 init];
  if (v5)
  {
    v5->_pid = [v4 decodeInt64ForKey:@"pid"];
    v5->_contextID = [v4 decodeInt64ForKey:@"contextID"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  pid = self->_pid;
  v5 = a3;
  [v5 encodeInt64:pid forKey:@"pid"];
  [v5 encodeInt64:self->_contextID forKey:@"contextID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_pid == v4[2] && self->_contextID == v4[3];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[BKSHIDEventHitTestClientContext allocWithZone:?]];
  *(result + 2) = self->_pid;
  *(result + 3) = self->_contextID;
  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__BKSHIDEventHitTestClientContext_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_2808 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_2808, block);
  }

  v2 = protobufSchema_schema_2809;

  return v2;
}

uint64_t __49__BKSHIDEventHitTestClientContext_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_2809 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_2811];

  return MEMORY[0x1EEE66BB8]();
}

void __49__BKSHIDEventHitTestClientContext_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_pid"];
  [v2 addField:"_contextID"];
}

@end