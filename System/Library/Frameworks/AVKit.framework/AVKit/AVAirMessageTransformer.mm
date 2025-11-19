@interface AVAirMessageTransformer
- (AVAirMessageTransformer)initWithMessageClass:(Class)a3;
- (id)dataForMessage:(id)a3;
- (id)reverseTransformerForMessageData:(id)a3;
@end

@implementation AVAirMessageTransformer

- (id)reverseTransformerForMessageData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ([(NSData *)self->_previousUnusedData length])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(v4, "length") + -[NSData length](self->_previousUnusedData, "length")}];
    [v5 appendData:self->_previousUnusedData];
    if (v4)
    {
      [v5 appendData:v4];
    }
  }

  if (v5)
  {
    v6 = +[AVMessageParser airMessageParser];
    v7 = [v6 partsWithData:v5];

    if ([v7 isIncomplete])
    {
      v8 = v5;
    }

    else
    {
      v8 = [v7 extraData];
    }

    previousUnusedData = self->_previousUnusedData;
    self->_previousUnusedData = v8;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dataForMessage:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 messageDataRepresentation];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_11;
      }

      v5 = _avairlog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v9 = 136315394;
        v10 = "[AVAirMessageTransformer dataForMessage:]";
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s value not represented by NSData (%@)", &v9, 0x16u);
      }
    }

    else
    {
      v5 = _avairlog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[AVAirMessageTransformer dataForMessage:]";
        _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s value does not implement AVMessageTransformerProtocol", &v9, 0xCu);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_11:

  return v4;
}

- (AVAirMessageTransformer)initWithMessageClass:(Class)a3
{
  v7.receiver = self;
  v7.super_class = AVAirMessageTransformer;
  v4 = [(AVAirMessageTransformer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_messageClass, a3);
  }

  return v5;
}

@end