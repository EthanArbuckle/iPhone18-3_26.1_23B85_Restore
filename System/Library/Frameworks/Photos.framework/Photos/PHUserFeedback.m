@interface PHUserFeedback
+ (id)_contextForMemoryFeature:(id)a3;
+ (id)_contextForSongIdentifiers:(id)a3;
+ (id)negativeAutonamingUserFeedbackForPerson:(id)a3 rejectedContactIdentifier:(id)a4;
+ (id)negativeAutonamingUserFeedbackForPerson:(id)a3 rejectedName:(id)a4;
+ (id)negativeUserFeedbackForMemoryFeature:(id)a3 existingFeedback:(id)a4;
+ (id)negativeUserFeedbackForMemoryMusicWithSongIdentifier:(id)a3 existingFeedback:(id)a4;
+ (id)negativeUserFeedbackForPerson:(id)a3;
+ (unint64_t)_feedbackFeatureForMemoryFeature:(id)a3;
+ (unint64_t)mergeFeedbackType:(unint64_t)a3 withOtherFeedbackType:(unint64_t)a4;
+ (unint64_t)sumFeedbackType:(unint64_t)a3 withOtherFeedbackType:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualWithoutUUID:(id)a3;
- (PHUserFeedback)initWithCoder:(id)a3;
- (PHUserFeedback)initWithType:(unint64_t)a3 feature:(unint64_t)a4 context:(id)a5;
- (PHUserFeedback)initWithType:(unint64_t)a3 feature:(unint64_t)a4 context:(id)a5 lastModifiedDate:(id)a6;
- (PHUserFeedback)initWithUUID:(id)a3 type:(unint64_t)a4 feature:(unint64_t)a5 creationType:(unint64_t)a6 context:(id)a7 lastModifiedDate:(id)a8;
- (id)contextAsDateIntervalWithError:(id *)a3;
- (id)contextAsDateWithError:(id *)a3;
- (id)contextAsListOfSongIdentifiersWithError:(id *)a3;
- (id)contextAsLocationWithError:(id *)a3;
- (id)contextAsStringWithError:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHUserFeedback

- (id)description
{
  v3 = [(PHUserFeedback *)self type];
  if (v3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E75A8378[v3];
  }

  v5 = [(PHUserFeedback *)self feature];
  if (v5 > 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E75A8398[v5];
  }

  v7 = [(PHUserFeedback *)self creationType];
  if (v7 > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E75A83D0[v7];
  }

  v17.receiver = self;
  v17.super_class = PHUserFeedback;
  v9 = [(PHUserFeedback *)&v17 description];
  v10 = [(PHUserFeedback *)self uuid];
  v11 = [(PHUserFeedback *)self type];
  v12 = [(PHUserFeedback *)self feature];
  v13 = [(PHUserFeedback *)self lastModifiedDate];
  v14 = [(PHUserFeedback *)self context];
  v15 = [v9 stringByAppendingFormat:@" UUID: %@, type: %tu (%@), feature: %tu (%@), creationType: %@, lastModifiedDate: %@, context: %@", v10, v11, v4, v12, v6, v8, v13, v14];

  return v15;
}

