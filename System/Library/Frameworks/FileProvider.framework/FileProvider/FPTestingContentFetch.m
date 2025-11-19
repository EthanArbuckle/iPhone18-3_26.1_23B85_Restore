@interface FPTestingContentFetch
- (FPTestingContentFetch)initWithCoder:(id)a3;
- (FPTestingContentFetch)initWithOperationIdentifier:(id)a3 itemIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPTestingContentFetch

- (FPTestingContentFetch)initWithOperationIdentifier:(id)a3 itemIdentifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FPTestingContentFetch;
  v8 = [(FPTestingOperation *)&v11 initWithOperationIdentifier:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_itemIdentifier, a4);
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FPTestingContentFetch;
  v4 = a3;
  [(FPTestingOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_itemIdentifier forKey:{@"_itemIdentifier", v5.receiver, v5.super_class}];
}

- (FPTestingContentFetch)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FPTestingContentFetch;
  v5 = [(FPTestingOperation *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;
  }

  return v5;
}

@end