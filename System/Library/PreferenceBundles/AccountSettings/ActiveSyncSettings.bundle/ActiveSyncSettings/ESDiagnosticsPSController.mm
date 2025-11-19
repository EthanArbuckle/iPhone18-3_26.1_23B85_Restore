@interface ESDiagnosticsPSController
+ (id)dumpRuntimeStateSpecifiers;
+ (id)linkSpecifier;
- (BOOL)saveFileAtPath:(id)a3 toDirectory:(id)a4 withExtension:(id)a5 error:(id *)a6;
- (id)BOOLeanPropertyWithSpecifier:(id)a3;
- (id)diagnosticSpecifiers;
- (id)specifiers;
- (void)_dismissSavingDataAlert;
- (void)_presentNotesController;
- (void)alertView:(id)a3 clickedButtonAtIndex:(int64_t)a4;
- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4;
- (void)handleClearAllLogsForSpecifier:(id)a3;
- (void)handleDumpRuntimeStateForSpecifier:(id)a3;
- (void)handleSaveAllLogsForSpecifier:(id)a3;
- (void)handleSaveAllLogsStep2;
- (void)purgeFileAtPath:(id)a3;
- (void)runSimpleAlertWithTitle:(id)a3 message:(id)a4;
- (void)runSimpleAlertWithTitle:(id)a3 message:(id)a4 dismissedSelector:(SEL)a5;
- (void)saveLogsWithNotes:(id)a3;
- (void)setBooleanProperty:(id)a3 withSpecifier:(id)a4;
- (void)suspend;
@end

@implementation ESDiagnosticsPSController

+ (id)linkSpecifier
{
  if ([objc_opt_class() diagnosticsVisible])
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"DIAG_LINK_TITLE" value:&stru_30C98 table:@"Diagnostic"];
    v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)dumpRuntimeStateSpecifiers
{
  v2 = +[NSMutableArray array];
  v3 = [PSSpecifier groupSpecifierWithName:&stru_30C98];
  [v2 addObject:v3];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DIAG_DUMP_RUNTIME_STATE" value:&stru_30C98 table:@"Diagnostic"];
  v6 = [PSSpecifier buttonSpecifierWithTitle:v5 target:0 action:"handleDumpRuntimeStateForSpecifier:" confirmationInfo:0];
  [v2 addObject:v6];

  return v2;
}

- (id)diagnosticSpecifiers
{
  v2 = +[NSMutableArray array];
  v3 = [objc_opt_class() dumpRuntimeStateSpecifiers];
  if (v3)
  {
    [v2 addObjectsFromArray:v3];
  }

  [v3 lastObject];

  return v2;
}

- (id)specifiers
{
  v3 = [(ESDiagnosticsPSController *)self diagnosticSpecifiers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_storeWeak((*(*(&v14 + 1) + 8 * v7) + OBJC_IVAR___PSSpecifier_target), self);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v8 = OBJC_IVAR___PSListController__specifiers;
  v9 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v10 = v3;

  v11 = *&self->PSListController_opaque[v8];
  v12 = v11;

  return v11;
}

- (void)alertView:(id)a3 clickedButtonAtIndex:(int64_t)a4
{
  v6 = a3;
  simpleAlert = self->_simpleAlert;
  if (simpleAlert == v6)
  {
    self->_simpleAlert = 0;

    simpleConfirmSheetDismissedSEL = self->_simpleConfirmSheetDismissedSEL;
    if (simpleConfirmSheetDismissedSEL)
    {
      v9 = self->_simpleConfirmSheetDismissedSEL;
      [(ESDiagnosticsPSController *)self performSelector:simpleConfirmSheetDismissedSEL withObject:0 afterDelay:1.0];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ESDiagnosticsPSController;
    [(ESDiagnosticsPSController *)&v10 alertView:v6 clickedButtonAtIndex:a4];
  }
}

- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4
{
  savingDataAlert = self->_savingDataAlert;
  if (savingDataAlert == a3)
  {
    self->_savingDataAlert = 0;

    [(ESDiagnosticsPSController *)self performSelector:"handleSaveAllLogsStep2" withObject:0 afterDelay:0.0];
  }
}

- (void)runSimpleAlertWithTitle:(id)a3 message:(id)a4 dismissedSelector:(SEL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [UIAlertView alloc];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_30C98 table:@"Diagnostic"];
  v13 = [v10 initWithTitle:v9 message:v8 delegate:self cancelButtonTitle:v12 otherButtonTitles:0];

  simpleAlert = self->_simpleAlert;
  self->_simpleAlert = v13;

  if (a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = 0;
  }

  self->_simpleConfirmSheetDismissedSEL = v15;
  v16 = self->_simpleAlert;

  [(UIAlertView *)v16 show];
}

- (void)runSimpleAlertWithTitle:(id)a3 message:(id)a4
{
  v6 = UIApp;
  v7 = a4;
  alertHeader = a3;
  if ([v6 isSuspended])
  {
    v9 = 0;
    CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, alertHeader, v7, 0, 0, 0, &v9);
  }

  else
  {
    [(ESDiagnosticsPSController *)self runSimpleAlertWithTitle:alertHeader message:v7 dismissedSelector:0];
  }
}

