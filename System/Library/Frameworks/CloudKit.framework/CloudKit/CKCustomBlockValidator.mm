@interface CKCustomBlockValidator
- (BOOL)validate:(id)validate error:(id *)error;
- (CKCustomBlockValidator)initWithBlock:(id)block;
@end

@implementation CKCustomBlockValidator

- (CKCustomBlockValidator)initWithBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = CKCustomBlockValidator;
  blockCopy = block;
  v4 = [(CKCustomBlockValidator *)&v7 init];
  objc_msgSend_setBlock_(v4, v5, blockCopy, v7.receiver, v7.super_class);

  return v4;
}

- (BOOL)validate:(id)validate error:(id *)error
{
  validateCopy = validate;
  v9 = objc_msgSend_block(self, v7, v8);
  v10 = (v9)[2](v9, validateCopy);

  if (error && v10)
  {
    v11 = v10;
    *error = v10;
  }

  return v10 == 0;
}

@end