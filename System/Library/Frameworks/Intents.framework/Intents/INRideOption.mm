@interface INRideOption
- (BOOL)isEqual:(id)equal;
- (INRideOption)initWithCoder:(NSCoder *)decoder;
- (INRideOption)initWithName:(NSString *)name estimatedPickupDate:(NSDate *)estimatedPickupDate;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
- (void)setAvailablePartySizeOptions:(NSArray *)availablePartySizeOptions;
- (void)setFareLineItems:(NSArray *)fareLineItems;
- (void)setIdentifier:(NSString *)identifier;
@end

@implementation INRideOption

- (id)_dictionaryRepresentation
{
  v37[11] = *MEMORY[0x1E69E9840];
  name = self->_name;
  null = name;
  v36[0] = @"name";
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v37[0] = null;
  v36[1] = @"estimatedPickupDate";
  estimatedPickupDate = self->_estimatedPickupDate;
  v33 = estimatedPickupDate;
  if (!estimatedPickupDate)
  {
    estimatedPickupDate = [MEMORY[0x1E695DFB0] null];
  }

  v37[1] = estimatedPickupDate;
  v36[2] = @"priceRange";
  priceRange = self->_priceRange;
  v32 = priceRange;
  if (!priceRange)
  {
    priceRange = [MEMORY[0x1E695DFB0] null];
  }

  v37[2] = priceRange;
  v36[3] = @"usesMeteredFare";
  usesMeteredFare = self->_usesMeteredFare;
  v31 = usesMeteredFare;
  if (!usesMeteredFare)
  {
    usesMeteredFare = [MEMORY[0x1E695DFB0] null];
  }

  v37[3] = usesMeteredFare;
  v36[4] = @"disclaimerMessage";
  disclaimerMessage = self->_disclaimerMessage;
  v30 = disclaimerMessage;
  if (!disclaimerMessage)
  {
    disclaimerMessage = [MEMORY[0x1E695DFB0] null];
  }

  v37[4] = disclaimerMessage;
  v36[5] = @"availablePartySizeOptions";
  availablePartySizeOptions = self->_availablePartySizeOptions;
  null2 = availablePartySizeOptions;
  if (!availablePartySizeOptions)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null2;
  v37[5] = null2;
  v36[6] = @"availablePartySizeOptionsSelectionPrompt";
  availablePartySizeOptionsSelectionPrompt = self->_availablePartySizeOptionsSelectionPrompt;
  null3 = availablePartySizeOptionsSelectionPrompt;
  if (!availablePartySizeOptionsSelectionPrompt)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null3;
  v37[6] = null3;
  v36[7] = @"specialPricing";
  specialPricing = self->_specialPricing;
  null4 = specialPricing;
  if (!specialPricing)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = disclaimerMessage;
  v27 = usesMeteredFare;
  v28 = priceRange;
  v34 = null;
  v23 = null4;
  v37[7] = null4;
  v36[8] = @"specialPricingBadgeImage";
  specialPricingBadgeImage = self->_specialPricingBadgeImage;
  null5 = specialPricingBadgeImage;
  if (!specialPricingBadgeImage)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = estimatedPickupDate;
  v37[8] = null5;
  v36[9] = @"fareLineItems";
  fareLineItems = self->_fareLineItems;
  null6 = fareLineItems;
  if (!fareLineItems)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v37[9] = null6;
  v36[10] = @"userActivityForBookingInApplication";
  userActivityForBookingInApplication = self->_userActivityForBookingInApplication;
  null7 = userActivityForBookingInApplication;
  if (!userActivityForBookingInApplication)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v37[10] = null7;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:11];
  if (userActivityForBookingInApplication)
  {
    if (fareLineItems)
    {
      goto LABEL_25;
    }

LABEL_43:

    if (specialPricingBadgeImage)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

  if (!fareLineItems)
  {
    goto LABEL_43;
  }

LABEL_25:
  if (specialPricingBadgeImage)
  {
    goto LABEL_26;
  }

LABEL_44:

LABEL_26:
  if (specialPricing)
  {
    if (availablePartySizeOptionsSelectionPrompt)
    {
      goto LABEL_28;
    }

LABEL_46:

    if (availablePartySizeOptions)
    {
      goto LABEL_29;
    }

    goto LABEL_47;
  }

  if (!availablePartySizeOptionsSelectionPrompt)
  {
    goto LABEL_46;
  }

LABEL_28:
  if (availablePartySizeOptions)
  {
    goto LABEL_29;
  }

LABEL_47:

LABEL_29:
  if (!v30)
  {
  }

  if (!v31)
  {
  }

  if (!v32)
  {
  }

  if (!v33)
  {
  }

  if (!name)
  {
  }

  v21 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRideOption;
  v6 = [(INRideOption *)&v11 description];
  _dictionaryRepresentation = [(INRideOption *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_estimatedPickupDate forKey:@"estimatedPickupDate"];
  [coderCopy encodeObject:self->_priceRange forKey:@"priceRange"];
  [coderCopy encodeObject:self->_disclaimerMessage forKey:@"disclaimerMessage"];
  [coderCopy encodeObject:self->_availablePartySizeOptions forKey:@"availablePartySizeOptions"];
  [coderCopy encodeObject:self->_availablePartySizeOptionsSelectionPrompt forKey:@"availablePartySizeOptionsSelectionPrompt"];
  [coderCopy encodeObject:self->_specialPricing forKey:@"specialPricing"];
  [coderCopy encodeObject:self->_specialPricingBadgeImage forKey:@"specialPricingBadgeImage"];
  [coderCopy encodeObject:self->_fareLineItems forKey:@"fareLineItems"];
  [coderCopy encodeObject:self->_usesMeteredFare forKey:@"usesMeteredFare"];
  v6 = INUserActivitySerializeToData(self->_userActivityForBookingInApplication);
  [coderCopy encodeObject:v6 forKey:@"userActivityForBookingInApplication"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (INRideOption)initWithCoder:(NSCoder *)decoder
{
  v41[2] = *MEMORY[0x1E69E9840];
  v4 = decoder;
  v39.receiver = self;
  v39.super_class = INRideOption;
  v5 = [(INRideOption *)&v39 init];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"estimatedPickupDate"];
    estimatedPickupDate = v5->_estimatedPickupDate;
    v5->_estimatedPickupDate = v8;

    v10 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"priceRange"];
    priceRange = v5->_priceRange;
    v5->_priceRange = v10;

    v12 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"disclaimerMessage"];
    disclaimerMessage = v5->_disclaimerMessage;
    v5->_disclaimerMessage = v12;

    v14 = MEMORY[0x1E695DFD8];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [(NSCoder *)v4 decodeObjectOfClasses:v16 forKey:@"availablePartySizeOptions"];
    availablePartySizeOptions = v5->_availablePartySizeOptions;
    v5->_availablePartySizeOptions = v17;

    v19 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"availablePartySizeOptionsSelectionPrompt"];
    availablePartySizeOptionsSelectionPrompt = v5->_availablePartySizeOptionsSelectionPrompt;
    v5->_availablePartySizeOptionsSelectionPrompt = v19;

    v21 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"specialPricing"];
    specialPricing = v5->_specialPricing;
    v5->_specialPricing = v21;

    v23 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"specialPricingBadgeImage"];
    specialPricingBadgeImage = v5->_specialPricingBadgeImage;
    v5->_specialPricingBadgeImage = v23;

    v25 = MEMORY[0x1E695DFD8];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v27 = [v25 setWithArray:v26];
    v28 = [(NSCoder *)v4 decodeObjectOfClasses:v27 forKey:@"fareLineItems"];
    fareLineItems = v5->_fareLineItems;
    v5->_fareLineItems = v28;

    v30 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"usesMeteredFare"];
    usesMeteredFare = v5->_usesMeteredFare;
    v5->_usesMeteredFare = v30;

    v32 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"userActivityForBookingInApplication"];
    v33 = INUserActivityDeserializeFromData(v32);
    userActivityForBookingInApplication = v5->_userActivityForBookingInApplication;
    v5->_userActivityForBookingInApplication = v33;

    v35 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v35;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithName:estimatedPickupDate:", self->_name, self->_estimatedPickupDate}];
  [v4 setPriceRange:self->_priceRange];
  [v4 setDisclaimerMessage:self->_disclaimerMessage];
  [v4 setAvailablePartySizeOptions:self->_availablePartySizeOptions];
  [v4 setAvailablePartySizeOptionsSelectionPrompt:self->_availablePartySizeOptionsSelectionPrompt];
  [v4 setSpecialPricing:self->_specialPricing];
  [v4 setSpecialPricingBadgeImage:self->_specialPricingBadgeImage];
  [v4 setFareLineItems:self->_fareLineItems];
  [v4 setUserActivityForBookingInApplication:self->_userActivityForBookingInApplication];
  [v4 setUsesMeteredFare:self->_usesMeteredFare];
  [v4 setIdentifier:self->_identifier];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = self->_name;
    if (name != v5[4] && ![(NSString *)name isEqual:?])
    {
      goto LABEL_28;
    }

    estimatedPickupDate = self->_estimatedPickupDate;
    if (estimatedPickupDate != v5[5] && ![(NSDate *)estimatedPickupDate isEqual:?])
    {
      goto LABEL_28;
    }

    priceRange = self->_priceRange;
    if (priceRange != v5[6] && ![(INPriceRange *)priceRange isEqual:?])
    {
      goto LABEL_28;
    }

    disclaimerMessage = self->_disclaimerMessage;
    if (disclaimerMessage != v5[8] && ![(NSString *)disclaimerMessage isEqual:?])
    {
      goto LABEL_28;
    }

    availablePartySizeOptionsSelectionPrompt = self->_availablePartySizeOptionsSelectionPrompt;
    if (availablePartySizeOptionsSelectionPrompt != v5[9] && ![(NSString *)availablePartySizeOptionsSelectionPrompt isEqual:?])
    {
      goto LABEL_28;
    }

    if (((availablePartySizeOptions = self->_availablePartySizeOptions, availablePartySizeOptions == v5[2]) || [(NSArray *)availablePartySizeOptions isEqual:?]) && ((specialPricing = self->_specialPricing, specialPricing == v5[10]) || [(NSString *)specialPricing isEqual:?]) && ((specialPricingBadgeImage = self->_specialPricingBadgeImage, specialPricingBadgeImage == v5[11]) || [(INImage *)specialPricingBadgeImage isEqual:?]) && ((fareLineItems = self->_fareLineItems, fareLineItems == v5[3]) || [(NSArray *)fareLineItems isEqual:?]) && ((userActivityForBookingInApplication = self->_userActivityForBookingInApplication, userActivityForBookingInApplication == v5[12]) || [(NSUserActivity *)userActivityForBookingInApplication isEqual:?]) && ((usesMeteredFare = self->_usesMeteredFare, usesMeteredFare == v5[7]) || [(NSNumber *)usesMeteredFare isEqual:?]) && ((identifier = self->_identifier, identifier == v5[1]) || [(NSString *)identifier isEqual:?]))
    {
      v18 = 1;
    }

    else
    {
LABEL_28:
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSDate *)self->_estimatedPickupDate hash]^ v3;
  v5 = [(INPriceRange *)self->_priceRange hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_disclaimerMessage hash];
  v7 = [(NSArray *)self->_availablePartySizeOptions hash];
  v8 = v7 ^ [(NSString *)self->_availablePartySizeOptionsSelectionPrompt hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_specialPricing hash];
  v10 = [(INImage *)self->_specialPricingBadgeImage hash];
  v11 = v10 ^ [(NSArray *)self->_fareLineItems hash];
  v12 = v11 ^ [(NSUserActivity *)self->_userActivityForBookingInApplication hash];
  v13 = v9 ^ v12 ^ [(NSNumber *)self->_usesMeteredFare hash];
  return v13 ^ [(NSString *)self->_identifier hash];
}

