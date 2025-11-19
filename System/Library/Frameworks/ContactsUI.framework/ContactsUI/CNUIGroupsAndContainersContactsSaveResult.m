@interface CNUIGroupsAndContainersContactsSaveResult
- (CNUIGroupsAndContainersContactsSaveResult)initWithSuccess:(BOOL)a3 error:(id)a4 addedContacts:(id)a5;
@end

@implementation CNUIGroupsAndContainersContactsSaveResult

- (CNUIGroupsAndContainersContactsSaveResult)initWithSuccess:(BOOL)a3 error:(id)a4 addedContacts:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CNUIGroupsAndContainersContactsSaveResult;
  v11 = [(CNUIGroupsAndContainersContactsSaveResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_saveDidSucceed = a3;
    objc_storeStrong(&v11->_error, a4);
    objc_storeStrong(&v12->_addedContacts, a5);
  }

  return v12;
}

@end