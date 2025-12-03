@interface ASDPurchaseHistoryQuerySortOption
- (ASDPurchaseHistoryQuerySortOption)initWithCoder:(id)coder;
- (ASDPurchaseHistoryQuerySortOption)initWithName:(id)name ascending:(BOOL)ascending;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDPurchaseHistoryQuerySortOption

- (ASDPurchaseHistoryQuerySortOption)initWithName:(id)name ascending:(BOOL)ascending
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = ASDPurchaseHistoryQuerySortOption;
  v7 = [(ASDPurchaseHistoryQuerySortOption *)&v11 init];
  v9 = v7;
  if (v7)
  {
    objc_setProperty_atomic_copy(v7, v8, nameCopy, 16);
    v9->_ascending = ascending;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"A"];
  [coderCopy encodeBool:self->_ascending forKey:@"B"];
}

- (ASDPurchaseHistoryQuerySortOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ASDPurchaseHistoryQuerySortOption;
  v5 = [(ASDPurchaseHistoryQuerySortOption *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    name = v5->_name;
    v5->_name = v6;

    v5->_ascending = [coderCopy decodeBoolForKey:@"B"];
  }

  return v5;
}

@end