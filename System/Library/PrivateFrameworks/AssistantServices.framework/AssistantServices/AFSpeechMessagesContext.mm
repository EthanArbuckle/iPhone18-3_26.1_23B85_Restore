@interface AFSpeechMessagesContext
- (AFSpeechMessagesContext)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
- (void)setMessages:(id)messages;
@end

@implementation AFSpeechMessagesContext

- (void)setMessages:(id)messages
{
  v4 = MEMORY[0x1E695DEC8];
  messagesCopy = messages;
  v6 = [[v4 alloc] initWithArray:messagesCopy copyItems:1];

  messages = self->_messages;
  self->_messages = v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [equalCopy[1] isEqual:self->_sender])
  {
    v5 = [equalCopy[2] isEqual:self->_messages];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (AFSpeechMessagesContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = AFSpeechMessagesContext;
  v5 = [(AFSpeechMessagesContext *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sender"];
    sender = v5->_sender;
    v5->_sender = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_messages"];
    messages = v5->_messages;
    v5->_messages = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sender = self->_sender;
  coderCopy = coder;
  [coderCopy encodeObject:sender forKey:@"_sender"];
  [coderCopy encodeObject:self->_messages forKey:@"_messages"];
}

@end