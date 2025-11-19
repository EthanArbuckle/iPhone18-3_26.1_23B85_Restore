@interface CTMessage
- (CTMessage)init;
- (CTMessage)initWithDate:(id)a3;
- (id)addData:(id)a3 withContentType:(id)a4;
- (id)addPart:(id)a3;
- (id)addText:(id)a3;
- (id)description;
- (void)addContentTypeParameterWithName:(id)a3 value:(id)a4;
- (void)addEmailRecipient:(id)a3;
- (void)addPhoneRecipient:(id)a3;
- (void)addRecipient:(id)a3;
- (void)removePartAtIndex:(unint64_t)a3;
- (void)removeRecipient:(id)a3;
- (void)removeRecipientsInArray:(id)a3;
- (void)setRawHeaders:(id)a3;
- (void)setRecipient:(id)a3;
- (void)setRecipients:(id)a3;
@end

@implementation CTMessage

- (CTMessage)init
{
  v19.receiver = self;
  v19.super_class = CTMessage;
  v2 = [(CTMessage *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recipients = v2->_recipients;
    v2->_recipients = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = v2->_items;
    v2->_items = v5;

    sender = v2->_sender;
    v2->_sender = 0;

    v8 = objc_alloc_init(MEMORY[0x1E695DF00]);
    date = v2->_date;
    v2->_date = v8;

    *&v2->_messageId = 0xFFFFFFFFLL;
    serviceCenter = v2->_serviceCenter;
    v2->_serviceCenter = 0;

    subject = v2->_subject;
    v2->_subject = 0;

    rawHeaders = v2->_rawHeaders;
    v2->_rawHeaders = 0;

    contentType = v2->_contentType;
    v2->_contentType = 0;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    contentTypeParams = v2->_contentTypeParams;
    v2->_contentTypeParams = v14;

    countryCode = v2->_countryCode;
    v2->_countryCode = 0;

    *&v2->_bypassSupportedMessageModesCheck = 0;
    context = v2->_context;
    v2->_context = 0;

    v2->_replyEnabled = 0;
    v2->_smsType = 0;
  }

  return v2;
}

- (CTMessage)initWithDate:(id)a3
{
  v4 = a3;
  v5 = [(CTMessage *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    date = v5->_date;
    v5->_date = v6;
  }

  return v5;
}

- (void)setRawHeaders:(id)a3
{
  v5 = a3;
  rawHeaders = self->_rawHeaders;
  p_rawHeaders = &self->_rawHeaders;
  if (rawHeaders != v5)
  {
    v8 = v5;
    objc_storeStrong(p_rawHeaders, a3);
    v5 = v8;
  }
}

- (void)addRecipient:(id)a3
{
  v7 = a3;
  if ([v7 isMemberOfClass:objc_opt_class()])
  {
    [(CTMessage *)self addPhoneRecipient:v7];
  }

  else if ([v7 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [CTPhoneNumber alloc];
    v5 = [(CTMessage *)self context];
    v6 = -[CTPhoneNumber initWithDigits:digits:countryCode:](v4, "initWithDigits:digits:countryCode:", [v5 slotID], v7, @"1");

    [(CTMessage *)self addPhoneRecipient:v6];
  }

  else
  {
    [(CTMessage *)self addEmailRecipient:v7];
  }
}

- (void)removeRecipient:(id)a3
{
  v4 = [(NSMutableArray *)self->_recipients indexOfObject:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    recipients = self->_recipients;

    [(NSMutableArray *)recipients removeObjectAtIndex:v5];
  }
}

- (void)removeRecipientsInArray:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_recipients removeObjectsInArray:?];
  }
}

- (void)setRecipient:(id)a3
{
  if (a3)
  {
    recipients = self->_recipients;
    v5 = a3;
    [(NSMutableArray *)recipients removeAllObjects];
    [(NSMutableArray *)self->_recipients addObject:v5];
  }
}

- (void)setRecipients:(id)a3
{
  v5 = a3;
  [(NSMutableArray *)self->_recipients removeAllObjects];
  v4 = v5;
  if (v5)
  {
    [(NSMutableArray *)self->_recipients addObjectsFromArray:v5];
    v4 = v5;
  }
}

- (void)addPhoneRecipient:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableArray *)self->_recipients addObject:v4];
}

- (void)addEmailRecipient:(id)a3
{
  v4 = a3;
  v5 = [[CTEmailAddress alloc] initWithAddress:v4];

  [(NSMutableArray *)self->_recipients addObject:v5];
  self->_messageType = 2;
}

- (id)addText:(id)a3
{
  v4 = a3;
  v5 = [CTMessagePart alloc];
  v6 = [v4 dataUsingEncoding:4];

  v7 = [(CTMessagePart *)v5 initWithData:v6 contentType:@"text/plain"];
  [(NSMutableArray *)self->_items addObject:v7];

  return v7;
}

- (id)addData:(id)a3 withContentType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CTMessagePart alloc] initWithData:v7 contentType:v6];

  [(NSMutableArray *)self->_items addObject:v8];

  return v8;
}

- (id)addPart:(id)a3
{
  v4 = a3;
  [(NSMutableArray *)self->_items addObject:v4];

  return v4;
}

- (void)removePartAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_items count]> a3)
  {
    items = self->_items;

    [(NSMutableArray *)items removeObjectAtIndex:a3];
  }
}

- (void)addContentTypeParameterWithName:(id)a3 value:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [(NSMutableDictionary *)self->_contentTypeParams setObject:a4 forKey:a3];
    }
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTMessageAddress *)self->_sender encodedString];
  [v3 appendFormat:@", CTMessageAddress=%@", v4];

  [v3 appendFormat:@", Recipients=%@", self->_recipients];
  [v3 appendFormat:@", Items=%@", self->_items];
  [v3 appendFormat:@", Raw Headers=%@", self->_rawHeaders];
  [v3 appendFormat:@", Date=%@", self->_date];
  [v3 appendFormat:@", Message ID=%u", self->_messageId];
  [v3 appendFormat:@", UUID=%@", self->_uuid];
  [v3 appendFormat:@", Message Type=%u", self->_messageType];
  [v3 appendFormat:@", Service Center=%@", self->_serviceCenter];
  [v3 appendFormat:@", Content-Type=%@", self->_contentType];
  [v3 appendFormat:@", Content-Type params=%@", self->_contentTypeParams];
  [v3 appendFormat:@", Replace Message=%{BOOL}u", self->_replaceMessage];
  [v3 appendFormat:@", Reply Enabled=%{BOOL}d", self->_replyEnabled];
  [v3 appendString:@">"];

  return v3;
}

@end