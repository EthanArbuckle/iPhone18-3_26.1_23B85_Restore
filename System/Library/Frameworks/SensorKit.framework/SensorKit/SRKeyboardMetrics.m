@interface SRKeyboardMetrics
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (NSArray)deleteToDeletes;
- (NSArray)inputModes;
- (NSArray)longWordDownErrorDistance;
- (NSArray)longWordTouchDownDown;
- (NSArray)longWordTouchDownUp;
- (NSArray)longWordTouchUpDown;
- (NSArray)longWordUpErrorDistance;
- (NSArray)pathErrorDistanceRatio;
- (NSArray)sessionIdentifiers;
- (NSInteger)emojiCountForSentimentCategory:(SRKeyboardMetricsSentimentCategory)category;
- (NSInteger)totalAlteredWords;
- (NSInteger)totalAutoCorrections;
- (NSInteger)totalDeletes;
- (NSInteger)totalDrags;
- (NSInteger)totalEmojis;
- (NSInteger)totalHitTestCorrections;
- (NSInteger)totalInsertKeyCorrections;
- (NSInteger)totalNearKeyCorrections;
- (NSInteger)totalPathPauses;
- (NSInteger)totalPaths;
- (NSInteger)totalPauses;
- (NSInteger)totalRetroCorrections;
- (NSInteger)totalSkipTouchCorrections;
- (NSInteger)totalSpaceCorrections;
- (NSInteger)totalSubstitutionCorrections;
- (NSInteger)totalTaps;
- (NSInteger)totalTranspositionCorrections;
- (NSInteger)totalTypingEpisodes;
- (NSInteger)totalWords;
- (NSInteger)wordCountForSentimentCategory:(SRKeyboardMetricsSentimentCategory)category;
- (NSMeasurement)height;
- (NSMeasurement)totalPathLength;
- (NSMeasurement)width;
- (NSString)description;
- (NSTimeInterval)duration;
- (NSTimeInterval)totalPathTime;
- (NSTimeInterval)totalTypingDuration;
- (SRKeyboardMetrics)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRKeyboardMetrics)initWithCoder:(id)a3;
- (SRKeyboardMetrics)initWithInterval:(id)a3 metaInformation:(id)a4;
- (SRKeyboardProbabilityMetric)anyTapToCharKey;
- (SRKeyboardProbabilityMetric)anyTapToPlaneChangeKey;
- (SRKeyboardProbabilityMetric)charKeyToAnyTapKey;
- (SRKeyboardProbabilityMetric)charKeyToDelete;
- (SRKeyboardProbabilityMetric)charKeyToPlaneChangeKey;
- (SRKeyboardProbabilityMetric)charKeyToPrediction;
- (SRKeyboardProbabilityMetric)charKeyToSpaceKey;
- (SRKeyboardProbabilityMetric)deleteDownErrorDistance;
- (SRKeyboardProbabilityMetric)deleteToCharKey;
- (SRKeyboardProbabilityMetric)deleteToDelete;
- (SRKeyboardProbabilityMetric)deleteToPath;
- (SRKeyboardProbabilityMetric)deleteToPlaneChangeKey;
- (SRKeyboardProbabilityMetric)deleteToShiftKey;
- (SRKeyboardProbabilityMetric)deleteToSpaceKey;
- (SRKeyboardProbabilityMetric)deleteTouchDownUp;
- (SRKeyboardProbabilityMetric)deleteUpErrorDistance;
- (SRKeyboardProbabilityMetric)downErrorDistance;
- (SRKeyboardProbabilityMetric)pathToDelete;
- (SRKeyboardProbabilityMetric)pathToPath;
- (SRKeyboardProbabilityMetric)pathToSpace;
- (SRKeyboardProbabilityMetric)planeChangeKeyToCharKey;
- (SRKeyboardProbabilityMetric)planeChangeToAnyTap;
- (SRKeyboardProbabilityMetric)shortWordCharKeyDownErrorDistance;
- (SRKeyboardProbabilityMetric)shortWordCharKeyToCharKey;
- (SRKeyboardProbabilityMetric)shortWordCharKeyTouchDownUp;
- (SRKeyboardProbabilityMetric)shortWordCharKeyUpErrorDistance;
- (SRKeyboardProbabilityMetric)spaceDownErrorDistance;
- (SRKeyboardProbabilityMetric)spaceToCharKey;
- (SRKeyboardProbabilityMetric)spaceToDeleteKey;
- (SRKeyboardProbabilityMetric)spaceToPath;
- (SRKeyboardProbabilityMetric)spaceToPlaneChangeKey;
- (SRKeyboardProbabilityMetric)spaceToPredictionKey;
- (SRKeyboardProbabilityMetric)spaceToShiftKey;
- (SRKeyboardProbabilityMetric)spaceToSpaceKey;
- (SRKeyboardProbabilityMetric)spaceTouchDownUp;
- (SRKeyboardProbabilityMetric)spaceUpErrorDistance;
- (SRKeyboardProbabilityMetric)touchDownDown;
- (SRKeyboardProbabilityMetric)touchDownUp;
- (SRKeyboardProbabilityMetric)touchUpDown;
- (SRKeyboardProbabilityMetric)upErrorDistance;
- (double)pathTypingSpeed;
- (double)typingSpeed;
- (id)binarySampleRepresentation;
- (id)dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRKeyboardMetrics

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogKeyboardMetrics = os_log_create("com.apple.SensorKit", "SRKeyboardMetrics");
  }
}

