@interface GAXSBDragAndDropWorkspaceTransactionOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_updateCurrentDropActionForSession:(id)session;
@end

@implementation GAXSBDragAndDropWorkspaceTransactionOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBDragAndDropWorkspaceTransaction" hasInstanceMethod:@"_updateCurrentDropActionForSession:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBDragAndDropWorkspaceTransaction" hasInstanceVariable:@"_dropSession" withType:"SBApplicationDropSession"];
  [validationsCopy validateClass:@"SBApplicationDropSession" hasInstanceMethod:@"systemSession" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIDraggingSystemSession" hasInstanceMethod:@"info" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIDraggingSystemSessionInfo" hasInstanceMethod:@"processIdentifier" withFullSignature:{"i", 0}];
  [validationsCopy validateClass:@"SBApplicationController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBApplicationController" hasInstanceMethod:@"applicationWithPid:" withFullSignature:{"@", "i", 0}];
  [validationsCopy validateClass:@"SBApplication" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBApplicationDropSession" hasInstanceMethod:@"application" withFullSignature:{"@", 0}];
}

- (void)_updateCurrentDropActionForSession:(id)session
{
  sessionCopy = session;
  v5 = +[GAXSpringboard sharedInstanceIfExists];
  isActive = [v5 isActive];

  if (!isActive)
  {
    goto LABEL_5;
  }

  v7 = [(GAXSBDragAndDropWorkspaceTransactionOverride *)self safeValueForKey:@"_dropSession"];
  v8 = [v7 safeValueForKey:@"systemSession"];
  v9 = [v8 safeValueForKey:@"info"];
  v10 = [v9 safeIntForKey:@"processIdentifier"];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = sub_B0A0;
  v27 = sub_B0B0;
  v28 = 0;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_B0B8;
  v22 = &unk_2CF00;
  v23 = buf;
  v24 = v10;
  AXPerformSafeBlock();
  v11 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v12 = [v11 safeStringForKey:@"bundleIdentifier"];

  v13 = [v7 safeValueForKey:@"application"];
  v14 = [v13 safeStringForKey:@"bundleIdentifier"];

  v15 = +[AXSettings sharedInstance];
  if ([v15 guidedAccessAllowsMultipleWindows])
  {
    v16 = [v12 isEqualToString:v14];

    if (v16)
    {

LABEL_5:
      v18.receiver = self;
      v18.super_class = GAXSBDragAndDropWorkspaceTransactionOverride;
      [(GAXSBDragAndDropWorkspaceTransactionOverride *)&v18 _updateCurrentDropActionForSession:sessionCopy];
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (![(GAXSBDragAndDropWorkspaceTransactionOverride *)self _gaxHasLoggedDisallowedDrop])
  {
    v17 = GAXLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Blocking drop. Source: %@, destination: %@", buf, 0x16u);
    }

    [(GAXSBDragAndDropWorkspaceTransactionOverride *)self _gaxSetHasLoggedDisallowedDrop:1];
  }

LABEL_12:
}

@end