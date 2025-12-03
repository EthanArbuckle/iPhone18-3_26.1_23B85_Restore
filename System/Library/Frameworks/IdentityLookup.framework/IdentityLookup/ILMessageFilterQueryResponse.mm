@interface ILMessageFilterQueryResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToQueryResponse:(id)response;
- (ILMessageFilterQueryResponse)init;
- (ILMessageFilterQueryResponse)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  action = [(ILMessageFilterQueryResponse *)self action];
  subAction = [(ILMessageFilterQueryResponse *)self subAction];
  version = [(ILMessageFilterQueryResponse *)self version];
  error = [(ILMessageFilterQueryResponse *)self error];
  v9 = [v3 stringWithFormat:@"<%@ %p action=%ld subAction=%ld version=%@ error=%@>", v4, self, action, subAction, version, error];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILMessageFilterQueryResponse *)self isEqualToQueryResponse:equalCopy];

  return v5;
}

- (BOOL)isEqualToQueryResponse:(id)response
{
  responseCopy = response;
  action = [(ILMessageFilterQueryResponse *)self action];
  if (action == [responseCopy action])
  {
    subAction = [(ILMessageFilterQueryResponse *)self subAction];
    if (subAction == [responseCopy subAction])
    {
      version = [(ILMessageFilterQueryResponse *)self version];
      version2 = [responseCopy version];
      if (version2)
      {
        if ([version isEqualToString:version2])
        {
LABEL_5:
          error = [(ILMessageFilterQueryResponse *)self error];
          error2 = [responseCopy error];
          if (error | error2)
          {
            v11 = [error isEqual:error2];
          }

          else
          {
            v11 = 1;
          }

          goto LABEL_12;
        }
      }

      else if (!version)
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
  action = [(ILMessageFilterQueryResponse *)self action];
  v4 = [(ILMessageFilterQueryResponse *)self subAction]^ action;
  version = [(ILMessageFilterQueryResponse *)self version];
  v6 = v4 ^ [version hash];
  error = [(ILMessageFilterQueryResponse *)self error];
  code = [error code];

  return v6 ^ code;
}

- (ILMessageFilterQueryResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ILMessageFilterQueryResponse *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_action);
    v5->_action = [coderCopy decodeIntegerForKey:v6];

    v7 = NSStringFromSelector(sel_subAction);
    v5->_subAction = [coderCopy decodeIntegerForKey:v7];

    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_version);
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
    version = v5->_version;
    v5->_version = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_error);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    error = v5->_error;
    v5->_error = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  action = [(ILMessageFilterQueryResponse *)self action];
  v6 = NSStringFromSelector(sel_action);
  [coderCopy encodeInteger:action forKey:v6];

  subAction = [(ILMessageFilterQueryResponse *)self subAction];
  v8 = NSStringFromSelector(sel_subAction);
  [coderCopy encodeInteger:subAction forKey:v8];

  version = [(ILMessageFilterQueryResponse *)self version];
  v10 = NSStringFromSelector(sel_version);
  [coderCopy encodeObject:version forKey:v10];

  error = [(ILMessageFilterQueryResponse *)self error];
  v11 = NSStringFromSelector(sel_error);
  [coderCopy encodeObject:error forKey:v11];
}

@end