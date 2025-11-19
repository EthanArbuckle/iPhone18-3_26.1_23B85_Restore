@interface RCMenuBarManager
+ (id)sharedMenuBarManager;
- (id)controlsMenu;
- (id)editMenu;
- (id)fileMenu;
- (id)resetIdentifierAction;
- (void)_replaceSettingsChildren:(id)a3;
- (void)addControlsMenuItemsToBuilder:(id)a3;
- (void)addEditMenuItemsToBuilder:(id)a3;
- (void)addFileMenuItemsToBuilder:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
@end

@implementation RCMenuBarManager

+ (id)sharedMenuBarManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009C944;
  block[3] = &unk_10028A308;
  block[4] = a1;
  if (qword_1002D7108 != -1)
  {
    dispatch_once(&qword_1002D7108, block);
  }

  v2 = qword_1002D7100;

  return v2;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4 = a3;
  [v4 removeMenuForIdentifier:UIMenuFormat];
  [v4 removeMenuForIdentifier:UIMenuToolbar];
  [(RCMenuBarManager *)self addApplicationMenuItemsToBuilder:v4];
  [(RCMenuBarManager *)self addFileMenuItemsToBuilder:v4];
  [(RCMenuBarManager *)self addEditMenuItemsToBuilder:v4];
  [(RCMenuBarManager *)self addControlsMenuItemsToBuilder:v4];
}

- (void)addFileMenuItemsToBuilder:(id)a3
{
  v4 = a3;
  [(RCMenuBarManager *)self _removeDefaultDocumentCommandsInBuilder:v4];
  v5 = [(RCMenuBarManager *)self fileMenu];
  [v4 insertChildMenu:v5 atStartOfMenuForIdentifier:UIMenuFile];
}

- (void)addEditMenuItemsToBuilder:(id)a3
{
  v4 = a3;
  [(RCMenuBarManager *)self _removeDefaultFindCommandsInBuilder:v4];
  [(RCMenuBarManager *)self _replaceDefaultDeleteCommandWithCustomCommandInBuilder:v4];
  v5 = [(RCMenuBarManager *)self editMenu];
  [v4 insertSiblingMenu:v5 afterMenuForIdentifier:UIMenuStandardEdit];
}

- (id)resetIdentifierAction
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"SETTINGS_MENU_RESET_IDENTIFIER_MENU_ITEM" value:&stru_100295BB8 table:0];
  v5 = [v2 resetIdentifierImage];
  v6 = [UIAction actionWithTitle:v4 image:v5 identifier:@"RCResetIDIdentifier" handler:&stru_10028C010];

  return v6;
}

- (void)_replaceSettingsChildren:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009D0A8;
  v3[3] = &unk_10028C078;
  v3[4] = self;
  [a3 replaceChildrenOfMenuForIdentifier:UIMenuPreferences fromChildrenBlock:v3];
}

- (void)addControlsMenuItemsToBuilder:(id)a3
{
  v4 = a3;
  v5 = [(RCMenuBarManager *)self controlsMenu];
  [v4 insertSiblingMenu:v5 afterMenuForIdentifier:UIMenuView];
}

- (id)fileMenu
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"DONE_EDITING" value:? table:?];
  v5 = [v2 doneEditingImage];
  v26 = [UIKeyCommand commandWithTitle:v4 image:v5 action:"handleDone:" input:@"s" modifierFlags:0x100000 propertyList:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"START_NEW_RECORDING_MENU_ITEM" value:&stru_100295BB8 table:0];
  v8 = [v2 startNewRecordingImage];
  v9 = [UIKeyCommand commandWithTitle:v7 image:v8 action:"startNewRecording:" input:@"n" modifierFlags:0x100000 propertyList:0];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"DUPLICATE_CURRENT_RECORDING_MENU_ITEM" value:&stru_100295BB8 table:0];
  v12 = [v2 duplicateActivitySystemImageName];
  v13 = [UIImage systemImageNamed:v12];
  v14 = [UIKeyCommand commandWithTitle:v11 image:v13 action:"duplicateRecording:" input:@"d" modifierFlags:0x100000 propertyList:0];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"RENAME_CURRENT_RECORDING_MENU_ITEM" value:&stru_100295BB8 table:0];
  v17 = [v2 renameRecordingSystemImageName];
  v18 = [UIImage systemImageNamed:v17];
  v19 = [UICommand commandWithTitle:v16 image:v18 action:"renameRecording:" propertyList:0];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_100295BB8 table:0];
  v22 = [UIKeyCommand commandWithTitle:v21 image:0 action:"handleCancel:" input:UIKeyInputEscape modifierFlags:0 propertyList:0];

  [v22 setAttributes:4];
  v27[0] = v9;
  v27[1] = v26;
  v27[2] = v14;
  v27[3] = v19;
  v27[4] = v22;
  v23 = [NSArray arrayWithObjects:v27 count:5];
  v24 = [UIMenu menuWithTitle:&stru_100295BB8 image:0 identifier:@"RCFileMenuIdentifier" options:1 children:v23];

  return v24;
}

