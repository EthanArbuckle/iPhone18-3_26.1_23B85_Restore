@interface MFCategoryHighImpactFeedbackTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5;
- (id)cardActionWithCompletion:(id)a3;
- (id)radarContent;
- (id)title;
- (id)triageAction;
@end

@implementation MFCategoryHighImpactFeedbackTriageInteraction

+ (id)interactionWithMessageListItemSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5
{
  v8 = a3;
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___MFCategoryHighImpactFeedbackTriageInteraction;
  v9 = objc_msgSendSuper2(&v12, "interactionWithMessageListItemSelection:undoManager:origin:actor:", v8, 0, a4, a5);
  v10 = [v8 messageListItems];
  [v9 setIsHighImpact:{objc_msgSend(v10, "ef_all:", &stru_1006537F0)}];

  [v9 setChangeOptions:0];

  return v9;
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

- (id)title
{
  [(MFCategoryHighImpactFeedbackTriageInteraction *)self isHighImpact];
  v2 = _EFLocalizedStringFromTable();

  return v2;
}

- (id)cardActionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MFTriageInteraction *)self cardTitle];
  v6 = [(MFCategoryHighImpactFeedbackTriageInteraction *)self _previewImageName];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001B0F24;
  v10[3] = &unk_100653818;
  v7 = v4;
  v10[4] = self;
  v11 = v7;
  v8 = [MFCardAction cardActionWithTitle:v5 shortTitle:0 imageName:v6 tintColor:0 handler:v10];

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