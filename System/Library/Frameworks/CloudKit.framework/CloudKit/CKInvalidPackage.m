@interface CKInvalidPackage
- (id)invalidPackageError:(id *)a3;
- (id)itemEnumerator;
@end

@implementation CKInvalidPackage

- (id)invalidPackageError:(id *)a3
{
  v4 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, a2, @"CKErrorDomain", 12, @"Package object %p is invalid due to earlier database error", self);
  if (a3)
  {
    v4 = v4;
    *a3 = v4;
  }

  return v4;
}

- (id)itemEnumerator
{
  v3 = [CKPackageEnumerator alloc];
  v5 = objc_msgSend_invalidPackageError_(self, v4, 0);
  v7 = objc_msgSend_initWithError_(v3, v6, v5);

  return v7;
}

@end