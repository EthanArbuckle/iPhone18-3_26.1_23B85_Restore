@interface PFCloudKitUnhandledPartialErrorMetric
- (PFCloudKitUnhandledPartialErrorMetric)initWithContainerIdentifier:(id)identifier error:(id)error;
- (id)createPayload;
- (void)dealloc;
@end

@implementation PFCloudKitUnhandledPartialErrorMetric

- (PFCloudKitUnhandledPartialErrorMetric)initWithContainerIdentifier:(id)identifier error:(id)error
{
  v7.receiver = self;
  v7.super_class = PFCloudKitUnhandledPartialErrorMetric;
  v5 = [(PFCloudKitBaseMetric *)&v7 initWithContainerIdentifier:identifier];
  if (v5)
  {
    v5->_errorCode = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{objc_msgSend(error, "code")}];
    v5->_errorDomain = [error domain];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFCloudKitUnhandledPartialErrorMetric;
  [(PFCloudKitBaseMetric *)&v3 dealloc];
}

- (id)createPayload
{
  v7.receiver = self;
  v7.super_class = PFCloudKitUnhandledPartialErrorMetric;
  createPayload = [(PFCloudKitBaseMetric *)&v7 createPayload];
  errorDomain = self->_errorDomain;
  if (!errorDomain)
  {
    errorDomain = [MEMORY[0x1E695DFB0] null];
  }

  [createPayload setObject:errorDomain forKey:@"errorDomain"];
  errorCode = self->_errorCode;
  if (!errorCode)
  {
    errorCode = [MEMORY[0x1E695DFB0] null];
  }

  [createPayload setObject:errorCode forKey:@"errorCode"];
  return createPayload;
}

@end