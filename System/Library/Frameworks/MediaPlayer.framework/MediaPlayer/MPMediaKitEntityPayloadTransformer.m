@interface MPMediaKitEntityPayloadTransformer
- (MPMediaKitEntityPayloadTransformer)initWithType:(id)a3 transformedType:(id)a4;
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

- (MPMediaKitEntityPayloadTransformer)initWithType:(id)a3 transformedType:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MPMediaKitEntityTranslator.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"type"}];
  }

  v20.receiver = self;
  v20.super_class = MPMediaKitEntityPayloadTransformer;
  v10 = [(MPMediaKitEntityPayloadTransformer *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_type, a3);
    objc_storeStrong(&v11->_transformedType, a4);
    v12 = [MEMORY[0x1E695DF90] dictionary];
    attributes = v11->_attributes;
    v11->_attributes = v12;

    v14 = [MEMORY[0x1E695DF90] dictionary];
    meta = v11->_meta;
    v11->_meta = v14;

    v16 = [MEMORY[0x1E695DF90] dictionary];
    relationships = v11->_relationships;
    v11->_relationships = v16;
  }

  return v11;
}

@end