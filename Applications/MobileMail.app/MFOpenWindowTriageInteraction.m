@interface MFOpenWindowTriageInteraction
+ (id)interactionWithMessageListItem:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 messageList:(id)a6;
- (id)menuActionWithPreparation:(id)a3 completion:(id)a4;
@end

@implementation MFOpenWindowTriageInteraction

+ (id)interactionWithMessageListItem:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 messageList:(id)a6
{
  v10 = a3;
  v11 = a6;
  if ((+[UIDevice mf_isPadIdiom]& 1) != 0)
  {
    v16 = v10;
    v12 = [NSArray arrayWithObjects:&v16 count:1];
    v15.receiver = a1;
    v15.super_class = &OBJC_METACLASS___MFOpenWindowTriageInteraction;
    v13 = objc_msgSendSuper2(&v15, "interactionWithMessageListItems:undoManager:origin:actor:", v12, 0, a4, a5);

    [v13 setMessageList:v11];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)menuActionWithPreparation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFTriageInteraction *)self messageListItemSelection];
  v9 = [v8 messageListItems];
  v10 = [v9 firstObject];
  v11 = [(MFOpenWindowTriageInteraction *)self messageList];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10020485C;
  v18[3] = &unk_10064D270;
  v12 = v6;
  v18[4] = self;
  v19 = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100204880;
  v16[3] = &unk_10064D270;
  v13 = v7;
  v16[4] = self;
  v17 = v13;
  v14 = [MFBayAdoption openMessageInNewWindowActionWithMessage:v10 messageList:v11 preparation:v18 completion:v16];

  return v14;
}

@end