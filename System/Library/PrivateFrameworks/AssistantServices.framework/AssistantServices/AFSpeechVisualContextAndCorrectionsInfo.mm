@interface AFSpeechVisualContextAndCorrectionsInfo
- (AFSpeechVisualContextAndCorrectionsInfo)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
- (void)setMessagesContext:(id)context;
@end

@implementation AFSpeechVisualContextAndCorrectionsInfo

- (void)setMessagesContext:(id)context
{
  v4 = MEMORY[0x1E695DEC8];
  contextCopy = context;
  v6 = [[v4 alloc] initWithArray:contextCopy copyItems:1];

  messagesContext = self->_messagesContext;
  self->_messagesContext = v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [equalCopy[1] isEqual:self->_messagesContext] && objc_msgSend(equalCopy[2], "isEqual:", self->_correctedText))
  {
    v5 = [equalCopy[3] isEqual:self->_recognizedText];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (AFSpeechVisualContextAndCorrectionsInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = AFSpeechVisualContextAndCorrectionsInfo;
  v5 = [(AFSpeechVisualContextAndCorrectionsInfo *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_messagesContext"];
    messagesContext = v5->_messagesContext;
    v5->_messagesContext = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recognizedText"];
    recognizedText = v5->_recognizedText;
    v5->_recognizedText = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_correctedText"];
    correctedText = v5->_correctedText;
    v5->_correctedText = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  messagesContext = self->_messagesContext;
  coderCopy = coder;
  [coderCopy encodeObject:messagesContext forKey:@"_messagesContext"];
  [coderCopy encodeObject:self->_recognizedText forKey:@"_recognizedText"];
  [coderCopy encodeObject:self->_correctedText forKey:@"_correctedText"];
}

@end