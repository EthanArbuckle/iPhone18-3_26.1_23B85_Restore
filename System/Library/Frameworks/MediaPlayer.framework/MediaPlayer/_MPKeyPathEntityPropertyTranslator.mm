@interface _MPKeyPathEntityPropertyTranslator
+ (id)translatorForKeyPaths:(id)paths valueTransformBlock:(id)block;
+ (id)translatorForKeyPaths:(id)paths valueTransformFunction:(void *)function;
- (id)valueFromSource:(id)source context:(id)context;
@end

@implementation _MPKeyPathEntityPropertyTranslator

- (id)valueFromSource:(id)source context:(id)context
{
  valueTransformFunction = self->_valueTransformFunction;
  if (valueTransformFunction)
  {
    valueTransformFunction(self->_sourceKeyPaths, source, context);
  }

  else
  {
    (*(self->_valueTransformBlock + 2))();
  }
  v5 = ;

  return v5;
}

+ (id)translatorForKeyPaths:(id)paths valueTransformFunction:(void *)function
{
  pathsCopy = paths;
  v6 = objc_alloc_init(_MPKeyPathEntityPropertyTranslator);
  sourceKeyPaths = v6->_sourceKeyPaths;
  v6->_sourceKeyPaths = pathsCopy;

  v6->_valueTransformFunction = function;

  return v6;
}

+ (id)translatorForKeyPaths:(id)paths valueTransformBlock:(id)block
{
  pathsCopy = paths;
  blockCopy = block;
  v7 = objc_alloc_init(_MPKeyPathEntityPropertyTranslator);
  sourceKeyPaths = v7->_sourceKeyPaths;
  v7->_sourceKeyPaths = pathsCopy;
  v9 = pathsCopy;

  v10 = _Block_copy(blockCopy);
  valueTransformBlock = v7->_valueTransformBlock;
  v7->_valueTransformBlock = v10;

  return v7;
}

@end