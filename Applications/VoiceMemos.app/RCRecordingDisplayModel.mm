@interface RCRecordingDisplayModel
+ (RCRecordingDisplayModel)recordingDisplayModelWithSavedRecording:(id)recording;
+ (RCRecordingDisplayModel)recordingDisplayModelWithTitle:(id)title creationDate:(id)date duration:(double)duration UUID:(id)d recentlyDeleted:(BOOL)deleted representsDownloadingFile:(BOOL)file isFavorite:(BOOL)favorite isEnhanced:(BOOL)self0 hasTranscription:(BOOL)self1 isSpatialRecording:(BOOL)self2 wasManuallyRenamed:(BOOL)self3;
+ (id)recordingDisplayModelForUUID:(id)d;
- (id)description;
@end

@implementation RCRecordingDisplayModel

+ (RCRecordingDisplayModel)recordingDisplayModelWithSavedRecording:(id)recording
{
  recordingCopy = recording;
  title = [recordingCopy title];
  creationDate = [recordingCopy creationDate];
  [recordingCopy length];
  v6 = v5;
  uuid = [recordingCopy uuid];
  deletionDate = [recordingCopy deletionDate];
  audioFutureNeedsDownload = [recordingCopy audioFutureNeedsDownload];
  favorite = [recordingCopy favorite];
  enhanced = [recordingCopy enhanced];
  transcriptionContentExists = [recordingCopy transcriptionContentExists];
  composedAssetIsSpatialRecording = [recordingCopy composedAssetIsSpatialRecording];
  manuallyRenamed = [recordingCopy manuallyRenamed];

  BYTE3(v17) = manuallyRenamed;
  BYTE2(v17) = composedAssetIsSpatialRecording;
  BYTE1(v17) = transcriptionContentExists;
  LOBYTE(v17) = enhanced;
  v15 = [RCRecordingDisplayModel recordingDisplayModelWithTitle:"recordingDisplayModelWithTitle:creationDate:duration:UUID:recentlyDeleted:representsDownloadingFile:isFavorite:isEnhanced:hasTranscription:isSpatialRecording:wasManuallyRenamed:" creationDate:title duration:creationDate UUID:uuid recentlyDeleted:deletionDate != 0 representsDownloadingFile:audioFutureNeedsDownload isFavorite:favorite isEnhanced:v6 hasTranscription:v17 isSpatialRecording:? wasManuallyRenamed:?];

  return v15;
}

+ (id)recordingDisplayModelForUUID:(id)d
{
  dCopy = d;
  v4 = +[RCApplicationModel sharedApplicationModel];
  v5 = [v4 recordingWithUniqueID:dCopy];

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
  title = [(RCRecordingDisplayModel *)self title];
  uUID = [(RCRecordingDisplayModel *)self UUID];
  v5 = [NSString stringWithFormat:@"Title: %@, UUID: %@", title, uUID];

  return v5;
}

+ (RCRecordingDisplayModel)recordingDisplayModelWithTitle:(id)title creationDate:(id)date duration:(double)duration UUID:(id)d recentlyDeleted:(BOOL)deleted representsDownloadingFile:(BOOL)file isFavorite:(BOOL)favorite isEnhanced:(BOOL)self0 hasTranscription:(BOOL)self1 isSpatialRecording:(BOOL)self2 wasManuallyRenamed:(BOOL)self3
{
  favoriteCopy = favorite;
  fileCopy = file;
  deletedCopy = deleted;
  enhancedCopy2 = enhanced;
  titleCopy = title;
  dateCopy = date;
  dCopy = d;
  v23 = fileCopy;
  v24 = dCopy;
  if (!dCopy)
  {
    v29 = titleCopy;
    v25 = v23;
    v26 = OSLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1001BA68C(v26);
    }

    v23 = v25;
    titleCopy = v29;
    enhancedCopy2 = enhanced;
  }

  v27 = objc_opt_new();
  [v27 setTitle:titleCopy];
  [v27 setCreationDate:dateCopy];
  [v27 setDuration:duration];
  [v27 setUUID:v24];
  [v27 setRecentlyDeleted:deletedCopy];
  [v27 setIsFavorite:favoriteCopy];
  [v27 setIsEnhanced:enhancedCopy2];
  [v27 setHasTranscription:transcription];
  [v27 setIsSpatialRecording:recording];
  [v27 setRepresentsDownloadingFile:v23];
  [v27 setWasManuallyRenamed:renamed];

  return v27;
}

@end