@interface AFSpeechCorrectionInfo
- (AFSpeechCorrectionInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSpeechCorrectionInfo

- (AFSpeechCorrectionInfo)initWithCoder:(id)coder
{
  v30[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = AFSpeechCorrectionInfo;
  v5 = [(AFSpeechCorrectionInfo *)&v29 init];
  if (v5)
  {
    v5->_alternativeSelectionCount = [coderCopy decodeIntegerForKey:@"alternativeSelectionCount"];
    v5->_characterModificationCount = [coderCopy decodeIntegerForKey:@"characterModificationCount"];
    v5->_characterInsertionCount = [coderCopy decodeIntegerForKey:@"characterInsertionCount"];
    v5->_characterSubstitutionCount = [coderCopy decodeIntegerForKey:@"characterSubstitutionCount"];
    v5->_characterDeletionCount = [coderCopy decodeIntegerForKey:@"characterDeletionCount"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"correctedText"];
    correctedText = v5->_correctedText;
    v5->_correctedText = v6;

    v8 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v30[2] = objc_opt_class();
    v30[3] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_recognizedTextInfo"];
    recognizedTextInfo = v5->_recognizedTextInfo;
    v5->_recognizedTextInfo = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"_alternativesSelectedInfo"];
    alternativesSelectedInfo = v5->_alternativesSelectedInfo;
    v5->_alternativesSelectedInfo = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v20 setWithObjects:{v21, v22, v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"_selectedAlternativesInfo"];
    selectedAlternativesInfo = v5->_selectedAlternativesInfo;
    v5->_selectedAlternativesInfo = v25;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  alternativeSelectionCount = self->_alternativeSelectionCount;
  coderCopy = coder;
  [coderCopy encodeInteger:alternativeSelectionCount forKey:@"alternativeSelectionCount"];
  [coderCopy encodeInteger:self->_characterModificationCount forKey:@"characterModificationCount"];
  [coderCopy encodeInteger:self->_characterInsertionCount forKey:@"characterInsertionCount"];
  [coderCopy encodeInteger:self->_characterSubstitutionCount forKey:@"characterSubstitutionCount"];
  [coderCopy encodeInteger:self->_characterDeletionCount forKey:@"characterDeletionCount"];
  [coderCopy encodeObject:self->_correctedText forKey:@"correctedText"];
  [coderCopy encodeObject:self->_recognizedTextInfo forKey:@"_recognizedTextInfo"];
  [coderCopy encodeObject:self->_alternativesSelectedInfo forKey:@"_alternativesSelectedInfo"];
  [coderCopy encodeObject:self->_selectedAlternativesInfo forKey:@"_selectedAlternativesInfo"];
}

@end