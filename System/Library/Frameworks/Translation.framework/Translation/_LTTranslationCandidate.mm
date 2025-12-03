@interface _LTTranslationCandidate
- (_LTTranslationCandidate)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTTranslationCandidate

- (_LTTranslationCandidate)initWithCoder:(id)coder
{
  v38[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = _LTTranslationCandidate;
  v5 = [(_LTTranslationCandidate *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formattedString"];
    formattedString = v5->_formattedString;
    v5->_formattedString = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedFormattedString"];
    sanitizedFormattedString = v5->_sanitizedFormattedString;
    v5->_sanitizedFormattedString = v8;

    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v10;
    v5->_lowConfidence = [coderCopy decodeBoolForKey:@"lowConfidence"];
    v11 = MEMORY[0x277CBEB98];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v13 = [v11 setWithArray:v12];

    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"tokens"];
    tokens = v5->_tokens;
    v5->_tokens = v14;

    v16 = MEMORY[0x277CBEB98];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v18 = [v16 setWithArray:v17];

    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"senses"];
    senses = v5->_senses;
    v5->_senses = v19;

    v21 = MEMORY[0x277CBEB98];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    v23 = [v21 setWithArray:v22];

    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"genders"];
    genderAlternatives = v5->_genderAlternatives;
    v5->_genderAlternatives = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statistics"];
    statistics = v5->_statistics;
    v5->_statistics = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"romanization"];
    romanization = v5->_romanization;
    v5->_romanization = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stableString"];
    stableString = v5->_stableString;
    v5->_stableString = v30;

    v32 = v5;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  formattedString = self->_formattedString;
  coderCopy = coder;
  [coderCopy encodeObject:formattedString forKey:@"formattedString"];
  [coderCopy encodeObject:self->_sanitizedFormattedString forKey:@"sanitizedFormattedString"];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
  [coderCopy encodeBool:self->_lowConfidence forKey:@"lowConfidence"];
  [coderCopy encodeObject:self->_tokens forKey:@"tokens"];
  [coderCopy encodeObject:self->_senses forKey:@"senses"];
  [coderCopy encodeObject:self->_genderAlternatives forKey:@"genders"];
  [coderCopy encodeObject:self->_statistics forKey:@"statistics"];
  [coderCopy encodeObject:self->_romanization forKey:@"romanization"];
  [coderCopy encodeObject:self->_stableString forKey:@"stableString"];
}

@end