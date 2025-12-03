@interface ILCallClassificationRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (ILCallClassificationRequest)initWithCallCommunications:(id)communications;
- (ILCallClassificationRequest)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ILCallClassificationRequest

- (ILCallClassificationRequest)initWithCallCommunications:(id)communications
{
  communicationsCopy = communications;
  v9.receiver = self;
  v9.super_class = ILCallClassificationRequest;
  v6 = [(ILCallClassificationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callCommunications, communications);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ILCallClassificationRequest;
  v4 = [(ILClassificationRequest *)&v8 description];
  callCommunications = [(ILCallClassificationRequest *)self callCommunications];
  v6 = [v3 stringWithFormat:@"<%@ callCommunications=%@>", v4, callCommunications];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILCallClassificationRequest *)self isEqualToRequest:equalCopy];

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  callCommunications = [(ILCallClassificationRequest *)self callCommunications];
  callCommunications2 = [requestCopy callCommunications];
  if ([callCommunications isEqualToArray:callCommunications2])
  {
    v7 = 1;
  }

  else
  {
    callCommunications3 = [(ILCallClassificationRequest *)self callCommunications];
    if (callCommunications3)
    {
      v7 = 0;
    }

    else
    {
      callCommunications4 = [requestCopy callCommunications];
      v7 = callCommunications4 == 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  callCommunications = [(ILCallClassificationRequest *)self callCommunications];
  v3 = [callCommunications hash];

  return v3;
}

- (ILCallClassificationRequest)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_callCommunications);
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:v8];

  v10 = [(ILCallClassificationRequest *)self initWithCallCommunications:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ILCallClassificationRequest;
  coderCopy = coder;
  [(ILClassificationRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(ILCallClassificationRequest *)self callCommunications:v7.receiver];
  v6 = NSStringFromSelector(sel_callCommunications);
  [coderCopy encodeObject:v5 forKey:v6];
}

@end