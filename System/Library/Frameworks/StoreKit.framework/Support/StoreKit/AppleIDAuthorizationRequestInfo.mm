@interface AppleIDAuthorizationRequestInfo
- (AppleIDAuthorizationRequestInfo)initWithClientID:(id)d teamID:(id)iD serviceID:(id)serviceID;
@end

@implementation AppleIDAuthorizationRequestInfo

- (AppleIDAuthorizationRequestInfo)initWithClientID:(id)d teamID:(id)iD serviceID:(id)serviceID
{
  dCopy = d;
  iDCopy = iD;
  serviceIDCopy = serviceID;
  if (!dCopy)
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

  if (!iDCopy)
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
    selfCopy = 0;
    goto LABEL_15;
  }

  v18.receiver = self;
  v18.super_class = AppleIDAuthorizationRequestInfo;
  v12 = [(AppleIDAuthorizationRequestInfo *)&v18 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_clientID, d);
    objc_storeStrong(p_isa + 2, iD);
    objc_storeStrong(p_isa + 3, serviceID);
  }

  self = p_isa;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

@end