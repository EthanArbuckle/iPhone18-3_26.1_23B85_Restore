@interface PFCloudKitFatalErrorMetric
- (PFCloudKitFatalErrorMetric)initWithContainerIdentifier:(id)a3 result:(id)a4;
- (id)createPayload;
- (void)dealloc;
@end

@implementation PFCloudKitFatalErrorMetric

- (PFCloudKitFatalErrorMetric)initWithContainerIdentifier:(id)a3 result:(id)a4
{
  v8.receiver = self;
  v8.super_class = PFCloudKitFatalErrorMetric;
  v5 = -[PFCloudKitUnhandledPartialErrorMetric initWithContainerIdentifier:error:](&v8, sel_initWithContainerIdentifier_error_, a3, [a4 error]);
  if (v5)
  {
    [a4 request];
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
  v3 = [(PFCloudKitUnhandledPartialErrorMetric *)&v6 createPayload];
  requestClass = self->_requestClass;
  if (!requestClass)
  {
    requestClass = [MEMORY[0x1E695DFB0] null];
  }

  [v3 setObject:requestClass forKey:@"requestClass"];
  return v3;
}

@end