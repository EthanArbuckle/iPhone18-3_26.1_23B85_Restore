@interface SearchTopHitsSuggestion
- (EMMessage)message;
- (id)messageConversationID;
- (int64_t)rankingIndex;
- (void)userDidInteract;
@end

@implementation SearchTopHitsSuggestion

- (void)userDidInteract
{
  queryResult = [(SearchTopHitsSuggestion *)self queryResult];
  v3 = [SearchTopHitsSuggestion messageConversationID]_0(self);
  [queryResult userDidInteractWithConversationID:v3];
}

- (id)messageConversationID
{
  if (self)
  {
    message = [self message];
    v2 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [message conversationID]);
    stringValue = [v2 stringValue];
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

- (int64_t)rankingIndex
{
  queryResult = [(SearchTopHitsSuggestion *)self queryResult];
  v4 = [SearchTopHitsSuggestion messageConversationID]_0(self);
  v5 = [queryResult rankingIndexForConversationID:v4];

  return v5;
}

- (EMMessage)message
{
  messageList = [(SearchTopHitsSuggestion *)self messageList];
  itemID = [(SearchTopHitsSuggestion *)self itemID];
  v5 = [messageList messageListItemForItemID:itemID];
  result = [v5 result];

  return result;
}

@end