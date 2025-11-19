@interface ILClassificationResponse
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResponse:(id)a3;
- (ILClassificationResponse)initWithClassificationAction:(ILClassificationAction)action;
- (ILClassificationResponse)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v5 = [(ILClassificationResponse *)self action];
  v6 = [(ILClassificationResponse *)self userInfo];
  v7 = [(ILClassificationResponse *)self userString];
  v8 = [v3 stringWithFormat:@"<%@ %p action=%ld, userInfo=%@, userString=%@>", v4, self, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILClassificationResponse *)self isEqualToResponse:v4];

  return v5;
}

- (BOOL)isEqualToResponse:(id)a3
{
  v4 = a3;
  v5 = [(ILClassificationResponse *)self action];
  if (v5 == [v4 action])
  {
    v6 = [(ILClassificationResponse *)self userInfo];
    v7 = [v4 userInfo];
    if (v6 | v7 && ![v6 isEqual:v7])
    {
      v10 = 0;
    }

    else
    {
      v8 = [(ILClassificationResponse *)self userString];
      v9 = [v4 userString];
      if (v8 | v9)
      {
        v10 = [v8 isEqual:v9];
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
  v3 = [(ILClassificationResponse *)self action];
  v4 = [(ILClassificationResponse *)self userInfo];
  v5 = [v4 hash] ^ v3;
  v6 = [(ILClassificationResponse *)self userString];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (ILClassificationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_action);
  v6 = [v4 decodeIntegerForKey:v5];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = NSStringFromSelector(sel_userInfo);
  v14 = [v4 decodeObjectOfClasses:v12 forKey:v13];

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_userString);
  v17 = [v4 decodeObjectOfClass:v15 forKey:v16];

  v18 = [(ILClassificationResponse *)self initWithClassificationAction:v6];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_userInfo, v14);
    objc_storeStrong(&v19->_userString, v17);
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ILClassificationResponse *)self action];
  v6 = NSStringFromSelector(sel_action);
  [v4 encodeInteger:v5 forKey:v6];

  v7 = [(ILClassificationResponse *)self userInfo];
  v8 = NSStringFromSelector(sel_userInfo);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(ILClassificationResponse *)self userString];
  v9 = NSStringFromSelector(sel_userString);
  [v4 encodeObject:v10 forKey:v9];
}

@end