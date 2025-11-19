@interface CXSendMMIOrUSSDCodeAction
- (CXSendMMIOrUSSDCodeAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXSendMMIOrUSSDCodeAction

- (id)customDescription
{
  v7.receiver = self;
  v7.super_class = CXSendMMIOrUSSDCodeAction;
  v3 = [(CXAction *)&v7 customDescription];
  v4 = [(CXSendMMIOrUSSDCodeAction *)self code];
  [v3 appendFormat:@" code=%@", v4];

  [v3 appendFormat:@" ttyType=%ld", -[CXSendMMIOrUSSDCodeAction ttyType](self, "ttyType")];
  v5 = [(CXSendMMIOrUSSDCodeAction *)self senderIdentityUUID];
  [v3 appendFormat:@" senderIdentityUUID=%@", v5];

  return v3;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v9.receiver = self;
  v9.super_class = CXSendMMIOrUSSDCodeAction;
  v6 = a3;
  [(CXAction *)&v9 updateCopy:v6 withZone:a4];
  v7 = [(CXSendMMIOrUSSDCodeAction *)self code:v9.receiver];
  [v6 setCode:v7];

  [v6 setTtyType:{-[CXSendMMIOrUSSDCodeAction ttyType](self, "ttyType")}];
  v8 = [(CXSendMMIOrUSSDCodeAction *)self senderIdentityUUID];
  [v6 setSenderIdentityUUID:v8];
}

- (CXSendMMIOrUSSDCodeAction)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CXSendMMIOrUSSDCodeAction;
  v5 = [(CXAction *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_code);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    code = v5->_code;
    v5->_code = v8;

    v10 = NSStringFromSelector(sel_ttyType);
    v5->_ttyType = [v4 decodeIntegerForKey:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_senderIdentityUUID);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    senderIdentityUUID = v5->_senderIdentityUUID;
    v5->_senderIdentityUUID = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = CXSendMMIOrUSSDCodeAction;
  v4 = a3;
  [(CXAction *)&v11 encodeWithCoder:v4];
  v5 = [(CXSendMMIOrUSSDCodeAction *)self code:v11.receiver];
  v6 = NSStringFromSelector(sel_code);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXSendMMIOrUSSDCodeAction *)self ttyType];
  v8 = NSStringFromSelector(sel_ttyType);
  [v4 encodeInteger:v7 forKey:v8];

  v9 = [(CXSendMMIOrUSSDCodeAction *)self senderIdentityUUID];
  v10 = NSStringFromSelector(sel_senderIdentityUUID);
  [v4 encodeObject:v9 forKey:v10];
}

@end