@interface LPMapMetadata
- (BOOL)_isDirections;
- (BOOL)_isOnlyCoordinates;
- (BOOL)isEqual:(id)equal;
- (CLLocationCoordinate2D)location;
- (LPMapMetadata)init;
- (LPMapMetadata)initWithCoder:(id)coder;
- (id)_address;
- (id)_bottomLineForTwoUpForTransformer:(id)transformer;
- (id)_deduplicatedAddress;
- (id)_directionsDestinationAddress;
- (id)_directionsSourceAddress;
- (id)_iconForTransport;
- (id)_name;
- (id)_resolvedImage;
- (id)_singleLineShortDescription;
- (id)_singleLineVerboseDescription;
- (id)_topLineForThreeUpForTransformer:(id)transformer;
- (id)_topLineForTransformer:(id)transformer;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fallbackIconForTransformer:(id)transformer;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewImageForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (int64_t)_style;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPMapMetadata

- (LPMapMetadata)init
{
  v6.receiver = self;
  v6.super_class = LPMapMetadata;
  v2 = [(LPMapMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 152) = *MEMORY[0x1E6985CC0];
    v4 = v2;
  }

  return v3;
}

- (LPMapMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v59.receiver = self;
  v59.super_class = LPMapMetadata;
  v5 = [(LPMapMetadata *)&v59 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"name");
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v8 = decodeNumberForKey(coderCopy, @"locationLatitude");
    v9 = decodeNumberForKey(coderCopy, @"locationLongitude");
    v10 = v9;
    v11 = (v5 + 152);
    if (v8 && v9)
    {
      [v8 doubleValue];
      v13 = v12;
      [v10 doubleValue];
      v15 = CLLocationCoordinate2DMake(v13, v14);
      *v11 = v15.latitude;
      *(v5 + 20) = *&v15.longitude;
    }

    else
    {
      *v11 = *MEMORY[0x1E6985CC0];
    }

    v16 = decodeStringForKey(coderCopy, @"address");
    v17 = *(v5 + 3);
    *(v5 + 3) = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy _lp_strictlyDecodeObjectOfClasses:v20 forKey:@"addressComponents"];
    v22 = *(v5 + 4);
    *(v5 + 4) = v21;

    v23 = decodeStringForKey(coderCopy, @"category");
    v24 = *(v5 + 5);
    *(v5 + 5) = v23;

    v25 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"categoryIcon"];
    v26 = *(v5 + 6);
    *(v5 + 6) = v25;

    v27 = decodeStringForKey(coderCopy, @"searchQuery");
    v28 = *(v5 + 7);
    *(v5 + 7) = v27;

    v29 = decodeStringForKey(coderCopy, @"directionsType");
    v30 = *(v5 + 8);
    *(v5 + 8) = v29;

    v31 = decodeNumberForKey(coderCopy, @"transportType");
    v32 = *(v5 + 9);
    *(v5 + 9) = v31;

    v33 = decodeStringForKey(coderCopy, @"directionsSourceAddress");
    v34 = *(v5 + 10);
    *(v5 + 10) = v33;

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [coderCopy _lp_strictlyDecodeObjectOfClasses:v37 forKey:@"directionsSourceAddressComponents"];
    v39 = *(v5 + 11);
    *(v5 + 11) = v38;

    v40 = decodeStringForKey(coderCopy, @"directionsSourceLocationName");
    v41 = *(v5 + 12);
    *(v5 + 12) = v40;

    v42 = decodeStringForKey(coderCopy, @"directionsDestinationAddress");
    v43 = *(v5 + 13);
    *(v5 + 13) = v42;

    v44 = MEMORY[0x1E695DFD8];
    v45 = objc_opt_class();
    v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
    v47 = [coderCopy _lp_strictlyDecodeObjectOfClasses:v46 forKey:@"directionsDestinationAddressComponents"];
    v48 = *(v5 + 14);
    *(v5 + 14) = v47;

    v49 = decodeStringForKey(coderCopy, @"directionsDestinationLocationName");
    v50 = *(v5 + 15);
    *(v5 + 15) = v49;

    v51 = decodeNumberForKey(coderCopy, @"distance");
    v52 = *(v5 + 16);
    *(v5 + 16) = v51;

    v53 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"image"];
    v54 = *(v5 + 17);
    *(v5 + 17) = v53;

    v55 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"darkImage"];
    v56 = *(v5 + 18);
    *(v5 + 18) = v55;

    v5[11] = [coderCopy decodeBoolForKey:@"isPointOfInterest"];
    v57 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:*&self->_isPointOfInterest forKey:@"name"];
  if (CLLocationCoordinate2DIsValid(*&self->_darkImage))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:*&self->_darkImage];
    [coderCopy _lp_encodeObjectIfNotNil:v4 forKey:@"locationLatitude"];

    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_location.latitude];
    [coderCopy _lp_encodeObjectIfNotNil:v5 forKey:@"locationLongitude"];
  }

  [coderCopy _lp_encodeStringIfNotNil:self->_name forKey:@"address"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_address forKey:@"addressComponents"];
  [coderCopy _lp_encodeStringIfNotNil:self->_addressComponents forKey:@"category"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_category forKey:@"categoryIcon"];
  [coderCopy _lp_encodeStringIfNotNil:self->_categoryIcon forKey:@"searchQuery"];
  [coderCopy _lp_encodeStringIfNotNil:self->_searchQuery forKey:@"directionsType"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_directionsType forKey:@"transportType"];
  [coderCopy _lp_encodeStringIfNotNil:self->_transportType forKey:@"directionsSourceAddress"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_directionsSourceAddress forKey:@"directionsSourceAddressComponents"];
  [coderCopy _lp_encodeStringIfNotNil:self->_directionsSourceAddressComponents forKey:@"directionsSourceLocationName"];
  [coderCopy _lp_encodeStringIfNotNil:self->_directionsSourceLocationName forKey:@"directionsDestinationAddress"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_directionsDestinationAddress forKey:@"directionsDestinationAddressComponents"];
  [coderCopy _lp_encodeStringIfNotNil:self->_directionsDestinationAddressComponents forKey:@"directionsDestinationLocationName"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_directionsDestinationLocationName forKey:@"distance"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_distance forKey:@"image"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_image forKey:@"darkImage"];
  [coderCopy encodeBool:*(&self->super.__disallowsURLOverrideByDelegate + 1) forKey:@"isPointOfInterest"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPMapMetadata allocWithZone:zone];
  if (v4)
  {
    name = [(LPMapMetadata *)self name];
    [(LPMapMetadata *)v4 setName:name];

    [(LPMapMetadata *)self location];
    [(LPMapMetadata *)v4 setLocation:?];
    address = [(LPMapMetadata *)self address];
    [(LPMapMetadata *)v4 setAddress:address];

    addressComponents = [(LPMapMetadata *)self addressComponents];
    [(LPMapMetadata *)v4 setAddressComponents:addressComponents];

    category = [(LPMapMetadata *)self category];
    [(LPMapMetadata *)v4 setCategory:category];

    categoryIcon = [(LPMapMetadata *)self categoryIcon];
    [(LPMapMetadata *)v4 setCategoryIcon:categoryIcon];

    searchQuery = [(LPMapMetadata *)self searchQuery];
    [(LPMapMetadata *)v4 setSearchQuery:searchQuery];

    directionsType = [(LPMapMetadata *)self directionsType];
    [(LPMapMetadata *)v4 setDirectionsType:directionsType];

    transportType = [(LPMapMetadata *)self transportType];
    [(LPMapMetadata *)v4 setTransportType:transportType];

    directionsSourceAddress = [(LPMapMetadata *)self directionsSourceAddress];
    [(LPMapMetadata *)v4 setDirectionsSourceAddress:directionsSourceAddress];

    directionsSourceAddressComponents = [(LPMapMetadata *)self directionsSourceAddressComponents];
    [(LPMapMetadata *)v4 setDirectionsSourceAddressComponents:directionsSourceAddressComponents];

    directionsSourceLocationName = [(LPMapMetadata *)self directionsSourceLocationName];
    [(LPMapMetadata *)v4 setDirectionsSourceLocationName:directionsSourceLocationName];

    directionsDestinationAddress = [(LPMapMetadata *)self directionsDestinationAddress];
    [(LPMapMetadata *)v4 setDirectionsDestinationAddress:directionsDestinationAddress];

    directionsDestinationAddressComponents = [(LPMapMetadata *)self directionsDestinationAddressComponents];
    [(LPMapMetadata *)v4 setDirectionsDestinationAddressComponents:directionsDestinationAddressComponents];

    directionsDestinationLocationName = [(LPMapMetadata *)self directionsDestinationLocationName];
    [(LPMapMetadata *)v4 setDirectionsDestinationLocationName:directionsDestinationLocationName];

    distance = [(LPMapMetadata *)self distance];
    [(LPMapMetadata *)v4 setDistance:distance];

    image = [(LPMapMetadata *)self image];
    [(LPMapMetadata *)v4 setImage:image];

    darkImage = [(LPMapMetadata *)self darkImage];
    [(LPMapMetadata *)v4 setDarkImage:darkImage];

    [(LPMapMetadata *)v4 setIsPointOfInterest:[(LPMapMetadata *)self isPointOfInterest]];
    v22 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPMapMetadata;
  if ([(LPMapMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v5 = (objectsAreEqual_0(v6[2], *&self->_isPointOfInterest) & 1) != 0 && *(v6 + 20) == self->_location.latitude && *(v6 + 19) == *&self->_darkImage && objectsAreEqual_0(v6[3], self->_name) && objectsAreEqual_0(v6[4], self->_address) && objectsAreEqual_0(v6[5], self->_addressComponents) && objectsAreEqual_0(v6[6], self->_category) && objectsAreEqual_0(v6[7], self->_categoryIcon) && objectsAreEqual_0(v6[8], self->_searchQuery) && objectsAreEqual_0(v6[9], self->_directionsType) && objectsAreEqual_0(v6[10], self->_transportType) && objectsAreEqual_0(v6[11], self->_directionsSourceAddress) && objectsAreEqual_0(v6[12], self->_directionsSourceAddressComponents) && objectsAreEqual_0(v6[13], self->_directionsSourceLocationName) && objectsAreEqual_0(v6[14], self->_directionsDestinationAddress) && objectsAreEqual_0(v6[15], self->_directionsDestinationAddressComponents) && objectsAreEqual_0(v6[16], self->_directionsDestinationLocationName) && objectsAreEqual_0(v6[17], self->_distance) && objectsAreEqual_0(v6[18], self->_image) && *(v6 + 11) == *(&self->super.__disallowsURLOverrideByDelegate + 1);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_enumerateAsynchronousFields:(id)fields
{
  fieldsCopy = fields;
  fieldsCopy[2](fieldsCopy, @"image");
  fieldsCopy[2](fieldsCopy, @"darkImage");
  fieldsCopy[2](fieldsCopy, @"categoryIcon");
}

- (CLLocationCoordinate2D)location
{
  darkImage = self->_darkImage;
  latitude = self->_location.latitude;
  result.longitude = latitude;
  result.latitude = *&darkImage;
  return result;
}

- (id)_address
{
  addressComponents = [(LPMapMetadata *)self addressComponents];
  address = [(LPMapMetadata *)self address];
  v5 = formattedAddressWithFallback(addressComponents, address, [(LPMapMetadata *)self isPointOfInterest]);

  return v5;
}

- (id)_directionsSourceAddress
{
  directionsSourceLocationName = [(LPMapMetadata *)self directionsSourceLocationName];

  if (directionsSourceLocationName)
  {
    directionsSourceLocationName2 = [(LPMapMetadata *)self directionsSourceLocationName];
  }

  else
  {
    directionsSourceAddressComponents = [(LPMapMetadata *)self directionsSourceAddressComponents];
    directionsSourceAddress = [(LPMapMetadata *)self directionsSourceAddress];
    directionsSourceLocationName2 = formattedAddressWithFallback(directionsSourceAddressComponents, directionsSourceAddress, [(LPMapMetadata *)self isPointOfInterest]);
  }

  return directionsSourceLocationName2;
}

- (id)_directionsDestinationAddress
{
  directionsDestinationLocationName = [(LPMapMetadata *)self directionsDestinationLocationName];

  if (directionsDestinationLocationName)
  {
    directionsDestinationLocationName2 = [(LPMapMetadata *)self directionsDestinationLocationName];
  }

  else
  {
    directionsDestinationAddressComponents = [(LPMapMetadata *)self directionsDestinationAddressComponents];
    directionsDestinationAddress = [(LPMapMetadata *)self directionsDestinationAddress];
    directionsDestinationLocationName2 = formattedAddressWithFallback(directionsDestinationAddressComponents, directionsDestinationAddress, [(LPMapMetadata *)self isPointOfInterest]);
  }

  return directionsDestinationLocationName2;
}

- (BOOL)_isDirections
{
  directionsSourceAddress = [(LPMapMetadata *)self directionsSourceAddress];
  if (directionsSourceAddress)
  {
    v4 = 1;
  }

  else
  {
    directionsSourceAddressComponents = [(LPMapMetadata *)self directionsSourceAddressComponents];
    if (directionsSourceAddressComponents)
    {
      v4 = 1;
    }

    else
    {
      directionsDestinationAddress = [(LPMapMetadata *)self directionsDestinationAddress];
      if (directionsDestinationAddress)
      {
        v4 = 1;
      }

      else
      {
        directionsDestinationAddressComponents = [(LPMapMetadata *)self directionsDestinationAddressComponents];
        v4 = directionsDestinationAddressComponents != 0;
      }
    }
  }

  return v4;
}

- (BOOL)_isOnlyCoordinates
{
  [(LPMapMetadata *)self location];
  if (!CLLocationCoordinate2DIsValid(v9) || [(LPMapMetadata *)self _isDirections])
  {
    return 0;
  }

  name = [(LPMapMetadata *)self name];
  if (name)
  {
    v3 = 0;
  }

  else
  {
    searchQuery = [(LPMapMetadata *)self searchQuery];
    if (searchQuery)
    {
      v3 = 0;
    }

    else
    {
      address = [(LPMapMetadata *)self address];
      if (address)
      {
        v3 = 0;
      }

      else
      {
        addressComponents = [(LPMapMetadata *)self addressComponents];
        v3 = addressComponents == 0;
      }
    }
  }

  return v3;
}

- (id)_name
{
  name = [(LPMapMetadata *)self name];

  if (name)
  {
    name2 = [(LPMapMetadata *)self name];
  }

  else
  {
    name2 = [(LPMapMetadata *)self addressComponents];

    if (name2)
    {
      addressComponents = [(LPMapMetadata *)self addressComponents];
      name2 = [addressComponents street];
    }
  }

  return name2;
}

- (id)_deduplicatedAddress
{
  _address = [(LPMapMetadata *)self _address];
  _name = [(LPMapMetadata *)self _name];
  if ([_name length] && objc_msgSend(_address, "_lp_hasCaseInsensitivePrefix:", _name))
  {
    v5 = [_address substringFromIndex:{objc_msgSend(_name, "length")}];

    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    _address = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  }

  return _address;
}

- (id)_singleLineShortDescription
{
  if ([(LPMapMetadata *)self _isOnlyCoordinates])
  {
    _singleLineVerboseDescription = [(LPMapMetadata *)self _singleLineVerboseDescription];
LABEL_5:
    v5 = _singleLineVerboseDescription;
    goto LABEL_6;
  }

  searchQuery = [(LPMapMetadata *)self searchQuery];

  if (searchQuery)
  {
    _singleLineVerboseDescription = [(LPMapMetadata *)self searchQuery];
    goto LABEL_5;
  }

  _directionsDestinationAddress = [(LPMapMetadata *)self _directionsDestinationAddress];

  if (_directionsDestinationAddress)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = LPLocalizedString(@"Directions to %@");
    _directionsDestinationAddress2 = [(LPMapMetadata *)self _directionsDestinationAddress];
    v11 = [v8 localizedStringWithFormat:v9, _directionsDestinationAddress2];
LABEL_13:
    v5 = v11;

    goto LABEL_6;
  }

  _directionsSourceAddress = [(LPMapMetadata *)self _directionsSourceAddress];

  if (_directionsSourceAddress)
  {
    v13 = MEMORY[0x1E696AEC0];
    v9 = LPLocalizedString(@"Directions from %@");
    _directionsDestinationAddress2 = [(LPMapMetadata *)self _directionsSourceAddress];
    v11 = [v13 localizedStringWithFormat:v9, _directionsDestinationAddress2];
    goto LABEL_13;
  }

  _name = [(LPMapMetadata *)self _name];

  if (_name)
  {
    _singleLineVerboseDescription = [(LPMapMetadata *)self _name];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (id)_singleLineVerboseDescription
{
  if ([(LPMapMetadata *)self _isOnlyCoordinates])
  {
    v3 = MEMORY[0x1E696AEC0];
    _name = LPLocalizedString(@"Location: %@");
    [(LPMapMetadata *)self location];
    searchQuery2 = stringFromCLLocationCoordinate2D(v5, v6);
    v8 = [v3 localizedStringWithFormat:_name, searchQuery2];
LABEL_9:
    v15 = v8;
    goto LABEL_10;
  }

  searchQuery = [(LPMapMetadata *)self searchQuery];

  if (searchQuery)
  {
    v10 = MEMORY[0x1E696AEC0];
    _name = LPLocalizedString(@"Search for “%@”");
    searchQuery2 = [(LPMapMetadata *)self searchQuery];
    v8 = [v10 localizedStringWithFormat:_name, searchQuery2];
    goto LABEL_9;
  }

  _directionsDestinationAddress = [(LPMapMetadata *)self _directionsDestinationAddress];

  if (_directionsDestinationAddress)
  {
    v12 = MEMORY[0x1E696AEC0];
    _name = LPLocalizedString(@"Directions to %@");
    searchQuery2 = [(LPMapMetadata *)self _directionsDestinationAddress];
    v8 = [v12 localizedStringWithFormat:_name, searchQuery2];
    goto LABEL_9;
  }

  _directionsSourceAddress = [(LPMapMetadata *)self _directionsSourceAddress];

  if (_directionsSourceAddress)
  {
    v14 = MEMORY[0x1E696AEC0];
    _name = LPLocalizedString(@"Directions from %@");
    searchQuery2 = [(LPMapMetadata *)self _directionsSourceAddress];
    v8 = [v14 localizedStringWithFormat:_name, searchQuery2];
    goto LABEL_9;
  }

  _name = [(LPMapMetadata *)self _name];
  searchQuery2 = [(LPMapMetadata *)self _deduplicatedAddress];
  v17 = joinedBySpace(_name, searchQuery2);
  v15 = [v17 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

LABEL_10:

  return v15;
}

- (id)_topLineForTransformer:(id)transformer
{
  transformerCopy = transformer;
  if ([(LPMapMetadata *)self _isOnlyCoordinates])
  {
    if ([transformerCopy isInSenderContext])
    {
      LPLocalizedString(@"Your Location");
    }

    else
    {
      LPLocalizedString(@"Location");
    }
    searchQuery2 = ;
  }

  else
  {
    searchQuery = [(LPMapMetadata *)self searchQuery];

    if (searchQuery)
    {
      searchQuery2 = [(LPMapMetadata *)self searchQuery];
    }

    else if ([(LPMapMetadata *)self _isDirections])
    {
      if ([transformerCopy effectiveSizeClass] != 2 || (-[LPMapMetadata distance](self, "distance"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
      {
        _directionsDestinationAddress = [(LPMapMetadata *)self _directionsDestinationAddress];
        v11 = _directionsDestinationAddress;
        if (_directionsDestinationAddress)
        {
          _directionsSourceAddress = _directionsDestinationAddress;
        }

        else
        {
          _directionsSourceAddress = [(LPMapMetadata *)self _directionsSourceAddress];
        }

        v8 = _directionsSourceAddress;

        goto LABEL_14;
      }

      searchQuery2 = [(LPMapMetadata *)self _singleLineVerboseDescription];
    }

    else
    {
      searchQuery2 = [(LPMapMetadata *)self _name];
    }
  }

  v8 = searchQuery2;
LABEL_14:

  return v8;
}

- (id)_topLineForThreeUpForTransformer:(id)transformer
{
  v4 = [(LPMapMetadata *)self _topLineForTransformer:transformer];
  if (!-[LPMapMetadata isPointOfInterest](self, "isPointOfInterest") && (-[LPMapMetadata addressComponents](self, "addressComponents"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (-[LPMapMetadata name](self, "name"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v4 isEqualToString:v6], v6, v5, v7))
  {
    addressComponents = [(LPMapMetadata *)self addressComponents];
    street = [addressComponents street];
  }

  else
  {
    street = v4;
  }

  return street;
}

- (id)_bottomLineForTwoUpForTransformer:(id)transformer
{
  transformerCopy = transformer;
  if ([(LPMapMetadata *)self _isOnlyCoordinates])
  {
    [(LPMapMetadata *)self location];
    v7 = stringFromCLLocationCoordinate2D(v5, v6);
    goto LABEL_24;
  }

  v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
  category = [(LPMapMetadata *)self category];

  if (category)
  {
    category2 = [(LPMapMetadata *)self category];
    [v8 appendString:category2];
  }

  if ([(LPMapMetadata *)self _isDirections])
  {
    distance = [(LPMapMetadata *)self distance];

    if (distance)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2050000000;
      v12 = getMKDistanceFormatterClass_softClass;
      v25 = getMKDistanceFormatterClass_softClass;
      if (!getMKDistanceFormatterClass_softClass)
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __getMKDistanceFormatterClass_block_invoke;
        v21[3] = &unk_1E7A35518;
        v21[4] = &v22;
        __getMKDistanceFormatterClass_block_invoke(v21);
        v12 = v23[3];
      }

      v13 = v12;
      _Block_object_dispose(&v22, 8);
      v14 = [[v12 alloc] init];
      if ([v8 length])
      {
        [v8 appendString:@" · "];
      }

      distance2 = [(LPMapMetadata *)self distance];
      [distance2 doubleValue];
      v16 = [v14 stringFromDistance:?];
      [v8 appendString:v16];
    }

    else
    {
      if ([v8 length])
      {
        goto LABEL_22;
      }

      v14 = LPLocalizedString(@"Directions");
      [v8 appendString:v14];
    }

LABEL_22:
    v7 = v8;
    goto LABEL_23;
  }

  addressComponents = [(LPMapMetadata *)self addressComponents];

  if (addressComponents)
  {
    addressComponents2 = [(LPMapMetadata *)self addressComponents];
    v19 = cityAndState(addressComponents2);

    if ([v19 length])
    {
      if ([v8 length])
      {
        [v8 appendString:@" · "];
      }

      [v8 appendString:v19];
    }
  }

  if ([v8 length])
  {
    goto LABEL_22;
  }

  v7 = 0;
LABEL_23:

LABEL_24:

  return v7;
}

- (int64_t)_style
{
  if ([(LPMapMetadata *)self _isOnlyCoordinates])
  {
    return 59;
  }

  searchQuery = [(LPMapMetadata *)self searchQuery];

  if (searchQuery)
  {
    return 32;
  }

  else
  {
    return 31;
  }
}

- (id)_resolvedImage
{
  image = [(LPMapMetadata *)self image];
  platformImage = [image platformImage];

  if (platformImage)
  {
    v5 = [LPImage alloc];
    image2 = [(LPMapMetadata *)self image];
    platformImage = [(LPImage *)v5 _initWithImage:image2];

    darkImage = [(LPMapMetadata *)self darkImage];
    [platformImage _setDarkInterfaceAlternativeImage:darkImage];
  }

  return platformImage;
}

- (id)_iconForTransport
{
  transportType = [(LPMapMetadata *)self transportType];

  if (!transportType)
  {
    goto LABEL_5;
  }

  transportType2 = [(LPMapMetadata *)self transportType];
  integerValue = [transportType2 integerValue];

  if (integerValue <= 1)
  {
    if (integerValue == 1)
    {
      v6 = +[LPResources transportTransitIcon];
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (integerValue != 2)
  {
    if (integerValue == 3)
    {
      v6 = +[LPResources transportBicycleIcon];
      goto LABEL_6;
    }

LABEL_5:
    v6 = +[LPResources transportDriveIcon];
    goto LABEL_6;
  }

  v6 = +[LPResources transportWalkIcon];
LABEL_6:

  return v6;
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v5 = [transformerCopy commonPresentationPropertiesForStyle:{-[LPMapMetadata _style](self, "_style")}];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  if ([v5 style] == 59)
  {
    categoryIcon = +[LPResources mapCoordinatesIcon];
    [v5 setImage:categoryIcon];
  }

  else if ([(LPMapMetadata *)self _isDirections])
  {
    categoryIcon = objc_alloc_init(LPImagePresentationProperties);
    if (!sizeClassRequiresLargeMedia([transformerCopy effectiveSizeClass]) && objc_msgSend(transformerCopy, "effectiveSizeClass") != 10)
    {
      [(LPImagePresentationProperties *)categoryIcon setFilter:13];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      [(LPImagePresentationProperties *)categoryIcon setBackgroundColor:systemBlueColor];

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(LPImagePresentationProperties *)categoryIcon setMaskColor:whiteColor];

      [(LPImagePresentationProperties *)categoryIcon setShouldApplyBackground:1];
    }

    _iconForTransport = [(LPMapMetadata *)self _iconForTransport];
    [transformerCopy _populateProperties:v5 withPrimaryIcon:_iconForTransport iconProperties:categoryIcon];
  }

  else
  {
    if ([transformerCopy _prefersImageAsIconWithStyle:{-[LPMapMetadata _style](self, "_style")}] && (-[LPMapMetadata categoryIcon](self, "categoryIcon"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      categoryIcon = [(LPMapMetadata *)self categoryIcon];
    }

    else
    {
      categoryIcon = [(LPMapMetadata *)self _resolvedImage];
      darkImage = [(LPMapMetadata *)self darkImage];

      if (darkImage)
      {
        darkImage2 = [(LPMapMetadata *)self darkImage];
        [(LPImagePresentationProperties *)categoryIcon _setDarkInterfaceAlternativeImage:darkImage2];
      }
    }

    [transformerCopy _populateProperties:v5 withPrimaryImage:categoryIcon];
  }

  v14 = [transformerCopy _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if (v14 <= 1)
  {
    if (!v14)
    {
      _name = LPLocalizedString(@" Maps");
      _singleLineShortDescription = [(LPMapMetadata *)self _singleLineShortDescription];
      captionBar10 = _singleLineShortDescription;
      if (_singleLineShortDescription)
      {
        v27 = _singleLineShortDescription;
      }

      else
      {
        v27 = _name;
      }

      captionBar = [v5 captionBar];
      captionBar4 = [captionBar top];
      leading = [captionBar4 leading];
      [leading setText:v27];
      goto LABEL_44;
    }

    if (v14 != 1)
    {
      goto LABEL_48;
    }

    v15 = [(LPMapMetadata *)self _topLineForTransformer:transformerCopy];
    captionBar2 = [v5 captionBar];
    v17 = [captionBar2 top];
    leading2 = [v17 leading];
    [leading2 setText:v15];

    _name = [(LPMapMetadata *)self _bottomLineForTwoUpForTransformer:transformerCopy];
    if ([v5 style] == 59 || sizeClassIsCardHeading(objc_msgSend(transformerCopy, "effectiveSizeClass")))
    {
      captionBar10 = _name;
      if (!_name)
      {
        captionBar10 = LPLocalizedString(@" Maps");
      }

      captionBar3 = [v5 captionBar];
      bottom = [captionBar3 bottom];
      leading3 = [bottom leading];
      [leading3 setText:captionBar10];

      if (_name)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    captionBar10 = LPLocalizedString(@" Maps");
    captionBar = joinedByDot(captionBar10, _name);
    captionBar4 = [v5 captionBar];
    leading = [captionBar4 bottom];
    v30Leading = [leading leading];
    [v30Leading setText:captionBar];
LABEL_43:

LABEL_44:
    goto LABEL_45;
  }

  if (v14 != 2)
  {
    if (v14 != 3)
    {
      goto LABEL_48;
    }

    v24 = [(LPMapMetadata *)self _topLineForTransformer:transformerCopy];
    if ([(LPMapMetadata *)self _isDirections])
    {
      _deduplicatedAddress = LPLocalizedString(@"Directions");
    }

    else
    {
      searchQuery = [(LPMapMetadata *)self searchQuery];

      if (searchQuery)
      {
        captionBar10 = 0;
        goto LABEL_37;
      }

      _deduplicatedAddress = [(LPMapMetadata *)self _deduplicatedAddress];
    }

    captionBar10 = _deduplicatedAddress;
LABEL_37:
    metadata = [transformerCopy metadata];
    v42 = [metadata URL];
    v43 = [LPPresentationSpecializations isMuninURL:v42];

    if (v43)
    {
      v44 = LPLocalizedString(@"Look Around");
      captionBar5 = [v5 captionBar];
      aboveTop = [captionBar5 aboveTop];
      leading4 = [aboveTop leading];
      [leading4 setText:v44];

      _name = [(LPMapMetadata *)self _name];

      if (!_name)
      {
LABEL_39:
        captionBar6 = [v5 captionBar];
        bottom2 = [captionBar6 top];
        leading5 = [bottom2 leading];
        [leading5 setText:captionBar10];
LABEL_42:

        captionBar = LPLocalizedString(@" Maps");
        captionBar4 = [v5 captionBar];
        leading = [captionBar4 belowBottom];
        v30Leading = [leading leading];
        [v30Leading setText:captionBar];
        goto LABEL_43;
      }
    }

    else
    {
      _name = v24;
      if (!v24)
      {
        goto LABEL_39;
      }
    }

    captionBar7 = [v5 captionBar];
    v52 = [captionBar7 top];
    leading6 = [v52 leading];
    [leading6 setText:_name];

    captionBar6 = [v5 captionBar];
    bottom2 = [captionBar6 bottom];
    leading5 = [bottom2 leading];
    [leading5 setText:captionBar10];
    goto LABEL_42;
  }

  v31 = [(LPMapMetadata *)self _topLineForThreeUpForTransformer:transformerCopy];
  captionBar8 = [v5 captionBar];
  v33 = [captionBar8 top];
  leading7 = [v33 leading];
  [leading7 setText:v31];

  v35 = [(LPMapMetadata *)self _bottomLineForTwoUpForTransformer:transformerCopy];
  captionBar9 = [v5 captionBar];
  bottom3 = [captionBar9 bottom];
  leading8 = [bottom3 leading];
  [leading8 setText:v35];

  _name = LPLocalizedString(@" Maps");
  captionBar10 = [v5 captionBar];
  captionBar = [captionBar10 belowBottom];
  captionBar4 = [captionBar leading];
  [captionBar4 setText:_name];
LABEL_45:

LABEL_46:
LABEL_47:

LABEL_48:

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  if ([(LPMapMetadata *)self _isOnlyCoordinates])
  {
    _singleLineVerboseDescription = [(LPMapMetadata *)self _singleLineVerboseDescription];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = LPLocalizedString(@"Location: %@");
    _name = [(LPMapMetadata *)self _name];
    _singleLineVerboseDescription2 = _name;
    if (!_name)
    {
      _singleLineVerboseDescription2 = [(LPMapMetadata *)self _singleLineVerboseDescription];
    }

    _singleLineVerboseDescription = [v5 localizedStringWithFormat:v6, _singleLineVerboseDescription2];
    if (!_name)
    {
    }
  }

  return _singleLineVerboseDescription;
}

- (id)previewImageForTransformer:(id)transformer
{
  image = [(LPMapMetadata *)self image];

  return image;
}

- (id)fallbackIconForTransformer:(id)transformer
{
  if ([(LPMapMetadata *)self _isOnlyCoordinates])
  {
    v4 = +[LPResources mapCoordinatesIcon];
  }

  else
  {
    if ([(LPMapMetadata *)self _isDirections])
    {
      [(LPMapMetadata *)self _iconForTransport];
    }

    else
    {
      +[LPResources mapIcon];
    }
    v4 = ;
  }

  return v4;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  _singleLineVerboseDescription = [(LPMapMetadata *)self _singleLineVerboseDescription];
  [compatibilityCopy setTitle:_singleLineVerboseDescription];

  image = [(LPMapMetadata *)self image];
  [compatibilityCopy setImage:image];
}

@end