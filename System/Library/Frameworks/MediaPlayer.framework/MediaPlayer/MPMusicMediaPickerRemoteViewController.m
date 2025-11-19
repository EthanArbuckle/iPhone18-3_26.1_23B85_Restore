@interface MPMusicMediaPickerRemoteViewController
- (MPMediaPickerController)mediaPickerController;
- (void)remoteMediaPickerDidCancel;
- (void)remoteMediaPickerDidPickMediaItems:(id)a3;
- (void)remoteMediaPickerDidPickPlaybackArchive:(id)a3;
@end

@implementation MPMusicMediaPickerRemoteViewController

- (MPMediaPickerController)mediaPickerController
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaPickerController);

  return WeakRetained;
}

- (void)remoteMediaPickerDidPickPlaybackArchive:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mediaPickerController);
  [WeakRetained remoteMediaPickerDidPickPlaybackArchive:v4];
}

- (void)remoteMediaPickerDidPickMediaItems:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mediaPickerController);
  [WeakRetained remoteMediaPickerDidPickMediaItems:v4];
}

- (void)remoteMediaPickerDidCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaPickerController);
  [WeakRetained remoteMediaPickerDidCancel];
}

@end