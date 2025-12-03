@interface RCMoveToFolderActivity
- (RCFolderSelectionContainerViewController)folderSelectionContainerViewController;
- (id)_systemImageName;
- (id)activityTitle;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation RCMoveToFolderActivity

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"MOVE_TO_FOLDER" value:&stru_100295BB8 table:0];

  return v3;
}

- (id)_systemImageName
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  moveToFolderActivitySystemImageName = [v2 moveToFolderActivitySystemImageName];

  return moveToFolderActivitySystemImageName;
}

- (void)prepareWithActivityItems:(id)items
{
  v11.receiver = self;
  v11.super_class = RCMoveToFolderActivity;
  [(RCUIActivity *)&v11 prepareWithActivityItems:items];
  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];

  defaultSceneDelegate = [delegate defaultSceneDelegate];
  mainViewController = [defaultSceneDelegate mainViewController];

  recordingUUIDs = [(RCUIActivity *)self recordingUUIDs];
  v9 = [mainViewController moveToFolderContainerViewControllerWithUUIDs:recordingUUIDs];

  [(RCMoveToFolderActivity *)self setFolderSelectionContainerViewController:v9];
  collectionViewController = [v9 collectionViewController];
  [collectionViewController setPresentingDelegate:self];
}

- (RCFolderSelectionContainerViewController)folderSelectionContainerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_folderSelectionContainerViewController);

  return WeakRetained;
}

@end