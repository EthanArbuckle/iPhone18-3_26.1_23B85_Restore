@interface MAHandleMapZoomOut
- (id)_performWithServiceHelper:(id)a3;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation MAHandleMapZoomOut

- (id)_performWithServiceHelper:(id)a3
{
  v3 = a3;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:1003 onTarget:802 eventValue:0];

  v10 = MKLaunchOptionsCameraAltitudeMultiplierKey;
  v11 = &off_53368;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v6 = [MKMapItem urlForMapItem:0 options:v5];

  LODWORD(v5) = [v3 openSensitiveURL:v6];
  v7 = objc_alloc_init(SACommandFailed);
  if (v5)
  {
    v8 = objc_alloc_init(SACommandSucceeded);

    v7 = v8;
  }

  return v7;
}

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v8 = a3;
  v6 = [(MAHandleMapZoomOut *)self _performWithServiceHelper:a4];
  if (v8)
  {
    v7 = [v6 dictionary];
    v8[2](v8, v7);
  }
}

@end