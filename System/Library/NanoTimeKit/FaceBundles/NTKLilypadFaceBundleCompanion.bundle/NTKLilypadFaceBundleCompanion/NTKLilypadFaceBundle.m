@interface NTKLilypadFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)galleryTitleForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
- (id)prideFacesForDevice:(id)a3;
- (void)argon_generateNotificationContentWithCompletion:(id)a3;
@end

@implementation NTKLilypadFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKLilypadFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryTitleForDevice:(id)a3
{
  if (NTKShowGalleryLiteUI())
  {
    v3 = [NTKLilypadFaceBundle localizedStringForKey:@"LILYPAD_FACE_NAME_IN_TITLE_CASE" comment:@"Lilypad"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:360081074])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKLilypadFaceBundle *)self prideFacesForDevice:v4];
    v7 = [v6 firstObject];

    v8 = [NTKFaceBundleSortableGalleryFace alloc];
    v9 = [v7 face];
    v10 = [v8 initWithFace:v9 priority:1300];

    v12 = v10;
    v5 = [NSArray arrayWithObjects:&v12 count:1];
  }

  return v5;
}

- (id)prideFacesForDevice:(id)a3
{
  v4 = a3;
  if (([(objc_class *)[(NTKLilypadFaceBundle *)self faceClass] isRestrictedForDevice:v4]& 1) != 0)
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [objc_opt_class() identifier];
    v7 = [objc_opt_class() analyticsIdentifier];
    v8 = [NTKLilypadFace bundledFaceWithIdentifier:v6 analyticsIdentifier:v7 forDevice:v4 initCustomization:0];

    v9 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v8 priority:900];
    v11 = v9;
    v5 = [NSArray arrayWithObjects:&v11 count:1];
  }

  return v5;
}

- (void)argon_generateNotificationContentWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[CLKDevice currentDevice];
    v6 = [(NTKLilypadFaceBundle *)self defaultFaceForDevice:v5];
    if (v6)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1380;
      v8[3] = &unk_C3B8;
      v8[4] = self;
      v9 = v4;
      [v6 argon_notificationContentWithCompletion:v8];
    }

    else
    {
      v7 = [NSError errorWithDomain:@"NTKLilypadFaceDomain" code:403 userInfo:&off_C9A0];
      (*(v4 + 2))(v4, 0, 0, v7);
    }
  }
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v5 = &off_C9C8;
  v6 = &off_C9E0;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  if (NTKShowGalleryLiteUI())
  {
    v5 = +[NSMutableArray array];
    v6 = [NTKFaceBackgroundStyleEditOption numberOfOptionsForDevice:v4];
    if ((v6 - 1) >= 0)
    {
      v7 = v6;
      while (1)
      {
        v8 = [(NTKLilypadFaceBundle *)self defaultFaceForDevice:v4];
        if (v8)
        {
          break;
        }

LABEL_11:

        if (!--v7)
        {
          goto LABEL_14;
        }
      }

      v9 = [NTKFaceBackgroundStyleEditOption optionAtIndex:v7 - 1 forDevice:v4];
      [v8 selectOption:v9 forCustomEditMode:15 slot:0];
      if (v7 == &dword_0 + 2)
      {
        v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:14 zOrder:5000];
        v15 = v10;
        v11 = &v15;
      }

      else
      {
        if (v7 != &dword_0 + 1)
        {
LABEL_10:
          [v5 addObject:v8];

          goto LABEL_11;
        }

        v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:14 zOrder:4000];
        v16 = v10;
        v11 = &v16;
      }

      v12 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
      v11[1] = v12;
      v13 = [NSArray arrayWithObjects:v11 count:2];
      [v8 setCurationPlacements:v13];

      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_14:

  return v5;
}

@end