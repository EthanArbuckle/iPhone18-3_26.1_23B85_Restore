@interface CKPackageEnumerator
- (CKPackageEnumerator)initWithError:(id)a3;
@end

@implementation CKPackageEnumerator

- (CKPackageEnumerator)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKPackageEnumerator;
  v6 = [(CKPackageEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enumerationError, a3);
  }

  return v7;
}

@end