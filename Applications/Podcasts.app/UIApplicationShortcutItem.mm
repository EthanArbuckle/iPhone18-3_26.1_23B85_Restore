@interface UIApplicationShortcutItem
+ (id)mt_shortcutItemForStation:(id)station;
@end

@implementation UIApplicationShortcutItem

+ (id)mt_shortcutItemForStation:(id)station
{
  stationCopy = station;
  nextEpisode = [stationCopy nextEpisode];
  uuid = [stationCopy uuid];
  if ([uuid length])
  {
    uuid2 = [nextEpisode uuid];
    v7 = [uuid2 length];

    if (v7)
    {
      v19[0] = @"stationUuid";
      uuid3 = [stationCopy uuid];
      v19[1] = @"episodeUuid";
      v20[0] = uuid3;
      uuid4 = [nextEpisode uuid];
      v20[1] = uuid4;
      v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];

      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"PLAY_STATION_TITLE" value:&stru_1004F3018 table:0];
      title = [stationCopy title];
      v14 = [NSString localizedStringWithFormat:v12, title];

      v15 = [UIApplicationShortcutIcon iconWithSystemImageName:@"dot.radiowaves.left.and.right"];
      v16 = [UIApplicationShortcutItem alloc];
      bestTitle = [nextEpisode bestTitle];
      v7 = [v16 initWithType:@"kMTShortcutItemTypeStation" localizedTitle:v14 localizedSubtitle:bestTitle icon:v15 userInfo:v10];
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

@end