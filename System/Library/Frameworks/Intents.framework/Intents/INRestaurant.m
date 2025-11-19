@interface INRestaurant
- (BOOL)isEqual:(id)a3;
- (INRestaurant)init;
- (INRestaurant)initWithCoder:(id)a3;
- (INRestaurant)initWithLocation:(CLLocation *)location name:(NSString *)name vendorIdentifier:(NSString *)vendorIdentifier restaurantIdentifier:(NSString *)restaurantIdentifier;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INRestaurant

- (id)_dictionaryRepresentation
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"location";
  location = self->_location;
  v4 = location;
  if (!location)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v4;
  v14[1] = @"name";
  name = self->_name;
  v6 = name;
  if (!name)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v6;
  v14[2] = @"vendorIdentifier";
  vendorIdentifier = self->_vendorIdentifier;
  v8 = vendorIdentifier;
  if (!vendorIdentifier)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v8;
  v14[3] = @"restaurantIdentifier";
  restaurantIdentifier = self->_restaurantIdentifier;
  v10 = restaurantIdentifier;
  if (!restaurantIdentifier)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (restaurantIdentifier)
  {
    if (vendorIdentifier)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (vendorIdentifier)
    {
LABEL_11:
      if (name)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (location)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!name)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (location)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRestaurant;
  v6 = [(INRestaurant *)&v11 description];
  v7 = [(INRestaurant *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(INRestaurant *)v5 location];
      v7 = [(INRestaurant *)self location];
      v8 = [(INRestaurant *)self location:v6 equalToLocation:v7];

      v9 = [(INRestaurant *)self name];
      v10 = [(INRestaurant *)v5 name];
      LOBYTE(v6) = [v9 isEqualToString:v10];

      v11 = [(INRestaurant *)v5 vendorIdentifier];
      v12 = [(INRestaurant *)self vendorIdentifier];
      v13 = [v11 isEqualToString:v12];

      v14 = [(INRestaurant *)v5 restaurantIdentifier];

      v15 = [(INRestaurant *)self restaurantIdentifier];
      LOBYTE(v5) = [v14 isEqualToString:v15];

      v16 = v8 & v6 & v13 & v5;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[INRestaurant allocWithZone:?]];
  v5 = [(INRestaurant *)self location];
  [(INRestaurant *)v4 setLocation:v5];

  v6 = [(INRestaurant *)self name];
  [(INRestaurant *)v4 setName:v6];

  v7 = [(INRestaurant *)self vendorIdentifier];
  [(INRestaurant *)v4 setVendorIdentifier:v7];

  v8 = [(INRestaurant *)self restaurantIdentifier];
  [(INRestaurant *)v4 setRestaurantIdentifier:v8];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  location = self->_location;
  v5 = a3;
  [v5 encodeObject:location forKey:@"location"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_vendorIdentifier forKey:@"vendorIdentifier"];
  [v5 encodeObject:self->_restaurantIdentifier forKey:@"restaurantIdentifier"];
}

- (INRestaurant)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INRestaurant *)self init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  if (!v6)
  {
    v15 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v18 = 136315394;
    v19 = "[INRestaurant initWithCoder:]";
    v20 = 2080;
    v21 = "_location";
LABEL_16:
    _os_log_error_impl(&dword_18E991000, v15, OS_LOG_TYPE_ERROR, "%s Null value for %s", &v18, 0x16u);
    goto LABEL_17;
  }

  location = v5->_location;
  v5->_location = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (!v8)
  {
    v15 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v18 = 136315394;
    v19 = "[INRestaurant initWithCoder:]";
    v20 = 2080;
    v21 = "_name";
    goto LABEL_16;
  }

  name = v5->_name;
  v5->_name = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vendorIdentifier"];
  if (!v10)
  {
    v15 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v18 = 136315394;
    v19 = "[INRestaurant initWithCoder:]";
    v20 = 2080;
    v21 = "_vendorIdentifier";
    goto LABEL_16;
  }

  vendorIdentifier = v5->_vendorIdentifier;
  v5->_vendorIdentifier = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restaurantIdentifier"];
  if (!v12)
  {
    v15 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "[INRestaurant initWithCoder:]";
      v20 = 2080;
      v21 = "_restaurantIdentifier";
      goto LABEL_16;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  restaurantIdentifier = v5->_restaurantIdentifier;
  v5->_restaurantIdentifier = v12;

LABEL_7:
  v14 = v5;
LABEL_18:

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (INRestaurant)initWithLocation:(CLLocation *)location name:(NSString *)name vendorIdentifier:(NSString *)vendorIdentifier restaurantIdentifier:(NSString *)restaurantIdentifier
{
  v10 = location;
  v11 = name;
  v12 = vendorIdentifier;
  v13 = restaurantIdentifier;
  v24.receiver = self;
  v24.super_class = INRestaurant;
  v14 = [(INRestaurant *)&v24 init];
  if (v14)
  {
    v15 = [(CLLocation *)v10 copy];
    v16 = v14->_location;
    v14->_location = v15;

    v17 = [(NSString *)v11 copy];
    v18 = v14->_name;
    v14->_name = v17;

    v19 = [(NSString *)v12 copy];
    v20 = v14->_vendorIdentifier;
    v14->_vendorIdentifier = v19;

    v21 = [(NSString *)v13 copy];
    v22 = v14->_restaurantIdentifier;
    v14->_restaurantIdentifier = v21;
  }

  return v14;
}

- (INRestaurant)init
{
  v3 = objc_opt_new();
  v4 = [(INRestaurant *)self initWithLocation:v3 name:&stru_1F01E0850 vendorIdentifier:&stru_1F01E0850 restaurantIdentifier:&stru_1F01E0850];

  return v4;
}

@end