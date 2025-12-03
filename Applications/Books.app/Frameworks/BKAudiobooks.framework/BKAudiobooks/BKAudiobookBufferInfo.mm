@interface BKAudiobookBufferInfo
+ (id)infoWithAudiobookPositions:(id)positions audiobookDurations:(id)durations chapterPositions:(id)chapterPositions chapterDurations:(id)chapterDurations;
@end

@implementation BKAudiobookBufferInfo

+ (id)infoWithAudiobookPositions:(id)positions audiobookDurations:(id)durations chapterPositions:(id)chapterPositions chapterDurations:(id)chapterDurations
{
  chapterDurationsCopy = chapterDurations;
  chapterPositionsCopy = chapterPositions;
  durationsCopy = durations;
  positionsCopy = positions;
  v13 = objc_opt_new();
  [v13 setAudiobookPositions:positionsCopy];

  [v13 setAudiobookDurations:durationsCopy];
  [v13 setChapterPositions:chapterPositionsCopy];

  [v13 setChapterDurations:chapterDurationsCopy];

  return v13;
}

@end