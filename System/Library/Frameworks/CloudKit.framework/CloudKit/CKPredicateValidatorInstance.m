@interface CKPredicateValidatorInstance
- (BOOL)validate:(id)a3 error:(id *)a4;
@end

@implementation CKPredicateValidatorInstance

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3, a4);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CKObjectValidator.m", 111, @"Validate must be called on subclass");

  return 0;
}

@end