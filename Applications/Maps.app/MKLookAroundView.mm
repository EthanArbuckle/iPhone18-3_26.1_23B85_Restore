@interface MKLookAroundView
- (NSString)expandedSceneTitle;
- (NSString)locationSubtitle;
- (NSString)locationTitle;
- (NSString)sceneTitle;
- (UIImage)snapshotImage;
@end

@implementation MKLookAroundView

- (NSString)sceneTitle
{
  muninViewState = [(MKLookAroundView *)self muninViewState];
  locationInfo = [muninViewState locationInfo];
  localityName = [locationInfo localityName];

  if ([localityName length])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"[App switcher title] Look Around — <location>" value:@"localized string not found" table:0];
    v7 = [NSString stringWithFormat:v6, localityName];
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v7 = [v5 localizedStringForKey:@"[App switcher title] Look Around" value:@"localized string not found" table:0];
  }

  return v7;
}

- (NSString)expandedSceneTitle
{
  locationTitle = [(MKLookAroundView *)self locationTitle];
  locationSubtitle = [(MKLookAroundView *)self locationSubtitle];
  v5 = [NSString stringWithFormat:@"%@ - %@", locationTitle, locationSubtitle];

  return v5;
}

- (UIImage)snapshotImage
{
  [(MKLookAroundView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = +[UIScreen mainScreen];
  [v7 scale];
  v9 = v8;
  v13.width = v4;
  v13.height = v6;
  UIGraphicsBeginImageContextWithOptions(v13, 0, v9);

  [(MKLookAroundView *)self bounds];
  [(MKLookAroundView *)self drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

- (NSString)locationSubtitle
{
  muninViewState = [(MKLookAroundView *)self muninViewState];
  locationInfo = [muninViewState locationInfo];

  secondaryLocationName = [locationInfo secondaryLocationName];
  v5 = [secondaryLocationName length];

  if (v5)
  {
    secondaryLocationName2 = [locationInfo secondaryLocationName];
  }

  else
  {
    secondaryLocationName2 = &stru_1016631F0;
  }

  localityName = [locationInfo localityName];
  v8 = [localityName length];

  if (v8)
  {
    if ([(__CFString *)secondaryLocationName2 length])
    {
      v9 = [(__CFString *)secondaryLocationName2 stringByAppendingString:@", "];

      secondaryLocationName2 = v9;
    }

    localityName2 = [locationInfo localityName];
    v11 = [(__CFString *)secondaryLocationName2 stringByAppendingString:localityName2];

    secondaryLocationName2 = v11;
  }

  return secondaryLocationName2;
}

- (NSString)locationTitle
{
  muninViewState = [(MKLookAroundView *)self muninViewState];
  locationInfo = [muninViewState locationInfo];

  locationName = [locationInfo locationName];
  v5 = [locationName length];

  if (v5)
  {
    locationName2 = [locationInfo locationName];
  }

  else
  {
    locationName2 = &stru_1016631F0;
  }

  return locationName2;
}

@end