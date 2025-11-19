@interface CPInformationItem
- (CPInformationItem)initWithCoder:(id)a3;
- (CPInformationItem)initWithTitle:(NSString *)title detail:(NSString *)detail;
- (id)_init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPInformationItem

- (CPInformationItem)initWithTitle:(NSString *)title detail:(NSString *)detail
{
  v6 = title;
  v7 = detail;
  v14.receiver = self;
  v14.super_class = CPInformationItem;
  v8 = [(CPInformationItem *)&v14 init];
  if (v8)
  {
    v9 = [(NSString *)v6 copy];
    v10 = v8->_title;
    v8->_title = v9;

    v11 = [(NSString *)v7 copy];
    v12 = v8->_detail;
    v8->_detail = v11;
  }

  return v8;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CPInformationItem;
  return [(CPInformationItem *)&v3 init];
}

- (CPInformationItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPInformationItem *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPInformationItemTitleKey"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPInformationItemDetailKey"];
    detail = v5->_detail;
    v5->_detail = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPInformationItem *)self title];
  [v4 encodeObject:v5 forKey:@"kCPInformationItemTitleKey"];

  v6 = [(CPInformationItem *)self detail];
  [v4 encodeObject:v6 forKey:@"kCPInformationItemDetailKey"];
}

@end