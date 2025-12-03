@interface AMLPhotosShareMetrics
+ (double)shareInformationForPhotoId:(id)id startTime:(id)time endTime:(id)endTime interactionStorePath:(id)path;
+ (id)logger;
@end

@implementation AMLPhotosShareMetrics

+ (id)logger
{
  if (qword_27CD3DF90 != -1)
  {
    sub_21AF0906C();
  }

  v3 = qword_27CD3DF98;

  return v3;
}

+ (double)shareInformationForPhotoId:(id)id startTime:(id)time endTime:(id)endTime interactionStorePath:(id)path
{
  v9 = MEMORY[0x277CCA970];
  pathCopy = path;
  endTimeCopy = endTime;
  timeCopy = time;
  idCopy = id;
  v14 = [[v9 alloc] initWithStartDate:timeCopy endDate:endTimeCopy];

  v15 = objc_opt_new();
  v16 = [v15 shareInformationForPhotoId:idCopy dateInterval:v14 interactionStoreDB:pathCopy];

  v17 = +[AMLPhotosShareMetrics logger];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_21AF090C8(v16, v17);
  }

  interactionCount = [v16 interactionCount];
  v19 = interactionCount / [v16 totalInteractionCount];

  return v19;
}

@end