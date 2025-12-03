@interface MKMapItem
- (NSString)wc_localityName;
- (NSString)wc_weatherDisplayName;
@end

@implementation MKMapItem

- (NSString)wc_localityName
{
  placemark = [(MKMapItem *)self placemark];
  locality = [(MKMapItem *)placemark locality];
  v5 = [locality length];

  if (v5)
  {
    locality2 = [(MKMapItem *)placemark locality];
  }

  else
  {
    name = [(MKMapItem *)placemark name];
    v8 = [name length];

    if (v8)
    {
      selfCopy = placemark;
    }

    else
    {
      selfCopy = self;
    }

    locality2 = [(MKMapItem *)selfCopy name];
  }

  v10 = locality2;

  return v10;
}

- (NSString)wc_weatherDisplayName
{
  _weatherDisplayName = [(MKMapItem *)self _weatherDisplayName];
  v4 = [_weatherDisplayName length];

  if (v4)
  {
    _weatherDisplayName2 = [(MKMapItem *)self _weatherDisplayName];
LABEL_3:
    name2 = _weatherDisplayName2;
    goto LABEL_6;
  }

  placemark = [(MKMapItem *)self placemark];
  name = [placemark name];
  v9 = [name length];

  if (!v9)
  {
    _weatherDisplayName2 = [(MKMapItem *)self name];
    goto LABEL_3;
  }

  placemark2 = [(MKMapItem *)self placemark];
  name2 = [placemark2 name];

LABEL_6:

  return name2;
}

@end