@interface _INPBRideOption
- (BOOL)isEqual:(id)a3;
- (_INPBRideOption)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAvailablePartySizeOptions:(id)a3;
- (void)addFareLineItems:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAvailablePartySizeOptions:(id)a3;
- (void)setAvailablePartySizeOptionsSelectionPrompt:(id)a3;
- (void)setDisclaimerMessage:(id)a3;
- (void)setFareLineItems:(id)a3;
- (void)setName:(id)a3;
- (void)setSpecialPricing:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRideOption

- (id)dictionaryRepresentation
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_availablePartySizeOptions count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"availablePartySizeOptions"];
  }

  if (self->_availablePartySizeOptionsSelectionPrompt)
  {
    v11 = [(_INPBRideOption *)self availablePartySizeOptionsSelectionPrompt];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"availablePartySizeOptionsSelectionPrompt"];
  }

  if (self->_disclaimerMessage)
  {
    v13 = [(_INPBRideOption *)self disclaimerMessage];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"disclaimerMessage"];
  }

  v15 = [(_INPBRideOption *)self estimatedPickupDate];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"estimatedPickupDate"];

  if ([(NSArray *)self->_fareLineItems count])
  {
    v17 = [MEMORY[0x1E695DF70] array];
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

          v23 = [*(*(&v39 + 1) + 8 * j) dictionaryRepresentation];
          [v17 addObject:v23];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v20);
    }

    [v3 setObject:v17 forKeyedSubscript:@"fareLineItems"];
  }

  if (self->_name)
  {
    v24 = [(_INPBRideOption *)self name];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"name"];
  }

  v26 = [(_INPBRideOption *)self priceRange];
  v27 = [v26 dictionaryRepresentation];
  [v3 setObject:v27 forKeyedSubscript:@"priceRange"];

  if (self->_specialPricing)
  {
    v28 = [(_INPBRideOption *)self specialPricing];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"specialPricing"];
  }

  v30 = [(_INPBRideOption *)self specialPricingBadgeImage];
  v31 = [v30 dictionaryRepresentation];
  [v3 setObject:v31 forKeyedSubscript:@"specialPricingBadgeImage"];

  if (self->_subtitle)
  {
    v32 = [(_INPBRideOption *)self subtitle];
    v33 = [v32 copy];
    [v3 setObject:v33 forKeyedSubscript:@"subtitle"];
  }

  v34 = [(_INPBRideOption *)self userActivityForBookingInApplication];
  v35 = [v34 dictionaryRepresentation];
  [v3 setObject:v35 forKeyedSubscript:@"userActivityForBookingInApplication"];

  if ([(_INPBRideOption *)self hasUsesMeteredFare])
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRideOption usesMeteredFare](self, "usesMeteredFare")}];
    [v3 setObject:v36 forKeyedSubscript:@"usesMeteredFare"];
  }

  v37 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  v5 = [(_INPBRideOption *)self availablePartySizeOptions];
  v6 = [v4 availablePartySizeOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v7 = [(_INPBRideOption *)self availablePartySizeOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBRideOption *)self availablePartySizeOptions];
    v10 = [v4 availablePartySizeOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideOption *)self availablePartySizeOptionsSelectionPrompt];
  v6 = [v4 availablePartySizeOptionsSelectionPrompt];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v12 = [(_INPBRideOption *)self availablePartySizeOptionsSelectionPrompt];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBRideOption *)self availablePartySizeOptionsSelectionPrompt];
    v15 = [v4 availablePartySizeOptionsSelectionPrompt];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideOption *)self disclaimerMessage];
  v6 = [v4 disclaimerMessage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v17 = [(_INPBRideOption *)self disclaimerMessage];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBRideOption *)self disclaimerMessage];
    v20 = [v4 disclaimerMessage];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideOption *)self estimatedPickupDate];
  v6 = [v4 estimatedPickupDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v22 = [(_INPBRideOption *)self estimatedPickupDate];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBRideOption *)self estimatedPickupDate];
    v25 = [v4 estimatedPickupDate];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideOption *)self fareLineItems];
  v6 = [v4 fareLineItems];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v27 = [(_INPBRideOption *)self fareLineItems];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBRideOption *)self fareLineItems];
    v30 = [v4 fareLineItems];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideOption *)self name];
  v6 = [v4 name];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v32 = [(_INPBRideOption *)self name];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBRideOption *)self name];
    v35 = [v4 name];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideOption *)self priceRange];
  v6 = [v4 priceRange];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v37 = [(_INPBRideOption *)self priceRange];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBRideOption *)self priceRange];
    v40 = [v4 priceRange];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideOption *)self specialPricing];
  v6 = [v4 specialPricing];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v42 = [(_INPBRideOption *)self specialPricing];
  if (v42)
  {
    v43 = v42;
    v44 = [(_INPBRideOption *)self specialPricing];
    v45 = [v4 specialPricing];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideOption *)self specialPricingBadgeImage];
  v6 = [v4 specialPricingBadgeImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v47 = [(_INPBRideOption *)self specialPricingBadgeImage];
  if (v47)
  {
    v48 = v47;
    v49 = [(_INPBRideOption *)self specialPricingBadgeImage];
    v50 = [v4 specialPricingBadgeImage];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideOption *)self subtitle];
  v6 = [v4 subtitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v52 = [(_INPBRideOption *)self subtitle];
  if (v52)
  {
    v53 = v52;
    v54 = [(_INPBRideOption *)self subtitle];
    v55 = [v4 subtitle];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideOption *)self userActivityForBookingInApplication];
  v6 = [v4 userActivityForBookingInApplication];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_56:

    goto LABEL_57;
  }

  v57 = [(_INPBRideOption *)self userActivityForBookingInApplication];
  if (v57)
  {
    v58 = v57;
    v59 = [(_INPBRideOption *)self userActivityForBookingInApplication];
    v60 = [v4 userActivityForBookingInApplication];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v64 = [(_INPBRideOption *)self hasUsesMeteredFare];
  if (v64 == [v4 hasUsesMeteredFare])
  {
    if (!-[_INPBRideOption hasUsesMeteredFare](self, "hasUsesMeteredFare") || ![v4 hasUsesMeteredFare] || (usesMeteredFare = self->_usesMeteredFare, usesMeteredFare == objc_msgSend(v4, "usesMeteredFare")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBRideOption allocWithZone:](_INPBRideOption init];
  v6 = [(NSArray *)self->_availablePartySizeOptions copyWithZone:a3];
  [(_INPBRideOption *)v5 setAvailablePartySizeOptions:v6];

  v7 = [(NSString *)self->_availablePartySizeOptionsSelectionPrompt copyWithZone:a3];
  [(_INPBRideOption *)v5 setAvailablePartySizeOptionsSelectionPrompt:v7];

  v8 = [(NSString *)self->_disclaimerMessage copyWithZone:a3];
  [(_INPBRideOption *)v5 setDisclaimerMessage:v8];

  v9 = [(_INPBTimestamp *)self->_estimatedPickupDate copyWithZone:a3];
  [(_INPBRideOption *)v5 setEstimatedPickupDate:v9];

  v10 = [(NSArray *)self->_fareLineItems copyWithZone:a3];
  [(_INPBRideOption *)v5 setFareLineItems:v10];

  v11 = [(NSString *)self->_name copyWithZone:a3];
  [(_INPBRideOption *)v5 setName:v11];

  v12 = [(_INPBPriceRangeValue *)self->_priceRange copyWithZone:a3];
  [(_INPBRideOption *)v5 setPriceRange:v12];

  v13 = [(NSString *)self->_specialPricing copyWithZone:a3];
  [(_INPBRideOption *)v5 setSpecialPricing:v13];

  v14 = [(_INPBImageValue *)self->_specialPricingBadgeImage copyWithZone:a3];
  [(_INPBRideOption *)v5 setSpecialPricingBadgeImage:v14];

  v15 = [(NSString *)self->_subtitle copyWithZone:a3];
  [(_INPBRideOption *)v5 setSubtitle:v15];

  v16 = [(_INPBUserActivity *)self->_userActivityForBookingInApplication copyWithZone:a3];
  [(_INPBRideOption *)v5 setUserActivityForBookingInApplication:v16];

  if ([(_INPBRideOption *)self hasUsesMeteredFare])
  {
    [(_INPBRideOption *)v5 setUsesMeteredFare:[(_INPBRideOption *)self usesMeteredFare]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRideOption *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRideOption)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRideOption *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [(_INPBRideOption *)self availablePartySizeOptionsSelectionPrompt];

  if (v11)
  {
    availablePartySizeOptionsSelectionPrompt = self->_availablePartySizeOptionsSelectionPrompt;
    PBDataWriterWriteStringField();
  }

  v13 = [(_INPBRideOption *)self disclaimerMessage];

  if (v13)
  {
    disclaimerMessage = self->_disclaimerMessage;
    PBDataWriterWriteStringField();
  }

  v15 = [(_INPBRideOption *)self estimatedPickupDate];

  if (v15)
  {
    v16 = [(_INPBRideOption *)self estimatedPickupDate];
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

  v23 = [(_INPBRideOption *)self name];

  if (v23)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
  }

  v25 = [(_INPBRideOption *)self priceRange];

  if (v25)
  {
    v26 = [(_INPBRideOption *)self priceRange];
    PBDataWriterWriteSubmessage();
  }

  v27 = [(_INPBRideOption *)self specialPricing];

  if (v27)
  {
    specialPricing = self->_specialPricing;
    PBDataWriterWriteStringField();
  }

  v29 = [(_INPBRideOption *)self specialPricingBadgeImage];

  if (v29)
  {
    v30 = [(_INPBRideOption *)self specialPricingBadgeImage];
    PBDataWriterWriteSubmessage();
  }

  v31 = [(_INPBRideOption *)self subtitle];

  if (v31)
  {
    subtitle = self->_subtitle;
    PBDataWriterWriteStringField();
  }

  v33 = [(_INPBRideOption *)self userActivityForBookingInApplication];

  if (v33)
  {
    v34 = [(_INPBRideOption *)self userActivityForBookingInApplication];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBRideOption *)self hasUsesMeteredFare])
  {
    usesMeteredFare = self->_usesMeteredFare;
    PBDataWriterWriteBOOLField();
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)setSubtitle:(id)a3
{
  v4 = [a3 copy];
  subtitle = self->_subtitle;
  self->_subtitle = v4;

  MEMORY[0x1EEE66BB8](v4, subtitle);
}

- (void)setSpecialPricing:(id)a3
{
  v4 = [a3 copy];
  specialPricing = self->_specialPricing;
  self->_specialPricing = v4;

  MEMORY[0x1EEE66BB8](v4, specialPricing);
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8](v4, name);
}

- (void)addFareLineItems:(id)a3
{
  v4 = a3;
  fareLineItems = self->_fareLineItems;
  v8 = v4;
  if (!fareLineItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_fareLineItems;
    self->_fareLineItems = v6;

    v4 = v8;
    fareLineItems = self->_fareLineItems;
  }

  [(NSArray *)fareLineItems addObject:v4];
}

- (void)setFareLineItems:(id)a3
{
  v4 = [a3 mutableCopy];
  fareLineItems = self->_fareLineItems;
  self->_fareLineItems = v4;

  MEMORY[0x1EEE66BB8](v4, fareLineItems);
}

- (void)setDisclaimerMessage:(id)a3
{
  v4 = [a3 copy];
  disclaimerMessage = self->_disclaimerMessage;
  self->_disclaimerMessage = v4;

  MEMORY[0x1EEE66BB8](v4, disclaimerMessage);
}

- (void)setAvailablePartySizeOptionsSelectionPrompt:(id)a3
{
  v4 = [a3 copy];
  availablePartySizeOptionsSelectionPrompt = self->_availablePartySizeOptionsSelectionPrompt;
  self->_availablePartySizeOptionsSelectionPrompt = v4;

  MEMORY[0x1EEE66BB8](v4, availablePartySizeOptionsSelectionPrompt);
}

- (void)addAvailablePartySizeOptions:(id)a3
{
  v4 = a3;
  availablePartySizeOptions = self->_availablePartySizeOptions;
  v8 = v4;
  if (!availablePartySizeOptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_availablePartySizeOptions;
    self->_availablePartySizeOptions = v6;

    v4 = v8;
    availablePartySizeOptions = self->_availablePartySizeOptions;
  }

  [(NSArray *)availablePartySizeOptions addObject:v4];
}

- (void)setAvailablePartySizeOptions:(id)a3
{
  v4 = [a3 mutableCopy];
  availablePartySizeOptions = self->_availablePartySizeOptions;
  self->_availablePartySizeOptions = v4;

  MEMORY[0x1EEE66BB8](v4, availablePartySizeOptions);
}

@end