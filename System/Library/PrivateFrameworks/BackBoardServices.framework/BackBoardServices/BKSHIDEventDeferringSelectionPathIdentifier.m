@interface BKSHIDEventDeferringSelectionPathIdentifier
+ (id)everySelectionPath;
+ (id)genericGesture;
+ (id)primary;
+ (id)protobufSchema;
- (BKSHIDEventDeferringSelectionPathIdentifier)initWithCoder:(id)a3;
- (BKSHIDEventDeferringSelectionPathIdentifier)initWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_substituteSingeltonForIdentifierString:(id)a3;
- (id)didFinishProtobufDecodingWithError:(id *)a3;
@end

@implementation BKSHIDEventDeferringSelectionPathIdentifier

+ (id)primary
{
  if (primary_onceToken != -1)
  {
    dispatch_once(&primary_onceToken, &__block_literal_global_80);
  }

  v3 = primary_primary;

  return v3;
}

+ (id)everySelectionPath
{
  if (everySelectionPath_onceToken != -1)
  {
    dispatch_once(&everySelectionPath_onceToken, &__block_literal_global_75);
  }

  v3 = everySelectionPath_symbol;

  return v3;
}

uint64_t __54__BKSHIDEventDeferringSelectionPathIdentifier_primary__block_invoke()
{
  primary_primary = [[BKSHIDEventDeferringSelectionPathIdentifier alloc] initWithIdentifier:@"primary"];

  return MEMORY[0x1EEE66BB8]();
}

- (id)didFinishProtobufDecodingWithError:(id *)a3
{
  v3 = self;
  v4 = [(BKSHIDEventDeferringSelectionPathIdentifier *)self _substituteSingeltonForIdentifierString:self->_identifier];
  v5 = v4;
  if (v4)
  {
    v3 = v4;
  }

  v6 = v3;

  return v3;
}

- (BKSHIDEventDeferringSelectionPathIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BKSHIDEventDeferringSelectionPathIdentifier;
  v5 = [(BKSHIDEventDeferringSelectionPathIdentifier *)&v9 init];
  if (!v5 || ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"], v6 = objc_claimAutoreleasedReturnValue(), -[BKSHIDEventDeferringSelectionPathIdentifier _substituteSingeltonForIdentifierString:](v5, "_substituteSingeltonForIdentifierString:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v7 = v5;
  }

  return v7;
}

- (id)_substituteSingeltonForIdentifierString:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"primary"])
  {
    v4 = +[BKSHIDEventDeferringSelectionPathIdentifier primary];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([v3 isEqual:@"genericGesture"])
  {
    v4 = +[BKSHIDEventDeferringSelectionPathIdentifier genericGesture];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    identifier = self->_identifier;
    v10 = v8[1];
    v11 = BSEqualObjects();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BKSHIDEventDeferringSelectionPathIdentifier)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BKSHIDEventDeferringSelectionPathIdentifier;
  v5 = [(BKSHIDEventDeferringSelectionPathIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__BKSHIDEventDeferringSelectionPathIdentifier_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_91 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_91, block);
  }

  v2 = protobufSchema_schema_90;

  return v2;
}

uint64_t __61__BKSHIDEventDeferringSelectionPathIdentifier_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  protobufSchema_schema_90 = [MEMORY[0x1E698E750] buildSchemaForClass:objc_opt_class() builder:&__block_literal_global_93];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)genericGesture
{
  if (genericGesture_onceToken != -1)
  {
    dispatch_once(&genericGesture_onceToken, &__block_literal_global_85);
  }

  v3 = genericGesture_genericGesture;

  return v3;
}

uint64_t __61__BKSHIDEventDeferringSelectionPathIdentifier_genericGesture__block_invoke()
{
  genericGesture_genericGesture = [[BKSHIDEventDeferringSelectionPathIdentifier alloc] initWithIdentifier:@"genericGesture"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __65__BKSHIDEventDeferringSelectionPathIdentifier_everySelectionPath__block_invoke()
{
  everySelectionPath_symbol = objc_alloc_init(BKSHIDEventDeferringSelectionPathSymbol);

  return MEMORY[0x1EEE66BB8]();
}

@end