- (PHUserFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PHUserFeedback *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHUserFeedbackPropertyUUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHUserFeedbackPropertyType"];
    v5->_type = [v8 unsignedIntegerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHUserFeedbackPropertyFeature"];
    v5->_feature = [v9 unsignedIntegerValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHUserFeedbackPropertyCreationType"];
    v5->_creationType = [v10 unsignedIntegerValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHUserFeedbackPropertyContext"];
    context = v5->_context;
    v5->_context = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHUserFeedbackPropertyLastModifiedDate"];
    lastModifiedDate = v5->_lastModifiedDate;
    v5->_lastModifiedDate = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v8 = a3;
  [v8 encodeObject:uuid forKey:@"PHUserFeedbackPropertyUUID"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  [v8 encodeObject:v5 forKey:@"PHUserFeedbackPropertyType"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_feature];
  [v8 encodeObject:v6 forKey:@"PHUserFeedbackPropertyFeature"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_creationType];
  [v8 encodeObject:v7 forKey:@"PHUserFeedbackPropertyCreationType"];

  [v8 encodeObject:self->_context forKey:@"PHUserFeedbackPropertyContext"];
  [v8 encodeObject:self->_lastModifiedDate forKey:@"PHUserFeedbackPropertyLastModifiedDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_uuid copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_type;
  v5[3] = self->_feature;
  v5[4] = self->_creationType;
  v8 = [(NSString *)self->_context copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSDate *)self->_lastModifiedDate copyWithZone:a3];
  v11 = v5[6];
  v5[6] = v10;

  return v5;
}

- (unint64_t)hash
{
  v2 = [(PHUserFeedback *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else if ([(NSString *)self->_uuid isEqualToString:v4->_uuid])
  {
    v5 = [(PHUserFeedback *)self isEqualWithoutUUID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualWithoutUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = self->_type == v4->_type && self->_feature == v4->_feature && self->_creationType == v4->_creationType && [(NSString *)self->_context isEqualToString:v4->_context]&& [(NSDate *)self->_lastModifiedDate isEqualToDate:v5->_lastModifiedDate];
  }

  return v6;
}

- (id)contextAsListOfSongIdentifiersWithError:(id *)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  if ([(PHUserFeedback *)self feature]== 6)
  {
    v5 = [(PHUserFeedback *)self context];
    v6 = [v5 dataUsingEncoding:4];

    v18 = 0;
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:1 error:&v18];
    v8 = v18;
    if (v7 && ([v7 objectForKeyedSubscript:@"songIdentifiers"], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, (isKindOfClass & 1) != 0))
    {
      v11 = [v7 objectForKeyedSubscript:@"songIdentifiers"];
    }

    else
    {
      if (a3)
      {
        v19[0] = *MEMORY[0x1E696A578];
        v13 = MEMORY[0x1E696AEC0];
        v14 = [(PHUserFeedback *)self context];
        v15 = [v13 stringWithFormat:@"Error parsing context as list of song identifiers. Context: %@.", v14];
        v19[1] = *MEMORY[0x1E696AA08];
        v20[0] = v15;
        v20[1] = v8;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

        *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PhotoKit.PHUserFeedback" code:1 userInfo:v16];
      }

      v11 = 0;
    }

    goto LABEL_11;
  }

  if (a3)
  {
    v12 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22[0] = @"User Feedback feature not supported for parsing context as song identifiers.";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    [v12 errorWithDomain:@"com.apple.PhotoKit.PHUserFeedback" code:2 userInfo:v6];
    *a3 = v11 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (id)contextAsLocationWithError:(id *)a3
{
  v52[1] = *MEMORY[0x1E69E9840];
  if ([(PHUserFeedback *)self feature]== 3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v6 = [(PHUserFeedback *)self context];
    v7 = [v6 dataUsingEncoding:4];

    v48 = 0;
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:1 error:&v48];
    v9 = v48;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"coordinate"];
      v11 = [v10 objectForKeyedSubscript:@"latitude"];
      [v11 doubleValue];
      latitude = v12;

      v13 = [v10 objectForKeyedSubscript:@"longitude"];
      [v13 doubleValue];
      v15 = v14;

      v16 = [v8 objectForKeyedSubscript:@"altitude"];
      [v16 doubleValue];
      v18 = v17;

      v19 = [v8 objectForKeyedSubscript:@"horizontalAccuracy"];
      [v19 doubleValue];
      v21 = v20;

      v22 = [v8 objectForKeyedSubscript:@"verticalAccuracy"];
      [v22 doubleValue];
      v24 = v23;

      v25 = [v8 objectForKeyedSubscript:@"course"];
      [v25 doubleValue];
      v27 = v26;

      v28 = [v8 objectForKeyedSubscript:@"courseAccuracy"];
      [v28 doubleValue];
      v30 = v29;

      v31 = [v8 objectForKeyedSubscript:@"speed"];
      [v31 doubleValue];
      v33 = v32;

      v34 = [v8 objectForKeyedSubscript:@"speedAccuracy"];
      [v34 doubleValue];
      v36 = v35;

      v37 = [v8 objectForKeyedSubscript:@"timestamp"];
      v38 = [v5 dateFromString:v37];

      v39 = objc_alloc(MEMORY[0x1E6985C40]);
      v40 = CLLocationCoordinate2DMake(latitude, v15);
      v41 = [v39 initWithCoordinate:v38 altitude:v40.latitude horizontalAccuracy:v40.longitude verticalAccuracy:v18 course:v21 courseAccuracy:v24 speed:v27 speedAccuracy:v30 timestamp:{v33, v36}];
    }

    else
    {
      if (!a3)
      {
        v41 = 0;
        goto LABEL_9;
      }

      v49[0] = *MEMORY[0x1E696A578];
      v43 = MEMORY[0x1E696AEC0];
      v44 = [(PHUserFeedback *)self context];
      v45 = [v43 stringWithFormat:@"Error parsing context as location. Context: '%@'.", v44];
      v49[1] = *MEMORY[0x1E696AA08];
      v50[0] = v45;
      v50[1] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];

      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PhotoKit.PHUserFeedback" code:1 userInfo:v10];
      *a3 = v41 = 0;
    }

LABEL_9:
    goto LABEL_10;
  }

  if (a3)
  {
    v42 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A578];
    v52[0] = @"User Feedback feature not supported for parsing context as CLLocation.";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    [v42 errorWithDomain:@"com.apple.PhotoKit.PHUserFeedback" code:2 userInfo:v5];
    *a3 = v41 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v41 = 0;
LABEL_11:

  return v41;
}

- (id)contextAsDateIntervalWithError:(id *)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  if ([(PHUserFeedback *)self feature]== 5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v6 = [(PHUserFeedback *)self context];
    v7 = [v6 componentsSeparatedByString:@" - "];

    if ([v7 count] == 2)
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      v9 = [v5 dateFromString:v8];

      v10 = [v7 objectAtIndexedSubscript:1];
      v11 = [v5 dateFromString:v10];

      if (v9 && v11)
      {
        v12 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v11];
      }

      else
      {
        if (a3)
        {
          v17 = MEMORY[0x1E696AEC0];
          v18 = [(PHUserFeedback *)self context];
          v19 = [v17 stringWithFormat:@"Error parsing context '%@' as date interval.", v18];

          v20 = MEMORY[0x1E696ABC0];
          v23 = *MEMORY[0x1E696A578];
          v24 = v19;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          *a3 = [v20 errorWithDomain:@"com.apple.PhotoKit.PHUserFeedback" code:1 userInfo:v21];
        }

        v12 = 0;
      }
    }

    else
    {
      if (!a3)
      {
        v12 = 0;
        goto LABEL_15;
      }

      v14 = MEMORY[0x1E696AEC0];
      v15 = [(PHUserFeedback *)self context];
      v9 = [v14 stringWithFormat:@"Error parsing context '%@' as date interval.", v15];

      v16 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v26 = v9;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [v16 errorWithDomain:@"com.apple.PhotoKit.PHUserFeedback" code:1 userInfo:v11];
      *a3 = v12 = 0;
    }

LABEL_15:
    goto LABEL_16;
  }

  if (!a3)
  {
    v12 = 0;
    goto LABEL_17;
  }

  v13 = MEMORY[0x1E696ABC0];
  v27 = *MEMORY[0x1E696A578];
  v28[0] = @"User Feedback feature not supported for parsing context as date interval.";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  [v13 errorWithDomain:@"com.apple.PhotoKit.PHUserFeedback" code:2 userInfo:v5];
  *a3 = v12 = 0;
LABEL_16:

LABEL_17:

  return v12;
}

