@interface ILCallClassificationRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (ILCallClassificationRequest)initWithCallCommunications:(id)a3;
- (ILCallClassificationRequest)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ILCallClassificationRequest

- (ILCallClassificationRequest)initWithCallCommunications:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ILCallClassificationRequest;
  v6 = [(ILCallClassificationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callCommunications, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ILCallClassificationRequest;
  v4 = [(ILClassificationRequest *)&v8 description];
  v5 = [(ILCallClassificationRequest *)self callCommunications];
  v6 = [v3 stringWithFormat:@"<%@ callCommunications=%@>", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILCallClassificationRequest *)self isEqualToRequest:v4];

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  v5 = [(ILCallClassificationRequest *)self callCommunications];
  v6 = [v4 callCommunications];
  if ([v5 isEqualToArray:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(ILCallClassificationRequest *)self callCommunications];
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v9 = [v4 callCommunications];
      v7 = v9 == 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(ILCallClassificationRequest *)self callCommunications];
  v3 = [v2 hash];

  return v3;
}

- (ILCallClassificationRequest)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_callCommunications);
  v9 = [v5 decodeObjectOfClasses:v7 forKey:v8];

  v10 = [(ILCallClassificationRequest *)self initWithCallCommunications:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ILCallClassificationRequest;
  v4 = a3;
  [(ILClassificationRequest *)&v7 encodeWithCoder:v4];
  v5 = [(ILCallClassificationRequest *)self callCommunications:v7.receiver];
  v6 = NSStringFromSelector(sel_callCommunications);
  [v4 encodeObject:v5 forKey:v6];
}

@end