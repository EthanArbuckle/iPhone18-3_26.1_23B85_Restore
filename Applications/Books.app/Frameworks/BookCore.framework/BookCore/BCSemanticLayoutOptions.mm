@interface BCSemanticLayoutOptions
+ (id)current;
+ (id)fromJSON:(id)n;
+ (id)logger;
- (id)asJSON;
- (void)reset;
- (void)save;
- (void)setValuesFromDictionary:(id)dictionary;
@end

@implementation BCSemanticLayoutOptions

+ (id)current
{
  if (qword_3422B0 != -1)
  {
    sub_1E66DC();
  }

  v3 = qword_3422B8;

  return v3;
}

+ (id)logger
{
  if (qword_3422C8 != -1)
  {
    sub_1E66F0();
  }

  v3 = qword_3422C0;

  return v3;
}

- (void)reset
{
  [(BCSemanticLayoutOptions *)self setValuesFromDictionary:&__NSDictionary0__struct];

  [(BCSemanticLayoutOptions *)self save];
}

- (void)save
{
  v4 = +[NSUserDefaults standardUserDefaults];
  asJSON = [(BCSemanticLayoutOptions *)self asJSON];
  [v4 setObject:asJSON forKey:@"kBKSemanticLayoutOptions_v3"];
}

+ (id)fromJSON:(id)n
{
  nCopy = n;
  v5 = objc_opt_new();
  v6 = [nCopy dataUsingEncoding:4];

  if (v6)
  {
    v11 = 0;
    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v11];
    v8 = v11;
    if (v8)
    {

      logger = [self logger];
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1E6704(v8, logger);
      }

      v7 = &__NSDictionary0__struct;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  [v5 setValuesFromDictionary:v7];

  return v5;
}

- (void)setValuesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [(BCSemanticLayoutOptions *)self setFontScale:sub_66774(dictionaryCopy, @"kBKSemanticLayoutOption_FontScale", 16.0)];
  [(BCSemanticLayoutOptions *)self setSideInsetFactor:sub_66774(dictionaryCopy, @"kBKSemanticLayoutOption_SideInsetFactor", 0.085)];
  [(BCSemanticLayoutOptions *)self setMinCPLForSpreadPages:sub_66774(dictionaryCopy, @"kBKSemanticLayoutOption_MinCPLForSpreadPages", 90.0)];
  [(BCSemanticLayoutOptions *)self setContentInsetTopSmall:sub_66774(dictionaryCopy, @"kBKSemanticLayoutOption_ContentInsetTopSmall", 44.0)];
  [(BCSemanticLayoutOptions *)self setContentInsetTopMedium:sub_66774(dictionaryCopy, @"kBKSemanticLayoutOption_ContentInsetTopMedium", 60.0)];
  [(BCSemanticLayoutOptions *)self setContentInsetTopLarge:sub_66774(dictionaryCopy, @"kBKSemanticLayoutOption_ContentInsetTopLarge", 96.0)];
  [(BCSemanticLayoutOptions *)self setScrubberWidth:sub_66774(dictionaryCopy, @"kBKSemanticLayoutOption_ScrubberWidth", 44.0)];
  v5 = sub_66774(dictionaryCopy, @"kBKSemanticLayoutOption_ScrubberHeight", 28.0);

  [(BCSemanticLayoutOptions *)self setScrubberHeight:v5];
}

- (id)asJSON
{
  v18[0] = @"kBKSemanticLayoutOption_FontScale";
  [(BCSemanticLayoutOptions *)self fontScale];
  v16 = [NSNumber numberWithDouble:?];
  v19[0] = v16;
  v18[1] = @"kBKSemanticLayoutOption_SideInsetFactor";
  [(BCSemanticLayoutOptions *)self sideInsetFactor];
  v15 = [NSNumber numberWithDouble:?];
  v19[1] = v15;
  v18[2] = @"kBKSemanticLayoutOption_MinCPLForSpreadPages";
  [(BCSemanticLayoutOptions *)self minCPLForSpreadPages];
  v3 = [NSNumber numberWithDouble:?];
  v19[2] = v3;
  v18[3] = @"kBKSemanticLayoutOption_ContentInsetTopSmall";
  [(BCSemanticLayoutOptions *)self contentInsetTopSmall];
  v4 = [NSNumber numberWithDouble:?];
  v19[3] = v4;
  v18[4] = @"kBKSemanticLayoutOption_ContentInsetTopMedium";
  [(BCSemanticLayoutOptions *)self contentInsetTopMedium];
  v5 = [NSNumber numberWithDouble:?];
  v19[4] = v5;
  v18[5] = @"kBKSemanticLayoutOption_ContentInsetTopLarge";
  [(BCSemanticLayoutOptions *)self contentInsetTopLarge];
  v6 = [NSNumber numberWithDouble:?];
  v19[5] = v6;
  v18[6] = @"kBKSemanticLayoutOption_ScrubberWidth";
  [(BCSemanticLayoutOptions *)self scrubberWidth];
  v7 = [NSNumber numberWithDouble:?];
  v19[6] = v7;
  v18[7] = @"kBKSemanticLayoutOption_ScrubberHeight";
  [(BCSemanticLayoutOptions *)self scrubberHeight];
  v8 = [NSNumber numberWithDouble:?];
  v19[7] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:8];
  v17 = 0;
  v10 = [NSJSONSerialization dataWithJSONObject:v9 options:0 error:&v17];
  v11 = v17;

  if ([v10 length])
  {
    v12 = [[NSString alloc] initWithData:v10 encoding:4];
  }

  else
  {
    logger = [objc_opt_class() logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      sub_1E6704(v11, logger);
    }

    v12 = 0;
  }

  return v12;
}

@end