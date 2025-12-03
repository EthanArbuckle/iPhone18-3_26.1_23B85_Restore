@interface CKPackageEnumerator
- (CKPackageEnumerator)initWithError:(id)error;
@end

@implementation CKPackageEnumerator

- (CKPackageEnumerator)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = CKPackageEnumerator;
  v6 = [(CKPackageEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enumerationError, error);
  }

  return v7;
}

@end