@interface SPError
+ (id)errorWithCode:(int64_t)code;
+ (id)errorWithCode:(int64_t)code additionalDescription:(id)description;
@end

@implementation SPError

+ (id)errorWithCode:(int64_t)code
{
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  if (code > 0x1C)
  {
    v5 = @"SPErrorUnknownMessage";
  }

  else
  {
    v5 = *(&off_100046200 + code);
  }

  v6 = spUtils_localizedStringForSystemLanguage(v5, @"/System/Library/Frameworks/WatchKit.framework");
  if (v6)
  {
    v5 = v6;
  }

  [v4 setObject:v5 forKeyedSubscript:NSLocalizedDescriptionKey];
  v7 = [NSError errorWithDomain:@"com.apple.watchkit.errors" code:code userInfo:v4];

  return v7;
}

+ (id)errorWithCode:(int64_t)code additionalDescription:(id)description
{
  descriptionCopy = description;
  v7 = [self errorWithCode:code];
  userInfo = [v7 userInfo];
  v9 = [userInfo mutableCopy];

  [v9 setObject:descriptionCopy forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
  domain = [v7 domain];
  v11 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v7 code], v9);

  return v11;
}

@end