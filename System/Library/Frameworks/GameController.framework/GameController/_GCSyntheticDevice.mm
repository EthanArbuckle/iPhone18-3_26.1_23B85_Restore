@interface _GCSyntheticDevice
+ (void)deviceWithDescription:(void *)description creator:;
- (BOOL)isEqual:(id)equal;
- (_GCSyntheticDevice)init;
- (id)controllerIdentifier;
- (id)debugDescription;
- (id)identifier;
- (id)persistentIdentifier;
- (uint64_t)serviceIdentity;
- (void)dealloc;
- (void)initWithIdentifier:(void *)identifier controllerIdentifier:(void *)controllerIdentifier persistentIdentifier:(int)persistentIdentifier service:;
@end

@implementation _GCSyntheticDevice

+ (void)deviceWithDescription:(void *)description creator:
{
  v4 = a2;
  descriptionCopy = description;
  v6 = objc_opt_self();
  if (v6 == objc_opt_class())
  {
    [v6 doesNotRecognizeSelector:sel_deviceWithDescription_creator_];
    v15 = 0;
  }

  else
  {
    controllerIdentifier = [v4 controllerIdentifier];
    v8 = [controllerIdentifier description];
    v9 = [v6 devicePropertiesWithDescription:v4];
    controllerIdentifier2 = [v4 controllerIdentifier];
    [v9 setObject:controllerIdentifier2 forKey:@"_GCSyntheticDeviceIdentifier"];

    if (!v9)
    {
      [_GCSyntheticDevice deviceWithDescription:v6 creator:?];
    }

    v11 = descriptionCopy[2](descriptionCopy, v9);
    if (v11)
    {
      v12 = v11;
      v13 = [v6 alloc];
      persistentIdentifier = [v4 persistentIdentifier];
      v15 = [(_GCSyntheticDevice *)v13 initWithIdentifier:v8 controllerIdentifier:controllerIdentifier persistentIdentifier:persistentIdentifier service:v12];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (_GCSyntheticDevice)init
{
  [(_GCSyntheticDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  mach_port_deallocate(*MEMORY[0x1E69E9A60], self->_serviceIdentity);
  v3.receiver = self;
  v3.super_class = _GCSyntheticDevice;
  [(_GCSyntheticDevice *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_GCSyntheticDevice *)self isEqual:equalCopy, &v8];
    v6 = v8;
  }

  else
  {
    identifier = self->_identifier;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(NSString *)self->_identifier isEqual:equalCopy];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p '%@'>", v5, self, self->_identifier];

  return v6;
}

- (void)initWithIdentifier:(void *)identifier controllerIdentifier:(void *)controllerIdentifier persistentIdentifier:(int)persistentIdentifier service:
{
  if (!self)
  {
    return 0;
  }

  v19.receiver = self;
  v19.super_class = _GCSyntheticDevice;
  controllerIdentifierCopy = controllerIdentifier;
  identifierCopy = identifier;
  v10 = a2;
  v11 = objc_msgSendSuper2(&v19, sel_init);
  v12 = [v10 copyWithZone:{0, v19.receiver, v19.super_class}];

  v13 = v11[2];
  v11[2] = v12;

  v14 = [identifierCopy copyWithZone:0];
  v15 = v11[3];
  v11[3] = v14;

  v16 = [controllerIdentifierCopy copy];
  v17 = v11[4];
  v11[4] = v16;

  *(v11 + 2) = persistentIdentifier;
  return v11;
}

- (id)identifier
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_2(result, a2, 16);
  }

  return result;
}

- (uint64_t)serviceIdentity
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (id)controllerIdentifier
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_2(result, a2, 24);
  }

  return result;
}

- (id)persistentIdentifier
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_2(result, a2, 32);
  }

  return result;
}

+ (void)deviceWithDescription:(uint64_t)a1 creator:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCSyntheticDevice.m" lineNumber:28 description:@"Assertion failed: deviceProperties != ((void *)0)"];
}

- (void)isEqual:(_BYTE *)a3 .cold.1(id Property, char *a2, _BYTE *a3)
{
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 16, 1);
  }

  v7 = Property;
  if (a2)
  {
    v6 = objc_getProperty(a2, v5, 16, 1);
  }

  else
  {
    v6 = 0;
  }

  *a3 = [v7 isEqual:v6];
}

@end