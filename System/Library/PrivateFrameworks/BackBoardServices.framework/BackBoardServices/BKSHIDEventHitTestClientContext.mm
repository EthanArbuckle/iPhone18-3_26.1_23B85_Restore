@interface BKSHIDEventHitTestClientContext
+ (id)protobufSchema;
- (BKSHIDEventHitTestClientContext)initWithBSXPCCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation BKSHIDEventHitTestClientContext

- (BKSHIDEventHitTestClientContext)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BKSHIDEventHitTestClientContext;
  v5 = [(BKSHIDEventHitTestClientContext *)&v7 init];
  if (v5)
  {
    v5->_pid = [coderCopy decodeInt64ForKey:@"pid"];
    v5->_contextID = [coderCopy decodeInt64ForKey:@"contextID"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  pid = self->_pid;
  coderCopy = coder;
  [coderCopy encodeInt64:pid forKey:@"pid"];
  [coderCopy encodeInt64:self->_contextID forKey:@"contextID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_pid == equalCopy[2] && self->_contextID == equalCopy[3];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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
  block[4] = self;
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