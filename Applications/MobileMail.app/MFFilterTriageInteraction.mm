@interface MFFilterTriageInteraction
+ (id)interactionWithMessageListItem:(id)item origin:(int64_t)origin actor:(int64_t)actor messageList:(id)list delegate:(id)delegate;
- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion;
@end

@implementation MFFilterTriageInteraction

+ (id)interactionWithMessageListItem:(id)item origin:(int64_t)origin actor:(int64_t)actor messageList:(id)list delegate:(id)delegate
{
  itemCopy = item;
  listCopy = list;
  delegateCopy = delegate;
  v19 = itemCopy;
  v15 = [NSArray arrayWithObjects:&v19 count:1];
  v18.receiver = self;
  v18.super_class = &OBJC_METACLASS___MFFilterTriageInteraction;
  v16 = objc_msgSendSuper2(&v18, "interactionWithMessageListItems:undoManager:origin:actor:", v15, 0, origin, actor);

  [v16 setMessageList:listCopy];
  [v16 setDelegate:delegateCopy];

  return v16;
}

- (void)_performInteractionAfterPreparation:(id)preparation completion:(id)completion
{
  completionCopy = completion;
  delegate = [(MFTriageInteraction *)self delegate];
  [delegate filterUIWithFilterInteraction:self];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, self, 1);
  }
}

@end