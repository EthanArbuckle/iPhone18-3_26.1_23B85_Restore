@interface BKAudiobookPreviewPresentingViewController
- (void)_recordMetricsForBuyButtonTap:(BOOL)tap actionDetails:(id)details offerType:(id)type;
- (void)assetViewControllerRequestToBuy:(id)buy completion:(id)completion;
@end

@implementation BKAudiobookPreviewPresentingViewController

- (void)assetViewControllerRequestToBuy:(id)buy completion:(id)completion
{
  buyCopy = buy;
  completionCopy = completion;
  objc_initWeak(&location, self);
  sampleProfileFuture = [(BKBasePresentingViewController *)self sampleProfileFuture];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000AB3C8;
  v12[3] = &unk_100A06078;
  v12[4] = self;
  objc_copyWeak(&v15, &location);
  v9 = buyCopy;
  v13 = v9;
  v10 = completionCopy;
  v14 = v10;
  [sampleProfileFuture get:v12];

  _fetchSampleProfileFuture = [(BKBasePresentingViewController *)self _fetchSampleProfileFuture];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_recordMetricsForBuyButtonTap:(BOOL)tap actionDetails:(id)details offerType:(id)type
{
  tapCopy = tap;
  detailsCopy = details;
  typeCopy = type;
  v9 = objc_opt_new();
  [v9 setObject:JSARecordEventTypeClick forKeyedSubscript:JSARecordKeyEventType];
  [v9 setObject:@"AudiobookPreview" forKeyedSubscript:JSARecordKeyActionContext];
  if (tapCopy)
  {
    v10 = @"buy";
  }

  else
  {
    v10 = @"buyInitiate";
  }

  [v9 setObject:v10 forKeyedSubscript:JSARecordKeyActionType];
  if (detailsCopy)
  {
    [v9 setObject:detailsCopy forKeyedSubscript:JSARecordKeyActionDetails];
  }

  if (typeCopy)
  {
    v11 = [typeCopy description];
    [v9 setObject:v11 forKeyedSubscript:JSARecordKeyOfferType];
  }

  assetPresenterAssetID = [(BKBasePresentingViewController *)self assetPresenterAssetID];
  [v9 setObject:assetPresenterAssetID forKeyedSubscript:JSARecordKeyTargetId];

  [v9 setObject:JSARecordTargetTypeButton forKeyedSubscript:JSARecordKeyTargetType];
  [JSAApplication recordNativeEvent:v9];
}

@end