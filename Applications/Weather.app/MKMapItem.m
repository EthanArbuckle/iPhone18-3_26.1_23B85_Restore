@interface MKMapItem
- (NSString)wc_localityName;
- (NSString)wc_weatherDisplayName;
@end

@implementation MKMapItem

- (NSString)wc_localityName
{
  v3 = [(MKMapItem *)self placemark];
  v4 = [(MKMapItem *)v3 locality];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(MKMapItem *)v3 locality];
  }

  else
  {
    v7 = [(MKMapItem *)v3 name];
    v8 = [v7 length];

    if (v8)
    {
      v9 = v3;
    }

    else
    {
      v9 = self;
    }

    v6 = [(MKMapItem *)v9 name];
  }

  v10 = v6;

  return v10;
}

- (NSString)wc_weatherDisplayName
{
  v3 = [(MKMapItem *)self _weatherDisplayName];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(MKMapItem *)self _weatherDisplayName];
LABEL_3:
    v6 = v5;
    goto LABEL_6;
  }

  v7 = [(MKMapItem *)self placemark];
  v8 = [v7 name];
  v9 = [v8 length];

  if (!v9)
  {
    v5 = [(MKMapItem *)self name];
    goto LABEL_3;
  }

  v10 = [(MKMapItem *)self placemark];
  v6 = [v10 name];

LABEL_6:

  return v6;
}

@end