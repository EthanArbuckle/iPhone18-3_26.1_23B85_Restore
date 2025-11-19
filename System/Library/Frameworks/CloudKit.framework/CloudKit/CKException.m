@interface CKException
- (CKException)initWithName:(id)a3 format:(id)a4 args:(char *)a5;
- (id)error;
- (int)errorCode;
@end

@implementation CKException

- (CKException)initWithName:(id)a3 format:(id)a4 args:(char *)a5
{
  v8 = MEMORY[0x1E696AEC0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 alloc];
  v13 = objc_msgSend_initWithFormat_arguments_(v11, v12, v9, a5);

  v16.receiver = self;
  v16.super_class = CKException;
  v14 = [(CKException *)&v16 initWithName:v10 reason:v13 userInfo:0];

  return v14;
}

- (int)errorCode
{
  v3 = objc_msgSend_userInfo(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"CKErrorCode");
  v8 = objc_msgSend_intValue(v5, v6, v7);

  return v8;
}

- (id)error
{
  v4 = objc_msgSend_errorCode(self, a2, v2);
  v7 = objc_msgSend_reason(self, v5, v6);
  v9 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v8, @"CKInternalErrorDomain", v4, @"%@", v7);

  return v9;
}

@end