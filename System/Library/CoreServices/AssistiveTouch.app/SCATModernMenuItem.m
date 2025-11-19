@interface SCATModernMenuItem
+ (CGSize)imageSize;
+ (SCATModernMenuItem)itemWithIdentifier:(id)a3 delegate:(id)a4 title:(id)a5 imageName:(id)a6 activateBehavior:(unint64_t)a7;
+ (SCATModernMenuItem)itemWithIdentifier:(id)a3 delegate:(id)a4 title:(id)a5 imageName:(id)a6 activateBehavior:(unint64_t)a7 activateHandler:(id)a8 updateHandler:(id)a9;
+ (SCATModernMenuItem)itemWithIdentifier:(id)a3 delegate:(id)a4 title:(id)a5 imageName:(id)a6 activateBehavior:(unint64_t)a7 allowedWithGuidedAccess:(BOOL)a8 allowedWithAssistiveAccess:(BOOL)a9;
+ (SCATModernMenuItem)itemWithIdentifier:(id)a3 delegate:(id)a4 title:(id)a5 imageName:(id)a6 activateBehavior:(unint64_t)a7 allowedWithGuidedAccess:(BOOL)a8 allowedWithAssistiveAccess:(BOOL)a9 activateHandler:(id)a10 updateHandler:(id)a11;
+ (id)titleTextAttributes;
- (BOOL)handleActivateWithElement:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SCATModernMenuItem)init;
- (SCATModernMenuItem)initWithIdentifier:(id)a3 delegate:(id)a4 title:(id)a5 imageName:(id)a6 activateBehavior:(unint64_t)a7 allowedWithGuidedAccess:(BOOL)a8 allowedWithAssistiveAccess:(BOOL)a9 activateHandler:(id)a10 updateHandler:(id)a11;
- (SCATModernMenuItemDelegate)delegate;
- (UIImage)resolvedImage;
- (id)accessibilityLabel;
- (id)description;
- (void)_updateVisuals;
- (void)activate;
- (void)flash;
- (void)setDisabled:(BOOL)a3;
- (void)setIconImageAngle:(double)a3;
- (void)setImage:(id)a3;
- (void)updateItem;
@end

@implementation SCATModernMenuItem

+ (id)titleTextAttributes
{
  if (qword_100218C20 != -1)
  {
    sub_10012B188();
  }

  v3 = qword_100218C18;

  return v3;
}

+ (CGSize)imageSize
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = 60.0;
  if (v4 == 1.0)
  {
    v5 = 59.0;
  }

  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

+ (SCATModernMenuItem)itemWithIdentifier:(id)a3 delegate:(id)a4 title:(id)a5 imageName:(id)a6 activateBehavior:(unint64_t)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  LOBYTE(v17) = 1;
  v15 = [objc_opt_class() itemWithIdentifier:v14 delegate:v13 title:v12 imageName:v11 activateBehavior:a7 allowedWithGuidedAccess:1 allowedWithAssistiveAccess:v17];

  return v15;
}

+ (SCATModernMenuItem)itemWithIdentifier:(id)a3 delegate:(id)a4 title:(id)a5 imageName:(id)a6 activateBehavior:(unint64_t)a7 allowedWithGuidedAccess:(BOOL)a8 allowedWithAssistiveAccess:(BOOL)a9
{
  v9 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  LOBYTE(v20) = a9;
  v18 = [objc_alloc(objc_opt_class()) initWithIdentifier:v17 delegate:v16 title:v15 imageName:v14 activateBehavior:a7 allowedWithGuidedAccess:v9 allowedWithAssistiveAccess:v20 activateHandler:0 updateHandler:0];

  return v18;
}

+ (SCATModernMenuItem)itemWithIdentifier:(id)a3 delegate:(id)a4 title:(id)a5 imageName:(id)a6 activateBehavior:(unint64_t)a7 allowedWithGuidedAccess:(BOOL)a8 allowedWithAssistiveAccess:(BOOL)a9 activateHandler:(id)a10 updateHandler:(id)a11
{
  v11 = a8;
  v17 = a11;
  v18 = a10;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  LOBYTE(v25) = a9;
  v23 = [objc_alloc(objc_opt_class()) initWithIdentifier:v22 delegate:v21 title:v20 imageName:v19 activateBehavior:a7 allowedWithGuidedAccess:v11 allowedWithAssistiveAccess:v25 activateHandler:v18 updateHandler:v17];

  return v23;
}

