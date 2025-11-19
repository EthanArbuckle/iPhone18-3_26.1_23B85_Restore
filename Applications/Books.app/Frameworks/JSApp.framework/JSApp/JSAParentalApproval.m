@interface JSAParentalApproval
+ (void)approveCurrentRequest;
+ (void)approveInPerson:(id)a3 :(id)a4;
+ (void)declineCurrentRequest;
@end

@implementation JSAParentalApproval

+ (void)approveInPerson:(id)a3 :(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = a4;
    a4 = [JSManagedValue managedValueWithValue:v7 andOwner:a1];
    v8 = [v7 context];

    v9 = [v8 virtualMachine];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 stringValue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_52AC;
  v14[3] = &unk_B22F8;
  v15 = a4;
  v16 = v6;
  v17 = v9;
  v18 = a1;
  v11 = v9;
  v12 = v6;
  v13 = a4;
  [APRequestHandler localApproveRequestWithItemIdentifier:v10 completion:v14];
}

+ (void)approveCurrentRequest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"kJSAParentalApprovalApprovedRequestNotificationName" object:a1];
}

+ (void)declineCurrentRequest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"kJSAParentalApprovalDeclinedRequestNotificationName" object:a1];
}

@end