@interface CNContactPosterDataInitiallyUnknownAccess
- (BOOL)executeCreateRequest:(id)a3 error:(id *)a4;
- (BOOL)executeDeleteRequest:(id)a3 error:(id *)a4;
- (BOOL)executeUpdateRequest:(id)a3 error:(id *)a4;
- (id)currentImpl;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
- (id)failImpl;
- (id)remoteImpl;
- (int64_t)countForFetchRequest:(id)a3 error:(id *)a4;
@end

@implementation CNContactPosterDataInitiallyUnknownAccess

- (id)failImpl
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __53__CNContactPosterDataInitiallyUnknownAccess_failImpl__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = objc_alloc_init(CNContactPosterDataFailAccess);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(*(a1 + 32) + 8);
  }

  return v2;
}

- (id)remoteImpl
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __55__CNContactPosterDataInitiallyUnknownAccess_remoteImpl__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(CNContactPosterDataXPCAccess);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  return v2;
}

- (id)currentImpl
{
  v3 = +[CNTCC sharedInstance];
  v4 = [v3 accessPreflight];

  v5 = 8;
  if (!v4)
  {
    v5 = 16;
  }

  v6 = *(&self->super.isa + v5);

  return v6;
}

- (id)executeFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNContactPosterDataInitiallyUnknownAccess *)self currentImpl];
  v8 = [v7 executeFetchRequest:v6 error:a4];

  return v8;
}

- (int64_t)countForFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNContactPosterDataInitiallyUnknownAccess *)self currentImpl];
  v8 = [v7 countForFetchRequest:v6 error:a4];

  return v8;
}

- (BOOL)executeCreateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNContactPosterDataInitiallyUnknownAccess *)self currentImpl];
  LOBYTE(a4) = [v7 executeCreateRequest:v6 error:a4];

  return a4;
}

- (BOOL)executeUpdateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNContactPosterDataInitiallyUnknownAccess *)self currentImpl];
  LOBYTE(a4) = [v7 executeUpdateRequest:v6 error:a4];

  return a4;
}

- (BOOL)executeDeleteRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNContactPosterDataInitiallyUnknownAccess *)self currentImpl];
  LOBYTE(a4) = [v7 executeDeleteRequest:v6 error:a4];

  return a4;
}

@end