@interface _MPMediaRemoteEntityPropertyTranslator
+ (id)translatorWithBlock:(id)block;
+ (id)translatorWithKeyPath:(id)path;
- (id)valueFromSource:(id)source context:(id)context;
@end

@implementation _MPMediaRemoteEntityPropertyTranslator

+ (id)translatorWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(self);
  v6 = _Block_copy(blockCopy);

  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

+ (id)translatorWithKeyPath:(id)path
{
  pathCopy = path;
  v5 = objc_alloc_init(self);
  v6 = v5[1];
  v5[1] = pathCopy;

  return v5;
}

- (id)valueFromSource:(id)source context:(id)context
{
  keyPath = self->_keyPath;
  if (keyPath)
  {
    [source valueForKeyPath:{keyPath, context}];
  }

  else
  {
    (*(self->_valueTransformBlock + 2))();
  }
  v5 = ;

  return v5;
}

@end