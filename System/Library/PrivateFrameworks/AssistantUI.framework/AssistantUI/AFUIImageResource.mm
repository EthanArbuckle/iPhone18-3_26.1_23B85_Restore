@interface AFUIImageResource
+ (id)imageResourceFromKey:(id)key pressedKey:(id)pressedKey punchOut:(id)out;
+ (id)imageResourceWithAppPunchOut:(id)out;
+ (id)imageResourceWithLocalResourceName:(id)name pressedResourceName:(id)resourceName localPunchOut:(id)out bundle:(id)bundle;
- (CGSize)logoSize;
- (id)_imageInLocalResourceBundleNamed:(id)named;
- (void)_fetchLocalResourcesWithCompletion:(id)completion;
- (void)_fetchRemoteResourcesWithCompletion:(id)completion;
- (void)getLogoWithCompletion:(id)completion;
@end

@implementation AFUIImageResource

+ (id)imageResourceWithAppPunchOut:(id)out
{
  outCopy = out;
  v4 = [objc_opt_class() imageResourceFromKey:0 pressedKey:0 punchOut:outCopy];

  return v4;
}

+ (id)imageResourceWithLocalResourceName:(id)name pressedResourceName:(id)resourceName localPunchOut:(id)out bundle:(id)bundle
{
  bundleCopy = bundle;
  outCopy = out;
  resourceNameCopy = resourceName;
  nameCopy = name;
  v13 = objc_alloc_init(AFUIImageResource);
  [(AFUIImageResource *)v13 setLocalResourceBundle:bundleCopy];

  [(AFUIImageResource *)v13 setLocalResourceName:nameCopy];
  [(AFUIImageResource *)v13 setLocalPressedResourceName:resourceNameCopy];

  [(AFUIImageResource *)v13 setLocalPunchOut:outCopy];

  return v13;
}

+ (id)imageResourceFromKey:(id)key pressedKey:(id)pressedKey punchOut:(id)out
{
  keyCopy = key;
  pressedKeyCopy = pressedKey;
  outCopy = out;
  appIconMap = [outCopy appIconMap];

  if (keyCopy && appIconMap)
  {
    appIconMap2 = [outCopy appIconMap];
    appIcon = [appIconMap2 objectForKey:keyCopy];
    v13 = [appIconMap2 objectForKey:pressedKeyCopy];
  }

  else
  {
    appIcon = [outCopy appIcon];
    v13 = 0;
  }

  resourceUrl = [appIcon resourceUrl];
  [appIcon scaleFactor];
  if (v15 <= 0.0)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = v15;
  }

  resourceUrl2 = [v13 resourceUrl];
  [v13 scaleFactor];
  v19 = v18;
  if (appIcon)
  {
    [appIcon pixelWidth];
    v21 = v20 / v16;
    [appIcon pixelHeight];
    v23 = v22 / v16;
  }

  else
  {
    v21 = *MEMORY[0x277CBF3A8];
    v23 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (v19 <= 0.0)
  {
    v19 = 1.0;
  }

  v24 = objc_alloc_init(AFUIImageResource);
  [(AFUIImageResource *)v24 setRemoteURL:resourceUrl];
  [(AFUIImageResource *)v24 setRemoteScale:v16];
  [(AFUIImageResource *)v24 setRemotePressedURL:resourceUrl2];
  [(AFUIImageResource *)v24 setRemotePressedScale:v19];
  [(AFUIImageResource *)v24 setLogoSize:v21, v23];
  [(AFUIImageResource *)v24 setRemotePunchOut:outCopy];

  return v24;
}

- (void)getLogoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    localResourceName = [(AFUIImageResource *)self localResourceName];

    if (localResourceName)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __43__AFUIImageResource_getLogoWithCompletion___block_invoke;
      v7[3] = &unk_278CD6B58;
      v7[4] = self;
      v8 = completionCopy;
      [(AFUIImageResource *)self _fetchLocalResourcesWithCompletion:v7];
    }

    else
    {
      remoteURL = [(AFUIImageResource *)self remoteURL];

      if (remoteURL)
      {
        [(AFUIImageResource *)self _fetchRemoteResourcesWithCompletion:completionCopy];
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, 0, 0, 0);
      }
    }
  }
}

