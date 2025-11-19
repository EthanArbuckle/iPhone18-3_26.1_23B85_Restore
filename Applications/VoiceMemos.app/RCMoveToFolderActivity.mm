@interface RCMoveToFolderActivity
- (RCFolderSelectionContainerViewController)folderSelectionContainerViewController;
- (id)_systemImageName;
- (id)activityTitle;
- (void)prepareWithActivityItems:(id)a3;
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
  v3 = [v2 moveToFolderActivitySystemImageName];

  return v3;
}

- (void)prepareWithActivityItems:(id)a3
{
  v11.receiver = self;
  v11.super_class = RCMoveToFolderActivity;
  [(RCUIActivity *)&v11 prepareWithActivityItems:a3];
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 delegate];

  v6 = [v5 defaultSceneDelegate];
  v7 = [v6 mainViewController];

  v8 = [(RCUIActivity *)self recordingUUIDs];
  v9 = [v7 moveToFolderContainerViewControllerWithUUIDs:v8];

  [(RCMoveToFolderActivity *)self setFolderSelectionContainerViewController:v9];
  v10 = [v9 collectionViewController];
  [v10 setPresentingDelegate:self];
}

- (RCFolderSelectionContainerViewController)folderSelectionContainerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_folderSelectionContainerViewController);

  return WeakRetained;
}

@end