+ (SCATModernMenuItem)itemWithIdentifier:(id)a3 delegate:(id)a4 title:(id)a5 imageName:(id)a6 activateBehavior:(unint64_t)a7 activateHandler:(id)a8 updateHandler:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  LOBYTE(v23) = 1;
  v21 = [objc_opt_class() itemWithIdentifier:v20 delegate:v19 title:v18 imageName:v17 activateBehavior:a7 allowedWithGuidedAccess:1 allowedWithAssistiveAccess:v23 activateHandler:v16 updateHandler:v15];

  return v21;
}

- (SCATModernMenuItem)init
{
  [NSException raise:NSInvalidArgumentException format:@"Use the designated initializer or the class factory methods."];

  return 0;
}

- (SCATModernMenuItem)initWithIdentifier:(id)a3 delegate:(id)a4 title:(id)a5 imageName:(id)a6 activateBehavior:(unint64_t)a7 allowedWithGuidedAccess:(BOOL)a8 allowedWithAssistiveAccess:(BOOL)a9 activateHandler:(id)a10 updateHandler:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a10;
  v22 = a11;
  v30.receiver = self;
  v30.super_class = SCATModernMenuItem;
  v23 = [(SCATModernMenuItem *)&v30 init];
  v24 = v23;
  if (v23)
  {
    [(SCATModernMenuItem *)v23 setActivateHandler:v21];
    [(SCATModernMenuItem *)v24 setUpdateHandler:v22];
    [(SCATModernMenuItem *)v24 setIdentifier:v17];
    [(SCATModernMenuItem *)v24 setDelegate:v18];
    [(SCATModernMenuItem *)v24 setTitle:v19];
    if (v20)
    {
      [(SCATModernMenuItem *)v24 setImageName:v20];
    }

    else
    {
      [NSString stringWithFormat:@"SCATIcon_%@", v17];
      v29 = a7;
      v26 = v25 = a8;
      [(SCATModernMenuItem *)v24 setImageName:v26];

      a8 = v25;
      a7 = v29;
    }

    [(SCATModernMenuItem *)v24 setActivateBehavior:a7];
    v24->_allowedWithGuidedAccess = a8;
    v24->_allowedWithAssistiveAccess = a9;
    [(SCATModernMenuItem *)v24 setStyle:0];
    v27 = [[SCATMenuItemElement alloc] initWithMenuItem:v24];
    [(SCATModernMenuItem *)v24 setScatElement:v27];
  }

  return v24;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(SCATModernMenuItem *)self title];
  v6 = [NSNumber numberWithBool:self->_didActivate];
  v7 = [NSString stringWithFormat:@"%@<%p>. title:%@ didActivate:%@", v4, self, v5, v6];

  return v7;
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    [(SCATModernMenuItem *)self setStyle:a3];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  p_image = &self->_image;
  if (self->_image != v5)
  {
    v7 = v5;
    objc_storeStrong(p_image, a3);
    p_image = [(SCATModernMenuItem *)self _updateVisuals];
    v5 = v7;
  }

  _objc_release_x1(p_image, v5);
}

- (void)setIconImageAngle:(double)a3
{
  if (self->_iconImageAngle != a3)
  {
    self->_iconImageAngle = a3;
    [(SCATModernMenuItem *)self _updateVisuals];
  }
}

- (void)updateItem
{
  v4 = [(SCATModernMenuItem *)self updateHandler];
  if (v4 && ([(SCATModernMenuItem *)self updateHandler], v2 = objc_claimAutoreleasedReturnValue(), (v2)[2](v2, self)))
  {
  }

  else
  {
    v5 = [(SCATModernMenuItem *)self delegate];
    v6 = [v5 shouldUpdateMenuItem:self];

    if (v4)
    {

      if ((v6 & 1) == 0)
      {
        return;
      }
    }

    else if (!v6)
    {
      return;
    }
  }

  [(SCATModernMenuItem *)self _updateVisuals];
}

- (UIImage)resolvedImage
{
  v3 = [(SCATModernMenuItem *)self image];

  if (v3)
  {
    [(SCATModernMenuItem *)self image];
  }

  else
  {
    sub_1000D23DC(self);
  }
  v4 = ;

  return v4;
}