- (void)setFareLineItems:(NSArray *)fareLineItems
{
  v4 = fareLineItems;
  v6 = v4;
  if (v4)
  {
    if ([(NSArray *)v4 count])
    {
      v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v6 copyItems:1];
    }

    else
    {
      v4 = MEMORY[0x1E695E0F0];
    }
  }

  v5 = self->_fareLineItems;
  self->_fareLineItems = v4;
}

- (void)setAvailablePartySizeOptions:(NSArray *)availablePartySizeOptions
{
  v4 = availablePartySizeOptions;
  v6 = v4;
  if (v4)
  {
    if ([(NSArray *)v4 count])
    {
      v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v6 copyItems:1];
    }

    else
    {
      v4 = MEMORY[0x1E695E0F0];
    }
  }

  v5 = self->_availablePartySizeOptions;
  self->_availablePartySizeOptions = v4;
}

- (INRideOption)initWithName:(NSString *)name estimatedPickupDate:(NSDate *)estimatedPickupDate
{
  v6 = name;
  v7 = estimatedPickupDate;
  v14.receiver = self;
  v14.super_class = INRideOption;
  v8 = [(INRideOption *)&v14 init];
  if (v8)
  {
    v9 = [(NSString *)v6 copy];
    v10 = v8->_name;
    v8->_name = v9;

    v11 = [(NSDate *)v7 copy];
    v12 = v8->_estimatedPickupDate;
    v8->_estimatedPickupDate = v11;
  }

  return v8;
}

