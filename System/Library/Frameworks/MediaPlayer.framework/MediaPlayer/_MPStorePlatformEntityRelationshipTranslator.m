@interface _MPStorePlatformEntityRelationshipTranslator
- (_MPStorePlatformEntityRelationshipTranslator)initWithRelatedMPModelClass:(Class)a3 payloadTransformBlock:(id)a4;
- (id)prepareSource:(id)a3 context:(id)a4;
@end

@implementation _MPStorePlatformEntityRelationshipTranslator

- (id)prepareSource:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionary];
  (*(self->_payloadTransformBlock + 2))();

  return v9;
}

- (_MPStorePlatformEntityRelationshipTranslator)initWithRelatedMPModelClass:(Class)a3 payloadTransformBlock:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = _MPStorePlatformEntityRelationshipTranslator;
  v7 = [(_MPKeyPathEntityRelationshipTranslator *)&v11 initWithRelatedMPModelClass:a3];
  if (v7)
  {
    v8 = _Block_copy(v6);
    payloadTransformBlock = v7->_payloadTransformBlock;
    v7->_payloadTransformBlock = v8;
  }

  return v7;
}

@end