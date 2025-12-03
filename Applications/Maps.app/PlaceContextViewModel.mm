@interface PlaceContextViewModel
- (BOOL)isEqual:(id)equal;
- (PlaceContextViewModel)initWithCurrentLocation;
- (PlaceContextViewModel)initWithLibraryContextForPinnedItem;
- (PlaceContextViewModel)initWithLibraryContextForPlaceNote:(id)note;
- (PlaceContextViewModel)initWithLibraryContextForUserCollectionName:(id)name;
- (PlaceContextViewModel)initWithType:(unint64_t)type image:(id)image attributedString:(id)string;
- (PlaceContextViewModel)initWithType:(unint64_t)type image:(id)image string:(id)string stringHighlightRanges:(id)ranges;
- (id)attributedStringHighlightedWithString:(id)string stringHighlightRanges:(id)ranges;
- (id)attributedStringWithString:(id)string stringHighlightRanges:(id)ranges;
@end

@implementation PlaceContextViewModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(PlaceContextViewModel *)v5 type]== self->_type)
      {
        image = [(PlaceContextViewModel *)v5 image];
        v7 = image;
        if (image == self->_image || [(UIImage *)image isEqual:?])
        {
          attributedString = [(PlaceContextViewModel *)v5 attributedString];
          v9 = attributedString;
          if (attributedString == self->_attributedString)
          {
            v10 = 1;
          }

          else
          {
            v10 = [(NSAttributedString *)attributedString isEqual:?];
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
  isAuthorizedForPreciseLocation = [v3 isAuthorizedForPreciseLocation];

  if (isAuthorizedForPreciseLocation)
  {
    selfCopy = 0;
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

    selfCopy = self;
  }

  return selfCopy;
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

- (PlaceContextViewModel)initWithLibraryContextForUserCollectionName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v5 = [UIImage systemImageNamed:@"checkmark"];
    v6 = [NSAttributedString alloc];
    v15 = NSForegroundColorAttributeName;
    v7 = +[UIColor systemBlueColor];
    v16 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = [v6 initWithString:nameCopy attributes:v8];

    v10 = [(PlaceContextViewModel *)self initWithType:2 image:v5 attributedString:v9];
    if (v10)
    {
      v11 = +[UIColor secondaryLabelColor];
      imageTintColor = v10->_imageTintColor;
      v10->_imageTintColor = v11;
    }

    self = v10;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PlaceContextViewModel)initWithLibraryContextForPlaceNote:(id)note
{
  noteCopy = note;
  if ([noteCopy length])
  {
    v5 = [[NSAttributedString alloc] initWithString:noteCopy];
    v6 = [(PlaceContextViewModel *)self initWithType:1 image:0 attributedString:v5];

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)attributedStringWithString:(id)string stringHighlightRanges:(id)ranges
{
  stringCopy = string;
  rangesCopy = ranges;
  v7 = [[NSMutableAttributedString alloc] initWithString:stringCopy];
  if ([rangesCopy count])
  {
    v19 = stringCopy;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = rangesCopy;
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
          rangeValue = [v13 rangeValue];
          [v7 addAttribute:NSForegroundColorAttributeName value:v14 range:{rangeValue, v16}];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    stringCopy = v19;
  }

  v17 = [v7 copy];

  return v17;
}

- (id)attributedStringHighlightedWithString:(id)string stringHighlightRanges:(id)ranges
{
  stringCopy = string;
  rangesCopy = ranges;
  v7 = [[NSMutableAttributedString alloc] initWithString:stringCopy];
  if ([rangesCopy count])
  {
    v19 = stringCopy;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = rangesCopy;
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
          rangeValue = [v13 rangeValue];
          [v7 addAttribute:NSForegroundColorAttributeName value:v14 range:{rangeValue, v16}];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    stringCopy = v19;
  }

  v17 = [v7 copy];

  return v17;
}

- (PlaceContextViewModel)initWithType:(unint64_t)type image:(id)image attributedString:(id)string
{
  imageCopy = image;
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = PlaceContextViewModel;
  v11 = [(PlaceContextViewModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_image, image);
    objc_storeStrong(&v12->_attributedString, string);
  }

  return v12;
}

- (PlaceContextViewModel)initWithType:(unint64_t)type image:(id)image string:(id)string stringHighlightRanges:(id)ranges
{
  imageCopy = image;
  stringCopy = string;
  rangesCopy = ranges;
  v21.receiver = self;
  v21.super_class = PlaceContextViewModel;
  v14 = [(PlaceContextViewModel *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    objc_storeStrong(&v14->_image, image);
    v16 = [(PlaceContextViewModel *)v15 attributedStringWithString:stringCopy stringHighlightRanges:rangesCopy];
    attributedString = v15->_attributedString;
    v15->_attributedString = v16;

    v18 = [(PlaceContextViewModel *)v15 attributedStringHighlightedWithString:stringCopy stringHighlightRanges:rangesCopy];
    highlightedAttributedString = v15->_highlightedAttributedString;
    v15->_highlightedAttributedString = v18;
  }

  return v15;
}

@end