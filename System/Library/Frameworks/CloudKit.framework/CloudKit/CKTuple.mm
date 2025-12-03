@interface CKTuple
- (id)copyWithZone:(_NSZone *)zone;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
@end

@implementation CKTuple

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Subclass must implement", 0);
  objc_exception_throw(v3);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, zone);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKUtils.m", 3063, @"Expected to be overridden in subclass");

  return 0;
}

@end