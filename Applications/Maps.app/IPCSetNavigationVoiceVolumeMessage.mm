@interface IPCSetNavigationVoiceVolumeMessage
- (IPCSetNavigationVoiceVolumeMessage)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryValue;
@end

@implementation IPCSetNavigationVoiceVolumeMessage

- (id)description
{
  v7.receiver = self;
  v7.super_class = IPCSetNavigationVoiceVolumeMessage;
  v3 = [(IPCSetNavigationVoiceVolumeMessage *)&v7 description];
  dictionaryValue = [(IPCSetNavigationVoiceVolumeMessage *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryValue];

  return v5;
}

- (id)dictionaryValue
{
  v9.receiver = self;
  v9.super_class = IPCSetNavigationVoiceVolumeMessage;
  dictionaryValue = [(IPCMessageObject *)&v9 dictionaryValue];
  v4 = [dictionaryValue mutableCopy];

  requestedVolume = [(IPCSetNavigationVoiceVolumeMessage *)self requestedVolume];
  v6 = [requestedVolume copy];
  [v4 setObject:v6 forKeyedSubscript:@"kIPCSetNavigationVoiceVolumeMessageRequestedVolumeKey"];

  v7 = [v4 copy];

  return v7;
}

- (IPCSetNavigationVoiceVolumeMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = IPCSetNavigationVoiceVolumeMessage;
  v5 = [(IPCMessageObject *)&v8 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"kIPCSetNavigationVoiceVolumeMessageRequestedVolumeKey"];
    [(IPCSetNavigationVoiceVolumeMessage *)v5 setRequestedVolume:v6];
  }

  return v5;
}

@end