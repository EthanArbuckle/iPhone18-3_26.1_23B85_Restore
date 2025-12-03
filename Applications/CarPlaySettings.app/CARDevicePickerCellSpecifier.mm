@interface CARDevicePickerCellSpecifier
- (BOOL)_isDevicePickerLimitedUIOn;
- (CARDevicePickerCellSpecifier)initWithTitle:(id)title image:(id)image icon:(id)icon accessoryType:(int64_t)type carSession:(id)session actionBlock:(id)block;
- (id)_limitedUIAttributedString;
- (void)refreshSpecifierIfNeeded;
@end

@implementation CARDevicePickerCellSpecifier

- (CARDevicePickerCellSpecifier)initWithTitle:(id)title image:(id)image icon:(id)icon accessoryType:(int64_t)type carSession:(id)session actionBlock:(id)block
{
  sessionCopy = session;
  v19.receiver = self;
  v19.super_class = CARDevicePickerCellSpecifier;
  v16 = [(CARSettingsCellSpecifier *)&v19 initWithTitle:title image:image icon:icon accessoryType:type actionBlock:block];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_carSession, session);
  }

  return v17;
}

- (void)refreshSpecifierIfNeeded
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002098C;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)_isDevicePickerLimitedUIOn
{
  carSession = [(CARDevicePickerCellSpecifier *)self carSession];
  limitUserInterfaces = [carSession limitUserInterfaces];
  bOOLValue = [limitUserInterfaces BOOLValue];

  if (bOOLValue)
  {
    carSession2 = [(CARDevicePickerCellSpecifier *)self carSession];
    configuration = [carSession2 configuration];
    limitableUserInterfaces = [configuration limitableUserInterfaces];

    return (limitableUserInterfaces >> 6) & 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)_limitedUIAttributedString
{
  v2 = objc_alloc_init(NSTextAttachment);
  v3 = +[UIColor systemGrayColor];
  v4 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v3];

  v5 = [UIImage systemImageNamed:@"steeringwheel" withConfiguration:v4];
  [v2 setImage:v5];
  v6 = [NSAttributedString attributedStringWithAttachment:v2];
  v7 = [[NSAttributedString alloc] initWithString:@"  "];
  v8 = [NSMutableAttributedString alloc];
  v9 = sub_10001C80C(@"DEVICE_PICKER_CELL_TITLE");
  v10 = [v8 initWithString:v9];

  [v10 appendAttributedString:v7];
  [v10 appendAttributedString:v6];

  return v10;
}

@end