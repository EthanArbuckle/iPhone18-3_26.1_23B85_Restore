@interface RAPPlaceCorrectableAddress
+ (id)emptyCorrectableAddress;
- (BOOL)isEdited;
- (NSArray)orderedCorrectableItems;
- (NSString)localizedTitle;
- (id)_createAndObserveStringOfKind:(int64_t)a3 originalValue:(id)a4;
- (id)_initWithMapItem:(id)a3;
- (id)_initWithStreet:(id)a3 subPremise:(id)a4 city:(id)a5 state:(id)a6 zipCode:(id)a7 country:(id)a8 addressFormattingLocaleIdentifier:(id)a9;
- (id)_structuredAddress;
- (void)_invokeChangeHandlers;
- (void)_updateFreeformAddressWithStructuredChange;
- (void)addObserver:(id)a3 changeHandler:(id)a4;
- (void)revertCorrections;
- (void)setAddressFormattingLocaleIdentifier:(id)a3;
- (void)updateFreeformAddressFromMapItem:(id)a3;
@end

@implementation RAPPlaceCorrectableAddress

- (void)updateFreeformAddressFromMapItem:(id)a3
{
  v5 = [a3 _fullAddressWithMultiline:1];
  v4 = [(RAPPlaceCorrectableAddress *)self freeformAddress];
  [v4 setValue:v5];
}

- (void)setAddressFormattingLocaleIdentifier:(id)a3
{
  if (self->_addressFormattingLocaleIdentifier != a3)
  {
    v5 = [a3 copy];
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
  v2 = [(RAPPlaceCorrectableAddress *)self orderedCorrectableItems];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isEdited])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  v2 = [(RAPPlaceCorrectableAddress *)self orderedCorrectableItems];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) revertCorrections];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (NSString)localizedTitle
{
  v2 = [(RAPPlaceCorrectableAddress *)self kind];
  if (v2 <= 0x15 && ((0x30FFFFu >> v2) & 1) != 0)
  {
    v3 = off_101624FB0[v2];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_createAndObserveStringOfKind:(int64_t)a3 originalValue:(id)a4
{
  v6 = a4;
  v7 = [[RAPPlaceCorrectableString alloc] initWithKind:a3 originalValue:v6];

  [(RAPPlaceCorrectableString *)v7 addObserver:self changeHandler:&stru_101624F50];

  return v7;
}

- (id)_structuredAddress
{
  v3 = objc_alloc_init(CNMutablePostalAddress);
  v4 = [(RAPPlaceCorrectableString *)self->_street value];
  [v3 setStreet:v4];

  v5 = [(RAPPlaceCorrectableString *)self->_subPremise value];
  [v3 setSubAdministrativeArea:v5];

  v6 = [(RAPPlaceCorrectableString *)self->_city value];
  [v3 setCity:v6];

  v7 = [(RAPPlaceCorrectableString *)self->_state value];
  [v3 setState:v7];

  v8 = [(RAPPlaceCorrectableString *)self->_zipCode value];
  [v3 setPostalCode:v8];

  v9 = [(RAPPlaceCorrectableString *)self->_country value];
  [v3 setCountry:v9];

  [v3 setISOCountryCode:self->_addressFormattingLocaleIdentifier];
  v10 = objc_alloc_init(CNPostalAddressFormatter);
  v11 = [v10 stringFromPostalAddress:v3];

  return v11;
}

- (void)_updateFreeformAddressWithStructuredChange
{
  v3 = [(RAPPlaceCorrectableAddress *)self _structuredAddress];
  [(RAPPlaceCorrectableString *)self->_freeformAddress setValue:v3];
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

- (id)_initWithStreet:(id)a3 subPremise:(id)a4 city:(id)a5 state:(id)a6 zipCode:(id)a7 country:(id)a8 addressFormattingLocaleIdentifier:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
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
    v52 = v18;
    v24 = v17;
    v25 = v15;
    v26 = v22;
    v55 = v26;
    v53 = v16;
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

    v36 = (v27[2])(v27, 13, v19);
    zipCode = v26->_zipCode;
    v26->_zipCode = v36;

    v38 = (v27[2])(v27, 14, v20);
    country = v26->_country;
    v26->_country = v38;

    v40 = [(RAPPlaceCorrectableAddress *)v26 _structuredAddress];
    v41 = (v27[2])(v27, 16, v40);
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

    v49 = [v21 copy];
    addressFormattingLocaleIdentifier = v26->_addressFormattingLocaleIdentifier;
    v26->_addressFormattingLocaleIdentifier = v49;
    v15 = v25;
    v17 = v24;
    v18 = v52;

    v16 = v53;
  }

  return v23;
}

- (id)_initWithMapItem:(id)a3
{
  v4 = a3;
  v5 = [(RAPPlaceCorrectableAddress *)self _initWithStreet:0 subPremise:0 city:0 state:0 zipCode:0 country:0 addressFormattingLocaleIdentifier:0];
  if (v5)
  {
    v6 = [v4 _geoMapItem];
    v7 = [v6 addressObject];
    v8 = [v7 fullAddressWithMultiline:1];

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
  v3 = [(NSMapTable *)self->_observers keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_observers objectForKey:v8];
        (v9)[2](v9, self, v8);
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)addObserver:(id)a3 changeHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  observers = self->_observers;
  if (!observers)
  {
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = v8;

    observers = self->_observers;
  }

  v10 = [v6 copy];
  [(NSMapTable *)observers setObject:v10 forKey:v11];
}

+ (id)emptyCorrectableAddress
{
  v2 = [[RAPPlaceCorrectableAddress alloc] _initWithStreet:0 subPremise:0 city:0 state:0 zipCode:0 country:0 addressFormattingLocaleIdentifier:0];

  return v2;
}

@end