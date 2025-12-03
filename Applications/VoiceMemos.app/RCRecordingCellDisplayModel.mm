@interface RCRecordingCellDisplayModel
+ (id)recordingDisplayModelForUUID:(id)d;
+ (id)recordingDisplayModelWithSavedRecording:(id)recording;
+ (id)recordingDisplayModelWithTitle:(id)title creationDate:(id)date duration:(double)duration UUID:(id)d recentlyDeleted:(BOOL)deleted representsDownloadingFile:(BOOL)file isFavorite:(BOOL)favorite isEnhanced:(BOOL)self0 hasTranscription:(BOOL)self1 hasMultipleTracks:(BOOL)self2 isSpatialRecording:(BOOL)self3 wasManuallyRenamed:(BOOL)self4;
@end

@implementation RCRecordingCellDisplayModel

+ (id)recordingDisplayModelWithTitle:(id)title creationDate:(id)date duration:(double)duration UUID:(id)d recentlyDeleted:(BOOL)deleted representsDownloadingFile:(BOOL)file isFavorite:(BOOL)favorite isEnhanced:(BOOL)self0 hasTranscription:(BOOL)self1 hasMultipleTracks:(BOOL)self2 isSpatialRecording:(BOOL)self3 wasManuallyRenamed:(BOOL)self4
{
  fileCopy = file;
  favoriteCopy = favorite;
  deletedCopy = deleted;
  enhancedCopy2 = enhanced;
  titleCopy = title;
  dateCopy = date;
  dCopy = d;
  v23 = fileCopy;
  v24 = favoriteCopy;
  v25 = dCopy;
  if (!dCopy)
  {
    HIDWORD(v29) = enhanced;
    v30 = titleCopy;
    v26 = OSLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1001B70AC(v26);
    }

    v24 = favoriteCopy;
    v23 = fileCopy;
    titleCopy = v30;
    enhancedCopy2 = enhanced;
  }

  BYTE3(v29) = renamed;
  BYTE2(v29) = recording;
  BYTE1(v29) = transcription;
  LOBYTE(v29) = enhancedCopy2;
  v27 = [self recordingDisplayModelWithTitle:titleCopy creationDate:dateCopy duration:v25 UUID:deletedCopy recentlyDeleted:v23 representsDownloadingFile:v24 isFavorite:duration isEnhanced:v29 hasTranscription:? isSpatialRecording:? wasManuallyRenamed:?];
  [v27 setHasMultipleTracks:tracks];

  return v27;
}

+ (id)recordingDisplayModelWithSavedRecording:(id)recording
{
  recordingCopy = recording;
  title = [recordingCopy title];
  creationDate = [recordingCopy creationDate];
  [recordingCopy length];
  v5 = v4;
  uuid = [recordingCopy uuid];
  deletionDate = [recordingCopy deletionDate];
  audioFutureNeedsDownload = [recordingCopy audioFutureNeedsDownload];
  favorite = [recordingCopy favorite];
  enhanced = [recordingCopy enhanced];
  transcriptionContentExists = [recordingCopy transcriptionContentExists];
  composedAssetHasMultipleTracks = [recordingCopy composedAssetHasMultipleTracks];
  composedAssetIsSpatialRecording = [recordingCopy composedAssetIsSpatialRecording];
  manuallyRenamed = [recordingCopy manuallyRenamed];

  BYTE4(v17) = manuallyRenamed;
  BYTE3(v17) = composedAssetIsSpatialRecording;
  BYTE2(v17) = composedAssetHasMultipleTracks;
  BYTE1(v17) = transcriptionContentExists;
  LOBYTE(v17) = enhanced;
  v15 = [RCRecordingCellDisplayModel recordingDisplayModelWithTitle:"recordingDisplayModelWithTitle:creationDate:duration:UUID:recentlyDeleted:representsDownloadingFile:isFavorite:isEnhanced:hasTranscription:hasMultipleTracks:isSpatialRecording:wasManuallyRenamed:" creationDate:title duration:creationDate UUID:uuid recentlyDeleted:deletionDate != 0 representsDownloadingFile:audioFutureNeedsDownload isFavorite:favorite isEnhanced:v5 hasTranscription:v17 hasMultipleTracks:? isSpatialRecording:? wasManuallyRenamed:?];

  return v15;
}

+ (id)recordingDisplayModelForUUID:(id)d
{
  dCopy = d;
  v4 = +[RCApplicationModel sharedApplicationModel];
  v5 = [v4 recordingWithUniqueID:dCopy];

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