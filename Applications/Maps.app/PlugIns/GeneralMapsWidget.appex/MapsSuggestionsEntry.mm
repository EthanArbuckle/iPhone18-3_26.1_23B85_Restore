@interface MapsSuggestionsEntry
- (GEOFeatureStyleAttributes)styleAttributes;
- (MKMapItem)MKMapItem;
- (NSArray)waypoints;
- (NSString)poiTitle;
- (UIImage)icon;
- (void)setIcon:(id)icon;
@end

@implementation MapsSuggestionsEntry

- (MKMapItem)MKMapItem
{
  geoMapItem = [(MapsSuggestionsEntry *)self geoMapItem];

  if (geoMapItem)
  {
    v4 = objc_getAssociatedObject(self, &unk_100082260);
    v5 = objc_getAssociatedObject(self, &unk_100082261);
    if (v4 && (-[MapsSuggestionsEntry geoMapItem](self, "geoMapItem"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqual:v5], v6, v7))
    {
      v8 = v4;
    }

    else
    {
      geoMapItem2 = [(MapsSuggestionsEntry *)self geoMapItem];
      if ([(MapsSuggestionsEntry *)self isShortcut])
      {
        v10 = [geoMapItem2 copy];

        v11 = objc_alloc_init(GEOMapItemStorageUserValues);
        [v10 setUserValues:v11];

        undecoratedTitle = [(MapsSuggestionsEntry *)self undecoratedTitle];
        userValues = [v10 userValues];
        [userValues setName:undecoratedTitle];

        geoMapItem2 = v10;
      }

      v14 = [[MKMapItem alloc] initWithGeoMapItem:geoMapItem2 isPlaceHolderPlace:0];

      objc_setAssociatedObject(self, &unk_100082260, v14, 0x301);
      objc_setAssociatedObject(self, &unk_100082261, geoMapItem2, 0x301);
      v8 = v14;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (UIImage)icon
{
  iconData = [(MapsSuggestionsEntry *)self iconData];

  if (iconData)
  {
    v4 = objc_getAssociatedObject(self, &unk_100082262);
    v5 = objc_getAssociatedObject(self, &unk_100082263);
    if (!v4 || (-[MapsSuggestionsEntry iconData](self, "iconData"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqual:v5], v6, (v7 & 1) == 0))
    {
      iconData2 = [(MapsSuggestionsEntry *)self iconData];
      v9 = [UIImage imageWithData:iconData2];

      objc_setAssociatedObject(self, &unk_100082262, v9, 0x301);
      iconData3 = [(MapsSuggestionsEntry *)self iconData];
      objc_setAssociatedObject(self, &unk_100082263, iconData3, 0x301);

      v4 = v9;
    }

    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setIcon:(id)icon
{
  image = icon;
  v4 = objc_getAssociatedObject(self, &unk_100082262);
  if (image)
  {
    if (([(UIImage *)image isEqual:v4]& 1) == 0)
    {
      v5 = UIImagePNGRepresentation(image);
      [(MapsSuggestionsEntry *)self setIconData:v5];

      objc_setAssociatedObject(self, &unk_100082262, image, 0x301);
      iconData = [(MapsSuggestionsEntry *)self iconData];
      objc_setAssociatedObject(self, &unk_100082263, iconData, 0x301);
    }
  }

  else if (v4)
  {
    objc_setAssociatedObject(self, &unk_100082262, 0, 0x301);
    objc_setAssociatedObject(self, &unk_100082263, 0, 0x301);
    [(MapsSuggestionsEntry *)self setIconData:0];
  }
}

- (GEOFeatureStyleAttributes)styleAttributes
{
  type = [(MapsSuggestionsEntry *)self type];
  if (type > 0x18)
  {
    goto LABEL_8;
  }

  if (((1 << type) & 0x8018E) == 0)
  {
    if (type == 24)
    {
      _styleAttributes = +[GEOFeatureStyleAttributes sharedLocationStyleAttributes];
      if (_styleAttributes)
      {
        goto LABEL_24;
      }

      goto LABEL_3;
    }

LABEL_8:
    mKMapItem = [(MapsSuggestionsEntry *)self MKMapItem];
    _styleAttributes = [mKMapItem _styleAttributes];

    if (_styleAttributes)
    {
      goto LABEL_24;
    }
  }

LABEL_3:
  type2 = [(MapsSuggestionsEntry *)self type];
  uniqueIdentifier = [(MapsSuggestionsEntry *)self uniqueIdentifier];
  v6 = uniqueIdentifier;
  _styleAttributes = 0;
  switch(type2)
  {
    case 0uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 0xBuLL:
      v8 = +[GEOFeatureStyleAttributes markerStyleAttributes];
      goto LABEL_22;
    case 1uLL:
      v8 = +[GEOFeatureStyleAttributes homeStyleAttributes];
      goto LABEL_22;
    case 2uLL:
      v8 = +[GEOFeatureStyleAttributes workStyleAttributes];
      goto LABEL_22;
    case 3uLL:
      v8 = +[GEOFeatureStyleAttributes calendarEventStyleAttributes];
      goto LABEL_22;
    case 7uLL:
    case 0xAuLL:
      v8 = +[GEOFeatureStyleAttributes parkedCarStyleAttributes];
      goto LABEL_22;
    case 8uLL:
      v8 = +[GEOFeatureStyleAttributes restaurantStyleAttributes];
      goto LABEL_22;
    case 0xDuLL:
      v8 = +[GEOFeatureStyleAttributes hotelStyleAttributes];
      goto LABEL_22;
    case 0xEuLL:
      v8 = +[GEOFeatureStyleAttributes carRentalStyleAttributes];
      goto LABEL_22;
    case 0xFuLL:
      v8 = +[GEOFeatureStyleAttributes airportStyleAttributes];
      goto LABEL_22;
    case 0x10uLL:
      v8 = +[GEOFeatureStyleAttributes ticketedEventStyleAttributes];
      goto LABEL_22;
    case 0x13uLL:
      v8 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
      goto LABEL_22;
    case 0x16uLL:
      if ([uniqueIdentifier isEqualToString:@"NearbyTransit"])
      {
        v8 = +[GEOFeatureStyleAttributes nearbyTransitStyleAttributes];
LABEL_22:
        _styleAttributes = v8;
      }

      else
      {
        _styleAttributes = 0;
      }

LABEL_23:

      break;
    default:
      goto LABEL_23;
  }

LABEL_24:

  return _styleAttributes;
}

- (NSString)poiTitle
{
  type = [(MapsSuggestionsEntry *)self type];
  if (type > 0x19)
  {
    name = 0;
  }

  else
  {
    if (((1 << type) & 0x27E96F7) != 0)
    {
      undecoratedTitle = [(MapsSuggestionsEntry *)self undecoratedTitle];
LABEL_4:
      name = undecoratedTitle;
      goto LABEL_5;
    }

    if (((1 << type) & 0x1816108) != 0 && ([(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsEntryTitleNameKey"]& 1) != 0)
    {
      undecoratedTitle = [(MapsSuggestionsEntry *)self stringForKey:@"MapsSuggestionsEntryTitleNameKey"];
      goto LABEL_4;
    }

    mKMapItem = [(MapsSuggestionsEntry *)self MKMapItem];
    name = [mKMapItem name];
  }

LABEL_5:

  return name;
}

- (NSArray)waypoints
{
  v2 = sub_10007D18C(self);
  waypoints = [v2 waypoints];

  return waypoints;
}

@end