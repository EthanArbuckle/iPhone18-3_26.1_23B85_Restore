@interface MFFlagColorTriageInteraction
+ (id)_localizedColorNameFromFlagColor:(unint64_t)a3;
+ (id)mailMenuCommandsWithSelector:(SEL)a3;
- (id)cardActionWithCompletion:(id)a3;
- (id)triageAction;
- (id)undoTitle;
- (void)setFlagColor:(id)a3;
@end

@implementation MFFlagColorTriageInteraction

- (id)undoTitle
{
  v2 = [(MFFlagColorTriageInteraction *)self flagColor];
  v3 = +[NSBundle mainBundle];
  if (v2)
  {
    v4 = [v3 localizedStringForKey:@"OPERATION_FLAG_COLOR_DESC" value:&stru_100662A88 table:@"Main"];
    v5 = [objc_opt_class() _localizedColorNameFromFlagColor:{objc_msgSend(v2, "unsignedIntegerValue")}];
    v6 = [NSString stringWithFormat:v4, v5];
  }

  else
  {
    v6 = [v3 localizedStringForKey:@"OPERATION_UNFLAG_DESC" value:&stru_100662A88 table:@"Main"];
  }

  return v6;
}

- (void)setFlagColor:(id)a3
{
  v5 = a3;
  if (self->_flagColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_flagColor, a3);
    v6 = [(MFFlagColorTriageInteraction *)self triageAction];
    [v6 setFlagColor:v7];

    v5 = v7;
  }
}

+ (id)_localizedColorNameFromFlagColor:(unint64_t)a3
{
  v3 = &stru_100662A88;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = +[NSBundle mainBundle];
        v5 = [v4 localizedStringForKey:@"FLAG_COLOR_ORANGE" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        if (a3 != 2)
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

  else if (a3 > 4)
  {
    if (a3 == 5)
    {
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"FLAG_COLOR_PURPLE" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      if (a3 != 6)
      {
        goto LABEL_18;
      }

      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"FLAG_COLOR_GRAY" value:&stru_100662A88 table:@"Main"];
    }
  }

  else
  {
    if (a3 == 3)
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
    v5 = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [v4 initWithMessageListSelection:v5 origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self reason:{"actor"), self, -[MFFlagChangeTriageInteraction reason](self, "reason")}];

    v7 = [(MFFlagColorTriageInteraction *)self flagColor];
    [v6 setFlagColor:v7];

    v8 = self->_colorTriageAction;
    self->_colorTriageAction = v6;

    colorTriageAction = self->_colorTriageAction;
  }

  return colorTriageAction;
}

- (id)cardActionWithCompletion:(id)a3
{
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1001CD54C;
  v18 = &unk_100653520;
  v19 = self;
  v4 = a3;
  v20 = v4;
  v5 = [MFFlagColorCardAction cardActionWithTitle:0 shortTitle:0 imageName:0 tintColor:0 handlerEnabled:0 handler:&v15];
  v6 = [(MFTriageInteraction *)self messageListItemSelection:v15];
  v7 = [v6 messageListItems];
  v8 = [v7 firstObject];

  v9 = [v8 flags];
  v10 = [v9 flagged];

  if (v10)
  {
    v11 = [v8 flagColors];
    v12 = v11;
    if (v11)
    {
      v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 firstIndex]);
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

+ (id)mailMenuCommandsWithSelector:(SEL)a3
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1001CD784;
  v10 = &unk_100654138;
  v12 = a3;
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