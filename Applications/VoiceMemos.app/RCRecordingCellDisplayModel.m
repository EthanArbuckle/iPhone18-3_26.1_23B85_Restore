@interface RCRecordingCellDisplayModel
+ (id)recordingDisplayModelForUUID:(id)a3;
+ (id)recordingDisplayModelWithSavedRecording:(id)a3;
+ (id)recordingDisplayModelWithTitle:(id)a3 creationDate:(id)a4 duration:(double)a5 UUID:(id)a6 recentlyDeleted:(BOOL)a7 representsDownloadingFile:(BOOL)a8 isFavorite:(BOOL)a9 isEnhanced:(BOOL)a10 hasTranscription:(BOOL)a11 hasMultipleTracks:(BOOL)a12 isSpatialRecording:(BOOL)a13 wasManuallyRenamed:(BOOL)a14;
@end

@implementation RCRecordingCellDisplayModel

+ (id)recordingDisplayModelWithTitle:(id)a3 creationDate:(id)a4 duration:(double)a5 UUID:(id)a6 recentlyDeleted:(BOOL)a7 representsDownloadingFile:(BOOL)a8 isFavorite:(BOOL)a9 isEnhanced:(BOOL)a10 hasTranscription:(BOOL)a11 hasMultipleTracks:(BOOL)a12 isSpatialRecording:(BOOL)a13 wasManuallyRenamed:(BOOL)a14
{
  v31 = a8;
  v32 = a9;
  v14 = a7;
  v19 = a10;
  v20 = a3;
  v21 = a4;
  v22 = a6;
  v23 = v31;
  v24 = v32;
  v25 = v22;
  if (!v22)
  {
    HIDWORD(v29) = a10;
    v30 = v20;
    v26 = OSLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1001B70AC(v26);
    }

    v24 = v32;
    v23 = v31;
    v20 = v30;
    v19 = a10;
  }

  BYTE3(v29) = a14;
  BYTE2(v29) = a13;
  BYTE1(v29) = a11;
  LOBYTE(v29) = v19;
  v27 = [a1 recordingDisplayModelWithTitle:v20 creationDate:v21 duration:v25 UUID:v14 recentlyDeleted:v23 representsDownloadingFile:v24 isFavorite:a5 isEnhanced:v29 hasTranscription:? isSpatialRecording:? wasManuallyRenamed:?];
  [v27 setHasMultipleTracks:a12];

  return v27;
}

+ (id)recordingDisplayModelWithSavedRecording:(id)a3
{
  v3 = a3;
  v19 = [v3 title];
  v18 = [v3 creationDate];
  [v3 length];
  v5 = v4;
  v6 = [v3 uuid];
  v7 = [v3 deletionDate];
  v8 = [v3 audioFutureNeedsDownload];
  v9 = [v3 favorite];
  v10 = [v3 enhanced];
  v11 = [v3 transcriptionContentExists];
  v12 = [v3 composedAssetHasMultipleTracks];
  v13 = [v3 composedAssetIsSpatialRecording];
  v14 = [v3 manuallyRenamed];

  BYTE4(v17) = v14;
  BYTE3(v17) = v13;
  BYTE2(v17) = v12;
  BYTE1(v17) = v11;
  LOBYTE(v17) = v10;
  v15 = [RCRecordingCellDisplayModel recordingDisplayModelWithTitle:"recordingDisplayModelWithTitle:creationDate:duration:UUID:recentlyDeleted:representsDownloadingFile:isFavorite:isEnhanced:hasTranscription:hasMultipleTracks:isSpatialRecording:wasManuallyRenamed:" creationDate:v19 duration:v18 UUID:v6 recentlyDeleted:v7 != 0 representsDownloadingFile:v8 isFavorite:v9 isEnhanced:v5 hasTranscription:v17 hasMultipleTracks:? isSpatialRecording:? wasManuallyRenamed:?];

  return v15;
}

+ (id)recordingDisplayModelForUUID:(id)a3
{
  v3 = a3;
  v4 = +[RCApplicationModel sharedApplicationModel];
  v5 = [v4 recordingWithUniqueID:v3];

  if (v5)
  {
    v6 = [RCRecordingCellDisplayModel recordingDisplayModelWithSavedRecording:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end