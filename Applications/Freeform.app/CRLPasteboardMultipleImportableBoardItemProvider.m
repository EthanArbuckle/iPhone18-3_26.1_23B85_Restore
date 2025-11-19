@interface CRLPasteboardMultipleImportableBoardItemProvider
- (BOOL)p_validateSizeOfImportWithTotalSize:(unint64_t)a3 totalEmbeddedDataSize:(unint64_t)a4 insertedImage:(BOOL)a5 insertedMovie:(BOOL)a6 insertedAudio:(BOOL)a7 preexistingTooLargeErrors:(id)a8 error:(id *)a9;
- (BOOL)producesValidGeometry;
- (CRLMediaCompatibilityAlertPresenter)alertPresenter;
- (CRLPasteboardMultipleImportableBoardItemProvider)initWithImportableBoardItemProviders:(id)a3;
- (NSString)localizedErrorDescription;
- (void)cancel;
- (void)importableBoardItemProvider:(id)a3 needsMediaCompatibilityFeedbackWithReasons:(int64_t)a4 forMediaType:(int64_t)a5 usingBlock:(id)a6;
- (void)importableBoardItemProviderWillIgnoreMediaCompatibilityOnAllDevicesRequirement:(id)a3;
- (void)p_boardItemProviderDidRequestMediaCompatibilityRequirement:(id)a3;
- (void)provideBoardItemsWithFactory:(id)a3 completionHandler:(id)a4;
@end

@implementation CRLPasteboardMultipleImportableBoardItemProvider

- (CRLPasteboardMultipleImportableBoardItemProvider)initWithImportableBoardItemProviders:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = v5;
  if (!v4 || !v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101388BF0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101388C04();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101388CB4();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLPasteboardMultipleImportableBoardItemProvider initWithImportableBoardItemProviders:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardMultipleImportableBoardItemProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:37 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "(boardItemProviders != nil) && (boardItemProvidersCount > 0)"];
  }

  v30.receiver = self;
  v30.super_class = CRLPasteboardMultipleImportableBoardItemProvider;
  v10 = [(CRLPasteboardMultipleImportableBoardItemProvider *)&v30 init];
  if (v10)
  {
    v11 = dispatch_queue_create("CRLPasteboardMultipleImportableBoardItemProvider", 0);
    mProviderQueue = v10->mProviderQueue;
    v10->mProviderQueue = v11;

    v13 = [[CRLMultipleImporterHelper alloc] initWithImporters:v4];
    mImporterHelper = v10->mImporterHelper;
    v10->mImporterHelper = v13;

    v15 = [[NSMutableArray alloc] initWithCapacity:v6];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v4;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v26 + 1) + 8 * i);
          v22 = [v21 progress];
          if (v22)
          {
            [v15 addObject:v22];
          }

          [v21 setDelegate:v10];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v18);
    }

    v23 = [[CRLProgressGroup alloc] initWithChildren:v15];
    mProgress = v10->mProgress;
    v10->mProgress = &v23->super;
  }

  return v10;
}

- (BOOL)p_validateSizeOfImportWithTotalSize:(unint64_t)a3 totalEmbeddedDataSize:(unint64_t)a4 insertedImage:(BOOL)a5 insertedMovie:(BOOL)a6 insertedAudio:(BOOL)a7 preexistingTooLargeErrors:(id)a8 error:(id *)a9
{
  if (a9)
  {
    *a9 = 0;
  }

  return 1;
}

- (void)provideBoardItemsWithFactory:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v20 = a4;
  if (!v20)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101388CDC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101388CF0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101388DA0();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLPasteboardMultipleImportableBoardItemProvider provideBoardItemsWithFactory:completionHandler:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardMultipleImportableBoardItemProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:85 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "completionHandler != nil"];
  }

  v10 = dispatch_group_create();
  v21 = self;
  v11 = [(CRLMultipleImporterHelper *)self->mImporterHelper importers];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        dispatch_group_enter(v10);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_1005098E4;
        v26[3] = &unk_10183AB38;
        v27 = v10;
        [v16 provideBoardItemWithFactory:v6 completionHandler:v26];
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  mProviderQueue = v21->mProviderQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005098EC;
  block[3] = &unk_101842CD8;
  v23 = v11;
  v24 = v21;
  v25 = v20;
  v18 = v20;
  v19 = v11;
  dispatch_group_notify(v10, mProviderQueue, block);
}

