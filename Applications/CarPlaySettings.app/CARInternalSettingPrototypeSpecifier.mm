@interface CARInternalSettingPrototypeSpecifier
- (CARInternalSettingPrototypeSpecifier)initWithInternalSettingPrototype:(id)prototype;
- (void)_performAction:(id)action;
@end

@implementation CARInternalSettingPrototypeSpecifier

- (CARInternalSettingPrototypeSpecifier)initWithInternalSettingPrototype:(id)prototype
{
  prototypeCopy = prototype;
  title = [prototypeCopy title];
  v16.receiver = self;
  v16.super_class = CARInternalSettingPrototypeSpecifier;
  v7 = [(CARSettingsSwitchCellSpecifier *)&v16 initWithTitle:title image:0 icon:0];

  objc_storeStrong(&v7->_prototype, prototype);
  objc_initWeak(&location, v7);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10002BB50;
  v13 = &unk_1000DAE40;
  objc_copyWeak(&v14, &location);
  [(CARSettingsCellSpecifier *)v7 setActionBlock:&v10];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [prototypeCopy internalSettingsState]);
  [(CARSettingsCellSpecifier *)v7 setCellValue:v8];

  return v7;
}

- (void)_performAction:(id)action
{
  actionCopy = action;
  v12 = actionCopy;
  if (actionCopy)
  {
    bOOLValue = [actionCopy BOOLValue];
  }

  else
  {
    prototype = [(CARInternalSettingPrototypeSpecifier *)self prototype];
    bOOLValue = ([prototype state] ^ 1);
  }

  prototype2 = [(CARInternalSettingPrototypeSpecifier *)self prototype];
  v8 = +[CARPrototypePref nowPlayingAlbumArt];

  prototype3 = [(CARInternalSettingPrototypeSpecifier *)self prototype];
  v10 = prototype3;
  if (prototype2 == v8)
  {
    [prototype3 setInternalSettingsState:bOOLValue];
  }

  else
  {
    [prototype3 setState:bOOLValue];
  }

  v11 = [NSNumber numberWithBool:bOOLValue];
  [(CARSettingsCellSpecifier *)self setCellValue:v11];
}

@end