@interface _MPMediaRemoteEntityPropertyTranslator
+ (id)translatorWithBlock:(id)a3;
+ (id)translatorWithKeyPath:(id)a3;
- (id)valueFromSource:(id)a3 context:(id)a4;
@end

@implementation _MPMediaRemoteEntityPropertyTranslator

+ (id)translatorWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = _Block_copy(v4);

  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

+ (id)translatorWithKeyPath:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = v5[1];
  v5[1] = v4;

  return v5;
}

- (id)valueFromSource:(id)a3 context:(id)a4
{
  keyPath = self->_keyPath;
  if (keyPath)
  {
    [a3 valueForKeyPath:{keyPath, a4}];
  }

  else
  {
    (*(self->_valueTransformBlock + 2))();
  }
  v5 = ;

  return v5;
}

@end