@interface NSDateComponents(INJSONSerialization)
+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:;
@end

@implementation NSDateComponents(INJSONSerialization)

- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  if ([a1 year] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 if_setObjectIfNonNil:0 forKey:@"year"];
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "year")}];
    [v6 if_setObjectIfNonNil:v7 forKey:@"year"];
  }

  if ([a1 month] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 if_setObjectIfNonNil:0 forKey:@"month"];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "month")}];
    [v6 if_setObjectIfNonNil:v8 forKey:@"month"];
  }

  if ([a1 day] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 if_setObjectIfNonNil:0 forKey:@"day"];
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "day")}];
    [v6 if_setObjectIfNonNil:v9 forKey:@"day"];
  }

  if ([a1 weekday] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 if_setObjectIfNonNil:0 forKey:@"weekday"];
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "weekday")}];
    [v6 if_setObjectIfNonNil:v10 forKey:@"weekday"];
  }

  if ([a1 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 if_setObjectIfNonNil:0 forKey:@"hour"];
  }

  else
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "hour")}];
    [v6 if_setObjectIfNonNil:v11 forKey:@"hour"];
  }

  if ([a1 minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 if_setObjectIfNonNil:0 forKey:@"minute"];
  }

  else
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "minute")}];
    [v6 if_setObjectIfNonNil:v12 forKey:@"minute"];
  }

  if ([a1 second] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 if_setObjectIfNonNil:0 forKey:@"second"];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "second")}];
    [v6 if_setObjectIfNonNil:v13 forKey:@"second"];
  }

  if ([a1 nanosecond] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 if_setObjectIfNonNil:0 forKey:@"nanosecond"];
  }

  else
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "nanosecond")}];
    [v6 if_setObjectIfNonNil:v14 forKey:@"nanosecond"];
  }

  v15 = [a1 calendar];
  v16 = [v5 encodeObject:v15];
  [v6 if_setObjectIfNonNil:v16 forKey:@"calendar"];

  v17 = [a1 timeZone];
  v18 = [v5 encodeObject:v17];

  [v6 if_setObjectIfNonNil:v18 forKey:@"timeZone"];
  v19 = [v6 copy];

  return v19;
}

+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF10]);
    v11 = [v9 objectForKeyedSubscript:@"year"];
    [v10 if_setValueIfNonNil:v11 forKey:@"year"];

    v12 = [v9 objectForKeyedSubscript:@"month"];
    [v10 if_setValueIfNonNil:v12 forKey:@"month"];

    v13 = [v9 objectForKeyedSubscript:@"day"];
    [v10 if_setValueIfNonNil:v13 forKey:@"day"];

    v14 = [v9 objectForKeyedSubscript:@"weekday"];
    [v10 if_setValueIfNonNil:v14 forKey:@"weekday"];

    v15 = [v9 objectForKeyedSubscript:@"hour"];
    [v10 if_setValueIfNonNil:v15 forKey:@"hour"];

    v16 = [v9 objectForKeyedSubscript:@"minute"];
    [v10 if_setValueIfNonNil:v16 forKey:@"minute"];

    v17 = [v9 objectForKeyedSubscript:@"second"];
    [v10 if_setValueIfNonNil:v17 forKey:@"second"];

    v18 = [v9 objectForKeyedSubscript:@"nanosecond"];
    [v10 if_setValueIfNonNil:v18 forKey:@"nanosecond"];

    v19 = objc_opt_class();
    v20 = [v9 objectForKeyedSubscript:@"calendar"];
    v21 = [v7 decodeObjectOfClass:v19 from:v20];
    [v10 if_setValueIfNonNil:v21 forKey:@"calendar"];

    v22 = objc_opt_class();
    v23 = [v9 objectForKeyedSubscript:@"timeZone"];
    v24 = [v7 decodeObjectOfClass:v22 from:v23];
    [v10 if_setValueIfNonNil:v24 forKey:@"timeZone"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end