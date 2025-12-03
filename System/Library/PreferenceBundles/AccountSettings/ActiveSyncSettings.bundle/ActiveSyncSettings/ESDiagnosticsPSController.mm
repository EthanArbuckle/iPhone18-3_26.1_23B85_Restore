@interface ESDiagnosticsPSController
+ (id)dumpRuntimeStateSpecifiers;
+ (id)linkSpecifier;
- (BOOL)saveFileAtPath:(id)path toDirectory:(id)directory withExtension:(id)extension error:(id *)error;
- (id)BOOLeanPropertyWithSpecifier:(id)specifier;
- (id)diagnosticSpecifiers;
- (id)specifiers;
- (void)_dismissSavingDataAlert;
- (void)_presentNotesController;
- (void)alertView:(id)view clickedButtonAtIndex:(int64_t)index;
- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index;
- (void)handleClearAllLogsForSpecifier:(id)specifier;
- (void)handleDumpRuntimeStateForSpecifier:(id)specifier;
- (void)handleSaveAllLogsForSpecifier:(id)specifier;
- (void)handleSaveAllLogsStep2;
- (void)purgeFileAtPath:(id)path;
- (void)runSimpleAlertWithTitle:(id)title message:(id)message;
- (void)runSimpleAlertWithTitle:(id)title message:(id)message dismissedSelector:(SEL)selector;
- (void)saveLogsWithNotes:(id)notes;
- (void)setBooleanProperty:(id)property withSpecifier:(id)specifier;
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
  dumpRuntimeStateSpecifiers = [objc_opt_class() dumpRuntimeStateSpecifiers];
  if (dumpRuntimeStateSpecifiers)
  {
    [v2 addObjectsFromArray:dumpRuntimeStateSpecifiers];
  }

  [dumpRuntimeStateSpecifiers lastObject];

  return v2;
}

- (id)specifiers
{
  diagnosticSpecifiers = [(ESDiagnosticsPSController *)self diagnosticSpecifiers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [diagnosticSpecifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(diagnosticSpecifiers);
        }

        objc_storeWeak((*(*(&v14 + 1) + 8 * v7) + OBJC_IVAR___PSSpecifier_target), self);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [diagnosticSpecifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v8 = OBJC_IVAR___PSListController__specifiers;
  v9 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = diagnosticSpecifiers;
  v10 = diagnosticSpecifiers;

  v11 = *&self->PSListController_opaque[v8];
  v12 = v11;

  return v11;
}

- (void)alertView:(id)view clickedButtonAtIndex:(int64_t)index
{
  viewCopy = view;
  simpleAlert = self->_simpleAlert;
  if (simpleAlert == viewCopy)
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
    [(ESDiagnosticsPSController *)&v10 alertView:viewCopy clickedButtonAtIndex:index];
  }
}

- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index
{
  savingDataAlert = self->_savingDataAlert;
  if (savingDataAlert == view)
  {
    self->_savingDataAlert = 0;

    [(ESDiagnosticsPSController *)self performSelector:"handleSaveAllLogsStep2" withObject:0 afterDelay:0.0];
  }
}

- (void)runSimpleAlertWithTitle:(id)title message:(id)message dismissedSelector:(SEL)selector
{
  messageCopy = message;
  titleCopy = title;
  v10 = [UIAlertView alloc];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_30C98 table:@"Diagnostic"];
  v13 = [v10 initWithTitle:titleCopy message:messageCopy delegate:self cancelButtonTitle:v12 otherButtonTitles:0];

  simpleAlert = self->_simpleAlert;
  self->_simpleAlert = v13;

  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_simpleConfirmSheetDismissedSEL = selectorCopy;
  v16 = self->_simpleAlert;

  [(UIAlertView *)v16 show];
}

- (void)runSimpleAlertWithTitle:(id)title message:(id)message
{
  v6 = UIApp;
  messageCopy = message;
  alertHeader = title;
  if ([v6 isSuspended])
  {
    v9 = 0;
    CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, alertHeader, messageCopy, 0, 0, 0, &v9);
  }

  else
  {
    [(ESDiagnosticsPSController *)self runSimpleAlertWithTitle:alertHeader message:messageCopy dismissedSelector:0];
  }
}

- (void)setBooleanProperty:(id)property withSpecifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [property BOOLValue];
  identifier = [specifierCopy identifier];
  if ([identifier isEqualToString:@"ESDiagnosticsEnabled"])
  {
    [(ESDiagnosticsPSController *)self setLoggingEnabled:bOOLValue forSpecifier:specifierCopy];
  }
}

