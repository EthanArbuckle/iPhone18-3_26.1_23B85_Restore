@interface NEIKEv2CustomData
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation NEIKEv2CustomData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setCustomType:{-[NEIKEv2CustomData customType](self, "customType")}];
  v5 = [(NEIKEv2CustomData *)self customData];
  v6 = [v5 copy];
  [v4 setCustomData:v6];

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(NEIKEv2CustomData *)self customType];
  v5 = [(NEIKEv2CustomData *)self customData];
  v6 = [v3 initWithFormat:@"Custom Payload %lld: %@", v4, v5];

  return v6;
}

@end