- (SRKeyboardMetrics)initWithInterval:(id)a3 metaInformation:(id)a4
{
  v8.receiver = self;
  v8.super_class = SRKeyboardMetrics;
  v6 = [(SRKeyboardMetrics *)&v8 init];
  if (v6)
  {
    v6->_mutableScalarMetrics = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_mutablePositionalMetrics = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_mutableProbabilityMetrics = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_interval = a3;
    v6->_keyboardMetaInformation = a4;
  }

  return v6;
}

- (void)dealloc
{
  [(SRKeyboardMetrics *)self setInterval:0];
  [(SRKeyboardMetrics *)self setMutableScalarMetrics:0];
  [(SRKeyboardMetrics *)self setMutablePositionalMetrics:0];
  [(SRKeyboardMetrics *)self setMutableProbabilityMetrics:0];
  [(SRKeyboardMetrics *)self setKeyboardMetaInformation:0];
  v3.receiver = self;
  v3.super_class = SRKeyboardMetrics;
  [(SRKeyboardMetrics *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSDateInterval isEqual:](self->_interval, "isEqual:", [a3 interval]);
      if (v5)
      {
        v5 = -[NSDictionary isEqual:](self->_keyboardMetaInformation, "isEqual:", [a3 keyboardMetaInformation]);
        if (v5)
        {
          v5 = -[NSMutableDictionary isEqual:](self->_mutableScalarMetrics, "isEqual:", [a3 mutableScalarMetrics]);
          if (v5)
          {
            v5 = -[NSMutableDictionary isEqual:](self->_mutablePositionalMetrics, "isEqual:", [a3 mutablePositionalMetrics]);
            if (v5)
            {
              mutableProbabilityMetrics = self->_mutableProbabilityMetrics;
              v7 = [a3 mutableProbabilityMetrics];

              LOBYTE(v5) = [(NSMutableDictionary *)mutableProbabilityMetrics isEqual:v7];
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (NSTimeInterval)duration
{
  [[(NSDateInterval *)self->_interval endDate] srAbsoluteTime];
  v4 = v3;
  [[(NSDateInterval *)self->_interval startDate] srAbsoluteTime];
  return v4 - v5;
}

- (NSArray)sessionIdentifiers
{
  result = [(NSDictionary *)self->_keyboardMetaInformation objectForKeyedSubscript:@"SRKeyboardMetaInformationSessionIdentifiersKey"];
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

- (NSArray)inputModes
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_keyboardMetaInformation objectForKeyedSubscript:@"SRKeyboardMetaInformationInputModesKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5[0] = v2;
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else if (v2)
  {
    result = v2;
  }

  else
  {
    result = MEMORY[0x1E695E0F0];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSMeasurement)width
{
  [-[NSDictionary objectForKeyedSubscript:](self->_keyboardMetaInformation objectForKeyedSubscript:{@"SRKeyboardMetaInformationWidthKey", "doubleValue"}];
  v3 = v2;
  v4 = objc_alloc(MEMORY[0x1E696AD28]);
  v5 = [v4 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B058] unit:{"millimeters"), v3}];

  return v5;
}

- (NSMeasurement)height
{
  [-[NSDictionary objectForKeyedSubscript:](self->_keyboardMetaInformation objectForKeyedSubscript:{@"SRKeyboardMetaInformationHeightKey", "doubleValue"}];
  v3 = v2;
  v4 = objc_alloc(MEMORY[0x1E696AD28]);
  v5 = [v4 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B058] unit:{"millimeters"), v3}];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p): %@", NSStringFromClass(v4), self, -[SRKeyboardMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (NSInteger)wordCountForSentimentCategory:(SRKeyboardMetricsSentimentCategory)category
{
  if (category > SRKeyboardMetricsSentimentCategoryPositive)
  {
    return 0;
  }

  v5 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:*off_1E8330B38[category], v3];

  return [v5 integerValue];
}

- (NSInteger)emojiCountForSentimentCategory:(SRKeyboardMetricsSentimentCategory)category
{
  if ((category - 3) > 6)
  {
    return 0;
  }

  v5 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:*off_1E8330B70[category - 3], v3];

  return [v5 integerValue];
}

- (SRKeyboardMetrics)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v22.receiver = self;
  v22.super_class = SRKeyboardMetrics;
  v6 = [(SRKeyboardMetrics *)&v22 init];
  if (v6)
  {
    v6->_interval = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"Interval"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v6->_keyboardMetaInformation = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, v9, v10, objc_opt_class(), 0), @"MetaInformation", "copy"}];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v6->_mutableScalarMetrics = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, v13, objc_opt_class(), 0), @"scalar", "mutableCopy"}];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v6->_mutableProbabilityMetrics = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithObjects:", v15, v16, objc_opt_class(), 0), @"probability", "mutableCopy"}];
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v6->_mutablePositionalMetrics = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v17 forKey:{"setWithObjects:", v18, v19, v20, objc_opt_class(), 0), @"positional", "mutableCopy"}];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:self->_interval forKey:@"Interval"];
  [a3 encodeObject:self->_keyboardMetaInformation forKey:@"MetaInformation"];
  [a3 encodeObject:-[SRKeyboardMetrics mutableScalarMetrics](self forKey:{"mutableScalarMetrics"), @"scalar"}];
  [a3 encodeObject:-[SRKeyboardMetrics probabilityMetrics](self forKey:{"probabilityMetrics"), @"probability"}];
  v6 = [(SRKeyboardMetrics *)self positionalMetrics];

  [a3 encodeObject:v6 forKey:@"positional"];
}

