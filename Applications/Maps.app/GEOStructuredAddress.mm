@interface GEOStructuredAddress
- (id)_cellContent_subtitleWithTitle:(id)title;
- (id)localityWithFallback:(BOOL)fallback;
@end

@implementation GEOStructuredAddress

- (id)_cellContent_subtitleWithTitle:(id)title
{
  titleCopy = title;
  administrativeArea = [(GEOStructuredAddress *)self administrativeArea];
  if ([administrativeArea length])
  {
    v6 = administrativeArea;
  }

  else
  {
    v6 = 0;
  }

  country = [(GEOStructuredAddress *)self country];
  uppercaseString = [v6 uppercaseString];
  if (uppercaseString)
  {
    v9 = uppercaseString;
    uppercaseString2 = [titleCopy uppercaseString];
    uppercaseString3 = [v6 uppercaseString];
    if (![uppercaseString2 isEqualToString:uppercaseString3] && objc_msgSend(v6, "length"))
    {

LABEL_13:
      goto LABEL_14;
    }

    v12 = [country length];

    if (!v12)
    {
      goto LABEL_14;
    }

LABEL_12:
    v9 = v6;
    v6 = country;
    goto LABEL_13;
  }

  if (![v6 length] && objc_msgSend(country, "length"))
  {
    goto LABEL_12;
  }

LABEL_14:
  v13 = v6;

  return v6;
}

- (id)localityWithFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  if ([(GEOStructuredAddress *)self hasLocality])
  {
    locality = [(GEOStructuredAddress *)self locality];
  }

  else if (fallbackCopy)
  {
    if ([(GEOStructuredAddress *)self hasSubAdministrativeArea])
    {
      locality = [(GEOStructuredAddress *)self subAdministrativeArea];
    }

    else
    {
      if ([(GEOStructuredAddress *)self hasAdministrativeArea])
      {
        [(GEOStructuredAddress *)self administrativeArea];
      }

      else
      {
        [(GEOStructuredAddress *)self country];
      }
      locality = ;
    }
  }

  else
  {
    locality = 0;
  }

  return locality;
}

@end