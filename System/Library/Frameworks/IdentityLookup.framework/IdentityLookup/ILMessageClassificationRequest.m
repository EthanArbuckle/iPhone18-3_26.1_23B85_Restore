@interface ILMessageClassificationRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (ILMessageClassificationRequest)initWithCoder:(id)a3;
- (ILMessageClassificationRequest)initWithMessageCommunications:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ILMessageClassificationRequest

- (ILMessageClassificationRequest)initWithMessageCommunications:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ILMessageClassificationRequest;
  v6 = [(ILMessageClassificationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageCommunications, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ILMessageClassificationRequest;
  v4 = [(ILClassificationRequest *)&v8 description];
  v5 = [(ILMessageClassificationRequest *)self messageCommunications];
  v6 = [v3 stringWithFormat:@"<%@ messageCommunications=%@>", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILMessageClassificationRequest *)self isEqualToRequest:v4];

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  v5 = [(ILMessageClassificationRequest *)self messageCommunications];
  v6 = [v4 messageCommunications];
  if ([v5 isEqualToArray:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(ILMessageClassificationRequest *)self messageCommunications];
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v9 = [v4 messageCommunications];
      v7 = v9 == 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(ILMessageClassificationRequest *)self messageCommunications];
  v3 = [v2 hash];

  return v3;
}

- (ILMessageClassificationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ILMessageClassificationRequest;
  v5 = [(ILClassificationRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_messageCommunications);
    v10 = [v4 decodeObjectOfClasses:v8 forKey:v9];
    messageCommunications = v5->_messageCommunications;
    v5->_messageCommunications = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ILMessageClassificationRequest;
  v4 = a3;
  [(ILClassificationRequest *)&v7 encodeWithCoder:v4];
  v5 = [(ILMessageClassificationRequest *)self messageCommunications:v7.receiver];
  v6 = NSStringFromSelector(sel_messageCommunications);
  [v4 encodeObject:v5 forKey:v6];
}

@end