@interface ASDPurchaseHistoryQuerySortOption
- (ASDPurchaseHistoryQuerySortOption)initWithCoder:(id)a3;
- (ASDPurchaseHistoryQuerySortOption)initWithName:(id)a3 ascending:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDPurchaseHistoryQuerySortOption

- (ASDPurchaseHistoryQuerySortOption)initWithName:(id)a3 ascending:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ASDPurchaseHistoryQuerySortOption;
  v7 = [(ASDPurchaseHistoryQuerySortOption *)&v11 init];
  v9 = v7;
  if (v7)
  {
    objc_setProperty_atomic_copy(v7, v8, v6, 16);
    v9->_ascending = a4;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"A"];
  [v5 encodeBool:self->_ascending forKey:@"B"];
}

- (ASDPurchaseHistoryQuerySortOption)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDPurchaseHistoryQuerySortOption;
  v5 = [(ASDPurchaseHistoryQuerySortOption *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    name = v5->_name;
    v5->_name = v6;

    v5->_ascending = [v4 decodeBoolForKey:@"B"];
  }

  return v5;
}

@end