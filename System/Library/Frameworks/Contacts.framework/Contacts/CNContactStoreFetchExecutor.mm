@interface CNContactStoreFetchExecutor
- (CNContactStoreFetchExecutor)init;
- (CNContactStoreFetchExecutor)initWithContactStore:(id)store;
- (id)countForFetchRequest:(id)request;
- (id)executeFetchRequest:(id)request;
- (void)visitChangeHistoryFetchRequest:(id)request;
- (void)visitContactFetchRequest:(id)request;
@end

@implementation CNContactStoreFetchExecutor

- (CNContactStoreFetchExecutor)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNContactStoreFetchExecutor)initWithContactStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = CNContactStoreFetchExecutor;
  v6 = [(CNContactStoreFetchExecutor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v8 = v7->_result;
    v7->_result = 0;

    v9 = v7;
  }

  return v7;
}

- (id)executeFetchRequest:(id)request
{
  [request acceptVisitor:self];
  result = [(CNContactStoreFetchExecutor *)self result];
  if (!result)
  {
    v6 = MEMORY[0x1E6996810];
    store = [(CNContactStoreFetchExecutor *)self store];
    v8 = [CNErrorFactory errorObject:store doesNotImplementSelector:a2];
    result = [v6 failureWithError:v8];
  }

  return result;
}

- (id)countForFetchRequest:(id)request
{
  [request acceptVisitor:self];
  result = [(CNContactStoreFetchExecutor *)self result];
  if (!result)
  {
    v6 = MEMORY[0x1E6996810];
    store = [(CNContactStoreFetchExecutor *)self store];
    v8 = [CNErrorFactory errorObject:store doesNotImplementSelector:a2];
    result = [v6 failureWithError:v8];
  }

  return result;
}

- (void)visitContactFetchRequest:(id)request
{
  requestCopy = request;
  v5 = [[CNAPITriageSession alloc] initWithRequest:requestCopy];
  [(CNAPITriageSession *)v5 open];
  v6 = [CNContactFetchExecutor alloc];
  store = [(CNContactStoreFetchExecutor *)self store];
  v8 = [(CNContactFetchExecutor *)v6 initWithRequest:requestCopy store:store];

  v14 = 0;
  v9 = [(CNContactFetchExecutor *)v8 run:&v14];
  v10 = v14;
  v11 = [MEMORY[0x1E6996810] resultWithValue:v9 orError:v10];
  result = self->_result;
  self->_result = v11;

  value = [v9 value];
  [(CNAPITriageSession *)v5 closeWithContacts:value orError:v10];
}

- (void)visitChangeHistoryFetchRequest:(id)request
{
  requestCopy = request;
  v5 = [CNChangeHistoryFetchExecutor alloc];
  store = [(CNContactStoreFetchExecutor *)self store];
  v7 = [(CNChangeHistoryFetchExecutor *)v5 initWithRequest:requestCopy store:store];

  v12 = 0;
  v8 = [(CNChangeHistoryFetchExecutor *)v7 run:&v12];
  v9 = v12;
  v10 = [MEMORY[0x1E6996810] resultWithValue:v8 orError:v9];
  result = self->_result;
  self->_result = v10;
}

@end