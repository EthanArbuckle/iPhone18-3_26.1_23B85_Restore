@interface CKPredicateValidator
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedValidator;
- (BOOL)validate:(id)validate error:(id *)error;
@end

@implementation CKPredicateValidator

+ (id)sharedValidator
{
  if (qword_1ED4B6328 != -1)
  {
    dispatch_once(&qword_1ED4B6328, &unk_1EFA30270);
  }

  v3 = qword_1ED4B6320;

  return v3;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    v6 = [CKException alloc];
    v8 = objc_msgSend_initWithCode_format_(v6, v7, 12, @"This is an abstract class. Use +sharedValidator instead");
    objc_exception_throw(v8);
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___CKPredicateValidator;
  return objc_msgSendSuper2(&v9, sel_allocWithZone_, zone);
}

- (BOOL)validate:(id)validate error:(id *)error
{
  validateCopy = validate;
  v5 = [CKException alloc];
  v7 = objc_msgSend_initWithCode_format_(v5, v6, 12, @"This method must be overridden");
  objc_exception_throw(v7);
}

@end