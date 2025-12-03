@interface VCCapabilities
+ (id)AudioOnlyVCCapabilities;
+ (id)DataOnlyVCCapabilities;
+ (id)VideoOnlyVCCapabilities;
+ (id)screenSharingVCCapabilities;
- (VCCapabilities)init;
- (VCCapabilities)initWithCoder:(id)coder;
- (VCCapabilities)initWithEncodedDictionary:(id)dictionary;
- (id)newEncodedDictionary;
- (void)decodeFromNSDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VCCapabilities

+ (id)DataOnlyVCCapabilities
{
  v2 = objc_alloc_init(VCCapabilities);
  [(VCCapabilities *)v2 setIsAudioEnabled:0];
  [(VCCapabilities *)v2 setIsVideoEnabled:0];
  [(VCCapabilities *)v2 setIsDuplexAudioOnly:0];
  [(VCCapabilities *)v2 setIsDuplexVideoOnly:1];
  [(VCCapabilities *)v2 setIsVideoPausedToStart:0];
  return v2;
}

+ (id)AudioOnlyVCCapabilities
{
  v2 = objc_alloc_init(VCCapabilities);
  [(VCCapabilities *)v2 setIsAudioEnabled:1];
  [(VCCapabilities *)v2 setIsVideoEnabled:0];
  [(VCCapabilities *)v2 setIsDuplexAudioOnly:1];
  [(VCCapabilities *)v2 setIsDuplexVideoOnly:0];
  [(VCCapabilities *)v2 setIsVideoPausedToStart:0];
  return v2;
}

+ (id)VideoOnlyVCCapabilities
{
  v2 = objc_alloc_init(VCCapabilities);
  [(VCCapabilities *)v2 setIsAudioEnabled:1];
  [(VCCapabilities *)v2 setIsVideoEnabled:1];
  [(VCCapabilities *)v2 setIsDuplexAudioOnly:0];
  [(VCCapabilities *)v2 setIsDuplexVideoOnly:1];
  [(VCCapabilities *)v2 setIsVideoPausedToStart:0];
  return v2;
}

+ (id)screenSharingVCCapabilities
{
  v2 = objc_alloc_init(VCCapabilities);
  [(VCCapabilities *)v2 setIsAudioEnabled:1];
  [(VCCapabilities *)v2 setIsVideoEnabled:1];
  [(VCCapabilities *)v2 setIsVideoSourceScreen:1];
  [(VCCapabilities *)v2 setIsDuplexAudioOnly:0];
  [(VCCapabilities *)v2 setIsDuplexVideoOnly:1];
  [(VCCapabilities *)v2 setIsVideoPausedToStart:0];
  [(VCCapabilities *)v2 setDeviceRole:5];
  return v2;
}

- (VCCapabilities)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCCapabilities;
  result = [(VCCapabilities *)&v3 init];
  if (result)
  {
    result->isAudioEnabled = 1;
    result->isKeyExchangeEnabled = 0;
    *&result->isAudioPausedToStart = 0;
    *&result->isDuplexAudioOnly = 0;
    *&result->preferredAudioCodec = xmmword_1DBD499D0;
    *&result->isRelayEnabled = 65537;
    result->deviceRole = 0;
  }

  return result;
}

- (VCCapabilities)initWithEncodedDictionary:(id)dictionary
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCCapabilities;
  v4 = [(VCCapabilities *)&v6 init];
  [(VCCapabilities *)v4 decodeFromNSDictionary:dictionary];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeBool:self->isAudioEnabled forKey:@"audioEnabled"];
  [coder encodeBool:self->isVideoEnabled forKey:@"videoEnabled"];
  [coder encodeBool:self->isVideoSourceScreen forKey:@"videoSourceScreen"];
  [coder encodeBool:self->isDuplexAudioOnly forKey:@"duplexAudioOnly"];
  [coder encodeBool:self->isDuplexVideoOnly forKey:@"duplexVideoOnly"];
  [coder encodeBool:self->isHalfDuplexAudio forKey:@"halfDuplexAudio"];
  [coder encodeBool:self->isKeyExchangeEnabled forKey:@"keyExchangeEnabled"];
  [coder encodeBool:self->isAudioPausedToStart forKey:@"startAudioPaused"];
  [coder encodeBool:self->isVideoPausedToStart forKey:@"startVideoPaused"];
  [coder encodeInt:self->preferredAudioCodec forKey:@"preferredAudioCodec"];
  [coder encodeInt:self->actualAudioCodec forKey:@"actualAudioCodec"];
  [coder encodeInt:self->preferredVideoCodec forKey:@"preferredVideoCodec"];
  [coder encodeInt:self->actualVideoCodec forKey:@"actualVideoCodec"];
  [coder encodeInt:self->deviceRole forKey:@"deviceRole"];
  [coder encodeBool:self->isRelayEnabled forKey:@"relayEnabled"];
  [coder encodeBool:self->isRelayForced forKey:@"relayForced"];
  [coder encodeBool:self->requiresWifi forKey:@"requiresWifi"];
  isDTLSEnabled = self->isDTLSEnabled;

  [coder encodeBool:isDTLSEnabled forKey:@"DTLSEnabled"];
}

