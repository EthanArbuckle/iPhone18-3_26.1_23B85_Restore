@interface RAPPlaceCorrectableAddress
+ (id)emptyCorrectableAddress;
- (BOOL)isEdited;
- (NSArray)orderedCorrectableItems;
- (NSString)localizedTitle;
- (id)_createAndObserveStringOfKind:(int64_t)kind originalValue:(id)value;
- (id)_initWithMapItem:(id)item;
- (id)_initWithStreet:(id)street subPremise:(id)premise city:(id)city state:(id)state zipCode:(id)code country:(id)country addressFormattingLocaleIdentifier:(id)identifier;
- (id)_structuredAddress;
- (void)_invokeChangeHandlers;
- (void)_updateFreeformAddressWithStructuredChange;
- (void)addObserver:(id)observer changeHandler:(id)handler;
- (void)revertCorrections;
- (void)setAddressFormattingLocaleIdentifier:(id)identifier;
- (void)updateFreeformAddressFromMapItem:(id)item;
@end

@implementation RAPPlaceCorrectableAddress

- (void)updateFreeformAddressFromMapItem:(id)item
{
  v5 = [item _fullAddressWithMultiline:1];
  freeformAddress = [(RAPPlaceCorrectableAddress *)self freeformAddress];
  [freeformAddress setValue:v5];
}

- (void)setAddressFormattingLocaleIdentifier:(id)identifier
{
  if (self->_addressFormattingLocaleIdentifier != identifier)
  {
    v5 = [identifier copy];
    addressFormattingLocaleIdentifier = self->_addressFormattingLocaleIdentifier;
    self->_addressFormattingLocaleIdentifier = v5;

    [(RAPPlaceCorrectableAddress *)self _invokeChangeHandlers];
  }
}

