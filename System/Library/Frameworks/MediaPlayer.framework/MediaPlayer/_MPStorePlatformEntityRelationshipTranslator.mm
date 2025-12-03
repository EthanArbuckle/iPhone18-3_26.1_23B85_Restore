@interface _MPStorePlatformEntityRelationshipTranslator
- (_MPStorePlatformEntityRelationshipTranslator)initWithRelatedMPModelClass:(Class)class payloadTransformBlock:(id)block;
- (id)prepareSource:(id)source context:(id)context;
@end

@implementation _MPStorePlatformEntityRelationshipTranslator

- (id)prepareSource:(id)source context:(id)context
{
  v6 = MEMORY[0x1E695DF90];
  contextCopy = context;
  sourceCopy = source;
  dictionary = [v6 dictionary];
  (*(self->_payloadTransformBlock + 2))();

  return dictionary;
}

- (_MPStorePlatformEntityRelationshipTranslator)initWithRelatedMPModelClass:(Class)class payloadTransformBlock:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = _MPStorePlatformEntityRelationshipTranslator;
  v7 = [(_MPKeyPathEntityRelationshipTranslator *)&v11 initWithRelatedMPModelClass:class];
  if (v7)
  {
    v8 = _Block_copy(blockCopy);
    payloadTransformBlock = v7->_payloadTransformBlock;
    v7->_payloadTransformBlock = v8;
  }

  return v7;
}

@end