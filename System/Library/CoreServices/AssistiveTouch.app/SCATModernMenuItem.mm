@interface SCATModernMenuItem
+ (CGSize)imageSize;
+ (SCATModernMenuItem)itemWithIdentifier:(id)identifier delegate:(id)delegate title:(id)title imageName:(id)name activateBehavior:(unint64_t)behavior;
+ (SCATModernMenuItem)itemWithIdentifier:(id)identifier delegate:(id)delegate title:(id)title imageName:(id)name activateBehavior:(unint64_t)behavior activateHandler:(id)handler updateHandler:(id)updateHandler;
+ (SCATModernMenuItem)itemWithIdentifier:(id)identifier delegate:(id)delegate title:(id)title imageName:(id)name activateBehavior:(unint64_t)behavior allowedWithGuidedAccess:(BOOL)access allowedWithAssistiveAccess:(BOOL)assistiveAccess;
+ (SCATModernMenuItem)itemWithIdentifier:(id)identifier delegate:(id)delegate title:(id)title imageName:(id)name activateBehavior:(unint64_t)behavior allowedWithGuidedAccess:(BOOL)access allowedWithAssistiveAccess:(BOOL)assistiveAccess activateHandler:(id)self0 updateHandler:(id)self1;
+ (id)titleTextAttributes;
- (BOOL)handleActivateWithElement:(id)element;
- (BOOL)isEqual:(id)equal;
- (SCATModernMenuItem)init;
- (SCATModernMenuItem)initWithIdentifier:(id)identifier delegate:(id)delegate title:(id)title imageName:(id)name activateBehavior:(unint64_t)behavior allowedWithGuidedAccess:(BOOL)access allowedWithAssistiveAccess:(BOOL)assistiveAccess activateHandler:(id)self0 updateHandler:(id)self1;
- (SCATModernMenuItemDelegate)delegate;
- (UIImage)resolvedImage;
- (id)accessibilityLabel;
- (id)description;
- (void)_updateVisuals;
- (void)activate;
- (void)flash;
- (void)setDisabled:(BOOL)disabled;
- (void)setIconImageAngle:(double)angle;
- (void)setImage:(id)image;
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

+ (SCATModernMenuItem)itemWithIdentifier:(id)identifier delegate:(id)delegate title:(id)title imageName:(id)name activateBehavior:(unint64_t)behavior
{
  nameCopy = name;
  titleCopy = title;
  delegateCopy = delegate;
  identifierCopy = identifier;
  LOBYTE(v17) = 1;
  v15 = [objc_opt_class() itemWithIdentifier:identifierCopy delegate:delegateCopy title:titleCopy imageName:nameCopy activateBehavior:behavior allowedWithGuidedAccess:1 allowedWithAssistiveAccess:v17];

  return v15;
}

+ (SCATModernMenuItem)itemWithIdentifier:(id)identifier delegate:(id)delegate title:(id)title imageName:(id)name activateBehavior:(unint64_t)behavior allowedWithGuidedAccess:(BOOL)access allowedWithAssistiveAccess:(BOOL)assistiveAccess
{
  accessCopy = access;
  nameCopy = name;
  titleCopy = title;
  delegateCopy = delegate;
  identifierCopy = identifier;
  LOBYTE(v20) = assistiveAccess;
  v18 = [objc_alloc(objc_opt_class()) initWithIdentifier:identifierCopy delegate:delegateCopy title:titleCopy imageName:nameCopy activateBehavior:behavior allowedWithGuidedAccess:accessCopy allowedWithAssistiveAccess:v20 activateHandler:0 updateHandler:0];

  return v18;
}

