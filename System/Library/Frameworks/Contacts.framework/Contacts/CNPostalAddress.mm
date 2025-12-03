@interface CNPostalAddress
+ (CNPostalAddress)postalAddressWithAddressBookDictionaryRepresentation:(id)representation;
+ (CNPostalAddress)postalAddressWithDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid:(id *)valid;
- (CNPostalAddress)initWithCoder:(id)coder;
- (CNPostalAddress)initWithPostalAddress:(id)address;
- (NSString)ISOCountryCode;
- (NSString)city;
- (NSString)country;
- (NSString)description;
- (NSString)postalCode;
- (NSString)state;
- (NSString)street;
- (NSString)subAdministrativeArea;
- (NSString)subLocality;
- (id)addressBookDictionaryRepresentation;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCity:(id)city;
- (void)setCountry:(id)country;
- (void)setISOCountryCode:(id)code;
- (void)setPostalCode:(id)code;
- (void)setState:(id)state;
- (void)setStreet:(id)street;
- (void)setSubAdministrativeArea:(id)area;
- (void)setSubLocality:(id)locality;
@end

@implementation CNPostalAddress

- (NSString)street
{
  if (self->_street)
  {
    return self->_street;
  }

  else
  {
    return &stru_1F094DAB0;
  }
}

- (NSString)subLocality
{
  if (self->_subLocality)
  {
    return self->_subLocality;
  }

  else
  {
    return &stru_1F094DAB0;
  }
}

- (NSString)city
{
  if (self->_city)
  {
    return self->_city;
  }

  else
  {
    return &stru_1F094DAB0;
  }
}

- (NSString)subAdministrativeArea
{
  if (self->_subAdministrativeArea)
  {
    return self->_subAdministrativeArea;
  }

  else
  {
    return &stru_1F094DAB0;
  }
}

- (NSString)state
{
  if (self->_state)
  {
    return self->_state;
  }

  else
  {
    return &stru_1F094DAB0;
  }
}

- (NSString)postalCode
{
  if (self->_postalCode)
  {
    return self->_postalCode;
  }

  else
  {
    return &stru_1F094DAB0;
  }
}

- (NSString)country
{
  if (self->_country)
  {
    return self->_country;
  }

  else
  {
    return &stru_1F094DAB0;
  }
}

- (NSString)ISOCountryCode
{
  if (self->_ISOCountryCode)
  {
    return self->_ISOCountryCode;
  }

  else
  {
    return &stru_1F094DAB0;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E69966B0];
  street = [(CNPostalAddress *)self street];
  subLocality = [(CNPostalAddress *)self subLocality];
  city = [(CNPostalAddress *)self city];
  subAdministrativeArea = [(CNPostalAddress *)self subAdministrativeArea];
  state = [(CNPostalAddress *)self state];
  postalCode = [(CNPostalAddress *)self postalCode];
  country = [(CNPostalAddress *)self country];
  iSOCountryCode = [(CNPostalAddress *)self ISOCountryCode];
  v12 = [v3 descriptionForObject:self withNamesAndObjects:{@"street", street, @"subLocality", subLocality, @"city", city, @"subAdministrativeArea", subAdministrativeArea, @"state", state, @"postalCode", postalCode, @"country", country, @"countryCode", iSOCountryCode, 0}];

  return v12;
}

+ (CNPostalAddress)postalAddressWithAddressBookDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  if (representationCopy)
  {
    v4 = +[CN postalAddressesDescription];
    v5 = [v4 CNLabeledValueValueFromABMultiValueValue:representationCopy];
    v6 = [v5 copy];
  }

  else
  {
    v6 = objc_alloc_init(CNPostalAddress);
  }

  return v6;
}

- (id)addressBookDictionaryRepresentation
{
  v3 = +[CN postalAddressesDescription];
  v4 = [v3 ABMultiValueValueFromCNLabeledValueValue:self];
  v5 = [v4 copy];

  return v5;
}

