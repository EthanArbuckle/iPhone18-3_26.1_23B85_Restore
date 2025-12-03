@interface EARRecognitionMetrics
- (EARRecognitionMetrics)initWithCoder:(id)coder;
- (EARRecognitionMetrics)initWithRecognitionMetrics:(id)metrics cpuInstructions:(double)instructions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARRecognitionMetrics

- (EARRecognitionMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = EARRecognitionMetrics;
  v5 = [(EARRecognitionMetrics *)&v25 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"allItnRunIntervals"];
    allItnRunIntervals = v5->_allItnRunIntervals;
    v5->_allItnRunIntervals = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"pauseDurations"];
    pauseDurations = v5->_pauseDurations;
    v5->_pauseDurations = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itnDurationInNs"];
    itnDurationInNs = v5->_itnDurationInNs;
    v5->_itnDurationInNs = v16;

    v5->_isEmojiDisambiguationUsed = [coderCopy decodeBoolForKey:@"isEmojiDisambiguationUsed"];
    v5->_isEmojiPersonalizationUsed = [coderCopy decodeBoolForKey:@"isEmojiPersonalizationUsed"];
    v5->_isEmojiExpectedButNotRecognized = [coderCopy decodeBoolForKey:@"isEmojiExpectedButNotRecognized"];
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"recognizedEmojis"];
    recognizedEmojis = v5->_recognizedEmojis;
    v5->_recognizedEmojis = v21;

    [coderCopy decodeDoubleForKey:@"cpuMillionInstructionsPerSecond"];
    v5->_cpuMillionInstructionsPerSecond = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  allItnRunIntervals = self->_allItnRunIntervals;
  coderCopy = coder;
  [coderCopy encodeObject:allItnRunIntervals forKey:@"allItnRunIntervals"];
  [coderCopy encodeObject:self->_pauseDurations forKey:@"pauseDurations"];
  [coderCopy encodeObject:self->_itnDurationInNs forKey:@"itnDurationInNs"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEmojiDisambiguationUsed];
  [coderCopy encodeObject:v5 forKey:@"isEmojiDisambiguationUsed"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEmojiPersonalizationUsed];
  [coderCopy encodeObject:v6 forKey:@"isEmojiPersonalizationUsed"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEmojiExpectedButNotRecognized];
  [coderCopy encodeObject:v7 forKey:@"isEmojiExpectedButNotRecognized"];

  [coderCopy encodeObject:self->_recognizedEmojis forKey:@"recognizedEmojis"];
  [coderCopy encodeDouble:@"cpuMillionInstructionsPerSecond" forKey:self->_cpuMillionInstructionsPerSecond];
}

- (EARRecognitionMetrics)initWithRecognitionMetrics:(id)metrics cpuInstructions:(double)instructions
{
  metricsCopy = metrics;
  v20.receiver = self;
  v20.super_class = EARRecognitionMetrics;
  v7 = [(EARRecognitionMetrics *)&v20 init];
  if (v7)
  {
    allItnRunIntervals = [metricsCopy allItnRunIntervals];
    v9 = [allItnRunIntervals copy];
    allItnRunIntervals = v7->_allItnRunIntervals;
    v7->_allItnRunIntervals = v9;

    pauseDurations = [metricsCopy pauseDurations];
    v12 = [pauseDurations copy];
    pauseDurations = v7->_pauseDurations;
    v7->_pauseDurations = v12;

    itnDurationInNs = [metricsCopy itnDurationInNs];
    itnDurationInNs = v7->_itnDurationInNs;
    v7->_itnDurationInNs = itnDurationInNs;

    v7->_isEmojiDisambiguationUsed = [metricsCopy isEmojiDisambiguationUsed];
    v7->_isEmojiPersonalizationUsed = [metricsCopy isEmojiPersonalizationUsed];
    v7->_isEmojiExpectedButNotRecognized = [metricsCopy isEmojiExpectedButNotRecognized];
    recognizedEmojis = [metricsCopy recognizedEmojis];
    v17 = [recognizedEmojis copy];
    recognizedEmojis = v7->_recognizedEmojis;
    v7->_recognizedEmojis = v17;

    v7->_cpuMillionInstructionsPerSecond = instructions;
  }

  return v7;
}

@end