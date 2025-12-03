@interface BCCacheOperation
+ (id)operationWithKind:(unsigned __int16)kind subject:(id)subject request:(id)request;
+ (id)operationWithKind:(unsigned __int16)kind subject:(id)subject result:(id)result request:(id)request;
+ (id)operationWithKind:(unsigned __int16)kind vendedImageInterest:(id)interest request:(id)request;
+ (id)operationWithKind:(unsigned __int16)kind vendedImageInterest:(id)interest subject:(id)subject request:(id)request;
- (id)description;
- (id)descriptionForKind;
@end

@implementation BCCacheOperation

+ (id)operationWithKind:(unsigned __int16)kind vendedImageInterest:(id)interest subject:(id)subject request:(id)request
{
  kindCopy = kind;
  requestCopy = request;
  subjectCopy = subject;
  interestCopy = interest;
  v12 = objc_alloc_init(BCCacheOperation);
  [(BCCacheOperation *)v12 setOperationKind:kindCopy];
  [(BCCacheOperation *)v12 setVendedImageInterest:interestCopy];

  [(BCCacheOperation *)v12 setRequest:requestCopy];
  [(BCCacheOperation *)v12 setSubject:subjectCopy];

  return v12;
}

+ (id)operationWithKind:(unsigned __int16)kind vendedImageInterest:(id)interest request:(id)request
{
  kindCopy = kind;
  requestCopy = request;
  interestCopy = interest;
  v9 = objc_alloc_init(BCCacheOperation);
  [(BCCacheOperation *)v9 setOperationKind:kindCopy];
  [(BCCacheOperation *)v9 setVendedImageInterest:interestCopy];

  [(BCCacheOperation *)v9 setRequest:requestCopy];

  return v9;
}

+ (id)operationWithKind:(unsigned __int16)kind subject:(id)subject request:(id)request
{
  kindCopy = kind;
  requestCopy = request;
  subjectCopy = subject;
  v9 = objc_alloc_init(BCCacheOperation);
  [(BCCacheOperation *)v9 setOperationKind:kindCopy];
  [(BCCacheOperation *)v9 setRequest:requestCopy];

  [(BCCacheOperation *)v9 setSubject:subjectCopy];

  return v9;
}

+ (id)operationWithKind:(unsigned __int16)kind subject:(id)subject result:(id)result request:(id)request
{
  kindCopy = kind;
  requestCopy = request;
  resultCopy = result;
  subjectCopy = subject;
  v12 = objc_alloc_init(BCCacheOperation);
  [(BCCacheOperation *)v12 setOperationKind:kindCopy];
  [(BCCacheOperation *)v12 setRequest:requestCopy];

  [(BCCacheOperation *)v12 setSubject:subjectCopy];
  [(BCCacheOperation *)v12 setResult:resultCopy];

  return v12;
}

- (id)description
{
  descriptionForKind = [(BCCacheOperation *)self descriptionForKind];
  v3 = [NSString stringWithFormat:@"Op: %@", descriptionForKind];

  return v3;
}

- (id)descriptionForKind
{
  operationKind = [(BCCacheOperation *)self operationKind];
  if (operationKind > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_2CE1E8 + operationKind);
  }
}

@end