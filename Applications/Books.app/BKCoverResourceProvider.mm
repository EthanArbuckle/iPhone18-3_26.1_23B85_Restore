@interface BKCoverResourceProvider
+ (id)sharedInstance;
- (BKCoverResourceProvider)init;
- (id)imageResourceForNaturalSize:(CGSize)size contentsScale:(double)scale instance:(id)instance options:(id)options;
@end

@implementation BKCoverResourceProvider

+ (id)sharedInstance
{
  if (qword_100AF7650 != -1)
  {
    sub_10078FBF8();
  }

  v3 = qword_100AF7648;

  return v3;
}

- (BKCoverResourceProvider)init
{
  v10.receiver = self;
  v10.super_class = BKCoverResourceProvider;
  v2 = [(BKCoverResourceProvider *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BKCoverResourceProvider.resourceQueue", v3);
    resourceQueue = v2->_resourceQueue;
    v2->_resourceQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("BKCoverResourceProvider.notifyQueue", v6);
    notifyQueue = v2->_notifyQueue;
    v2->_notifyQueue = v7;
  }

  return v2;
}

- (id)imageResourceForNaturalSize:(CGSize)size contentsScale:(double)scale instance:(id)instance options:(id)options
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  instanceCopy = instance;
  objc_opt_class();
  v13 = BUDynamicCast();

  objc_opt_class();
  v14 = BUDynamicCast();

  if (!v13 || (width == CGSizeZero.width ? (v15 = height == CGSizeZero.height) : (v15 = 0), v15))
  {
    v17 = BCImageCacheLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = [v14 debugDescription];
      v28.width = width;
      v28.height = height;
      v20 = NSStringFromCGSize(v28);
      v21 = 138412802;
      v22 = v13;
      v23 = 2112;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "BKCoverResourceProvider: Can't generate image resource for assetID %@ with option %@ and size %@", &v21, 0x20u);
    }

    scale = 0;
  }

  else
  {
    scale = [[_BKCoverResource alloc] initWithQueue:self->_resourceQueue notifyQueue:self->_notifyQueue assetID:v13 resourceOptions:v14 naturalSize:width contentsScale:height, scale];
  }

  return scale;
}

@end