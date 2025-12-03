@interface CLKVideo
+ (CLKVideo)videoWithName:(id)name forDevice:(id)device url:(id)url;
+ (id)_videoNamed:(id)named device:(id)device bundle:(id)bundle modifier:(id)modifier;
+ (id)videoAtURL:(id)l forDevice:(id)device;
+ (id)videoNamed:(id)named forDevice:(id)device;
+ (id)videoNamed:(id)named forDevice:(id)device inBundle:(id)bundle;
- (CLKVideo)initWithName:(id)name forDevice:(id)device url:(id)url;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLKVideo

+ (id)videoNamed:(id)named forDevice:(id)device
{
  v5 = MEMORY[0x277CCA8D8];
  deviceCopy = device;
  namedCopy = named;
  mainBundle = [v5 mainBundle];
  v9 = [CLKVideo videoNamed:namedCopy forDevice:deviceCopy inBundle:mainBundle];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  device = self->_device;
  name = self->_name;
  url = self->_url;

  return [v4 initWithName:name forDevice:device url:url];
}

+ (id)_videoNamed:(id)named device:(id)device bundle:(id)bundle modifier:(id)modifier
{
  v26 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  deviceCopy = device;
  bundleCopy = bundle;
  modifierCopy = modifier;
  if (_videoNamed_device_bundle_modifier__onceToken != -1)
  {
    +[CLKVideo(Private) _videoNamed:device:bundle:modifier:];
  }

  v13 = [namedCopy stringByAppendingString:modifierCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = _videoNamed_device_bundle_modifier__movieExtensions;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = *v22;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [bundleCopy URLForResource:v13 withExtension:{*(*(&v21 + 1) + 8 * i), v21}];
        if (v18)
        {
          v19 = v18;
          v15 = [CLKVideo videoWithName:namedCopy forDevice:deviceCopy url:v18];

          goto LABEL_13;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v15;
}

void __56__CLKVideo_Private___videoNamed_device_bundle_modifier___block_invoke()
{
  v0 = _videoNamed_device_bundle_modifier__movieExtensions;
  _videoNamed_device_bundle_modifier__movieExtensions = &unk_284A35170;
}

+ (id)videoNamed:(id)named forDevice:(id)device inBundle:(id)bundle
{
  v24 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  deviceCopy = device;
  bundleCopy = bundle;
  __51__CLKVideo_Private__videoNamed_forDevice_inBundle___block_invoke(bundleCopy, deviceCopy);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v22 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [self _videoNamed:namedCopy device:deviceCopy bundle:bundleCopy modifier:{*(*(&v19 + 1) + 8 * i), v19}];
        if (v16)
        {
          v17 = v16;
          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

id __51__CLKVideo_Private__videoNamed_forDevice_inBundle___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock);
  if (_block_invoke___cachedDevice)
  {
    v3 = _block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke___previousCLKDeviceVersion))
  {
    _block_invoke___cachedDevice = v2;
    _block_invoke___previousCLKDeviceVersion = [v2 version];
    [v2 sizeClass];
    v5 = _AssetBundleSuffixesForSizeClass();
    v6 = _block_invoke_value;
    _block_invoke_value = v5;
  }

  v7 = _block_invoke_value;
  os_unfair_lock_unlock(&_block_invoke_lock);

  return v7;
}

+ (CLKVideo)videoWithName:(id)name forDevice:(id)device url:(id)url
{
  urlCopy = url;
  deviceCopy = device;
  nameCopy = name;
  v10 = [[CLKVideo alloc] initWithName:nameCopy forDevice:deviceCopy url:urlCopy];

  return v10;
}

+ (id)videoAtURL:(id)l forDevice:(id)device
{
  deviceCopy = device;
  lCopy = l;
  v7 = [CLKVideo alloc];
  lastPathComponent = [lCopy lastPathComponent];
  v9 = [(CLKVideo *)v7 initWithName:lastPathComponent forDevice:deviceCopy url:lCopy];

  return v9;
}

- (CLKVideo)initWithName:(id)name forDevice:(id)device url:(id)url
{
  nameCopy = name;
  deviceCopy = device;
  urlCopy = url;
  v16.receiver = self;
  v16.super_class = CLKVideo;
  v11 = [(CLKVideo *)&v16 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    objc_storeStrong(&v11->_device, device);
    objc_storeStrong(&v11->_url, url);
    v14 = v11;
  }

  return v11;
}

@end