@interface CKInternalError
+ (id)errorWithCode:(int64_t)a3 format:(id)a4;
+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4 format:(id)a5;
+ (void)initialize;
@end

@implementation CKInternalError

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 1);
}

+ (id)errorWithCode:(int64_t)a3 format:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = [v6 alloc];
  v10 = objc_msgSend_initWithFormat_arguments_(v8, v9, v7, &v15);

  v12 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(a1, v11, @"CKInternalErrorDomain", a3, 0, 0, 0, 0, v10);

  return v12;
}

+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4 format:(id)a5
{
  v8 = MEMORY[0x1E696AEC0];
  v9 = a5;
  v10 = a4;
  v11 = [v8 alloc];
  v13 = objc_msgSend_initWithFormat_arguments_(v11, v12, v9, &v18);

  v15 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(a1, v14, @"CKInternalErrorDomain", a3, v10, 0, 0, 0, v13);

  return v15;
}

@end