- (id)editMenu
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"EDIT_CURRENT_RECORDING_MENU_ITEM" value:&stru_100295BB8 table:0];
  v5 = [v2 editButtonImage];
  v30 = [UICommand commandWithTitle:v4 image:v5 action:"editRecording:" propertyList:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"TRIM_CURRENT_RECORDING_MENU_ITEM" value:&stru_100295BB8 table:0];
  v8 = [v2 trimImage];
  v28 = [UIKeyCommand commandWithTitle:v7 image:v8 action:"trimRecording:" input:@"t" modifierFlags:0x100000 propertyList:0];

  v9 = +[NSBundle mainBundle];
  v29 = [v9 localizedStringForKey:@"FAVORITE_RECORDING" value:&stru_100295BB8 table:0];

  v10 = [v2 notFavoriteImage];
  v26 = [UICommand commandWithTitle:v29 image:v10 action:"toggleFavorite:" propertyList:0];

  v11 = +[NSBundle mainBundle];
  v27 = [v11 localizedStringForKey:@"ENHANCE_RECORDING_SETTING" value:&stru_100295BB8 table:0];

  v12 = [v2 enhanceRecordingImage];
  v24 = [UIKeyCommand commandWithTitle:v27 image:v12 action:"toggleEnhance:" input:@"e" modifierFlags:1179648 propertyList:0];

  v13 = +[NSBundle mainBundle];
  v25 = [v13 localizedStringForKey:@"SKIP_SILENCE_SETTING" value:&stru_100295BB8 table:0];

  v14 = [v2 skipSilenceImage];
  v15 = [UIKeyCommand commandWithTitle:v25 image:v14 action:"toggleRemoveSilence:" input:@"x" modifierFlags:1179648 propertyList:0];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"STUDIO_VOICE_TITLE" value:&stru_100295BB8 table:0];

  v18 = [v2 speechIsolatorImageName];
  v19 = [UIImage systemImageNamed:v18];

  v20 = [UIKeyCommand commandWithTitle:v17 image:v19 action:"toggleSpeechIsolator:" input:@"s" modifierFlags:1179648 propertyList:0];
  v31[0] = v30;
  v31[1] = v28;
  v31[2] = v26;
  v31[3] = v24;
  v31[4] = v15;
  v31[5] = v20;
  v21 = [NSArray arrayWithObjects:v31 count:6];
  v22 = [UIMenu menuWithTitle:&stru_100295BB8 image:0 identifier:@"RCEditMenuIdentifier" options:1 children:v21];

  return v22;
}

- (id)controlsMenu
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"PLAY_PAUSE_CURRENT_RECORDING_MENU_ITEM" value:&stru_100295BB8 table:0];
  v5 = [v2 playPauseImage];
  v6 = [UIKeyCommand commandWithTitle:v4 image:v5 action:"playRecording:" input:@" " modifierFlags:0 propertyList:0];
  v7 = [v6 _nonRepeatableKeyCommand];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"SKIP_BACKWARD" value:&stru_100295BB8 table:0];
  v10 = [v2 goBackwardMenuBarImage];
  v11 = [UIKeyCommand commandWithTitle:v9 image:v10 action:"jumpSelectionBackward:" input:UIKeyInputLeftArrow modifierFlags:0x100000 propertyList:0];

  [v11 setAllowsAutomaticMirroring:0];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"SKIP_FORWARD" value:&stru_100295BB8 table:0];
  v14 = [v2 goForwardMenuBarImage];
  v15 = [UIKeyCommand commandWithTitle:v13 image:v14 action:"jumpSelectionForward:" input:UIKeyInputRightArrow modifierFlags:0x100000 propertyList:0];

  [v15 setAllowsAutomaticMirroring:0];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"CONTROLS_MENU_NAME" value:&stru_100295BB8 table:0];
  v21[0] = v7;
  v21[1] = v11;
  v21[2] = v15;
  v18 = [NSArray arrayWithObjects:v21 count:3];
  v19 = [UIMenu menuWithTitle:v17 image:0 identifier:@"RCControlsMenuIdentifier" options:0 children:v18];

  return v19;
}

@end