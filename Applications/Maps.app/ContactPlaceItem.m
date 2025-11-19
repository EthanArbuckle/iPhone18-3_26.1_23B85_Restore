@interface ContactPlaceItem
- (id)name;
@end

@implementation ContactPlaceItem

- (id)name
{
  locationOfInterest = self->_locationOfInterest;
  if (locationOfInterest)
  {
    v4 = [(MapsLocationOfInterest *)locationOfInterest name];
  }

  else
  {
    if ([(ContactPlaceItem *)self isMeCard])
    {
      v5 = [(ContactPlaceItem *)self selectedAddress];

      if (v5)
      {
        v6 = [(ContactPlaceItem *)self selectedAddress];
        v7 = [v6 label];
        v8 = [CNLabeledValue localizedStringForLabel:v7];
        v9 = [v8 capitalizedString];

        goto LABEL_8;
      }
    }

    v11.receiver = self;
    v11.super_class = ContactPlaceItem;
    v4 = [(ContactPlaceItem *)&v11 name];
  }

  v9 = v4;
LABEL_8:

  return v9;
}

@end