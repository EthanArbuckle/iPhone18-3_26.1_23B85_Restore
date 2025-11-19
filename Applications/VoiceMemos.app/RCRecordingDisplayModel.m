@interface RCRecordingDisplayModel
+ (RCRecordingDisplayModel)recordingDisplayModelWithSavedRecording:(id)a3;
+ (RCRecordingDisplayModel)recordingDisplayModelWithTitle:(id)a3 creationDate:(id)a4 duration:(double)a5 UUID:(id)a6 recentlyDeleted:(BOOL)a7 representsDownloadingFile:(BOOL)a8 isFavorite:(BOOL)a9 isEnhanced:(BOOL)a10 hasTranscription:(BOOL)a11 isSpatialRecording:(BOOL)a12 wasManuallyRenamed:(BOOL)a13;
+ (id)recordingDisplayModelForUUID:(id)a3;
- (id)description;
@end

@implementation RCRecordingDisplayModel

+ (RCRecordingDisplayModel)recordingDisplayModelWithSavedRecording:(id)a3
{
  v3 = a3;
  v18 = [v3 title];
  v4 = [v3 creationDate];
  [v3 length];
  v6 = v5;
  v7 = [v3 uuid];
  v8 = [v3 deletionDate];
  v9 = [v3 audioFutureNeedsDownload];
  v10 = [v3 favorite];
  v11 = [v3 enhanced];
  v12 = [v3 transcriptionContentExists];
  v13 = [v3 composedAssetIsSpatialRecording];
  v14 = [v3 manuallyRenamed];

  BYTE3(v17) = v14;
  BYTE2(v17) = v13;
  BYTE1(v17) = v12;
  LOBYTE(v17) = v11;
  v15 = [RCRecordingDisplayModel recordingDisplayModelWithTitle:"recordingDisplayModelWithTitle:creationDate:duration:UUID:recentlyDeleted:representsDownloadingFile:isFavorite:isEnhanced:hasTranscription:isSpatialRecording:wasManuallyRenamed:" creationDate:v18 duration:v4 UUID:v7 recentlyDeleted:v8 != 0 representsDownloadingFile:v9 isFavorite:v10 isEnhanced:v6 hasTranscription:v17 isSpatialRecording:? wasManuallyRenamed:?];

  return v15;
}

+ (id)recordingDisplayModelForUUID:(id)a3
{
  v3 = a3;
  v4 = +[RCApplicationModel sharedApplicationModel];
  v5 = [v4 recordingWithUniqueID:v3];

  if (v5)
  {
    v6 = [RCRecordingDisplayModel recordingDisplayModelWithSavedRecording:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [(RCRecordingDisplayModel *)self title];
  v4 = [(RCRecordingDisplayModel *)self UUID];
  v5 = [NSString stringWithFormat:@"Title: %@, UUID: %@", v3, v4];

  return v5;
}

+ (RCRecordingDisplayModel)recordingDisplayModelWithTitle:(id)a3 creationDate:(id)a4 duration:(double)a5 UUID:(id)a6 recentlyDeleted:(BOOL)a7 representsDownloadingFile:(BOOL)a8 isFavorite:(BOOL)a9 isEnhanced:(BOOL)a10 hasTranscription:(BOOL)a11 isSpatialRecording:(BOOL)a12 wasManuallyRenamed:(BOOL)a13
{
  v13 = a9;
  v14 = a8;
  v15 = a7;
  v19 = a10;
  v20 = a3;
  v21 = a4;
  v22 = a6;
  v23 = v14;
  v24 = v22;
  if (!v22)
  {
    v29 = v20;
    v25 = v23;
    v26 = OSLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1001BA68C(v26);
    }

    v23 = v25;
    v20 = v29;
    v19 = a10;
  }

  v27 = objc_opt_new();
  [v27 setTitle:v20];
  [v27 setCreationDate:v21];
  [v27 setDuration:a5];
  [v27 setUUID:v24];
  [v27 setRecentlyDeleted:v15];
  [v27 setIsFavorite:v13];
  [v27 setIsEnhanced:v19];
  [v27 setHasTranscription:a11];
  [v27 setIsSpatialRecording:a12];
  [v27 setRepresentsDownloadingFile:v23];
  [v27 setWasManuallyRenamed:a13];

  return v27;
}

@end