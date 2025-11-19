@interface BCCacheOperation
+ (id)operationWithKind:(unsigned __int16)a3 subject:(id)a4 request:(id)a5;
+ (id)operationWithKind:(unsigned __int16)a3 subject:(id)a4 result:(id)a5 request:(id)a6;
+ (id)operationWithKind:(unsigned __int16)a3 vendedImageInterest:(id)a4 request:(id)a5;
+ (id)operationWithKind:(unsigned __int16)a3 vendedImageInterest:(id)a4 subject:(id)a5 request:(id)a6;
- (id)description;
- (id)descriptionForKind;
@end

@implementation BCCacheOperation

+ (id)operationWithKind:(unsigned __int16)a3 vendedImageInterest:(id)a4 subject:(id)a5 request:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = objc_alloc_init(BCCacheOperation);
  [(BCCacheOperation *)v12 setOperationKind:v8];
  [(BCCacheOperation *)v12 setVendedImageInterest:v11];

  [(BCCacheOperation *)v12 setRequest:v9];
  [(BCCacheOperation *)v12 setSubject:v10];

  return v12;
}

+ (id)operationWithKind:(unsigned __int16)a3 vendedImageInterest:(id)a4 request:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = a4;
  v9 = objc_alloc_init(BCCacheOperation);
  [(BCCacheOperation *)v9 setOperationKind:v6];
  [(BCCacheOperation *)v9 setVendedImageInterest:v8];

  [(BCCacheOperation *)v9 setRequest:v7];

  return v9;
}

+ (id)operationWithKind:(unsigned __int16)a3 subject:(id)a4 request:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = a4;
  v9 = objc_alloc_init(BCCacheOperation);
  [(BCCacheOperation *)v9 setOperationKind:v6];
  [(BCCacheOperation *)v9 setRequest:v7];

  [(BCCacheOperation *)v9 setSubject:v8];

  return v9;
}

+ (id)operationWithKind:(unsigned __int16)a3 subject:(id)a4 result:(id)a5 request:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = objc_alloc_init(BCCacheOperation);
  [(BCCacheOperation *)v12 setOperationKind:v8];
  [(BCCacheOperation *)v12 setRequest:v9];

  [(BCCacheOperation *)v12 setSubject:v11];
  [(BCCacheOperation *)v12 setResult:v10];

  return v12;
}

- (id)description
{
  v2 = [(BCCacheOperation *)self descriptionForKind];
  v3 = [NSString stringWithFormat:@"Op: %@", v2];

  return v3;
}

- (id)descriptionForKind
{
  v2 = [(BCCacheOperation *)self operationKind];
  if (v2 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_2CE1E8 + v2);
  }
}

@end