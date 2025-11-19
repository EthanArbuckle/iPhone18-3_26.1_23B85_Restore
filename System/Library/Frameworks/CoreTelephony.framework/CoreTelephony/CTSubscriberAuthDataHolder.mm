@interface CTSubscriberAuthDataHolder
- (BOOL)isEqual:(id)a3;
- (CTSubscriberAuthDataHolder)initWithCoder:(id)a3;
- (CTSubscriberAuthDataHolder)initWithData:(id)a3;
@end

@implementation CTSubscriberAuthDataHolder

- (CTSubscriberAuthDataHolder)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CTSubscriberAuthDataHolder;
  v6 = [(CTSubscriberAuthDataHolder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dict, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CTSubscriberAuthDataHolder *)self dict];
      v6 = [(CTSubscriberAuthDataHolder *)v4 dict];
      if (v5 == v6)
      {
        v9 = 1;
      }

      else
      {
        v7 = [(CTSubscriberAuthDataHolder *)self dict];
        v8 = [(CTSubscriberAuthDataHolder *)v4 dict];
        v9 = [v7 isEqualToDictionary:v8];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (CTSubscriberAuthDataHolder)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTSubscriberAuthDataHolder *)self initWithData:0];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"dict"];
    dict = v5->_dict;
    v5->_dict = v10;
  }

  return v5;
}

@end