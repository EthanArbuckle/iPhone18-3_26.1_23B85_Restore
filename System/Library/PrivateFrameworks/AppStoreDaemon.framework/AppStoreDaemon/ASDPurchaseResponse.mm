@interface ASDPurchaseResponse
- (ASDPurchaseResponse)initWithCoder:(id)coder;
- (ASDPurchaseResponse)initWithError:(id)error;
- (ASDPurchaseResponse)initWithPurchaseResponseItems:(id)items;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDPurchaseResponse

- (ASDPurchaseResponse)initWithPurchaseResponseItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = ASDPurchaseResponse;
  v5 = [(ASDRequestResponse *)&v9 init];
  if (v5)
  {
    v6 = [itemsCopy copy];
    items = v5->_items;
    v5->_items = v6;
  }

  return v5;
}

- (ASDPurchaseResponse)initWithError:(id)error
{
  v7.receiver = self;
  v7.super_class = ASDPurchaseResponse;
  v3 = [(ASDRequestResponse *)&v7 initWithError:error];
  v4 = v3;
  if (v3)
  {
    items = v3->_items;
    v3->_items = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = ASDPurchaseResponse;
  v5 = [(ASDRequestResponse *)&v9 copyWithZone:?];
  v6 = [(NSArray *)self->_items copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (ASDPurchaseResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ASDPurchaseResponse;
  v5 = [(ASDRequestResponse *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"responseItems"];
    items = v5->_items;
    v5->_items = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ASDPurchaseResponse;
  coderCopy = coder;
  [(ASDRequestResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_items forKey:{@"responseItems", v5.receiver, v5.super_class}];
}

@end