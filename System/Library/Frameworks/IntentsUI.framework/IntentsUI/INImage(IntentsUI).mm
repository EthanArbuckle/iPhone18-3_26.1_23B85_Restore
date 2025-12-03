@interface INImage(IntentsUI)
+ (id)imageWithCGImage:()IntentsUI;
+ (id)imageWithUIImage:()IntentsUI;
- (void)fetchUIImageWithCompletion:()IntentsUI;
@end

@implementation INImage(IntentsUI)

- (void)fetchUIImageWithCompletion:()IntentsUI
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_24;
  }

  _imageData = [self _imageData];

  if (_imageData)
  {
    v6 = MEMORY[0x277D755B8];
    _imageData2 = [self _imageData];
    v8 = [v6 imageWithData:_imageData2];
    v4[2](v4, v8);

LABEL_4:
    goto LABEL_24;
  }

  _name = [self _name];

  if (!_name)
  {
    _uri = [self _uri];

    if (!_uri)
    {
      goto LABEL_24;
    }

    _uri2 = [self _uri];
    isFileURL = [_uri2 isFileURL];

    if (!isFileURL)
    {
      mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
      _uri3 = [self _uri];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __49__INImage_IntentsUI__fetchUIImageWithCompletion___block_invoke;
      v39[3] = &unk_27872BEB8;
      v40 = v4;
      v38 = [mEMORY[0x277CCAD30] dataTaskWithURL:_uri3 completionHandler:v39];

      [v38 resume];
      goto LABEL_24;
    }

    v17 = MEMORY[0x277D755B8];
    _imageData2 = [self _uri];
    absoluteString = [_imageData2 absoluteString];
    v19 = [v17 imageWithContentsOfFile:absoluteString];
    v4[2](v4, v19);

    goto LABEL_4;
  }

  _bundleIdentifier = [self _bundleIdentifier];
  if (_bundleIdentifier)
  {
    _bundleIdentifier2 = [self _bundleIdentifier];
    bundleIdentifier = [0 bundleIdentifier];
    v13 = [_bundleIdentifier2 isEqualToString:bundleIdentifier];

    if (v13)
    {
      _bundleIdentifier = 0;
    }

    else
    {
      v20 = MEMORY[0x277CC1E88];
      _bundleIdentifier3 = [self _bundleIdentifier];
      v22 = [v20 bundleProxyForIdentifier:_bundleIdentifier3];

      v23 = MEMORY[0x277CCA8D8];
      bundleURL = [v22 bundleURL];
      path = [bundleURL path];
      _bundleIdentifier = [v23 bundleWithPath:path];

      if (!_bundleIdentifier)
      {
        v26 = MEMORY[0x277CCA8D8];
        _bundleIdentifier4 = [self _bundleIdentifier];
        _bundleIdentifier = [v26 bundleWithIdentifier:_bundleIdentifier4];
      }
    }
  }

  _bundleIdentifier5 = [self _bundleIdentifier];
  if (_bundleIdentifier5)
  {
    _bundlePath2 = _bundleIdentifier5;
LABEL_19:

    goto LABEL_20;
  }

  _bundlePath = [self _bundlePath];

  if (_bundlePath)
  {
    v31 = MEMORY[0x277CCA8D8];
    _bundlePath2 = [self _bundlePath];
    v32 = [v31 bundleWithPath:_bundlePath2];

    _bundleIdentifier = v32;
    goto LABEL_19;
  }

LABEL_20:
  v33 = MEMORY[0x277D755B8];
  _name2 = [self _name];
  if (_bundleIdentifier)
  {
    [v33 imageNamed:_name2 inBundle:_bundleIdentifier compatibleWithTraitCollection:0];
  }

  else
  {
    [v33 systemImageNamed:_name2];
  }
  v35 = ;

  v4[2](v4, v35);
LABEL_24:
}

+ (id)imageWithUIImage:()IntentsUI
{
  v3 = a3;
  v4 = UIImagePNGRepresentation(v3);
  v5 = [MEMORY[0x277CD3D10] imageWithImageData:v4];
  [(UIImage *)v3 size];
  v7 = v6;
  [(UIImage *)v3 size];
  [v5 _setImageSize:v7];
  renderingMode = [(UIImage *)v3 renderingMode];

  if (renderingMode <= 2)
  {
    [v5 _setRenderingMode:renderingMode];
  }

  return v5;
}

+ (id)imageWithCGImage:()IntentsUI
{
  v4 = MEMORY[0x277CD3D10];
  DataProvider = CGImageGetDataProvider(image);
  v6 = CGDataProviderCopyData(DataProvider);
  v7 = [v4 imageWithImageData:v6];

  Width = CGImageGetWidth(image);
  [v7 _setImageSize:{Width, CGImageGetHeight(image)}];

  return v7;
}

@end