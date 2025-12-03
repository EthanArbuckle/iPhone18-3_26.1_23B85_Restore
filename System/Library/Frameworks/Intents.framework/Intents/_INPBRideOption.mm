@interface _INPBRideOption
- (BOOL)isEqual:(id)equal;
- (_INPBRideOption)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAvailablePartySizeOptions:(id)options;
- (void)addFareLineItems:(id)items;
- (void)encodeWithCoder:(id)coder;
- (void)setAvailablePartySizeOptions:(id)options;
- (void)setAvailablePartySizeOptionsSelectionPrompt:(id)prompt;
- (void)setDisclaimerMessage:(id)message;
- (void)setFareLineItems:(id)items;
- (void)setName:(id)name;
- (void)setSpecialPricing:(id)pricing;
- (void)setSubtitle:(id)subtitle;
- (void)writeTo:(id)to;
@end

@implementation _INPBRideOption

- (id)dictionaryRepresentation
{
  v49 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_availablePartySizeOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v5 = self->_availablePartySizeOptions;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v44;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v44 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"availablePartySizeOptions"];
  }

  if (self->_availablePartySizeOptionsSelectionPrompt)
  {
    availablePartySizeOptionsSelectionPrompt = [(_INPBRideOption *)self availablePartySizeOptionsSelectionPrompt];
    v12 = [availablePartySizeOptionsSelectionPrompt copy];
    [dictionary setObject:v12 forKeyedSubscript:@"availablePartySizeOptionsSelectionPrompt"];
  }

  if (self->_disclaimerMessage)
  {
    disclaimerMessage = [(_INPBRideOption *)self disclaimerMessage];
    v14 = [disclaimerMessage copy];
    [dictionary setObject:v14 forKeyedSubscript:@"disclaimerMessage"];
  }

  estimatedPickupDate = [(_INPBRideOption *)self estimatedPickupDate];
  dictionaryRepresentation2 = [estimatedPickupDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"estimatedPickupDate"];

  if ([(NSArray *)self->_fareLineItems count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v18 = self->_fareLineItems;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v40;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v18);
          }

          dictionaryRepresentation3 = [*(*(&v39 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation3];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v20);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"fareLineItems"];
  }

  if (self->_name)
  {
    name = [(_INPBRideOption *)self name];
    v25 = [name copy];
    [dictionary setObject:v25 forKeyedSubscript:@"name"];
  }

  priceRange = [(_INPBRideOption *)self priceRange];
  dictionaryRepresentation4 = [priceRange dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"priceRange"];

  if (self->_specialPricing)
  {
    specialPricing = [(_INPBRideOption *)self specialPricing];
    v29 = [specialPricing copy];
    [dictionary setObject:v29 forKeyedSubscript:@"specialPricing"];
  }

  specialPricingBadgeImage = [(_INPBRideOption *)self specialPricingBadgeImage];
  dictionaryRepresentation5 = [specialPricingBadgeImage dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"specialPricingBadgeImage"];

  if (self->_subtitle)
  {
    subtitle = [(_INPBRideOption *)self subtitle];
    v33 = [subtitle copy];
    [dictionary setObject:v33 forKeyedSubscript:@"subtitle"];
  }

  userActivityForBookingInApplication = [(_INPBRideOption *)self userActivityForBookingInApplication];
  dictionaryRepresentation6 = [userActivityForBookingInApplication dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"userActivityForBookingInApplication"];

  if ([(_INPBRideOption *)self hasUsesMeteredFare])
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRideOption usesMeteredFare](self, "usesMeteredFare")}];
    [dictionary setObject:v36 forKeyedSubscript:@"usesMeteredFare"];
  }

  v37 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v15 = [(NSArray *)self->_availablePartySizeOptions hash];
  v14 = [(NSString *)self->_availablePartySizeOptionsSelectionPrompt hash];
  v3 = [(NSString *)self->_disclaimerMessage hash];
  v4 = [(_INPBTimestamp *)self->_estimatedPickupDate hash];
  v5 = [(NSArray *)self->_fareLineItems hash];
  v6 = [(NSString *)self->_name hash];
  v7 = [(_INPBPriceRangeValue *)self->_priceRange hash];
  v8 = [(NSString *)self->_specialPricing hash];
  v9 = [(_INPBImageValue *)self->_specialPricingBadgeImage hash];
  v10 = [(NSString *)self->_subtitle hash];
  v11 = [(_INPBUserActivity *)self->_userActivityForBookingInApplication hash];
  if ([(_INPBRideOption *)self hasUsesMeteredFare])
  {
    v12 = 2654435761 * self->_usesMeteredFare;
  }

  else
  {
    v12 = 0;
  }

  return v14 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  availablePartySizeOptions = [(_INPBRideOption *)self availablePartySizeOptions];
  availablePartySizeOptions2 = [equalCopy availablePartySizeOptions];
  if ((availablePartySizeOptions != 0) == (availablePartySizeOptions2 == 0))
  {
    goto LABEL_56;
  }

  availablePartySizeOptions3 = [(_INPBRideOption *)self availablePartySizeOptions];
  if (availablePartySizeOptions3)
  {
    v8 = availablePartySizeOptions3;
    availablePartySizeOptions4 = [(_INPBRideOption *)self availablePartySizeOptions];
    availablePartySizeOptions5 = [equalCopy availablePartySizeOptions];
    v11 = [availablePartySizeOptions4 isEqual:availablePartySizeOptions5];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  availablePartySizeOptions = [(_INPBRideOption *)self availablePartySizeOptionsSelectionPrompt];
  availablePartySizeOptions2 = [equalCopy availablePartySizeOptionsSelectionPrompt];
  if ((availablePartySizeOptions != 0) == (availablePartySizeOptions2 == 0))
  {
    goto LABEL_56;
  }

  availablePartySizeOptionsSelectionPrompt = [(_INPBRideOption *)self availablePartySizeOptionsSelectionPrompt];
  if (availablePartySizeOptionsSelectionPrompt)
  {
    v13 = availablePartySizeOptionsSelectionPrompt;
    availablePartySizeOptionsSelectionPrompt2 = [(_INPBRideOption *)self availablePartySizeOptionsSelectionPrompt];
    availablePartySizeOptionsSelectionPrompt3 = [equalCopy availablePartySizeOptionsSelectionPrompt];
    v16 = [availablePartySizeOptionsSelectionPrompt2 isEqual:availablePartySizeOptionsSelectionPrompt3];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  availablePartySizeOptions = [(_INPBRideOption *)self disclaimerMessage];
  availablePartySizeOptions2 = [equalCopy disclaimerMessage];
  if ((availablePartySizeOptions != 0) == (availablePartySizeOptions2 == 0))
  {
    goto LABEL_56;
  }

  disclaimerMessage = [(_INPBRideOption *)self disclaimerMessage];
  if (disclaimerMessage)
  {
    v18 = disclaimerMessage;
    disclaimerMessage2 = [(_INPBRideOption *)self disclaimerMessage];
    disclaimerMessage3 = [equalCopy disclaimerMessage];
    v21 = [disclaimerMessage2 isEqual:disclaimerMessage3];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  availablePartySizeOptions = [(_INPBRideOption *)self estimatedPickupDate];
  availablePartySizeOptions2 = [equalCopy estimatedPickupDate];
  if ((availablePartySizeOptions != 0) == (availablePartySizeOptions2 == 0))
  {
    goto LABEL_56;
  }

  estimatedPickupDate = [(_INPBRideOption *)self estimatedPickupDate];
  if (estimatedPickupDate)
  {
    v23 = estimatedPickupDate;
    estimatedPickupDate2 = [(_INPBRideOption *)self estimatedPickupDate];
    estimatedPickupDate3 = [equalCopy estimatedPickupDate];
    v26 = [estimatedPickupDate2 isEqual:estimatedPickupDate3];

    if (!v26)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  availablePartySizeOptions = [(_INPBRideOption *)self fareLineItems];
  availablePartySizeOptions2 = [equalCopy fareLineItems];
  if ((availablePartySizeOptions != 0) == (availablePartySizeOptions2 == 0))
  {
    goto LABEL_56;
  }

  fareLineItems = [(_INPBRideOption *)self fareLineItems];
  if (fareLineItems)
  {
    v28 = fareLineItems;
    fareLineItems2 = [(_INPBRideOption *)self fareLineItems];
    fareLineItems3 = [equalCopy fareLineItems];
    v31 = [fareLineItems2 isEqual:fareLineItems3];

    if (!v31)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  availablePartySizeOptions = [(_INPBRideOption *)self name];
  availablePartySizeOptions2 = [equalCopy name];
  if ((availablePartySizeOptions != 0) == (availablePartySizeOptions2 == 0))
  {
    goto LABEL_56;
  }

  name = [(_INPBRideOption *)self name];
  if (name)
  {
    v33 = name;
    name2 = [(_INPBRideOption *)self name];
    name3 = [equalCopy name];
    v36 = [name2 isEqual:name3];

    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  availablePartySizeOptions = [(_INPBRideOption *)self priceRange];
  availablePartySizeOptions2 = [equalCopy priceRange];
  if ((availablePartySizeOptions != 0) == (availablePartySizeOptions2 == 0))
  {
    goto LABEL_56;
  }

  priceRange = [(_INPBRideOption *)self priceRange];
  if (priceRange)
  {
    v38 = priceRange;
    priceRange2 = [(_INPBRideOption *)self priceRange];
    priceRange3 = [equalCopy priceRange];
    v41 = [priceRange2 isEqual:priceRange3];

    if (!v41)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  availablePartySizeOptions = [(_INPBRideOption *)self specialPricing];
  availablePartySizeOptions2 = [equalCopy specialPricing];
  if ((availablePartySizeOptions != 0) == (availablePartySizeOptions2 == 0))
  {
    goto LABEL_56;
  }

  specialPricing = [(_INPBRideOption *)self specialPricing];
  if (specialPricing)
  {
    v43 = specialPricing;
    specialPricing2 = [(_INPBRideOption *)self specialPricing];
    specialPricing3 = [equalCopy specialPricing];
    v46 = [specialPricing2 isEqual:specialPricing3];

    if (!v46)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  availablePartySizeOptions = [(_INPBRideOption *)self specialPricingBadgeImage];
  availablePartySizeOptions2 = [equalCopy specialPricingBadgeImage];
  if ((availablePartySizeOptions != 0) == (availablePartySizeOptions2 == 0))
  {
    goto LABEL_56;
  }

  specialPricingBadgeImage = [(_INPBRideOption *)self specialPricingBadgeImage];
  if (specialPricingBadgeImage)
  {
    v48 = specialPricingBadgeImage;
    specialPricingBadgeImage2 = [(_INPBRideOption *)self specialPricingBadgeImage];
    specialPricingBadgeImage3 = [equalCopy specialPricingBadgeImage];
    v51 = [specialPricingBadgeImage2 isEqual:specialPricingBadgeImage3];

    if (!v51)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  availablePartySizeOptions = [(_INPBRideOption *)self subtitle];
  availablePartySizeOptions2 = [equalCopy subtitle];
  if ((availablePartySizeOptions != 0) == (availablePartySizeOptions2 == 0))
  {
    goto LABEL_56;
  }

  subtitle = [(_INPBRideOption *)self subtitle];
  if (subtitle)
  {
    v53 = subtitle;
    subtitle2 = [(_INPBRideOption *)self subtitle];
    subtitle3 = [equalCopy subtitle];
    v56 = [subtitle2 isEqual:subtitle3];

    if (!v56)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  availablePartySizeOptions = [(_INPBRideOption *)self userActivityForBookingInApplication];
  availablePartySizeOptions2 = [equalCopy userActivityForBookingInApplication];
  if ((availablePartySizeOptions != 0) == (availablePartySizeOptions2 == 0))
  {
LABEL_56:

    goto LABEL_57;
  }

  userActivityForBookingInApplication = [(_INPBRideOption *)self userActivityForBookingInApplication];
  if (userActivityForBookingInApplication)
  {
    v58 = userActivityForBookingInApplication;
    userActivityForBookingInApplication2 = [(_INPBRideOption *)self userActivityForBookingInApplication];
    userActivityForBookingInApplication3 = [equalCopy userActivityForBookingInApplication];
    v61 = [userActivityForBookingInApplication2 isEqual:userActivityForBookingInApplication3];

    if (!v61)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  hasUsesMeteredFare = [(_INPBRideOption *)self hasUsesMeteredFare];
  if (hasUsesMeteredFare == [equalCopy hasUsesMeteredFare])
  {
    if (!-[_INPBRideOption hasUsesMeteredFare](self, "hasUsesMeteredFare") || ![equalCopy hasUsesMeteredFare] || (usesMeteredFare = self->_usesMeteredFare, usesMeteredFare == objc_msgSend(equalCopy, "usesMeteredFare")))
    {
      v62 = 1;
      goto LABEL_58;
    }
  }

LABEL_57:
  v62 = 0;
LABEL_58:

  return v62;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRideOption allocWithZone:](_INPBRideOption init];
  v6 = [(NSArray *)self->_availablePartySizeOptions copyWithZone:zone];
  [(_INPBRideOption *)v5 setAvailablePartySizeOptions:v6];

  v7 = [(NSString *)self->_availablePartySizeOptionsSelectionPrompt copyWithZone:zone];
  [(_INPBRideOption *)v5 setAvailablePartySizeOptionsSelectionPrompt:v7];

  v8 = [(NSString *)self->_disclaimerMessage copyWithZone:zone];
  [(_INPBRideOption *)v5 setDisclaimerMessage:v8];

  v9 = [(_INPBTimestamp *)self->_estimatedPickupDate copyWithZone:zone];
  [(_INPBRideOption *)v5 setEstimatedPickupDate:v9];

  v10 = [(NSArray *)self->_fareLineItems copyWithZone:zone];
  [(_INPBRideOption *)v5 setFareLineItems:v10];

  v11 = [(NSString *)self->_name copyWithZone:zone];
  [(_INPBRideOption *)v5 setName:v11];

  v12 = [(_INPBPriceRangeValue *)self->_priceRange copyWithZone:zone];
  [(_INPBRideOption *)v5 setPriceRange:v12];

  v13 = [(NSString *)self->_specialPricing copyWithZone:zone];
  [(_INPBRideOption *)v5 setSpecialPricing:v13];

  v14 = [(_INPBImageValue *)self->_specialPricingBadgeImage copyWithZone:zone];
  [(_INPBRideOption *)v5 setSpecialPricingBadgeImage:v14];

  v15 = [(NSString *)self->_subtitle copyWithZone:zone];
  [(_INPBRideOption *)v5 setSubtitle:v15];

  v16 = [(_INPBUserActivity *)self->_userActivityForBookingInApplication copyWithZone:zone];
  [(_INPBRideOption *)v5 setUserActivityForBookingInApplication:v16];

  if ([(_INPBRideOption *)self hasUsesMeteredFare])
  {
    [(_INPBRideOption *)v5 setUsesMeteredFare:[(_INPBRideOption *)self usesMeteredFare]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRideOption *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRideOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRideOption *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v47 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = self->_availablePartySizeOptions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    do
    {
      v9 = 0;
      do
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v7);
  }

  availablePartySizeOptionsSelectionPrompt = [(_INPBRideOption *)self availablePartySizeOptionsSelectionPrompt];

  if (availablePartySizeOptionsSelectionPrompt)
  {
    availablePartySizeOptionsSelectionPrompt = self->_availablePartySizeOptionsSelectionPrompt;
    PBDataWriterWriteStringField();
  }

  disclaimerMessage = [(_INPBRideOption *)self disclaimerMessage];

  if (disclaimerMessage)
  {
    disclaimerMessage = self->_disclaimerMessage;
    PBDataWriterWriteStringField();
  }

  estimatedPickupDate = [(_INPBRideOption *)self estimatedPickupDate];

  if (estimatedPickupDate)
  {
    estimatedPickupDate2 = [(_INPBRideOption *)self estimatedPickupDate];
    PBDataWriterWriteSubmessage();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = self->_fareLineItems;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    do
    {
      v21 = 0;
      do
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v37 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v19);
  }

  name = [(_INPBRideOption *)self name];

  if (name)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
  }

  priceRange = [(_INPBRideOption *)self priceRange];

  if (priceRange)
  {
    priceRange2 = [(_INPBRideOption *)self priceRange];
    PBDataWriterWriteSubmessage();
  }

  specialPricing = [(_INPBRideOption *)self specialPricing];

  if (specialPricing)
  {
    specialPricing = self->_specialPricing;
    PBDataWriterWriteStringField();
  }

  specialPricingBadgeImage = [(_INPBRideOption *)self specialPricingBadgeImage];

  if (specialPricingBadgeImage)
  {
    specialPricingBadgeImage2 = [(_INPBRideOption *)self specialPricingBadgeImage];
    PBDataWriterWriteSubmessage();
  }

  subtitle = [(_INPBRideOption *)self subtitle];

  if (subtitle)
  {
    subtitle = self->_subtitle;
    PBDataWriterWriteStringField();
  }

  userActivityForBookingInApplication = [(_INPBRideOption *)self userActivityForBookingInApplication];

  if (userActivityForBookingInApplication)
  {
    userActivityForBookingInApplication2 = [(_INPBRideOption *)self userActivityForBookingInApplication];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBRideOption *)self hasUsesMeteredFare])
  {
    usesMeteredFare = self->_usesMeteredFare;
    PBDataWriterWriteBOOLField();
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)setSubtitle:(id)subtitle
{
  v4 = [subtitle copy];
  subtitle = self->_subtitle;
  self->_subtitle = v4;

  MEMORY[0x1EEE66BB8](v4, subtitle);
}

- (void)setSpecialPricing:(id)pricing
{
  v4 = [pricing copy];
  specialPricing = self->_specialPricing;
  self->_specialPricing = v4;

  MEMORY[0x1EEE66BB8](v4, specialPricing);
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8](v4, name);
}

- (void)addFareLineItems:(id)items
{
  itemsCopy = items;
  fareLineItems = self->_fareLineItems;
  v8 = itemsCopy;
  if (!fareLineItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_fareLineItems;
    self->_fareLineItems = array;

    itemsCopy = v8;
    fareLineItems = self->_fareLineItems;
  }

  [(NSArray *)fareLineItems addObject:itemsCopy];
}

- (void)setFareLineItems:(id)items
{
  v4 = [items mutableCopy];
  fareLineItems = self->_fareLineItems;
  self->_fareLineItems = v4;

  MEMORY[0x1EEE66BB8](v4, fareLineItems);
}

- (void)setDisclaimerMessage:(id)message
{
  v4 = [message copy];
  disclaimerMessage = self->_disclaimerMessage;
  self->_disclaimerMessage = v4;

  MEMORY[0x1EEE66BB8](v4, disclaimerMessage);
}

- (void)setAvailablePartySizeOptionsSelectionPrompt:(id)prompt
{
  v4 = [prompt copy];
  availablePartySizeOptionsSelectionPrompt = self->_availablePartySizeOptionsSelectionPrompt;
  self->_availablePartySizeOptionsSelectionPrompt = v4;

  MEMORY[0x1EEE66BB8](v4, availablePartySizeOptionsSelectionPrompt);
}

- (void)addAvailablePartySizeOptions:(id)options
{
  optionsCopy = options;
  availablePartySizeOptions = self->_availablePartySizeOptions;
  v8 = optionsCopy;
  if (!availablePartySizeOptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_availablePartySizeOptions;
    self->_availablePartySizeOptions = array;

    optionsCopy = v8;
    availablePartySizeOptions = self->_availablePartySizeOptions;
  }

  [(NSArray *)availablePartySizeOptions addObject:optionsCopy];
}

- (void)setAvailablePartySizeOptions:(id)options
{
  v4 = [options mutableCopy];
  availablePartySizeOptions = self->_availablePartySizeOptions;
  self->_availablePartySizeOptions = v4;

  MEMORY[0x1EEE66BB8](v4, availablePartySizeOptions);
}

@end