@interface MessageListItemDragContext
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)withItem:(id)item messageList:(id)list;
- (MessageListItemDragContext)initWithItem:(id)item messageList:(id)list;
- (NSItemProvider)itemProvider;
- (NSString)visibleSubjectString;
- (UIDragItem)dragItem;
- (id)_loadDisplayMessageContentWithCompletion:(id)completion;
- (id)_loadDisplayMessageDataWithCompletion:(id)completion;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
@end

@implementation MessageListItemDragContext

+ (id)withItem:(id)item messageList:(id)list
{
  itemCopy = item;
  listCopy = list;
  v7 = [[MessageListItemDragContext alloc] initWithItem:itemCopy messageList:listCopy];

  return v7;
}

- (MessageListItemDragContext)initWithItem:(id)item messageList:(id)list
{
  itemCopy = item;
  listCopy = list;
  v12.receiver = self;
  v12.super_class = MessageListItemDragContext;
  v9 = [(MessageListItemDragContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageListItem, item);
    objc_storeStrong(&v10->_messageList, list);
  }

  return v10;
}

- (UIDragItem)dragItem
{
  v3 = [UIDragItem alloc];
  itemProvider = [(MessageListItemDragContext *)self itemProvider];
  v5 = [v3 initWithItemProvider:itemProvider];

  return v5;
}

- (NSItemProvider)itemProvider
{
  v3 = [[NSItemProvider alloc] initWithObject:self];
  visibleSubjectString = [(MessageListItemDragContext *)self visibleSubjectString];
  [v3 setSuggestedName:visibleSubjectString];

  messageListItem = [(MessageListItemDragContext *)self messageListItem];
  flags = [messageListItem flags];
  draft = [flags draft];

  if (draft)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001551AC;
    v15[3] = &unk_1006518A0;
    v15[4] = self;
    [v3 registerObjectOfClass:objc_opt_class() visibility:1 loadHandler:v15];
  }

  else
  {
    messageList = [(MessageListItemDragContext *)self messageList];

    if (messageList)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100155414;
      v14[3] = &unk_10064DE58;
      v14[4] = self;
      v9 = [ConversationViewRestorationState stateWithBuilder:v14];
      if (v9)
      {
        v10 = objc_opt_class();
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1001554F4;
        v12[3] = &unk_1006518C8;
        v12[4] = self;
        v13 = v9;
        [v3 registerObjectOfClass:v10 visibility:1 loadHandler:v12];
      }
    }
  }

  return v3;
}

- (NSString)visibleSubjectString
{
  visibleSubjectString = self->_visibleSubjectString;
  if (!visibleSubjectString)
  {
    messageListItem = [(MessageListItemDragContext *)self messageListItem];
    subject = [messageListItem subject];

    if ([subject length])
    {
      subjectString = [subject subjectString];
      v7 = self->_visibleSubjectString;
      self->_visibleSubjectString = subjectString;
    }

    else
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"NO_SUBJECT" value:&stru_100662A88 table:@"Main"];
      v9 = self->_visibleSubjectString;
      self->_visibleSubjectString = v8;
    }

    visibleSubjectString = self->_visibleSubjectString;
  }

  return visibleSubjectString;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v2 = +[NSMutableArray array];
  [v2 addObject:@"com.apple.mobilemail.internalEMMessageListItemTransfer"];
  v3 = +[EMMessage externalDataTypeIdentifiers];
  [v2 addObjectsFromArray:v3];

  return v2;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  [UTType typeWithIdentifier:identifierCopy];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100155B64;
  v8 = v24[3] = &unk_1006518F0;
  v25 = v8;
  v9 = objc_retainBlock(v24);
  if ([v8 conformsToType:UTTypeEmailMessage])
  {
    v10 = [(MessageListItemDragContext *)self _loadDisplayMessageDataWithCompletion:handlerCopy];
  }

  else
  {
    if ([v8 conformsToType:UTTypeURL])
    {
      messageListItem = [(MessageListItemDragContext *)self messageListItem];
      subject = [messageListItem subject];

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100155C80;
      v20[3] = &unk_100651918;
      v23 = handlerCopy;
      v21 = subject;
      v22 = identifierCopy;
      v13 = subject;
      v10 = [(MessageListItemDragContext *)self _loadDisplayMessageContentWithCompletion:v20];
    }

    else
    {
      v14 = objc_opt_new();
      v15 = (v9[2])(v9, v14);

      if (v15)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100155D84;
        v17[3] = &unk_100651918;
        v19 = handlerCopy;
        v17[4] = self;
        v18 = identifierCopy;
        v10 = [(MessageListItemDragContext *)self _loadDisplayMessageContentWithCompletion:v17];

        v13 = v19;
      }

      else
      {
        v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v10 = 0;
        (*(handlerCopy + 2))(handlerCopy, 0, v13);
      }
    }
  }

  return v10;
}

- (id)_loadDisplayMessageContentWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [EMContentRequestOptions optionsWithRequestedRepresentationType:EMContentRepresentationTypeRaw networkUsage:2];
  messageListItem = [(MessageListItemDragContext *)self messageListItem];
  displayMessage = [messageListItem displayMessage];
  result = [displayMessage result];
  v9 = [result requestRepresentationWithOptions:v5 completionHandler:completionCopy];

  return v9;
}

- (id)_loadDisplayMessageDataWithCompletion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100156124;
  v7[3] = &unk_100651940;
  completionCopy = completion;
  v4 = completionCopy;
  v5 = [(MessageListItemDragContext *)self _loadDisplayMessageContentWithCompletion:v7];

  return v5;
}

@end