- (id)BOOLeanPropertyWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  if ([identifier isEqualToString:@"ESDiagnosticsEnabled"])
  {
    v6 = [(ESDiagnosticsPSController *)self isLoggingEnabledForSpecifier:specifierCopy];
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSNumber numberWithBool:v6];

  return v7;
}

- (void)handleDumpRuntimeStateForSpecifier:(id)specifier
{
  v3 = PSPIDForProcessNamed();
  if ((v3 & 0x80000000) == 0)
  {

    kill(v3, 31);
  }
}

- (BOOL)saveFileAtPath:(id)path toDirectory:(id)directory withExtension:(id)extension error:(id *)error
{
  pathCopy = path;
  directoryCopy = directory;
  v11 = +[NSFileManager defaultManager];
  lastPathComponent = [pathCopy lastPathComponent];
  v13 = [directoryCopy stringByAppendingPathComponent:lastPathComponent];

  if (extension)
  {
    pathExtension = [v13 pathExtension];
    if ([pathExtension isEqual:@"log"])
    {
LABEL_5:

      goto LABEL_6;
    }

    pathExtension2 = [v13 pathExtension];
    v16 = [pathExtension2 isEqual:@"gz"];

    if ((v16 & 1) == 0)
    {
      [v13 stringByAppendingPathExtension:@"log"];
      v13 = pathExtension = v13;
      goto LABEL_5;
    }
  }

LABEL_6:
  v21 = 0;
  [v11 copyItemAtPath:pathCopy toPath:v13 error:&v21];
  v17 = v21;
  v18 = v17;
  if (error && v17)
  {
    v19 = v17;
    *error = v18;
  }

  return v18 == 0;
}

- (void)saveLogsWithNotes:(id)notes
{
  notesCopy = notes;
  pathsOfAllLogFiles = [(ESDiagnosticsPSController *)self pathsOfAllLogFiles];
  v6 = sub_B01C(pathsOfAllLogFiles);

  v7 = +[NSCalendarDate calendarDate];
  v8 = [v7 descriptionWithCalendarFormat:@"%Y-%m-%d-%H%M%S"];

  v9 = NSHomeDirectory();
  v10 = [(ESDiagnosticsPSController *)self savedLogsDirectoryNameForSpecifier:0];
  v11 = [NSString stringWithFormat:@"Library/Logs/CrashReporter/%@/Logs-%@", v10, v8];
  v12 = [v9 stringByAppendingPathComponent:v11];

  v13 = +[NSFileManager defaultManager];
  [v13 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:0];

  notesCopy = [NSString stringWithFormat:@"Log Notes [%@]\n==========================================================\n%@\n==========================================================\n", v8, notesCopy];

  if (v12)
  {
    v15 = [v12 stringByAppendingPathComponent:@"Notes.log"];
    [notesCopy writeToFile:v15 atomically:1 encoding:4 error:0];
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
  selfCopy = self;
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
  pathsOfAllLogFiles = [(ESDiagnosticsPSController *)self pathsOfAllLogFiles];
  v8 = sub_B01C(pathsOfAllLogFiles);

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
  rootController = [(ESDiagnosticsPSController *)self rootController];
  [rootController taskFinished:self];
}

- (void)handleSaveAllLogsForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  rootController = [(ESDiagnosticsPSController *)self rootController];
  [(ESDiagnosticsPSController *)self handleDumpRuntimeStateForSpecifier:specifierCopy];

  [rootController addTask:self];
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
    navigationController = [(ESDiagnosticsPSController *)self navigationController];
    [navigationController dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)handleClearAllLogsForSpecifier:(id)specifier
{
  pathsOfAllLogFiles = [(ESDiagnosticsPSController *)self pathsOfAllLogFiles];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [pathsOfAllLogFiles countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(pathsOfAllLogFiles);
        }

        [(ESDiagnosticsPSController *)self purgeFileAtPath:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [pathsOfAllLogFiles countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)purgeFileAtPath:(id)path
{
  pathCopy = path;
  lastPathComponent = [pathCopy lastPathComponent];
  if ([lastPathComponent isEqualToString:@"dataaccess.log"])
  {
    truncate([pathCopy fileSystemRepresentation], 0);
  }

  else
  {
    v4 = +[NSFileManager defaultManager];
    [v4 removeItemAtPath:pathCopy error:0];
  }
}

@end