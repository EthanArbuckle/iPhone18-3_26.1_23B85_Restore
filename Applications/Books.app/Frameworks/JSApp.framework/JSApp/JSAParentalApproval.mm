@interface JSAParentalApproval
+ (void)approveCurrentRequest;
+ (void)approveInPerson:(id)person :(id)a4;
+ (void)declineCurrentRequest;
@end

@implementation JSAParentalApproval

+ (void)approveInPerson:(id)person :(id)a4
{
  personCopy = person;
  if (a4)
  {
    v7 = a4;
    a4 = [JSManagedValue managedValueWithValue:v7 andOwner:self];
    context = [v7 context];

    virtualMachine = [context virtualMachine];
  }

  else
  {
    virtualMachine = 0;
  }

  stringValue = [personCopy stringValue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_52AC;
  v14[3] = &unk_B22F8;
  v15 = a4;
  v16 = personCopy;
  v17 = virtualMachine;
  selfCopy = self;
  v11 = virtualMachine;
  v12 = personCopy;
  v13 = a4;
  [APRequestHandler localApproveRequestWithItemIdentifier:stringValue completion:v14];
}

+ (void)approveCurrentRequest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"kJSAParentalApprovalApprovedRequestNotificationName" object:self];
}

+ (void)declineCurrentRequest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"kJSAParentalApprovalDeclinedRequestNotificationName" object:self];
}

@end