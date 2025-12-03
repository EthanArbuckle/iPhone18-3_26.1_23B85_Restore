@interface _MPMediaKitEntityRelationshipTranslator
- (_MPMediaKitEntityRelationshipTranslator)initWithRelatedMPModelClass:(Class)class mediaKitType:(id)type payloadTransformBlock:(id)block;
- (id)prepareSource:(id)source context:(id)context;
@end

@implementation _MPMediaKitEntityRelationshipTranslator

- (id)prepareSource:(id)source context:(id)context
{
  sourceCopy = source;
  contextCopy = context;
  v8 = [sourceCopy objectForKeyedSubscript:@"relationships"];
  v9 = [v8 objectForKeyedSubscript:self->_mediaKitType];
  v10 = [v9 objectForKeyedSubscript:@"data"];

  if ([v10 count] != 1 || (objc_msgSend(v10, "firstObject"), (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (v12 = v11, +[MPBaseEntityTranslator translatorForMPModelClass:](MPMediaKitEntityTranslator, "translatorForMPModelClass:", -[_MPKeyPathEntityRelationshipTranslator relatedMPModelClass](self, "relatedMPModelClass")), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "identifiersForPayload:context:", v12, contextCopy), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(contextCopy, "relationshipPayloadProvider"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "payloadForRelatedEntityWithIdentifierSet:", v14), transformedPayload = objc_claimAutoreleasedReturnValue(), v12, v15, v14, v13, !transformedPayload))
  {
    v17 = [MPMediaKitEntityPayloadTransformer alloc];
    mediaKitType = self->_mediaKitType;
    v19 = [sourceCopy objectForKeyedSubscript:@"_MPMKT_transformedType"];
    if (v19)
    {
      v20 = [(MPMediaKitEntityPayloadTransformer *)v17 initWithType:mediaKitType transformedType:v19];
    }

    else
    {
      v21 = [sourceCopy objectForKeyedSubscript:@"type"];
      v20 = [(MPMediaKitEntityPayloadTransformer *)v17 initWithType:mediaKitType transformedType:v21];
    }

    (*(self->_payloadTransformBlock + 2))();
    transformedPayload = [(MPMediaKitEntityPayloadTransformer *)v20 transformedPayload];
  }

  return transformedPayload;
}

- (_MPMediaKitEntityRelationshipTranslator)initWithRelatedMPModelClass:(Class)class mediaKitType:(id)type payloadTransformBlock:(id)block
{
  typeCopy = type;
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = _MPMediaKitEntityRelationshipTranslator;
  v11 = [(_MPKeyPathEntityRelationshipTranslator *)&v16 initWithRelatedMPModelClass:class];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaKitType, type);
    v13 = _Block_copy(blockCopy);
    payloadTransformBlock = v12->_payloadTransformBlock;
    v12->_payloadTransformBlock = v13;
  }

  return v12;
}

@end