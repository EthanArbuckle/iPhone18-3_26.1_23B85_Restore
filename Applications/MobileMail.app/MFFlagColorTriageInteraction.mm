@interface MFFlagColorTriageInteraction
+ (id)_localizedColorNameFromFlagColor:(unint64_t)color;
+ (id)mailMenuCommandsWithSelector:(SEL)selector;
- (id)cardActionWithCompletion:(id)completion;
- (id)triageAction;
- (id)undoTitle;
- (void)setFlagColor:(id)color;
@end

@implementation MFFlagColorTriageInteraction

- (id)undoTitle
{
  flagColor = [(MFFlagColorTriageInteraction *)self flagColor];
  v3 = +[NSBundle mainBundle];
  if (flagColor)
  {
    v4 = [v3 localizedStringForKey:@"OPERATION_FLAG_COLOR_DESC" value:&stru_100662A88 table:@"Main"];
    v5 = [objc_opt_class() _localizedColorNameFromFlagColor:{objc_msgSend(flagColor, "unsignedIntegerValue")}];
    v6 = [NSString stringWithFormat:v4, v5];
  }

  else
  {
    v6 = [v3 localizedStringForKey:@"OPERATION_UNFLAG_DESC" value:&stru_100662A88 table:@"Main"];
  }

  return v6;
}

- (void)setFlagColor:(id)color
{
  colorCopy = color;
  if (self->_flagColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_flagColor, color);
    triageAction = [(MFFlagColorTriageInteraction *)self triageAction];
    [triageAction setFlagColor:v7];

    colorCopy = v7;
  }
}

+ (id)_localizedColorNameFromFlagColor:(unint64_t)color
{
  v3 = &stru_100662A88;
  if (color <= 2)
  {
    if (color)
    {
      if (color == 1)
      {
        v4 = +[NSBundle mainBundle];
        v5 = [v4 localizedStringForKey:@"FLAG_COLOR_ORANGE" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        if (color != 2)
        {
          goto LABEL_18;
        }

        v4 = +[NSBundle mainBundle];
        v5 = [v4 localizedStringForKey:@"FLAG_COLOR_YELLOW" value:&stru_100662A88 table:@"Main"];
      }
    }

    else
    {
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"FLAG_COLOR_RED" value:&stru_100662A88 table:@"Main"];
    }
  }

  else if (color > 4)
  {
    if (color == 5)
    {
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"FLAG_COLOR_PURPLE" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      if (color != 6)
      {
        goto LABEL_18;
      }

      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"FLAG_COLOR_GRAY" value:&stru_100662A88 table:@"Main"];
    }
  }

  else
  {
    if (color == 3)
    {
      v4 = +[NSBundle mainBundle];
      [v4 localizedStringForKey:@"FLAG_COLOR_GREEN" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      v4 = +[NSBundle mainBundle];
      [v4 localizedStringForKey:@"FLAG_COLOR_BLUE" value:&stru_100662A88 table:@"Main"];
    }
    v5 = ;
  }

  v3 = v5;

LABEL_18:

  return v3;
}

- (id)triageAction
{
  colorTriageAction = self->_colorTriageAction;
  if (!colorTriageAction)
  {
    v4 = [MSFlagTriageAction alloc];
    messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [v4 initWithMessageListSelection:messageListItemSelection origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self reason:{"actor"), self, -[MFFlagChangeTriageInteraction reason](self, "reason")}];

    flagColor = [(MFFlagColorTriageInteraction *)self flagColor];
    [v6 setFlagColor:flagColor];

    v8 = self->_colorTriageAction;
    self->_colorTriageAction = v6;

    colorTriageAction = self->_colorTriageAction;
  }

  return colorTriageAction;
}

- (id)cardActionWithCompletion:(id)completion
{
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1001CD54C;
  v18 = &unk_100653520;
  selfCopy = self;
  completionCopy = completion;
  v20 = completionCopy;
  v5 = [MFFlagColorCardAction cardActionWithTitle:0 shortTitle:0 imageName:0 tintColor:0 handlerEnabled:0 handler:&v15];
  v6 = [(MFTriageInteraction *)self messageListItemSelection:v15];
  messageListItems = [v6 messageListItems];
  firstObject = [messageListItems firstObject];

  flags = [firstObject flags];
  flagged = [flags flagged];

  if (flagged)
  {
    flagColors = [firstObject flagColors];
    v12 = flagColors;
    if (flagColors)
    {
      v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [flagColors firstIndex]);
    }

    else
    {
      v13 = 0;
    }

    [v5 setFlagColor:v13];
    if (v12)
    {
    }
  }

  return v5;
}

+ (id)mailMenuCommandsWithSelector:(SEL)selector
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1001CD784;
  v10 = &unk_100654138;
  selectorCopy = selector;
  v3 = objc_alloc_init(NSMutableArray);
  v11 = v3;
  v4 = objc_retainBlock(&v7);
  (v4[2])(v4, 1);
  (v4[2])(v4, 0);
  (v4[2])(v4, 5);
  (v4[2])(v4, 4);
  (v4[2])(v4, 2);
  (v4[2])(v4, 3);
  (v4[2])(v4, 6);
  v5 = [v3 copy];

  return v5;
}

@end