@interface HDClinicalIngestionTaskResourceSchemaOperation
+ (id)new;
- (HDClinicalIngestionTaskResourceSchemaOperation)init;
- (HDClinicalIngestionTaskResourceSchemaOperation)initWithResourceSchema:(id)a3 accountContext:(id)a4;
- (id)initialWorkItem;
- (id)newResourceFetchOperationWithPredefinedURL:(id)a3;
- (id)runResourceFetchOperationForURL:(id)a3;
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

- (HDClinicalIngestionTaskResourceSchemaOperation)initWithResourceSchema:(id)a3 accountContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDClinicalIngestionTaskResourceSchemaOperation;
  v8 = [(HDClinicalIngestionTaskResourceSchemaOperation *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    schema = v8->_schema;
    v8->_schema = v9;

    objc_storeStrong(&v8->_accountContext, a4);
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
  v3 = [(HDClinicalIngestionTaskResourceSchemaOperation *)self initialWorkItem];
  [v15 addObject:v3];
  LOBYTE(v4) = 0;
  do
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [v15 hk_dequeue];
    [v6 start];
    v7 = [v6 outcome];
    v8 = v7;
    if (v4)
    {
      v4 = 1;
    }

    else
    {
      v4 = [v7 fetchSuccess];
    }

    v9 = [v8 followUpWorkItems];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v8 followUpWorkItems];
      [v15 addObjectsFromArray:v11];
    }

    accountContext = self->_accountContext;
    v13 = [v8 saveableResources];
    [(HDClinicalIngestionTaskAccountContext *)accountContext saveResourceObjects:v13];

    objc_autoreleasePoolPop(v5);
  }

  while ([v15 count]);
  if (v4)
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

- (id)runResourceFetchOperationForURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_9E3D4(a2, self);
  }

  if ([(HDClinicalIngestionTaskAccountContext *)self->_accountContext mayMakeRequests])
  {
    os_unfair_lock_lock(&self->_resourceFetchOperationsByURLsLock);
    v6 = [(NSMutableDictionary *)self->_resourceFetchOperationsByURLs objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = v6;
      os_unfair_lock_unlock(&self->_resourceFetchOperationsByURLsLock);
    }

    else
    {
      v7 = [(HDClinicalIngestionTaskResourceSchemaOperation *)self newResourceFetchOperationWithPredefinedURL:v5];
      if (!v7)
      {
        sub_9E450(a2, self);
      }

      [(NSMutableDictionary *)self->_resourceFetchOperationsByURLs setObject:v7 forKeyedSubscript:v5];
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

- (id)newResourceFetchOperationWithPredefinedURL:(id)a3
{
  v4 = a3;
  v5 = [HDFHIRIngestionResourceFetchOperation alloc];
  v6 = [(HDClinicalIngestionTaskAccountContext *)self->_accountContext task];
  v7 = [(HDClinicalIngestionTaskAccountContext *)self->_accountContext account];
  v8 = [(HDFHIRIngestionResourceFetchOperation *)v5 initWithTask:v6 account:v7 nextOperation:0 queryMode:[(HDClinicalIngestionTaskAccountContext *)self->_accountContext queryMode] resourceSchema:self->_schema];

  [(HDFHIRIngestionResourceFetchOperation *)v8 setFullRequestURL:v4];
  return v8;
}

@end