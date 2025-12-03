@interface CRLImageFaceAnalyzer
+ (CGPoint)maskCenterForFacesInImageData:(id)data imageSize:(CGSize)size maskSize:(CGSize)maskSize defaultCenter:(CGPoint)center assetOwner:(id)owner;
- (CRLImageFaceAnalyzer)initWithImageData:(id)data assetOwner:(id)owner;
- (_TtC8Freeform26CRLImageFaceAnalyzerResult)faceAnalyzerResult;
- (double)p_largestAreaFromFaceRects:(id)rects;
- (id)p_faceRectsForResults:(id)results;
- (id)p_interestingfaceRectsFromFaceRects:(id)rects;
- (void)p_analyzeFaceRectsIfNeeded;
- (void)p_analyzeFaceRectsWithProvider:(id)provider;
@end

@implementation CRLImageFaceAnalyzer

- (CRLImageFaceAnalyzer)initWithImageData:(id)data assetOwner:(id)owner
{
  dataCopy = data;
  ownerCopy = owner;
  if (!dataCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101351CDC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101351CF0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101351DA0();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLImageFaceAnalyzer initWithImageData:assetOwner:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageFaceAnalyzer.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:38 isFatal:0 description:"invalid nil value for '%{public}s'", "imageData"];
  }

  v15.receiver = self;
  v15.super_class = CRLImageFaceAnalyzer;
  v12 = [(CRLImageFaceAnalyzer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageData, data);
    objc_storeStrong(&v13->_assetOwner, owner);
  }

  return v13;
}

+ (CGPoint)maskCenterForFacesInImageData:(id)data imageSize:(CGSize)size maskSize:(CGSize)maskSize defaultCenter:(CGPoint)center assetOwner:(id)owner
{
  y = center.y;
  x = center.x;
  height = maskSize.height;
  width = maskSize.width;
  v11 = size.height;
  v12 = size.width;
  ownerCopy = owner;
  dataCopy = data;
  v16 = [[CRLImageFaceAnalyzer alloc] initWithImageData:dataCopy assetOwner:ownerCopy];

  faceAnalyzerResult = [(CRLImageFaceAnalyzer *)v16 faceAnalyzerResult];
  v18 = faceAnalyzerResult;
  if (faceAnalyzerResult)
  {
    [faceAnalyzerResult maskCenterForFacesWithImageSize:v12 maskSize:v11 defaultCenter:{width, height, x, y}];
    x = v19;
    y = v20;
  }

  v21 = x;
  v22 = y;
  result.y = v22;
  result.x = v21;
  return result;
}

- (_TtC8Freeform26CRLImageFaceAnalyzerResult)faceAnalyzerResult
{
  [(CRLImageFaceAnalyzer *)self p_analyzeFaceRectsIfNeeded];
  faceAnalyzerResult = self->_faceAnalyzerResult;

  return faceAnalyzerResult;
}

- (void)p_analyzeFaceRectsIfNeeded
{
  if (!self->_hasAnalyzedData)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_10030ACD8;
    v19 = sub_10030ACE8;
    v3 = +[CRLImageProviderPool sharedPool];
    v20 = [v3 providerForAsset:self->_imageData shouldValidate:1];

    if ([v16[5] isValid] && (objc_msgSend(v16[5], "isError") & 1) == 0)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x3032000000;
      v12 = sub_10030ACD8;
      v13 = sub_10030ACE8;
      v4 = objc_opt_class();
      v14 = sub_100014370(v4, v16[5]);
      if (v10[5])
      {
        [(CRLImageFaceAnalyzer *)self p_analyzeFaceRectsWithProvider:?];
      }

      else
      {
        v5 = [CRLImageResamplingOperation alloc];
        v6 = [(CRLImageResamplingOperation *)v5 initWithImageProvider:v16[5] desiredSize:self->_assetOwner assetOwner:CGSizeZero.width, CGSizeZero.height];
        v7 = [(CRLImageResamplingOperation *)v6 performResampleOperationWithResampleOptions:2 bitmapContextOptions:3];
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_10030ACF0;
        v8[3] = &unk_1018553E8;
        v8[5] = &v15;
        v8[6] = &v9;
        v8[4] = self;
        [v7 createAssetWithCompletionHandler:v8];
      }

      _Block_object_dispose(&v9, 8);
    }

    else
    {
      [(CRLImageFaceAnalyzer *)self p_analyzeFaceRectsWithProvider:0];
    }

    _Block_object_dispose(&v15, 8);
  }
}

- (void)p_analyzeFaceRectsWithProvider:(id)provider
{
  providerCopy = provider;
  v5 = providerCopy;
  if (providerCopy)
  {
    [providerCopy naturalSize];
    if (v6 >= v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v8 <= 5000.0)
    {
      cGImageOfLargestSafeSize = [v5 CGImageOfLargestSafeSize];
    }

    else
    {
      do
      {
        v8 = v8 * 0.5;
      }

      while (v8 > 5000.0);
      cGImageOfLargestSafeSize = [v5 CGImageForSize:0 inContext:self orContentsScaleProvider:{sub_100121E58(v6, v7, v8, v8)}];
    }

    v10 = [[VNImageRequestHandler alloc] initWithCGImage:cGImageOfLargestSafeSize orientation:sub_1004F3D60(objc_msgSend(v5 options:{"orientation")), &__NSDictionary0__struct}];
    v11 = objc_alloc_init(VNDetectFaceRectanglesRequest);
    v21 = v11;
    v12 = [NSArray arrayWithObjects:&v21 count:1];
    v20 = 0;
    [v10 performRequests:v12 error:&v20];
    v13 = v20;

    if (v13)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_101351EB4();
      }

      v14 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_101351EDC(v13, v14);
      }
    }

    else
    {
      results = [v11 results];
      v16 = [(CRLImageFaceAnalyzer *)self p_faceRectsForResults:results];

      if ([v16 count])
      {
        v17 = [(CRLImageFaceAnalyzer *)self p_interestingfaceRectsFromFaceRects:v16];
        if ([v17 count])
        {
          v18 = [[_TtC8Freeform26CRLImageFaceAnalyzerResult alloc] initWithFaceRectValues:v17];
          faceAnalyzerResult = self->_faceAnalyzerResult;
          self->_faceAnalyzerResult = v18;
        }
      }
    }
  }

  self->_hasAnalyzedData = 1;
}

- (id)p_interestingfaceRectsFromFaceRects:(id)rects
{
  rectsCopy = rects;
  [(CRLImageFaceAnalyzer *)self p_largestAreaFromFaceRects:rectsCopy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10030B2D0;
  v9[3] = &unk_101855428;
  v9[4] = v5;
  v6 = [rectsCopy indexesOfObjectsPassingTest:v9];
  v7 = [rectsCopy objectsAtIndexes:v6];

  return v7;
}

- (id)p_faceRectsForResults:(id)results
{
  resultsCopy = results;
  v4 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = resultsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v17 + 1) + 8 * i) boundingBox];
        if (v12 > 0.0199999996 && v13 > 0.0199999996)
        {
          v16[0] = v10;
          *&v16[1] = 1.0 - v11 - v13;
          *&v16[2] = v12;
          *&v16[3] = v13;
          v14 = [NSValue valueWithBytes:v16 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          [v4 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

- (double)p_largestAreaFromFaceRects:(id)rects
{
  rectsCopy = rects;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [rectsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(rectsCopy);
        }

        [*(*(&v12 + 1) + 8 * i) CGRectValue];
        if (v9 * v10 > v7)
        {
          v7 = v9 * v10;
        }
      }

      v5 = [rectsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

@end