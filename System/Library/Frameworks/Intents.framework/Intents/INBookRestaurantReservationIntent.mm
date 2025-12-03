@interface INBookRestaurantReservationIntent
+ (id)intentDescription;
- (BOOL)isEqual:(id)equal;
- (INBookRestaurantReservationIntent)initWithCoder:(id)coder;
- (INBookRestaurantReservationIntent)initWithRestaurant:(INRestaurant *)restaurant bookingDateComponents:(NSDateComponents *)bookingDateComponents partySize:(NSUInteger)partySize bookingIdentifier:(NSString *)bookingIdentifier guest:(INRestaurantGuest *)guest selectedOffer:(INRestaurantOffer *)selectedOffer guestProvidedSpecialRequestText:(NSString *)guestProvidedSpecialRequestText;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INBookRestaurantReservationIntent

- (id)_dictionaryRepresentation
{
  v22[7] = *MEMORY[0x1E69E9840];
  restaurant = self->_restaurant;
  v20 = restaurant;
  v21[0] = @"restaurant";
  if (!restaurant)
  {
    restaurant = [MEMORY[0x1E695DFB0] null];
  }

  v18 = restaurant;
  v22[0] = restaurant;
  v21[1] = @"bookingDateComponents";
  bookingDateComponents = self->_bookingDateComponents;
  null = bookingDateComponents;
  if (!bookingDateComponents)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = null;
  v21[2] = @"partySize";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_partySize, null}];
  v22[2] = v19;
  v21[3] = @"bookingIdentifier";
  bookingIdentifier = self->_bookingIdentifier;
  null2 = bookingIdentifier;
  if (!bookingIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[3] = null2;
  v21[4] = @"guest";
  guest = self->_guest;
  null3 = guest;
  if (!guest)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = null3;
  v21[5] = @"selectedOffer";
  selectedOffer = self->_selectedOffer;
  null4 = selectedOffer;
  if (!selectedOffer)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22[5] = null4;
  v21[6] = @"guestProvidedSpecialRequestText";
  guestProvidedSpecialRequestText = self->_guestProvidedSpecialRequestText;
  null5 = guestProvidedSpecialRequestText;
  if (!guestProvidedSpecialRequestText)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v22[6] = null5;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:7];
  if (guestProvidedSpecialRequestText)
  {
    if (selectedOffer)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (selectedOffer)
    {
LABEL_15:
      if (guest)
      {
        goto LABEL_16;
      }

LABEL_26:

      if (bookingIdentifier)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }
  }

  if (!guest)
  {
    goto LABEL_26;
  }

LABEL_16:
  if (bookingIdentifier)
  {
    goto LABEL_17;
  }

LABEL_27:

