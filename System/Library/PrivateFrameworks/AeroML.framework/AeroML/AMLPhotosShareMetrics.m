@interface AMLPhotosShareMetrics
+ (double)shareInformationForPhotoId:(id)a3 startTime:(id)a4 endTime:(id)a5 interactionStorePath:(id)a6;
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

+ (double)shareInformationForPhotoId:(id)a3 startTime:(id)a4 endTime:(id)a5 interactionStorePath:(id)a6
{
  v9 = MEMORY[0x277CCA970];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[v9 alloc] initWithStartDate:v12 endDate:v11];

  v15 = objc_opt_new();
  v16 = [v15 shareInformationForPhotoId:v13 dateInterval:v14 interactionStoreDB:v10];

  v17 = +[AMLPhotosShareMetrics logger];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_21AF090C8(v16, v17);
  }

  v18 = [v16 interactionCount];
  v19 = v18 / [v16 totalInteractionCount];

  return v19;
}

@end