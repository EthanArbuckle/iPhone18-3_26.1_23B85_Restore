@interface _MXExtensionLookupPolicy
- (_MXExtensionLookupPolicy)initWithPredicate:(id)predicate;
@end

@implementation _MXExtensionLookupPolicy

- (_MXExtensionLookupPolicy)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = _MXExtensionLookupPolicy;
  v6 = [(_MXExtensionLookupPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extensionPredicate, predicate);
  }

  return v7;
}

@end