@interface CKPackageSectionTableEntryEnumerator
- (CKPackageSectionTableEntryEnumerator)initWithPackage:(id)a3 packageTable:(id)a4;
- (id)nextObject;
@end

@implementation CKPackageSectionTableEntryEnumerator

- (CKPackageSectionTableEntryEnumerator)initWithPackage:(id)a3 packageTable:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CKPackageSectionTableEntryEnumerator;
  v8 = [(CKPackageTableEntryEnumerator *)&v11 initWithPackageTable:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_package, a3);
  }

  return v9;
}

- (id)nextObject
{
  v6.receiver = self;
  v6.super_class = CKPackageSectionTableEntryEnumerator;
  v3 = [(CKPackageTableEntryEnumerator *)&v6 nextObject];
  objc_msgSend_setPackage_(v3, v4, self->_package);

  return v3;
}

@end