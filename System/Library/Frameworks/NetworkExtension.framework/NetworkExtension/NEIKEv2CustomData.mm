@interface NEIKEv2CustomData
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NEIKEv2CustomData

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setCustomType:{-[NEIKEv2CustomData customType](self, "customType")}];
  customData = [(NEIKEv2CustomData *)self customData];
  v6 = [customData copy];
  [v4 setCustomData:v6];

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  customType = [(NEIKEv2CustomData *)self customType];
  customData = [(NEIKEv2CustomData *)self customData];
  v6 = [v3 initWithFormat:@"Custom Payload %lld: %@", customType, customData];

  return v6;
}

@end