@interface MTPlaylistUtil
+ (id)stringForEmptyMessage:(id)message;
+ (id)stringForUnplayedCount:(int64_t)count;
+ (id)textForUnplayed:(id)unplayed;
+ (id)textForUnplayedShort:(id)short;
@end

@implementation MTPlaylistUtil

+ (id)stringForUnplayedCount:(int64_t)count
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (count == 1)
  {
    v6 = @"1 Unplayed";
    goto LABEL_5;
  }

  if (!count)
  {
    v6 = @"0 Unplayed";
LABEL_5:
    v7 = [v4 localizedStringForKey:v6 value:&stru_1004F3018 table:0];
    goto LABEL_7;
  }

  v8 = [v4 localizedStringForKey:@"%@ Unplayed" value:&stru_1004F3018 table:0];

  v9 = [NSNumber numberWithInteger:count];
  v10 = IMAccessibilityLocalizedNumber();
  v7 = [NSString stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v10];

  v5 = v8;
LABEL_7:

  return v7;
}

+ (id)stringForEmptyMessage:(id)message
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"EMPTY_STATION_IOS" value:&stru_1004F3018 table:0];

  return v4;
}

+ (id)textForUnplayed:(id)unplayed
{
  unplayedCopy = unplayed;
  episodes = [unplayedCopy episodes];
  v6 = [episodes count];

  if (v6 < 1)
  {
    v9 = +[NSBundle mainBundle];
    v8 = [v9 localizedStringForKey:@"STATIONS_LABEL_EMPTY" value:&stru_1004F3018 table:0];
  }

  else
  {
    [unplayedCopy totalDuration];
    if (v7 == 0.0)
    {
      v8 = [self textForUnplayedShort:unplayedCopy];
      goto LABEL_10;
    }

    v10 = v7;
    v11 = +[NSBundle mainBundle];
    v12 = v11;
    if (v6 == 1)
    {
      v13 = @"STATIONS_COUNT_EPISODES_SINGULAR_FORMAT";
    }

    else
    {
      v13 = @"STATIONS_COUNT_EPISODES_FORMAT";
    }

    v9 = [v11 localizedStringForKey:v13 value:&stru_1004F3018 table:0];

    v14 = [NSString prettyStringWithDuration:v10];
    v15 = [NSNumber numberWithInteger:v6];
    v16 = IMAccessibilityLocalizedNumber();

    v8 = [NSString stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@ %@" error:0, v16, v14];
  }

LABEL_10:

  return v8;
}

+ (id)textForUnplayedShort:(id)short
{
  episodes = [short episodes];
  v4 = [episodes count];

  if (v4 < 1)
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"STATIONS_LABEL_EMPTY";
    goto LABEL_5;
  }

  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4 == 1)
  {
    v7 = @"1 Episode";
LABEL_5:
    v8 = [v5 localizedStringForKey:v7 value:&stru_1004F3018 table:0];
    goto LABEL_7;
  }

  v9 = [v5 localizedStringForKey:@"%@ Episodes" value:&stru_1004F3018 table:0];

  v10 = [NSNumber numberWithInteger:v4];
  v11 = IMAccessibilityLocalizedNumber();

  v8 = [NSString stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v11];

  v6 = v9;
LABEL_7:

  return v8;
}

@end