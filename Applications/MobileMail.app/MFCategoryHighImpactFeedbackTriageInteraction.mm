@interface MFCategoryHighImpactFeedbackTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor;
- (id)cardActionWithCompletion:(id)completion;
- (id)radarContent;
- (id)title;
- (id)triageAction;
@end

@implementation MFCategoryHighImpactFeedbackTriageInteraction

+ (id)interactionWithMessageListItemSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor
{
  selectionCopy = selection;
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___MFCategoryHighImpactFeedbackTriageInteraction;
  v9 = objc_msgSendSuper2(&v12, "interactionWithMessageListItemSelection:undoManager:origin:actor:", selectionCopy, 0, origin, actor);
  messageListItems = [selectionCopy messageListItems];
  [v9 setIsHighImpact:{objc_msgSend(messageListItems, "ef_all:", &stru_1006537F0)}];

  [v9 setChangeOptions:0];

  return v9;
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

- (id)title
{
  [(MFCategoryHighImpactFeedbackTriageInteraction *)self isHighImpact];
  v2 = _EFLocalizedStringFromTable();

  return v2;
}

- (id)cardActionWithCompletion:(id)completion
{
  completionCopy = completion;
  cardTitle = [(MFTriageInteraction *)self cardTitle];
  _previewImageName = [(MFCategoryHighImpactFeedbackTriageInteraction *)self _previewImageName];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001B0F24;
  v10[3] = &unk_100653818;
  v7 = completionCopy;
  v10[4] = self;
  v11 = v7;
  v8 = [MFCardAction cardActionWithTitle:cardTitle shortTitle:0 imageName:_previewImageName tintColor:0 handler:v10];

  return v8;
}

- (id)radarContent
{
  if ([(MFCategoryHighImpactFeedbackTriageInteraction *)self isHighImpact])
  {
    v2 = @"This message should not be high impact";
  }

  else
  {
    v2 = @"This message should have been high impact";
  }

  v3 = [EFPair pairWithFirst:@"[BlackPearl] High impact feedback" second:v2];

  return v3;
}

@end