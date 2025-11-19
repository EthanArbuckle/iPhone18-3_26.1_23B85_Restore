@interface _MPKeyPathEntityRelationshipTranslator
- (_MPKeyPathEntityRelationshipTranslator)initWithRelatedMPModelClass:(Class)a3;
@end

@implementation _MPKeyPathEntityRelationshipTranslator

- (_MPKeyPathEntityRelationshipTranslator)initWithRelatedMPModelClass:(Class)a3
{
  v7.receiver = self;
  v7.super_class = _MPKeyPathEntityRelationshipTranslator;
  v4 = [(_MPKeyPathEntityRelationshipTranslator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_relatedMPModelClass, a3);
  }

  return v5;
}

@end