- (VCCapabilities)initWithCoder:(id)coder
{
  self->isAudioEnabled = [coder decodeBoolForKey:@"audioEnabled"];
  self->isVideoEnabled = [coder decodeBoolForKey:@"videoEnabled"];
  self->isVideoSourceScreen = [coder decodeBoolForKey:@"videoSourceScreen"];
  self->isDuplexAudioOnly = [coder decodeBoolForKey:@"duplexAudioOnly"];
  self->isDuplexVideoOnly = [coder decodeBoolForKey:@"duplexVideoOnly"];
  self->isHalfDuplexAudio = [coder decodeBoolForKey:@"halfDuplexAudio"];
  self->isKeyExchangeEnabled = [coder decodeBoolForKey:@"keyExchangeEnabled"];
  self->isAudioPausedToStart = [coder decodeBoolForKey:@"startAudioPaused"];
  self->isVideoPausedToStart = [coder decodeBoolForKey:@"startVideoPaused"];
  self->preferredAudioCodec = [coder decodeIntForKey:@"preferredAudioCodec"];
  self->actualAudioCodec = [coder decodeIntForKey:@"actualAudioCodec"];
  self->preferredVideoCodec = [coder decodeIntForKey:@"preferredVideoCodec"];
  self->actualVideoCodec = [coder decodeIntForKey:@"actualVideoCodec"];
  self->deviceRole = [coder decodeIntForKey:@"deviceRole"];
  self->isRelayEnabled = [coder decodeBoolForKey:@"relayEnabled"];
  self->isRelayForced = [coder decodeBoolForKey:@"relayForced"];
  self->requiresWifi = [coder decodeBoolForKey:@"requiresWifi"];
  self->isDTLSEnabled = [coder decodeBoolForKey:@"DTLSEnabled"];
  return self;
}

- (id)newEncodedDictionary
{
  v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->isAudioEnabled];
  v20 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->isVideoEnabled];
  v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->isVideoSourceScreen];
  v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->isDuplexAudioOnly];
  v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->isDuplexVideoOnly];
  v16 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->isHalfDuplexAudio];
  v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->isKeyExchangeEnabled];
  v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->isAudioPausedToStart];
  v22 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->isVideoPausedToStart];
  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:self->deviceRole];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:self->preferredAudioCodec];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:self->actualAudioCodec];
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:self->preferredVideoCodec];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:self->actualVideoCodec];
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->isRelayEnabled];
  v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->isRelayForced];
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->requiresWifi];
  v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->isDTLSEnabled];
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v21, @"audioEnabled", v20, @"videoEnabled", v19, @"videoSourceScreen", v18, @"duplexAudioOnly", v17, @"duplexVideoOnly", v16, @"halfDuplexAudio", v15, @"keyExchangeEnabled", v14, @"startAudioPaused", v22, @"startVideoPaused", v6, @"preferredAudioCodec", v7, @"actualAudioCodec", v8, @"preferredVideoCodec", v9, @"actualVideoCodec", v10, @"relayEnabled", v11, @"relayForced", v3, @"requiresWifi", v12, @"DTLSEnabled", v13, @"deviceRole", 0}];

  return v4;
}

- (void)decodeFromNSDictionary:(id)dictionary
{
  if (dictionary)
  {
    v21 = [dictionary objectForKeyedSubscript:@"audioEnabled"];
    v20 = [dictionary objectForKeyedSubscript:@"videoEnabled"];
    v19 = [dictionary objectForKeyedSubscript:@"videoSourceScreen"];
    v18 = [dictionary objectForKeyedSubscript:@"duplexAudioOnly"];
    v17 = [dictionary objectForKeyedSubscript:@"duplexVideoOnly"];
    v16 = [dictionary objectForKeyedSubscript:@"halfDuplexAudio"];
    v15 = [dictionary objectForKeyedSubscript:@"keyExchangeEnabled"];
    v14 = [dictionary objectForKeyedSubscript:@"startAudioPaused"];
    v13 = [dictionary objectForKeyedSubscript:@"startVideoPaused"];
    v4 = [dictionary objectForKeyedSubscript:@"preferredAudioCodec"];
    v5 = [dictionary objectForKeyedSubscript:@"actualAudioCodec"];
    v6 = [dictionary objectForKeyedSubscript:@"preferredVideoCodec"];
    v7 = [dictionary objectForKeyedSubscript:@"actualVideoCodec"];
    v8 = [dictionary objectForKeyedSubscript:@"relayEnabled"];
    v9 = [dictionary objectForKeyedSubscript:@"relayForced"];
    v10 = [dictionary objectForKeyedSubscript:@"requiresWifi"];
    v11 = [dictionary objectForKeyedSubscript:@"DTLSEnabled"];
    v12 = [dictionary objectForKeyedSubscript:@"deviceRole"];
    self->isAudioEnabled = [v21 BOOLValue];
    self->isVideoEnabled = [v20 BOOLValue];
    self->isVideoSourceScreen = [v19 BOOLValue];
    self->isDuplexAudioOnly = [v18 BOOLValue];
    self->isDuplexVideoOnly = [v17 BOOLValue];
    self->isHalfDuplexAudio = [v16 BOOLValue];
    self->isKeyExchangeEnabled = [v15 BOOLValue];
    self->isAudioPausedToStart = [v14 BOOLValue];
    self->isVideoPausedToStart = [v13 BOOLValue];
    self->preferredAudioCodec = [v4 unsignedIntValue];
    self->actualAudioCodec = [v5 unsignedIntValue];
    self->preferredVideoCodec = [v6 unsignedIntValue];
    self->actualVideoCodec = [v7 unsignedIntValue];
    self->isRelayEnabled = [v8 BOOLValue];
    self->isRelayForced = [v9 BOOLValue];
    self->requiresWifi = [v10 BOOLValue];
    self->isDTLSEnabled = [v11 BOOLValue];
    self->deviceRole = [v12 intValue];
  }
}

@end