- (id)contextAsDateWithError:(id *)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  if ([(PHUserFeedback *)self feature]== 1)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v6 = [(PHUserFeedback *)self context];
    v7 = [v5 dateFromString:v6];

    if (v7)
    {
      v8 = v7;
    }

    else if (a3)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [(PHUserFeedback *)self context];
      v12 = [v10 stringWithFormat:@"Error parsing context '%@' as date.", v11];

      v13 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A578];
      v17 = v12;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      *a3 = [v13 errorWithDomain:@"com.apple.PhotoKit.PHUserFeedback" code:1 userInfo:v14];
    }

    goto LABEL_9;
  }

  if (a3)
  {
    v9 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"User Feedback feature not supported for parsing context as date.";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v9 errorWithDomain:@"com.apple.PhotoKit.PHUserFeedback" code:2 userInfo:v5];
    *a3 = v7 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)contextAsStringWithError:(id *)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(PHUserFeedback *)self feature]&& [(PHUserFeedback *)self feature]&& [(PHUserFeedback *)self feature]!= 2 && [(PHUserFeedback *)self feature]!= 4)
  {
    if (a3)
    {
      v7 = MEMORY[0x1E696ABC0];
      v9 = *MEMORY[0x1E696A578];
      v10[0] = @"User Feedback feature not supported for parsing context as string.";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      *a3 = [v7 errorWithDomain:@"com.apple.PhotoKit.PHUserFeedback" code:2 userInfo:v8];
    }

    v5 = 0;
  }

  else
  {
    v5 = [(PHUserFeedback *)self context];
  }

  return v5;
}

