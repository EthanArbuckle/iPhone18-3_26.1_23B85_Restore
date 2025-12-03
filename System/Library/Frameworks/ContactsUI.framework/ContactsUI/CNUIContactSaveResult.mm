@interface CNUIContactSaveResult
- (CNUIContactSaveResult)initWithSuccess:(BOOL)success contact:(id)contact identifiersOfIssuedSaveRequests:(id)requests;
@end

@implementation CNUIContactSaveResult

- (CNUIContactSaveResult)initWithSuccess:(BOOL)success contact:(id)contact identifiersOfIssuedSaveRequests:(id)requests
{
  contactCopy = contact;
  requestsCopy = requests;
  v15.receiver = self;
  v15.super_class = CNUIContactSaveResult;
  v11 = [(CNUIContactSaveResult *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_success = success;
    objc_storeStrong(&v11->_contact, contact);
    objc_storeStrong(&v12->_identifiersOfIssuedSaveRequests, requests);
    v13 = v12;
  }

  return v12;
}

@end