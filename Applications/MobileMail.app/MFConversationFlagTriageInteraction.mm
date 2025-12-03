@interface MFConversationFlagTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor;
+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor;
+ (id)interactionWithReferenceMessage:(id)message undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor;
- (EMMessage)referenceMessage;
@end

@implementation MFConversationFlagTriageInteraction

+ (id)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor
{
  selectionCopy = selection;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___MFConversationFlagTriageInteraction;
  v11 = objc_msgSendSuper2(&v16, "interactionWithMessageListItemSelection:undoManager:origin:actor:reason:", selectionCopy, manager, origin, actor, 4);
  if (([selectionCopy isSelectAll] & 1) == 0)
  {
    messageListItems = [selectionCopy messageListItems];
    firstObject = [messageListItems firstObject];
    displayMessage = [firstObject displayMessage];
    [v11 setDisplayMessage:displayMessage];
  }

  return v11;
}

+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor
{
  itemsCopy = items;
  managerCopy = manager;
  v12 = [[MSMessageListItemSelection alloc] initWithMessageListItems:itemsCopy];
  v13 = [self interactionWithMessageListItemSelection:v12 undoManager:managerCopy origin:origin actor:actor];

  return v13;
}

+ (id)interactionWithReferenceMessage:(id)message undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor
{
  messageCopy = message;
  managerCopy = manager;
  v15 = messageCopy;
  v12 = [NSArray arrayWithObjects:&v15 count:1];
  v13 = [self interactionWithMessageListItems:v12 undoManager:managerCopy origin:origin actor:actor];

  return v13;
}

- (EMMessage)referenceMessage
{
  displayMessage = [(MFConversationFlagTriageInteraction *)self displayMessage];
  result = [displayMessage result];

  return result;
}

@end