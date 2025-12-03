@interface SCATDropMenuItem
- (BOOL)handleActivateWithElement:(id)element;
- (SCATDropMenuItem)initWithTitle:(id)title fixedSpaceScreenPoint:(CGPoint)point delegate:(id)delegate menu:(id)menu;
@end

@implementation SCATDropMenuItem

- (SCATDropMenuItem)initWithTitle:(id)title fixedSpaceScreenPoint:(CGPoint)point delegate:(id)delegate menu:(id)menu
{
  y = point.y;
  x = point.x;
  v10.receiver = self;
  v10.super_class = SCATDropMenuItem;
  v9 = 1;
  result = [(SCATModernMenuItem *)&v10 initWithIdentifier:@"kSCATDropMenuItemIdentifier" delegate:delegate title:title imageName:@"SCATIcon_gestures_drop" activateBehavior:2 allowedWithGuidedAccess:1 allowedWithAssistiveAccess:v9 activateHandler:&stru_1001D6218 updateHandler:0];
  if (result)
  {
    result->_fixedSpaceScreenPoint.x = x;
    result->_fixedSpaceScreenPoint.y = y;
  }

  return result;
}

- (BOOL)handleActivateWithElement:(id)element
{
  elementCopy = element;
  v5 = +[SCATScannerManager sharedManager];
  [v5 moveDragSessionToFixedSpaceScreenPoint:{self->_fixedSpaceScreenPoint.x, self->_fixedSpaceScreenPoint.y}];

  v7.receiver = self;
  v7.super_class = SCATDropMenuItem;
  LOBYTE(self) = [(SCATModernMenuItem *)&v7 handleActivateWithElement:elementCopy];

  return self;
}

@end