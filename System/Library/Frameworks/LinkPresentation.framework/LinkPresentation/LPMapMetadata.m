@interface LPMapMetadata
- (BOOL)_isDirections;
- (BOOL)_isOnlyCoordinates;
- (BOOL)isEqual:(id)a3;
- (CLLocationCoordinate2D)location;
- (LPMapMetadata)init;
- (LPMapMetadata)initWithCoder:(id)a3;
- (id)_address;
- (id)_bottomLineForTwoUpForTransformer:(id)a3;
- (id)_deduplicatedAddress;
- (id)_directionsDestinationAddress;
- (id)_directionsSourceAddress;
- (id)_iconForTransport;
- (id)_name;
- (id)_resolvedImage;
- (id)_singleLineShortDescription;
- (id)_singleLineVerboseDescription;
- (id)_topLineForThreeUpForTransformer:(id)a3;
- (id)_topLineForTransformer:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fallbackIconForTransformer:(id)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewImageForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (int64_t)_style;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
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

- (LPMapMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v59.receiver = self;
  v59.super_class = LPMapMetadata;
  v5 = [(LPMapMetadata *)&v59 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"name");
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v8 = decodeNumberForKey(v4, @"locationLatitude");
    v9 = decodeNumberForKey(v4, @"locationLongitude");
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

    v16 = decodeStringForKey(v4, @"address");
    v17 = *(v5 + 3);
    *(v5 + 3) = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 _lp_strictlyDecodeObjectOfClasses:v20 forKey:@"addressComponents"];
    v22 = *(v5 + 4);
    *(v5 + 4) = v21;

    v23 = decodeStringForKey(v4, @"category");
    v24 = *(v5 + 5);
    *(v5 + 5) = v23;

    v25 = [v4 _lp_strictlyDecodeLPImageForKey:@"categoryIcon"];
    v26 = *(v5 + 6);
    *(v5 + 6) = v25;

    v27 = decodeStringForKey(v4, @"searchQuery");
    v28 = *(v5 + 7);
    *(v5 + 7) = v27;

    v29 = decodeStringForKey(v4, @"directionsType");
    v30 = *(v5 + 8);
    *(v5 + 8) = v29;

    v31 = decodeNumberForKey(v4, @"transportType");
    v32 = *(v5 + 9);
    *(v5 + 9) = v31;

    v33 = decodeStringForKey(v4, @"directionsSourceAddress");
    v34 = *(v5 + 10);
    *(v5 + 10) = v33;

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [v4 _lp_strictlyDecodeObjectOfClasses:v37 forKey:@"directionsSourceAddressComponents"];
    v39 = *(v5 + 11);
    *(v5 + 11) = v38;

    v40 = decodeStringForKey(v4, @"directionsSourceLocationName");
    v41 = *(v5 + 12);
    *(v5 + 12) = v40;

    v42 = decodeStringForKey(v4, @"directionsDestinationAddress");
    v43 = *(v5 + 13);
    *(v5 + 13) = v42;

    v44 = MEMORY[0x1E695DFD8];
    v45 = objc_opt_class();
    v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
    v47 = [v4 _lp_strictlyDecodeObjectOfClasses:v46 forKey:@"directionsDestinationAddressComponents"];
    v48 = *(v5 + 14);
    *(v5 + 14) = v47;

    v49 = decodeStringForKey(v4, @"directionsDestinationLocationName");
    v50 = *(v5 + 15);
    *(v5 + 15) = v49;

    v51 = decodeNumberForKey(v4, @"distance");
    v52 = *(v5 + 16);
    *(v5 + 16) = v51;

    v53 = [v4 _lp_strictlyDecodeLPImageForKey:@"image"];
    v54 = *(v5 + 17);
    *(v5 + 17) = v53;

    v55 = [v4 _lp_strictlyDecodeLPImageForKey:@"darkImage"];
    v56 = *(v5 + 18);
    *(v5 + 18) = v55;

    v5[11] = [v4 decodeBoolForKey:@"isPointOfInterest"];
    v57 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 _lp_encodeStringIfNotNil:*&self->_isPointOfInterest forKey:@"name"];
  if (CLLocationCoordinate2DIsValid(*&self->_darkImage))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:*&self->_darkImage];
    [v6 _lp_encodeObjectIfNotNil:v4 forKey:@"locationLatitude"];

    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_location.latitude];
    [v6 _lp_encodeObjectIfNotNil:v5 forKey:@"locationLongitude"];
  }

  [v6 _lp_encodeStringIfNotNil:self->_name forKey:@"address"];
  [v6 _lp_encodeObjectIfNotNil:self->_address forKey:@"addressComponents"];
  [v6 _lp_encodeStringIfNotNil:self->_addressComponents forKey:@"category"];
  [v6 _lp_encodeObjectIfNotNil:self->_category forKey:@"categoryIcon"];
  [v6 _lp_encodeStringIfNotNil:self->_categoryIcon forKey:@"searchQuery"];
  [v6 _lp_encodeStringIfNotNil:self->_searchQuery forKey:@"directionsType"];
  [v6 _lp_encodeObjectIfNotNil:self->_directionsType forKey:@"transportType"];
  [v6 _lp_encodeStringIfNotNil:self->_transportType forKey:@"directionsSourceAddress"];
  [v6 _lp_encodeObjectIfNotNil:self->_directionsSourceAddress forKey:@"directionsSourceAddressComponents"];
  [v6 _lp_encodeStringIfNotNil:self->_directionsSourceAddressComponents forKey:@"directionsSourceLocationName"];
  [v6 _lp_encodeStringIfNotNil:self->_directionsSourceLocationName forKey:@"directionsDestinationAddress"];
  [v6 _lp_encodeObjectIfNotNil:self->_directionsDestinationAddress forKey:@"directionsDestinationAddressComponents"];
  [v6 _lp_encodeStringIfNotNil:self->_directionsDestinationAddressComponents forKey:@"directionsDestinationLocationName"];
  [v6 _lp_encodeObjectIfNotNil:self->_directionsDestinationLocationName forKey:@"distance"];
  [v6 _lp_encodeObjectIfNotNil:self->_distance forKey:@"image"];
  [v6 _lp_encodeObjectIfNotNil:self->_image forKey:@"darkImage"];
  [v6 encodeBool:*(&self->super.__disallowsURLOverrideByDelegate + 1) forKey:@"isPointOfInterest"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPMapMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPMapMetadata *)self name];
    [(LPMapMetadata *)v4 setName:v5];

    [(LPMapMetadata *)self location];
    [(LPMapMetadata *)v4 setLocation:?];
    v6 = [(LPMapMetadata *)self address];
    [(LPMapMetadata *)v4 setAddress:v6];

    v7 = [(LPMapMetadata *)self addressComponents];
    [(LPMapMetadata *)v4 setAddressComponents:v7];

    v8 = [(LPMapMetadata *)self category];
    [(LPMapMetadata *)v4 setCategory:v8];

    v9 = [(LPMapMetadata *)self categoryIcon];
    [(LPMapMetadata *)v4 setCategoryIcon:v9];

    v10 = [(LPMapMetadata *)self searchQuery];
    [(LPMapMetadata *)v4 setSearchQuery:v10];

    v11 = [(LPMapMetadata *)self directionsType];
    [(LPMapMetadata *)v4 setDirectionsType:v11];

    v12 = [(LPMapMetadata *)self transportType];
    [(LPMapMetadata *)v4 setTransportType:v12];

    v13 = [(LPMapMetadata *)self directionsSourceAddress];
    [(LPMapMetadata *)v4 setDirectionsSourceAddress:v13];

    v14 = [(LPMapMetadata *)self directionsSourceAddressComponents];
    [(LPMapMetadata *)v4 setDirectionsSourceAddressComponents:v14];

    v15 = [(LPMapMetadata *)self directionsSourceLocationName];
    [(LPMapMetadata *)v4 setDirectionsSourceLocationName:v15];

    v16 = [(LPMapMetadata *)self directionsDestinationAddress];
    [(LPMapMetadata *)v4 setDirectionsDestinationAddress:v16];

    v17 = [(LPMapMetadata *)self directionsDestinationAddressComponents];
    [(LPMapMetadata *)v4 setDirectionsDestinationAddressComponents:v17];

    v18 = [(LPMapMetadata *)self directionsDestinationLocationName];
    [(LPMapMetadata *)v4 setDirectionsDestinationLocationName:v18];

    v19 = [(LPMapMetadata *)self distance];
    [(LPMapMetadata *)v4 setDistance:v19];

    v20 = [(LPMapMetadata *)self image];
    [(LPMapMetadata *)v4 setImage:v20];

    v21 = [(LPMapMetadata *)self darkImage];
    [(LPMapMetadata *)v4 setDarkImage:v21];

    [(LPMapMetadata *)v4 setIsPointOfInterest:[(LPMapMetadata *)self isPointOfInterest]];
    v22 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPMapMetadata;
  if ([(LPMapMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v5 = (objectsAreEqual_0(v6[2], *&self->_isPointOfInterest) & 1) != 0 && *(v6 + 20) == self->_location.latitude && *(v6 + 19) == *&self->_darkImage && objectsAreEqual_0(v6[3], self->_name) && objectsAreEqual_0(v6[4], self->_address) && objectsAreEqual_0(v6[5], self->_addressComponents) && objectsAreEqual_0(v6[6], self->_category) && objectsAreEqual_0(v6[7], self->_categoryIcon) && objectsAreEqual_0(v6[8], self->_searchQuery) && objectsAreEqual_0(v6[9], self->_directionsType) && objectsAreEqual_0(v6[10], self->_transportType) && objectsAreEqual_0(v6[11], self->_directionsSourceAddress) && objectsAreEqual_0(v6[12], self->_directionsSourceAddressComponents) && objectsAreEqual_0(v6[13], self->_directionsSourceLocationName) && objectsAreEqual_0(v6[14], self->_directionsDestinationAddress) && objectsAreEqual_0(v6[15], self->_directionsDestinationAddressComponents) && objectsAreEqual_0(v6[16], self->_directionsDestinationLocationName) && objectsAreEqual_0(v6[17], self->_distance) && objectsAreEqual_0(v6[18], self->_image) && *(v6 + 11) == *(&self->super.__disallowsURLOverrideByDelegate + 1);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_enumerateAsynchronousFields:(id)a3
{
  v3 = a3;
  v3[2](v3, @"image");
  v3[2](v3, @"darkImage");
  v3[2](v3, @"categoryIcon");
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
  v3 = [(LPMapMetadata *)self addressComponents];
  v4 = [(LPMapMetadata *)self address];
  v5 = formattedAddressWithFallback(v3, v4, [(LPMapMetadata *)self isPointOfInterest]);

  return v5;
}

- (id)_directionsSourceAddress
{
  v3 = [(LPMapMetadata *)self directionsSourceLocationName];

  if (v3)
  {
    v4 = [(LPMapMetadata *)self directionsSourceLocationName];
  }

  else
  {
    v5 = [(LPMapMetadata *)self directionsSourceAddressComponents];
    v6 = [(LPMapMetadata *)self directionsSourceAddress];
    v4 = formattedAddressWithFallback(v5, v6, [(LPMapMetadata *)self isPointOfInterest]);
  }

  return v4;
}

- (id)_directionsDestinationAddress
{
  v3 = [(LPMapMetadata *)self directionsDestinationLocationName];

  if (v3)
  {
    v4 = [(LPMapMetadata *)self directionsDestinationLocationName];
  }

  else
  {
    v5 = [(LPMapMetadata *)self directionsDestinationAddressComponents];
    v6 = [(LPMapMetadata *)self directionsDestinationAddress];
    v4 = formattedAddressWithFallback(v5, v6, [(LPMapMetadata *)self isPointOfInterest]);
  }

  return v4;
}

- (BOOL)_isDirections
{
  v3 = [(LPMapMetadata *)self directionsSourceAddress];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(LPMapMetadata *)self directionsSourceAddressComponents];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(LPMapMetadata *)self directionsDestinationAddress];
      if (v6)
      {
        v4 = 1;
      }

      else
      {
        v7 = [(LPMapMetadata *)self directionsDestinationAddressComponents];
        v4 = v7 != 0;
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

  v4 = [(LPMapMetadata *)self name];
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    v5 = [(LPMapMetadata *)self searchQuery];
    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v6 = [(LPMapMetadata *)self address];
      if (v6)
      {
        v3 = 0;
      }

      else
      {
        v7 = [(LPMapMetadata *)self addressComponents];
        v3 = v7 == 0;
      }
    }
  }

  return v3;
}