uint64_t __43__AFUIImageResource_getLogoWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) _fetchRemoteResourcesWithCompletion:*(a1 + 40)];
  }
}

- (CGSize)logoSize
{
  width = *MEMORY[0x277CBF3A8];
  height = *(MEMORY[0x277CBF3A8] + 8);
  localResourceName = [(AFUIImageResource *)self localResourceName];
  if ([localResourceName length])
  {
    v6 = [(AFUIImageResource *)self _imageInLocalResourceBundleNamed:localResourceName];
    v7 = v6;
    if (v6)
    {
      [v6 size];
      width = v8;
      height = v9;
    }
  }

  if (width <= 0.0)
  {
    width = self->_logoSize.width;
    height = self->_logoSize.height;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_fetchLocalResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  localResourceName = [(AFUIImageResource *)self localResourceName];
  localPressedResourceName = [(AFUIImageResource *)self localPressedResourceName];
  localPunchOut = [(AFUIImageResource *)self localPunchOut];
  if (localResourceName)
  {
    v7 = [(AFUIImageResource *)self _imageInLocalResourceBundleNamed:localResourceName];
    if (localPressedResourceName)
    {
LABEL_3:
      v8 = [(AFUIImageResource *)self _imageInLocalResourceBundleNamed:localPressedResourceName];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (localPressedResourceName)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  completionCopy[2](completionCopy, v7, v8, localPunchOut);
}

- (id)_imageInLocalResourceBundleNamed:(id)named
{
  v4 = MEMORY[0x277D755B8];
  namedCopy = named;
  localResourceBundle = [(AFUIImageResource *)self localResourceBundle];
  v7 = [v4 _deviceSpecificImageNamed:namedCopy inBundle:localResourceBundle];

  return v7;
}

- (void)_fetchRemoteResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteURL = [(AFUIImageResource *)self remoteURL];
  remotePressedURL = [(AFUIImageResource *)self remotePressedURL];
  remotePunchOut = [(AFUIImageResource *)self remotePunchOut];
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__0;
  v31[4] = __Block_byref_object_dispose__0;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__0;
  v29[4] = __Block_byref_object_dispose__0;
  v30 = 0;
  v7 = dispatch_group_create();
  v8 = dispatch_get_global_queue(0, 0);
  dispatch_group_enter(v7);
  mEMORY[0x277D619D0] = [MEMORY[0x277D619D0] sharedURLSession];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__AFUIImageResource__fetchRemoteResourcesWithCompletion___block_invoke;
  v26[3] = &unk_278CD6B80;
  v28 = v31;
  v10 = v7;
  v27 = v10;
  v11 = [mEMORY[0x277D619D0] imageTaskWithHTTPGetRequest:remoteURL client:self completionHandler:v26];

  dispatch_group_enter(v10);
  mEMORY[0x277D619D0]2 = [MEMORY[0x277D619D0] sharedURLSession];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__AFUIImageResource__fetchRemoteResourcesWithCompletion___block_invoke_2;
  v23[3] = &unk_278CD6B80;
  v25 = v29;
  v13 = v10;
  v24 = v13;
  v14 = [mEMORY[0x277D619D0]2 imageTaskWithHTTPGetRequest:remotePressedURL client:self completionHandler:v23];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__AFUIImageResource__fetchRemoteResourcesWithCompletion___block_invoke_3;
  block[3] = &unk_278CD6BA8;
  v21 = v31;
  v22 = v29;
  v19 = remotePunchOut;
  v20 = completionCopy;
  v15 = remotePunchOut;
  v16 = completionCopy;
  dispatch_group_notify(v13, v8, block);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

void __57__AFUIImageResource__fetchRemoteResourcesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __57__AFUIImageResource__fetchRemoteResourcesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

@end