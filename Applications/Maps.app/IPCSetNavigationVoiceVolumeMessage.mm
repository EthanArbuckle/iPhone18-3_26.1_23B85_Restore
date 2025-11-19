@interface IPCSetNavigationVoiceVolumeMessage
- (IPCSetNavigationVoiceVolumeMessage)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryValue;
@end

@implementation IPCSetNavigationVoiceVolumeMessage

- (id)description
{
  v7.receiver = self;
  v7.super_class = IPCSetNavigationVoiceVolumeMessage;
  v3 = [(IPCSetNavigationVoiceVolumeMessage *)&v7 description];
  v4 = [(IPCSetNavigationVoiceVolumeMessage *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryValue
{
  v9.receiver = self;
  v9.super_class = IPCSetNavigationVoiceVolumeMessage;
  v3 = [(IPCMessageObject *)&v9 dictionaryValue];
  v4 = [v3 mutableCopy];

  v5 = [(IPCSetNavigationVoiceVolumeMessage *)self requestedVolume];
  v6 = [v5 copy];
  [v4 setObject:v6 forKeyedSubscript:@"kIPCSetNavigationVoiceVolumeMessageRequestedVolumeKey"];

  v7 = [v4 copy];

  return v7;
}

- (IPCSetNavigationVoiceVolumeMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IPCSetNavigationVoiceVolumeMessage;
  v5 = [(IPCMessageObject *)&v8 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"kIPCSetNavigationVoiceVolumeMessageRequestedVolumeKey"];
    [(IPCSetNavigationVoiceVolumeMessage *)v5 setRequestedVolume:v6];
  }

  return v5;
}

@end