@interface INExtensionContext
- (INExtensionContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INExtensionContext

- (INExtensionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = INExtensionContext;
  v5 = [(INExtensionContext *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recordRoute"];
    [(INExtensionContext *)v5 _setRecordRoute:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recordDeviceUID"];
    [(INExtensionContext *)v5 _setRecordDeviceUID:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recordDeviceIdentifier"];
    [(INExtensionContext *)v5 _setRecordDeviceIdentifier:v8];

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_airPlayRouteIdentifiers"];
    [(INExtensionContext *)v5 _setAirPlayRouteIdentifiers:v12];

    -[INExtensionContext _setAudioSessionID:](v5, "_setAudioSessionID:", [coderCopy decodeInt32ForKey:@"_audioSessionID"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  recordRoute = self->_recordRoute;
  coderCopy = coder;
  [coderCopy encodeObject:recordRoute forKey:@"_recordRoute"];
  [coderCopy encodeObject:self->_recordDeviceUID forKey:@"_recordDeviceUID"];
  [coderCopy encodeObject:self->_recordDeviceIdentifier forKey:@"_recordDeviceIdentifier"];
  [coderCopy encodeObject:self->_airPlayRouteIdentifiers forKey:@"_airPlayRouteIdentifiers"];
  [coderCopy encodeInt32:self->_audioSessionID forKey:@"_audioSessionID"];
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