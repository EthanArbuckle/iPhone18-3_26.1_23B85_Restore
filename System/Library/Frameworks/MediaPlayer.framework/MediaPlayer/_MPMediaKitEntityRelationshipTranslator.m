@interface _MPMediaKitEntityRelationshipTranslator
- (_MPMediaKitEntityRelationshipTranslator)initWithRelatedMPModelClass:(Class)a3 mediaKitType:(id)a4 payloadTransformBlock:(id)a5;
- (id)prepareSource:(id)a3 context:(id)a4;
@end

@implementation _MPMediaKitEntityRelationshipTranslator

- (id)prepareSource:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"relationships"];
  v9 = [v8 objectForKeyedSubscript:self->_mediaKitType];
  v10 = [v9 objectForKeyedSubscript:@"data"];

  if ([v10 count] != 1 || (objc_msgSend(v10, "firstObject"), (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (v12 = v11, +[MPBaseEntityTranslator translatorForMPModelClass:](MPMediaKitEntityTranslator, "translatorForMPModelClass:", -[_MPKeyPathEntityRelationshipTranslator relatedMPModelClass](self, "relatedMPModelClass")), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "identifiersForPayload:context:", v12, v7), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "relationshipPayloadProvider"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "payloadForRelatedEntityWithIdentifierSet:", v14), v16 = objc_claimAutoreleasedReturnValue(), v12, v15, v14, v13, !v16))
  {
    v17 = [MPMediaKitEntityPayloadTransformer alloc];
    mediaKitType = self->_mediaKitType;
    v19 = [v6 objectForKeyedSubscript:@"_MPMKT_transformedType"];
    if (v19)
    {
      v20 = [(MPMediaKitEntityPayloadTransformer *)v17 initWithType:mediaKitType transformedType:v19];
    }

    else
    {
      v21 = [v6 objectForKeyedSubscript:@"type"];
      v20 = [(MPMediaKitEntityPayloadTransformer *)v17 initWithType:mediaKitType transformedType:v21];
    }

    (*(self->_payloadTransformBlock + 2))();
    v16 = [(MPMediaKitEntityPayloadTransformer *)v20 transformedPayload];
  }

  return v16;
}

- (_MPMediaKitEntityRelationshipTranslator)initWithRelatedMPModelClass:(Class)a3 mediaKitType:(id)a4 payloadTransformBlock:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _MPMediaKitEntityRelationshipTranslator;
  v11 = [(_MPKeyPathEntityRelationshipTranslator *)&v16 initWithRelatedMPModelClass:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaKitType, a4);
    v13 = _Block_copy(v10);
    payloadTransformBlock = v12->_payloadTransformBlock;
    v12->_payloadTransformBlock = v13;
  }

  return v12;
}

@end