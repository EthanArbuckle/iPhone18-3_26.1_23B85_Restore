@interface ContactPlaceItem
- (id)name;
@end

@implementation ContactPlaceItem

- (id)name
{
  locationOfInterest = self->_locationOfInterest;
  if (locationOfInterest)
  {
    name = [(MapsLocationOfInterest *)locationOfInterest name];
  }

  else
  {
    if ([(ContactPlaceItem *)self isMeCard])
    {
      selectedAddress = [(ContactPlaceItem *)self selectedAddress];

      if (selectedAddress)
      {
        selectedAddress2 = [(ContactPlaceItem *)self selectedAddress];
        label = [selectedAddress2 label];
        v8 = [CNLabeledValue localizedStringForLabel:label];
        capitalizedString = [v8 capitalizedString];

        goto LABEL_8;
      }
    }

    v11.receiver = self;
    v11.super_class = ContactPlaceItem;
    name = [(ContactPlaceItem *)&v11 name];
  }

  capitalizedString = name;
LABEL_8:

  return capitalizedString;
}

@end