@interface CNContactSection
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CNContactSection

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E69966B0];
  title = self->_title;
  identifier = self->_identifier;
  v6 = NSStringFromRange(self->_range);
  v7 = [v3 descriptionForObject:self withNamesAndObjects:{@"title", title, @"identifier", identifier, @"range", v6, 0}];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  title = [(CNContactSection *)self title];
  [v4 setTitle:title];

  range = [(CNContactSection *)self range];
  [v4 setRange:{range, v7}];
  identifier = [(CNContactSection *)self identifier];
  [v4 setIdentifier:identifier];

  sortKey = [(CNContactSection *)self sortKey];
  [v4 setSortKey:sortKey];

  return v4;
}

@end