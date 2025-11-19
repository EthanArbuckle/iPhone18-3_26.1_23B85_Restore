@interface SFTranscriptionSegment
- (BOOL)isEqual:(id)a3;
- (NSRange)substringRange;
- (SFTranscriptionSegment)initWithCoder:(id)a3;
- (id)_initWithSubstring:(id)a3 range:(_NSRange)a4 timestamp:(double)a5 duration:(double)a6 confidence:(float)a7 alternativeSubstrings:(id)a8 alternativeConfidences:(id)a9 phoneSequence:(id)a10 ipaPhoneSequence:(id)a11 voiceAnalytics:(id)a12;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (id)_initWithSubstring:(id)a3 range:(_NSRange)a4 timestamp:(double)a5 duration:(double)a6 confidence:(float)a7 alternativeSubstrings:(id)a8 alternativeConfidences:(id)a9 phoneSequence:(id)a10 ipaPhoneSequence:(id)a11 voiceAnalytics:(id)a12
{
  length = a4.length;
  location = a4.location;
  v22 = a3;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v44.receiver = self;
  v44.super_class = SFTranscriptionSegment;
  v28 = [(SFTranscriptionSegment *)&v44 init];
  if (v28)
  {
    v29 = [v22 copy];
    substring = v28->_substring;
    v28->_substring = v29;

    v28->_substringRange.location = location;
    v28->_substringRange.length = length;
    v28->_timestamp = a5;
    v28->_duration = a6;
    v28->_confidence = a7;
    v31 = [v24 count];
    if (v31 != [v23 count])
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      [v43 handleFailureInMethod:a2 object:v28 file:@"SFTranscriptionSegment.m" lineNumber:96 description:&stru_1F2139F58];
    }

    v32 = [v23 copy];
    alternativeSubstrings = v28->_alternativeSubstrings;
    v28->_alternativeSubstrings = v32;

    v34 = [v24 copy];
    alternativeConfidences = v28->_alternativeConfidences;
    v28->_alternativeConfidences = v34;

    v36 = [v25 copy];
    phoneSequence = v28->_phoneSequence;
    v28->_phoneSequence = v36;

    v38 = [v26 copy];
    ipaPhoneSequence = v28->_ipaPhoneSequence;
    v28->_ipaPhoneSequence = v38;

    v40 = [v27 copy];
    voiceAnalytics = v28->_voiceAnalytics;
    v28->_voiceAnalytics = v40;
  }

  return v28;
}

- (SFTranscriptionSegment)initWithCoder:(id)a3
{
  v46[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = SFTranscriptionSegment;
  v5 = [(SFTranscriptionSegment *)&v43 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_substring"];
    substring = v5->_substring;
    v5->_substring = v6;

    v5->_substringRange.location = [v4 decodeIntegerForKey:@"_substringRange.location"];
    v5->_substringRange.length = [v4 decodeIntegerForKey:@"_substringRange.length"];
    [v4 decodeDoubleForKey:@"_timestamp"];
    v5->_timestamp = v8;
    [v4 decodeDoubleForKey:@"_duration"];
    v5->_duration = v9;
    [v4 decodeDoubleForKey:@"_confidence"];
    *&v10 = v10;
    v5->_confidence = *&v10;
    v11 = MEMORY[0x1E695DFD8];
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"_alternativeSubstrings"];
    alternativeSubstrings = v5->_alternativeSubstrings;
    v5->_alternativeSubstrings = v14;

    v16 = MEMORY[0x1E695DFD8];
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"_alternativeConfidences"];
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

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_phoneSequence"];
    phoneSequence = v5->_phoneSequence;
    v5->_phoneSequence = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ipaPhoneSequence"];
    ipaPhoneSequence = v5->_ipaPhoneSequence;
    v5->_ipaPhoneSequence = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_voiceAnalytics"];
    voiceAnalytics = v5->_voiceAnalytics;
    v5->_voiceAnalytics = v35;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  substring = self->_substring;
  v5 = a3;
  [v5 encodeObject:substring forKey:@"_substring"];
  [v5 encodeInteger:self->_substringRange.location forKey:@"_substringRange.location"];
  [v5 encodeInteger:self->_substringRange.length forKey:@"_substringRange.length"];
  [v5 encodeDouble:@"_timestamp" forKey:self->_timestamp];
  [v5 encodeDouble:@"_duration" forKey:self->_duration];
  [v5 encodeDouble:@"_confidence" forKey:self->_confidence];
  [v5 encodeObject:self->_alternativeSubstrings forKey:@"_alternativeSubstrings"];
  [v5 encodeObject:self->_alternativeConfidences forKey:@"_alternativeConfidences"];
  [v5 encodeObject:self->_phoneSequence forKey:@"_phoneSequence"];
  [v5 encodeObject:self->_ipaPhoneSequence forKey:@"_ipaPhoneSequence"];
  [v5 encodeObject:self->_voiceAnalytics forKey:@"_voiceAnalytics"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v11 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_substringRange.location == v4[10] && self->_substringRange.length == v4[11] && self->_timestamp == *(v4 + 3) && self->_duration == *(v4 + 4) && self->_confidence == *(v4 + 2))
  {
    substring = self->_substring;
    if (substring == v4[2] || [(NSString *)substring isEqual:?])
    {
      alternativeSubstrings = self->_alternativeSubstrings;
      if (alternativeSubstrings == v4[5] || [(NSArray *)alternativeSubstrings isEqual:?])
      {
        alternativeConfidences = self->_alternativeConfidences;
        if (alternativeConfidences == v4[7] || [(NSArray *)alternativeConfidences isEqual:?])
        {
          phoneSequence = self->_phoneSequence;
          if (phoneSequence == v4[8] || [(NSString *)phoneSequence isEqual:?])
          {
            ipaPhoneSequence = self->_ipaPhoneSequence;
            if (ipaPhoneSequence == v4[9] || [(NSString *)ipaPhoneSequence isEqual:?])
            {
              voiceAnalytics = self->_voiceAnalytics;
              if (voiceAnalytics == v4[6] || [(SFVoiceAnalytics *)voiceAnalytics isEqual:?])
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