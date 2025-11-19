@interface CKCustomBlockValidator
- (BOOL)validate:(id)a3 error:(id *)a4;
- (CKCustomBlockValidator)initWithBlock:(id)a3;
@end

@implementation CKCustomBlockValidator

- (CKCustomBlockValidator)initWithBlock:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKCustomBlockValidator;
  v3 = a3;
  v4 = [(CKCustomBlockValidator *)&v7 init];
  objc_msgSend_setBlock_(v4, v5, v3, v7.receiver, v7.super_class);

  return v4;
}

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = objc_msgSend_block(self, v7, v8);
  v10 = (v9)[2](v9, v6);

  if (a4 && v10)
  {
    v11 = v10;
    *a4 = v10;
  }

  return v10 == 0;
}

@end