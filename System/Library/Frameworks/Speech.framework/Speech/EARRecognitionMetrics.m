@interface EARRecognitionMetrics
- (EARRecognitionMetrics)initWithCoder:(id)a3;
- (EARRecognitionMetrics)initWithRecognitionMetrics:(id)a3 cpuInstructions:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EARRecognitionMetrics

- (EARRecognitionMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = EARRecognitionMetrics;
  v5 = [(EARRecognitionMetrics *)&v25 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"allItnRunIntervals"];
    allItnRunIntervals = v5->_allItnRunIntervals;
    v5->_allItnRunIntervals = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"pauseDurations"];
    pauseDurations = v5->_pauseDurations;
    v5->_pauseDurations = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itnDurationInNs"];
    itnDurationInNs = v5->_itnDurationInNs;
    v5->_itnDurationInNs = v16;

    v5->_isEmojiDisambiguationUsed = [v4 decodeBoolForKey:@"isEmojiDisambiguationUsed"];
    v5->_isEmojiPersonalizationUsed = [v4 decodeBoolForKey:@"isEmojiPersonalizationUsed"];
    v5->_isEmojiExpectedButNotRecognized = [v4 decodeBoolForKey:@"isEmojiExpectedButNotRecognized"];
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"recognizedEmojis"];
    recognizedEmojis = v5->_recognizedEmojis;
    v5->_recognizedEmojis = v21;

    [v4 decodeDoubleForKey:@"cpuMillionInstructionsPerSecond"];
    v5->_cpuMillionInstructionsPerSecond = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  allItnRunIntervals = self->_allItnRunIntervals;
  v8 = a3;
  [v8 encodeObject:allItnRunIntervals forKey:@"allItnRunIntervals"];
  [v8 encodeObject:self->_pauseDurations forKey:@"pauseDurations"];
  [v8 encodeObject:self->_itnDurationInNs forKey:@"itnDurationInNs"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEmojiDisambiguationUsed];
  [v8 encodeObject:v5 forKey:@"isEmojiDisambiguationUsed"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEmojiPersonalizationUsed];
  [v8 encodeObject:v6 forKey:@"isEmojiPersonalizationUsed"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEmojiExpectedButNotRecognized];
  [v8 encodeObject:v7 forKey:@"isEmojiExpectedButNotRecognized"];

  [v8 encodeObject:self->_recognizedEmojis forKey:@"recognizedEmojis"];
  [v8 encodeDouble:@"cpuMillionInstructionsPerSecond" forKey:self->_cpuMillionInstructionsPerSecond];
}

- (EARRecognitionMetrics)initWithRecognitionMetrics:(id)a3 cpuInstructions:(double)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = EARRecognitionMetrics;
  v7 = [(EARRecognitionMetrics *)&v20 init];
  if (v7)
  {
    v8 = [v6 allItnRunIntervals];
    v9 = [v8 copy];
    allItnRunIntervals = v7->_allItnRunIntervals;
    v7->_allItnRunIntervals = v9;

    v11 = [v6 pauseDurations];
    v12 = [v11 copy];
    pauseDurations = v7->_pauseDurations;
    v7->_pauseDurations = v12;

    v14 = [v6 itnDurationInNs];
    itnDurationInNs = v7->_itnDurationInNs;
    v7->_itnDurationInNs = v14;

    v7->_isEmojiDisambiguationUsed = [v6 isEmojiDisambiguationUsed];
    v7->_isEmojiPersonalizationUsed = [v6 isEmojiPersonalizationUsed];
    v7->_isEmojiExpectedButNotRecognized = [v6 isEmojiExpectedButNotRecognized];
    v16 = [v6 recognizedEmojis];
    v17 = [v16 copy];
    recognizedEmojis = v7->_recognizedEmojis;
    v7->_recognizedEmojis = v17;

    v7->_cpuMillionInstructionsPerSecond = a4;
  }

  return v7;
}

@end