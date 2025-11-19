@interface MessageListItemDragContext
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)withItem:(id)a3 messageList:(id)a4;
- (MessageListItemDragContext)initWithItem:(id)a3 messageList:(id)a4;
- (NSItemProvider)itemProvider;
- (NSString)visibleSubjectString;
- (UIDragItem)dragItem;
- (id)_loadDisplayMessageContentWithCompletion:(id)a3;
- (id)_loadDisplayMessageDataWithCompletion:(id)a3;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
@end

@implementation MessageListItemDragContext

+ (id)withItem:(id)a3 messageList:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MessageListItemDragContext alloc] initWithItem:v5 messageList:v6];

  return v7;
}

- (MessageListItemDragContext)initWithItem:(id)a3 messageList:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MessageListItemDragContext;
  v9 = [(MessageListItemDragContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageListItem, a3);
    objc_storeStrong(&v10->_messageList, a4);
  }

  return v10;
}

- (UIDragItem)dragItem
{
  v3 = [UIDragItem alloc];
  v4 = [(MessageListItemDragContext *)self itemProvider];
  v5 = [v3 initWithItemProvider:v4];

  return v5;
}

- (NSItemProvider)itemProvider
{
  v3 = [[NSItemProvider alloc] initWithObject:self];
  v4 = [(MessageListItemDragContext *)self visibleSubjectString];
  [v3 setSuggestedName:v4];

  v5 = [(MessageListItemDragContext *)self messageListItem];
  v6 = [v5 flags];
  v7 = [v6 draft];

  if (v7)
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
    v8 = [(MessageListItemDragContext *)self messageList];

    if (v8)
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
    v4 = [(MessageListItemDragContext *)self messageListItem];
    v5 = [v4 subject];

    if ([v5 length])
    {
      v6 = [v5 subjectString];
      v7 = self->_visibleSubjectString;
      self->_visibleSubjectString = v6;
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

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [UTType typeWithIdentifier:v6];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100155B64;
  v8 = v24[3] = &unk_1006518F0;
  v25 = v8;
  v9 = objc_retainBlock(v24);
  if ([v8 conformsToType:UTTypeEmailMessage])
  {
    v10 = [(MessageListItemDragContext *)self _loadDisplayMessageDataWithCompletion:v7];
  }

  else
  {
    if ([v8 conformsToType:UTTypeURL])
    {
      v11 = [(MessageListItemDragContext *)self messageListItem];
      v12 = [v11 subject];

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100155C80;
      v20[3] = &unk_100651918;
      v23 = v7;
      v21 = v12;
      v22 = v6;
      v13 = v12;
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
        v19 = v7;
        v17[4] = self;
        v18 = v6;
        v10 = [(MessageListItemDragContext *)self _loadDisplayMessageContentWithCompletion:v17];

        v13 = v19;
      }

      else
      {
        v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v10 = 0;
        (*(v7 + 2))(v7, 0, v13);
      }
    }
  }

  return v10;
}

- (id)_loadDisplayMessageContentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [EMContentRequestOptions optionsWithRequestedRepresentationType:EMContentRepresentationTypeRaw networkUsage:2];
  v6 = [(MessageListItemDragContext *)self messageListItem];
  v7 = [v6 displayMessage];
  v8 = [v7 result];
  v9 = [v8 requestRepresentationWithOptions:v5 completionHandler:v4];

  return v9;
}

- (id)_loadDisplayMessageDataWithCompletion:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100156124;
  v7[3] = &unk_100651940;
  v8 = a3;
  v4 = v8;
  v5 = [(MessageListItemDragContext *)self _loadDisplayMessageContentWithCompletion:v7];

  return v5;
}

@end