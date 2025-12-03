@interface MPMediaKitEntityPayloadTransformer
- (MPMediaKitEntityPayloadTransformer)initWithType:(id)type transformedType:(id)transformedType;
- (NSDictionary)transformedPayload;
@end

@implementation MPMediaKitEntityPayloadTransformer

- (NSDictionary)transformedPayload
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:6];
  [v3 setObject:self->_identifier forKeyedSubscript:@"id"];
  [v3 setObject:self->_type forKeyedSubscript:@"type"];
  [v3 setObject:self->_transformedType forKeyedSubscript:@"_MPMKT_transformedType"];
  [v3 setObject:self->_attributes forKeyedSubscript:@"attributes"];
  [v3 setObject:self->_meta forKeyedSubscript:@"meta"];
  [v3 setObject:self->_relationships forKeyedSubscript:@"relationships"];

  return v3;
}

- (MPMediaKitEntityPayloadTransformer)initWithType:(id)type transformedType:(id)transformedType
{
  typeCopy = type;
  transformedTypeCopy = transformedType;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaKitEntityTranslator.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"type"}];
  }

  v20.receiver = self;
  v20.super_class = MPMediaKitEntityPayloadTransformer;
  v10 = [(MPMediaKitEntityPayloadTransformer *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_type, type);
    objc_storeStrong(&v11->_transformedType, transformedType);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    attributes = v11->_attributes;
    v11->_attributes = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    meta = v11->_meta;
    v11->_meta = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    relationships = v11->_relationships;
    v11->_relationships = dictionary3;
  }

  return v11;
}

@end