- (void)cancel
{
  mProviderQueue = self->mProviderQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100509E3C;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(mProviderQueue, block);
}

- (BOOL)producesValidGeometry
{
  v2 = [(CRLPasteboardMultipleImportableBoardItemProvider *)self boardItemProviders];
  v3 = [v2 crl_allObjectsPassTest:&stru_10186B010];

  return v3;
}

- (NSString)localizedErrorDescription
{
  v2 = [(CRLPasteboardMultipleImportableBoardItemProvider *)self errors];
  v3 = [v2 count];

  if (v3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"%ld items couldn’t be inserted." value:0 table:0];
    v3 = [NSString localizedStringWithFormat:v5, v3];
  }

  return v3;
}

- (void)importableBoardItemProvider:(id)a3 needsMediaCompatibilityFeedbackWithReasons:(int64_t)a4 forMediaType:(int64_t)a5 usingBlock:(id)a6
{
  v10 = a3;
  v11 = a6;
  mProviderQueue = self->mProviderQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10050A088;
  block[3] = &unk_10186B038;
  block[4] = self;
  v16 = v10;
  v18 = a4;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(mProviderQueue, block);
}

- (void)importableBoardItemProviderWillIgnoreMediaCompatibilityOnAllDevicesRequirement:(id)a3
{
  v4 = a3;
  mProviderQueue = self->mProviderQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10050A178;
  v7[3] = &unk_10183AE28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(mProviderQueue, v7);
}

- (void)p_boardItemProviderDidRequestMediaCompatibilityRequirement:(id)a3
{
  [(CRLMultipleImporterHelper *)self->mImporterHelper mediaCompatibilityCheckHasBeenHandledForImporter:a3];
  if ([(CRLMultipleImporterHelper *)self->mImporterHelper allImportersHaveGivenCompatibilityResponse]&& [(CRLMultipleImporterHelper *)self->mImporterHelper numberOfImportersRequiringCompatibilityConversion])
  {
    v4 = [(CRLPasteboardMultipleImportableBoardItemProvider *)self alertPresenter];
    mImporterHelper = self->mImporterHelper;
    if (v4)
    {
      v6 = [(CRLMultipleImporterHelper *)mImporterHelper mediaTypeForConversion];
      if (!v6)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101388DC8();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101388DDC();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101388E7C();
        }

        v7 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EFC0(v7);
        }

        v8 = [NSString stringWithUTF8String:"[CRLPasteboardMultipleImportableBoardItemProvider p_boardItemProviderDidRequestMediaCompatibilityRequirement:]"];
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardMultipleImportableBoardItemProvider.m"];
        [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:254 isFatal:0 description:"No media types were specified! Falling back to Mixed to have understandable strings."];

        v6 = 3;
      }

      v10 = [(CRLMultipleImporterHelper *)self->mImporterHelper reasonsForMediaConversion];
      v11 = [(CRLMultipleImporterHelper *)self->mImporterHelper numberOfImportersRequiringCompatibilityConversion]== 1;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10050A450;
      v12[3] = &unk_10186B0C8;
      v12[4] = self;
      [v4 presentMediaCompatibilityAlertWithReasons:v10 forMediaType:v6 forSingleMediaObject:v11 completionHandler:v12];
    }

    else
    {
      [(CRLMultipleImporterHelper *)mImporterHelper completeImportWithCompatibilityOnAllDevices:0 allowHEVCContent:1];
    }
  }
}

- (CRLMediaCompatibilityAlertPresenter)alertPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->mAlertPresenter);

  return WeakRetained;
}

@end