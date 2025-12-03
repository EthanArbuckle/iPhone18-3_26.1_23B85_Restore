@interface MAHandleShowNavigationOverview
- (id)_performWithServiceHelper:(id)helper;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MAHandleShowNavigationOverview

- (id)_performWithServiceHelper:(id)helper
{
  helperCopy = helper;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:3050 onTarget:802 eventValue:0];

  v10 = MKLaunchOptionsLaunchIntoNavOverviewKey;
  v11 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v6 = [MKMapItem urlForMapItem:0 options:v5];

  LODWORD(v5) = [helperCopy openSensitiveURL:v6];
  v7 = SACommandSucceeded_ptr;
  if (!v5)
  {
    v7 = SACommandFailed_ptr;
  }

  v8 = objc_alloc_init(*v7);

  return v8;
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  v6 = [(MAHandleShowNavigationOverview *)self _performWithServiceHelper:helper];
  if (completionCopy)
  {
    dictionary = [v6 dictionary];
    completionCopy[2](completionCopy, dictionary);
  }
}

@end