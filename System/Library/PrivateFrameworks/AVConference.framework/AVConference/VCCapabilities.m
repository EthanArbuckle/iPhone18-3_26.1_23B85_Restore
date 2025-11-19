@interface VCCapabilities
+ (id)AudioOnlyVCCapabilities;
+ (id)DataOnlyVCCapabilities;
+ (id)VideoOnlyVCCapabilities;
+ (id)screenSharingVCCapabilities;
- (VCCapabilities)init;
- (VCCapabilities)initWithCoder:(id)a3;
- (VCCapabilities)initWithEncodedDictionary:(id)a3;
- (id)newEncodedDictionary;
- (void)decodeFromNSDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (VCCapabilities)initWithEncodedDictionary:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCCapabilities;
  v4 = [(VCCapabilities *)&v6 init];
  [(VCCapabilities *)v4 decodeFromNSDictionary:a3];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeBool:self->isAudioEnabled forKey:@"audioEnabled"];
  [a3 encodeBool:self->isVideoEnabled forKey:@"videoEnabled"];
  [a3 encodeBool:self->isVideoSourceScreen forKey:@"videoSourceScreen"];
  [a3 encodeBool:self->isDuplexAudioOnly forKey:@"duplexAudioOnly"];
  [a3 encodeBool:self->isDuplexVideoOnly forKey:@"duplexVideoOnly"];
  [a3 encodeBool:self->isHalfDuplexAudio forKey:@"halfDuplexAudio"];
  [a3 encodeBool:self->isKeyExchangeEnabled forKey:@"keyExchangeEnabled"];
  [a3 encodeBool:self->isAudioPausedToStart forKey:@"startAudioPaused"];
  [a3 encodeBool:self->isVideoPausedToStart forKey:@"startVideoPaused"];
  [a3 encodeInt:self->preferredAudioCodec forKey:@"preferredAudioCodec"];
  [a3 encodeInt:self->actualAudioCodec forKey:@"actualAudioCodec"];
  [a3 encodeInt:self->preferredVideoCodec forKey:@"preferredVideoCodec"];
  [a3 encodeInt:self->actualVideoCodec forKey:@"actualVideoCodec"];
  [a3 encodeInt:self->deviceRole forKey:@"deviceRole"];
  [a3 encodeBool:self->isRelayEnabled forKey:@"relayEnabled"];
  [a3 encodeBool:self->isRelayForced forKey:@"relayForced"];
  [a3 encodeBool:self->requiresWifi forKey:@"requiresWifi"];
  isDTLSEnabled = self->isDTLSEnabled;

  [a3 encodeBool:isDTLSEnabled forKey:@"DTLSEnabled"];
}

- (VCCapabilities)initWithCoder:(id)a3
{
  self->isAudioEnabled = [a3 decodeBoolForKey:@"audioEnabled"];
  self->isVideoEnabled = [a3 decodeBoolForKey:@"videoEnabled"];
  self->isVideoSourceScreen = [a3 decodeBoolForKey:@"videoSourceScreen"];
  self->isDuplexAudioOnly = [a3 decodeBoolForKey:@"duplexAudioOnly"];
  self->isDuplexVideoOnly = [a3 decodeBoolForKey:@"duplexVideoOnly"];
  self->isHalfDuplexAudio = [a3 decodeBoolForKey:@"halfDuplexAudio"];
  self->isKeyExchangeEnabled = [a3 decodeBoolForKey:@"keyExchangeEnabled"];
  self->isAudioPausedToStart = [a3 decodeBoolForKey:@"startAudioPaused"];
  self->isVideoPausedToStart = [a3 decodeBoolForKey:@"startVideoPaused"];
  self->preferredAudioCodec = [a3 decodeIntForKey:@"preferredAudioCodec"];
  self->actualAudioCodec = [a3 decodeIntForKey:@"actualAudioCodec"];
  self->preferredVideoCodec = [a3 decodeIntForKey:@"preferredVideoCodec"];
  self->actualVideoCodec = [a3 decodeIntForKey:@"actualVideoCodec"];
  self->deviceRole = [a3 decodeIntForKey:@"deviceRole"];
  self->isRelayEnabled = [a3 decodeBoolForKey:@"relayEnabled"];
  self->isRelayForced = [a3 decodeBoolForKey:@"relayForced"];
  self->requiresWifi = [a3 decodeBoolForKey:@"requiresWifi"];
  self->isDTLSEnabled = [a3 decodeBoolForKey:@"DTLSEnabled"];
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

- (void)decodeFromNSDictionary:(id)a3
{
  if (a3)
  {
    v21 = [a3 objectForKeyedSubscript:@"audioEnabled"];
    v20 = [a3 objectForKeyedSubscript:@"videoEnabled"];
    v19 = [a3 objectForKeyedSubscript:@"videoSourceScreen"];
    v18 = [a3 objectForKeyedSubscript:@"duplexAudioOnly"];
    v17 = [a3 objectForKeyedSubscript:@"duplexVideoOnly"];
    v16 = [a3 objectForKeyedSubscript:@"halfDuplexAudio"];
    v15 = [a3 objectForKeyedSubscript:@"keyExchangeEnabled"];
    v14 = [a3 objectForKeyedSubscript:@"startAudioPaused"];
    v13 = [a3 objectForKeyedSubscript:@"startVideoPaused"];
    v4 = [a3 objectForKeyedSubscript:@"preferredAudioCodec"];
    v5 = [a3 objectForKeyedSubscript:@"actualAudioCodec"];
    v6 = [a3 objectForKeyedSubscript:@"preferredVideoCodec"];
    v7 = [a3 objectForKeyedSubscript:@"actualVideoCodec"];
    v8 = [a3 objectForKeyedSubscript:@"relayEnabled"];
    v9 = [a3 objectForKeyedSubscript:@"relayForced"];
    v10 = [a3 objectForKeyedSubscript:@"requiresWifi"];
    v11 = [a3 objectForKeyedSubscript:@"DTLSEnabled"];
    v12 = [a3 objectForKeyedSubscript:@"deviceRole"];
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