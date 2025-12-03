@interface FPTestingIngestion
- (FPTestingIngestion)initWithCoder:(id)coder;
- (FPTestingIngestion)initWithOperationIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier item:(id)item;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPTestingIngestion

- (FPTestingIngestion)initWithOperationIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier item:(id)item
{
  itemIdentifierCopy = itemIdentifier;
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = FPTestingIngestion;
  v11 = [(FPTestingOperation *)&v14 initWithOperationIdentifier:identifier];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_itemIdentifier, itemIdentifier);
    objc_storeStrong(&v12->_item, item);
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FPTestingIngestion;
  coderCopy = coder;
  [(FPTestingOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_itemIdentifier forKey:{@"_itemIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_item forKey:@"_item"];
}

- (FPTestingIngestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FPTestingIngestion;
  v5 = [(FPTestingOperation *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_item"];
    item = v5->_item;
    v5->_item = v8;
  }

  return v5;
}

@end