+ (SCATModernMenuItem)itemWithIdentifier:(id)identifier delegate:(id)delegate title:(id)title imageName:(id)name activateBehavior:(unint64_t)behavior allowedWithGuidedAccess:(BOOL)access allowedWithAssistiveAccess:(BOOL)assistiveAccess activateHandler:(id)self0 updateHandler:(id)self1
{
  accessCopy = access;
  updateHandlerCopy = updateHandler;
  handlerCopy = handler;
  nameCopy = name;
  titleCopy = title;
  delegateCopy = delegate;
  identifierCopy = identifier;
  LOBYTE(v25) = assistiveAccess;
  v23 = [objc_alloc(objc_opt_class()) initWithIdentifier:identifierCopy delegate:delegateCopy title:titleCopy imageName:nameCopy activateBehavior:behavior allowedWithGuidedAccess:accessCopy allowedWithAssistiveAccess:v25 activateHandler:handlerCopy updateHandler:updateHandlerCopy];

  return v23;
}

+ (SCATModernMenuItem)itemWithIdentifier:(id)identifier delegate:(id)delegate title:(id)title imageName:(id)name activateBehavior:(unint64_t)behavior activateHandler:(id)handler updateHandler:(id)updateHandler
{
  updateHandlerCopy = updateHandler;
  handlerCopy = handler;
  nameCopy = name;
  titleCopy = title;
  delegateCopy = delegate;
  identifierCopy = identifier;
  LOBYTE(v23) = 1;
  v21 = [objc_opt_class() itemWithIdentifier:identifierCopy delegate:delegateCopy title:titleCopy imageName:nameCopy activateBehavior:behavior allowedWithGuidedAccess:1 allowedWithAssistiveAccess:v23 activateHandler:handlerCopy updateHandler:updateHandlerCopy];

  return v21;
}

- (SCATModernMenuItem)init
{
  [NSException raise:NSInvalidArgumentException format:@"Use the designated initializer or the class factory methods."];

  return 0;
}

- (SCATModernMenuItem)initWithIdentifier:(id)identifier delegate:(id)delegate title:(id)title imageName:(id)name activateBehavior:(unint64_t)behavior allowedWithGuidedAccess:(BOOL)access allowedWithAssistiveAccess:(BOOL)assistiveAccess activateHandler:(id)self0 updateHandler:(id)self1
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  titleCopy = title;
  nameCopy = name;
  handlerCopy = handler;
  updateHandlerCopy = updateHandler;
  v30.receiver = self;
  v30.super_class = SCATModernMenuItem;
  v23 = [(SCATModernMenuItem *)&v30 init];
  v24 = v23;
  if (v23)
  {
    [(SCATModernMenuItem *)v23 setActivateHandler:handlerCopy];
    [(SCATModernMenuItem *)v24 setUpdateHandler:updateHandlerCopy];
    [(SCATModernMenuItem *)v24 setIdentifier:identifierCopy];
    [(SCATModernMenuItem *)v24 setDelegate:delegateCopy];
    [(SCATModernMenuItem *)v24 setTitle:titleCopy];
    if (nameCopy)
    {
      [(SCATModernMenuItem *)v24 setImageName:nameCopy];
    }

    else
    {
      [NSString stringWithFormat:@"SCATIcon_%@", identifierCopy];
      behaviorCopy = behavior;
      v26 = v25 = access;
      [(SCATModernMenuItem *)v24 setImageName:v26];

      access = v25;
      behavior = behaviorCopy;
    }

    [(SCATModernMenuItem *)v24 setActivateBehavior:behavior];
    v24->_allowedWithGuidedAccess = access;
    v24->_allowedWithAssistiveAccess = assistiveAccess;
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
  title = [(SCATModernMenuItem *)self title];
  v6 = [NSNumber numberWithBool:self->_didActivate];
  v7 = [NSString stringWithFormat:@"%@<%p>. title:%@ didActivate:%@", v4, self, title, v6];

  return v7;
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    [(SCATModernMenuItem *)self setStyle:disabled];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  p_image = &self->_image;
  if (self->_image != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(p_image, image);
    p_image = [(SCATModernMenuItem *)self _updateVisuals];
    imageCopy = v7;
  }

  _objc_release_x1(p_image, imageCopy);
}

- (void)setIconImageAngle:(double)angle
{
  if (self->_iconImageAngle != angle)
  {
    self->_iconImageAngle = angle;
    [(SCATModernMenuItem *)self _updateVisuals];
  }
}