- (void)setBooleanProperty:(id)a3 withSpecifier:(id)a4
{
  v8 = a4;
  v6 = [a3 BOOLValue];
  v7 = [v8 identifier];
  if ([v7 isEqualToString:@"ESDiagnosticsEnabled"])
  {
    [(ESDiagnosticsPSController *)self setLoggingEnabled:v6 forSpecifier:v8];
  }
}

- (id)BOOLeanPropertyWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"ESDiagnosticsEnabled"])
  {
    v6 = [(ESDiagnosticsPSController *)self isLoggingEnabledForSpecifier:v4];
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSNumber numberWithBool:v6];

  return v7;
}

- (void)handleDumpRuntimeStateForSpecifier:(id)a3
{
  v3 = PSPIDForProcessNamed();
  if ((v3 & 0x80000000) == 0)
  {

    kill(v3, 31);
  }
}

- (BOOL)saveFileAtPath:(id)a3 toDirectory:(id)a4 withExtension:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = +[NSFileManager defaultManager];
  v12 = [v9 lastPathComponent];
  v13 = [v10 stringByAppendingPathComponent:v12];

  if (a5)
  {
    v14 = [v13 pathExtension];
    if ([v14 isEqual:@"log"])
    {
LABEL_5:

      goto LABEL_6;
    }

    v15 = [v13 pathExtension];
    v16 = [v15 isEqual:@"gz"];

    if ((v16 & 1) == 0)
    {
      [v13 stringByAppendingPathExtension:@"log"];
      v13 = v14 = v13;
      goto LABEL_5;
    }
  }

LABEL_6:
  v21 = 0;
  [v11 copyItemAtPath:v9 toPath:v13 error:&v21];
  v17 = v21;
  v18 = v17;
  if (a6 && v17)
  {
    v19 = v17;
    *a6 = v18;
  }

  return v18 == 0;
}

- (void)saveLogsWithNotes:(id)a3
{
  v4 = a3;
  v5 = [(ESDiagnosticsPSController *)self pathsOfAllLogFiles];
  v6 = sub_B01C(v5);

  v7 = +[NSCalendarDate calendarDate];
  v8 = [v7 descriptionWithCalendarFormat:@"%Y-%m-%d-%H%M%S"];

  v9 = NSHomeDirectory();
  v10 = [(ESDiagnosticsPSController *)self savedLogsDirectoryNameForSpecifier:0];
  v11 = [NSString stringWithFormat:@"Library/Logs/CrashReporter/%@/Logs-%@", v10, v8];
  v12 = [v9 stringByAppendingPathComponent:v11];

  v13 = +[NSFileManager defaultManager];
  [v13 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:0];

  v14 = [NSString stringWithFormat:@"Log Notes [%@]\n==========================================================\n%@\n==========================================================\n", v8, v4];

  if (v12)
  {
    v15 = [v12 stringByAppendingPathComponent:@"Notes.log"];
    [v14 writeToFile:v15 atomically:1 encoding:4 error:0];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v27 = v6;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
LABEL_4:
      v20 = 0;
      while (1)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if (![(ESDiagnosticsPSController *)self saveFileAtPath:*(*(&v35 + 1) + 8 * v20) toDirectory:v12 withExtension:@"log" error:0])
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
          if (v18)
          {
            goto LABEL_4;
          }

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v21 = v16;
          v22 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v32;
            do
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v32 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                [(ESDiagnosticsPSController *)self purgeFileAtPath:*(*(&v31 + 1) + 8 * i)];
              }

              v23 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v23);
          }

          break;
        }
      }
    }

    v6 = v27;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B184;
  block[3] = &unk_308A0;
  v29 = v12;
  v30 = self;
  v26 = v12;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_presentNotesController
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DIAG_NOTES_TITLE" value:&stru_30C98 table:@"Diagnostic"];
  v5 = objc_opt_class();
  v10 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:v5 cell:1 edit:objc_opt_class()];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v10 setProperty:v7 forKey:PSSetupCustomClassKey];

  [v10 setProperty:self forKey:@"kESDiagnosticSaveNotesDelegate"];
  v8 = *&v10[OBJC_IVAR___PSSpecifier_detailControllerClass];
  v9 = objc_opt_new();
  self->PSListController_opaque[OBJC_IVAR___PSListController__showingSetupController] = 1;
  [v9 setParentController:self];
  [v9 setSpecifier:v10];
  objc_storeWeak(&v10[OBJC_IVAR___PSSpecifier_target], self);
  [(ESDiagnosticsPSController *)self pushController:v9];
}

