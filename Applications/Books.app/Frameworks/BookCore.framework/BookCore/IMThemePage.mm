@interface IMThemePage
+ (id)themeForEPUBTheme:(int64_t)theme;
- (IMThemePage)init;
- (NSDictionary)backgroundsByLevel;
- (UITraitCollection)_traitCollection;
- (id)_themeNormalizedTraitCollection:(id)collection;
- (id)backgroundColorForTraitCollection:(id)collection;
- (id)backgroundColorForTraitEnvironment:(id)environment;
- (id)colorForElement:(unint64_t)element;
- (id)finishedCheckmarkColor;
- (id)tableViewSeparatorColor;
- (int64_t)userInterfaceStyle;
- (void)_colorsInTraitCollectionContext:(id)context block:(id)block;
- (void)styleMenuCell:(id)cell withTraitCollection:(id)collection;
- (void)stylizeSegmentedControl:(id)control;
@end

@implementation IMThemePage

+ (id)themeForEPUBTheme:(int64_t)theme
{
  if (theme > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = [self themeWithIdentifier:{*off_2CA770[theme], v3}];
  }

  return v5;
}

- (IMThemePage)init
{
  v5.receiver = self;
  v5.super_class = IMThemePage;
  v2 = [(IMTheme *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IMTheme *)v2 setContentStatusBarStyle:3];
    [(IMTheme *)v3 setImageMultiplyExpandedContentMode:1];
  }

  return v3;
}

- (id)colorForElement:(unint64_t)element
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_6B408;
  v14 = sub_6B418;
  v15 = 0;
  if ([(IMThemePage *)self _wantsComputedColors])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_6B420;
    v9[3] = &unk_2CA6F0;
    v9[5] = &v10;
    v9[6] = element;
    v9[4] = self;
    [(IMThemePage *)self _colorsInTraitCollectionContext:0 block:v9];
  }

  else
  {
    v5 = sub_6B4D4(element, [(IMThemePage *)self epubTheme]);
    v6 = v11[5];
    v11[5] = v5;
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)backgroundColorForTraitEnvironment:(id)environment
{
  traitCollection = [environment traitCollection];
  v5 = [(IMThemePage *)self backgroundColorForTraitCollection:traitCollection];

  return v5;
}

- (id)backgroundColorForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_6B408;
  v12 = sub_6B418;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6BF98;
  v7[3] = &unk_2C7AE0;
  v7[4] = self;
  v7[5] = &v8;
  [(IMThemePage *)self _colorsInTraitCollectionContext:collectionCopy block:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (int64_t)userInterfaceStyle
{
  epubTheme = [(IMThemePage *)self epubTheme];
  if ((epubTheme - 2) > 3)
  {
    return 0;
  }

  else
  {
    return qword_2A3B98[epubTheme - 2];
  }
}

- (void)stylizeSegmentedControl:(id)control
{
  v12 = NSForegroundColorAttributeName;
  controlCopy = control;
  primaryTextColor = [(IMThemePage *)self primaryTextColor];
  v13 = primaryTextColor;
  v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [controlCopy setTitleTextAttributes:v6 forState:0];

  v10 = NSForegroundColorAttributeName;
  v7 = +[UIColor bc_booksLabelColor];
  v11 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [controlCopy setTitleTextAttributes:v8 forState:4];

  tintColor = [(IMThemePage *)self tintColor];
  [controlCopy setTintColor:tintColor];
}

- (void)styleMenuCell:(id)cell withTraitCollection:(id)collection
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6C284;
  v6[3] = &unk_2C7BE8;
  selfCopy = self;
  cellCopy = cell;
  v5 = cellCopy;
  [(IMThemePage *)selfCopy _colorsInTraitCollectionContext:collection block:v6];
}

- (id)_themeNormalizedTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (collectionCopy)
  {
    v5 = collectionCopy;
    v10[0] = collectionCopy;
    _traitCollection = [(IMThemePage *)self _traitCollection];
    v10[1] = _traitCollection;
    v7 = [NSArray arrayWithObjects:v10 count:2];
    _traitCollection2 = [UITraitCollection traitCollectionWithTraitsFromCollections:v7];
  }

  else
  {
    _traitCollection2 = [(IMThemePage *)self _traitCollection];
  }

  return _traitCollection2;
}

- (void)_colorsInTraitCollectionContext:(id)context block:(id)block
{
  blockCopy = block;
  v10 = [(IMThemePage *)self _themeNormalizedTraitCollection:context];
  v7 = +[UITraitCollection _currentTraitCollection];
  if (v10)
  {
    [UITraitCollection _setCurrentTraitCollection:v10];
  }

  v8 = objc_retainBlock(blockCopy);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
  }

  if (v10)
  {
    [UITraitCollection _setCurrentTraitCollection:v7];
  }
}

- (UITraitCollection)_traitCollection
{
  if (!self->__traitCollection)
  {
    if ([(IMThemePage *)self userInterfaceStyle])
    {
      v3 = [UITraitCollection traitCollectionWithUserInterfaceStyle:?];
    }

    else
    {
      v3 = objc_alloc_init(UITraitCollection);
    }

    traitCollection = self->__traitCollection;
    self->__traitCollection = v3;
  }

  v5 = self->__traitCollection;

  return v5;
}

- (id)finishedCheckmarkColor
{
  v2 = +[UIColor bc_booksGreen];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v2 CGColor]);

  return v3;
}

- (id)tableViewSeparatorColor
{
  epubTheme = [(IMThemePage *)self epubTheme];
  v3 = epubTheme + 1;
  if (epubTheme + 1 <= 6)
  {
    if (((1 << v3) & 7) != 0)
    {
      epubTheme = +[UIColor bc_booksSeparatorColor];
    }

    else
    {
      if (((1 << v3) & 0x18) != 0)
      {
        v4 = 0.12;
        v5 = 0.0;
      }

      else
      {
        v4 = 0.15;
        v5 = 1.0;
      }

      epubTheme = [UIColor colorWithWhite:v5 alpha:v4];
    }
  }

  return epubTheme;
}

- (NSDictionary)backgroundsByLevel
{
  v3 = [UITraitCollection traitCollectionWithUserInterfaceStyle:[(IMThemePage *)self userInterfaceStyle]];
  v4 = [v3 traitCollectionByModifyingTraits:&stru_2CA730];
  v5 = v4;
  if ([(IMThemePage *)self userInterfaceStyle]== &dword_0 + 2)
  {
    v5 = [v3 traitCollectionByModifyingTraits:&stru_2CA750];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_6B408;
  v22 = sub_6B418;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_6B408;
  v16 = sub_6B418;
  v17 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6C9EC;
  v11[3] = &unk_2C7AE0;
  v11[4] = self;
  v11[5] = &v18;
  [(IMThemePage *)self _colorsInTraitCollectionContext:v4 block:v11];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6CA9C;
  v10[3] = &unk_2C7AE0;
  v10[4] = self;
  v10[5] = &v12;
  [(IMThemePage *)self _colorsInTraitCollectionContext:v5 block:v10];
  v6 = v19[5];
  v24[0] = &off_2E5978;
  v24[1] = &off_2E5990;
  v7 = v13[5];
  v25[0] = v6;
  v25[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

@end