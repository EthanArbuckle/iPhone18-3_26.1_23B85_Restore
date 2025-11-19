@interface ILMessageFilterQueryResponse
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToQueryResponse:(id)a3;
- (ILMessageFilterQueryResponse)init;
- (ILMessageFilterQueryResponse)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ILMessageFilterQueryResponse

- (ILMessageFilterQueryResponse)init
{
  [(ILMessageFilterQueryResponse *)self setAction:0];
  [(ILMessageFilterQueryResponse *)self setSubAction:0];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ILMessageFilterQueryResponse *)self action];
  v6 = [(ILMessageFilterQueryResponse *)self subAction];
  v7 = [(ILMessageFilterQueryResponse *)self version];
  v8 = [(ILMessageFilterQueryResponse *)self error];
  v9 = [v3 stringWithFormat:@"<%@ %p action=%ld subAction=%ld version=%@ error=%@>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILMessageFilterQueryResponse *)self isEqualToQueryResponse:v4];

  return v5;
}

- (BOOL)isEqualToQueryResponse:(id)a3
{
  v4 = a3;
  v5 = [(ILMessageFilterQueryResponse *)self action];
  if (v5 == [v4 action])
  {
    v6 = [(ILMessageFilterQueryResponse *)self subAction];
    if (v6 == [v4 subAction])
    {
      v7 = [(ILMessageFilterQueryResponse *)self version];
      v8 = [v4 version];
      if (v8)
      {
        if ([v7 isEqualToString:v8])
        {
LABEL_5:
          v9 = [(ILMessageFilterQueryResponse *)self error];
          v10 = [v4 error];
          if (v9 | v10)
          {
            v11 = [v9 isEqual:v10];
          }

          else
          {
            v11 = 1;
          }

          goto LABEL_12;
        }
      }

      else if (!v7)
      {
        goto LABEL_5;
      }

      v11 = 0;
LABEL_12:

      goto LABEL_13;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(ILMessageFilterQueryResponse *)self action];
  v4 = [(ILMessageFilterQueryResponse *)self subAction]^ v3;
  v5 = [(ILMessageFilterQueryResponse *)self version];
  v6 = v4 ^ [v5 hash];
  v7 = [(ILMessageFilterQueryResponse *)self error];
  v8 = [v7 code];

  return v6 ^ v8;
}

- (ILMessageFilterQueryResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ILMessageFilterQueryResponse *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_action);
    v5->_action = [v4 decodeIntegerForKey:v6];

    v7 = NSStringFromSelector(sel_subAction);
    v5->_subAction = [v4 decodeIntegerForKey:v7];

    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_version);
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];
    version = v5->_version;
    v5->_version = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_error);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    error = v5->_error;
    v5->_error = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ILMessageFilterQueryResponse *)self action];
  v6 = NSStringFromSelector(sel_action);
  [v4 encodeInteger:v5 forKey:v6];

  v7 = [(ILMessageFilterQueryResponse *)self subAction];
  v8 = NSStringFromSelector(sel_subAction);
  [v4 encodeInteger:v7 forKey:v8];

  v9 = [(ILMessageFilterQueryResponse *)self version];
  v10 = NSStringFromSelector(sel_version);
  [v4 encodeObject:v9 forKey:v10];

  v12 = [(ILMessageFilterQueryResponse *)self error];
  v11 = NSStringFromSelector(sel_error);
  [v4 encodeObject:v12 forKey:v11];
}

@end