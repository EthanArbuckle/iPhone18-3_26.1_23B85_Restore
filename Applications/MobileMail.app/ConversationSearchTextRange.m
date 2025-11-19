@interface ConversationSearchTextRange
- (BOOL)isEmpty;
- (ConversationSearchTextRange)initWithWebkitRange:(id)a3 documentID:(id)a4;
- (id)end;
- (id)start;
@end

@implementation ConversationSearchTextRange

- (ConversationSearchTextRange)initWithWebkitRange:(id)a3 documentID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ConversationSearchTextRange;
  v9 = [(ConversationSearchTextRange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webkitRange, a3);
    objc_storeStrong(&v10->_documentID, a4);
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

  v2 = [(ConversationSearchTextRange *)self start];

  return v2;
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