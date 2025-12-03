@interface CKInternalError
+ (id)errorWithCode:(int64_t)code format:(id)format;
+ (id)errorWithCode:(int64_t)code userInfo:(id)info format:(id)format;
+ (void)initialize;
@end

@implementation CKInternalError

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 1);
}

+ (id)errorWithCode:(int64_t)code format:(id)format
{
  v6 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v8 = [v6 alloc];
  v10 = objc_msgSend_initWithFormat_arguments_(v8, v9, formatCopy, &v15);

  v12 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(self, v11, @"CKInternalErrorDomain", code, 0, 0, 0, 0, v10);

  return v12;
}

+ (id)errorWithCode:(int64_t)code userInfo:(id)info format:(id)format
{
  v8 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  infoCopy = info;
  v11 = [v8 alloc];
  v13 = objc_msgSend_initWithFormat_arguments_(v11, v12, formatCopy, &v18);

  v15 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(self, v14, @"CKInternalErrorDomain", code, infoCopy, 0, 0, 0, v13);

  return v15;
}

@end