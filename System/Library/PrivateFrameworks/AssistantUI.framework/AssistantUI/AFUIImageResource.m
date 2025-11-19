@interface AFUIImageResource
+ (id)imageResourceFromKey:(id)a3 pressedKey:(id)a4 punchOut:(id)a5;
+ (id)imageResourceWithAppPunchOut:(id)a3;
+ (id)imageResourceWithLocalResourceName:(id)a3 pressedResourceName:(id)a4 localPunchOut:(id)a5 bundle:(id)a6;
- (CGSize)logoSize;
- (id)_imageInLocalResourceBundleNamed:(id)a3;
- (void)_fetchLocalResourcesWithCompletion:(id)a3;
- (void)_fetchRemoteResourcesWithCompletion:(id)a3;
- (void)getLogoWithCompletion:(id)a3;
@end

@implementation AFUIImageResource

+ (id)imageResourceWithAppPunchOut:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() imageResourceFromKey:0 pressedKey:0 punchOut:v3];

  return v4;
}

+ (id)imageResourceWithLocalResourceName:(id)a3 pressedResourceName:(id)a4 localPunchOut:(id)a5 bundle:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(AFUIImageResource);
  [(AFUIImageResource *)v13 setLocalResourceBundle:v9];

  [(AFUIImageResource *)v13 setLocalResourceName:v12];
  [(AFUIImageResource *)v13 setLocalPressedResourceName:v11];

  [(AFUIImageResource *)v13 setLocalPunchOut:v10];

  return v13;
}

+ (id)imageResourceFromKey:(id)a3 pressedKey:(id)a4 punchOut:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 appIconMap];

  if (v7 && v10)
  {
    v11 = [v9 appIconMap];
    v12 = [v11 objectForKey:v7];
    v13 = [v11 objectForKey:v8];
  }

  else
  {
    v12 = [v9 appIcon];
    v13 = 0;
  }

  v14 = [v12 resourceUrl];
  [v12 scaleFactor];
  if (v15 <= 0.0)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = v15;
  }

  v17 = [v13 resourceUrl];
  [v13 scaleFactor];
  v19 = v18;
  if (v12)
  {
    [v12 pixelWidth];
    v21 = v20 / v16;
    [v12 pixelHeight];
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
  [(AFUIImageResource *)v24 setRemoteURL:v14];
  [(AFUIImageResource *)v24 setRemoteScale:v16];
  [(AFUIImageResource *)v24 setRemotePressedURL:v17];
  [(AFUIImageResource *)v24 setRemotePressedScale:v19];
  [(AFUIImageResource *)v24 setLogoSize:v21, v23];
  [(AFUIImageResource *)v24 setRemotePunchOut:v9];

  return v24;
}

- (void)getLogoWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(AFUIImageResource *)self localResourceName];

    if (v5)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __43__AFUIImageResource_getLogoWithCompletion___block_invoke;
      v7[3] = &unk_278CD6B58;
      v7[4] = self;
      v8 = v4;
      [(AFUIImageResource *)self _fetchLocalResourcesWithCompletion:v7];
    }

    else
    {
      v6 = [(AFUIImageResource *)self remoteURL];

      if (v6)
      {
        [(AFUIImageResource *)self _fetchRemoteResourcesWithCompletion:v4];
      }

      else
      {
        (*(v4 + 2))(v4, 0, 0, 0);
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
  v5 = [(AFUIImageResource *)self localResourceName];
  if ([v5 length])
  {
    v6 = [(AFUIImageResource *)self _imageInLocalResourceBundleNamed:v5];
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

- (void)_fetchLocalResourcesWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(AFUIImageResource *)self localResourceName];
  v5 = [(AFUIImageResource *)self localPressedResourceName];
  v6 = [(AFUIImageResource *)self localPunchOut];
  if (v4)
  {
    v7 = [(AFUIImageResource *)self _imageInLocalResourceBundleNamed:v4];
    if (v5)
    {
LABEL_3:
      v8 = [(AFUIImageResource *)self _imageInLocalResourceBundleNamed:v5];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9[2](v9, v7, v8, v6);
}

- (id)_imageInLocalResourceBundleNamed:(id)a3
{
  v4 = MEMORY[0x277D755B8];
  v5 = a3;
  v6 = [(AFUIImageResource *)self localResourceBundle];
  v7 = [v4 _deviceSpecificImageNamed:v5 inBundle:v6];

  return v7;
}

- (void)_fetchRemoteResourcesWithCompletion:(id)a3
{
  v4 = a3;
  v17 = [(AFUIImageResource *)self remoteURL];
  v5 = [(AFUIImageResource *)self remotePressedURL];
  v6 = [(AFUIImageResource *)self remotePunchOut];
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
  v9 = [MEMORY[0x277D619D0] sharedURLSession];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__AFUIImageResource__fetchRemoteResourcesWithCompletion___block_invoke;
  v26[3] = &unk_278CD6B80;
  v28 = v31;
  v10 = v7;
  v27 = v10;
  v11 = [v9 imageTaskWithHTTPGetRequest:v17 client:self completionHandler:v26];

  dispatch_group_enter(v10);
  v12 = [MEMORY[0x277D619D0] sharedURLSession];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__AFUIImageResource__fetchRemoteResourcesWithCompletion___block_invoke_2;
  v23[3] = &unk_278CD6B80;
  v25 = v29;
  v13 = v10;
  v24 = v13;
  v14 = [v12 imageTaskWithHTTPGetRequest:v5 client:self completionHandler:v23];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__AFUIImageResource__fetchRemoteResourcesWithCompletion___block_invoke_3;
  block[3] = &unk_278CD6BA8;
  v21 = v31;
  v22 = v29;
  v19 = v6;
  v20 = v4;
  v15 = v6;
  v16 = v4;
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