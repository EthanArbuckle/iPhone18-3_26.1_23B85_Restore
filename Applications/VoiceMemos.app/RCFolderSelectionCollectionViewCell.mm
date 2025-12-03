@interface RCFolderSelectionCollectionViewCell
- (BOOL)_needsDisclosureAccessory;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation RCFolderSelectionCollectionViewCell

- (void)updateConfigurationUsingState:(id)state
{
  v8.receiver = self;
  v8.super_class = RCFolderSelectionCollectionViewCell;
  stateCopy = state;
  [(RCFoldersCollectionViewCell *)&v8 updateConfigurationUsingState:stateCopy];
  isSwiped = [stateCopy isSwiped];

  if (isSwiped)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(RCFoldersCollectionViewCell *)self setDisplayMode:v6];
  defaultBackgroundConfiguration = [(RCFolderSelectionCollectionViewCell *)self defaultBackgroundConfiguration];
  [(RCFolderSelectionCollectionViewCell *)self setBackgroundConfiguration:defaultBackgroundConfiguration];
}

- (BOOL)_needsDisclosureAccessory
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  folderSelectionCollectionViewNeedsDisclosureAccessory = [v2 folderSelectionCollectionViewNeedsDisclosureAccessory];

  return folderSelectionCollectionViewNeedsDisclosureAccessory;
}

@end