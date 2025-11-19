@interface AVAssetExportSession
+ (id)crl_exportSessionWithAsset:(id)a3 presetName:(id)a4 preserveFrameDuration:(BOOL)a5;
@end

@implementation AVAssetExportSession

+ (id)crl_exportSessionWithAsset:(id)a3 presetName:(id)a4 preserveFrameDuration:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sub_1003265AC(v8);
  if (sub_100326840(v9))
  {
    v10 = +[CRLCapabilities currentCapabilities];
    v11 = [v10 hasHEVCHardwareEncoding];

    if (!v11)
    {
      v15 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101356910();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101356924(v15, v16);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013569D0();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v17, v15);
      }

      v18 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[AVAssetExportSession(CRLAdditions) crl_exportSessionWithAsset:presetName:preserveFrameDuration:]");
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/AVAssetExportSession_CRLAdditions.m"];
      [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:32 isFatal:0 description:"Should not have been able to request conversion to HEVC on hardware without encoding support!"];

      if (sub_100326850(v9))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v14 = 0;
      goto LABEL_17;
    }

    if ([CRLMovieCompatibilityChecker assetContainsVideoTracksWithAlpha:v7])
    {
      v13 = v9;
      v14 = 1;
LABEL_17:
      v20 = sub_1003266C4(v13, v14, v12);

      v8 = v20;
    }
  }

  v21 = [AVAssetExportSession exportSessionWithAsset:v7 presetName:v8];
  [v21 setShouldOptimizeForNetworkUse:1];
  if (!a5 && (sub_100326798(v8) & 1) == 0)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = [v7 tracksWithMediaType:AVMediaTypeVideo];
    v23 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      while (2)
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v32 + 1) + 8 * i) nominalFrameRate];
          if (v27 > 30.0)
          {
            v28 = [AVMutableVideoComposition videoCompositionWithPropertiesOfAsset:v7];
            CMTimeMake(&v31, 1, 30);
            v30 = v31;
            [v28 setFrameDuration:&v30];
            [v28 setSourceTrackIDForFrameTiming:0];
            [v21 setVideoComposition:v28];

            goto LABEL_30;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:
  }

  return v21;
}

@end