@interface _MXExtensionLookupPolicy
- (_MXExtensionLookupPolicy)initWithPredicate:(id)a3;
@end

@implementation _MXExtensionLookupPolicy

- (_MXExtensionLookupPolicy)initWithPredicate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MXExtensionLookupPolicy;
  v6 = [(_MXExtensionLookupPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extensionPredicate, a3);
  }

  return v7;
}

@end