@interface BKAudiobookBufferInfo
+ (id)infoWithAudiobookPositions:(id)a3 audiobookDurations:(id)a4 chapterPositions:(id)a5 chapterDurations:(id)a6;
@end

@implementation BKAudiobookBufferInfo

+ (id)infoWithAudiobookPositions:(id)a3 audiobookDurations:(id)a4 chapterPositions:(id)a5 chapterDurations:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setAudiobookPositions:v12];

  [v13 setAudiobookDurations:v11];
  [v13 setChapterPositions:v10];

  [v13 setChapterDurations:v9];

  return v13;
}

@end