- (void)updateItem
{
  updateHandler = [(SCATModernMenuItem *)self updateHandler];
  if (updateHandler && ([(SCATModernMenuItem *)self updateHandler], v2 = objc_claimAutoreleasedReturnValue(), (v2)[2](v2, self)))
  {
  }

  else
  {
    delegate = [(SCATModernMenuItem *)self delegate];
    v6 = [delegate shouldUpdateMenuItem:self];

    if (updateHandler)
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
  image = [(SCATModernMenuItem *)self image];

  if (image)
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

- (BOOL)handleActivateWithElement:(id)element
{
  elementCopy = element;
  activateBehavior = [(SCATModernMenuItem *)self activateBehavior];
  didActivate = [(SCATModernMenuItem *)self didActivate];
  if (activateBehavior - 5 < 0xFFFFFFFFFFFFFFFELL)
  {
    v7 = didActivate;
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
    activateBehavior2 = [(SCATModernMenuItem *)self activateBehavior];
    if (activateBehavior2 > 2)
    {
      if (activateBehavior2 == 4)
      {
        [(SCATModernMenuItem *)self activate];
        [(SCATModernMenuItem *)self updateItem];
        menu = [v8 menu];
        menu2 = [SCATFocusContext focusContextWithElement:elementCopy elementManager:menu selectBehavior:0 options:0];

        v14 = +[SCATScannerManager sharedManager];
        [v14 beginScanningWithFocusContext:menu2];

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

      if (activateBehavior2 == 3)
      {
        [(SCATModernMenuItem *)self activate];
        [(SCATModernMenuItem *)self updateItem];
        menu2 = [v8 menu];
        v11 = [SCATFocusContext focusContextWithElement:elementCopy elementManager:menu2 selectBehavior:0 options:0];
        [v8 beginScanningWithFocusContext:v11];

LABEL_18:
        goto LABEL_19;
      }
    }

    else
    {
      if (activateBehavior2 == 1)
      {
        [(SCATModernMenuItem *)self activate];
        menu3 = [v8 menu];
        [menu3 hideWithCompletion:0];

        goto LABEL_19;
      }

      if (activateBehavior2 == 2)
      {
        [(SCATModernMenuItem *)self activate];
        [(SCATModernMenuItem *)self updateItem];
LABEL_19:

        goto LABEL_20;
      }
    }

    menu2 = [v8 menu];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000D295C;
    v19[3] = &unk_1001D3488;
    v19[4] = self;
    [menu2 hideWithCompletion:v19];
    goto LABEL_18;
  }

  _AXLogWithFacility();
LABEL_20:

  return v7 ^ 1;
}

- (void)activate
{
  activateHandler = [(SCATModernMenuItem *)self activateHandler];

  if (activateHandler)
  {
    activateHandler2 = [(SCATModernMenuItem *)self activateHandler];
    delegate = [(SCATModernMenuItem *)self delegate];
    menu = [delegate menu];
    activateHandler2[2](activateHandler2, menu);
  }

  else
  {
    activateHandler2 = [(SCATModernMenuItem *)self delegate];
    [activateHandler2 menuItemWasActivated:self];
  }
}

- (void)flash
{
  delegate = [(SCATModernMenuItem *)self delegate];
  menu = [delegate menu];
  menuVisualProvider = [menu menuVisualProvider];
  [menuVisualProvider flashModernMenuItem:self];
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(SCATModernMenuItem *)self accessibilityUserDefinedLabel];
  if (!accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel = [(SCATModernMenuItem *)self title];
  }

  return accessibilityUserDefinedLabel;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = SCATModernMenuItem;
  if ([(SCATModernMenuItem *)&v12 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = equalCopy;
    identifier = [(SCATModernMenuItem *)self identifier];
    identifier2 = [v6 identifier];
    if ([identifier isEqualToString:identifier2])
    {
      title = [(SCATModernMenuItem *)self title];
      title2 = [v6 title];
      v5 = [title isEqualToString:title2];
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
  delegate = [(SCATModernMenuItem *)self delegate];
  menu = [delegate menu];
  menuVisualProvider = [menu menuVisualProvider];
  [menuVisualProvider updateModernMenuItem:self];
}

- (SCATModernMenuItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end