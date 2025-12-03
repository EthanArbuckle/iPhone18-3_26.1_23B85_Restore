@interface ILClassificationResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResponse:(id)response;
- (ILClassificationResponse)initWithClassificationAction:(ILClassificationAction)action;
- (ILClassificationResponse)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ILClassificationResponse

- (ILClassificationResponse)initWithClassificationAction:(ILClassificationAction)action
{
  v5.receiver = self;
  v5.super_class = ILClassificationResponse;
  result = [(ILClassificationResponse *)&v5 init];
  if (result)
  {
    result->_action = action;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  action = [(ILClassificationResponse *)self action];
  userInfo = [(ILClassificationResponse *)self userInfo];
  userString = [(ILClassificationResponse *)self userString];
  v8 = [v3 stringWithFormat:@"<%@ %p action=%ld, userInfo=%@, userString=%@>", v4, self, action, userInfo, userString];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILClassificationResponse *)self isEqualToResponse:equalCopy];

  return v5;
}

- (BOOL)isEqualToResponse:(id)response
{
  responseCopy = response;
  action = [(ILClassificationResponse *)self action];
  if (action == [responseCopy action])
  {
    userInfo = [(ILClassificationResponse *)self userInfo];
    userInfo2 = [responseCopy userInfo];
    if (userInfo | userInfo2 && ![userInfo isEqual:userInfo2])
    {
      v10 = 0;
    }

    else
    {
      userString = [(ILClassificationResponse *)self userString];
      userString2 = [responseCopy userString];
      if (userString | userString2)
      {
        v10 = [userString isEqual:userString2];
      }

      else
      {
        v10 = 1;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  action = [(ILClassificationResponse *)self action];
  userInfo = [(ILClassificationResponse *)self userInfo];
  v5 = [userInfo hash] ^ action;
  userString = [(ILClassificationResponse *)self userString];
  v7 = [userString hash];

  return v5 ^ v7;
}

- (ILClassificationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_action);
  v6 = [coderCopy decodeIntegerForKey:v5];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = NSStringFromSelector(sel_userInfo);
  v14 = [coderCopy decodeObjectOfClasses:v12 forKey:v13];

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_userString);
  v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];

  v18 = [(ILClassificationResponse *)self initWithClassificationAction:v6];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_userInfo, v14);
    objc_storeStrong(&v19->_userString, v17);
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  action = [(ILClassificationResponse *)self action];
  v6 = NSStringFromSelector(sel_action);
  [coderCopy encodeInteger:action forKey:v6];

  userInfo = [(ILClassificationResponse *)self userInfo];
  v8 = NSStringFromSelector(sel_userInfo);
  [coderCopy encodeObject:userInfo forKey:v8];

  userString = [(ILClassificationResponse *)self userString];
  v9 = NSStringFromSelector(sel_userString);
  [coderCopy encodeObject:userString forKey:v9];
}

@end