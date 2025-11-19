@interface AFSpeechCorrectionInfo
- (AFSpeechCorrectionInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSpeechCorrectionInfo

- (AFSpeechCorrectionInfo)initWithCoder:(id)a3
{
  v30[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = AFSpeechCorrectionInfo;
  v5 = [(AFSpeechCorrectionInfo *)&v29 init];
  if (v5)
  {
    v5->_alternativeSelectionCount = [v4 decodeIntegerForKey:@"alternativeSelectionCount"];
    v5->_characterModificationCount = [v4 decodeIntegerForKey:@"characterModificationCount"];
    v5->_characterInsertionCount = [v4 decodeIntegerForKey:@"characterInsertionCount"];
    v5->_characterSubstitutionCount = [v4 decodeIntegerForKey:@"characterSubstitutionCount"];
    v5->_characterDeletionCount = [v4 decodeIntegerForKey:@"characterDeletionCount"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"correctedText"];
    correctedText = v5->_correctedText;
    v5->_correctedText = v6;

    v8 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v30[2] = objc_opt_class();
    v30[3] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_recognizedTextInfo"];
    recognizedTextInfo = v5->_recognizedTextInfo;
    v5->_recognizedTextInfo = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"_alternativesSelectedInfo"];
    alternativesSelectedInfo = v5->_alternativesSelectedInfo;
    v5->_alternativesSelectedInfo = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v20 setWithObjects:{v21, v22, v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"_selectedAlternativesInfo"];
    selectedAlternativesInfo = v5->_selectedAlternativesInfo;
    v5->_selectedAlternativesInfo = v25;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  alternativeSelectionCount = self->_alternativeSelectionCount;
  v5 = a3;
  [v5 encodeInteger:alternativeSelectionCount forKey:@"alternativeSelectionCount"];
  [v5 encodeInteger:self->_characterModificationCount forKey:@"characterModificationCount"];
  [v5 encodeInteger:self->_characterInsertionCount forKey:@"characterInsertionCount"];
  [v5 encodeInteger:self->_characterSubstitutionCount forKey:@"characterSubstitutionCount"];
  [v5 encodeInteger:self->_characterDeletionCount forKey:@"characterDeletionCount"];
  [v5 encodeObject:self->_correctedText forKey:@"correctedText"];
  [v5 encodeObject:self->_recognizedTextInfo forKey:@"_recognizedTextInfo"];
  [v5 encodeObject:self->_alternativesSelectedInfo forKey:@"_alternativesSelectedInfo"];
  [v5 encodeObject:self->_selectedAlternativesInfo forKey:@"_selectedAlternativesInfo"];
}

@end