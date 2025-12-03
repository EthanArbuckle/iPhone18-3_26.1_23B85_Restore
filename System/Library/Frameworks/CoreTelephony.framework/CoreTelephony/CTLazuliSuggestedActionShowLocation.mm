@interface CTLazuliSuggestedActionShowLocation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliSuggestedActionShowLocation:(id)location;
- (CTLazuliSuggestedActionShowLocation)initWithCoder:(id)coder;
- (CTLazuliSuggestedActionShowLocation)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliSuggestedActionShowLocation

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  coordinates = [(CTLazuliSuggestedActionShowLocation *)self coordinates];
  [v3 appendFormat:@", coordinates = %@", coordinates];

  query = [(CTLazuliSuggestedActionShowLocation *)self query];
  [v3 appendFormat:@", query = %@", query];

  label = [(CTLazuliSuggestedActionShowLocation *)self label];
  [v3 appendFormat:@", label = %@", label];

  fallbackUrl = [(CTLazuliSuggestedActionShowLocation *)self fallbackUrl];
  [v3 appendFormat:@", fallbackUrl = %@", fallbackUrl];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionShowLocation:(id)location
{
  locationCopy = location;
  coordinates = [(CTLazuliSuggestedActionShowLocation *)self coordinates];
  coordinates2 = [locationCopy coordinates];
  if (coordinates != coordinates2)
  {
    coordinates3 = [(CTLazuliSuggestedActionShowLocation *)self coordinates];
    coordinates4 = [locationCopy coordinates];
    if (![coordinates3 isEqualToCTLazuliSuggestedActionShowCoordinates:?])
    {
      v7 = 0;
LABEL_18:

      goto LABEL_19;
    }
  }

  query = [(CTLazuliSuggestedActionShowLocation *)self query];
  query2 = [locationCopy query];
  if (query == query2 || (-[CTLazuliSuggestedActionShowLocation query](self, "query"), v22 = objc_claimAutoreleasedReturnValue(), [locationCopy query], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "isEqualToCTLazuliSuggestedActionShowQuery:")))
  {
    label = [(CTLazuliSuggestedActionShowLocation *)self label];
    label2 = [locationCopy label];
    if (label == label2 || (-[CTLazuliSuggestedActionShowLocation label](self, "label"), v20 = objc_claimAutoreleasedReturnValue(), [locationCopy label], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "isEqualToString:")))
    {
      fallbackUrl = [(CTLazuliSuggestedActionShowLocation *)self fallbackUrl];
      fallbackUrl2 = [locationCopy fallbackUrl];
      v14 = fallbackUrl2;
      if (fallbackUrl == fallbackUrl2)
      {

        v7 = 1;
      }

      else
      {
        fallbackUrl3 = [(CTLazuliSuggestedActionShowLocation *)self fallbackUrl];
        fallbackUrl4 = [locationCopy fallbackUrl];
        v7 = [fallbackUrl3 isEqualToString:fallbackUrl4];
      }

      if (label == label2)
      {
LABEL_15:

        v8 = query;
        v9 = query2;
        if (query == query2)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_15;
  }

  v7 = 0;
  v8 = query;
  v9 = query2;
LABEL_16:

LABEL_17:
  if (coordinates != coordinates2)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionShowLocation *)self isEqualToCTLazuliSuggestedActionShowLocation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliSuggestedActionShowLocation allocWithZone:?];
  v6 = [(CTLazuliSuggestedActionShowCoordinates *)self->_coordinates copyWithZone:zone];
  [(CTLazuliSuggestedActionShowLocation *)v5 setCoordinates:v6];

  v7 = [(CTLazuliSuggestedActionShowQuery *)self->_query copyWithZone:zone];
  [(CTLazuliSuggestedActionShowLocation *)v5 setQuery:v7];

  v8 = [(NSString *)self->_label copyWithZone:zone];
  [(CTLazuliSuggestedActionShowLocation *)v5 setLabel:v8];

  v9 = [(NSString *)self->_fallbackUrl copyWithZone:zone];
  [(CTLazuliSuggestedActionShowLocation *)v5 setFallbackUrl:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_coordinates forKey:@"kCoordinatesKey"];
  [coderCopy encodeObject:self->_query forKey:@"kQueryKey"];
  [coderCopy encodeObject:self->_label forKey:@"kLabelKey"];
  [coderCopy encodeObject:self->_fallbackUrl forKey:@"kFallbackUrlKey"];
}

- (CTLazuliSuggestedActionShowLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CTLazuliSuggestedActionShowLocation;
  v5 = [(CTLazuliSuggestedActionShowLocation *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoordinatesKey"];
    coordinates = v5->_coordinates;
    v5->_coordinates = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kQueryKey"];
    query = v5->_query;
    v5->_query = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kLabelKey"];
    label = v5->_label;
    v5->_label = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kFallbackUrlKey"];
    fallbackUrl = v5->_fallbackUrl;
    v5->_fallbackUrl = v12;
  }

  return v5;
}

- (CTLazuliSuggestedActionShowLocation)initWithReflection:(const void *)reflection
{
  v24.receiver = self;
  v24.super_class = CTLazuliSuggestedActionShowLocation;
  v4 = [(CTLazuliSuggestedActionShowLocation *)&v24 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  if (*(reflection + 16) == 1)
  {
    v6 = v4;
    v7 = [CTLazuliSuggestedActionShowCoordinates alloc];
    if ((*(reflection + 16) & 1) == 0)
    {
      goto LABEL_24;
    }

    v8 = [(CTLazuliSuggestedActionShowCoordinates *)v7 initWithReflection:reflection];
  }

  else
  {
    v8 = 0;
  }

  coordinates = v5->_coordinates;
  v5->_coordinates = v8;

  if (*(reflection + 56) != 1)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v6 = v5;
  v10 = [CTLazuliSuggestedActionShowQuery alloc];
  if ((*(reflection + 56) & 1) == 0)
  {
LABEL_24:
    v23 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v23);
  }

  v11 = [(CTLazuliSuggestedActionShowQuery *)v10 initWithReflection:reflection + 24];
LABEL_10:
  query = v5->_query;
  v5->_query = v11;

  if (*(reflection + 88) == 1)
  {
    if (*(reflection + 87) >= 0)
    {
      v13 = reflection + 64;
    }

    else
    {
      v13 = *(reflection + 8);
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
  }

  else
  {
    v14 = 0;
  }

  label = v5->_label;
  v5->_label = v14;

  if (*(reflection + 120) == 1)
  {
    v18 = *(reflection + 12);
    v17 = reflection + 96;
    v16 = v18;
    if (v17[23] >= 0)
    {
      v19 = v17;
    }

    else
    {
      v19 = v16;
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];
  }

  else
  {
    v20 = 0;
  }

  fallbackUrl = v5->_fallbackUrl;
  v5->_fallbackUrl = v20;

  return v5;
}

@end