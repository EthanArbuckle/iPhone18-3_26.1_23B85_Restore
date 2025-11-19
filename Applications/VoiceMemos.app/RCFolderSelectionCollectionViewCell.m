@interface RCFolderSelectionCollectionViewCell
- (BOOL)_needsDisclosureAccessory;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation RCFolderSelectionCollectionViewCell

- (void)updateConfigurationUsingState:(id)a3
{
  v8.receiver = self;
  v8.super_class = RCFolderSelectionCollectionViewCell;
  v4 = a3;
  [(RCFoldersCollectionViewCell *)&v8 updateConfigurationUsingState:v4];
  v5 = [v4 isSwiped];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(RCFoldersCollectionViewCell *)self setDisplayMode:v6];
  v7 = [(RCFolderSelectionCollectionViewCell *)self defaultBackgroundConfiguration];
  [(RCFolderSelectionCollectionViewCell *)self setBackgroundConfiguration:v7];
}

- (BOOL)_needsDisclosureAccessory
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 folderSelectionCollectionViewNeedsDisclosureAccessory];

  return v3;
}

@end