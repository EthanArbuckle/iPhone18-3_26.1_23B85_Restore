@interface PFCloudKitUnhandledPartialErrorMetric
- (PFCloudKitUnhandledPartialErrorMetric)initWithContainerIdentifier:(id)a3 error:(id)a4;
- (id)createPayload;
- (void)dealloc;
@end

@implementation PFCloudKitUnhandledPartialErrorMetric

- (PFCloudKitUnhandledPartialErrorMetric)initWithContainerIdentifier:(id)a3 error:(id)a4
{
  v7.receiver = self;
  v7.super_class = PFCloudKitUnhandledPartialErrorMetric;
  v5 = [(PFCloudKitBaseMetric *)&v7 initWithContainerIdentifier:a3];
  if (v5)
  {
    v5->_errorCode = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{objc_msgSend(a4, "code")}];
    v5->_errorDomain = [a4 domain];
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
  v3 = [(PFCloudKitBaseMetric *)&v7 createPayload];
  errorDomain = self->_errorDomain;
  if (!errorDomain)
  {
    errorDomain = [MEMORY[0x1E695DFB0] null];
  }

  [v3 setObject:errorDomain forKey:@"errorDomain"];
  errorCode = self->_errorCode;
  if (!errorCode)
  {
    errorCode = [MEMORY[0x1E695DFB0] null];
  }

  [v3 setObject:errorCode forKey:@"errorCode"];
  return v3;
}

@end