- (id)_name
{
  v3 = [(LPMapMetadata *)self name];

  if (v3)
  {
    v4 = [(LPMapMetadata *)self name];
  }

  else
  {
    v4 = [(LPMapMetadata *)self addressComponents];

    if (v4)
    {
      v5 = [(LPMapMetadata *)self addressComponents];
      v4 = [v5 street];
    }
  }

  return v4;
}

- (id)_deduplicatedAddress
{
  v3 = [(LPMapMetadata *)self _address];
  v4 = [(LPMapMetadata *)self _name];
  if ([v4 length] && objc_msgSend(v3, "_lp_hasCaseInsensitivePrefix:", v4))
  {
    v5 = [v3 substringFromIndex:{objc_msgSend(v4, "length")}];

    v6 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v3 = [v5 stringByTrimmingCharactersInSet:v6];
  }

  return v3;
}

- (id)_singleLineShortDescription
{
  if ([(LPMapMetadata *)self _isOnlyCoordinates])
  {
    v3 = [(LPMapMetadata *)self _singleLineVerboseDescription];
LABEL_5:
    v5 = v3;
    goto LABEL_6;
  }

  v4 = [(LPMapMetadata *)self searchQuery];

  if (v4)
  {
    v3 = [(LPMapMetadata *)self searchQuery];
    goto LABEL_5;
  }

  v7 = [(LPMapMetadata *)self _directionsDestinationAddress];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = LPLocalizedString(@"Directions to %@");
    v10 = [(LPMapMetadata *)self _directionsDestinationAddress];
    v11 = [v8 localizedStringWithFormat:v9, v10];
LABEL_13:
    v5 = v11;

    goto LABEL_6;
  }

  v12 = [(LPMapMetadata *)self _directionsSourceAddress];

  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v9 = LPLocalizedString(@"Directions from %@");
    v10 = [(LPMapMetadata *)self _directionsSourceAddress];
    v11 = [v13 localizedStringWithFormat:v9, v10];
    goto LABEL_13;
  }

  v14 = [(LPMapMetadata *)self _name];

  if (v14)
  {
    v3 = [(LPMapMetadata *)self _name];
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
    v4 = LPLocalizedString(@"Location: %@");
    [(LPMapMetadata *)self location];
    v7 = stringFromCLLocationCoordinate2D(v5, v6);
    v8 = [v3 localizedStringWithFormat:v4, v7];
LABEL_9:
    v15 = v8;
    goto LABEL_10;
  }

  v9 = [(LPMapMetadata *)self searchQuery];

  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v4 = LPLocalizedString(@"Search for “%@”");
    v7 = [(LPMapMetadata *)self searchQuery];
    v8 = [v10 localizedStringWithFormat:v4, v7];
    goto LABEL_9;
  }

  v11 = [(LPMapMetadata *)self _directionsDestinationAddress];

  if (v11)
  {
    v12 = MEMORY[0x1E696AEC0];
    v4 = LPLocalizedString(@"Directions to %@");
    v7 = [(LPMapMetadata *)self _directionsDestinationAddress];
    v8 = [v12 localizedStringWithFormat:v4, v7];
    goto LABEL_9;
  }

  v13 = [(LPMapMetadata *)self _directionsSourceAddress];

  if (v13)
  {
    v14 = MEMORY[0x1E696AEC0];
    v4 = LPLocalizedString(@"Directions from %@");
    v7 = [(LPMapMetadata *)self _directionsSourceAddress];
    v8 = [v14 localizedStringWithFormat:v4, v7];
    goto LABEL_9;
  }

  v4 = [(LPMapMetadata *)self _name];
  v7 = [(LPMapMetadata *)self _deduplicatedAddress];
  v17 = joinedBySpace(v4, v7);
  v15 = [v17 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

LABEL_10:

  return v15;
}