- (SRKeyboardMetrics)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v17 = *MEMORY[0x1E69E9840];
  if (![a3 length])
  {
LABEL_6:

    result = 0;
    goto LABEL_7;
  }

  v14.receiver = self;
  v14.super_class = SRKeyboardMetrics;
  result = [(SRKeyboardMetrics *)&v14 init];
  if (result)
  {
    self = result;
    v13 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v13];
    v9 = v13;
    if (!v13)
    {
      v12 = v8;

      result = v12;
      goto LABEL_7;
    }

    v10 = SRLogKeyboardMetrics;
    if (os_log_type_enabled(SRLogKeyboardMetrics, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v9;
      _os_log_error_impl(&dword_1C914D000, v10, OS_LOG_TYPE_ERROR, "Failed to unarchive data because %{public}@", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)binarySampleRepresentation
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v8];
  if (v8)
  {
    v3 = SRLogKeyboardMetrics;
    if (os_log_type_enabled(SRLogKeyboardMetrics, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_error_impl(&dword_1C914D000, v3, OS_LOG_TYPE_ERROR, "Failed to archive %{public}@ object because %{public}@", buf, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSInteger)totalWords
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalWordsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalAlteredWords
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalAlteredWordsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalTaps
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalTapsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalDrags
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalDragsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalDeletes
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalDeletesKey"];

  return [v2 integerValue];
}

- (NSInteger)totalEmojis
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalEmojiKey"];

  return [v2 integerValue];
}

- (NSInteger)totalPaths
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalPathsKey"];

  return [v2 integerValue];
}

- (NSTimeInterval)totalPathTime
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalPathTimeKey"];

  [v2 doubleValue];
  return result;
}

- (NSMeasurement)totalPathLength
{
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_mutableScalarMetrics objectForKeyedSubscript:{@"SRKeyboardMetricScalarTotalPathLengthKey", "doubleValue"}];
  v3 = v2;
  v4 = objc_alloc(MEMORY[0x1E696AD28]);
  v5 = [v4 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B058] unit:{"millimeters"), v3}];

  return v5;
}

- (NSInteger)totalAutoCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalAutoCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalSpaceCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalSpaceCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalRetroCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalRetroCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalTranspositionCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalTranspositionCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalInsertKeyCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalInsertKeyCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalSkipTouchCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalSkipTouchCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalNearKeyCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalNearKeyCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalSubstitutionCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalSubstitutionCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalHitTestCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalHitTestCorrectionsKey"];

  return [v2 integerValue];
}

- (NSTimeInterval)totalTypingDuration
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalSessionTypingDurationKey"];

  [v2 doubleValue];
  return result;
}

- (NSInteger)totalPathPauses
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarMidPathPauseKey"];

  return [v2 integerValue];
}

- (double)typingSpeed
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTapTypingSpeedKey"];

  [v2 doubleValue];
  return result;
}

- (double)pathTypingSpeed
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarPathTypingSpeed"];

  [v2 doubleValue];
  return result;
}

- (NSInteger)totalPauses
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTypingPausesKey"];

  return [v2 integerValue];
}

- (NSInteger)totalTypingEpisodes
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarEpisodeCountKey"];

  return [v2 integerValue];
}

