@interface CPInformationItem
- (CPInformationItem)initWithCoder:(id)coder;
- (CPInformationItem)initWithTitle:(NSString *)title detail:(NSString *)detail;
- (id)_init;
- (void)encodeWithCoder:(id)coder;
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

- (CPInformationItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(CPInformationItem *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPInformationItemTitleKey"];
    title = _init->_title;
    _init->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPInformationItemDetailKey"];
    detail = _init->_detail;
    _init->_detail = v8;
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(CPInformationItem *)self title];
  [coderCopy encodeObject:title forKey:@"kCPInformationItemTitleKey"];

  detail = [(CPInformationItem *)self detail];
  [coderCopy encodeObject:detail forKey:@"kCPInformationItemDetailKey"];
}

@end