LABEL_17:
  if (!bookingDateComponents)
  {
  }

  if (!v20)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = INBookRestaurantReservationIntent;
  v4 = [(INIntent *)&v13 copyWithZone:zone];
  restaurant = [(INBookRestaurantReservationIntent *)self restaurant];
  [v4 setRestaurant:restaurant];

  bookingDateComponents = [(INBookRestaurantReservationIntent *)self bookingDateComponents];
  [v4 setBookingDateComponents:bookingDateComponents];

  [v4 setPartySize:{-[INBookRestaurantReservationIntent partySize](self, "partySize")}];
  bookingIdentifier = [(INBookRestaurantReservationIntent *)self bookingIdentifier];
  [v4 setBookingIdentifier:bookingIdentifier];

  guest = [(INBookRestaurantReservationIntent *)self guest];
  [v4 setGuest:guest];

  guestProvidedSpecialRequestText = [(INBookRestaurantReservationIntent *)self guestProvidedSpecialRequestText];
  [v4 setGuestProvidedSpecialRequestText:guestProvidedSpecialRequestText];

  selectedOffer = [(INBookRestaurantReservationIntent *)self selectedOffer];
  [v4 setSelectedOffer:selectedOffer];

  bookingDate = [(INBookRestaurantReservationIntent *)self bookingDate];
  [v4 setBookingDate:bookingDate];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
    goto LABEL_40;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v12) = 0;
    goto LABEL_40;
  }

  v10 = v9;
  bookingIdentifier = [(INBookRestaurantReservationIntent *)self bookingIdentifier];
  if (!bookingIdentifier)
  {
    bookingIdentifier2 = [(INBookRestaurantReservationIntent *)v10 bookingIdentifier];
    if (!bookingIdentifier2)
    {
      v28 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  bookingIdentifier3 = [(INBookRestaurantReservationIntent *)self bookingIdentifier];
  bookingIdentifier4 = [(INBookRestaurantReservationIntent *)v10 bookingIdentifier];
  if (bookingIdentifier4)
  {
    bookingIdentifier5 = [(INBookRestaurantReservationIntent *)v10 bookingIdentifier];
    v28 = [bookingIdentifier3 isEqualToString:bookingIdentifier5];
  }

  else
  {
    v28 = [bookingIdentifier3 isEqualToString:&stru_1F01E0850];
  }

  if (!bookingIdentifier)
  {
    goto LABEL_14;
  }

LABEL_15:

  guest = [(INBookRestaurantReservationIntent *)self guest];
  if (!guest)
  {
    bookingIdentifier3 = [(INBookRestaurantReservationIntent *)v10 guest];
    if (!bookingIdentifier3)
    {
      v14 = 1;
LABEL_20:

      goto LABEL_21;
    }
  }

  bookingIdentifier4 = [(INBookRestaurantReservationIntent *)self guest];
  bookingIdentifier5 = [(INBookRestaurantReservationIntent *)v10 guest];
  v14 = [bookingIdentifier4 isEqual:bookingIdentifier5];

  if (!guest)
  {
    goto LABEL_20;
  }

LABEL_21:

  guestProvidedSpecialRequestText = [(INBookRestaurantReservationIntent *)self guestProvidedSpecialRequestText];
  if (!guestProvidedSpecialRequestText)
  {
    bookingIdentifier4 = [(INBookRestaurantReservationIntent *)v10 guestProvidedSpecialRequestText];
    if (!bookingIdentifier4)
    {
      v18 = 1;
LABEL_29:

      goto LABEL_30;
    }
  }

  bookingIdentifier5 = [(INBookRestaurantReservationIntent *)self guestProvidedSpecialRequestText];
  guestProvidedSpecialRequestText2 = [(INBookRestaurantReservationIntent *)v10 guestProvidedSpecialRequestText];
  if (guestProvidedSpecialRequestText2)
  {
    guestProvidedSpecialRequestText3 = [(INBookRestaurantReservationIntent *)v10 guestProvidedSpecialRequestText];
    v18 = [bookingIdentifier5 isEqualToString:guestProvidedSpecialRequestText3];
  }

  else
  {
    v18 = [bookingIdentifier5 isEqualToString:&stru_1F01E0850];
  }

  if (!guestProvidedSpecialRequestText)
  {
    goto LABEL_29;
  }

LABEL_30:

  selectedOffer = [(INBookRestaurantReservationIntent *)self selectedOffer];
  if (!selectedOffer)
  {
    bookingIdentifier5 = [(INBookRestaurantReservationIntent *)v10 selectedOffer];
    if (!bookingIdentifier5)
    {
      v22 = 1;
LABEL_35:

      goto LABEL_36;
    }
  }

  selectedOffer2 = [(INBookRestaurantReservationIntent *)self selectedOffer];
  selectedOffer3 = [(INBookRestaurantReservationIntent *)v10 selectedOffer];
  v22 = [selectedOffer2 isEqual:selectedOffer3];

  if (!selectedOffer)
  {
    goto LABEL_35;
  }

LABEL_36:

  restaurant = [(INBookRestaurantReservationIntent *)self restaurant];
  restaurant2 = [(INBookRestaurantReservationIntent *)v10 restaurant];
  if ([restaurant isEqual:restaurant2])
  {
    bookingDateComponents = [(INBookRestaurantReservationIntent *)self bookingDateComponents];
    bookingDateComponents2 = [(INBookRestaurantReservationIntent *)v10 bookingDateComponents];
    v12 = [bookingDateComponents isEqual:bookingDateComponents2] & v28 & v14 & v18 & v22;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

LABEL_40:
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INBookRestaurantReservationIntent;
  coderCopy = coder;
  [(INIntent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_bookingDate forKey:{@"bookingDate", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_restaurant forKey:@"restaurant"];
  [coderCopy encodeObject:self->_bookingDateComponents forKey:@"bookingDateComponents"];
  [coderCopy encodeInteger:self->_partySize forKey:@"partySize"];
  [coderCopy encodeObject:self->_bookingIdentifier forKey:@"bookingIdentifier"];
  [coderCopy encodeObject:self->_guest forKey:@"guest"];
  [coderCopy encodeObject:self->_guestProvidedSpecialRequestText forKey:@"guestProvidedSpecialRequestText"];
  [coderCopy encodeObject:self->_selectedOffer forKey:@"selectedOffer"];
}

- (INBookRestaurantReservationIntent)initWithCoder:(id)coder
{
  v29 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = INBookRestaurantReservationIntent;
  v5 = [(INIntent *)&v24 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restaurant"];
  if (!v6)
  {
    v21 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      v20 = 0;
      goto LABEL_10;
    }

    *buf = 136315394;
    v26 = "[INBookRestaurantReservationIntent initWithCoder:]";
    v27 = 2080;
    v28 = "_restaurant";
LABEL_12:
    _os_log_error_impl(&dword_18E991000, v21, OS_LOG_TYPE_ERROR, "%s Null value for %s", buf, 0x16u);
    goto LABEL_9;
  }

  restaurant = v5->_restaurant;
  v5->_restaurant = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookingDateComponents"];
  if (!v8)
  {
    v21 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136315394;
    v26 = "[INBookRestaurantReservationIntent initWithCoder:]";
    v27 = 2080;
    v28 = "_bookingDateComponents";
    goto LABEL_12;
  }

  bookingDateComponents = v5->_bookingDateComponents;
  v5->_bookingDateComponents = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookingDate"];
  bookingDate = v5->_bookingDate;
  v5->_bookingDate = v10;

  v5->_partySize = [coderCopy decodeIntegerForKey:@"partySize"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookingIdentifier"];
  bookingIdentifier = v5->_bookingIdentifier;
  v5->_bookingIdentifier = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guest"];
  guest = v5->_guest;
  v5->_guest = v14;

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guestProvidedSpecialRequestText"];
  guestProvidedSpecialRequestText = v5->_guestProvidedSpecialRequestText;
  v5->_guestProvidedSpecialRequestText = v16;

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedOffer"];
  selectedOffer = v5->_selectedOffer;
  v5->_selectedOffer = v18;

LABEL_5:
  v20 = v5;
LABEL_10:

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (INBookRestaurantReservationIntent)initWithRestaurant:(INRestaurant *)restaurant bookingDateComponents:(NSDateComponents *)bookingDateComponents partySize:(NSUInteger)partySize bookingIdentifier:(NSString *)bookingIdentifier guest:(INRestaurantGuest *)guest selectedOffer:(INRestaurantOffer *)selectedOffer guestProvidedSpecialRequestText:(NSString *)guestProvidedSpecialRequestText
{
  v15 = restaurant;
  v16 = bookingDateComponents;
  v17 = bookingIdentifier;
  v18 = guest;
  v19 = selectedOffer;
  v20 = guestProvidedSpecialRequestText;
  v24.receiver = self;
  v24.super_class = INBookRestaurantReservationIntent;
  v21 = [(INIntent *)&v24 init];
  v22 = v21;
  if (v21)
  {
    [(INBookRestaurantReservationIntent *)v21 setRestaurant:v15];
    [(INBookRestaurantReservationIntent *)v22 setBookingDateComponents:v16];
    [(INBookRestaurantReservationIntent *)v22 setPartySize:partySize];
    [(INBookRestaurantReservationIntent *)v22 setBookingIdentifier:v17];
    [(INBookRestaurantReservationIntent *)v22 setGuest:v18];
    [(INBookRestaurantReservationIntent *)v22 setSelectedOffer:v19];
    [(INBookRestaurantReservationIntent *)v22 setGuestProvidedSpecialRequestText:v20];
  }

  return v22;
}

+ (id)intentDescription
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__INBookRestaurantReservationIntent_intentDescription__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (intentDescription_onceToken_64210 != -1)
  {
    dispatch_once(&intentDescription_onceToken_64210, block);
  }

  v2 = intentDescription_intentDescription_64211;

  return v2;
}

void __54__INBookRestaurantReservationIntent_intentDescription__block_invoke()
{
  v12[7] = *MEMORY[0x1E69E9840];
  v11[0] = @"restaurant";
  v0 = [[INIntentSlotDescription alloc] initWithName:@"restaurant" tag:1 facadePropertyName:@"restaurant" dataPropertyName:0 isExtended:0 isPrivate:0 valueType:0 valueStyle:2 defaultValueSelectorStrings:&unk_1F02DBAA8 provideOptionsSelectorStrings:&unk_1F02DBAC0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRestaurantForBookRestaurantReservation_withCompletion_, 0];
  v12[0] = v0;
  v11[1] = @"bookingDateComponents";
  v1 = [[INIntentSlotDescription alloc] initWithName:@"bookingDateComponents" tag:2 facadePropertyName:@"bookingDateComponents" dataPropertyName:0 isExtended:0 isPrivate:0 valueType:14 valueStyle:2 defaultValueSelectorStrings:&unk_1F02DBAD8 provideOptionsSelectorStrings:&unk_1F02DBAF0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveBookingDateComponentsForBookRestaurantReservation_withCompletion_, 0];
  v12[1] = v1;
  v11[2] = @"partySize";
  v2 = [[INIntentSlotDescription alloc] initWithName:@"partySize" tag:3 facadePropertyName:@"partySize" dataPropertyName:0 isExtended:0 isPrivate:0 valueType:8 valueStyle:2 defaultValueSelectorStrings:&unk_1F02DBB08 provideOptionsSelectorStrings:&unk_1F02DBB20 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePartySizeForBookRestaurantReservation_withCompletion_, 0];
  v12[2] = v2;
  v11[3] = @"bookingIdentifier";
  v3 = [[INIntentSlotDescription alloc] initWithName:@"bookingIdentifier" tag:4 facadePropertyName:@"bookingIdentifier" dataPropertyName:0 isExtended:0 isPrivate:1 valueType:30 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v12[3] = v3;
  v11[4] = @"guest";
  v4 = [[INIntentSlotDescription alloc] initWithName:@"guest" tag:5 facadePropertyName:@"guest" dataPropertyName:0 isExtended:0 isPrivate:0 valueType:0 valueStyle:2 defaultValueSelectorStrings:&unk_1F02DBB38 provideOptionsSelectorStrings:&unk_1F02DBB50 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveGuestForBookRestaurantReservation_withCompletion_, 0];
  v12[4] = v4;
  v11[5] = @"selectedOffer";
  v5 = [[INIntentSlotDescription alloc] initWithName:@"selectedOffer" tag:6 facadePropertyName:@"selectedOffer" dataPropertyName:0 isExtended:0 isPrivate:1 valueType:0 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v12[5] = v5;
  v11[6] = @"guestProvidedSpecialRequestText";
  v6 = [[INIntentSlotDescription alloc] initWithName:@"guestProvidedSpecialRequestText" tag:7 facadePropertyName:@"guestProvidedSpecialRequestText" dataPropertyName:0 isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DBB68 provideOptionsSelectorStrings:&unk_1F02DBB80 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveGuestProvidedSpecialRequestTextForBookRestaurantReservation_withCompletion_, 0];
  v12[6] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:7];

  v8 = [[INIntentDescription alloc] initWithName:@"BookRestaurantReservationIntent" responseName:@"BookRestaurantReservationIntentResponse" facadeClass:objc_opt_class() dataClass:0 type:0 isPrivate:0 handleSelector:sel_handleBookRestaurantReservation_completion_ confirmSelector:sel_confirmBookRestaurantReservation_completion_ slotsByName:v7];
  v9 = intentDescription_intentDescription_64211;
  intentDescription_intentDescription_64211 = v8;

  v10 = *MEMORY[0x1E69E9840];
}

@end