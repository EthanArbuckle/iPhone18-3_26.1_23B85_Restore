@interface MapsSuggestionsEntry
- (GEOFeatureStyleAttributes)styleAttributes;
- (MKMapItem)MKMapItem;
- (NSArray)waypoints;
- (NSString)poiTitle;
- (UIImage)icon;
- (void)setIcon:(id)a3;
@end

@implementation MapsSuggestionsEntry

- (MKMapItem)MKMapItem
{
  v3 = [(MapsSuggestionsEntry *)self geoMapItem];

  if (v3)
  {
    v4 = objc_getAssociatedObject(self, &unk_100082260);
    v5 = objc_getAssociatedObject(self, &unk_100082261);
    if (v4 && (-[MapsSuggestionsEntry geoMapItem](self, "geoMapItem"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqual:v5], v6, v7))
    {
      v8 = v4;
    }

    else
    {
      v9 = [(MapsSuggestionsEntry *)self geoMapItem];
      if ([(MapsSuggestionsEntry *)self isShortcut])
      {
        v10 = [v9 copy];

        v11 = objc_alloc_init(GEOMapItemStorageUserValues);
        [v10 setUserValues:v11];

        v12 = [(MapsSuggestionsEntry *)self undecoratedTitle];
        v13 = [v10 userValues];
        [v13 setName:v12];

        v9 = v10;
      }

      v14 = [[MKMapItem alloc] initWithGeoMapItem:v9 isPlaceHolderPlace:0];

      objc_setAssociatedObject(self, &unk_100082260, v14, 0x301);
      objc_setAssociatedObject(self, &unk_100082261, v9, 0x301);
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
  v3 = [(MapsSuggestionsEntry *)self iconData];

  if (v3)
  {
    v4 = objc_getAssociatedObject(self, &unk_100082262);
    v5 = objc_getAssociatedObject(self, &unk_100082263);
    if (!v4 || (-[MapsSuggestionsEntry iconData](self, "iconData"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqual:v5], v6, (v7 & 1) == 0))
    {
      v8 = [(MapsSuggestionsEntry *)self iconData];
      v9 = [UIImage imageWithData:v8];

      objc_setAssociatedObject(self, &unk_100082262, v9, 0x301);
      v10 = [(MapsSuggestionsEntry *)self iconData];
      objc_setAssociatedObject(self, &unk_100082263, v10, 0x301);

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

- (void)setIcon:(id)a3
{
  image = a3;
  v4 = objc_getAssociatedObject(self, &unk_100082262);
  if (image)
  {
    if (([(UIImage *)image isEqual:v4]& 1) == 0)
    {
      v5 = UIImagePNGRepresentation(image);
      [(MapsSuggestionsEntry *)self setIconData:v5];

      objc_setAssociatedObject(self, &unk_100082262, image, 0x301);
      v6 = [(MapsSuggestionsEntry *)self iconData];
      objc_setAssociatedObject(self, &unk_100082263, v6, 0x301);
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
  v3 = [(MapsSuggestionsEntry *)self type];
  if (v3 > 0x18)
  {
    goto LABEL_8;
  }

  if (((1 << v3) & 0x8018E) == 0)
  {
    if (v3 == 24)
    {
      v7 = +[GEOFeatureStyleAttributes sharedLocationStyleAttributes];
      if (v7)
      {
        goto LABEL_24;
      }

      goto LABEL_3;
    }

LABEL_8:
    v9 = [(MapsSuggestionsEntry *)self MKMapItem];
    v7 = [v9 _styleAttributes];

    if (v7)
    {
      goto LABEL_24;
    }
  }

LABEL_3:
  v4 = [(MapsSuggestionsEntry *)self type];
  v5 = [(MapsSuggestionsEntry *)self uniqueIdentifier];
  v6 = v5;
  v7 = 0;
  switch(v4)
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
      if ([v5 isEqualToString:@"NearbyTransit"])
      {
        v8 = +[GEOFeatureStyleAttributes nearbyTransitStyleAttributes];
LABEL_22:
        v7 = v8;
      }

      else
      {
        v7 = 0;
      }

LABEL_23:

      break;
    default:
      goto LABEL_23;
  }

LABEL_24:

  return v7;
}

- (NSString)poiTitle
{
  v3 = [(MapsSuggestionsEntry *)self type];
  if (v3 > 0x19)
  {
    v5 = 0;
  }

  else
  {
    if (((1 << v3) & 0x27E96F7) != 0)
    {
      v4 = [(MapsSuggestionsEntry *)self undecoratedTitle];
LABEL_4:
      v5 = v4;
      goto LABEL_5;
    }

    if (((1 << v3) & 0x1816108) != 0 && ([(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsEntryTitleNameKey"]& 1) != 0)
    {
      v4 = [(MapsSuggestionsEntry *)self stringForKey:@"MapsSuggestionsEntryTitleNameKey"];
      goto LABEL_4;
    }

    v7 = [(MapsSuggestionsEntry *)self MKMapItem];
    v5 = [v7 name];
  }

LABEL_5:

  return v5;
}

- (NSArray)waypoints
{
  v2 = sub_10007D18C(self);
  v3 = [v2 waypoints];

  return v3;
}

@end