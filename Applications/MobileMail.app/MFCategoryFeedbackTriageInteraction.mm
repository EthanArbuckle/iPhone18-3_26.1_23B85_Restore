@interface MFCategoryFeedbackTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 bucket:(int64_t)a6;
- (id)cardActionWithCompletion:(id)a3;
- (id)radarContent;
- (id)triageAction;
@end

@implementation MFCategoryFeedbackTriageInteraction

+ (id)interactionWithMessageListItemSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 bucket:(int64_t)a6
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___MFCategoryFeedbackTriageInteraction;
  v7 = objc_msgSendSuper2(&v9, "interactionWithMessageListItemSelection:undoManager:origin:actor:", a3, 0, a4, a5);
  [v7 setBucket:a6];
  [v7 setChangeOptions:0];

  return v7;
}

- (id)cardActionWithCompletion:(id)a3
{
  v14.receiver = self;
  v14.super_class = MFCategoryFeedbackTriageInteraction;
  v4 = [(MFCategoryTriageInteraction *)&v14 cardActionWithCompletion:a3];
  v5 = [(MFTriageInteraction *)self messageListItemSelection];
  v6 = [v5 messageListItems];
  v7 = [v6 firstObject];
  v8 = [v7 category];
  [v8 type];
  v9 = MUIBucketFromEMCategoryType();

  v10 = [v4 children];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001B0930;
  v13[3] = &unk_1006537D0;
  v13[4] = v9;
  v11 = [v10 ef_filter:v13];
  [v4 setChildren:v11];

  return v4;
}

- (id)radarContent
{
  [(MFCategoryTriageInteraction *)self bucket];
  v2 = MUIStringFromBucket();
  v3 = [NSString stringWithFormat:@"Moved one message to %@.", v2];

  v4 = [EFPair pairWithFirst:@"[BlackPearl] Category feedback for one message" second:v3];

  return v4;
}

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSCategoryFeedbackTriageAction alloc];
    v5 = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [(MFTriageInteraction *)self origin];
    v7 = [(MFTriageInteraction *)self actor];
    [(MFCategoryTriageInteraction *)self bucket];
    v8 = [v4 initWithMessageListSelection:v5 origin:v6 actor:v7 delegate:0 categoryType:EMCategoryTypeForBucket() changeOptions:{-[MFCategoryTriageInteraction changeOptions](self, "changeOptions")}];
    v9 = self->_triageAction;
    self->_triageAction = v8;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

@end