@interface CNUIGroupsAndContainersContactsSaveResult
- (CNUIGroupsAndContainersContactsSaveResult)initWithSuccess:(BOOL)success error:(id)error addedContacts:(id)contacts;
@end

@implementation CNUIGroupsAndContainersContactsSaveResult

- (CNUIGroupsAndContainersContactsSaveResult)initWithSuccess:(BOOL)success error:(id)error addedContacts:(id)contacts
{
  errorCopy = error;
  contactsCopy = contacts;
  v14.receiver = self;
  v14.super_class = CNUIGroupsAndContainersContactsSaveResult;
  v11 = [(CNUIGroupsAndContainersContactsSaveResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_saveDidSucceed = success;
    objc_storeStrong(&v11->_error, error);
    objc_storeStrong(&v12->_addedContacts, contacts);
  }

  return v12;
}

@end