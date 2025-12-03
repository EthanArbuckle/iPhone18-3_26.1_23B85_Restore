@interface TSSIMUnlockDetailView
- (TSSIMUnlockDetailView)initWithActionType:(int64_t)type actionSubtype:(int64_t)subtype;
- (TSSIMUnlockDetailView)initWithActionType:(int64_t)type actionSubtype:(int64_t)subtype lockedSIMName:(id)name;
- (void)_configureDescriptionLabelText;
- (void)_configureTitleLabelText;
- (void)_keyboardWillShow:(id)show;
- (void)dealloc;
@end

@implementation TSSIMUnlockDetailView

- (TSSIMUnlockDetailView)initWithActionType:(int64_t)type actionSubtype:(int64_t)subtype lockedSIMName:(id)name
{
  nameCopy = name;
  v9 = [(TSSIMUnlockDetailView *)self initWithActionType:type actionSubtype:subtype];
  if (v9)
  {
    v10 = [nameCopy copy];
    lockedSIMName = v9->_lockedSIMName;
    v9->_lockedSIMName = v10;

    [(TSSIMUnlockDetailView *)v9 _configureTitleLabelText];
  }

  return v9;
}

- (TSSIMUnlockDetailView)initWithActionType:(int64_t)type actionSubtype:(int64_t)subtype
{
  v12.receiver = self;
  v12.super_class = TSSIMUnlockDetailView;
  v6 = [(TSSIMUnlockDetailView *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_actionType = type;
    v6->_actionSubtype = subtype;
    [(TSSIMUnlockDetailView *)v6 _configureTitleLabelText];
    [(TSSIMUnlockDetailView *)v7 _configureDescriptionLabelText];
    if ((v7->_actionType & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v8 = [[TSSIMUnlockEntryView alloc] initWithActionType:v7->_actionType actionSubtype:v7->_actionSubtype];
      entryView = v7->_entryView;
      v7->_entryView = v8;

      v10 = +[NSNotificationCenter defaultCenter];
      [v10 addObserver:v7 selector:"_keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TSSIMUnlockDetailView;
  [(TSSIMUnlockDetailView *)&v4 dealloc];
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  [(TSSIMUnlockEntryView *)self->_entryView frame];
  if (!CGRectIsEmpty(v11))
  {
    v4 = [userInfo objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
    v5 = [v4 unsignedIntegerValue] << 16;

    v6 = [userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey];
    [v6 doubleValue];
    v8 = v7;

    [UIView animateWithDuration:v5 delay:&stru_10001C908 options:0 animations:v8 completion:0.0];
  }
}

- (void)_configureTitleLabelText
{
  if (!self->_unlocking)
  {
    actionType = self->_actionType;
    if (actionType > 2)
    {
      if (actionType != 3)
      {
        if (actionType != 4)
        {
          return;
        }

        if (![(NSString *)self->_lockedSIMName length])
        {
          v3 = +[NSBundle mainBundle];
          v15 = v3;
          v4 = @"PERMANENTLY_LOCKED_TITLE";
          goto LABEL_3;
        }

        v8 = +[NSBundle mainBundle];
        v15 = v8;
        v9 = @"PERMANENTLY_LOCKED_TITLE_FORMAT";
        goto LABEL_15;
      }

      actionSubtype = self->_actionSubtype;
      if (actionSubtype <= 1)
      {
        if (!actionSubtype)
        {
          titleLabel = self->_titleLabel;
          self->_titleLabel = &stru_10001CA70;
          goto LABEL_17;
        }

        if (actionSubtype != 1)
        {
          return;
        }

        if (![(NSString *)self->_lockedSIMName length])
        {
          v3 = +[NSBundle mainBundle];
          v15 = v3;
          v4 = @"PUK_LOCKED_TITLE";
          goto LABEL_3;
        }

        v8 = +[NSBundle mainBundle];
        v15 = v8;
        v9 = @"PUK_LOCKED_TITLE_FORMAT";
        goto LABEL_15;
      }

      if (actionSubtype == 2)
      {
        if (![(NSString *)self->_lockedSIMName length])
        {
          v3 = +[NSBundle mainBundle];
          v15 = v3;
          v4 = @"ENTER_NEW_PIN_1_TITLE";
          goto LABEL_3;
        }

        v8 = +[NSBundle mainBundle];
        v15 = v8;
        v9 = @"ENTER_NEW_PIN_1_TITLE_FORMAT";
        goto LABEL_15;
      }

      if (actionSubtype != 3)
      {
        return;
      }
    }

    else if (actionType >= 2)
    {
      if (actionType != 2)
      {
        return;
      }

      if (!self->_lockedSIMName)
      {
        v3 = +[NSBundle mainBundle];
        v15 = v3;
        v4 = @"PIN_LOCKED_TITLE";
        goto LABEL_3;
      }

      v8 = +[NSBundle mainBundle];
      v15 = v8;
      v9 = @"PIN_LOCKED_TITLE_FORMAT";
      goto LABEL_15;
    }

    if (![(NSString *)self->_lockedSIMName length])
    {
      v3 = +[NSBundle mainBundle];
      v15 = v3;
      v4 = @"ENTER_NEW_PIN_2_TITLE";
      goto LABEL_3;
    }

    v8 = +[NSBundle mainBundle];
    v15 = v8;
    v9 = @"ENTER_NEW_PIN_2_TITLE_FORMAT";
LABEL_15:
    v10 = [(NSString *)v8 localizedStringForKey:v9 value:&stru_10001CA70 table:@"Localizable"];
    v11 = [NSString stringWithFormat:v10, self->_lockedSIMName];
    v12 = self->_titleLabel;
    self->_titleLabel = v11;

    goto LABEL_16;
  }

  v3 = +[NSBundle mainBundle];
  v15 = v3;
  v4 = @"SIM_UNLOCKING_TITLE";
LABEL_3:
  v5 = [(NSString *)v3 localizedStringForKey:v4 value:&stru_10001CA70 table:@"Localizable"];
  v6 = self->_titleLabel;
  self->_titleLabel = v5;

LABEL_16:
  titleLabel = v15;
LABEL_17:
}

- (void)_configureDescriptionLabelText
{
  if (self->_unlocking || (actionType = self->_actionType, actionType < 3))
  {
    descriptionLabel = self->_descriptionLabel;
    self->_descriptionLabel = &stru_10001CA70;
  }

  else
  {
    if (actionType == 4)
    {
      v5 = +[NSBundle mainBundle];
      v9 = v5;
      v6 = @"PERMANENTLY_LOCKED_DESCRIPTION";
    }

    else
    {
      if (actionType != 3 || self->_actionSubtype != 1)
      {
        return;
      }

      v5 = +[NSBundle mainBundle];
      v9 = v5;
      v6 = @"PUK_LOCKED_DESCRIPTION";
    }

    v7 = [(NSString *)v5 localizedStringForKey:v6 value:&stru_10001CA70 table:@"Localizable"];
    v8 = self->_descriptionLabel;
    self->_descriptionLabel = v7;

    descriptionLabel = v9;
  }
}

@end