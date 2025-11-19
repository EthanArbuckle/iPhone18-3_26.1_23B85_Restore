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
  v2 = [(MKLookAroundView *)self muninViewState];
  v3 = [v2 locationInfo];
  v4 = [v3 localityName];

  if ([v4 length])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"[App switcher title] Look Around — <location>" value:@"localized string not found" table:0];
    v7 = [NSString stringWithFormat:v6, v4];
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
  v3 = [(MKLookAroundView *)self locationTitle];
  v4 = [(MKLookAroundView *)self locationSubtitle];
  v5 = [NSString stringWithFormat:@"%@ - %@", v3, v4];

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
  v2 = [(MKLookAroundView *)self muninViewState];
  v3 = [v2 locationInfo];

  v4 = [v3 secondaryLocationName];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 secondaryLocationName];
  }

  else
  {
    v6 = &stru_1016631F0;
  }

  v7 = [v3 localityName];
  v8 = [v7 length];

  if (v8)
  {
    if ([(__CFString *)v6 length])
    {
      v9 = [(__CFString *)v6 stringByAppendingString:@", "];

      v6 = v9;
    }

    v10 = [v3 localityName];
    v11 = [(__CFString *)v6 stringByAppendingString:v10];

    v6 = v11;
  }

  return v6;
}

- (NSString)locationTitle
{
  v2 = [(MKLookAroundView *)self muninViewState];
  v3 = [v2 locationInfo];

  v4 = [v3 locationName];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 locationName];
  }

  else
  {
    v6 = &stru_1016631F0;
  }

  return v6;
}

@end