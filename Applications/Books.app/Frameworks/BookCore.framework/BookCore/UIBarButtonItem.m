@interface UIBarButtonItem
+ (id)bc_readingExperienceBarItem:(id)a3 target:(id)a4 action:(SEL)a5 menuRepresentationTitle:(id)a6;
@end

@implementation UIBarButtonItem

+ (id)bc_readingExperienceBarItem:(id)a3 target:(id)a4 action:(SEL)a5 menuRepresentationTitle:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [UIImage systemImageNamed:v9];
  v13 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:17.0];
  v14 = [v12 imageWithConfiguration:v13];

  v15 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:2 scale:17.0];
  v16 = [v12 imageWithConfiguration:v15];

  v17 = [objc_alloc(objc_opt_class()) initWithImage:v14 landscapeImagePhone:v16 style:0 target:v10 action:a5];
  if (a5)
  {
    v26 = v9;
    objc_initWeak(&location, v10);
    v25 = v11;
    if (v11)
    {
      v18 = v11;
    }

    else
    {
      v19 = [v17 accessibilityLabel];
      v20 = v19;
      v21 = &stru_2D2930;
      if (v19)
      {
        v21 = v19;
      }

      v18 = v21;
    }

    v22 = [v17 image];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_D5700;
    v27[3] = &unk_2CCD08;
    objc_copyWeak(v28, &location);
    v28[1] = a5;
    v23 = [UIAction actionWithTitle:v18 image:v22 identifier:0 handler:v27];
    [v17 setMenuRepresentation:v23];

    objc_destroyWeak(v28);
    objc_destroyWeak(&location);
    v11 = v25;
    v9 = v26;
  }

  return v17;
}

@end