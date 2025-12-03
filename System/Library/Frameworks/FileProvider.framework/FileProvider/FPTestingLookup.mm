@interface FPTestingLookup
- (FPTestingLookup)initWithCoder:(id)coder;
- (FPTestingLookup)initWithOperationIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPTestingLookup

- (FPTestingLookup)initWithOperationIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier
{
  itemIdentifierCopy = itemIdentifier;
  v11.receiver = self;
  v11.super_class = FPTestingLookup;
  v8 = [(FPTestingOperation *)&v11 initWithOperationIdentifier:identifier];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_itemIdentifier, itemIdentifier);
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FPTestingLookup;
  coderCopy = coder;
  [(FPTestingOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_itemIdentifier forKey:{@"_itemIdentifier", v5.receiver, v5.super_class}];
}

- (FPTestingLookup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FPTestingLookup;
  v5 = [(FPTestingOperation *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;
  }

  return v5;
}

@end