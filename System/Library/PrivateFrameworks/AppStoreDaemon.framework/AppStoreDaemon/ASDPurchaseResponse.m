@interface ASDPurchaseResponse
- (ASDPurchaseResponse)initWithCoder:(id)a3;
- (ASDPurchaseResponse)initWithError:(id)a3;
- (ASDPurchaseResponse)initWithPurchaseResponseItems:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDPurchaseResponse

- (ASDPurchaseResponse)initWithPurchaseResponseItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDPurchaseResponse;
  v5 = [(ASDRequestResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    items = v5->_items;
    v5->_items = v6;
  }

  return v5;
}

- (ASDPurchaseResponse)initWithError:(id)a3
{
  v7.receiver = self;
  v7.super_class = ASDPurchaseResponse;
  v3 = [(ASDRequestResponse *)&v7 initWithError:a3];
  v4 = v3;
  if (v3)
  {
    items = v3->_items;
    v3->_items = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = ASDPurchaseResponse;
  v5 = [(ASDRequestResponse *)&v9 copyWithZone:?];
  v6 = [(NSArray *)self->_items copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (ASDPurchaseResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ASDPurchaseResponse;
  v5 = [(ASDRequestResponse *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"responseItems"];
    items = v5->_items;
    v5->_items = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ASDPurchaseResponse;
  v4 = a3;
  [(ASDRequestResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_items forKey:{@"responseItems", v5.receiver, v5.super_class}];
}

@end