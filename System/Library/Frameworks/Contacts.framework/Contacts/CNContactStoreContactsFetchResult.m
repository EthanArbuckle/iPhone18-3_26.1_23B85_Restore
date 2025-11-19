@interface CNContactStoreContactsFetchResult
- (CNContactStoreContactsFetchResult)initWithContacts:(id)a3;
@end

@implementation CNContactStoreContactsFetchResult

- (CNContactStoreContactsFetchResult)initWithContacts:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNContactStoreContactsFetchResult;
  v5 = [(CNContactStoreContactsFetchResult *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    value = v5->_value;
    v5->_value = v6;

    v8 = v5;
  }

  return v5;
}

@end