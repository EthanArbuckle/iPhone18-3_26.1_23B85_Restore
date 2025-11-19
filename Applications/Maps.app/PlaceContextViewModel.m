@interface PlaceContextViewModel
- (BOOL)isEqual:(id)a3;
- (PlaceContextViewModel)initWithCurrentLocation;
- (PlaceContextViewModel)initWithLibraryContextForPinnedItem;
- (PlaceContextViewModel)initWithLibraryContextForPlaceNote:(id)a3;
- (PlaceContextViewModel)initWithLibraryContextForUserCollectionName:(id)a3;
- (PlaceContextViewModel)initWithType:(unint64_t)a3 image:(id)a4 attributedString:(id)a5;
- (PlaceContextViewModel)initWithType:(unint64_t)a3 image:(id)a4 string:(id)a5 stringHighlightRanges:(id)a6;
- (id)attributedStringHighlightedWithString:(id)a3 stringHighlightRanges:(id)a4;
- (id)attributedStringWithString:(id)a3 stringHighlightRanges:(id)a4;
@end

@implementation PlaceContextViewModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(PlaceContextViewModel *)v5 type]== self->_type)
      {
        v6 = [(PlaceContextViewModel *)v5 image];
        v7 = v6;
        if (v6 == self->_image || [(UIImage *)v6 isEqual:?])
        {
          v8 = [(PlaceContextViewModel *)v5 attributedString];
          v9 = v8;
          if (v8 == self->_attributedString)
          {
            v10 = 1;
          }

          else
          {
            v10 = [(NSAttributedString *)v8 isEqual:?];
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (PlaceContextViewModel)initWithCurrentLocation
{
  v3 = +[MKLocationManager sharedLocationManager];
  v4 = [v3 isAuthorizedForPreciseLocation];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [UIImageSymbolConfiguration configurationWithScale:1];
    v7 = [UIImage systemImageNamed:@"location.fill" withConfiguration:v6];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@" Requires precise location" value:@"localized string not found" table:0];

    v10 = [(PlaceContextViewModel *)self initWithType:0 image:v7 string:v9 stringHighlightRanges:0];
    if (v10)
    {
      v11 = +[UIColor secondaryLabelColor];
      imageTintColor = v10->_imageTintColor;
      v10->_imageTintColor = v11;
    }

    self = v10;

    v5 = self;
  }

  return v5;
}

- (PlaceContextViewModel)initWithLibraryContextForPinnedItem
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Library] Pinned" value:@"localized string not found" table:0];

  v5 = [UIImage systemImageNamed:@"pin.fill"];
  v6 = [NSAttributedString alloc];
  v14 = NSForegroundColorAttributeName;
  v7 = +[UIColor secondaryLabelColor];
  v15 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v9 = [v6 initWithString:v4 attributes:v8];

  v10 = [(PlaceContextViewModel *)self initWithType:3 image:v5 attributedString:v9];
  if (v10)
  {
    v11 = +[UIColor secondaryLabelColor];
    imageTintColor = v10->_imageTintColor;
    v10->_imageTintColor = v11;

    objc_storeStrong(&v10->_highlightedAttributedString, v9);
  }

  return v10;
}

- (PlaceContextViewModel)initWithLibraryContextForUserCollectionName:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [UIImage systemImageNamed:@"checkmark"];
    v6 = [NSAttributedString alloc];
    v15 = NSForegroundColorAttributeName;
    v7 = +[UIColor systemBlueColor];
    v16 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = [v6 initWithString:v4 attributes:v8];

    v10 = [(PlaceContextViewModel *)self initWithType:2 image:v5 attributedString:v9];
    if (v10)
    {
      v11 = +[UIColor secondaryLabelColor];
      imageTintColor = v10->_imageTintColor;
      v10->_imageTintColor = v11;
    }

    self = v10;

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (PlaceContextViewModel)initWithLibraryContextForPlaceNote:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [[NSAttributedString alloc] initWithString:v4];
    v6 = [(PlaceContextViewModel *)self initWithType:1 image:0 attributedString:v5];

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)attributedStringWithString:(id)a3 stringHighlightRanges:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSMutableAttributedString alloc] initWithString:v5];
  if ([v6 count])
  {
    v19 = v5;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = +[UIColor systemBlueColor];
          v15 = [v13 rangeValue];
          [v7 addAttribute:NSForegroundColorAttributeName value:v14 range:{v15, v16}];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v5 = v19;
  }

  v17 = [v7 copy];

  return v17;
}

- (id)attributedStringHighlightedWithString:(id)a3 stringHighlightRanges:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSMutableAttributedString alloc] initWithString:v5];
  if ([v6 count])
  {
    v19 = v5;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = +[UIColor whiteColor];
          v15 = [v13 rangeValue];
          [v7 addAttribute:NSForegroundColorAttributeName value:v14 range:{v15, v16}];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v5 = v19;
  }

  v17 = [v7 copy];

  return v17;
}

- (PlaceContextViewModel)initWithType:(unint64_t)a3 image:(id)a4 attributedString:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PlaceContextViewModel;
  v11 = [(PlaceContextViewModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_image, a4);
    objc_storeStrong(&v12->_attributedString, a5);
  }

  return v12;
}

- (PlaceContextViewModel)initWithType:(unint64_t)a3 image:(id)a4 string:(id)a5 stringHighlightRanges:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = PlaceContextViewModel;
  v14 = [(PlaceContextViewModel *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = a3;
    objc_storeStrong(&v14->_image, a4);
    v16 = [(PlaceContextViewModel *)v15 attributedStringWithString:v12 stringHighlightRanges:v13];
    attributedString = v15->_attributedString;
    v15->_attributedString = v16;

    v18 = [(PlaceContextViewModel *)v15 attributedStringHighlightedWithString:v12 stringHighlightRanges:v13];
    highlightedAttributedString = v15->_highlightedAttributedString;
    v15->_highlightedAttributedString = v18;
  }

  return v15;
}

@end