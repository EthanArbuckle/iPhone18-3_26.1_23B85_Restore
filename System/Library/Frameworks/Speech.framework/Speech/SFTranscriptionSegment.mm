@interface SFTranscriptionSegment
- (BOOL)isEqual:(id)equal;
- (NSRange)substringRange;
- (SFTranscriptionSegment)initWithCoder:(id)coder;
- (id)_initWithSubstring:(id)substring range:(_NSRange)range timestamp:(double)timestamp duration:(double)duration confidence:(float)confidence alternativeSubstrings:(id)substrings alternativeConfidences:(id)confidences phoneSequence:(id)self0 ipaPhoneSequence:(id)self1 voiceAnalytics:(id)self2;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFTranscriptionSegment

- (NSRange)substringRange
{
  length = self->_substringRange.length;
  location = self->_substringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)_initWithSubstring:(id)substring range:(_NSRange)range timestamp:(double)timestamp duration:(double)duration confidence:(float)confidence alternativeSubstrings:(id)substrings alternativeConfidences:(id)confidences phoneSequence:(id)self0 ipaPhoneSequence:(id)self1 voiceAnalytics:(id)self2
{
  length = range.length;
  location = range.location;
  substringCopy = substring;
  substringsCopy = substrings;
  confidencesCopy = confidences;
  sequenceCopy = sequence;
  phoneSequenceCopy = phoneSequence;
  analyticsCopy = analytics;
  v44.receiver = self;
  v44.super_class = SFTranscriptionSegment;
  v28 = [(SFTranscriptionSegment *)&v44 init];
  if (v28)
  {
    v29 = [substringCopy copy];
    substring = v28->_substring;
    v28->_substring = v29;

    v28->_substringRange.location = location;
    v28->_substringRange.length = length;
    v28->_timestamp = timestamp;
    v28->_duration = duration;
    v28->_confidence = confidence;
    v31 = [confidencesCopy count];
    if (v31 != [substringsCopy count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v28 file:@"SFTranscriptionSegment.m" lineNumber:96 description:&stru_1F2139F58];
    }

    v32 = [substringsCopy copy];
    alternativeSubstrings = v28->_alternativeSubstrings;
    v28->_alternativeSubstrings = v32;

    v34 = [confidencesCopy copy];
    alternativeConfidences = v28->_alternativeConfidences;
    v28->_alternativeConfidences = v34;

    v36 = [sequenceCopy copy];
    phoneSequence = v28->_phoneSequence;
    v28->_phoneSequence = v36;

    v38 = [phoneSequenceCopy copy];
    ipaPhoneSequence = v28->_ipaPhoneSequence;
    v28->_ipaPhoneSequence = v38;

    v40 = [analyticsCopy copy];
    voiceAnalytics = v28->_voiceAnalytics;
    v28->_voiceAnalytics = v40;
  }

  return v28;
}