- (void)setIdentifier:(NSString *)identifier
{
  v4 = [(NSString *)identifier copy];
  v5 = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_intents_updateContainerWithCache:(id)cache
{
  cacheCopy = cache;
  specialPricingBadgeImage = [(INRideOption *)self specialPricingBadgeImage];
  if (specialPricingBadgeImage)
  {
    v5 = specialPricingBadgeImage;
    specialPricingBadgeImage2 = [(INRideOption *)self specialPricingBadgeImage];
    _identifier = [specialPricingBadgeImage2 _identifier];
    v8 = [cacheCopy cacheableObjectForIdentifier:_identifier];

    if (v8)
    {
      specialPricingBadgeImage3 = [(INRideOption *)self specialPricingBadgeImage];
      _identifier2 = [specialPricingBadgeImage3 _identifier];
      v11 = [cacheCopy cacheableObjectForIdentifier:_identifier2];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        specialPricingBadgeImage4 = [(INRideOption *)self specialPricingBadgeImage];
        [v11 _imageSize];
        [specialPricingBadgeImage4 _setImageSize:?];
      }
    }
  }
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  specialPricingBadgeImage = [(INRideOption *)self specialPricingBadgeImage];

  if (specialPricingBadgeImage)
  {
    specialPricingBadgeImage2 = [(INRideOption *)self specialPricingBadgeImage];
    [v3 addObject:specialPricingBadgeImage2];
  }

  userActivityForBookingInApplication = [(INRideOption *)self userActivityForBookingInApplication];

  if (userActivityForBookingInApplication)
  {
    userActivityForBookingInApplication2 = [(INRideOption *)self userActivityForBookingInApplication];
    [v3 addObject:userActivityForBookingInApplication2];
  }

  if ([v3 count])
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

@end