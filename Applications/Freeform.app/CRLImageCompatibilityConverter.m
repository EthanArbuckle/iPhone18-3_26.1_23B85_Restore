@interface CRLImageCompatibilityConverter
+ (void)initialize;
- (CRLImageCompatibilityConverter)initWithImageData:(id)a3 desiredCompatibilityLevel:(int64_t)a4 assetOwner:(id)a5;
- (void)convertMediaWithCompletionHandler:(id)a3;
- (void)p_completeConversionWithCompletionHandler:(id)a3;
- (void)p_performAsyncMediaConversionWorkWithCompletionHandler:(id)a3;
@end

@implementation CRLImageCompatibilityConverter

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [[CRLWidthLimitedQueue alloc] initWithLimit:10];
    v3 = qword_101A34668;
    qword_101A34668 = v2;
  }
}

- (CRLImageCompatibilityConverter)initWithImageData:(id)a3 desiredCompatibilityLevel:(int64_t)a4 assetOwner:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131D044();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131D058();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131D0F0();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLImageCompatibilityConverter initWithImageData:desiredCompatibilityLevel:assetOwner:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageCompatibilityConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:56 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "imageData != nil"];
  }

  v23.receiver = self;
  v23.super_class = CRLImageCompatibilityConverter;
  v14 = [(CRLImageCompatibilityConverter *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->mImageData, a3);
    v16 = [[CRLBasicProgress alloc] initWithMaxValue:1.0];
    mProgress = v15->mProgress;
    v15->mProgress = v16;

    v15->mDesiredCompatibilityLevel = a4;
    objc_storeStrong(&v15->mAssetOwner, a5);
    if (v15->mDesiredCompatibilityLevel <= 2)
    {
      v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131D118();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131D140(&v15->mDesiredCompatibilityLevel, v18);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131D1F8();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v19);
      }

      v20 = [NSString stringWithUTF8String:"[CRLImageCompatibilityConverter initWithImageData:desiredCompatibilityLevel:assetOwner:]"];
      v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageCompatibilityConverter.m"];
      [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:63 isFatal:0 description:"Image converter created without need for conversion (level %zd)", v15->mDesiredCompatibilityLevel];
    }
  }

  return v15;
}

- (void)convertMediaWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!self->mImageData)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131D220();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131D234();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131D2CC();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLImageCompatibilityConverter convertMediaWithCompletionHandler:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageCompatibilityConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:73 isFatal:0 description:"invalid nil value for '%{public}s'", "mImageData"];
  }

  v8 = qword_101A34668;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100141650;
  v10[3] = &unk_10183FC10;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 performAsync:v10];
}

- (void)p_performAsyncMediaConversionWorkWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CRLAsset *)self->mImageData type];
  v6 = +[CRLIngestionTypes imageUTTypesThatRequireConversion];
  if ([v5 crl_conformsToAnyUTType:v6])
  {

    goto LABEL_4;
  }

  v7 = [(CRLAsset *)self->mImageData type];
  v8 = +[CRLIngestionTypes highEfficiencyImageUTTypes];
  v9 = [v7 crl_conformsToAnyUTType:v8];

  if (v9)
  {
LABEL_4:
    mDesiredCompatibilityLevel = self->mDesiredCompatibilityLevel;
    v11 = +[CRLImageProviderPool sharedPool];
    v12 = [v11 temporaryProviderForAsset:self->mImageData shouldValidate:1];

    if (mDesiredCompatibilityLevel == 3)
    {
      v13 = objc_opt_class();
      v14 = sub_100014370(v13, v12);
      v15 = [CRLImageResamplingOperation alloc];
      [v14 naturalSize];
      v16 = [(CRLImageResamplingOperation *)v15 initWithImageProvider:v14 desiredSize:self->mAssetOwner assetOwner:?];
      v17 = [(CRLAsset *)self->mImageData filename];
      [(CRLImageResamplingOperation *)v16 setDisplayName:v17];

      v18 = [(CRLImageResamplingOperation *)v16 performResampleOperationWithResampleOptions:16 bitmapContextOptions:9];
      if (!v18)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10131D2F4();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10131D308();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10131D3A0();
        }

        v19 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v19);
        }

        v20 = [NSString stringWithUTF8String:"[CRLImageCompatibilityConverter p_performAsyncMediaConversionWorkWithCompletionHandler:]"];
        v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageCompatibilityConverter.m"];
        [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:112 isFatal:0 description:"invalid nil value for '%{public}s'", "convertedImageDataWrapper"];
      }

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100141B30;
      v28[3] = &unk_10183FCB8;
      v28[4] = self;
      v29 = v4;
      [v18 createAssetWithCompletionHandler:v28];

      goto LABEL_22;
    }

    if (([v12 isError] & 1) == 0)
    {
      v14 = sub_10050E9F0(self->mImageData, self->mAssetOwner);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100141D7C;
      v26[3] = &unk_10183FCB8;
      v26[4] = self;
      v27 = v4;
      [v14 createAssetWithCompletionHandler:v26];
      v22 = v27;
LABEL_21:

LABEL_22:
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v23 = +[CRLImageProviderPool sharedPool];
  v12 = [v23 temporaryProviderForAsset:self->mImageData shouldValidate:1];

  if (([v12 isError] & 1) == 0)
  {
    v14 = sub_10050E9E4(self->mImageData, self->mAssetOwner);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100141FC8;
    v24[3] = &unk_10183FCB8;
    v24[4] = self;
    v25 = v4;
    [v14 createAssetWithCompletionHandler:v24];
    v22 = v25;
    goto LABEL_21;
  }

LABEL_19:
  [(CRLImageCompatibilityConverter *)self p_completeConversionWithCompletionHandler:v4];
LABEL_23:
}

- (void)p_completeConversionWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!self->mConvertedImageData)
  {
    v5 = atomic_load(&self->mIsCancelled);
    if ((v5 & 1) == 0)
    {
      v6 = [NSError alloc];
      v14[0] = NSLocalizedDescriptionKey;
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"This image can’t be added." value:0 table:0];
      v15[0] = v8;
      v14[1] = NSLocalizedFailureReasonErrorKey;
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"The file couldn’t be converted into a compatible format." value:0 table:0];
      v15[1] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
      v12 = [v6 initWithDomain:@"com.apple.freeform.CRLErrorDomainMediaCompatibility" code:100 userInfo:v11];
      mError = self->mError;
      self->mError = v12;
    }
  }

  [(CRLBasicProgress *)self->mProgress setValue:1.0];
  if (v4)
  {
    v4[2](v4);
  }
}

@end