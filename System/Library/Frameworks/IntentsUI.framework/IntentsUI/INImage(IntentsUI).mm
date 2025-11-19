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

  v5 = [a1 _imageData];

  if (v5)
  {
    v6 = MEMORY[0x277D755B8];
    v7 = [a1 _imageData];
    v8 = [v6 imageWithData:v7];
    v4[2](v4, v8);

LABEL_4:
    goto LABEL_24;
  }

  v9 = [a1 _name];

  if (!v9)
  {
    v14 = [a1 _uri];

    if (!v14)
    {
      goto LABEL_24;
    }

    v15 = [a1 _uri];
    v16 = [v15 isFileURL];

    if (!v16)
    {
      v36 = [MEMORY[0x277CCAD30] sharedSession];
      v37 = [a1 _uri];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __49__INImage_IntentsUI__fetchUIImageWithCompletion___block_invoke;
      v39[3] = &unk_27872BEB8;
      v40 = v4;
      v38 = [v36 dataTaskWithURL:v37 completionHandler:v39];

      [v38 resume];
      goto LABEL_24;
    }

    v17 = MEMORY[0x277D755B8];
    v7 = [a1 _uri];
    v18 = [v7 absoluteString];
    v19 = [v17 imageWithContentsOfFile:v18];
    v4[2](v4, v19);

    goto LABEL_4;
  }

  v10 = [a1 _bundleIdentifier];
  if (v10)
  {
    v11 = [a1 _bundleIdentifier];
    v12 = [0 bundleIdentifier];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      v10 = 0;
    }

    else
    {
      v20 = MEMORY[0x277CC1E88];
      v21 = [a1 _bundleIdentifier];
      v22 = [v20 bundleProxyForIdentifier:v21];

      v23 = MEMORY[0x277CCA8D8];
      v24 = [v22 bundleURL];
      v25 = [v24 path];
      v10 = [v23 bundleWithPath:v25];

      if (!v10)
      {
        v26 = MEMORY[0x277CCA8D8];
        v27 = [a1 _bundleIdentifier];
        v10 = [v26 bundleWithIdentifier:v27];
      }
    }
  }

  v28 = [a1 _bundleIdentifier];
  if (v28)
  {
    v29 = v28;
LABEL_19:

    goto LABEL_20;
  }

  v30 = [a1 _bundlePath];

  if (v30)
  {
    v31 = MEMORY[0x277CCA8D8];
    v29 = [a1 _bundlePath];
    v32 = [v31 bundleWithPath:v29];

    v10 = v32;
    goto LABEL_19;
  }

LABEL_20:
  v33 = MEMORY[0x277D755B8];
  v34 = [a1 _name];
  if (v10)
  {
    [v33 imageNamed:v34 inBundle:v10 compatibleWithTraitCollection:0];
  }

  else
  {
    [v33 systemImageNamed:v34];
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
  v8 = [(UIImage *)v3 renderingMode];

  if (v8 <= 2)
  {
    [v5 _setRenderingMode:v8];
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