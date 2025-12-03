@interface RenameDetectorFlowController
- (RenameDetectorDelegate)renameDetectorDelegate;
- (RenameDetectorFlowController)initWithDetectorSpecifier:(id)specifier;
- (void)_finishRenaming;
- (void)_setUpDoneButton;
- (void)viewDidLoad;
@end

@implementation RenameDetectorFlowController

- (RenameDetectorFlowController)initWithDetectorSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = RenameDetectorFlowController;
  v6 = [(RenameDetectorFlowController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editingSpec, specifier);
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

  renameDetectorController = [(RenameDetectorFlowController *)self renameDetectorController];
  [renameDetectorController setDelegate:self];

  [(RenameDetectorFlowController *)self _setUpDoneButton];
  editingSpec = [(RenameDetectorFlowController *)self editingSpec];
  name = [editingSpec name];
  renameDetectorController2 = [(RenameDetectorFlowController *)self renameDetectorController];
  detectorNameTextField = [renameDetectorController2 detectorNameTextField];
  [detectorNameTextField setText:name];

  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelRenameFlow"];
  renameDetectorController3 = [(RenameDetectorFlowController *)self renameDetectorController];
  navigationItem = [renameDetectorController3 navigationItem];
  [navigationItem setLeftBarButtonItem:v13];

  renameDetectorController4 = [(RenameDetectorFlowController *)self renameDetectorController];
  [(RenameDetectorFlowController *)self pushViewController:renameDetectorController4 animated:1];
}

- (void)_setUpDoneButton
{
  v3 = +[OBBoldTrayButton boldButton];
  doneButton = self->_doneButton;
  self->_doneButton = v3;

  doneButton = [(RenameDetectorFlowController *)self doneButton];
  v6 = settingsLocString(@"DONE_BUTTON", @"SoundDetection");
  [doneButton setTitle:v6 forState:0];

  doneButton2 = [(RenameDetectorFlowController *)self doneButton];
  [doneButton2 addTarget:self action:"_finishRenaming" forControlEvents:64];

  renameDetectorController = [(RenameDetectorFlowController *)self renameDetectorController];
  buttonTray = [renameDetectorController buttonTray];
  doneButton3 = [(RenameDetectorFlowController *)self doneButton];
  [buttonTray addButton:doneButton3];
}

- (void)_finishRenaming
{
  renameDetectorController = [(RenameDetectorFlowController *)self renameDetectorController];
  detectorNameTextField = [renameDetectorController detectorNameTextField];
  text = [detectorNameTextField text];

  renameDetectorDelegate = [(RenameDetectorFlowController *)self renameDetectorDelegate];
  editingSpec = [(RenameDetectorFlowController *)self editingSpec];
  [renameDetectorDelegate renameDetector:editingSpec to:text];

  [(RenameDetectorFlowController *)self dismissViewControllerAnimated:1 completion:0];
}

- (RenameDetectorDelegate)renameDetectorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_renameDetectorDelegate);

  return WeakRetained;
}

@end