+ (CNPostalAddress)postalAddressWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = +[CN postalAddressFromDictionaryTransform];
  v5 = (v4)[2](v4, representationCopy);

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[CN postalAddressToDictionaryTransform];
  v4 = (v3)[2](v3, self);

  return v4;
}

- (CNPostalAddress)initWithPostalAddress:(id)address
{
  addressCopy = address;
  v26.receiver = self;
  v26.super_class = CNPostalAddress;
  v5 = [(CNPostalAddress *)&v26 init];
  if (v5)
  {
    v6 = [addressCopy[1] copy];
    street = v5->_street;
    v5->_street = v6;

    v8 = [addressCopy[2] copy];
    subLocality = v5->_subLocality;
    v5->_subLocality = v8;

    v10 = [addressCopy[3] copy];
    city = v5->_city;
    v5->_city = v10;

    v12 = [addressCopy[4] copy];
    subAdministrativeArea = v5->_subAdministrativeArea;
    v5->_subAdministrativeArea = v12;

    v14 = [addressCopy[5] copy];
    state = v5->_state;
    v5->_state = v14;

    v16 = [addressCopy[6] copy];
    postalCode = v5->_postalCode;
    v5->_postalCode = v16;

    v18 = [addressCopy[7] copy];
    country = v5->_country;
    v5->_country = v18;

    v20 = [addressCopy[8] copy];
    ISOCountryCode = v5->_ISOCountryCode;
    v5->_ISOCountryCode = v20;

    v22 = [addressCopy[9] copy];
    formattedAddress = v5->_formattedAddress;
    v5->_formattedAddress = v22;

    v24 = v5;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CNMutablePostalAddress alloc];

  return [(CNPostalAddress *)v4 initWithPostalAddress:self];
}