- (BOOL)isEdited
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  orderedCorrectableItems = [(RAPPlaceCorrectableAddress *)self orderedCorrectableItems];
  v3 = [orderedCorrectableItems countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(orderedCorrectableItems);
        }

        if ([*(*(&v7 + 1) + 8 * i) isEdited])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [orderedCorrectableItems countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)revertCorrections
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  orderedCorrectableItems = [(RAPPlaceCorrectableAddress *)self orderedCorrectableItems];
  v3 = [orderedCorrectableItems countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(orderedCorrectableItems);
        }

        [*(*(&v7 + 1) + 8 * v6) revertCorrections];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [orderedCorrectableItems countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (NSString)localizedTitle
{
  kind = [(RAPPlaceCorrectableAddress *)self kind];
  if (kind <= 0x15 && ((0x30FFFFu >> kind) & 1) != 0)
  {
    v3 = off_101624FB0[kind];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_createAndObserveStringOfKind:(int64_t)kind originalValue:(id)value
{
  valueCopy = value;
  v7 = [[RAPPlaceCorrectableString alloc] initWithKind:kind originalValue:valueCopy];

  [(RAPPlaceCorrectableString *)v7 addObserver:self changeHandler:&stru_101624F50];

  return v7;
}

- (id)_structuredAddress
{
  v3 = objc_alloc_init(CNMutablePostalAddress);
  value = [(RAPPlaceCorrectableString *)self->_street value];
  [v3 setStreet:value];

  value2 = [(RAPPlaceCorrectableString *)self->_subPremise value];
  [v3 setSubAdministrativeArea:value2];

  value3 = [(RAPPlaceCorrectableString *)self->_city value];
  [v3 setCity:value3];

  value4 = [(RAPPlaceCorrectableString *)self->_state value];
  [v3 setState:value4];

  value5 = [(RAPPlaceCorrectableString *)self->_zipCode value];
  [v3 setPostalCode:value5];

  value6 = [(RAPPlaceCorrectableString *)self->_country value];
  [v3 setCountry:value6];

  [v3 setISOCountryCode:self->_addressFormattingLocaleIdentifier];
  v10 = objc_alloc_init(CNPostalAddressFormatter);
  v11 = [v10 stringFromPostalAddress:v3];

  return v11;
}

- (void)_updateFreeformAddressWithStructuredChange
{
  _structuredAddress = [(RAPPlaceCorrectableAddress *)self _structuredAddress];
  [(RAPPlaceCorrectableString *)self->_freeformAddress setValue:_structuredAddress];
}

- (NSArray)orderedCorrectableItems
{
  orderedCorrectableItems = self->_orderedCorrectableItems;
  if (!orderedCorrectableItems)
  {
    v8 = *&self->_street;
    city = self->_city;
    v10 = *&self->_state;
    country = self->_country;
    v12 = *&self->_freeformAddress;
    floorNumber = self->_floorNumber;
    unitNumber = self->_unitNumber;
    v14 = floorNumber;
    v5 = [NSArray arrayWithObjects:&v8 count:10];
    v6 = self->_orderedCorrectableItems;
    self->_orderedCorrectableItems = v5;

    orderedCorrectableItems = self->_orderedCorrectableItems;
  }

  return orderedCorrectableItems;
}

- (id)_initWithStreet:(id)street subPremise:(id)premise city:(id)city state:(id)state zipCode:(id)code country:(id)country addressFormattingLocaleIdentifier:(id)identifier
{
  streetCopy = street;
  premiseCopy = premise;
  cityCopy = city;
  stateCopy = state;
  codeCopy = code;
  countryCopy = country;
  identifierCopy = identifier;
  v56.receiver = self;
  v56.super_class = RAPPlaceCorrectableAddress;
  v22 = [(RAPPlaceCorrectableAddress *)&v56 init];
  v23 = v22;
  if (v22)
  {
    v22->_kind = 1;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1006634F0;
    v54[3] = &unk_101624F30;
    v52 = stateCopy;
    v24 = cityCopy;
    v25 = streetCopy;
    v26 = v22;
    v55 = v26;
    v53 = premiseCopy;
    v27 = objc_retainBlock(v54);
    v28 = (v27[2])(v27, 8, v25);
    street = v26->_street;
    v26->_street = v28;

    v30 = (v27[2])(v27, 9, v53);
    subPremise = v26->_subPremise;
    v26->_subPremise = v30;

    v32 = (v27[2])(v27, 11, v24);
    city = v26->_city;
    v26->_city = v32;

    v34 = (v27[2])(v27, 12, v52);
    state = v26->_state;
    v26->_state = v34;

    v36 = (v27[2])(v27, 13, codeCopy);
    zipCode = v26->_zipCode;
    v26->_zipCode = v36;

    v38 = (v27[2])(v27, 14, countryCopy);
    country = v26->_country;
    v26->_country = v38;

    _structuredAddress = [(RAPPlaceCorrectableAddress *)v26 _structuredAddress];
    v41 = (v27[2])(v27, 16, _structuredAddress);
    freeformAddress = v26->_freeformAddress;
    v26->_freeformAddress = v41;

    v43 = (v27[2])(v27, 17, &stru_1016631F0);
    buildingNumber = v26->_buildingNumber;
    v26->_buildingNumber = v43;

    v45 = (v27[2])(v27, 19, &stru_1016631F0);
    unitNumber = v26->_unitNumber;
    v26->_unitNumber = v45;

    v47 = (v27[2])(v27, 18, &stru_1016631F0);
    floorNumber = v26->_floorNumber;
    v26->_floorNumber = v47;

    v49 = [identifierCopy copy];
    addressFormattingLocaleIdentifier = v26->_addressFormattingLocaleIdentifier;
    v26->_addressFormattingLocaleIdentifier = v49;
    streetCopy = v25;
    cityCopy = v24;
    stateCopy = v52;

    premiseCopy = v53;
  }

  return v23;
}

- (id)_initWithMapItem:(id)item
{
  itemCopy = item;
  v5 = [(RAPPlaceCorrectableAddress *)self _initWithStreet:0 subPremise:0 city:0 state:0 zipCode:0 country:0 addressFormattingLocaleIdentifier:0];
  if (v5)
  {
    _geoMapItem = [itemCopy _geoMapItem];
    addressObject = [_geoMapItem addressObject];
    v8 = [addressObject fullAddressWithMultiline:1];

    v9 = [v5 _createAndObserveStringOfKind:16 originalValue:v8];
    v10 = v5[11];
    v5[11] = v9;
  }

  return v5;
}

- (void)_invokeChangeHandlers
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keyEnumerator = [(NSMapTable *)self->_observers keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_observers objectForKey:v8];
        (v9)[2](v9, self, v8);
      }

      v5 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)addObserver:(id)observer changeHandler:(id)handler
{
  observerCopy = observer;
  handlerCopy = handler;
  observers = self->_observers;
  if (!observers)
  {
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = v8;

    observers = self->_observers;
  }

  v10 = [handlerCopy copy];
  [(NSMapTable *)observers setObject:v10 forKey:observerCopy];
}

+ (id)emptyCorrectableAddress
{
  v2 = [[RAPPlaceCorrectableAddress alloc] _initWithStreet:0 subPremise:0 city:0 state:0 zipCode:0 country:0 addressFormattingLocaleIdentifier:0];

  return v2;
}

@end