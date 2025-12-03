@interface CNAPITriageSession
- (CNAPITriageSession)init;
- (CNAPITriageSession)initWithRequest:(id)request;
- (CNAPITriageSession)initWithRequest:(id)request triageLogger:(id)logger timeProvider:(id)provider;
- (id)normalizeCollectionOfContacts:(id)contacts;
- (void)close;
- (void)closeWithContacts:(id)contacts;
- (void)closeWithContacts:(id)contacts orError:(id)error;
- (void)closeWithError:(id)error;
- (void)closeWithResult:(id)result;
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
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNAPITriageSession)initWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[CNContactsLoggerProvider defaultProvider];
  apiTriageLogger = [v5 apiTriageLogger];

  defaultProvider = [MEMORY[0x1E6996860] defaultProvider];
  v8 = [(CNAPITriageSession *)self initWithRequest:requestCopy triageLogger:apiTriageLogger timeProvider:defaultProvider];

  return v8;
}

- (CNAPITriageSession)initWithRequest:(id)request triageLogger:(id)logger timeProvider:(id)provider
{
  requestCopy = request;
  loggerCopy = logger;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = CNAPITriageSession;
  v12 = [(CNAPITriageSession *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_logger, logger);
    objc_storeStrong(&v13->_timeProvider, provider);
    v13->_hasClientCalloutTime = 0;
    v14 = v13;
  }

  return v13;
}

- (void)closeWithContacts:(id)contacts
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(CNAPITriageSession *)self normalizeCollectionOfContacts:contacts];
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

- (id)normalizeCollectionOfContacts:(id)contacts
{
  contactsCopy = contacts;
  objc_opt_class();
  v4 = contactsCopy;
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
  _cn_flatten = v4;
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
      allValues = [v11 allValues];
      _cn_flatten = [allValues _cn_flatten];
    }

    else
    {
      _cn_flatten = v9;
      v13 = &unk_1F09AE0A0;
      if ([_cn_flatten conformsToProtocol:v13])
      {
        v14 = _cn_flatten;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (!v15)
      {
        os_log = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log, OS_LOG_TYPE_FAULT))
        {
          [(CNAPITriageSession *)_cn_flatten normalizeCollectionOfContacts:os_log];
        }

        _cn_flatten = MEMORY[0x1E695E0F0];
      }
    }
  }

  return _cn_flatten;
}

- (void)closeWithError:(id)error
{
  [(CNAPITriageLogger *)self->_logger request:self->_request encounteredError:error];

  [(CNAPITriageSession *)self close];
}

- (void)closeWithResult:(id)result
{
  resultCopy = result;
  if ([resultCopy isSuccess])
  {
    value = [resultCopy value];

    [(CNAPITriageSession *)self closeWithContacts:value];
  }

  else
  {
    value = [resultCopy error];

    [(CNAPITriageSession *)self closeWithError:value];
  }
}

- (void)closeWithContacts:(id)contacts orError:(id)error
{
  if (contacts)
  {
    [(CNAPITriageSession *)self closeWithContacts:contacts, error];
  }

  else
  {
    [(CNAPITriageSession *)self closeWithError:error];
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