- (BOOL)handleActivateWithElement:(id)a3
{
  v4 = a3;
  v5 = [(SCATModernMenuItem *)self activateBehavior];
  v6 = [(SCATModernMenuItem *)self didActivate];
  if (v5 - 5 < 0xFFFFFFFFFFFFFFFELL)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 != 1)
  {
    [(SCATModernMenuItem *)self setDidActivate:1];
    v8 = +[SCATScannerManager sharedManager];
    [(SCATModernMenuItem *)self flash];
    v9 = [(SCATModernMenuItem *)self activateBehavior];
    if (v9 > 2)
    {
      if (v9 == 4)
      {
        [(SCATModernMenuItem *)self activate];
        [(SCATModernMenuItem *)self updateItem];
        v13 = [v8 menu];
        v10 = [SCATFocusContext focusContextWithElement:v4 elementManager:v13 selectBehavior:0 options:0];

        v14 = +[SCATScannerManager sharedManager];
        [v14 beginScanningWithFocusContext:v10];

        [(AXDispatchTimer *)self->_repeatItemWithDismissTimer cancel];
        repeatItemWithDismissTimer = self->_repeatItemWithDismissTimer;
        if (!repeatItemWithDismissTimer)
        {
          v16 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
          v17 = self->_repeatItemWithDismissTimer;
          self->_repeatItemWithDismissTimer = v16;

          repeatItemWithDismissTimer = self->_repeatItemWithDismissTimer;
        }

        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000D2914;
        v20[3] = &unk_1001D3488;
        v21 = v8;
        [(AXDispatchTimer *)repeatItemWithDismissTimer afterDelay:v20 processBlock:0.5];

        goto LABEL_18;
      }

      if (v9 == 3)
      {
        [(SCATModernMenuItem *)self activate];
        [(SCATModernMenuItem *)self updateItem];
        v10 = [v8 menu];
        v11 = [SCATFocusContext focusContextWithElement:v4 elementManager:v10 selectBehavior:0 options:0];
        [v8 beginScanningWithFocusContext:v11];

LABEL_18:
        goto LABEL_19;
      }
    }

    else
    {
      if (v9 == 1)
      {
        [(SCATModernMenuItem *)self activate];
        v12 = [v8 menu];
        [v12 hideWithCompletion:0];

        goto LABEL_19;
      }

      if (v9 == 2)
      {
        [(SCATModernMenuItem *)self activate];
        [(SCATModernMenuItem *)self updateItem];
LABEL_19:

        goto LABEL_20;
      }
    }

    v10 = [v8 menu];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000D295C;
    v19[3] = &unk_1001D3488;
    v19[4] = self;
    [v10 hideWithCompletion:v19];
    goto LABEL_18;
  }

  _AXLogWithFacility();
LABEL_20:

  return v7 ^ 1;
}

- (void)activate
{
  v3 = [(SCATModernMenuItem *)self activateHandler];

  if (v3)
  {
    v6 = [(SCATModernMenuItem *)self activateHandler];
    v4 = [(SCATModernMenuItem *)self delegate];
    v5 = [v4 menu];
    v6[2](v6, v5);
  }

  else
  {
    v6 = [(SCATModernMenuItem *)self delegate];
    [v6 menuItemWasActivated:self];
  }
}

- (void)flash
{
  v5 = [(SCATModernMenuItem *)self delegate];
  v3 = [v5 menu];
  v4 = [v3 menuVisualProvider];
  [v4 flashModernMenuItem:self];
}

- (id)accessibilityLabel
{
  v3 = [(SCATModernMenuItem *)self accessibilityUserDefinedLabel];
  if (!v3)
  {
    v3 = [(SCATModernMenuItem *)self title];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SCATModernMenuItem;
  if ([(SCATModernMenuItem *)&v12 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = v4;
    v7 = [(SCATModernMenuItem *)self identifier];
    v8 = [v6 identifier];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(SCATModernMenuItem *)self title];
      v10 = [v6 title];
      v5 = [v9 isEqualToString:v10];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_updateVisuals
{
  v5 = [(SCATModernMenuItem *)self delegate];
  v3 = [v5 menu];
  v4 = [v3 menuVisualProvider];
  [v4 updateModernMenuItem:self];
}

- (SCATModernMenuItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end