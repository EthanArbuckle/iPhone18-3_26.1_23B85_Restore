@interface MPMusicMediaPickerRemoteViewController
- (MPMediaPickerController)mediaPickerController;
- (void)remoteMediaPickerDidCancel;
- (void)remoteMediaPickerDidPickMediaItems:(id)items;
- (void)remoteMediaPickerDidPickPlaybackArchive:(id)archive;
@end

@implementation MPMusicMediaPickerRemoteViewController

- (MPMediaPickerController)mediaPickerController
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaPickerController);

  return WeakRetained;
}

- (void)remoteMediaPickerDidPickPlaybackArchive:(id)archive
{
  archiveCopy = archive;
  WeakRetained = objc_loadWeakRetained(&self->_mediaPickerController);
  [WeakRetained remoteMediaPickerDidPickPlaybackArchive:archiveCopy];
}

- (void)remoteMediaPickerDidPickMediaItems:(id)items
{
  itemsCopy = items;
  WeakRetained = objc_loadWeakRetained(&self->_mediaPickerController);
  [WeakRetained remoteMediaPickerDidPickMediaItems:itemsCopy];
}

- (void)remoteMediaPickerDidCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaPickerController);
  [WeakRetained remoteMediaPickerDidCancel];
}

@end