@interface MFFlagTriageInteraction
+ (id)titleForFlagAction:(BOOL)a3 messageCount:(unint64_t)a4;
+ (unint64_t)defaultColor;
+ (void)setDefaultColor:(unint64_t)a3;
- (BOOL)isPermitted;
- (BOOL)overrideFlagStateForTriageAction:(id)a3;
- (BOOL)shouldOverrideFlageStateForTriageAction:(id)a3;
- (id)_iconImageName;
- (id)_previewImageName;
- (id)_swipeColor;
- (id)cardActionWithCompletion:(id)a3;
- (id)color;
- (id)shortTitle;
- (id)title;
- (id)triageAction;
- (id)undoTitle;
- (unint64_t)defaultFlagColorForTriageAction:(id)a3;
@end

@implementation MFFlagTriageInteraction

+ (unint64_t)defaultColor
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"kDefaultFlagColor"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (void)setDefaultColor:(unint64_t)a3
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forKey:@"kDefaultFlagColor"];
}

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSFlagTriageAction alloc];
    v5 = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [v4 initWithMessageListSelection:v5 origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self reason:{"actor"), self, -[MFFlagChangeTriageInteraction reason](self, "reason")}];
    v7 = self->_triageAction;
    self->_triageAction = v6;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

- (id)title
{
  v3 = objc_opt_class();
  v4 = [(MFFlagChangeTriageInteraction *)self flagState];
  if ([(MFTriageInteraction *)self isSelectAll]|| ![(MFTriageInteraction *)self titleIncludesCount])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(MFTriageInteraction *)self messageCount];
  }

  return [v3 titleForFlagAction:v4 ^ 1 messageCount:v5];
}

+ (id)titleForFlagAction:(BOOL)a3 messageCount:(unint64_t)a4
{
  v5 = a3;
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (a4 == 1)
  {
    if (v5)
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
    if (v5)
    {
      [v6 localizedStringForKey:@"MARK_EMAIL_FLAGGED%1$lu" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v6 localizedStringForKey:@"MARK_EMAIL_UNFLAGGED%1$lu" value:&stru_100662A88 table:@"Main"];
    }
    v9 = ;

    v8 = [NSString localizedStringWithFormat:v9, a4];
    v7 = v9;
  }

  return v8;
}

- (id)shortTitle
{
  v2 = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
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
  v2 = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
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
  v5 = self;
  v6 = [(MFFlagChangeTriageInteraction *)self flagState];
  if (v6)
  {
    v5 = [v5 messageListItemSelection];
    v2 = [v5 messageListItems];
    v3 = [v2 firstObject];
    v4 = [v3 flagColors];
    v7 = [v4 firstIndex];
  }

  else
  {
    v7 = +[MFFlagTriageInteraction defaultColor];
  }

  v8 = [UIColor mf_colorFromFlagColor:v7];
  if (v6)
  {
  }

  return v8;
}

- (id)_swipeColor
{
  v7.receiver = self;
  v7.super_class = MFFlagTriageInteraction;
  v2 = [(MFTriageInteraction *)&v7 _swipeColor];
  v3 = +[UIColor mailFlaggedColorRed];
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = +[UIColor mailFlaggedColorIncreasedContrastRed];

    v2 = v5;
  }

  return v2;
}

- (id)_iconImageName
{
  v2 = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = &MFImageGlyphUnflag;
  if (!v2)
  {
    v3 = &MFImageGlyphFlag;
  }

  v4 = *v3;

  return v4;
}

- (id)_previewImageName
{
  v2 = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = &MFImageGlyphUnflag;
  if (!v2)
  {
    v3 = &MFImageGlyphFlag;
  }

  v4 = *v3;

  return v4;
}

- (id)cardActionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MFFlagChangeTriageInteraction *)self flagState];
  v6 = &MFImageGlyphUnflag;
  if (!v5)
  {
    v6 = &MFImageGlyphFlag;
  }

  v7 = *v6;
  v8 = [(MFTriageInteraction *)self cardTitle];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1001CCC98;
  v15 = &unk_100653520;
  v16 = self;
  v9 = v4;
  v17 = v9;
  v10 = [MFCardAction cardActionWithTitle:v8 shortTitle:0 imageName:v7 tintColor:0 handler:&v12];

  [v10 setAccessibilityIdentifier:{MSAccessibilityIdentifierActionsViewControllerFlag, v12, v13, v14, v15, v16}];

  return v10;
}

- (BOOL)isPermitted
{
  v2 = [(MFTriageInteraction *)self messageListItemSelection];
  v3 = [v2 isActingOnSender];

  return v3 ^ 1;
}

- (BOOL)shouldOverrideFlageStateForTriageAction:(id)a3
{
  if ([(MFTriageInteraction *)self shouldOverrideFlagState])
  {
    v4 = [(MFTriageInteraction *)self delegate];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)overrideFlagStateForTriageAction:(id)a3
{
  v4 = [(MFTriageInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 flagStateForFlagChangeTriageInteraction:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)defaultFlagColorForTriageAction:(id)a3
{
  v3 = objc_opt_class();

  return [v3 defaultColor];
}

@end