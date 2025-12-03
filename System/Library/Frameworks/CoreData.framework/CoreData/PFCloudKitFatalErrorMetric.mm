@interface PFCloudKitFatalErrorMetric
- (PFCloudKitFatalErrorMetric)initWithContainerIdentifier:(id)identifier result:(id)result;
- (id)createPayload;
- (void)dealloc;
@end

@implementation PFCloudKitFatalErrorMetric

- (PFCloudKitFatalErrorMetric)initWithContainerIdentifier:(id)identifier result:(id)result
{
  v8.receiver = self;
  v8.super_class = PFCloudKitFatalErrorMetric;
  v5 = -[PFCloudKitUnhandledPartialErrorMetric initWithContainerIdentifier:error:](&v8, sel_initWithContainerIdentifier_error_, identifier, [result error]);
  if (v5)
  {
    [result request];
    v6 = objc_opt_class();
    v5->_requestClass = NSStringFromClass(v6);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFCloudKitFatalErrorMetric;
  [(PFCloudKitUnhandledPartialErrorMetric *)&v3 dealloc];
}

- (id)createPayload
{
  v6.receiver = self;
  v6.super_class = PFCloudKitFatalErrorMetric;
  createPayload = [(PFCloudKitUnhandledPartialErrorMetric *)&v6 createPayload];
  requestClass = self->_requestClass;
  if (!requestClass)
  {
    requestClass = [MEMORY[0x1E695DFB0] null];
  }

  [createPayload setObject:requestClass forKey:@"requestClass"];
  return createPayload;
}

@end