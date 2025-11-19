@interface BKSHIDEventDeferringSelectionPathSymbol
+ (id)protobufSchema;
- (BKSHIDEventDeferringSelectionPathSymbol)init;
- (BKSHIDEventDeferringSelectionPathSymbol)initWithCoder:(id)a3;
@end

@implementation BKSHIDEventDeferringSelectionPathSymbol

- (BKSHIDEventDeferringSelectionPathSymbol)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKSHIDEventDeferringSelectionPathSymbol;
  v3 = [(BKSHIDEventDeferringSelectionPathSymbol *)&v6 init];
  if (v3)
  {
    v4 = +[BKSHIDEventDeferringSelectionPathIdentifier everySelectionPath];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BKSHIDEventDeferringSelectionPathSymbol)init
{
  v6.receiver = self;
  v6.super_class = BKSHIDEventDeferringSelectionPathSymbol;
  v2 = [(BKSHIDEventDeferringSelectionPathSymbol *)&v6 init];
  v3 = v2;
  if (v2)
  {
    identifier = v2->_identifier;
    v2->_identifier = @"everyPath";
  }

  return v3;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__BKSHIDEventDeferringSelectionPathSymbol_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_6407 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_6407, block);
  }

  v2 = protobufSchema_schema_6408;

  return v2;
}

uint64_t __57__BKSHIDEventDeferringSelectionPathSymbol_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  protobufSchema_schema_6408 = [MEMORY[0x1E698E750] buildSchemaForClass:objc_opt_class() builder:&__block_literal_global_6409];

  return MEMORY[0x1EEE66BB8]();
}

@end