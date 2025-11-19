@interface CTLazuliSuggestedActionShowLocation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliSuggestedActionShowLocation:(id)a3;
- (CTLazuliSuggestedActionShowLocation)initWithCoder:(id)a3;
- (CTLazuliSuggestedActionShowLocation)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliSuggestedActionShowLocation

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliSuggestedActionShowLocation *)self coordinates];
  [v3 appendFormat:@", coordinates = %@", v4];

  v5 = [(CTLazuliSuggestedActionShowLocation *)self query];
  [v3 appendFormat:@", query = %@", v5];

  v6 = [(CTLazuliSuggestedActionShowLocation *)self label];
  [v3 appendFormat:@", label = %@", v6];

  v7 = [(CTLazuliSuggestedActionShowLocation *)self fallbackUrl];
  [v3 appendFormat:@", fallbackUrl = %@", v7];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionShowLocation:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliSuggestedActionShowLocation *)self coordinates];
  v6 = [v4 coordinates];
  if (v5 != v6)
  {
    v24 = [(CTLazuliSuggestedActionShowLocation *)self coordinates];
    v21 = [v4 coordinates];
    if (![v24 isEqualToCTLazuliSuggestedActionShowCoordinates:?])
    {
      v7 = 0;
LABEL_18:

      goto LABEL_19;
    }
  }

  v25 = [(CTLazuliSuggestedActionShowLocation *)self query];
  v23 = [v4 query];
  if (v25 == v23 || (-[CTLazuliSuggestedActionShowLocation query](self, "query"), v22 = objc_claimAutoreleasedReturnValue(), [v4 query], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "isEqualToCTLazuliSuggestedActionShowQuery:")))
  {
    v10 = [(CTLazuliSuggestedActionShowLocation *)self label];
    v11 = [v4 label];
    if (v10 == v11 || (-[CTLazuliSuggestedActionShowLocation label](self, "label"), v20 = objc_claimAutoreleasedReturnValue(), [v4 label], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "isEqualToString:")))
    {
      v12 = [(CTLazuliSuggestedActionShowLocation *)self fallbackUrl];
      v13 = [v4 fallbackUrl];
      v14 = v13;
      if (v12 == v13)
      {

        v7 = 1;
      }

      else
      {
        v15 = [(CTLazuliSuggestedActionShowLocation *)self fallbackUrl];
        v16 = [v4 fallbackUrl];
        v7 = [v15 isEqualToString:v16];
      }

      if (v10 == v11)
      {
LABEL_15:

        v8 = v25;
        v9 = v23;
        if (v25 == v23)
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
  v8 = v25;
  v9 = v23;
LABEL_16:

LABEL_17:
  if (v5 != v6)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionShowLocation *)self isEqualToCTLazuliSuggestedActionShowLocation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliSuggestedActionShowLocation allocWithZone:?];
  v6 = [(CTLazuliSuggestedActionShowCoordinates *)self->_coordinates copyWithZone:a3];
  [(CTLazuliSuggestedActionShowLocation *)v5 setCoordinates:v6];

  v7 = [(CTLazuliSuggestedActionShowQuery *)self->_query copyWithZone:a3];
  [(CTLazuliSuggestedActionShowLocation *)v5 setQuery:v7];

  v8 = [(NSString *)self->_label copyWithZone:a3];
  [(CTLazuliSuggestedActionShowLocation *)v5 setLabel:v8];

  v9 = [(NSString *)self->_fallbackUrl copyWithZone:a3];
  [(CTLazuliSuggestedActionShowLocation *)v5 setFallbackUrl:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_coordinates forKey:@"kCoordinatesKey"];
  [v4 encodeObject:self->_query forKey:@"kQueryKey"];
  [v4 encodeObject:self->_label forKey:@"kLabelKey"];
  [v4 encodeObject:self->_fallbackUrl forKey:@"kFallbackUrlKey"];
}

- (CTLazuliSuggestedActionShowLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CTLazuliSuggestedActionShowLocation;
  v5 = [(CTLazuliSuggestedActionShowLocation *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoordinatesKey"];
    coordinates = v5->_coordinates;
    v5->_coordinates = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kQueryKey"];
    query = v5->_query;
    v5->_query = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kLabelKey"];
    label = v5->_label;
    v5->_label = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kFallbackUrlKey"];
    fallbackUrl = v5->_fallbackUrl;
    v5->_fallbackUrl = v12;
  }

  return v5;
}

- (CTLazuliSuggestedActionShowLocation)initWithReflection:(const void *)a3
{
  v24.receiver = self;
  v24.super_class = CTLazuliSuggestedActionShowLocation;
  v4 = [(CTLazuliSuggestedActionShowLocation *)&v24 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  if (*(a3 + 16) == 1)
  {
    v6 = v4;
    v7 = [CTLazuliSuggestedActionShowCoordinates alloc];
    if ((*(a3 + 16) & 1) == 0)
    {
      goto LABEL_24;
    }

    v8 = [(CTLazuliSuggestedActionShowCoordinates *)v7 initWithReflection:a3];
  }

  else
  {
    v8 = 0;
  }

  coordinates = v5->_coordinates;
  v5->_coordinates = v8;

  if (*(a3 + 56) != 1)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v6 = v5;
  v10 = [CTLazuliSuggestedActionShowQuery alloc];
  if ((*(a3 + 56) & 1) == 0)
  {
LABEL_24:
    v23 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v23);
  }

  v11 = [(CTLazuliSuggestedActionShowQuery *)v10 initWithReflection:a3 + 24];
LABEL_10:
  query = v5->_query;
  v5->_query = v11;

  if (*(a3 + 88) == 1)
  {
    if (*(a3 + 87) >= 0)
    {
      v13 = a3 + 64;
    }

    else
    {
      v13 = *(a3 + 8);
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
  }

  else
  {
    v14 = 0;
  }

  label = v5->_label;
  v5->_label = v14;

  if (*(a3 + 120) == 1)
  {
    v18 = *(a3 + 12);
    v17 = a3 + 96;
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