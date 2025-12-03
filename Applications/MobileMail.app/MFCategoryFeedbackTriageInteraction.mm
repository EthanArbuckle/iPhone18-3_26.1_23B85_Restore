@interface MFCategoryFeedbackTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor bucket:(int64_t)bucket;
- (id)cardActionWithCompletion:(id)completion;
- (id)radarContent;
- (id)triageAction;
@end

@implementation MFCategoryFeedbackTriageInteraction

+ (id)interactionWithMessageListItemSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor bucket:(int64_t)bucket
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___MFCategoryFeedbackTriageInteraction;
  v7 = objc_msgSendSuper2(&v9, "interactionWithMessageListItemSelection:undoManager:origin:actor:", selection, 0, origin, actor);
  [v7 setBucket:bucket];
  [v7 setChangeOptions:0];

  return v7;
}

- (id)cardActionWithCompletion:(id)completion
{
  v14.receiver = self;
  v14.super_class = MFCategoryFeedbackTriageInteraction;
  v4 = [(MFCategoryTriageInteraction *)&v14 cardActionWithCompletion:completion];
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  firstObject = [messageListItems firstObject];
  category = [firstObject category];
  [category type];
  v9 = MUIBucketFromEMCategoryType();

  children = [v4 children];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001B0930;
  v13[3] = &unk_1006537D0;
  v13[4] = v9;
  v11 = [children ef_filter:v13];
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
    messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
    origin = [(MFTriageInteraction *)self origin];
    actor = [(MFTriageInteraction *)self actor];
    [(MFCategoryTriageInteraction *)self bucket];
    v8 = [v4 initWithMessageListSelection:messageListItemSelection origin:origin actor:actor delegate:0 categoryType:EMCategoryTypeForBucket() changeOptions:{-[MFCategoryTriageInteraction changeOptions](self, "changeOptions")}];
    v9 = self->_triageAction;
    self->_triageAction = v8;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

@end