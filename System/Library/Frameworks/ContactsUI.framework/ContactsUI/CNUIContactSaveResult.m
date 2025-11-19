@interface CNUIContactSaveResult
- (CNUIContactSaveResult)initWithSuccess:(BOOL)a3 contact:(id)a4 identifiersOfIssuedSaveRequests:(id)a5;
@end

@implementation CNUIContactSaveResult

- (CNUIContactSaveResult)initWithSuccess:(BOOL)a3 contact:(id)a4 identifiersOfIssuedSaveRequests:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = CNUIContactSaveResult;
  v11 = [(CNUIContactSaveResult *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_success = a3;
    objc_storeStrong(&v11->_contact, a4);
    objc_storeStrong(&v12->_identifiersOfIssuedSaveRequests, a5);
    v13 = v12;
  }

  return v12;
}

@end