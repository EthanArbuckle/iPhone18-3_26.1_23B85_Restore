@interface UITraitCollection
+ (id)bc_allAPITraits;
+ (id)bk_traitCollectionWithReadingMode:(unint64_t)mode;
+ (id)currentTraitCollectionLimitedToSizeCategory:(id)category;
- (BOOL)bc_knownPropertiesEqual:(id)equal;
- (id)traitCollectionLimitedToSizeCategory:(id)category;
@end

@implementation UITraitCollection

+ (id)bc_allAPITraits
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v4[10] = objc_opt_class();
  v4[11] = objc_opt_class();
  v4[12] = objc_opt_class();
  v4[13] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:14];

  return v2;
}

- (BOOL)bc_knownPropertiesEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    userInterfaceIdiom = [(UITraitCollection *)self userInterfaceIdiom];
    if (userInterfaceIdiom == [(UITraitCollection *)equalCopy userInterfaceIdiom]&& ([(UITraitCollection *)self displayScale], v7 = v6, [(UITraitCollection *)equalCopy displayScale], v7 == v8) && (v9 = [(UITraitCollection *)self displayGamut], v9 == [(UITraitCollection *)equalCopy displayGamut]) && (v10 = [(UITraitCollection *)self userInterfaceStyle], v10 == [(UITraitCollection *)equalCopy userInterfaceStyle]) && (v11 = [(UITraitCollection *)self layoutDirection], v11 == [(UITraitCollection *)equalCopy layoutDirection]) && (v12 = [(UITraitCollection *)self forceTouchCapability], v12 == [(UITraitCollection *)equalCopy forceTouchCapability]))
    {
      preferredContentSizeCategory = [(UITraitCollection *)self preferredContentSizeCategory];
      preferredContentSizeCategory2 = [(UITraitCollection *)equalCopy preferredContentSizeCategory];
      if (preferredContentSizeCategory == preferredContentSizeCategory2 && (v15 = [(UITraitCollection *)self accessibilityContrast], v15 == [(UITraitCollection *)equalCopy accessibilityContrast]))
      {
        userInterfaceLevel = [(UITraitCollection *)self userInterfaceLevel];
        v17 = userInterfaceLevel == [(UITraitCollection *)equalCopy userInterfaceLevel];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)traitCollectionLimitedToSizeCategory:(id)category
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C7728;
  v7[3] = &unk_2CC5B8;
  categoryCopy = category;
  v4 = categoryCopy;
  v5 = [(UITraitCollection *)self traitCollectionByModifyingTraits:v7];

  return v5;
}

+ (id)currentTraitCollectionLimitedToSizeCategory:(id)category
{
  categoryCopy = category;
  v4 = +[UITraitCollection currentTraitCollection];
  v5 = [v4 traitCollectionLimitedToSizeCategory:categoryCopy];

  return v5;
}

+ (id)bk_traitCollectionWithReadingMode:(unint64_t)mode
{
  v3 = [NSNumber numberWithUnsignedInteger:mode];
  v4 = [UITraitCollection _traitCollectionWithValue:v3 forTraitNamed:@"BKClientTraitReadingModeKey"];

  return v4;
}

@end