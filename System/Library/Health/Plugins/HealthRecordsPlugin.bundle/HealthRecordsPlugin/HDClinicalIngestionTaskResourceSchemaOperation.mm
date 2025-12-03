@interface HDClinicalIngestionTaskResourceSchemaOperation
+ (id)new;
- (HDClinicalIngestionTaskResourceSchemaOperation)init;
- (HDClinicalIngestionTaskResourceSchemaOperation)initWithResourceSchema:(id)schema accountContext:(id)context;
- (id)initialWorkItem;
- (id)newResourceFetchOperationWithPredefinedURL:(id)l;
- (id)runResourceFetchOperationForURL:(id)l;
- (void)main;
@end

@implementation HDClinicalIngestionTaskResourceSchemaOperation

+ (id)new
{
  v2 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v2, objc_opt_class()];

  return 0;
}

- (HDClinicalIngestionTaskResourceSchemaOperation)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalIngestionTaskResourceSchemaOperation)initWithResourceSchema:(id)schema accountContext:(id)context
{
  schemaCopy = schema;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = HDClinicalIngestionTaskResourceSchemaOperation;
  v8 = [(HDClinicalIngestionTaskResourceSchemaOperation *)&v14 init];
  if (v8)
  {
    v9 = [schemaCopy copy];
    schema = v8->_schema;
    v8->_schema = v9;

    objc_storeStrong(&v8->_accountContext, context);
    v8->_resourceFetchOperationsByURLsLock._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(NSMutableDictionary);
    resourceFetchOperationsByURLs = v8->_resourceFetchOperationsByURLs;
    v8->_resourceFetchOperationsByURLs = v11;
  }

  return v8;
}

- (void)main
{
  v15 = objc_alloc_init(NSMutableArray);
  initialWorkItem = [(HDClinicalIngestionTaskResourceSchemaOperation *)self initialWorkItem];
  [v15 addObject:initialWorkItem];
  LOBYTE(fetchSuccess) = 0;
  do
  {
    v5 = objc_autoreleasePoolPush();
    hk_dequeue = [v15 hk_dequeue];
    [hk_dequeue start];
    outcome = [hk_dequeue outcome];
    v8 = outcome;
    if (fetchSuccess)
    {
      fetchSuccess = 1;
    }

    else
    {
      fetchSuccess = [outcome fetchSuccess];
    }

    followUpWorkItems = [v8 followUpWorkItems];
    v10 = [followUpWorkItems count];

    if (v10)
    {
      followUpWorkItems2 = [v8 followUpWorkItems];
      [v15 addObjectsFromArray:followUpWorkItems2];
    }

    accountContext = self->_accountContext;
    saveableResources = [v8 saveableResources];
    [(HDClinicalIngestionTaskAccountContext *)accountContext saveResourceObjects:saveableResources];

    objc_autoreleasePoolPop(v5);
  }

  while ([v15 count]);
  if (fetchSuccess)
  {
    v14 = &__kCFBooleanTrue;
  }

  else
  {
    v14 = &__kCFBooleanFalse;
  }

  objc_storeStrong(&self->_atLeastOneFetchSucceeded, v14);
}

- (id)initialWorkItem
{
  v3 = [(HDClinicalIngestionTaskResourceSchemaOperation *)self newResourceFetchOperationWithPredefinedURL:0];
  v4 = [[HDClinicalIngestionTaskWorkItem alloc] initWithResourceFetchOperation:v3 schemaContext:self];

  return v4;
}

- (id)runResourceFetchOperationForURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    sub_9E3D4(a2, self);
  }

  if ([(HDClinicalIngestionTaskAccountContext *)self->_accountContext mayMakeRequests])
  {
    os_unfair_lock_lock(&self->_resourceFetchOperationsByURLsLock);
    v6 = [(NSMutableDictionary *)self->_resourceFetchOperationsByURLs objectForKeyedSubscript:lCopy];
    if (v6)
    {
      v7 = v6;
      os_unfair_lock_unlock(&self->_resourceFetchOperationsByURLsLock);
    }

    else
    {
      v7 = [(HDClinicalIngestionTaskResourceSchemaOperation *)self newResourceFetchOperationWithPredefinedURL:lCopy];
      if (!v7)
      {
        sub_9E450(a2, self);
      }

      [(NSMutableDictionary *)self->_resourceFetchOperationsByURLs setObject:v7 forKeyedSubscript:lCopy];
      os_unfair_lock_unlock(&self->_resourceFetchOperationsByURLsLock);
      [v7 start];
    }

    [v7 waitUntilFinished];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)newResourceFetchOperationWithPredefinedURL:(id)l
{
  lCopy = l;
  v5 = [HDFHIRIngestionResourceFetchOperation alloc];
  task = [(HDClinicalIngestionTaskAccountContext *)self->_accountContext task];
  account = [(HDClinicalIngestionTaskAccountContext *)self->_accountContext account];
  v8 = [(HDFHIRIngestionResourceFetchOperation *)v5 initWithTask:task account:account nextOperation:0 queryMode:[(HDClinicalIngestionTaskAccountContext *)self->_accountContext queryMode] resourceSchema:self->_schema];

  [(HDFHIRIngestionResourceFetchOperation *)v8 setFullRequestURL:lCopy];
  return v8;
}

@end