- (PHUserFeedback)initWithUUID:(id)a3 type:(unint64_t)a4 feature:(unint64_t)a5 creationType:(unint64_t)a6 context:(id)a7 lastModifiedDate:(id)a8
{
  v15 = a3;
  if (self)
  {
    objc_storeStrong(&self->_uuid, a3);
    v16 = a8;
    v17 = a7;
    self->_type = a4;
    self->_feature = a5;
    self->_creationType = a6;
    v18 = [v17 copy];

    context = self->_context;
    self->_context = v18;

    v20 = [v16 copy];
    lastModifiedDate = self->_lastModifiedDate;
    self->_lastModifiedDate = v20;
  }

  return self;
}

- (PHUserFeedback)initWithType:(unint64_t)a3 feature:(unint64_t)a4 context:(id)a5 lastModifiedDate:(id)a6
{
  v9 = MEMORY[0x1E696AFB0];
  v10 = a5;
  v11 = [v9 UUID];
  v12 = [v11 UUIDString];
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [(PHUserFeedback *)self initWithUUID:v12 type:a3 feature:a4 creationType:1 context:v10 lastModifiedDate:v13];

  return v14;
}

- (PHUserFeedback)initWithType:(unint64_t)a3 feature:(unint64_t)a4 context:(id)a5
{
  v8 = MEMORY[0x1E695DF00];
  v9 = a5;
  v10 = [v8 date];
  v11 = [(PHUserFeedback *)self initWithType:a3 feature:a4 context:v9 lastModifiedDate:v10];

  return v11;
}

+ (unint64_t)_feedbackFeatureForMemoryFeature:(id)a3
{
  v3 = a3;
  if ([v3 type] == 16)
  {
    v4 = 1;
  }

  else if ([v3 type] == 512)
  {
    v4 = 5;
  }

  else if ([v3 type] == 32)
  {
    v4 = 2;
  }

  else if ([v3 type] == 4096)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4 * ([v3 type] == 0x20000);
  }

  return v4;
}

+ (id)_contextForSongIdentifiers:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"songIdentifiers";
  v11[0] = a3;
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:8 error:0];
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);

  v8 = [v7 initWithData:v6 encoding:4];

  return v8;
}

