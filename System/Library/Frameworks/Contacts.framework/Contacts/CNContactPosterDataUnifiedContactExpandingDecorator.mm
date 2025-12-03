@interface CNContactPosterDataUnifiedContactExpandingDecorator
- (BOOL)executeCreateRequest:(id)request error:(id *)error;
- (BOOL)executeDeleteRequest:(id)request error:(id *)error;
- (BOOL)executeUpdateRequest:(id)request error:(id *)error;
- (CNContactPosterDataUnifiedContactExpandingDecorator)initWithPosterDataStore:(id)store;
- (CNContactPosterDataUnifiedContactExpandingDecorator)initWithPosterDataStore:(id)store contactStore:(id)contactStore;
- (CNContactPosterDataUnifiedContactExpandingDecorator)initWithPosterDataStore:(id)store identifierExpander:(id)expander;
- (id)executeFetchRequest:(id)request error:(id *)error;
- (int64_t)countForFetchRequest:(id)request error:(id *)error;
@end

@implementation CNContactPosterDataUnifiedContactExpandingDecorator

- (CNContactPosterDataUnifiedContactExpandingDecorator)initWithPosterDataStore:(id)store
{
  storeCopy = store;
  v5 = objc_alloc_init(CNRefetchingContactIdentifierExpander);
  v6 = [(CNContactPosterDataUnifiedContactExpandingDecorator *)self initWithPosterDataStore:storeCopy identifierExpander:v5];

  return v6;
}

- (CNContactPosterDataUnifiedContactExpandingDecorator)initWithPosterDataStore:(id)store contactStore:(id)contactStore
{
  contactStoreCopy = contactStore;
  storeCopy = store;
  v8 = [[CNRefetchingContactIdentifierExpander alloc] initWithContactStore:contactStoreCopy];

  v9 = [(CNContactPosterDataUnifiedContactExpandingDecorator *)self initWithPosterDataStore:storeCopy identifierExpander:v8];
  return v9;
}

- (CNContactPosterDataUnifiedContactExpandingDecorator)initWithPosterDataStore:(id)store identifierExpander:(id)expander
{
  storeCopy = store;
  expanderCopy = expander;
  v15.receiver = self;
  v15.super_class = CNContactPosterDataUnifiedContactExpandingDecorator;
  v9 = [(CNContactPosterDataUnifiedContactExpandingDecorator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    objc_storeStrong(&v10->_expander, expander);
    v11 = [[_RequestRewriter alloc] initWithExpander:expanderCopy];
    requestRewriter = v10->_requestRewriter;
    v10->_requestRewriter = v11;

    v13 = v10;
  }

  return v10;
}

- (id)executeFetchRequest:(id)request error:(id *)error
{
  v6 = [(_RequestRewriter *)self->_requestRewriter rewriteFetchRequest:request];
  v7 = [(CNContactPosterDataStore *)self->_store executeFetchRequest:v6 error:error];

  return v7;
}

- (int64_t)countForFetchRequest:(id)request error:(id *)error
{
  v6 = [(_RequestRewriter *)self->_requestRewriter rewriteFetchRequest:request];
  v7 = [(CNContactPosterDataStore *)self->_store countForFetchRequest:v6 error:error];

  return v7;
}

- (BOOL)executeCreateRequest:(id)request error:(id *)error
{
  v6 = [(_RequestRewriter *)self->_requestRewriter rewriteCreateRequest:request];
  LOBYTE(error) = [(CNContactPosterDataStore *)self->_store executeCreateRequest:v6 error:error];

  return error;
}

- (BOOL)executeDeleteRequest:(id)request error:(id *)error
{
  v6 = [(_RequestRewriter *)self->_requestRewriter rewriteDeleteRequest:request];
  LOBYTE(error) = [(CNContactPosterDataStore *)self->_store executeDeleteRequest:v6 error:error];

  return error;
}

- (BOOL)executeUpdateRequest:(id)request error:(id *)error
{
  v6 = [(_RequestRewriter *)self->_requestRewriter rewriteUpdateRequest:request];
  LOBYTE(error) = [(CNContactPosterDataStore *)self->_store executeUpdateRequest:v6 error:error];

  return error;
}

@end