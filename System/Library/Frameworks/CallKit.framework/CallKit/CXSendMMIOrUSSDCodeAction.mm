@interface CXSendMMIOrUSSDCodeAction
- (CXSendMMIOrUSSDCodeAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSendMMIOrUSSDCodeAction

- (id)customDescription
{
  v7.receiver = self;
  v7.super_class = CXSendMMIOrUSSDCodeAction;
  customDescription = [(CXAction *)&v7 customDescription];
  code = [(CXSendMMIOrUSSDCodeAction *)self code];
  [customDescription appendFormat:@" code=%@", code];

  [customDescription appendFormat:@" ttyType=%ld", -[CXSendMMIOrUSSDCodeAction ttyType](self, "ttyType")];
  senderIdentityUUID = [(CXSendMMIOrUSSDCodeAction *)self senderIdentityUUID];
  [customDescription appendFormat:@" senderIdentityUUID=%@", senderIdentityUUID];

  return customDescription;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CXSendMMIOrUSSDCodeAction;
  copyCopy = copy;
  [(CXAction *)&v9 updateCopy:copyCopy withZone:zone];
  v7 = [(CXSendMMIOrUSSDCodeAction *)self code:v9.receiver];
  [copyCopy setCode:v7];

  [copyCopy setTtyType:{-[CXSendMMIOrUSSDCodeAction ttyType](self, "ttyType")}];
  senderIdentityUUID = [(CXSendMMIOrUSSDCodeAction *)self senderIdentityUUID];
  [copyCopy setSenderIdentityUUID:senderIdentityUUID];
}

- (CXSendMMIOrUSSDCodeAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CXSendMMIOrUSSDCodeAction;
  v5 = [(CXAction *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_code);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    code = v5->_code;
    v5->_code = v8;

    v10 = NSStringFromSelector(sel_ttyType);
    v5->_ttyType = [coderCopy decodeIntegerForKey:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_senderIdentityUUID);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    senderIdentityUUID = v5->_senderIdentityUUID;
    v5->_senderIdentityUUID = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = CXSendMMIOrUSSDCodeAction;
  coderCopy = coder;
  [(CXAction *)&v11 encodeWithCoder:coderCopy];
  v5 = [(CXSendMMIOrUSSDCodeAction *)self code:v11.receiver];
  v6 = NSStringFromSelector(sel_code);
  [coderCopy encodeObject:v5 forKey:v6];

  ttyType = [(CXSendMMIOrUSSDCodeAction *)self ttyType];
  v8 = NSStringFromSelector(sel_ttyType);
  [coderCopy encodeInteger:ttyType forKey:v8];

  senderIdentityUUID = [(CXSendMMIOrUSSDCodeAction *)self senderIdentityUUID];
  v10 = NSStringFromSelector(sel_senderIdentityUUID);
  [coderCopy encodeObject:senderIdentityUUID forKey:v10];
}

@end