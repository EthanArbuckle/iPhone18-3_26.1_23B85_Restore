@interface FPTestingIngestion
- (FPTestingIngestion)initWithCoder:(id)a3;
- (FPTestingIngestion)initWithOperationIdentifier:(id)a3 itemIdentifier:(id)a4 item:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPTestingIngestion

- (FPTestingIngestion)initWithOperationIdentifier:(id)a3 itemIdentifier:(id)a4 item:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FPTestingIngestion;
  v11 = [(FPTestingOperation *)&v14 initWithOperationIdentifier:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_itemIdentifier, a4);
    objc_storeStrong(&v12->_item, a5);
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FPTestingIngestion;
  v4 = a3;
  [(FPTestingOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_itemIdentifier forKey:{@"_itemIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_item forKey:@"_item"];
}

- (FPTestingIngestion)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FPTestingIngestion;
  v5 = [(FPTestingOperation *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_item"];
    item = v5->_item;
    v5->_item = v8;
  }

  return v5;
}

@end