- (CNPostalAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = CNPostalAddress;
  v5 = [(CNPostalAddress *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_street"];
    v7 = [v6 copy];
    street = v5->_street;
    v5->_street = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_subLocality"];
    v10 = [v9 copy];
    subLocality = v5->_subLocality;
    v5->_subLocality = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_city"];
    v13 = [v12 copy];
    city = v5->_city;
    v5->_city = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_subAdministrativeArea"];
    v16 = [v15 copy];
    subAdministrativeArea = v5->_subAdministrativeArea;
    v5->_subAdministrativeArea = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_state"];
    v19 = [v18 copy];
    state = v5->_state;
    v5->_state = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_postalCode"];
    v22 = [v21 copy];
    postalCode = v5->_postalCode;
    v5->_postalCode = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_country"];
    v25 = [v24 copy];
    country = v5->_country;
    v5->_country = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ISOCountryCode"];
    v28 = [v27 copy];
    ISOCountryCode = v5->_ISOCountryCode;
    v5->_ISOCountryCode = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_formattedAddress"];
    v31 = [v30 copy];
    formattedAddress = v5->_formattedAddress;
    v5->_formattedAddress = v31;

    v33 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  street = self->_street;
  coderCopy = coder;
  [coderCopy encodeObject:street forKey:@"_street"];
  [coderCopy encodeObject:self->_subLocality forKey:@"_subLocality"];
  [coderCopy encodeObject:self->_city forKey:@"_city"];
  [coderCopy encodeObject:self->_subAdministrativeArea forKey:@"_subAdministrativeArea"];
  [coderCopy encodeObject:self->_state forKey:@"_state"];
  [coderCopy encodeObject:self->_postalCode forKey:@"_postalCode"];
  [coderCopy encodeObject:self->_country forKey:@"_country"];
  [coderCopy encodeObject:self->_ISOCountryCode forKey:@"_ISOCountryCode"];
  [coderCopy encodeObject:self->_formattedAddress forKey:@"_formattedAddress"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v21 = MEMORY[0x1E69966F0];
  v5 = objc_opt_class();
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __27__CNPostalAddress_isEqual___block_invoke;
  v36[3] = &unk_1E7412228;
  v36[4] = self;
  v37 = equalCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __27__CNPostalAddress_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E7412228;
  aBlock[4] = self;
  v6 = v37;
  v35 = v6;
  v7 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __27__CNPostalAddress_isEqual___block_invoke_3;
  v32[3] = &unk_1E7412228;
  v32[4] = self;
  v8 = v6;
  v33 = v8;
  v9 = _Block_copy(v32);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __27__CNPostalAddress_isEqual___block_invoke_4;
  v30[3] = &unk_1E7412228;
  v30[4] = self;
  v10 = v8;
  v31 = v10;
  v11 = _Block_copy(v30);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __27__CNPostalAddress_isEqual___block_invoke_5;
  v28[3] = &unk_1E7412228;
  v28[4] = self;
  v12 = v10;
  v29 = v12;
  v13 = _Block_copy(v28);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __27__CNPostalAddress_isEqual___block_invoke_6;
  v26[3] = &unk_1E7412228;
  v26[4] = self;
  v14 = v12;
  v27 = v14;
  v15 = _Block_copy(v26);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __27__CNPostalAddress_isEqual___block_invoke_7;
  v24[3] = &unk_1E7412228;
  v24[4] = self;
  v16 = v14;
  v25 = v16;
  v17 = _Block_copy(v24);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __27__CNPostalAddress_isEqual___block_invoke_8;
  v22[3] = &unk_1E7412228;
  v22[4] = self;
  v23 = v16;
  v18 = v16;
  v19 = _Block_copy(v22);
  LOBYTE(self) = [v21 isObject:v18 kindOfClass:v5 andEqualToObject:self withBlocks:{v36, v7, v9, v11, v13, v15, v17, v19, 0}];

  return self;
}

uint64_t __27__CNPostalAddress_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) street];
  v4 = [*(a1 + 40) street];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __27__CNPostalAddress_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) subLocality];
  v4 = [*(a1 + 40) subLocality];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __27__CNPostalAddress_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) city];
  v4 = [*(a1 + 40) city];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __27__CNPostalAddress_isEqual___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) subAdministrativeArea];
  v4 = [*(a1 + 40) subAdministrativeArea];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __27__CNPostalAddress_isEqual___block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) state];
  v4 = [*(a1 + 40) state];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __27__CNPostalAddress_isEqual___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) postalCode];
  v4 = [*(a1 + 40) postalCode];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __27__CNPostalAddress_isEqual___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) country];
  v4 = [*(a1 + 40) country];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __27__CNPostalAddress_isEqual___block_invoke_8(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) ISOCountryCode];
  v4 = [*(a1 + 40) ISOCountryCode];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __23__CNPostalAddress_hash__block_invoke;
  v20[3] = &unk_1E7412250;
  v20[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __23__CNPostalAddress_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v4 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __23__CNPostalAddress_hash__block_invoke_3;
  v18[3] = &unk_1E7412250;
  v18[4] = self;
  v5 = _Block_copy(v18);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __23__CNPostalAddress_hash__block_invoke_4;
  v17[3] = &unk_1E7412250;
  v17[4] = self;
  v6 = _Block_copy(v17);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __23__CNPostalAddress_hash__block_invoke_5;
  v16[3] = &unk_1E7412250;
  v16[4] = self;
  v7 = _Block_copy(v16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __23__CNPostalAddress_hash__block_invoke_6;
  v15[3] = &unk_1E7412250;
  v15[4] = self;
  v8 = _Block_copy(v15);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __23__CNPostalAddress_hash__block_invoke_7;
  v14[3] = &unk_1E7412250;
  v14[4] = self;
  v9 = _Block_copy(v14);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __23__CNPostalAddress_hash__block_invoke_8;
  v13[3] = &unk_1E7412250;
  v13[4] = self;
  v10 = _Block_copy(v13);
  v11 = [v3 hashWithBlocks:{v20, v4, v5, v6, v7, v8, v9, v10, 0}];

  return v11;
}

uint64_t __23__CNPostalAddress_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) street];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __23__CNPostalAddress_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) subLocality];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __23__CNPostalAddress_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) city];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __23__CNPostalAddress_hash__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) subAdministrativeArea];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __23__CNPostalAddress_hash__block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) state];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __23__CNPostalAddress_hash__block_invoke_6(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) postalCode];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __23__CNPostalAddress_hash__block_invoke_7(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) country];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __23__CNPostalAddress_hash__block_invoke_8(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) ISOCountryCode];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (BOOL)isValid:(id *)valid
{
  if (isValid__cn_once_token_0_3 != -1)
  {
    [CNPostalAddress isValid:];
  }

  v5 = isValid__cn_once_object_0_3;
  if (isValid__cn_once_token_1_3 != -1)
  {
    [CNPostalAddress isValid:];
  }

  v6 = isValid__cn_once_token_2_3;
  v7 = isValid__cn_once_object_1_3;
  if (v6 != -1)
  {
    [CNPostalAddress isValid:];
  }

  v8 = [CN areValidKeyPaths:v5 forObject:self expectedClasses:v7 allowNil:isValid__cn_once_object_2_3 error:valid];

  return v8;
}