- (void)handleSaveAllLogsStep2
{
  v3 = [(ESDiagnosticsPSController *)self pathsOfAllLogFiles];
  v8 = sub_B01C(v3);

  if ([v8 count])
  {
    [(ESDiagnosticsPSController *)self _presentNotesController];
  }

  else
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"DIAG_NO_LOGS_TO_SAVE_TITLE" value:&stru_30C98 table:@"Diagnostic"];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"DIAGS_NO_LOGS_TO_SAVE_MESSAGE" value:&stru_30C98 table:@"Diagnostic"];
    [(ESDiagnosticsPSController *)self runSimpleAlertWithTitle:v5 message:v7];
  }
}

- (void)_dismissSavingDataAlert
{
  [(UIAlertView *)self->_savingDataAlert dismissWithClickedButtonIndex:0 animated:1];
  [UIApp setIgnoresInteractionEvents:0];
  v3 = [(ESDiagnosticsPSController *)self rootController];
  [v3 taskFinished:self];
}

- (void)handleSaveAllLogsForSpecifier:(id)a3
{
  v4 = a3;
  v14 = [(ESDiagnosticsPSController *)self rootController];
  [(ESDiagnosticsPSController *)self handleDumpRuntimeStateForSpecifier:v4];

  [v14 addTask:self];
  v5 = [UIAlertView alloc];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"DIAG_SAVING_ADDITIONAL_DATA_TITLE" value:&stru_30C98 table:@"Diagnostic"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"DIAG_SAVING_ADDITIONAL_DATA_MESSAGE" value:&stru_30C98 table:@"Diagnostic"];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_30C98 table:@"Diagnostic"];
  v12 = [v5 initWithTitle:v7 message:v9 delegate:self cancelButtonTitle:v11 otherButtonTitles:0];
  savingDataAlert = self->_savingDataAlert;
  self->_savingDataAlert = v12;

  [(UIAlertView *)self->_savingDataAlert show];
  [UIApp setIgnoresInteractionEvents:1];
  [(ESDiagnosticsPSController *)self performSelector:"_dismissSavingDataAlert" withObject:0 afterDelay:4.0];
}

- (void)suspend
{
  if (([UIApp isSuspendedEventsOnly] & 1) == 0)
  {
    v3 = [(ESDiagnosticsPSController *)self navigationController];
    [v3 dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)handleClearAllLogsForSpecifier:(id)a3
{
  v4 = [(ESDiagnosticsPSController *)self pathsOfAllLogFiles];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(ESDiagnosticsPSController *)self purgeFileAtPath:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)purgeFileAtPath:(id)a3
{
  v5 = a3;
  v3 = [v5 lastPathComponent];
  if ([v3 isEqualToString:@"dataaccess.log"])
  {
    truncate([v5 fileSystemRepresentation], 0);
  }

  else
  {
    v4 = +[NSFileManager defaultManager];
    [v4 removeItemAtPath:v5 error:0];
  }
}

@end