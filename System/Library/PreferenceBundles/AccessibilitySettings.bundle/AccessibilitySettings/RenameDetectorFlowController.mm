@interface RenameDetectorFlowController
- (RenameDetectorDelegate)renameDetectorDelegate;
- (RenameDetectorFlowController)initWithDetectorSpecifier:(id)a3;
- (void)_finishRenaming;
- (void)_setUpDoneButton;
- (void)viewDidLoad;
@end

@implementation RenameDetectorFlowController

- (RenameDetectorFlowController)initWithDetectorSpecifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RenameDetectorFlowController;
  v6 = [(RenameDetectorFlowController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editingSpec, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = RenameDetectorFlowController;
  [(RenameDetectorFlowController *)&v17 viewDidLoad];
  v3 = [NameDetectorController alloc];
  v4 = settingsLocString(@"RENAME_SOUND_TITLE", @"SoundDetection");
  v5 = settingsLocString(@"NAME_SOUND_SUBTITLE", @"SoundDetection");
  v6 = [(NameDetectorController *)v3 initWithTitle:v4 detailText:v5 icon:0];
  renameDetectorController = self->_renameDetectorController;
  self->_renameDetectorController = v6;

  v8 = [(RenameDetectorFlowController *)self renameDetectorController];
  [v8 setDelegate:self];

  [(RenameDetectorFlowController *)self _setUpDoneButton];
  v9 = [(RenameDetectorFlowController *)self editingSpec];
  v10 = [v9 name];
  v11 = [(RenameDetectorFlowController *)self renameDetectorController];
  v12 = [v11 detectorNameTextField];
  [v12 setText:v10];

  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelRenameFlow"];
  v14 = [(RenameDetectorFlowController *)self renameDetectorController];
  v15 = [v14 navigationItem];
  [v15 setLeftBarButtonItem:v13];

  v16 = [(RenameDetectorFlowController *)self renameDetectorController];
  [(RenameDetectorFlowController *)self pushViewController:v16 animated:1];
}

- (void)_setUpDoneButton
{
  v3 = +[OBBoldTrayButton boldButton];
  doneButton = self->_doneButton;
  self->_doneButton = v3;

  v5 = [(RenameDetectorFlowController *)self doneButton];
  v6 = settingsLocString(@"DONE_BUTTON", @"SoundDetection");
  [v5 setTitle:v6 forState:0];

  v7 = [(RenameDetectorFlowController *)self doneButton];
  [v7 addTarget:self action:"_finishRenaming" forControlEvents:64];

  v10 = [(RenameDetectorFlowController *)self renameDetectorController];
  v8 = [v10 buttonTray];
  v9 = [(RenameDetectorFlowController *)self doneButton];
  [v8 addButton:v9];
}

- (void)_finishRenaming
{
  v3 = [(RenameDetectorFlowController *)self renameDetectorController];
  v4 = [v3 detectorNameTextField];
  v7 = [v4 text];

  v5 = [(RenameDetectorFlowController *)self renameDetectorDelegate];
  v6 = [(RenameDetectorFlowController *)self editingSpec];
  [v5 renameDetector:v6 to:v7];

  [(RenameDetectorFlowController *)self dismissViewControllerAnimated:1 completion:0];
}

- (RenameDetectorDelegate)renameDetectorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_renameDetectorDelegate);

  return WeakRetained;
}

@end