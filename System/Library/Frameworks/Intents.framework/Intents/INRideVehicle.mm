@interface INRideVehicle
- (BOOL)isEqual:(id)equal;
- (INRideVehicle)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INRideVehicle

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  imagesCopy = images;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [(INRideVehicle *)self copy];
    mapAnnotationImage = [(INRideVehicle *)self mapAnnotationImage];
    if (mapAnnotationImage)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __75__INRideVehicle_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
      v10[3] = &unk_1E7285CD0;
      v10[4] = v8;
      v11 = completionCopy;
      imagesCopy[2](imagesCopy, mapAnnotationImage, v10);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v8);
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
  null = location;
  if (!location)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"registrationPlate";
  registrationPlate = self->_registrationPlate;
  null2 = registrationPlate;
  if (!registrationPlate)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"manufacturer";
  manufacturer = self->_manufacturer;
  null3 = manufacturer;
  if (!manufacturer)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"model";
  model = self->_model;
  null4 = model;
  if (!model)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"mapAnnotationImage";
  mapAnnotationImage = self->_mapAnnotationImage;
  null5 = mapAnnotationImage;
  if (!mapAnnotationImage)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRideVehicle;
  v6 = [(INRideVehicle *)&v11 description];
  _dictionaryRepresentation = [(INRideVehicle *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  location = self->_location;
  coderCopy = coder;
  [coderCopy encodeObject:location forKey:@"location"];
  [coderCopy encodeObject:self->_registrationPlate forKey:@"registrationPlate"];
  [coderCopy encodeObject:self->_manufacturer forKey:@"manufacturer"];
  [coderCopy encodeObject:self->_model forKey:@"model"];
  [coderCopy encodeObject:self->_mapAnnotationImage forKey:@"mapAnnotationImage"];
}

- (INRideVehicle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = INRideVehicle;
  v5 = [(INRideVehicle *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"registrationPlate"];
    registrationPlate = v5->_registrationPlate;
    v5->_registrationPlate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manufacturer"];
    manufacturer = v5->_manufacturer;
    v5->_manufacturer = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    model = v5->_model;
    v5->_model = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapAnnotationImage"];
    mapAnnotationImage = v5->_mapAnnotationImage;
    v5->_mapAnnotationImage = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setLocation:self->_location];
  [v4 setRegistrationPlate:self->_registrationPlate];
  [v4 setManufacturer:self->_manufacturer];
  [v4 setModel:self->_model];
  [v4 setMapAnnotationImage:self->_mapAnnotationImage];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (void)_intents_updateContainerWithCache:(id)cache
{
  cacheCopy = cache;
  mapAnnotationImage = [(INRideVehicle *)self mapAnnotationImage];
  if (mapAnnotationImage)
  {
    v5 = mapAnnotationImage;
    mapAnnotationImage2 = [(INRideVehicle *)self mapAnnotationImage];
    _identifier = [mapAnnotationImage2 _identifier];
    v8 = [cacheCopy cacheableObjectForIdentifier:_identifier];

    if (v8)
    {
      mapAnnotationImage3 = [(INRideVehicle *)self mapAnnotationImage];
      _identifier2 = [mapAnnotationImage3 _identifier];
      v11 = [cacheCopy cacheableObjectForIdentifier:_identifier2];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        mapAnnotationImage4 = [(INRideVehicle *)self mapAnnotationImage];
        [v11 _imageSize];
        [mapAnnotationImage4 _setImageSize:?];
      }
    }
  }
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  mapAnnotationImage = [(INRideVehicle *)self mapAnnotationImage];

  if (mapAnnotationImage)
  {
    mapAnnotationImage2 = [(INRideVehicle *)self mapAnnotationImage];
    [v3 addObject:mapAnnotationImage2];
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