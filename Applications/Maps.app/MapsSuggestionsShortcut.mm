@interface MapsSuggestionsShortcut
- (id)styleAttributes;
@end

@implementation MapsSuggestionsShortcut

- (id)styleAttributes
{
  v3 = [(MapsSuggestionsShortcut *)self type];
  if (v3 > 4)
  {
    if (v3 == 5)
    {
      v4 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
      goto LABEL_15;
    }

    if (v3 == 6)
    {
      v5 = [(MapsSuggestionsShortcut *)self identifier];
      v6 = [v5 isEqualToString:@"NearbyTransit"];

      if (v6)
      {
        v4 = +[GEOFeatureStyleAttributes nearbyTransitStyleAttributes];
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = +[GEOFeatureStyleAttributes homeStyleAttributes];
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = +[GEOFeatureStyleAttributes workStyleAttributes];
LABEL_15:
      v9 = v4;
      goto LABEL_16;
    }
  }

  v7 = [(MapsSuggestionsShortcut *)self geoMapItem];
  v8 = v7;
  if (!v7 || ([v7 _styleAttributes], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = +[GEOFeatureStyleAttributes markerStyleAttributes];
  }

LABEL_16:

  return v9;
}

@end