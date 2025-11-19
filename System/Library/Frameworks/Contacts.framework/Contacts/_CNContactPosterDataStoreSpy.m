@interface _CNContactPosterDataStoreSpy
- (BOOL)executeCreateRequest:(id)a3 error:(id *)a4;
- (BOOL)executeDeleteRequest:(id)a3 error:(id *)a4;
- (_CNContactPosterDataStoreSpy)initWithStore:(id)a3;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
- (int64_t)countForFetchRequest:(id)a3 error:(id *)a4;
@end

@implementation _CNContactPosterDataStoreSpy

- (_CNContactPosterDataStoreSpy)initWithStore:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = _CNContactPosterDataStoreSpy;
  v6 = [(_CNContactPosterDataStoreSpy *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
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

- (id)executeFetchRequest:(id)a3 error:(id *)a4
{
  fetchRequests = self->_fetchRequests;
  v7 = a3;
  [(NSMutableArray *)fetchRequests addObject:v7];
  v8 = [(CNContactPosterDataStore *)self->_store executeFetchRequest:v7 error:a4];

  return v8;
}

- (int64_t)countForFetchRequest:(id)a3 error:(id *)a4
{
  countRequests = self->_countRequests;
  v7 = a3;
  [(NSMutableArray *)countRequests addObject:v7];
  v8 = [(CNContactPosterDataStore *)self->_store countForFetchRequest:v7 error:a4];

  return v8;
}

- (BOOL)executeCreateRequest:(id)a3 error:(id *)a4
{
  createRequests = self->_createRequests;
  v7 = a3;
  [(NSMutableArray *)createRequests addObject:v7];
  LOBYTE(a4) = [(CNContactPosterDataStore *)self->_store executeCreateRequest:v7 error:a4];

  return a4;
}

- (BOOL)executeDeleteRequest:(id)a3 error:(id *)a4
{
  deleteRequests = self->_deleteRequests;
  v7 = a3;
  [(NSMutableArray *)deleteRequests addObject:v7];
  LOBYTE(a4) = [(CNContactPosterDataStore *)self->_store executeDeleteRequest:v7 error:a4];

  return a4;
}

@end