- (SRKeyboardProbabilityMetric)upErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityUpErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)downErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDownErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceUpErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceUpErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceDownErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceDownErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteUpErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteUpErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteDownErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteDownErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)shortWordCharKeyUpErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityShortWordCharKeyUpErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)shortWordCharKeyDownErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityShortWordCharKeyDownErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)touchDownUp
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityTouchDownUpKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceTouchDownUp
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceTouchDownUpKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteTouchDownUp
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteTouchDownUpKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)shortWordCharKeyTouchDownUp
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityShortWordCharKeyTouchDownUpKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)touchDownDown
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityTouchDownDownKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)touchUpDown
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityTouchUpDownKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)charKeyToPrediction
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityCharKeyToPredictionKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)shortWordCharKeyToCharKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityShortWordCharKeyToCharKeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)charKeyToAnyTapKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityCharKeyToAnyTapKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)anyTapToCharKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityAnyTapToCharKeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceToCharKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceToCharKeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)charKeyToSpaceKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityCharKeyToSpaceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceToDeleteKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceToDeleteKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteToSpaceKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteToSpaceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceToSpaceKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceToSpaceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceToShiftKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceToShiftKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceToPlaneChangeKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceTo123KeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceToPredictionKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceToPredictionKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteToCharKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteToCharKeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)charKeyToDelete
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityCharKeyToDeleteKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteToDelete
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteToDeleteKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteToShiftKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteToShiftKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteToPlaneChangeKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteTo123KeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)anyTapToPlaneChangeKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityAnyTapTo123KeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)planeChangeToAnyTap
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbability123KeyToAnyTapKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)charKeyToPlaneChangeKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityCharKeyTo123KeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)planeChangeKeyToCharKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbability123KeyToCharKeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (NSArray)pathErrorDistanceRatio
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityPathErrorDistanceKey"];
  v3 = MEMORY[0x1E695DEC8];
  v4 = [v2 mutableSampleValues];

  return [v3 arrayWithArray:v4];
}

