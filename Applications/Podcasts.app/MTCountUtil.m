@interface MTCountUtil
+ (id)stringForEpisodeCount:(int64_t)a3 titleCase:(BOOL)a4;
+ (id)stringForNewEpisodeCount:(int64_t)a3 titleCase:(BOOL)a4;
+ (id)stringForUnplayedEpisodeCount:(int64_t)a3 titleCase:(BOOL)a4;
@end

@implementation MTCountUtil

+ (id)stringForEpisodeCount:(int64_t)a3 titleCase:(BOOL)a4
{
  v4 = a4;
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (a3 == 1)
  {
    if (v4)
    {
      v8 = @"1 Episode";
    }

    else
    {
      v8 = @"1 episode";
    }
  }

  else
  {
    if (a3)
    {
      if (v4)
      {
        v9 = @"%@ Episodes";
      }

      else
      {
        v9 = @"%@ episodes";
      }

      v10 = [v6 localizedStringForKey:v9 value:&stru_1004F3018 table:0];

      v11 = [NSNumber numberWithInteger:a3];
      v12 = IMAccessibilityLocalizedNumber();
      v13 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:0, v12];

      v7 = v10;
      goto LABEL_14;
    }

    if (v4)
    {
      v8 = @"0 Episodes";
    }

    else
    {
      v8 = @"0 episodes";
    }
  }

  v13 = [v6 localizedStringForKey:v8 value:&stru_1004F3018 table:0];
LABEL_14:

  return v13;
}

+ (id)stringForNewEpisodeCount:(int64_t)a3 titleCase:(BOOL)a4
{
  v4 = a4;
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (a3 == 1)
  {
    if (v4)
    {
      v8 = @"1 New Episode";
    }

    else
    {
      v8 = @"1 new episode";
    }
  }

  else
  {
    if (a3)
    {
      if (v4)
      {
        v9 = @"%@ New Episodes";
      }

      else
      {
        v9 = @"%@ new episodes";
      }

      v10 = [v6 localizedStringForKey:v9 value:&stru_1004F3018 table:0];

      v11 = [NSNumber numberWithInteger:a3];
      v12 = IMAccessibilityLocalizedNumber();
      v13 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:0, v12];

      v7 = v10;
      goto LABEL_14;
    }

    if (v4)
    {
      v8 = @"0 New Episodes";
    }

    else
    {
      v8 = @"0 new episodes";
    }
  }

  v13 = [v6 localizedStringForKey:v8 value:&stru_1004F3018 table:0];
LABEL_14:

  return v13;
}

+ (id)stringForUnplayedEpisodeCount:(int64_t)a3 titleCase:(BOOL)a4
{
  v4 = a4;
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (a3 == 1)
  {
    if (v4)
    {
      v8 = @"1 Unplayed Episode";
    }

    else
    {
      v8 = @"1 unplayed episode";
    }
  }

  else
  {
    if (a3)
    {
      if (v4)
      {
        v9 = @"%@ Unplayed Episodes";
      }

      else
      {
        v9 = @"%@ unplayed episodes";
      }

      v10 = [v6 localizedStringForKey:v9 value:&stru_1004F3018 table:0];

      v11 = [NSNumber numberWithInteger:a3];
      v12 = IMAccessibilityLocalizedNumber();
      v13 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:0, v12];

      v7 = v10;
      goto LABEL_14;
    }

    if (v4)
    {
      v8 = @"0 Unplayed Episodes";
    }

    else
    {
      v8 = @"0 unplayed episodes";
    }
  }

  v13 = [v6 localizedStringForKey:v8 value:&stru_1004F3018 table:0];
LABEL_14:

  return v13;
}

@end