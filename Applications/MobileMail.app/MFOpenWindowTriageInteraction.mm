@interface MFOpenWindowTriageInteraction
+ (id)interactionWithMessageListItem:(id)item origin:(int64_t)origin actor:(int64_t)actor messageList:(id)list;
- (id)menuActionWithPreparation:(id)preparation completion:(id)completion;
@end

@implementation MFOpenWindowTriageInteraction

+ (id)interactionWithMessageListItem:(id)item origin:(int64_t)origin actor:(int64_t)actor messageList:(id)list
{
  itemCopy = item;
  listCopy = list;
  if ((+[UIDevice mf_isPadIdiom]& 1) != 0)
  {
    v16 = itemCopy;
    v12 = [NSArray arrayWithObjects:&v16 count:1];
    v15.receiver = self;
    v15.super_class = &OBJC_METACLASS___MFOpenWindowTriageInteraction;
    v13 = objc_msgSendSuper2(&v15, "interactionWithMessageListItems:undoManager:origin:actor:", v12, 0, origin, actor);

    [v13 setMessageList:listCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)menuActionWithPreparation:(id)preparation completion:(id)completion
{
  preparationCopy = preparation;
  completionCopy = completion;
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  firstObject = [messageListItems firstObject];
  messageList = [(MFOpenWindowTriageInteraction *)self messageList];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10020485C;
  v18[3] = &unk_10064D270;
  v12 = preparationCopy;
  v18[4] = self;
  v19 = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100204880;
  v16[3] = &unk_10064D270;
  v13 = completionCopy;
  v16[4] = self;
  v17 = v13;
  v14 = [MFBayAdoption openMessageInNewWindowActionWithMessage:firstObject messageList:messageList preparation:v18 completion:v16];

  return v14;
}

@end