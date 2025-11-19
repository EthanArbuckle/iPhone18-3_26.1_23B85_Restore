@interface CNAPITriageSession
- (CNAPITriageSession)init;
- (CNAPITriageSession)initWithRequest:(id)a3;
- (CNAPITriageSession)initWithRequest:(id)a3 triageLogger:(id)a4 timeProvider:(id)a5;
- (id)normalizeCollectionOfContacts:(id)a3;
- (void)close;
- (void)closeWithContacts:(id)a3;
- (void)closeWithContacts:(id)a3 orError:(id)a4;
- (void)closeWithError:(id)a3;
- (void)closeWithResult:(id)a3;
- (void)open;
@end

@implementation CNAPITriageSession

- (void)open
{
  [(CNTimeProvider *)self->_timeProvider timestamp];
  self->_timeSessionBegan = v3;
  logger = self->_logger;
  request = self->_request;

  [(CNAPITriageLogger *)logger willExecuteFetchRequest:request];
}

- (void)close
{
  [(CNTimeProvider *)self->_timeProvider timestamp];
  self->_timeSessionEnded = v3;
  v4 = v3 - self->_timeSessionBegan;
  if (self->_hasClientCalloutTime)
  {
    v4 = v4 - self->_clientCalloutTime;
    [(CNAPITriageLogger *)self->_logger request:self->_request spentTimeInClientCode:?];
  }

  logger = self->_logger;
  request = self->_request;

  [(CNAPITriageLogger *)logger didExecuteFetchRequest:request duration:v4];
}

- (CNAPITriageSession)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNAPITriageSession)initWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[CNContactsLoggerProvider defaultProvider];
  v6 = [v5 apiTriageLogger];

  v7 = [MEMORY[0x1E6996860] defaultProvider];
  v8 = [(CNAPITriageSession *)self initWithRequest:v4 triageLogger:v6 timeProvider:v7];

  return v8;
}

- (CNAPITriageSession)initWithRequest:(id)a3 triageLogger:(id)a4 timeProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CNAPITriageSession;
  v12 = [(CNAPITriageSession *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_logger, a4);
    objc_storeStrong(&v13->_timeProvider, a5);
    v13->_hasClientCalloutTime = 0;
    v14 = v13;
  }

  return v13;
}

- (void)closeWithContacts:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(CNAPITriageSession *)self normalizeCollectionOfContacts:a3];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(CNAPITriageLogger *)self->_logger request:self->_request containsContact:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(CNAPITriageSession *)self close];
}

- (id)normalizeCollectionOfContacts:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = v6;
  v8 = v4;
  if (!v7)
  {
    objc_opt_class();
    v9 = v4;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = [v11 allValues];
      v8 = [v12 _cn_flatten];
    }

    else
    {
      v8 = v9;
      v13 = &unk_1F09AE0A0;
      if ([v8 conformsToProtocol:v13])
      {
        v14 = v8;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (!v15)
      {
        v16 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [(CNAPITriageSession *)v8 normalizeCollectionOfContacts:v16];
        }

        v8 = MEMORY[0x1E695E0F0];
      }
    }
  }

  return v8;
}

- (void)closeWithError:(id)a3
{
  [(CNAPITriageLogger *)self->_logger request:self->_request encounteredError:a3];

  [(CNAPITriageSession *)self close];
}

- (void)closeWithResult:(id)a3
{
  v4 = a3;
  if ([v4 isSuccess])
  {
    v5 = [v4 value];

    [(CNAPITriageSession *)self closeWithContacts:v5];
  }

  else
  {
    v5 = [v4 error];

    [(CNAPITriageSession *)self closeWithError:v5];
  }
}

- (void)closeWithContacts:(id)a3 orError:(id)a4
{
  if (a3)
  {
    [(CNAPITriageSession *)self closeWithContacts:a3, a4];
  }

  else
  {
    [(CNAPITriageSession *)self closeWithError:a4];
  }
}

- (void)normalizeCollectionOfContacts:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1954A0000, a2, OS_LOG_TYPE_FAULT, "Session closed with invalid collection of contacts: %@", &v2, 0xCu);
}

@end