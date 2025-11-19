@interface _MPKeyPathEntityPropertyTranslator
+ (id)translatorForKeyPaths:(id)a3 valueTransformBlock:(id)a4;
+ (id)translatorForKeyPaths:(id)a3 valueTransformFunction:(void *)a4;
- (id)valueFromSource:(id)a3 context:(id)a4;
@end

@implementation _MPKeyPathEntityPropertyTranslator

- (id)valueFromSource:(id)a3 context:(id)a4
{
  valueTransformFunction = self->_valueTransformFunction;
  if (valueTransformFunction)
  {
    valueTransformFunction(self->_sourceKeyPaths, a3, a4);
  }

  else
  {
    (*(self->_valueTransformBlock + 2))();
  }
  v5 = ;

  return v5;
}

+ (id)translatorForKeyPaths:(id)a3 valueTransformFunction:(void *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(_MPKeyPathEntityPropertyTranslator);
  sourceKeyPaths = v6->_sourceKeyPaths;
  v6->_sourceKeyPaths = v5;

  v6->_valueTransformFunction = a4;

  return v6;
}

+ (id)translatorForKeyPaths:(id)a3 valueTransformBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_MPKeyPathEntityPropertyTranslator);
  sourceKeyPaths = v7->_sourceKeyPaths;
  v7->_sourceKeyPaths = v5;
  v9 = v5;

  v10 = _Block_copy(v6);
  valueTransformBlock = v7->_valueTransformBlock;
  v7->_valueTransformBlock = v10;

  return v7;
}

@end