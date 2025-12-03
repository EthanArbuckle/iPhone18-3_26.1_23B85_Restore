@interface UIBarButtonItem
+ (id)bc_readingExperienceBarItem:(id)item target:(id)target action:(SEL)action menuRepresentationTitle:(id)title;
@end

@implementation UIBarButtonItem

+ (id)bc_readingExperienceBarItem:(id)item target:(id)target action:(SEL)action menuRepresentationTitle:(id)title
{
  itemCopy = item;
  targetCopy = target;
  titleCopy = title;
  v12 = [UIImage systemImageNamed:itemCopy];
  v13 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:17.0];
  v14 = [v12 imageWithConfiguration:v13];

  v15 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:2 scale:17.0];
  v16 = [v12 imageWithConfiguration:v15];

  v17 = [objc_alloc(objc_opt_class()) initWithImage:v14 landscapeImagePhone:v16 style:0 target:targetCopy action:action];
  if (action)
  {
    v26 = itemCopy;
    objc_initWeak(&location, targetCopy);
    v25 = titleCopy;
    if (titleCopy)
    {
      v18 = titleCopy;
    }

    else
    {
      accessibilityLabel = [v17 accessibilityLabel];
      v20 = accessibilityLabel;
      v21 = &stru_2D2930;
      if (accessibilityLabel)
      {
        v21 = accessibilityLabel;
      }

      v18 = v21;
    }

    image = [v17 image];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_D5700;
    v27[3] = &unk_2CCD08;
    objc_copyWeak(v28, &location);
    v28[1] = action;
    v23 = [UIAction actionWithTitle:v18 image:image identifier:0 handler:v27];
    [v17 setMenuRepresentation:v23];

    objc_destroyWeak(v28);
    objc_destroyWeak(&location);
    titleCopy = v25;
    itemCopy = v26;
  }

  return v17;
}

@end