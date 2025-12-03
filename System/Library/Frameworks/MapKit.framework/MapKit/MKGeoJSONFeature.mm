@interface MKGeoJSONFeature
- (id)_initWithGeoJSONObject:(id)object error:(id *)error;
- (id)_initWithProperties:(id)properties geometry:(id)geometry identifier:(id)identifier;
@end

@implementation MKGeoJSONFeature

- (id)_initWithProperties:(id)properties geometry:(id)geometry identifier:(id)identifier
{
  propertiesCopy = properties;
  geometryCopy = geometry;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = MKGeoJSONFeature;
  v12 = [(MKGeoJSONFeature *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_properties, properties);
    v14 = [geometryCopy copy];
    geometry = v13->_geometry;
    v13->_geometry = v14;

    objc_storeStrong(&v13->_identifier, identifier);
    v16 = v13;
  }

  return v13;
}

- (id)_initWithGeoJSONObject:(id)object error:(id *)error
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objectCopy objectForKeyedSubscript:@"type"];
    v8 = _geoJSONObjectType(v7);

    if (v8 == 8)
    {
      v9 = [objectCopy objectForKeyedSubscript:@"geometry"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = MEMORY[0x1E695E0F0];
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MKGeoJSONDecoder _decodeGeometry:v9 error:error];
        if (v10)
        {
LABEL_13:
          v13 = [objectCopy objectForKeyedSubscript:@"properties"];
          if (!v13)
          {
            if (error)
            {
              _errorWithReason(@"GeoJSON Feature objects must have a member with the name properties");
              *error = selfCopy = 0;
            }

            else
            {
              selfCopy = 0;
            }

            goto LABEL_34;
          }

          v14 = v13;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            v14 = 0;
            v15 = 0;
          }

          else
          {
            v17 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v14 options:4 error:error];
            if (!v17)
            {
              selfCopy = 0;
              goto LABEL_33;
            }

            v15 = v17;
          }

          v18 = [objectCopy objectForKeyedSubscript:@"id"];
          if (v18)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              stringValue = v18;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (error)
                {
                  _errorWithReason(@"Feature 'id' has invalid type");
                  v20 = 0;
                  *error = selfCopy = 0;
                }

                else
                {
                  v20 = 0;
                  selfCopy = 0;
                }

                goto LABEL_32;
              }

              stringValue = [v18 stringValue];
            }

            v20 = stringValue;
          }

          else
          {
            v20 = 0;
          }

          self = [(MKGeoJSONFeature *)self _initWithProperties:v15 geometry:v10 identifier:v20];
          selfCopy = self;
LABEL_32:

LABEL_33:
LABEL_34:

          goto LABEL_35;
        }
      }

      else if (error)
      {
        if (v9)
        {
          v16 = @"Feature object has invalid geometry";
        }

        else
        {
          v16 = @"Feature object is missing geometry";
        }

        _errorWithReason(v16);
        *error = selfCopy = 0;
        goto LABEL_35;
      }

      selfCopy = 0;
LABEL_35:

      goto LABEL_36;
    }

    if (error)
    {
      v11 = @"Input is not a Feature GeoJSON object";
      goto LABEL_9;
    }

LABEL_10:
    selfCopy = 0;
    goto LABEL_36;
  }

  if (!error)
  {
    goto LABEL_10;
  }

  v11 = @"Feature object must be a dictionary";
LABEL_9:
  _errorWithReason(v11);
  *error = selfCopy = 0;
LABEL_36:

  return selfCopy;
}

@end