+ (id)_contextForMemoryFeature:(id)a3
{
  v41[9] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AC80]);
  if ([v3 type] == 16)
  {
    v5 = [v3 date];
    v6 = [v4 stringFromDate:v5];
LABEL_5:

    goto LABEL_6;
  }

  if ([v3 type] == 512)
  {
    v5 = [v3 dateInterval];
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v5 startDate];
    v9 = [v4 stringFromDate:v8];
    v10 = [v5 endDate];
    v11 = [v4 stringFromDate:v10];
    v6 = [v7 stringWithFormat:@"%@%@%@", v9, @" - ", v11];

    goto LABEL_5;
  }

  if ([v3 type] == 32)
  {
    v13 = [v3 holidayName];
LABEL_11:
    v6 = v13;
    goto LABEL_6;
  }

  if ([v3 type] == 4096)
  {
    v5 = [v3 location];
    v40[0] = @"coordinate";
    v38[0] = @"latitude";
    v14 = MEMORY[0x1E696AD98];
    [v5 coordinate];
    v37 = [v14 numberWithDouble:?];
    v38[1] = @"longitude";
    v39[0] = v37;
    v15 = MEMORY[0x1E696AD98];
    [v5 coordinate];
    v36 = [v15 numberWithDouble:v16];
    v39[1] = v36;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v41[0] = v35;
    v40[1] = @"altitude";
    v17 = MEMORY[0x1E696AD98];
    [v5 altitude];
    v34 = [v17 numberWithDouble:?];
    v41[1] = v34;
    v40[2] = @"horizontalAccuracy";
    v18 = MEMORY[0x1E696AD98];
    [v5 horizontalAccuracy];
    v33 = [v18 numberWithDouble:?];
    v41[2] = v33;
    v40[3] = @"verticalAccuracy";
    v19 = MEMORY[0x1E696AD98];
    [v5 verticalAccuracy];
    v32 = [v19 numberWithDouble:?];
    v41[3] = v32;
    v40[4] = @"course";
    v20 = MEMORY[0x1E696AD98];
    [v5 course];
    v21 = [v20 numberWithDouble:?];
    v41[4] = v21;
    v40[5] = @"courseAccuracy";
    v22 = MEMORY[0x1E696AD98];
    [v5 courseAccuracy];
    v23 = [v22 numberWithDouble:?];
    v41[5] = v23;
    v40[6] = @"speed";
    v24 = MEMORY[0x1E696AD98];
    [v5 speed];
    v25 = [v24 numberWithDouble:?];
    v41[6] = v25;
    v40[7] = @"speedAccuracy";
    v26 = MEMORY[0x1E696AD98];
    [v5 speedAccuracy];
    v27 = [v26 numberWithDouble:?];
    v41[7] = v27;
    v40[8] = @"timestamp";
    v28 = [v5 timestamp];
    v29 = [v4 stringFromDate:v28];
    v41[8] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:9];

    v31 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v30 options:8 error:0];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v31 encoding:4];

    goto LABEL_5;
  }

  if ([v3 type] == 0x20000)
  {
    v13 = [v3 areaName];
    goto LABEL_11;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

+ (unint64_t)sumFeedbackType:(unint64_t)a3 withOtherFeedbackType:(unint64_t)a4
{
  if (a3 <= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a4 == 2 && a3 == 2)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

+ (unint64_t)mergeFeedbackType:(unint64_t)a3 withOtherFeedbackType:(unint64_t)a4
{
  if (a3 <= a4)
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

+ (id)negativeAutonamingUserFeedbackForPerson:(id)a3 rejectedContactIdentifier:(id)a4
{
  v4 = a4;
  v5 = [[PHUserFeedback alloc] initWithType:3 feature:2 context:v4];

  return v5;
}

+ (id)negativeAutonamingUserFeedbackForPerson:(id)a3 rejectedName:(id)a4
{
  v4 = a4;
  v5 = [[PHUserFeedback alloc] initWithType:3 feature:1 context:v4];

  return v5;
}

+ (id)negativeUserFeedbackForPerson:(id)a3
{
  v3 = [a3 userFeedbackProperties];
  v4 = [v3 userFeedback];

  if ([v4 type] == 2)
  {
    v5 = 3;
  }

  else if ([v4 type] == 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = [[PHUserFeedback alloc] initWithType:v5 feature:0 context:0];

  return v6;
}

+ (id)negativeUserFeedbackForMemoryMusicWithSongIdentifier:(id)a3 existingFeedback:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7 || [v7 feature] == 6)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v8 feature] == 6)
    {
      v17 = 0;
      v10 = [v8 contextAsListOfSongIdentifiersWithError:&v17];
      v11 = v17;
      v12 = [v10 mutableCopy];

      if (!v12)
      {
        v13 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = v11;
          _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "PHUserFeedback: Error retrieving song identifiers from existing feedback: %@", buf, 0xCu);
        }

        v14 = 0;
        goto LABEL_7;
      }

      v9 = v12;
    }

    [v9 addObject:v6];
    v13 = [a1 _contextForSongIdentifiers:v9];
    v14 = [[PHUserFeedback alloc] initWithType:2 feature:6 context:v13];
    v11 = v9;
LABEL_7:

    goto LABEL_11;
  }

  v15 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "PHUserFeedback: Adding multiple pieces of feedback to the same memory is not supported. Will not add feedback for song identifier %@", buf, 0xCu);
  }

  v14 = v8;
LABEL_11:

  return v14;
}

+ (id)negativeUserFeedbackForMemoryFeature:(id)a3 existingFeedback:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "PHUserFeedback: Adding multiple pieces of feedback to the same memory is not supported. Will not add feedback for memory feature %@", &v14, 0xCu);
    }

    v9 = v7;
    goto LABEL_5;
  }

  if (!v6)
  {
    v9 = [[PHUserFeedback alloc] initWithType:2 feature:0 context:0];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  if ([v6 type] == 1)
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "PHUserFeedback: Negative feedback for person should not be generated on a PHMemory. Create a feedback on PHPerson instead. negativeUserFeedbackForMemoryFeature function will return nil.", &v14, 2u);
    }

    v10 = 0;
  }

  else
  {
    v13 = [a1 _contextForMemoryFeature:v6];
    v10 = -[PHUserFeedback initWithType:feature:context:]([PHUserFeedback alloc], "initWithType:feature:context:", 2, [a1 _feedbackFeatureForMemoryFeature:v6], v13);
  }

LABEL_6:

  return v10;
}

@end