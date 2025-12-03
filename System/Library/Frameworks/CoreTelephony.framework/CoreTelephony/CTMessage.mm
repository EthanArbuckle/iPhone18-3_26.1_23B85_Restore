@interface CTMessage
- (CTMessage)init;
- (CTMessage)initWithDate:(id)date;
- (id)addData:(id)data withContentType:(id)type;
- (id)addPart:(id)part;
- (id)addText:(id)text;
- (id)description;
- (void)addContentTypeParameterWithName:(id)name value:(id)value;
- (void)addEmailRecipient:(id)recipient;
- (void)addPhoneRecipient:(id)recipient;
- (void)addRecipient:(id)recipient;
- (void)removePartAtIndex:(unint64_t)index;
- (void)removeRecipient:(id)recipient;
- (void)removeRecipientsInArray:(id)array;
- (void)setRawHeaders:(id)headers;
- (void)setRecipient:(id)recipient;
- (void)setRecipients:(id)recipients;
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

- (CTMessage)initWithDate:(id)date
{
  dateCopy = date;
  v5 = [(CTMessage *)self init];
  if (v5)
  {
    v6 = [dateCopy copy];
    date = v5->_date;
    v5->_date = v6;
  }

  return v5;
}

- (void)setRawHeaders:(id)headers
{
  headersCopy = headers;
  rawHeaders = self->_rawHeaders;
  p_rawHeaders = &self->_rawHeaders;
  if (rawHeaders != headersCopy)
  {
    v8 = headersCopy;
    objc_storeStrong(p_rawHeaders, headers);
    headersCopy = v8;
  }
}

- (void)addRecipient:(id)recipient
{
  recipientCopy = recipient;
  if ([recipientCopy isMemberOfClass:objc_opt_class()])
  {
    [(CTMessage *)self addPhoneRecipient:recipientCopy];
  }

  else if ([recipientCopy rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [CTPhoneNumber alloc];
    context = [(CTMessage *)self context];
    v6 = -[CTPhoneNumber initWithDigits:digits:countryCode:](v4, "initWithDigits:digits:countryCode:", [context slotID], recipientCopy, @"1");

    [(CTMessage *)self addPhoneRecipient:v6];
  }

  else
  {
    [(CTMessage *)self addEmailRecipient:recipientCopy];
  }
}

- (void)removeRecipient:(id)recipient
{
  v4 = [(NSMutableArray *)self->_recipients indexOfObject:recipient];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    recipients = self->_recipients;

    [(NSMutableArray *)recipients removeObjectAtIndex:v5];
  }
}

- (void)removeRecipientsInArray:(id)array
{
  if (array)
  {
    [(NSMutableArray *)self->_recipients removeObjectsInArray:?];
  }
}

- (void)setRecipient:(id)recipient
{
  if (recipient)
  {
    recipients = self->_recipients;
    recipientCopy = recipient;
    [(NSMutableArray *)recipients removeAllObjects];
    [(NSMutableArray *)self->_recipients addObject:recipientCopy];
  }
}

- (void)setRecipients:(id)recipients
{
  recipientsCopy = recipients;
  [(NSMutableArray *)self->_recipients removeAllObjects];
  v4 = recipientsCopy;
  if (recipientsCopy)
  {
    [(NSMutableArray *)self->_recipients addObjectsFromArray:recipientsCopy];
    v4 = recipientsCopy;
  }
}

- (void)addPhoneRecipient:(id)recipient
{
  v4 = [recipient copy];
  [(NSMutableArray *)self->_recipients addObject:v4];
}

- (void)addEmailRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = [[CTEmailAddress alloc] initWithAddress:recipientCopy];

  [(NSMutableArray *)self->_recipients addObject:v5];
  self->_messageType = 2;
}

- (id)addText:(id)text
{
  textCopy = text;
  v5 = [CTMessagePart alloc];
  v6 = [textCopy dataUsingEncoding:4];

  v7 = [(CTMessagePart *)v5 initWithData:v6 contentType:@"text/plain"];
  [(NSMutableArray *)self->_items addObject:v7];

  return v7;
}

- (id)addData:(id)data withContentType:(id)type
{
  typeCopy = type;
  dataCopy = data;
  v8 = [[CTMessagePart alloc] initWithData:dataCopy contentType:typeCopy];

  [(NSMutableArray *)self->_items addObject:v8];

  return v8;
}

- (id)addPart:(id)part
{
  partCopy = part;
  [(NSMutableArray *)self->_items addObject:partCopy];

  return partCopy;
}

- (void)removePartAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_items count]> index)
  {
    items = self->_items;

    [(NSMutableArray *)items removeObjectAtIndex:index];
  }
}

- (void)addContentTypeParameterWithName:(id)name value:(id)value
{
  if (name)
  {
    if (value)
    {
      [(NSMutableDictionary *)self->_contentTypeParams setObject:value forKey:name];
    }
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  encodedString = [(CTMessageAddress *)self->_sender encodedString];
  [v3 appendFormat:@", CTMessageAddress=%@", encodedString];

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