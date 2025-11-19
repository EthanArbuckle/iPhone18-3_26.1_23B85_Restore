@interface IPCMuteSpokenGuidanceMessage
- (IPCMuteSpokenGuidanceMessage)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryValue;
@end

@implementation IPCMuteSpokenGuidanceMessage

- (id)description
{
  v7.receiver = self;
  v7.super_class = IPCMuteSpokenGuidanceMessage;
  v3 = [(IPCMuteSpokenGuidanceMessage *)&v7 description];
  v4 = [(IPCMuteSpokenGuidanceMessage *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryValue
{
  v8.receiver = self;
  v8.super_class = IPCMuteSpokenGuidanceMessage;
  v3 = [(IPCMessageObject *)&v8 dictionaryValue];
  v4 = [v3 mutableCopy];

  v5 = [NSNumber numberWithBool:[(IPCMuteSpokenGuidanceMessage *)self muteNavigation]];
  [v4 setObject:v5 forKeyedSubscript:@"kIPCMuteSpokenGuidanceMessageMuteNavigationKey"];

  v6 = [v4 copy];

  return v6;
}

- (IPCMuteSpokenGuidanceMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IPCMuteSpokenGuidanceMessage;
  v5 = [(IPCMessageObject *)&v8 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"kIPCMuteSpokenGuidanceMessageMuteNavigationKey"];
    -[IPCMuteSpokenGuidanceMessage setMuteNavigation:](v5, "setMuteNavigation:", [v6 BOOLValue]);
  }

  return v5;
}

@end