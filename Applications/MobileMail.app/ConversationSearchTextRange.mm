@interface ConversationSearchTextRange
- (BOOL)isEmpty;
- (ConversationSearchTextRange)initWithWebkitRange:(id)range documentID:(id)d;
- (id)end;
- (id)start;
@end

@implementation ConversationSearchTextRange

- (ConversationSearchTextRange)initWithWebkitRange:(id)range documentID:(id)d
{
  rangeCopy = range;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = ConversationSearchTextRange;
  v9 = [(ConversationSearchTextRange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webkitRange, range);
    objc_storeStrong(&v10->_documentID, d);
  }

  return v10;
}

- (BOOL)isEmpty
{
  if (self)
  {
    self = self->_webkitRange;
  }

  return [(ConversationSearchTextRange *)self isEmpty];
}

- (id)start
{
  if (self)
  {
    self = self->_webkitRange;
  }

  start = [(ConversationSearchTextRange *)self start];

  return start;
}

- (id)end
{
  if (self)
  {
    self = self->_webkitRange;
  }

  v2 = [(ConversationSearchTextRange *)self end];

  return v2;
}

@end