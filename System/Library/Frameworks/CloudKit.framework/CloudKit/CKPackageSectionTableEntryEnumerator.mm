@interface CKPackageSectionTableEntryEnumerator
- (CKPackageSectionTableEntryEnumerator)initWithPackage:(id)package packageTable:(id)table;
- (id)nextObject;
@end

@implementation CKPackageSectionTableEntryEnumerator

- (CKPackageSectionTableEntryEnumerator)initWithPackage:(id)package packageTable:(id)table
{
  packageCopy = package;
  v11.receiver = self;
  v11.super_class = CKPackageSectionTableEntryEnumerator;
  v8 = [(CKPackageTableEntryEnumerator *)&v11 initWithPackageTable:table];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_package, package);
  }

  return v9;
}

- (id)nextObject
{
  v6.receiver = self;
  v6.super_class = CKPackageSectionTableEntryEnumerator;
  nextObject = [(CKPackageTableEntryEnumerator *)&v6 nextObject];
  objc_msgSend_setPackage_(nextObject, v4, self->_package);

  return nextObject;
}

@end