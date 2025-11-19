@interface CNContactPosterDataUnifiedContactExpandingDecorator
- (BOOL)executeCreateRequest:(id)a3 error:(id *)a4;
- (BOOL)executeDeleteRequest:(id)a3 error:(id *)a4;
- (BOOL)executeUpdateRequest:(id)a3 error:(id *)a4;
- (CNContactPosterDataUnifiedContactExpandingDecorator)initWithPosterDataStore:(id)a3;
- (CNContactPosterDataUnifiedContactExpandingDecorator)initWithPosterDataStore:(id)a3 contactStore:(id)a4;
- (CNContactPosterDataUnifiedContactExpandingDecorator)initWithPosterDataStore:(id)a3 identifierExpander:(id)a4;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
- (int64_t)countForFetchRequest:(id)a3 error:(id *)a4;
@end

@implementation CNContactPosterDataUnifiedContactExpandingDecorator

- (CNContactPosterDataUnifiedContactExpandingDecorator)initWithPosterDataStore:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNRefetchingContactIdentifierExpander);
  v6 = [(CNContactPosterDataUnifiedContactExpandingDecorator *)self initWithPosterDataStore:v4 identifierExpander:v5];

  return v6;
}

- (CNContactPosterDataUnifiedContactExpandingDecorator)initWithPosterDataStore:(id)a3 contactStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CNRefetchingContactIdentifierExpander alloc] initWithContactStore:v6];

  v9 = [(CNContactPosterDataUnifiedContactExpandingDecorator *)self initWithPosterDataStore:v7 identifierExpander:v8];
  return v9;
}

- (CNContactPosterDataUnifiedContactExpandingDecorator)initWithPosterDataStore:(id)a3 identifierExpander:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CNContactPosterDataUnifiedContactExpandingDecorator;
  v9 = [(CNContactPosterDataUnifiedContactExpandingDecorator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, a3);
    objc_storeStrong(&v10->_expander, a4);
    v11 = [[_RequestRewriter alloc] initWithExpander:v8];
    requestRewriter = v10->_requestRewriter;
    v10->_requestRewriter = v11;

    v13 = v10;
  }

  return v10;
}

- (id)executeFetchRequest:(id)a3 error:(id *)a4
{
  v6 = [(_RequestRewriter *)self->_requestRewriter rewriteFetchRequest:a3];
  v7 = [(CNContactPosterDataStore *)self->_store executeFetchRequest:v6 error:a4];

  return v7;
}

- (int64_t)countForFetchRequest:(id)a3 error:(id *)a4
{
  v6 = [(_RequestRewriter *)self->_requestRewriter rewriteFetchRequest:a3];
  v7 = [(CNContactPosterDataStore *)self->_store countForFetchRequest:v6 error:a4];

  return v7;
}

- (BOOL)executeCreateRequest:(id)a3 error:(id *)a4
{
  v6 = [(_RequestRewriter *)self->_requestRewriter rewriteCreateRequest:a3];
  LOBYTE(a4) = [(CNContactPosterDataStore *)self->_store executeCreateRequest:v6 error:a4];

  return a4;
}

- (BOOL)executeDeleteRequest:(id)a3 error:(id *)a4
{
  v6 = [(_RequestRewriter *)self->_requestRewriter rewriteDeleteRequest:a3];
  LOBYTE(a4) = [(CNContactPosterDataStore *)self->_store executeDeleteRequest:v6 error:a4];

  return a4;
}

- (BOOL)executeUpdateRequest:(id)a3 error:(id *)a4
{
  v6 = [(_RequestRewriter *)self->_requestRewriter rewriteUpdateRequest:a3];
  LOBYTE(a4) = [(CNContactPosterDataStore *)self->_store executeUpdateRequest:v6 error:a4];

  return a4;
}

@end