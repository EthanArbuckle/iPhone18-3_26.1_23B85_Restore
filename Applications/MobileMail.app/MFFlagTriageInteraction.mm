@interface MFFlagTriageInteraction
+ (id)titleForFlagAction:(BOOL)action messageCount:(unint64_t)count;
+ (unint64_t)defaultColor;
+ (void)setDefaultColor:(unint64_t)color;
- (BOOL)isPermitted;
- (BOOL)overrideFlagStateForTriageAction:(id)action;
- (BOOL)shouldOverrideFlageStateForTriageAction:(id)action;
- (id)_iconImageName;
- (id)_previewImageName;
- (id)_swipeColor;
- (id)cardActionWithCompletion:(id)completion;
- (id)color;
- (id)shortTitle;
- (id)title;
- (id)triageAction;
- (id)undoTitle;
- (unint64_t)defaultFlagColorForTriageAction:(id)action;
@end

@implementation MFFlagTriageInteraction

+ (unint64_t)defaultColor
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"kDefaultFlagColor"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

+ (void)setDefaultColor:(unint64_t)color
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v4 = [NSNumber numberWithUnsignedInteger:color];
  [v5 setObject:v4 forKey:@"kDefaultFlagColor"];
}

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSFlagTriageAction alloc];
    messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [v4 initWithMessageListSelection:messageListItemSelection origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self reason:{"actor"), self, -[MFFlagChangeTriageInteraction reason](self, "reason")}];
    v7 = self->_triageAction;
    self->_triageAction = v6;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

- (id)title
{
  v3 = objc_opt_class();
  flagState = [(MFFlagChangeTriageInteraction *)self flagState];
  if ([(MFTriageInteraction *)self isSelectAll]|| ![(MFTriageInteraction *)self titleIncludesCount])
  {
    messageCount = 1;
  }

  else
  {
    messageCount = [(MFTriageInteraction *)self messageCount];
  }

  return [v3 titleForFlagAction:flagState ^ 1 messageCount:messageCount];
}

+ (id)titleForFlagAction:(BOOL)action messageCount:(unint64_t)count
{
  actionCopy = action;
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (count == 1)
  {
    if (actionCopy)
    {
      [v6 localizedStringForKey:@"MARK_EMAIL_FLAGGED" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v6 localizedStringForKey:@"MARK_EMAIL_UNFLAGGED" value:&stru_100662A88 table:@"Main"];
    }
    v8 = ;
  }

  else
  {
    if (actionCopy)
    {
      [v6 localizedStringForKey:@"MARK_EMAIL_FLAGGED%1$lu" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v6 localizedStringForKey:@"MARK_EMAIL_UNFLAGGED%1$lu" value:&stru_100662A88 table:@"Main"];
    }
    v9 = ;

    v8 = [NSString localizedStringWithFormat:v9, count];
    v7 = v9;
  }

  return v8;
}

- (id)shortTitle
{
  flagState = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (flagState)
  {
    [v3 localizedStringForKey:@"SWIPE_UNFLAG" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v3 localizedStringForKey:@"SWIPE_FLAG" value:&stru_100662A88 table:@"Main"];
  }
  v5 = ;

  return v5;
}

- (id)undoTitle
{
  flagState = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (flagState)
  {
    [v3 localizedStringForKey:@"OPERATION_UNFLAG_DESC" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v3 localizedStringForKey:@"OPERATION_FLAG_DESC" value:&stru_100662A88 table:@"Main"];
  }
  v5 = ;

  return v5;
}

- (id)color
{
  selfCopy = self;
  flagState = [(MFFlagChangeTriageInteraction *)self flagState];
  if (flagState)
  {
    selfCopy = [selfCopy messageListItemSelection];
    messageListItems = [selfCopy messageListItems];
    firstObject = [messageListItems firstObject];
    flagColors = [firstObject flagColors];
    firstIndex = [flagColors firstIndex];
  }

  else
  {
    firstIndex = +[MFFlagTriageInteraction defaultColor];
  }

  v8 = [UIColor mf_colorFromFlagColor:firstIndex];
  if (flagState)
  {
  }

  return v8;
}

- (id)_swipeColor
{
  v7.receiver = self;
  v7.super_class = MFFlagTriageInteraction;
  _swipeColor = [(MFTriageInteraction *)&v7 _swipeColor];
  v3 = +[UIColor mailFlaggedColorRed];
  v4 = [_swipeColor isEqual:v3];

  if (v4)
  {
    v5 = +[UIColor mailFlaggedColorIncreasedContrastRed];

    _swipeColor = v5;
  }

  return _swipeColor;
}

- (id)_iconImageName
{
  flagState = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = &MFImageGlyphUnflag;
  if (!flagState)
  {
    v3 = &MFImageGlyphFlag;
  }

  v4 = *v3;

  return v4;
}

- (id)_previewImageName
{
  flagState = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = &MFImageGlyphUnflag;
  if (!flagState)
  {
    v3 = &MFImageGlyphFlag;
  }

  v4 = *v3;

  return v4;
}

- (id)cardActionWithCompletion:(id)completion
{
  completionCopy = completion;
  flagState = [(MFFlagChangeTriageInteraction *)self flagState];
  v6 = &MFImageGlyphUnflag;
  if (!flagState)
  {
    v6 = &MFImageGlyphFlag;
  }

  v7 = *v6;
  cardTitle = [(MFTriageInteraction *)self cardTitle];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1001CCC98;
  v15 = &unk_100653520;
  selfCopy = self;
  v9 = completionCopy;
  v17 = v9;
  v10 = [MFCardAction cardActionWithTitle:cardTitle shortTitle:0 imageName:v7 tintColor:0 handler:&v12];

  [v10 setAccessibilityIdentifier:{MSAccessibilityIdentifierActionsViewControllerFlag, v12, v13, v14, v15, selfCopy}];

  return v10;
}

- (BOOL)isPermitted
{
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  isActingOnSender = [messageListItemSelection isActingOnSender];

  return isActingOnSender ^ 1;
}

- (BOOL)shouldOverrideFlageStateForTriageAction:(id)action
{
  if ([(MFTriageInteraction *)self shouldOverrideFlagState])
  {
    delegate = [(MFTriageInteraction *)self delegate];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)overrideFlagStateForTriageAction:(id)action
{
  delegate = [(MFTriageInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate flagStateForFlagChangeTriageInteraction:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)defaultFlagColorForTriageAction:(id)action
{
  v3 = objc_opt_class();

  return [v3 defaultColor];
}

@end