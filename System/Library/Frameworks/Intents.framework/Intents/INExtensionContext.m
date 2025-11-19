@interface INExtensionContext
- (INExtensionContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INExtensionContext

- (INExtensionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = INExtensionContext;
  v5 = [(INExtensionContext *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recordRoute"];
    [(INExtensionContext *)v5 _setRecordRoute:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recordDeviceUID"];
    [(INExtensionContext *)v5 _setRecordDeviceUID:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recordDeviceIdentifier"];
    [(INExtensionContext *)v5 _setRecordDeviceIdentifier:v8];

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"_airPlayRouteIdentifiers"];
    [(INExtensionContext *)v5 _setAirPlayRouteIdentifiers:v12];

    -[INExtensionContext _setAudioSessionID:](v5, "_setAudioSessionID:", [v4 decodeInt32ForKey:@"_audioSessionID"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  recordRoute = self->_recordRoute;
  v5 = a3;
  [v5 encodeObject:recordRoute forKey:@"_recordRoute"];
  [v5 encodeObject:self->_recordDeviceUID forKey:@"_recordDeviceUID"];
  [v5 encodeObject:self->_recordDeviceIdentifier forKey:@"_recordDeviceIdentifier"];
  [v5 encodeObject:self->_airPlayRouteIdentifiers forKey:@"_airPlayRouteIdentifiers"];
  [v5 encodeInt32:self->_audioSessionID forKey:@"_audioSessionID"];
}

uint64_t __54___INExtensionContext_handleIntent_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, a5);
  }

  return result;
}

uint64_t __47___INExtensionContext_handleIntent_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __64___INExtensionContext_confirmationResponseForIntent_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end