- (id)_topLineForTransformer:(id)a3
{
  v4 = a3;
  if ([(LPMapMetadata *)self _isOnlyCoordinates])
  {
    if ([v4 isInSenderContext])
    {
      LPLocalizedString(@"Your Location");
    }

    else
    {
      LPLocalizedString(@"Location");
    }
    v5 = ;
  }

  else
  {
    v6 = [(LPMapMetadata *)self searchQuery];

    if (v6)
    {
      v5 = [(LPMapMetadata *)self searchQuery];
    }

    else if ([(LPMapMetadata *)self _isDirections])
    {
      if ([v4 effectiveSizeClass] != 2 || (-[LPMapMetadata distance](self, "distance"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
      {
        v10 = [(LPMapMetadata *)self _directionsDestinationAddress];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = [(LPMapMetadata *)self _directionsSourceAddress];
        }

        v8 = v12;

        goto LABEL_14;
      }

      v5 = [(LPMapMetadata *)self _singleLineVerboseDescription];
    }

    else
    {
      v5 = [(LPMapMetadata *)self _name];
    }
  }

  v8 = v5;
LABEL_14:

  return v8;
}

- (id)_topLineForThreeUpForTransformer:(id)a3
{
  v4 = [(LPMapMetadata *)self _topLineForTransformer:a3];
  if (!-[LPMapMetadata isPointOfInterest](self, "isPointOfInterest") && (-[LPMapMetadata addressComponents](self, "addressComponents"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (-[LPMapMetadata name](self, "name"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v4 isEqualToString:v6], v6, v5, v7))
  {
    v8 = [(LPMapMetadata *)self addressComponents];
    v9 = [v8 street];
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (id)_bottomLineForTwoUpForTransformer:(id)a3
{
  v4 = a3;
  if ([(LPMapMetadata *)self _isOnlyCoordinates])
  {
    [(LPMapMetadata *)self location];
    v7 = stringFromCLLocationCoordinate2D(v5, v6);
    goto LABEL_24;
  }

  v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v9 = [(LPMapMetadata *)self category];

  if (v9)
  {
    v10 = [(LPMapMetadata *)self category];
    [v8 appendString:v10];
  }

  if ([(LPMapMetadata *)self _isDirections])
  {
    v11 = [(LPMapMetadata *)self distance];

    if (v11)
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

      v15 = [(LPMapMetadata *)self distance];
      [v15 doubleValue];
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

  v17 = [(LPMapMetadata *)self addressComponents];

  if (v17)
  {
    v18 = [(LPMapMetadata *)self addressComponents];
    v19 = cityAndState(v18);

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

  v4 = [(LPMapMetadata *)self searchQuery];

  if (v4)
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
  v3 = [(LPMapMetadata *)self image];
  v4 = [v3 platformImage];

  if (v4)
  {
    v5 = [LPImage alloc];
    v6 = [(LPMapMetadata *)self image];
    v4 = [(LPImage *)v5 _initWithImage:v6];

    v7 = [(LPMapMetadata *)self darkImage];
    [v4 _setDarkInterfaceAlternativeImage:v7];
  }

  return v4;
}

- (id)_iconForTransport
{
  v3 = [(LPMapMetadata *)self transportType];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [(LPMapMetadata *)self transportType];
  v5 = [v4 integerValue];

  if (v5 <= 1)
  {
    if (v5 == 1)
    {
      v6 = +[LPResources transportTransitIcon];
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v5 != 2)
  {
    if (v5 == 3)
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

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 commonPresentationPropertiesForStyle:{-[LPMapMetadata _style](self, "_style")}];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  if ([v5 style] == 59)
  {
    v7 = +[LPResources mapCoordinatesIcon];
    [v5 setImage:v7];
  }

  else if ([(LPMapMetadata *)self _isDirections])
  {
    v7 = objc_alloc_init(LPImagePresentationProperties);
    if (!sizeClassRequiresLargeMedia([v4 effectiveSizeClass]) && objc_msgSend(v4, "effectiveSizeClass") != 10)
    {
      [(LPImagePresentationProperties *)v7 setFilter:13];
      v8 = [MEMORY[0x1E69DC888] systemBlueColor];
      [(LPImagePresentationProperties *)v7 setBackgroundColor:v8];

      v9 = [MEMORY[0x1E69DC888] whiteColor];
      [(LPImagePresentationProperties *)v7 setMaskColor:v9];

      [(LPImagePresentationProperties *)v7 setShouldApplyBackground:1];
    }

    v10 = [(LPMapMetadata *)self _iconForTransport];
    [v4 _populateProperties:v5 withPrimaryIcon:v10 iconProperties:v7];
  }

  else
  {
    if ([v4 _prefersImageAsIconWithStyle:{-[LPMapMetadata _style](self, "_style")}] && (-[LPMapMetadata categoryIcon](self, "categoryIcon"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      v7 = [(LPMapMetadata *)self categoryIcon];
    }

    else
    {
      v7 = [(LPMapMetadata *)self _resolvedImage];
      v12 = [(LPMapMetadata *)self darkImage];

      if (v12)
      {
        v13 = [(LPMapMetadata *)self darkImage];
        [(LPImagePresentationProperties *)v7 _setDarkInterfaceAlternativeImage:v13];
      }
    }

    [v4 _populateProperties:v5 withPrimaryImage:v7];
  }

  v14 = [v4 _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if (v14 <= 1)
  {
    if (!v14)
    {
      v19 = LPLocalizedString(@" Maps");
      v26 = [(LPMapMetadata *)self _singleLineShortDescription];
      v20 = v26;
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v19;
      }

      v28 = [v5 captionBar];
      v29 = [v28 top];
      v30 = [v29 leading];
      [v30 setText:v27];
      goto LABEL_44;
    }

    if (v14 != 1)
    {
      goto LABEL_48;
    }

    v15 = [(LPMapMetadata *)self _topLineForTransformer:v4];
    v16 = [v5 captionBar];
    v17 = [v16 top];
    v18 = [v17 leading];
    [v18 setText:v15];

    v19 = [(LPMapMetadata *)self _bottomLineForTwoUpForTransformer:v4];
    if ([v5 style] == 59 || sizeClassIsCardHeading(objc_msgSend(v4, "effectiveSizeClass")))
    {
      v20 = v19;
      if (!v19)
      {
        v20 = LPLocalizedString(@" Maps");
      }

      v21 = [v5 captionBar];
      v22 = [v21 bottom];
      v23 = [v22 leading];
      [v23 setText:v20];

      if (v19)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v20 = LPLocalizedString(@" Maps");
    v28 = joinedByDot(v20, v19);
    v29 = [v5 captionBar];
    v30 = [v29 bottom];
    v40 = [v30 leading];
    [v40 setText:v28];
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

    v24 = [(LPMapMetadata *)self _topLineForTransformer:v4];
    if ([(LPMapMetadata *)self _isDirections])
    {
      v25 = LPLocalizedString(@"Directions");
    }

    else
    {
      v39 = [(LPMapMetadata *)self searchQuery];

      if (v39)
      {
        v20 = 0;
        goto LABEL_37;
      }

      v25 = [(LPMapMetadata *)self _deduplicatedAddress];
    }

    v20 = v25;
LABEL_37:
    v41 = [v4 metadata];
    v42 = [v41 URL];
    v43 = [LPPresentationSpecializations isMuninURL:v42];

    if (v43)
    {
      v44 = LPLocalizedString(@"Look Around");
      v45 = [v5 captionBar];
      v46 = [v45 aboveTop];
      v47 = [v46 leading];
      [v47 setText:v44];

      v19 = [(LPMapMetadata *)self _name];

      if (!v19)
      {
LABEL_39:
        v48 = [v5 captionBar];
        v49 = [v48 top];
        v50 = [v49 leading];
        [v50 setText:v20];
LABEL_42:

        v28 = LPLocalizedString(@" Maps");
        v29 = [v5 captionBar];
        v30 = [v29 belowBottom];
        v40 = [v30 leading];
        [v40 setText:v28];
        goto LABEL_43;
      }
    }

    else
    {
      v19 = v24;
      if (!v24)
      {
        goto LABEL_39;
      }
    }

    v51 = [v5 captionBar];
    v52 = [v51 top];
    v53 = [v52 leading];
    [v53 setText:v19];

    v48 = [v5 captionBar];
    v49 = [v48 bottom];
    v50 = [v49 leading];
    [v50 setText:v20];
    goto LABEL_42;
  }

  v31 = [(LPMapMetadata *)self _topLineForThreeUpForTransformer:v4];
  v32 = [v5 captionBar];
  v33 = [v32 top];
  v34 = [v33 leading];
  [v34 setText:v31];

  v35 = [(LPMapMetadata *)self _bottomLineForTwoUpForTransformer:v4];
  v36 = [v5 captionBar];
  v37 = [v36 bottom];
  v38 = [v37 leading];
  [v38 setText:v35];

  v19 = LPLocalizedString(@" Maps");
  v20 = [v5 captionBar];
  v28 = [v20 belowBottom];
  v29 = [v28 leading];
  [v29 setText:v19];
LABEL_45:

LABEL_46:
LABEL_47:

LABEL_48:

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  if ([(LPMapMetadata *)self _isOnlyCoordinates])
  {
    v4 = [(LPMapMetadata *)self _singleLineVerboseDescription];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = LPLocalizedString(@"Location: %@");
    v7 = [(LPMapMetadata *)self _name];
    v8 = v7;
    if (!v7)
    {
      v8 = [(LPMapMetadata *)self _singleLineVerboseDescription];
    }

    v4 = [v5 localizedStringWithFormat:v6, v8];
    if (!v7)
    {
    }
  }

  return v4;
}

- (id)previewImageForTransformer:(id)a3
{
  v3 = [(LPMapMetadata *)self image];

  return v3;
}

- (id)fallbackIconForTransformer:(id)a3
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

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v6 = a3;
  v4 = [(LPMapMetadata *)self _singleLineVerboseDescription];
  [v6 setTitle:v4];

  v5 = [(LPMapMetadata *)self image];
  [v6 setImage:v5];
}

@end