@interface DTProcessorTraceStateController
- (DTProcessorTraceStateController)init;
- (id)isProcessorTraceEnabled:(id)enabled;
- (id)specifiers;
- (void)_presentRebootAlertForStateTransitionTo:(BOOL)to withCallback:(id)callback onCancel:(id)cancel;
- (void)setProcessorTraceEnabled:(id)enabled forSpecifier:(id)specifier;
@end

@implementation DTProcessorTraceStateController

- (DTProcessorTraceStateController)init
{
  v6.receiver = self;
  v6.super_class = DTProcessorTraceStateController;
  v2 = [(DTProcessorTraceStateController *)&v6 init];
  if (v2)
  {
    v3 = +[DTProcessorTraceConfigurationState shared];
    state = v2->_state;
    v2->_state = v3;

    if (!v2->_state)
    {
      sub_26B80();
    }
  }

  return v2;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [PSSpecifier preferenceSpecifierNamed:&stru_3E0D8 target:self set:0 get:0 detail:0 cell:0 edit:0];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"PROCESSOR_TRACE_DETAIL_TEXT" value:&stru_3E0D8 table:@"DTProcessorTrace"];
    [v6 setObject:v8 forKeyedSubscript:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"PROCESSOR_TRACE_ENABLE" value:&stru_3E0D8 table:@"DTProcessorTrace"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setProcessorTraceEnabled:forSpecifier:" get:"isProcessorTraceEnabled:" detail:0 cell:6 edit:0];

    [v5 addObject:v11];
    v12 = [v5 copy];
    v13 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v12;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)isProcessorTraceEnabled:(id)enabled
{
  state = [(DTProcessorTraceStateController *)self state];
  hardwareConfigured = [state hardwareConfigured];

  return [NSNumber numberWithBool:hardwareConfigured];
}

- (void)setProcessorTraceEnabled:(id)enabled forSpecifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_19868;
  v7[3] = &unk_3D6C8;
  v7[4] = self;
  v8 = bOOLValue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_198BC;
  v6[3] = &unk_3D5B0;
  v6[4] = self;
  [(DTProcessorTraceStateController *)self _presentRebootAlertForStateTransitionTo:bOOLValue withCallback:v7 onCancel:v6];
}

- (void)_presentRebootAlertForStateTransitionTo:(BOOL)to withCallback:(id)callback onCancel:(id)cancel
{
  toCopy = to;
  callbackCopy = callback;
  cancelCopy = cancel;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = v10;
  if (toCopy)
  {
    v12 = @"PROCESSOR_TRACE_ENABLE_ALERT";
  }

  else
  {
    v12 = @"PROCESSOR_TRACE_DISABLE_ALERT";
  }

  v22 = [v10 localizedStringForKey:v12 value:&stru_3E0D8 table:@"DTProcessorTrace"];

  v13 = [UIAlertController alertControllerWithTitle:0 message:v22 preferredStyle:0];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"PROCESSOR_TRACE_ENABLE_RESTART" value:&stru_3E0D8 table:@"DTProcessorTrace"];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_19B74;
  v25[3] = &unk_3D650;
  v26 = callbackCopy;
  v16 = callbackCopy;
  v17 = [UIAlertAction actionWithTitle:v15 style:2 handler:v25];
  [v13 addAction:v17];

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"PROCESSOR_TRACE_ENABLE_CANCEL" value:&stru_3E0D8 table:@"DTProcessorTrace"];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_19C10;
  v23[3] = &unk_3D650;
  v24 = cancelCopy;
  v20 = cancelCopy;
  v21 = [UIAlertAction actionWithTitle:v19 style:0 handler:v23];
  [v13 addAction:v21];

  [(DTProcessorTraceStateController *)self presentViewController:v13 animated:1 completion:0];
}

@end