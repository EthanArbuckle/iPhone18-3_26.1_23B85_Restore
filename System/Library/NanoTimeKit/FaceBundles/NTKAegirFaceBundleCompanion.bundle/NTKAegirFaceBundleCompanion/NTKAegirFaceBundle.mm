@interface NTKAegirFaceBundle
- (id)_galleryEditOptionsForDevice:(id)device;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKAegirFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKAegirFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  v6 = [(NTKAegirFaceBundle *)self _galleryEditOptionsForDevice:deviceCopy];
  v7 = [v6 objectForKeyedSubscript:&off_15818];
  v8 = [v6 objectForKeyedSubscript:&off_15830];
  v9 = [v6 objectForKeyedSubscript:&off_15848];
  [v6 objectForKeyedSubscript:&off_15860];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_8DE4;
  v20 = &unk_14808;
  selfCopy = self;
  v22 = deviceCopy;
  v24 = v23 = v9;
  v25 = v8;
  v26 = v5;
  v10 = v5;
  v11 = v8;
  v12 = v24;
  v13 = v9;
  v14 = deviceCopy;
  [v7 enumerateObjectsUsingBlock:&v17];
  v15 = [v10 copy];

  return v15;
}

- (id)_galleryEditOptionsForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NSUUID alloc] initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
  v5 = [deviceCopy supportsCapability:v4];

  if (v5)
  {
    v12[0] = &off_15830;
    v12[1] = &off_15848;
    v13[0] = &off_15DD0;
    v13[1] = &off_15DE8;
    v12[2] = &off_15860;
    v12[3] = &off_15818;
    v13[2] = &off_15E00;
    v13[3] = &off_15E18;
    v6 = v13;
    v7 = v12;
  }

  else
  {
    v10[0] = &off_15830;
    v10[1] = &off_15848;
    v11[0] = &off_15E30;
    v11[1] = &off_15E48;
    v10[2] = &off_15860;
    v10[3] = &off_15818;
    v11[2] = &off_15E60;
    v11[3] = &off_15E78;
    v6 = v11;
    v7 = v10;
  }

  v8 = [NSDictionary dictionaryWithObjects:v6 forKeys:v7 count:4];

  return v8;
}

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = [[NSUUID alloc] initWithUUIDString:@"E7B1CD81-445C-4840-9F24-3A32B510B6A1"];
  v6 = [deviceCopy supportsCapability:v5];

  if (v6)
  {
    v7 = &__NSArray0__struct;
  }

  else
  {
    v8 = [(NTKAegirFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v9 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v8 priority:300];
    v10 = v9;
    if (v9)
    {
      v12 = v9;
      v7 = [NSArray arrayWithObjects:&v12 count:1];
    }

    else
    {
      v7 = &__NSArray0__struct;
    }
  }

  return v7;
}

@end