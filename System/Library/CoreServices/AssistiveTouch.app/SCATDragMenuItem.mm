@interface SCATDragMenuItem
- (SCATDragMenuItem)initWithTitle:(id)a3 element:(id)a4 activationToken:(id)a5 delegate:(id)a6;
- (void)_activateWithActualElement:(id)a3;
@end

@implementation SCATDragMenuItem

- (SCATDragMenuItem)initWithTitle:(id)a3 element:(id)a4 activationToken:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000B54DC;
  v21[3] = &unk_1001D6C28;
  objc_copyWeak(&v23, &location);
  v14 = v11;
  v22 = v14;
  v15 = objc_retainBlock(v21);
  v20.receiver = self;
  v20.super_class = SCATDragMenuItem;
  v19 = 1;
  v16 = [(SCATModernMenuItem *)&v20 initWithIdentifier:@"kSCATDragMenuItemIdentifier" delegate:v13 title:v10 imageName:@"SCATIcon_gestures_drag" activateBehavior:1 allowedWithGuidedAccess:1 allowedWithAssistiveAccess:v19 activateHandler:v15 updateHandler:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_element, a4);
    objc_storeStrong(&v17->_activationToken, a5);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v17;
}

- (void)_activateWithActualElement:(id)a3
{
  v4 = a3;
  v5 = +[SCATScannerManager sharedManager];
  [v5 waitForDragStartFromPid:objc_msgSend(v4 completion:{"scatPid"), &stru_1001D6C48}];

  activationToken = self->_activationToken;
  v8[0] = AXDragServiceNameSwitchControl;
  v8[1] = activationToken;
  v7 = [NSArray arrayWithObjects:v8 count:2];
  [v4 scatPerformAction:2050 withValue:v7];
}

@end