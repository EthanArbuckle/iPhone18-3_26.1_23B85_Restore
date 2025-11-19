@interface MapsSuggestionsLocationOfInterest
- (id)styleAttributes;
@end

@implementation MapsSuggestionsLocationOfInterest

- (id)styleAttributes
{
  v2 = [(MapsSuggestionsLocationOfInterest *)self type];
  v3 = 0;
  if (v2 <= 0)
  {
    if (v2 != -1)
    {
      if (!v2)
      {
        v3 = +[GEOFeatureStyleAttributes homeStyleAttributes];
      }

      goto LABEL_12;
    }

LABEL_9:
    v3 = +[GEOFeatureStyleAttributes markerStyleAttributes];
    goto LABEL_12;
  }

  if (v2 == 1)
  {
    v3 = +[GEOFeatureStyleAttributes workStyleAttributes];
    goto LABEL_12;
  }

  if (v2 == 2)
  {
    v3 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
    goto LABEL_12;
  }

  if (v2 == 3)
  {
    goto LABEL_9;
  }

LABEL_12:

  return v3;
}

@end