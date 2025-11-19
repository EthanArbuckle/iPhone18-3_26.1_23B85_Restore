@interface AppleIDAuthorizationRequestInfo
- (AppleIDAuthorizationRequestInfo)initWithClientID:(id)a3 teamID:(id)a4 serviceID:(id)a5;
@end

@implementation AppleIDAuthorizationRequestInfo

- (AppleIDAuthorizationRequestInfo)initWithClientID:(id)a3 teamID:(id)a4 serviceID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    if (qword_1003D3958 != -1)
    {
      sub_1002C7094();
    }

    v15 = qword_1003D3910;
    if (os_log_type_enabled(qword_1003D3910, OS_LOG_TYPE_ERROR))
    {
      sub_1002C7120(self, v15);
    }

    goto LABEL_14;
  }

  if (!v10)
  {
    if (qword_1003D3958 != -1)
    {
      sub_1002C7094();
    }

    v16 = qword_1003D3910;
    if (os_log_type_enabled(qword_1003D3910, OS_LOG_TYPE_ERROR))
    {
      sub_1002C70A8(self, v16);
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v18.receiver = self;
  v18.super_class = AppleIDAuthorizationRequestInfo;
  v12 = [(AppleIDAuthorizationRequestInfo *)&v18 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_clientID, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  self = p_isa;
  v14 = self;
LABEL_15:

  return v14;
}

@end