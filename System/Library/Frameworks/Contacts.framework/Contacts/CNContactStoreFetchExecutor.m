@interface CNContactStoreFetchExecutor
- (CNContactStoreFetchExecutor)init;
- (CNContactStoreFetchExecutor)initWithContactStore:(id)a3;
- (id)countForFetchRequest:(id)a3;
- (id)executeFetchRequest:(id)a3;
- (void)visitChangeHistoryFetchRequest:(id)a3;
- (void)visitContactFetchRequest:(id)a3;
@end

@implementation CNContactStoreFetchExecutor

- (CNContactStoreFetchExecutor)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNContactStoreFetchExecutor)initWithContactStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CNContactStoreFetchExecutor;
  v6 = [(CNContactStoreFetchExecutor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v8 = v7->_result;
    v7->_result = 0;

    v9 = v7;
  }

  return v7;
}

- (id)executeFetchRequest:(id)a3
{
  [a3 acceptVisitor:self];
  v5 = [(CNContactStoreFetchExecutor *)self result];
  if (!v5)
  {
    v6 = MEMORY[0x1E6996810];
    v7 = [(CNContactStoreFetchExecutor *)self store];
    v8 = [CNErrorFactory errorObject:v7 doesNotImplementSelector:a2];
    v5 = [v6 failureWithError:v8];
  }

  return v5;
}

- (id)countForFetchRequest:(id)a3
{
  [a3 acceptVisitor:self];
  v5 = [(CNContactStoreFetchExecutor *)self result];
  if (!v5)
  {
    v6 = MEMORY[0x1E6996810];
    v7 = [(CNContactStoreFetchExecutor *)self store];
    v8 = [CNErrorFactory errorObject:v7 doesNotImplementSelector:a2];
    v5 = [v6 failureWithError:v8];
  }

  return v5;
}

- (void)visitContactFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [[CNAPITriageSession alloc] initWithRequest:v4];
  [(CNAPITriageSession *)v5 open];
  v6 = [CNContactFetchExecutor alloc];
  v7 = [(CNContactStoreFetchExecutor *)self store];
  v8 = [(CNContactFetchExecutor *)v6 initWithRequest:v4 store:v7];

  v14 = 0;
  v9 = [(CNContactFetchExecutor *)v8 run:&v14];
  v10 = v14;
  v11 = [MEMORY[0x1E6996810] resultWithValue:v9 orError:v10];
  result = self->_result;
  self->_result = v11;

  v13 = [v9 value];
  [(CNAPITriageSession *)v5 closeWithContacts:v13 orError:v10];
}

- (void)visitChangeHistoryFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [CNChangeHistoryFetchExecutor alloc];
  v6 = [(CNContactStoreFetchExecutor *)self store];
  v7 = [(CNChangeHistoryFetchExecutor *)v5 initWithRequest:v4 store:v6];

  v12 = 0;
  v8 = [(CNChangeHistoryFetchExecutor *)v7 run:&v12];
  v9 = v12;
  v10 = [MEMORY[0x1E6996810] resultWithValue:v8 orError:v9];
  result = self->_result;
  self->_result = v10;
}

@end