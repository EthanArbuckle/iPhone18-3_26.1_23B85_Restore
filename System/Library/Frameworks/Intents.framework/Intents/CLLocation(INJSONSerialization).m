@interface CLLocation(INJSONSerialization)
+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:;
@end

@implementation CLLocation(INJSONSerialization)

- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setObject:v6 forKey:@"coordinate"];
  v7 = MEMORY[0x1E696AD98];
  [a1 coordinate];
  v8 = [v7 numberWithDouble:?];
  v9 = [v4 encodeObject:v8];
  [v5 setValue:v9 forKeyPath:@"coordinate.latitude"];

  v10 = MEMORY[0x1E696AD98];
  [a1 coordinate];
  v12 = [v10 numberWithDouble:v11];
  v13 = [v4 encodeObject:v12];
  [v5 setValue:v13 forKeyPath:@"coordinate.longitude"];

  [a1 altitude];
  if (v14 < 0.0)
  {
    [v5 if_setObjectIfNonNil:0 forKey:@"altitude"];
  }

  else
  {
    v15 = MEMORY[0x1E696AD98];
    [a1 altitude];
    v16 = [v15 numberWithDouble:?];
    v17 = [v4 encodeObject:v16];
    [v5 if_setObjectIfNonNil:v17 forKey:@"altitude"];
  }

  [a1 horizontalAccuracy];
  if (v18 < 0.0)
  {
    [v5 if_setObjectIfNonNil:0 forKey:@"horizontalAccuracy"];
  }

  else
  {
    v19 = MEMORY[0x1E696AD98];
    [a1 horizontalAccuracy];
    v20 = [v19 numberWithDouble:?];
    v21 = [v4 encodeObject:v20];
    [v5 if_setObjectIfNonNil:v21 forKey:@"horizontalAccuracy"];
  }

  [a1 verticalAccuracy];
  if (v22 < 0.0)
  {
    [v5 if_setObjectIfNonNil:0 forKey:@"verticalAccuracy"];
  }

  else
  {
    v23 = MEMORY[0x1E696AD98];
    [a1 verticalAccuracy];
    v24 = [v23 numberWithDouble:?];
    v25 = [v4 encodeObject:v24];
    [v5 if_setObjectIfNonNil:v25 forKey:@"verticalAccuracy"];
  }

  [a1 course];
  if (v26 < 0.0)
  {
    [v5 if_setObjectIfNonNil:0 forKey:@"course"];
  }

  else
  {
    v27 = MEMORY[0x1E696AD98];
    [a1 course];
    v28 = [v27 numberWithDouble:?];
    v29 = [v4 encodeObject:v28];
    [v5 if_setObjectIfNonNil:v29 forKey:@"course"];
  }

  [a1 speed];
  if (v30 < 0.0)
  {
    [v5 if_setObjectIfNonNil:0 forKey:@"speed"];
  }

  else
  {
    v31 = MEMORY[0x1E696AD98];
    [a1 speed];
    v32 = [v31 numberWithDouble:?];
    v33 = [v4 encodeObject:v32];
    [v5 if_setObjectIfNonNil:v33 forKey:@"speed"];
  }

  v34 = [v4 _storedConfiguration];
  v35 = [v34 locationIncludesTimestamp];

  if (v35)
  {
    v36 = [a1 timestamp];
    v37 = [v4 encodeObject:v36];
    [v5 if_setObjectIfNonNil:v37 forKey:@"timestamp"];
  }

  return v5;
}

+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKeyedSubscript:@"coordinate"];
      if (v10)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v57 = 0;
          v56 = v9;
          goto LABEL_23;
        }

        v12 = objc_opt_class();
        v13 = [v9 valueForKeyPath:@"coordinate.latitude"];
        v14 = [v7 decodeObjectOfClass:v12 from:v13];
        [v14 doubleValue];
        v16 = v15;

        v17 = objc_opt_class();
        v18 = [v9 valueForKeyPath:@"coordinate.longitude"];
        v19 = [v7 decodeObjectOfClass:v17 from:v18];
        [v19 doubleValue];
        v21 = v20;

        v22 = objc_opt_class();
        v23 = [v9 valueForKeyPath:@"altitude"];
        v24 = [v7 decodeObjectOfClass:v22 from:v23];
        [v24 doubleValue];
        v26 = v25;

        v27 = objc_opt_class();
        v28 = [v9 valueForKeyPath:@"horizontalAccuracy"];
        v29 = [v7 decodeObjectOfClass:v27 from:v28];
        v30 = v29;
        if (!v29)
        {
          v29 = &unk_1F02D7EE8;
        }

        [v29 doubleValue];
        v32 = v31;

        v33 = objc_opt_class();
        v34 = [v9 valueForKeyPath:@"verticalAccuracy"];
        v35 = [v7 decodeObjectOfClass:v33 from:v34];
        v36 = v35;
        if (!v35)
        {
          v35 = &unk_1F02D7EE8;
        }

        [v35 doubleValue];
        v38 = v37;

        v39 = objc_opt_class();
        v40 = [v9 valueForKeyPath:@"course"];
        v41 = [v7 decodeObjectOfClass:v39 from:v40];
        v42 = v41;
        if (!v41)
        {
          v41 = &unk_1F02D7EE8;
        }

        [v41 doubleValue];
        v44 = v43;

        v45 = objc_opt_class();
        v46 = [v9 valueForKeyPath:@"speed"];
        v47 = [v7 decodeObjectOfClass:v45 from:v46];
        v48 = v47;
        if (!v47)
        {
          v47 = &unk_1F02D7EE8;
        }

        [v47 doubleValue];
        v50 = v49;

        v51 = objc_opt_class();
        v52 = [v9 valueForKeyPath:@"timestamp"];
        v53 = [v7 decodeObjectOfClass:v51 from:v52];
        v54 = v53;
        if (v53)
        {
          v55 = v53;
        }

        else
        {
          v55 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
        }

        v10 = v55;

        v58 = objc_alloc(MEMORY[0x1E6985C40]);
        v59 = CLLocationCoordinate2DMake(v16, v21);
        v57 = [v58 initWithCoordinate:v10 altitude:v59.latitude horizontalAccuracy:v59.longitude verticalAccuracy:v26 course:v32 speed:v38 timestamp:{v44, v50}];
      }

      else
      {
        v57 = 0;
      }

      v56 = v9;
    }

    else
    {
      v56 = 0;
      v57 = 0;
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
    v56 = 0;
    v57 = 0;
  }

LABEL_23:

  return v57;
}

@end