@interface _CNContactPosterDataStoreSpy
- (BOOL)executeCreateRequest:(id)request error:(id *)error;
- (BOOL)executeDeleteRequest:(id)request error:(id *)error;
- (_CNContactPosterDataStoreSpy)initWithStore:(id)store;
- (id)executeFetchRequest:(id)request error:(id *)error;
- (int64_t)countForFetchRequest:(id)request error:(id *)error;
@end

@implementation _CNContactPosterDataStoreSpy

- (_CNContactPosterDataStoreSpy)initWithStore:(id)store
{
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = _CNContactPosterDataStoreSpy;
  v6 = [(_CNContactPosterDataStoreSpy *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v8 = objc_opt_new();
    fetchRequests = v7->_fetchRequests;
    v7->_fetchRequests = v8;

    v10 = objc_opt_new();
    countRequests = v7->_countRequests;
    v7->_countRequests = v10;

    v12 = objc_opt_new();
    createRequests = v7->_createRequests;
    v7->_createRequests = v12;

    v14 = objc_opt_new();
    deleteRequests = v7->_deleteRequests;
    v7->_deleteRequests = v14;

    v16 = v7;
  }

  return v7;
}

- (id)executeFetchRequest:(id)request error:(id *)error
{
  fetchRequests = self->_fetchRequests;
  requestCopy = request;
  [(NSMutableArray *)fetchRequests addObject:requestCopy];
  v8 = [(CNContactPosterDataStore *)self->_store executeFetchRequest:requestCopy error:error];

  return v8;
}

- (int64_t)countForFetchRequest:(id)request error:(id *)error
{
  countRequests = self->_countRequests;
  requestCopy = request;
  [(NSMutableArray *)countRequests addObject:requestCopy];
  v8 = [(CNContactPosterDataStore *)self->_store countForFetchRequest:requestCopy error:error];

  return v8;
}

- (BOOL)executeCreateRequest:(id)request error:(id *)error
{
  createRequests = self->_createRequests;
  requestCopy = request;
  [(NSMutableArray *)createRequests addObject:requestCopy];
  LOBYTE(error) = [(CNContactPosterDataStore *)self->_store executeCreateRequest:requestCopy error:error];

  return error;
}

- (BOOL)executeDeleteRequest:(id)request error:(id *)error
{
  deleteRequests = self->_deleteRequests;
  requestCopy = request;
  [(NSMutableArray *)deleteRequests addObject:requestCopy];
  LOBYTE(error) = [(CNContactPosterDataStore *)self->_store executeDeleteRequest:requestCopy error:error];

  return error;
}

@end