@interface AFSpeechVisualContextAndCorrectionsInfo
- (AFSpeechVisualContextAndCorrectionsInfo)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setMessagesContext:(id)a3;
@end

@implementation AFSpeechVisualContextAndCorrectionsInfo

- (void)setMessagesContext:(id)a3
{
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:v5 copyItems:1];

  messagesContext = self->_messagesContext;
  self->_messagesContext = v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4[1] isEqual:self->_messagesContext] && objc_msgSend(v4[2], "isEqual:", self->_correctedText))
  {
    v5 = [v4[3] isEqual:self->_recognizedText];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (AFSpeechVisualContextAndCorrectionsInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = AFSpeechVisualContextAndCorrectionsInfo;
  v5 = [(AFSpeechVisualContextAndCorrectionsInfo *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_messagesContext"];
    messagesContext = v5->_messagesContext;
    v5->_messagesContext = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recognizedText"];
    recognizedText = v5->_recognizedText;
    v5->_recognizedText = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_correctedText"];
    correctedText = v5->_correctedText;
    v5->_correctedText = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  messagesContext = self->_messagesContext;
  v5 = a3;
  [v5 encodeObject:messagesContext forKey:@"_messagesContext"];
  [v5 encodeObject:self->_recognizedText forKey:@"_recognizedText"];
  [v5 encodeObject:self->_correctedText forKey:@"_correctedText"];
}

@end