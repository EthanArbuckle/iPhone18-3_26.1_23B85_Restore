@interface MAHandleShowPlaceDetails
- (void)_performWithServiceHelper:(id)helper completion:(id)completion;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MAHandleShowPlaceDetails

- (void)_performWithServiceHelper:(id)helper completion:(id)completion
{
  helperCopy = helper;
  completionCopy = completion;
  v8 = [GEOPlaceActionDetails actionDetailsWithMapItem:0 timestamp:[(MAHandleShowPlaceDetails *)self itemIndex] resultIndex:0.0];
  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:8003 onTarget:802 eventValue:0 placeActionDetails:v8];

  v17[0] = MKLaunchOptionsSelectedIndexKey;
  v10 = [NSNumber numberWithInteger:[(MAHandleShowPlaceDetails *)self itemIndex]];
  v17[1] = _MKLaunchOptionsPreserveSearchResultsKey;
  v18[0] = v10;
  v18[1] = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

  v12 = [MKMapItem urlForMapItem:0 options:v11];
  if (v12)
  {
    if (![helperCopy openSensitiveURL:v12])
    {
      v15 = [SACommandFailed alloc];
      v16 = [NSString stringWithFormat:@"Unable to open maps with URL: %@", v12];
      v14 = [v15 initWithReason:v16];

      goto LABEL_7;
    }

    v13 = objc_alloc_init(SACommandSucceeded);
  }

  else
  {
    v13 = [[SACommandFailed alloc] initWithReason:@"Unable to generate Maps URL."];
  }

  v14 = v13;
LABEL_7:
  completionCopy[2](completionCopy, v14, 0);
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_BBB0;
  v9[3] = &unk_34948;
  v12 = v13;
  helperCopy = helper;
  v10 = helperCopy;
  v8 = completionCopy;
  v11 = v8;
  [(MAHandleShowPlaceDetails *)self _performWithServiceHelper:helperCopy completion:v9];

  _Block_object_dispose(v13, 8);
}

@end