uint64_t __27__CNPostalAddress_isValid___block_invoke()
{
  v0 = [&unk_1F09875E8 copy];
  v1 = isValid__cn_once_object_0_3;
  isValid__cn_once_object_0_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __27__CNPostalAddress_isValid___block_invoke_2()
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:9];
  v1 = [v0 copy];
  v2 = isValid__cn_once_object_1_3;
  isValid__cn_once_object_1_3 = v1;
}

uint64_t __27__CNPostalAddress_isValid___block_invoke_3()
{
  v0 = [&unk_1F0987600 copy];
  v1 = isValid__cn_once_object_2_3;
  isValid__cn_once_object_2_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)setStreet:(id)street
{
  if (self->_street != street)
  {
    v5 = [street copy];
    street = self->_street;
    self->_street = v5;

    MEMORY[0x1EEE66BB8](v5, street);
  }
}

- (void)setSubLocality:(id)locality
{
  if (self->_subLocality != locality)
  {
    v5 = [locality copy];
    subLocality = self->_subLocality;
    self->_subLocality = v5;

    MEMORY[0x1EEE66BB8](v5, subLocality);
  }
}

- (void)setCity:(id)city
{
  if (self->_city != city)
  {
    v5 = [city copy];
    city = self->_city;
    self->_city = v5;

    MEMORY[0x1EEE66BB8](v5, city);
  }
}

- (void)setSubAdministrativeArea:(id)area
{
  if (self->_subAdministrativeArea != area)
  {
    v5 = [area copy];
    subAdministrativeArea = self->_subAdministrativeArea;
    self->_subAdministrativeArea = v5;

    MEMORY[0x1EEE66BB8](v5, subAdministrativeArea);
  }
}

- (void)setState:(id)state
{
  if (self->_state != state)
  {
    v5 = [state copy];
    state = self->_state;
    self->_state = v5;

    MEMORY[0x1EEE66BB8](v5, state);
  }
}

- (void)setPostalCode:(id)code
{
  if (self->_postalCode != code)
  {
    v5 = [code copy];
    postalCode = self->_postalCode;
    self->_postalCode = v5;

    MEMORY[0x1EEE66BB8](v5, postalCode);
  }
}

- (void)setCountry:(id)country
{
  if (self->_country != country)
  {
    v5 = [country copy];
    country = self->_country;
    self->_country = v5;

    MEMORY[0x1EEE66BB8](v5, country);
  }
}

- (void)setISOCountryCode:(id)code
{
  if (self->_ISOCountryCode != code)
  {
    v5 = [code copy];
    ISOCountryCode = self->_ISOCountryCode;
    self->_ISOCountryCode = v5;

    MEMORY[0x1EEE66BB8](v5, ISOCountryCode);
  }
}

@end