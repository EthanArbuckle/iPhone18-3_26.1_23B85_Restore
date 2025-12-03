@interface HMAccessoryInfoPrimaryUser
- (BOOL)isEqual:(id)equal;
- (HMAccessoryInfoPrimaryUser)initWithProtoData:(id)data;
- (HMAccessoryInfoPrimaryUser)initWithProtoPayload:(id)payload;
- (HMAccessoryInfoPrimaryUser)initWithUUIDString:(id)string selectionType:(unint64_t)type;
- (id)description;
- (id)protoData;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMAccessoryInfoPrimaryUser

- (unint64_t)hash
{
  uuidString = [(HMAccessoryInfoPrimaryUser *)self uuidString];
  v3 = [uuidString hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      uuidString = [(HMAccessoryInfoPrimaryUser *)self uuidString];
      uuidString2 = [(HMAccessoryInfoPrimaryUser *)v6 uuidString];
      if (HMFEqualObjects())
      {
        selectionType = [(HMAccessoryInfoPrimaryUser *)self selectionType];
        v10 = selectionType == [(HMAccessoryInfoPrimaryUser *)v6 selectionType];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (HMAccessoryInfoPrimaryUser)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[HMAccessoryInfoProtoPrimaryUserInfoEvent alloc] initWithData:dataCopy];

  v6 = [(HMAccessoryInfoPrimaryUser *)self initWithProtoPayload:v5];
  return v6;
}

- (HMAccessoryInfoPrimaryUser)initWithProtoPayload:(id)payload
{
  payloadCopy = payload;
  uuidString = [payloadCopy uuidString];
  selectionType = [payloadCopy selectionType];

  v7 = [(HMAccessoryInfoPrimaryUser *)self initWithUUIDString:uuidString selectionType:selectionType != 0];
  return v7;
}

- (id)protoData
{
  protoPayload = [(HMAccessoryInfoPrimaryUser *)self protoPayload];
  data = [protoPayload data];

  return data;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMAccessoryInfoProtoPrimaryUserInfoEvent);
  uuidString = [(HMAccessoryInfoPrimaryUser *)self uuidString];
  [(HMAccessoryInfoProtoPrimaryUserInfoEvent *)v3 setUuidString:uuidString];

  [(HMAccessoryInfoProtoPrimaryUserInfoEvent *)v3 setSelectionType:[(HMAccessoryInfoPrimaryUser *)self _primaryUserInfoEventSelectionType:[(HMAccessoryInfoPrimaryUser *)self selectionType]]];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = HMAccessoryInfoPrimaryUser;
  v4 = [(HMAccessoryInfoPrimaryUser *)&v9 description];
  uuidString = [(HMAccessoryInfoPrimaryUser *)self uuidString];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMAccessoryInfoPrimaryUser selectionType](self, "selectionType")}];
  v7 = [v3 stringWithFormat:@"%@, %@, %@", v4, uuidString, v6];

  return v7;
}

- (HMAccessoryInfoPrimaryUser)initWithUUIDString:(id)string selectionType:(unint64_t)type
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = HMAccessoryInfoPrimaryUser;
  v8 = [(HMAccessoryInfoPrimaryUser *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_uuidString, string);
    v9->_selectionType = type;
  }

  return v9;
}

@end