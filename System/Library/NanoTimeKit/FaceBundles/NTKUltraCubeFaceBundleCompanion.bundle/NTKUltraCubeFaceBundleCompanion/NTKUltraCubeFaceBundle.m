@interface NTKUltraCubeFaceBundle
- (id)_galleryFaceForDevice:(id)a3;
- (id)_randomSampleResourceDirectoryPath;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryDescriptionForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryTitleForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKUltraCubeFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKUltraCubeFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryDescriptionForDevice:(id)a3
{
  if ([NTKUltraCubeFace isColorEffectFeatureEnabledForDevice:a3])
  {
    v3 = @"FACE_STYLE_ULTRACUBE_GALLERY_DESCRIPTION";
  }

  else
  {
    v3 = @"FACE_STYLE_ULTRACUBE_GALLERY_DESCRIPTION_PRE2K22";
  }

  v4 = [NTKUltraCubeFaceBundle localizedStringForKey:v3 comment:@"Portrait"];

  return v4;
}

- (id)_galleryFaceForDevice:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() identifier];
  v6 = [objc_opt_class() analyticsIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_6490;
  v9[3] = &unk_48D70;
  v9[4] = self;
  v7 = [NTKUltraCubeFace bundledFaceWithIdentifier:v5 analyticsIdentifier:v6 forDevice:v4 initCustomization:v9];

  return v7;
}

- (id)galleryFacesForDevice:(id)a3
{
  v3 = [(NTKUltraCubeFaceBundle *)self _galleryFaceForDevice:a3];
  v4 = v3;
  if (v3)
  {
    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)galleryTitleForDevice:(id)a3
{
  v3 = [a3 supportsPDRCapability:4067975928];
  v4 = _os_feature_enabled_impl();
  if (v3 && (v4 & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NTKUltraCubeFaceBundle localizedStringForKey:@"FACE_STYLE_ULTRACUBE_IN_TITLE_CASE" comment:@"Portrait"];
  }

  return v5;
}

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:3887189377])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    if ([v4 supportsPDRCapability:360081074])
    {
      v6 = 200;
    }

    else if ([v4 deviceCategory] == &dword_0 + 3)
    {
      v6 = 200;
    }

    else
    {
      v6 = 100;
    }

    v7 = [(NTKUltraCubeFaceBundle *)self _galleryFaceForDevice:v4];
    v8 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v7 priority:v6];
    v9 = v8;
    if (v8)
    {
      v11 = v8;
      v5 = [NSArray arrayWithObjects:&v11 count:1];
    }

    else
    {
      v5 = &__NSArray0__struct;
    }
  }

  return v5;
}

- (id)_randomSampleResourceDirectoryPath
{
  v23 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v23 bundlePath];
  v21 = [v22 stringByAppendingPathComponent:@"SampleResourceDirectories"];
  v2 = [NSURL fileURLWithPath:?];
  v3 = +[NSFileManager defaultManager];
  v31[0] = NSURLNameKey;
  v31[1] = NSURLIsDirectoryKey;
  v4 = [NSArray arrayWithObjects:v31 count:2];
  v19 = v3;
  v20 = v2;
  v5 = [v3 enumeratorAtURL:v2 includingPropertiesForKeys:v4 options:5 errorHandler:&stru_48DB0];

  v6 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v25 = 0;
        [v12 getResourceValue:&v25 forKey:NSURLIsDirectoryKey error:0];
        v13 = v25;
        if ([v13 BOOLValue])
        {
          v24 = 0;
          [v12 getResourceValue:&v24 forKey:NSURLNameKey error:0];
          v14 = v24;
          if ([v14 hasPrefix:@"SampleImage"])
          {
            [v6 addObject:v14];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v15 = [v6 count];
  if (v15)
  {
    v16 = [v6 objectAtIndexedSubscript:arc4random() % v15];
    v17 = v21;
    v15 = [v21 stringByAppendingPathComponent:v16];
  }

  else
  {
    v17 = v21;
  }

  return v15;
}

@end