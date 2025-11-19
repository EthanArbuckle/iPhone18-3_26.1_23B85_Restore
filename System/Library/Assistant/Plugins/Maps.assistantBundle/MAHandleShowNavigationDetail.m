@interface MAHandleShowNavigationDetail
- (id)_performWithServiceHelper:(id)a3;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation MAHandleShowNavigationDetail

- (id)_performWithServiceHelper:(id)a3
{
  v3 = a3;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:3051 onTarget:802 eventValue:0];

  v10 = MKLaunchOptionsLaunchIntoNavDetailKey;
  v11 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v6 = [MKMapItem urlForMapItem:0 options:v5];

  LODWORD(v5) = [v3 openSensitiveURL:v6];
  v7 = SACommandSucceeded_ptr;
  if (!v5)
  {
    v7 = SACommandFailed_ptr;
  }

  v8 = objc_alloc_init(*v7);

  return v8;
}

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v6 = a3;
  v8 = [(MAHandleShowNavigationDetail *)self _performWithServiceHelper:a4];
  v7 = [v8 dictionary];
  v6[2](v6, v7);
}

@end