@interface BlockedSenderSettingsPane
+ (OS_os_log)log;
- (PSListController)parentListController;
- (id)blockSenderStateWithSpecifier:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)setBlockSenderState:(id)a3 withSpecifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation BlockedSenderSettingsPane

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2AE0;
  block[3] = &unk_3CD10;
  block[4] = a1;
  if (qword_448C8 != -1)
  {
    dispatch_once(&qword_448C8, block);
  }

  v2 = qword_448C0;

  return v2;
}

- (id)specifiers
{
  [(BlockedSenderSettingsPane *)self setBlockSenderEnabled:getMailBoolPreferenceValueWithDefault(EMUserDefaultBlockedSenderEnabled, 1)];
  v3 = getMailPreferenceValueWithDefault(EMUserDefaultBlockedSenderAction, &off_3F750);
  [(BlockedSenderSettingsPane *)self setBlockSenderOptionState:v3];

  v4 = +[BlockedSenderSettingsPane log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ([(BlockedSenderSettingsPane *)self blockSenderEnabled])
    {
      v5 = @"ON";
    }

    else
    {
      v5 = @"OFF";
    }

    v6 = [(BlockedSenderSettingsPane *)self blockSenderOptionState];
    *buf = 138543618;
    v18 = v5;
    v19 = 2048;
    v20 = [v6 integerValue];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "current block sender '%{public}@' and preference action '%li'", buf, 0x16u);
  }

  v7 = OBJC_IVAR___PSListController__specifiers;
  v8 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v8)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"BLOCKED_SENDER_MARK_BLOCKED_SENDER" value:&stru_3D2B0 table:@"Preferences"];
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"setBlockSenderState:withSpecifier:" get:"blockSenderStateWithSpecifier:" detail:objc_opt_class() cell:6 edit:0];
    [(BlockedSenderSettingsPane *)self setBlockSenderSwitch:v12];

    v13 = [(BlockedSenderSettingsPane *)self blockSenderSwitch];
    [v9 addObject:v13];

    if ([(BlockedSenderSettingsPane *)self blockSenderEnabled])
    {
      v14 = [(BlockedSenderSettingsPane *)self _blockedSenderActionOptionsSpecifier];
      [v9 addObjectsFromArray:v14];
    }

    v15 = *&self->PSListController_opaque[v7];
    *&self->PSListController_opaque[v7] = v9;

    v8 = *&self->PSListController_opaque[v7];
  }

  return v8;
}

- (id)blockSenderStateWithSpecifier:(id)a3
{
  v3 = [NSNumber numberWithBool:[(BlockedSenderSettingsPane *)self blockSenderEnabled]];

  return v3;
}

- (void)setBlockSenderState:(id)a3 withSpecifier:(id)a4
{
  v10 = a3;
  -[BlockedSenderSettingsPane setBlockSenderEnabled:](self, "setBlockSenderEnabled:", [v10 BOOLValue]);
  v5 = [(BlockedSenderSettingsPane *)self blockSenderEnabled];
  v6 = [(BlockedSenderSettingsPane *)self blockSenderOptionState];
  -[BlockedSenderSettingsPane _writeBlockSenderEnabled:optionValue:](self, "_writeBlockSenderEnabled:optionValue:", v5, [v6 integerValue]);

  if ([(BlockedSenderSettingsPane *)self blockSenderEnabled])
  {
    v7 = [(BlockedSenderSettingsPane *)self _blockedSenderActionOptionsSpecifier];
    v8 = [(BlockedSenderSettingsPane *)self blockSenderSwitch];
    [(BlockedSenderSettingsPane *)self insertContiguousSpecifiers:v7 afterSpecifier:v8];
  }

  else
  {
    [(BlockedSenderSettingsPane *)self beginUpdates];
    v9 = [(BlockedSenderSettingsPane *)self actionOptionsSpecifiers];
    [(BlockedSenderSettingsPane *)self removeContiguousSpecifiers:v9 animated:0];

    [(BlockedSenderSettingsPane *)self endUpdates];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = BlockedSenderSettingsPane;
  [(BlockedSenderSettingsPane *)&v13 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(BlockedSenderSettingsPane *)self indexForIndexPath:v6];
  v8 = -[BlockedSenderSettingsPane specifierAtIndex:](self, "specifierAtIndex:", -[BlockedSenderSettingsPane indexOfGroup:](self, "indexOfGroup:", [v6 section]));
  v9 = [v8 propertyForKey:PSIsRadioGroupKey];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = [(BlockedSenderSettingsPane *)self specifierAtIndex:v7];
    v12 = [v11 propertyForKey:PSValueKey];
    -[BlockedSenderSettingsPane _writeBlockSenderEnabled:optionValue:](self, "_writeBlockSenderEnabled:optionValue:", -[BlockedSenderSettingsPane blockSenderEnabled](self, "blockSenderEnabled"), [v12 integerValue]);
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = BlockedSenderSettingsPane;
  v7 = [(BlockedSenderSettingsPane *)&v13 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = -[BlockedSenderSettingsPane specifierAtIndex:](self, "specifierAtIndex:", -[BlockedSenderSettingsPane indexOfGroup:](self, "indexOfGroup:", [v6 section]));
  v9 = [v8 propertyForKey:@"AllowMultiLines"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = [v7 textLabel];
    [v11 setLineBreakMode:0];
    [v11 setNumberOfLines:0];
  }

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentListController);

  return WeakRetained;
}

@end