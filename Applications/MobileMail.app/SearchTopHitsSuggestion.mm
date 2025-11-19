@interface SearchTopHitsSuggestion
- (EMMessage)message;
- (id)messageConversationID;
- (int64_t)rankingIndex;
- (void)userDidInteract;
@end

@implementation SearchTopHitsSuggestion

- (void)userDidInteract
{
  v4 = [(SearchTopHitsSuggestion *)self queryResult];
  v3 = [SearchTopHitsSuggestion messageConversationID]_0(self);
  [v4 userDidInteractWithConversationID:v3];
}

- (id)messageConversationID
{
  if (a1)
  {
    v1 = [a1 message];
    v2 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v1 conversationID]);
    v3 = [v2 stringValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)rankingIndex
{
  v3 = [(SearchTopHitsSuggestion *)self queryResult];
  v4 = [SearchTopHitsSuggestion messageConversationID]_0(self);
  v5 = [v3 rankingIndexForConversationID:v4];

  return v5;
}

- (EMMessage)message
{
  v3 = [(SearchTopHitsSuggestion *)self messageList];
  v4 = [(SearchTopHitsSuggestion *)self itemID];
  v5 = [v3 messageListItemForItemID:v4];
  v6 = [v5 result];

  return v6;
}

@end