@interface EKAlarmSemanticIdentifierGenerator
+ (id)_stringForAlarmProximity:(int64_t)proximity;
+ (id)semanticIdentifierForAlarm:(id)alarm;
+ (id)semanticIdentifierForAlarmIsDefault:(BOOL)default absoluteDate:(id)date relativeOffset:(id)offset emailAddress:(id)address url:(id)url;
@end

@implementation EKAlarmSemanticIdentifierGenerator

+ (id)semanticIdentifierForAlarm:(id)alarm
{
  alarmCopy = alarm;
  if ([alarmCopy isDefaultAlarm])
  {
    v4 = @"kDefaultAlarmSemanticIdentifier";
  }

  else
  {
    absoluteDate = [alarmCopy absoluteDate];
    v6 = MEMORY[0x1E696AD98];
    [alarmCopy relativeOffset];
    v7 = [v6 numberWithDouble:?];
    v4 = [EKAlarmSemanticIdentifierGenerator semanticIdentifierForAlarmIsDefault:0 absoluteDate:absoluteDate relativeOffset:v7 emailAddress:0 url:0];
  }

  return v4;
}

+ (id)semanticIdentifierForAlarmIsDefault:(BOOL)default absoluteDate:(id)date relativeOffset:(id)offset emailAddress:(id)address url:(id)url
{
  dateCopy = date;
  offsetCopy = offset;
  addressCopy = address;
  urlCopy = url;
  if (default)
  {
    v15 = @"kDefaultAlarmSemanticIdentifier";
  }

  else
  {
    string = [MEMORY[0x1E696AD60] string];
    if (dateCopy)
    {
      [dateCopy timeIntervalSinceReferenceDate];
      [string appendFormat:@"ABSOLUTE=%f;", v17];
    }

    else
    {
      [offsetCopy doubleValue];
      [string appendFormat:@"RELATIVE=%f;", v18];
    }

    if (addressCopy)
    {
      [string appendFormat:@"EMAIL=%@;", addressCopy];
    }

    absoluteString = [urlCopy absoluteString];

    if (absoluteString)
    {
      absoluteString2 = [urlCopy absoluteString];
      [string appendFormat:@"URL=%@;", absoluteString2];
    }

    v15 = [string copy];
  }

  return v15;
}

+ (id)_stringForAlarmProximity:(int64_t)proximity
{
  if ((proximity - 1) > 3)
  {
    return @"None";
  }

  else
  {
    return off_1E77FE250[proximity - 1];
  }
}

@end