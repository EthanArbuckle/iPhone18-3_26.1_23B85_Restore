@interface CNContactStoreContactsFetchResult
- (CNContactStoreContactsFetchResult)initWithContacts:(id)contacts;
@end

@implementation CNContactStoreContactsFetchResult

- (CNContactStoreContactsFetchResult)initWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v10.receiver = self;
  v10.super_class = CNContactStoreContactsFetchResult;
  v5 = [(CNContactStoreContactsFetchResult *)&v10 init];
  if (v5)
  {
    v6 = [contactsCopy copy];
    value = v5->_value;
    v5->_value = v6;

    v8 = v5;
  }

  return v5;
}

@end