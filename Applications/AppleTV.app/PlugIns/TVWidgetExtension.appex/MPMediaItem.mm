@interface MPMediaItem
- (BOOL)tvun_isExpired;
- (id)tvun_expirationDate;
- (id)tvun_expirationString;
@end

@implementation MPMediaItem

- (id)tvun_expirationDate
{
  v3 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyRentalPlaybackStartTime];
  if ([v3 isEqualToNumber:&off_10011E040])
  {
    v4 = 0;
  }

  else
  {
    [v3 doubleValue];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  v5 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyRentalPlaybackDuration];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    if ([v3 isEqualToNumber:&off_10011E040] & 1) != 0 || (objc_msgSend(v6, "isEqualToNumber:", &off_10011E040))
    {
      v7 = 0;
    }

    else
    {
      v8 = [NSDate alloc];
      [v6 doubleValue];
      v7 = [v8 initWithTimeInterval:v4 sinceDate:?];
    }
  }

  v9 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyRentalStartTime];
  if ([v9 isEqualToNumber:&off_10011E040])
  {
    v10 = 0;
  }

  else
  {
    [v9 doubleValue];
    v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  v11 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyRentalDuration];
  v12 = v11;
  if (v9)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 || v10 == 0;
  if (v14 || ([v9 isEqualToNumber:&off_10011E040] & 1) != 0 || objc_msgSend(v12, "isEqualToNumber:", &off_10011E040))
  {
    v15 = 0;
    v16 = 0;
    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v19 = [NSDate alloc];
  [v12 doubleValue];
  v20 = [v19 initWithTimeInterval:v10 sinceDate:?];
  v15 = v20;
  if (v7 && v20)
  {
    v17 = [v7 earlierDate:v20];
    goto LABEL_24;
  }

  if (v7)
  {
LABEL_23:
    v17 = v7;
LABEL_24:
    v16 = v17;
    goto LABEL_25;
  }

  if (v20)
  {
    v17 = v20;
    v15 = v17;
    goto LABEL_24;
  }

  v16 = 0;
LABEL_25:

  return v16;
}

- (BOOL)tvun_isExpired
{
  tvun_expirationDate = [(MPMediaItem *)self tvun_expirationDate];
  if (tvun_expirationDate)
  {
    v3 = +[NSDate date];
    v4 = [tvun_expirationDate compare:v3] != 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)tvun_expirationString
{
  tvun_expirationDate = [(MPMediaItem *)self tvun_expirationDate];
  v3 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v4 = +[NSDate date];
  v5 = [v3 components:112 fromDate:v4 toDate:tvun_expirationDate options:0];

  v6 = [v5 day];
  hour = [v5 hour];
  minute = [v5 minute];
  if (v6 > 1)
  {
    v9 = @"COUNT_DAYS";
LABEL_13:
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:v9 value:&stru_10011D978 table:0];
    v13 = [NSString localizedStringWithFormat:v12, v6];

    goto LABEL_14;
  }

  if (v6 == 1 || hour >= 1)
  {
    v6 = hour + 24 * v6;
    v9 = @"COUNT_HOURS";
    goto LABEL_13;
  }

  if ((minute & 0x8000000000000000) == 0)
  {
    if (minute <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = minute;
    }

    v9 = @"COUNT_MINUTES";
    goto LABEL_13;
  }

  v13 = 0;
LABEL_14:

  return v13;
}

@end