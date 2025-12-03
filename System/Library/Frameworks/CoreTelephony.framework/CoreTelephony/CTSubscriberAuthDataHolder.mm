@interface CTSubscriberAuthDataHolder
- (BOOL)isEqual:(id)equal;
- (CTSubscriberAuthDataHolder)initWithCoder:(id)coder;
- (CTSubscriberAuthDataHolder)initWithData:(id)data;
@end

@implementation CTSubscriberAuthDataHolder

- (CTSubscriberAuthDataHolder)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = CTSubscriberAuthDataHolder;
  v6 = [(CTSubscriberAuthDataHolder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dict, data);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dict = [(CTSubscriberAuthDataHolder *)self dict];
      dict2 = [(CTSubscriberAuthDataHolder *)equalCopy dict];
      if (dict == dict2)
      {
        v9 = 1;
      }

      else
      {
        dict3 = [(CTSubscriberAuthDataHolder *)self dict];
        dict4 = [(CTSubscriberAuthDataHolder *)equalCopy dict];
        v9 = [dict3 isEqualToDictionary:dict4];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (CTSubscriberAuthDataHolder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CTSubscriberAuthDataHolder *)self initWithData:0];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"dict"];
    dict = v5->_dict;
    v5->_dict = v10;
  }

  return v5;
}

@end