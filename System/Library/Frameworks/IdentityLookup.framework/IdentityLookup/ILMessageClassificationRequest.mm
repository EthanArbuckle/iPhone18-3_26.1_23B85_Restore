@interface ILMessageClassificationRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (ILMessageClassificationRequest)initWithCoder:(id)coder;
- (ILMessageClassificationRequest)initWithMessageCommunications:(id)communications;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ILMessageClassificationRequest

- (ILMessageClassificationRequest)initWithMessageCommunications:(id)communications
{
  communicationsCopy = communications;
  v9.receiver = self;
  v9.super_class = ILMessageClassificationRequest;
  v6 = [(ILMessageClassificationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageCommunications, communications);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ILMessageClassificationRequest;
  v4 = [(ILClassificationRequest *)&v8 description];
  messageCommunications = [(ILMessageClassificationRequest *)self messageCommunications];
  v6 = [v3 stringWithFormat:@"<%@ messageCommunications=%@>", v4, messageCommunications];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILMessageClassificationRequest *)self isEqualToRequest:equalCopy];

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  messageCommunications = [(ILMessageClassificationRequest *)self messageCommunications];
  messageCommunications2 = [requestCopy messageCommunications];
  if ([messageCommunications isEqualToArray:messageCommunications2])
  {
    v7 = 1;
  }

  else
  {
    messageCommunications3 = [(ILMessageClassificationRequest *)self messageCommunications];
    if (messageCommunications3)
    {
      v7 = 0;
    }

    else
    {
      messageCommunications4 = [requestCopy messageCommunications];
      v7 = messageCommunications4 == 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  messageCommunications = [(ILMessageClassificationRequest *)self messageCommunications];
  v3 = [messageCommunications hash];

  return v3;
}

- (ILMessageClassificationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ILMessageClassificationRequest;
  v5 = [(ILClassificationRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_messageCommunications);
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];
    messageCommunications = v5->_messageCommunications;
    v5->_messageCommunications = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ILMessageClassificationRequest;
  coderCopy = coder;
  [(ILClassificationRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(ILMessageClassificationRequest *)self messageCommunications:v7.receiver];
  v6 = NSStringFromSelector(sel_messageCommunications);
  [coderCopy encodeObject:v5 forKey:v6];
}

@end