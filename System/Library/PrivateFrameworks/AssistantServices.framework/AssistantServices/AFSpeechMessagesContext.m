@interface AFSpeechMessagesContext
- (AFSpeechMessagesContext)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setMessages:(id)a3;
@end

@implementation AFSpeechMessagesContext

- (void)setMessages:(id)a3
{
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:v5 copyItems:1];

  messages = self->_messages;
  self->_messages = v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4[1] isEqual:self->_sender])
  {
    v5 = [v4[2] isEqual:self->_messages];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (AFSpeechMessagesContext)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AFSpeechMessagesContext;
  v5 = [(AFSpeechMessagesContext *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sender"];
    sender = v5->_sender;
    v5->_sender = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_messages"];
    messages = v5->_messages;
    v5->_messages = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sender = self->_sender;
  v5 = a3;
  [v5 encodeObject:sender forKey:@"_sender"];
  [v5 encodeObject:self->_messages forKey:@"_messages"];
}

@end