@interface INRideVehicle
- (BOOL)isEqual:(id)a3;
- (INRideVehicle)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_injectProxiesForImages:(id)a3 completion:(id)a4;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INRideVehicle

- (void)_injectProxiesForImages:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(INRideVehicle *)self copy];
    v9 = [(INRideVehicle *)self mapAnnotationImage];
    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __75__INRideVehicle_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
      v10[3] = &unk_1E7285CD0;
      v10[4] = v8;
      v11 = v7;
      v6[2](v6, v9, v10);
    }

    else
    {
      (*(v7 + 2))(v7, v8);
    }
  }
}

uint64_t __75__INRideVehicle_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setMapAnnotationImage:a2];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)_dictionaryRepresentation
{
  v23[5] = *MEMORY[0x1E69E9840];
  v18 = @"location";
  location = self->_location;
  v4 = location;
  if (!location)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v4;
  v23[0] = v4;
  v19 = @"registrationPlate";
  registrationPlate = self->_registrationPlate;
  v6 = registrationPlate;
  if (!registrationPlate)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v6;
  v20 = @"manufacturer";
  manufacturer = self->_manufacturer;
  v8 = manufacturer;
  if (!manufacturer)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v8;
  v21 = @"model";
  model = self->_model;
  v10 = model;
  if (!model)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v10;
  v22 = @"mapAnnotationImage";
  mapAnnotationImage = self->_mapAnnotationImage;
  v12 = mapAnnotationImage;
  if (!mapAnnotationImage)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (mapAnnotationImage)
  {
    if (model)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (model)
    {
LABEL_13:
      if (manufacturer)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (manufacturer)
  {
LABEL_14:
    if (registrationPlate)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (location)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!registrationPlate)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (location)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRideVehicle;
  v6 = [(INRideVehicle *)&v11 description];
  v7 = [(INRideVehicle *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  location = self->_location;
  v5 = a3;
  [v5 encodeObject:location forKey:@"location"];
  [v5 encodeObject:self->_registrationPlate forKey:@"registrationPlate"];
  [v5 encodeObject:self->_manufacturer forKey:@"manufacturer"];
  [v5 encodeObject:self->_model forKey:@"model"];
  [v5 encodeObject:self->_mapAnnotationImage forKey:@"mapAnnotationImage"];
}

- (INRideVehicle)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = INRideVehicle;
  v5 = [(INRideVehicle *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"registrationPlate"];
    registrationPlate = v5->_registrationPlate;
    v5->_registrationPlate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manufacturer"];
    manufacturer = v5->_manufacturer;
    v5->_manufacturer = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    model = v5->_model;
    v5->_model = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapAnnotationImage"];
    mapAnnotationImage = v5->_mapAnnotationImage;
    v5->_mapAnnotationImage = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setLocation:self->_location];
  [v4 setRegistrationPlate:self->_registrationPlate];
  [v4 setManufacturer:self->_manufacturer];
  [v4 setModel:self->_model];
  [v4 setMapAnnotationImage:self->_mapAnnotationImage];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    location = self->_location;
    v11 = 0;
    if (location == v5[1] || [(CLLocation *)location isEqual:?])
    {
      registrationPlate = self->_registrationPlate;
      if (registrationPlate == v5[2] || [(NSString *)registrationPlate isEqual:?])
      {
        manufacturer = self->_manufacturer;
        if (manufacturer == v5[3] || [(NSString *)manufacturer isEqual:?])
        {
          model = self->_model;
          if (model == v5[4] || [(NSString *)model isEqual:?])
          {
            mapAnnotationImage = self->_mapAnnotationImage;
            if (mapAnnotationImage == v5[5] || [(INImage *)mapAnnotationImage isEqual:?])
            {
              v11 = 1;
            }
          }
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(CLLocation *)self->_location hash];
  v4 = [(NSString *)self->_registrationPlate hash]^ v3;
  v5 = [(NSString *)self->_manufacturer hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_model hash];
  return v6 ^ [(INImage *)self->_mapAnnotationImage hash];
}

- (void)_intents_updateContainerWithCache:(id)a3
{
  v13 = a3;
  v4 = [(INRideVehicle *)self mapAnnotationImage];
  if (v4)
  {
    v5 = v4;
    v6 = [(INRideVehicle *)self mapAnnotationImage];
    v7 = [v6 _identifier];
    v8 = [v13 cacheableObjectForIdentifier:v7];

    if (v8)
    {
      v9 = [(INRideVehicle *)self mapAnnotationImage];
      v10 = [v9 _identifier];
      v11 = [v13 cacheableObjectForIdentifier:v10];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(INRideVehicle *)self mapAnnotationImage];
        [v11 _imageSize];
        [v12 _setImageSize:?];
      }
    }
  }
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(INRideVehicle *)self mapAnnotationImage];

  if (v4)
  {
    v5 = [(INRideVehicle *)self mapAnnotationImage];
    [v3 addObject:v5];
  }

  if ([v3 count])
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

@end