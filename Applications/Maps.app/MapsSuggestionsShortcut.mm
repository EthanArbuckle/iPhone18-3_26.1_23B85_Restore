@interface MapsSuggestionsShortcut
- (id)styleAttributes;
@end

@implementation MapsSuggestionsShortcut

- (id)styleAttributes
{
  type = [(MapsSuggestionsShortcut *)self type];
  if (type > 4)
  {
    if (type == 5)
    {
      v4 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
      goto LABEL_15;
    }

    if (type == 6)
    {
      identifier = [(MapsSuggestionsShortcut *)self identifier];
      v6 = [identifier isEqualToString:@"NearbyTransit"];

      if (v6)
      {
        v4 = +[GEOFeatureStyleAttributes nearbyTransitStyleAttributes];
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (type == 2)
    {
      v4 = +[GEOFeatureStyleAttributes homeStyleAttributes];
      goto LABEL_15;
    }

    if (type == 3)
    {
      v4 = +[GEOFeatureStyleAttributes workStyleAttributes];
LABEL_15:
      v9 = v4;
      goto LABEL_16;
    }
  }

  geoMapItem = [(MapsSuggestionsShortcut *)self geoMapItem];
  v8 = geoMapItem;
  if (!geoMapItem || ([geoMapItem _styleAttributes], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = +[GEOFeatureStyleAttributes markerStyleAttributes];
  }

LABEL_16:

  return v9;
}

@end