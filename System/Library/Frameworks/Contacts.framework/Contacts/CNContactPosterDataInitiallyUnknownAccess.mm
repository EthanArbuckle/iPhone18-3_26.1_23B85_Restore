@interface CNContactPosterDataInitiallyUnknownAccess
- (BOOL)executeCreateRequest:(id)request error:(id *)error;
- (BOOL)executeDeleteRequest:(id)request error:(id *)error;
- (BOOL)executeUpdateRequest:(id)request error:(id *)error;
- (id)currentImpl;
- (id)executeFetchRequest:(id)request error:(id *)error;
- (id)failImpl;
- (id)remoteImpl;
- (int64_t)countForFetchRequest:(id)request error:(id *)error;
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
  accessPreflight = [v3 accessPreflight];

  v5 = 8;
  if (!accessPreflight)
  {
    v5 = 16;
  }

  v6 = *(&self->super.isa + v5);

  return v6;
}

- (id)executeFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  currentImpl = [(CNContactPosterDataInitiallyUnknownAccess *)self currentImpl];
  v8 = [currentImpl executeFetchRequest:requestCopy error:error];

  return v8;
}

- (int64_t)countForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  currentImpl = [(CNContactPosterDataInitiallyUnknownAccess *)self currentImpl];
  v8 = [currentImpl countForFetchRequest:requestCopy error:error];

  return v8;
}

- (BOOL)executeCreateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  currentImpl = [(CNContactPosterDataInitiallyUnknownAccess *)self currentImpl];
  LOBYTE(error) = [currentImpl executeCreateRequest:requestCopy error:error];

  return error;
}

- (BOOL)executeUpdateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  currentImpl = [(CNContactPosterDataInitiallyUnknownAccess *)self currentImpl];
  LOBYTE(error) = [currentImpl executeUpdateRequest:requestCopy error:error];

  return error;
}

- (BOOL)executeDeleteRequest:(id)request error:(id *)error
{
  requestCopy = request;
  currentImpl = [(CNContactPosterDataInitiallyUnknownAccess *)self currentImpl];
  LOBYTE(error) = [currentImpl executeDeleteRequest:requestCopy error:error];

  return error;
}

@end