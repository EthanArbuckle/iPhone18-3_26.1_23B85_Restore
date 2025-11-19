@interface MFContactsSearchOperation
+ (id)operationWithOwner:(id)a3 text:(id)a4 taskID:(id)a5;
@end

@implementation MFContactsSearchOperation

+ (id)operationWithOwner:(id)a3 text:(id)a4 taskID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(a1);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 31, a3);
    objc_storeStrong(v13 + 32, a5);
    v14 = [v10 copy];
    v15 = v13[33];
    v13[33] = v14;

    v16 = [v9 sendingAddress];
    v17 = v13[34];
    v13[34] = v16;
  }

  return v13;
}

@end