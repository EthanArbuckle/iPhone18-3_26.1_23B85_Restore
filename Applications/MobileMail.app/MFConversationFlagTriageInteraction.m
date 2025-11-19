@interface MFConversationFlagTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6;
+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6;
+ (id)interactionWithReferenceMessage:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6;
- (EMMessage)referenceMessage;
@end

@implementation MFConversationFlagTriageInteraction

+ (id)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6
{
  v10 = a3;
  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___MFConversationFlagTriageInteraction;
  v11 = objc_msgSendSuper2(&v16, "interactionWithMessageListItemSelection:undoManager:origin:actor:reason:", v10, a4, a5, a6, 4);
  if (([v10 isSelectAll] & 1) == 0)
  {
    v12 = [v10 messageListItems];
    v13 = [v12 firstObject];
    v14 = [v13 displayMessage];
    [v11 setDisplayMessage:v14];
  }

  return v11;
}

+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [[MSMessageListItemSelection alloc] initWithMessageListItems:v10];
  v13 = [a1 interactionWithMessageListItemSelection:v12 undoManager:v11 origin:a5 actor:a6];

  return v13;
}

+ (id)interactionWithReferenceMessage:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v15 = v10;
  v12 = [NSArray arrayWithObjects:&v15 count:1];
  v13 = [a1 interactionWithMessageListItems:v12 undoManager:v11 origin:a5 actor:a6];

  return v13;
}

- (EMMessage)referenceMessage
{
  v2 = [(MFConversationFlagTriageInteraction *)self displayMessage];
  v3 = [v2 result];

  return v3;
}

@end