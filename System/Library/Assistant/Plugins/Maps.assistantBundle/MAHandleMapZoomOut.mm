@interface MAHandleMapZoomOut
- (id)_performWithServiceHelper:(id)helper;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MAHandleMapZoomOut

- (id)_performWithServiceHelper:(id)helper
{
  helperCopy = helper;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:1003 onTarget:802 eventValue:0];

  v10 = MKLaunchOptionsCameraAltitudeMultiplierKey;
  v11 = &off_53368;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v6 = [MKMapItem urlForMapItem:0 options:v5];

  LODWORD(v5) = [helperCopy openSensitiveURL:v6];
  v7 = objc_alloc_init(SACommandFailed);
  if (v5)
  {
    v8 = objc_alloc_init(SACommandSucceeded);

    v7 = v8;
  }

  return v7;
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  v6 = [(MAHandleMapZoomOut *)self _performWithServiceHelper:helper];
  if (completionCopy)
  {
    dictionary = [v6 dictionary];
    completionCopy[2](completionCopy, dictionary);
  }
}

@end