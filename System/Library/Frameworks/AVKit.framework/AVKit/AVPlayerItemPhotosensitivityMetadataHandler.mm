@interface AVPlayerItemPhotosensitivityMetadataHandler
- (AVPlayerItemPhotosensitivityMetadataHandler)initWithPlayerItem:(id)item;
- (void)dealloc;
- (void)metadataCollector:(id)collector didCollectDateRangeMetadataGroups:(id)groups indexesOfNewGroups:(id)newGroups indexesOfModifiedGroups:(id)modifiedGroups;
@end

@implementation AVPlayerItemPhotosensitivityMetadataHandler

- (void)metadataCollector:(id)collector didCollectDateRangeMetadataGroups:(id)groups indexesOfNewGroups:(id)newGroups indexesOfModifiedGroups:(id)modifiedGroups
{
  [(AVPlayerItemPhotosensitivityMetadataHandler *)self setPhotosensitivityRegions:groups];
  v7 = MEMORY[0x1E696AD80];
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v10 = [v7 notificationWithName:@"AVPlayerItemPhotosensitiveRegionsChangedNotification" object:WeakRetained userInfo:0];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotification:v10];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  [WeakRetained removeMediaDataCollector:self->_metadataCollector];

  v4.receiver = self;
  v4.super_class = AVPlayerItemPhotosensitivityMetadataHandler;
  [(AVPlayerItemPhotosensitivityMetadataHandler *)&v4 dealloc];
}

- (AVPlayerItemPhotosensitivityMetadataHandler)initWithPlayerItem:(id)item
{
  v14[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = AVPlayerItemPhotosensitivityMetadataHandler;
  v5 = [(AVPlayerItemPhotosensitivityMetadataHandler *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_item, itemCopy);
    v7 = objc_alloc(MEMORY[0x1E69880C0]);
    v14[0] = @"com.apple.accessibility.video.strobing.general-flash";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v9 = [v7 initWithIdentifiers:0 classifyingLabels:v8];
    metadataCollector = v6->_metadataCollector;
    v6->_metadataCollector = v9;

    [(AVPlayerItemMetadataCollector *)v6->_metadataCollector setDelegate:v6 queue:MEMORY[0x1E69E96A0]];
    WeakRetained = objc_loadWeakRetained(&v6->_item);
    [WeakRetained addMediaDataCollector:v6->_metadataCollector];
  }

  return v6;
}

@end