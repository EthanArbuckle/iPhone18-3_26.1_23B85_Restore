@interface ActuationTone
+ (id)stringFromToneType:(unint64_t)a3;
+ (unint64_t)toneTypeFromString:(id)a3;
- (ActuationTone)initWithDictionary:(id)a3;
- (NSDictionary)dictionary;
@end

@implementation ActuationTone

+ (unint64_t)toneTypeFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  if (([v3 isEqualToString:@"Sine"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"Square"])
    {
      v5 = 2;
      goto LABEL_9;
    }

    if ([v4 isEqualToString:@"Sawtooth"])
    {
      v5 = 3;
      goto LABEL_9;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = 1;
LABEL_9:

  return v5;
}

+ (id)stringFromToneType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"None";
  }

  else
  {
    return off_109130[a3 - 1];
  }
}

- (ActuationTone)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ActuationTone;
  v5 = [(ActuationTone *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"Type"];
    v7 = [v4 objectForKeyedSubscript:@"Amplitude"];
    v8 = [v4 objectForKeyedSubscript:@"DurationMS"];
    v9 = [v4 objectForKeyedSubscript:@"DelayMS"];
    v10 = [v4 objectForKeyedSubscript:@"FrequencykHz"];
    v11 = v10;
    if (!v6 || !v8 || !v7 || !v9 || !v10)
    {

      v16 = 0;
      goto LABEL_10;
    }

    v5->_type = [ActuationTone toneTypeFromString:v6];
    [v7 floatValue];
    v5->_amplitude = v12;
    [v8 floatValue];
    v5->_duration = v13;
    [v9 floatValue];
    v5->_delay = v14;
    [v11 floatValue];
    v5->_frequency = v15;
  }

  v16 = v5;
LABEL_10:

  return v16;
}

- (NSDictionary)dictionary
{
  v10[0] = @"Type";
  v3 = [ActuationTone stringFromToneType:[(ActuationTone *)self type]];
  v11[0] = v3;
  v10[1] = @"Amplitude";
  [(ActuationTone *)self amplitude];
  v4 = [NSNumber numberWithFloat:?];
  v11[1] = v4;
  v10[2] = @"DurationMS";
  [(ActuationTone *)self duration];
  v5 = [NSNumber numberWithFloat:?];
  v11[2] = v5;
  v10[3] = @"DelayMS";
  [(ActuationTone *)self delay];
  v6 = [NSNumber numberWithFloat:?];
  v11[3] = v6;
  v10[4] = @"FrequencykHz";
  [(ActuationTone *)self frequency];
  v7 = [NSNumber numberWithFloat:?];
  v11[4] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

@end