- (SFTranscriptionSegment)initWithCoder:(id)coder
{
  v46[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = SFTranscriptionSegment;
  v5 = [(SFTranscriptionSegment *)&v43 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_substring"];
    substring = v5->_substring;
    v5->_substring = v6;

    v5->_substringRange.location = [coderCopy decodeIntegerForKey:@"_substringRange.location"];
    v5->_substringRange.length = [coderCopy decodeIntegerForKey:@"_substringRange.length"];
    [coderCopy decodeDoubleForKey:@"_timestamp"];
    v5->_timestamp = v8;
    [coderCopy decodeDoubleForKey:@"_duration"];
    v5->_duration = v9;
    [coderCopy decodeDoubleForKey:@"_confidence"];
    *&v10 = v10;
    v5->_confidence = *&v10;
    v11 = MEMORY[0x1E695DFD8];
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_alternativeSubstrings"];
    alternativeSubstrings = v5->_alternativeSubstrings;
    v5->_alternativeSubstrings = v14;

    v16 = MEMORY[0x1E695DFD8];
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"_alternativeConfidences"];
    alternativeConfidences = v5->_alternativeConfidences;
    v5->_alternativeConfidences = v19;

    v21 = [(NSArray *)v5->_alternativeConfidences count];
    if (v21 != [(NSArray *)v5->_alternativeSubstrings count])
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v23 = v5->_alternativeSubstrings;
      v24 = [(NSArray *)v23 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v24)
      {
        v26 = v24;
        v27 = *v40;
        while (1)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(v23);
          }

          *&v25 = v5->_confidence;
          v28 = [MEMORY[0x1E696AD98] numberWithFloat:{v25, v39}];
          [v22 addObject:v28];

          if (!--v26)
          {
            v26 = [(NSArray *)v23 countByEnumeratingWithState:&v39 objects:v44 count:16];
            if (!v26)
            {
              break;
            }
          }
        }
      }

      v29 = [v22 copy];
      v30 = v5->_alternativeConfidences;
      v5->_alternativeConfidences = v29;
    }

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_phoneSequence"];
    phoneSequence = v5->_phoneSequence;
    v5->_phoneSequence = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ipaPhoneSequence"];
    ipaPhoneSequence = v5->_ipaPhoneSequence;
    v5->_ipaPhoneSequence = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_voiceAnalytics"];
    voiceAnalytics = v5->_voiceAnalytics;
    v5->_voiceAnalytics = v35;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  substring = self->_substring;
  coderCopy = coder;
  [coderCopy encodeObject:substring forKey:@"_substring"];
  [coderCopy encodeInteger:self->_substringRange.location forKey:@"_substringRange.location"];
  [coderCopy encodeInteger:self->_substringRange.length forKey:@"_substringRange.length"];
  [coderCopy encodeDouble:@"_timestamp" forKey:self->_timestamp];
  [coderCopy encodeDouble:@"_duration" forKey:self->_duration];
  [coderCopy encodeDouble:@"_confidence" forKey:self->_confidence];
  [coderCopy encodeObject:self->_alternativeSubstrings forKey:@"_alternativeSubstrings"];
  [coderCopy encodeObject:self->_alternativeConfidences forKey:@"_alternativeConfidences"];
  [coderCopy encodeObject:self->_phoneSequence forKey:@"_phoneSequence"];
  [coderCopy encodeObject:self->_ipaPhoneSequence forKey:@"_ipaPhoneSequence"];
  [coderCopy encodeObject:self->_voiceAnalytics forKey:@"_voiceAnalytics"];
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = SFTranscriptionSegment;
  v3 = [(SFTranscriptionSegment *)&v12 description];
  v4 = NSStringFromRange(self->_substringRange);
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  *&v7 = self->_confidence;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  ipaPhoneSequence = self->_ipaPhoneSequence;
  v10 = [v3 stringByAppendingFormat:@", substringRange=%@, timestamp=%@, duration=%@, confidence=%@, substring=%@, alternativeSubstrings=%@, phoneSequence=%@, ipaPhoneSequence=%@, voiceAnalytics=%@", v4, v5, v6, v8, self->_substring, self->_alternativeSubstrings, self->_phoneSequence, ipaPhoneSequence, self->_voiceAnalytics];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v11 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_substringRange.location == equalCopy[10] && self->_substringRange.length == equalCopy[11] && self->_timestamp == *(equalCopy + 3) && self->_duration == *(equalCopy + 4) && self->_confidence == *(equalCopy + 2))
  {
    substring = self->_substring;
    if (substring == equalCopy[2] || [(NSString *)substring isEqual:?])
    {
      alternativeSubstrings = self->_alternativeSubstrings;
      if (alternativeSubstrings == equalCopy[5] || [(NSArray *)alternativeSubstrings isEqual:?])
      {
        alternativeConfidences = self->_alternativeConfidences;
        if (alternativeConfidences == equalCopy[7] || [(NSArray *)alternativeConfidences isEqual:?])
        {
          phoneSequence = self->_phoneSequence;
          if (phoneSequence == equalCopy[8] || [(NSString *)phoneSequence isEqual:?])
          {
            ipaPhoneSequence = self->_ipaPhoneSequence;
            if (ipaPhoneSequence == equalCopy[9] || [(NSString *)ipaPhoneSequence isEqual:?])
            {
              voiceAnalytics = self->_voiceAnalytics;
              if (voiceAnalytics == equalCopy[6] || [(SFVoiceAnalytics *)voiceAnalytics isEqual:?])
              {
                v11 = 1;
              }
            }
          }
        }
      }
    }
  }

  return v11;
}

@end