- (SRKeyboardProbabilityMetric)deleteToPath
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteToPathKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)pathToDelete
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityPathToDeleteKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceToPath
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceToPathKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)pathToSpace
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityPathToSpaceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)pathToPath
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityPathToPathKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (NSArray)longWordUpErrorDistance
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[NSMutableDictionary objectForKeyedSubscript:](self->_mutablePositionalMetrics, "objectForKeyedSubscript:", @"SRKeyboardMetricPositionalWordUpErrorDistanceKey"}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) setUnitType:{objc_msgSend(MEMORY[0x1E696B058], "millimeters")}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSArray)longWordDownErrorDistance
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[NSMutableDictionary objectForKeyedSubscript:](self->_mutablePositionalMetrics, "objectForKeyedSubscript:", @"SRKeyboardMetricPositionalWordDownErrorDistanceKey"}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) setUnitType:{objc_msgSend(MEMORY[0x1E696B058], "millimeters")}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSArray)longWordTouchDownUp
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[NSMutableDictionary objectForKeyedSubscript:](self->_mutablePositionalMetrics, "objectForKeyedSubscript:", @"SRKeyboardMetricPositionalWordTouchDownUpKey"}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) setUnitType:{objc_msgSend(MEMORY[0x1E696B008], "seconds")}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSArray)longWordTouchDownDown
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[NSMutableDictionary objectForKeyedSubscript:](self->_mutablePositionalMetrics, "objectForKeyedSubscript:", @"SRKeyboardMetricPositionalWordTouchDownDownKey"}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) setUnitType:{objc_msgSend(MEMORY[0x1E696B008], "seconds")}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSArray)longWordTouchUpDown
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[NSMutableDictionary objectForKeyedSubscript:](self->_mutablePositionalMetrics, "objectForKeyedSubscript:", @"SRKeyboardMetricPositionalWordTouchUpDownKey"}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) setUnitType:{objc_msgSend(MEMORY[0x1E696B008], "seconds")}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSArray)deleteToDeletes
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[NSMutableDictionary objectForKeyedSubscript:](self->_mutablePositionalMetrics, "objectForKeyedSubscript:", @"SRKeyboardMetricPositionalDeleteToDeleteKey"}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) setUnitType:{objc_msgSend(MEMORY[0x1E696B008], "seconds")}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)dictionaryRepresentation
{
  v168 = *MEMORY[0x1E69E9840];
  v134 = objc_opt_new();
  [v134 setUnitOptions:1];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRKeyboardMetrics deleteToDeletes](self, "deleteToDeletes"), "count")}];
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v4 = [(SRKeyboardMetrics *)self deleteToDeletes];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v156 objects:v167 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v157;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v157 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{objc_msgSend(*(*(&v156 + 1) + 8 * i), "sr_dictionaryRepresentation")}];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v156 objects:v167 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRKeyboardMetrics longWordDownErrorDistance](self, "longWordDownErrorDistance"), "count")}];
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v10 = [(SRKeyboardMetrics *)self longWordDownErrorDistance];
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v152 objects:v166 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v153;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v153 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v9 addObject:{objc_msgSend(*(*(&v152 + 1) + 8 * j), "sr_dictionaryRepresentation")}];
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v152 objects:v166 count:16];
    }

    while (v12);
  }

  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRKeyboardMetrics longWordTouchDownDown](self, "longWordTouchDownDown"), "count")}];
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v16 = [(SRKeyboardMetrics *)self longWordTouchDownDown];
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v148 objects:v165 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v149;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v149 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [v15 addObject:{objc_msgSend(*(*(&v148 + 1) + 8 * k), "sr_dictionaryRepresentation")}];
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v148 objects:v165 count:16];
    }

    while (v18);
  }

  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRKeyboardMetrics longWordTouchDownUp](self, "longWordTouchDownUp"), "count")}];
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v22 = [(SRKeyboardMetrics *)self longWordTouchDownUp];
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v144 objects:v164 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v145;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v145 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [v21 addObject:{objc_msgSend(*(*(&v144 + 1) + 8 * m), "sr_dictionaryRepresentation")}];
      }

      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v144 objects:v164 count:16];
    }

    while (v24);
  }

  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRKeyboardMetrics longWordUpErrorDistance](self, "longWordUpErrorDistance"), "count")}];
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v28 = [(SRKeyboardMetrics *)self longWordUpErrorDistance];
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v140 objects:v163 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v141;
    do
    {
      for (n = 0; n != v30; ++n)
      {
        if (*v141 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [v27 addObject:{objc_msgSend(*(*(&v140 + 1) + 8 * n), "sr_dictionaryRepresentation")}];
      }

      v30 = [(NSArray *)v28 countByEnumeratingWithState:&v140 objects:v163 count:16];
    }

    while (v30);
  }

  v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRKeyboardMetrics longWordTouchUpDown](self, "longWordTouchUpDown"), "count")}];
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v135 = self;
  v34 = [(SRKeyboardMetrics *)self longWordTouchUpDown];
  v35 = [(NSArray *)v34 countByEnumeratingWithState:&v136 objects:v162 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v137;
    do
    {
      for (ii = 0; ii != v36; ++ii)
      {
        if (*v137 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [v33 addObject:{objc_msgSend(*(*(&v136 + 1) + 8 * ii), "sr_dictionaryRepresentation")}];
      }

      v36 = [(NSArray *)v34 countByEnumeratingWithState:&v136 objects:v162 count:16];
    }

    while (v36);
  }

  v160[0] = @"duration";
  [(SRKeyboardMetrics *)v135 duration];
  if (fabs(v39) == INFINITY)
  {
    v40 = @"INF";
  }

  else
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&v39];
  }

  v161[0] = v40;
  v160[1] = @"keyboardIdentifier";
  v161[1] = [(SRKeyboardMetrics *)v135 keyboardIdentifier];
  v160[2] = @"version";
  v161[2] = [(SRKeyboardMetrics *)v135 version];
  v160[3] = @"width";
  v161[3] = [v134 stringFromMeasurement:{-[SRKeyboardMetrics width](v135, "width")}];
  v160[4] = @"height";
  v161[4] = [v134 stringFromMeasurement:{-[SRKeyboardMetrics height](v135, "height")}];
  v160[5] = @"inputModes";
  v161[5] = [(SRKeyboardMetrics *)v135 inputModes];
  v160[6] = @"sessionIdentifiers";
  v161[6] = [(SRKeyboardMetrics *)v135 sessionIdentifiers];
  v160[7] = @"planeChangeToAnyTap";
  v41 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 planeChangeToAnyTap] sr_dictionaryRepresentation];
  v42 = MEMORY[0x1E695E0F8];
  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = MEMORY[0x1E695E0F8];
  }

  v161[7] = v43;
  v160[8] = @"planeChangeKeyToCharKey";
  v44 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 planeChangeKeyToCharKey] sr_dictionaryRepresentation];
  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = v42;
  }

  v161[8] = v45;
  v160[9] = @"anyTapToPlaneChangeKey";
  v46 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 anyTapToPlaneChangeKey] sr_dictionaryRepresentation];
  if (v46)
  {
    v47 = v46;
  }

  else
  {
    v47 = v42;
  }

  v161[9] = v47;
  v160[10] = @"anyTapToCharKey";
  v48 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 anyTapToCharKey] sr_dictionaryRepresentation];
  if (v48)
  {
    v49 = v48;
  }

  else
  {
    v49 = v42;
  }

  v161[10] = v49;
  v160[11] = @"charKeyToPlaneChangeKey";
  v50 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 charKeyToPlaneChangeKey] sr_dictionaryRepresentation];
  if (v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v42;
  }

  v161[11] = v51;
  v160[12] = @"charKeyToAnyTapKey";
  v52 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 charKeyToAnyTapKey] sr_dictionaryRepresentation];
  if (v52)
  {
    v53 = v52;
  }

  else
  {
    v53 = v42;
  }

  v161[12] = v53;
  v160[13] = @"charKeyToDelete";
  v54 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 charKeyToDelete] sr_dictionaryRepresentation];
  if (v54)
  {
    v55 = v54;
  }

  else
  {
    v55 = v42;
  }

  v161[13] = v55;
  v160[14] = @"charKeyToPrediction";
  v56 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 charKeyToPrediction] sr_dictionaryRepresentation];
  if (v56)
  {
    v57 = v56;
  }

  else
  {
    v57 = v42;
  }

  v161[14] = v57;
  v160[15] = @"charKeyToSpaceKey";
  v58 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 charKeyToSpaceKey] sr_dictionaryRepresentation];
  if (v58)
  {
    v59 = v58;
  }

  else
  {
    v59 = v42;
  }

  v161[15] = v59;
  v160[16] = @"deleteDownErrorDistance";
  v60 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 deleteDownErrorDistance] sr_dictionaryRepresentation];
  if (v60)
  {
    v61 = v60;
  }

  else
  {
    v61 = v42;
  }

  v161[16] = v61;
  v160[17] = @"deleteToPlaneChangeKey";
  v62 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 deleteToPlaneChangeKey] sr_dictionaryRepresentation];
  if (v62)
  {
    v63 = v62;
  }

  else
  {
    v63 = v42;
  }

  v161[17] = v63;
  v160[18] = @"deleteToCharKey";
  v64 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 deleteToCharKey] sr_dictionaryRepresentation];
  if (v64)
  {
    v65 = v64;
  }

  else
  {
    v65 = v42;
  }

  v161[18] = v65;
  v160[19] = @"deleteToDelete";
  v66 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 deleteToDelete] sr_dictionaryRepresentation];
  if (v66)
  {
    v67 = v66;
  }

  else
  {
    v67 = v42;
  }

  v161[19] = v67;
  v160[20] = @"deleteToPath";
  v68 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 deleteToPath] sr_dictionaryRepresentation];
  if (v68)
  {
    v69 = v68;
  }

  else
  {
    v69 = v42;
  }

  v161[20] = v69;
  v160[21] = @"deleteToShiftKey";
  v70 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 deleteToShiftKey] sr_dictionaryRepresentation];
  if (v70)
  {
    v71 = v70;
  }

  else
  {
    v71 = v42;
  }

  v161[21] = v71;
  v160[22] = @"deleteToSpaceKey";
  v72 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 deleteToSpaceKey] sr_dictionaryRepresentation];
  if (v72)
  {
    v73 = v72;
  }

  else
  {
    v73 = v42;
  }

  v161[22] = v73;
  v160[23] = @"deleteTouchDownUp";
  v74 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 deleteTouchDownUp] sr_dictionaryRepresentation];
  if (v74)
  {
    v75 = v74;
  }

  else
  {
    v75 = v42;
  }

  v161[23] = v75;
  v160[24] = @"deleteUpErrorDistance";
  v76 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 deleteUpErrorDistance] sr_dictionaryRepresentation];
  if (v76)
  {
    v77 = v76;
  }

  else
  {
    v77 = v42;
  }

  v161[24] = v77;
  v160[25] = @"downErrorDistance";
  v78 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 downErrorDistance] sr_dictionaryRepresentation];
  if (v78)
  {
    v79 = v78;
  }

  else
  {
    v79 = v42;
  }

  v161[25] = v79;
  v160[26] = @"pathErrorDistanceRatio";
  v80 = [(SRKeyboardMetrics *)v135 pathErrorDistanceRatio];
  if (v80)
  {
    v81 = v80;
  }

  else
  {
    v81 = v42;
  }

  v161[26] = v81;
  v160[27] = @"pathToDelete";
  v82 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 pathToDelete] sr_dictionaryRepresentation];
  if (v82)
  {
    v83 = v82;
  }

  else
  {
    v83 = v42;
  }

  v161[27] = v83;
  v160[28] = @"pathToPath";
  v84 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 pathToPath] sr_dictionaryRepresentation];
  if (v84)
  {
    v85 = v84;
  }

  else
  {
    v85 = v42;
  }

  v161[28] = v85;
  v160[29] = @"pathToSpace";
  v86 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 pathToSpace] sr_dictionaryRepresentation];
  if (v86)
  {
    v87 = v86;
  }

  else
  {
    v87 = v42;
  }

  v161[29] = v87;
  v160[30] = @"shortWordCharKeyDownErrorDistance";
  v88 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 shortWordCharKeyDownErrorDistance] sr_dictionaryRepresentation];
  if (v88)
  {
    v89 = v88;
  }

  else
  {
    v89 = v42;
  }

  v161[30] = v89;
  v160[31] = @"shortWordCharKeyToCharKey";
  v90 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 shortWordCharKeyToCharKey] sr_dictionaryRepresentation];
  if (v90)
  {
    v91 = v90;
  }

  else
  {
    v91 = v42;
  }

  v161[31] = v91;
  v160[32] = @"shortWordCharKeyTouchDownUp";
  v92 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 shortWordCharKeyTouchDownUp] sr_dictionaryRepresentation];
  if (v92)
  {
    v93 = v92;
  }

  else
  {
    v93 = v42;
  }

  v161[32] = v93;
  v160[33] = @"shortWordCharKeyUpErrorDistance";
  v94 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 shortWordCharKeyUpErrorDistance] sr_dictionaryRepresentation];
  if (v94)
  {
    v95 = v94;
  }

  else
  {
    v95 = v42;
  }

  v161[33] = v95;
  v160[34] = @"spaceDownErrorDistance";
  v96 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 spaceDownErrorDistance] sr_dictionaryRepresentation];
  if (v96)
  {
    v97 = v96;
  }

  else
  {
    v97 = v42;
  }

  v161[34] = v97;
  v160[35] = @"spaceToPlaneChangeKey";
  v98 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 spaceToPlaneChangeKey] sr_dictionaryRepresentation];
  if (v98)
  {
    v99 = v98;
  }

  else
  {
    v99 = v42;
  }

  v161[35] = v99;
  v160[36] = @"spaceToCharKey";
  v100 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 spaceToCharKey] sr_dictionaryRepresentation];
  if (v100)
  {
    v101 = v100;
  }

  else
  {
    v101 = v42;
  }

  v161[36] = v101;
  v160[37] = @"spaceToDeleteKey";
  v102 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 spaceToDeleteKey] sr_dictionaryRepresentation];
  if (v102)
  {
    v103 = v102;
  }

  else
  {
    v103 = v42;
  }

  v161[37] = v103;
  v160[38] = @"spaceToPath";
  v104 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 spaceToPath] sr_dictionaryRepresentation];
  if (v104)
  {
    v105 = v104;
  }

  else
  {
    v105 = v42;
  }

  v161[38] = v105;
  v160[39] = @"spaceToPredictionKey";
  v106 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 spaceToPredictionKey] sr_dictionaryRepresentation];
  if (v106)
  {
    v107 = v106;
  }

  else
  {
    v107 = v42;
  }

  v161[39] = v107;
  v160[40] = @"spaceToShiftKey";
  v108 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 spaceToShiftKey] sr_dictionaryRepresentation];
  if (v108)
  {
    v109 = v108;
  }

  else
  {
    v109 = v42;
  }

  v161[40] = v109;
  v160[41] = @"spaceToSpaceKey";
  v110 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 spaceToSpaceKey] sr_dictionaryRepresentation];
  if (v110)
  {
    v111 = v110;
  }

  else
  {
    v111 = v42;
  }

  v161[41] = v111;
  v160[42] = @"spaceTouchDownUp";
  v112 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 spaceTouchDownUp] sr_dictionaryRepresentation];
  if (v112)
  {
    v113 = v112;
  }

  else
  {
    v113 = v42;
  }

  v161[42] = v113;
  v160[43] = @"spaceUpErrorDistance";
  v114 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 spaceUpErrorDistance] sr_dictionaryRepresentation];
  if (v114)
  {
    v115 = v114;
  }

  else
  {
    v115 = v42;
  }

  v161[43] = v115;
  v160[44] = @"touchDownDown";
  v116 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 touchDownDown] sr_dictionaryRepresentation];
  if (v116)
  {
    v117 = v116;
  }

  else
  {
    v117 = v42;
  }

  v161[44] = v117;
  v160[45] = @"touchDownUp";
  v118 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 touchDownUp] sr_dictionaryRepresentation];
  if (v118)
  {
    v119 = v118;
  }

  else
  {
    v119 = v42;
  }

  v161[45] = v119;
  v160[46] = @"touchUpDown";
  v120 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 touchUpDown] sr_dictionaryRepresentation];
  if (v120)
  {
    v121 = v120;
  }

  else
  {
    v121 = v42;
  }

  v161[46] = v121;
  v160[47] = @"upErrorDistance";
  v122 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)v135 upErrorDistance] sr_dictionaryRepresentation];
  if (v122)
  {
    v123 = v122;
  }

  else
  {
    v123 = v42;
  }

  v161[47] = v123;
  v161[48] = v3;
  v160[48] = @"deleteToDeletes";
  v160[49] = @"longWordDownErrorDistance";
  v161[49] = v9;
  v161[50] = v15;
  v160[50] = @"longWordTouchDownDown";
  v160[51] = @"longWordTouchDownUp";
  v161[51] = v21;
  v161[52] = v27;
  v160[52] = @"longWordUpErrorDistance";
  v160[53] = @"longWordTouchUpDown";
  v161[53] = v33;
  v160[54] = @"totalAlteredWords";
  v161[54] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalAlteredWords](v135, "totalAlteredWords")}];
  v160[55] = @"totalAutoCorrections";
  v161[55] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalAutoCorrections](v135, "totalAutoCorrections")}];
  v160[56] = @"totalDeletes";
  v161[56] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalDeletes](v135, "totalDeletes")}];
  v160[57] = @"totalDrags";
  v161[57] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalDrags](v135, "totalDrags")}];
  v160[58] = @"totalEmojis";
  v161[58] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalEmojis](v135, "totalEmojis")}];
  v160[59] = @"totalHitTestCorrections";
  v161[59] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalHitTestCorrections](v135, "totalHitTestCorrections")}];
  v160[60] = @"totalInsertKeyCorrections";
  v161[60] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalInsertKeyCorrections](v135, "totalInsertKeyCorrections")}];
  v160[61] = @"totalNearKeyCorrections";
  v161[61] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalNearKeyCorrections](v135, "totalNearKeyCorrections")}];
  v160[62] = @"totalPathLength";
  v161[62] = [v134 stringFromMeasurement:{-[SRKeyboardMetrics totalPathLength](v135, "totalPathLength")}];
  v160[63] = @"totalPathTime";
  [(SRKeyboardMetrics *)v135 totalPathTime];
  if (fabs(v124) == INFINITY)
  {
    v125 = @"INF";
  }

  else
  {
    v125 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&v124];
  }

  v161[63] = v125;
  v160[64] = @"totalPaths";
  v161[64] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalPaths](v135, "totalPaths")}];
  v160[65] = @"totalRetroCorrections";
  v161[65] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalRetroCorrections](v135, "totalRetroCorrections")}];
  v160[66] = @"totalSkipTouchCorrections";
  v161[66] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalSkipTouchCorrections](v135, "totalSkipTouchCorrections")}];
  v160[67] = @"totalSpaceCorrections";
  v161[67] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalSpaceCorrections](v135, "totalSpaceCorrections")}];
  v160[68] = @"totalSubstitutionCorrections";
  v161[68] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalSubstitutionCorrections](v135, "totalSubstitutionCorrections")}];
  v160[69] = @"totalTaps";
  v161[69] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalTaps](v135, "totalTaps")}];
  v160[70] = @"totalTranspositionCorrections";
  v161[70] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalTranspositionCorrections](v135, "totalTranspositionCorrections")}];
  v160[71] = @"totalWords";
  v161[71] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalWords](v135, "totalWords")}];
  v160[72] = @"totalTypingDuration";
  [(SRKeyboardMetrics *)v135 totalTypingDuration];
  if (fabs(v126) == INFINITY)
  {
    v127 = @"INF";
  }

  else
  {
    v127 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&v126];
  }

  v161[72] = v127;
  v160[73] = @"wordCountAbsolutist";
  v161[73] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalAbsolutistWords](v135, "totalAbsolutistWords")}];
  v160[74] = @"wordCountAnger";
  v161[74] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalAngerWords](v135, "totalAngerWords")}];
  v160[75] = @"wordCountAnxiety";
  v161[75] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalAnxietyWords](v135, "totalAnxietyWords")}];
  v160[76] = @"wordCountConfused";
  v161[76] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics wordCountForSentimentCategory:](v135, "wordCountForSentimentCategory:", 9)}];
  v160[77] = @"wordCountDeath";
  v161[77] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalDeathWords](v135, "totalDeathWords")}];
  v160[78] = @"wordCountDown";
  v161[78] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalDownWords](v135, "totalDownWords")}];
  v160[79] = @"wordCountHealth";
  v161[79] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalHealthFeelingWords](v135, "totalHealthFeelingWords")}];
  v160[80] = @"wordCountLowEnergy";
  v161[80] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics wordCountForSentimentCategory:](v135, "wordCountForSentimentCategory:", 8)}];
  v160[81] = @"wordCountPositive";
  v161[81] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics wordCountForSentimentCategory:](v135, "wordCountForSentimentCategory:", 6)}];
  v160[82] = @"wordCountSad";
  v161[82] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics wordCountForSentimentCategory:](v135, "wordCountForSentimentCategory:", 7)}];
  v160[83] = @"emojiCountAbsolutist";
  v161[83] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics emojiCountForSentimentCategory:](v135, "emojiCountForSentimentCategory:", 0)}];
  v160[84] = @"emojiCountAnger";
  v161[84] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalAngerEmojis](v135, "totalAngerEmojis")}];
  v160[85] = @"emojiCountAnxiety";
  v161[85] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalAnxietyEmojis](v135, "totalAnxietyEmojis")}];
  v160[86] = @"emojiCountConfused";
  v161[86] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalConfusedEmojis](v135, "totalConfusedEmojis")}];
  v160[87] = @"emojiCountDeath";
  v161[87] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics emojiCountForSentimentCategory:](v135, "emojiCountForSentimentCategory:", 2)}];
  v160[88] = @"emojiCountDown";
  v161[88] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics emojiCountForSentimentCategory:](v135, "emojiCountForSentimentCategory:", 1)}];
  v160[89] = @"emojiCountHealth";
  v161[89] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalHealthFeelingEmojis](v135, "totalHealthFeelingEmojis")}];
  v160[90] = @"emojiCountLowEnergy";
  v161[90] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalLowEnergyEmojis](v135, "totalLowEnergyEmojis")}];
  v160[91] = @"emojiCountPositive";
  v161[91] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalPositiveEmojis](v135, "totalPositiveEmojis")}];
  v160[92] = @"emojiCountSad";
  v161[92] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalSadEmojis](v135, "totalSadEmojis")}];
  v160[93] = @"totalPathPauses";
  v161[93] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalPathPauses](v135, "totalPathPauses")}];
  v160[94] = @"totalPauses";
  v161[94] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalPauses](v135, "totalPauses")}];
  v160[95] = @"totalTypingEpisodes";
  v161[95] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalTypingEpisodes](v135, "totalTypingEpisodes")}];
  v160[96] = @"typingSpeed";
  [(SRKeyboardMetrics *)v135 typingSpeed];
  if (fabs(v128) == INFINITY)
  {
    v129 = @"INF";
  }

  else
  {
    v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&v128];
  }

  v161[96] = v129;
  v160[97] = @"pathTypingSpeed";
  [(SRKeyboardMetrics *)v135 pathTypingSpeed];
  if (fabs(v130) == INFINITY)
  {
    v131 = @"INF";
  }

  else
  {
    v131 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&v130];
  }

  v161[97] = v131;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v161 forKeys:v160 count:98];
  v133 = *MEMORY[0x1E69E9840];
  return result;
}

@end