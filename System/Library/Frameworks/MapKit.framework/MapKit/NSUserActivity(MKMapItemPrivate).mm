@interface NSUserActivity(MKMapItemPrivate)
- (void)_mapkit_clearMapItemDonationFields;
- (void)_mapkit_populateFieldsForDonationOfMapItem:()MKMapItemPrivate;
@end

@implementation NSUserActivity(MKMapItemPrivate)

- (void)_mapkit_clearMapItemDonationFields
{
  v4 = objc_getAssociatedObject(self, &_MKMapItemUserActivityForwardCountKey);
  integerValue = [v4 integerValue];
  objc_setAssociatedObject(self, &_MKMapItemUserActivityForwardCountKey, 0, 0x301);
  if (integerValue >= 1)
  {
    _internalUserActivity = [self _internalUserActivity];
    [_internalUserActivity updateForwardToCoreSpotlightIndexer:-integerValue];
  }
}

- (void)_mapkit_populateFieldsForDonationOfMapItem:()MKMapItemPrivate
{
  v40[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    contentAttributeSet = [self contentAttributeSet];
    v6 = [contentAttributeSet copy];

    if (!v6)
    {
      v36 = 0;
      v37 = &v36;
      v38 = 0x2050000000;
      v7 = getCSSearchableItemAttributeSetClass_softClass;
      v39 = getCSSearchableItemAttributeSetClass_softClass;
      if (!getCSSearchableItemAttributeSetClass_softClass)
      {
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __getCSSearchableItemAttributeSetClass_block_invoke;
        v35[3] = &unk_1E76CD7B0;
        v35[4] = &v36;
        __getCSSearchableItemAttributeSetClass_block_invoke(v35);
        v7 = v37[3];
      }

      v8 = v7;
      _Block_object_dispose(&v36, 8);
      v9 = [v8 alloc];
      activityType = [self activityType];
      v6 = [v9 initWithItemContentType:activityType];
    }

    name = [v4 name];
    [v6 setNamedLocation:name];

    v12 = MEMORY[0x1E696AD98];
    [v4 _coordinate];
    v13 = [v12 numberWithDouble:?];
    [v6 setLatitude:v13];

    v14 = MEMORY[0x1E696AD98];
    [v4 _coordinate];
    v16 = [v14 numberWithDouble:v15];
    [v6 setLongitude:v16];

    phoneNumber = [v4 phoneNumber];
    v18 = [phoneNumber length];

    if (v18)
    {
      phoneNumbers = [v6 phoneNumbers];
      if ([phoneNumbers count])
      {
        phoneNumbers2 = [v6 phoneNumbers];
        phoneNumber2 = [v4 phoneNumber];
        v22 = [phoneNumbers2 arrayByAddingObject:phoneNumber2];
        [v6 setPhoneNumbers:v22];
      }

      else
      {
        phoneNumbers2 = [v4 phoneNumber];
        v40[0] = phoneNumbers2;
        phoneNumber2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
        [v6 setPhoneNumbers:phoneNumber2];
      }
    }

    placemark = [v4 placemark];
    thoroughfare = [placemark thoroughfare];
    [v6 setThoroughfare:thoroughfare];

    subThoroughfare = [placemark subThoroughfare];
    [v6 setSubThoroughfare:subThoroughfare];

    postalCode = [placemark postalCode];
    [v6 setPostalCode:postalCode];

    locality = [placemark locality];
    [v6 setCity:locality];

    administrativeArea = [placemark administrativeArea];
    [v6 setStateOrProvince:administrativeArea];

    country = [placemark country];
    [v6 setCountry:country];

    _addressFormattedAsSinglelineAddress = [v4 _addressFormattedAsSinglelineAddress];
    [v6 setFullyFormattedAddress:_addressFormattedAsSinglelineAddress];

    [self setContentAttributeSet:v6];
    v31 = objc_getAssociatedObject(self, &_MKMapItemUserActivityForwardCountKey);
    v32 = [v31 integerValue] + 1;
    v33 = [MEMORY[0x1E696AD98] numberWithInteger:v32];
    objc_setAssociatedObject(self, &_MKMapItemUserActivityForwardCountKey, v33, 0x301);

    _internalUserActivity = [self _internalUserActivity];
    [_internalUserActivity updateForwardToCoreSpotlightIndexer:v32];
  }
}

@end