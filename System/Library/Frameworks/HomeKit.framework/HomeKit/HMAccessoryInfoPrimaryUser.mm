@interface HMAccessoryInfoPrimaryUser
- (BOOL)isEqual:(id)a3;
- (HMAccessoryInfoPrimaryUser)initWithProtoData:(id)a3;
- (HMAccessoryInfoPrimaryUser)initWithProtoPayload:(id)a3;
- (HMAccessoryInfoPrimaryUser)initWithUUIDString:(id)a3 selectionType:(unint64_t)a4;
- (id)description;
- (id)protoData;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMAccessoryInfoPrimaryUser

- (unint64_t)hash
{
  v2 = [(HMAccessoryInfoPrimaryUser *)self uuidString];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMAccessoryInfoPrimaryUser *)self uuidString];
      v8 = [(HMAccessoryInfoPrimaryUser *)v6 uuidString];
      if (HMFEqualObjects())
      {
        v9 = [(HMAccessoryInfoPrimaryUser *)self selectionType];
        v10 = v9 == [(HMAccessoryInfoPrimaryUser *)v6 selectionType];
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

- (HMAccessoryInfoPrimaryUser)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[HMAccessoryInfoProtoPrimaryUserInfoEvent alloc] initWithData:v4];

  v6 = [(HMAccessoryInfoPrimaryUser *)self initWithProtoPayload:v5];
  return v6;
}

- (HMAccessoryInfoPrimaryUser)initWithProtoPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 uuidString];
  v6 = [v4 selectionType];

  v7 = [(HMAccessoryInfoPrimaryUser *)self initWithUUIDString:v5 selectionType:v6 != 0];
  return v7;
}

- (id)protoData
{
  v2 = [(HMAccessoryInfoPrimaryUser *)self protoPayload];
  v3 = [v2 data];

  return v3;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMAccessoryInfoProtoPrimaryUserInfoEvent);
  v4 = [(HMAccessoryInfoPrimaryUser *)self uuidString];
  [(HMAccessoryInfoProtoPrimaryUserInfoEvent *)v3 setUuidString:v4];

  [(HMAccessoryInfoProtoPrimaryUserInfoEvent *)v3 setSelectionType:[(HMAccessoryInfoPrimaryUser *)self _primaryUserInfoEventSelectionType:[(HMAccessoryInfoPrimaryUser *)self selectionType]]];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = HMAccessoryInfoPrimaryUser;
  v4 = [(HMAccessoryInfoPrimaryUser *)&v9 description];
  v5 = [(HMAccessoryInfoPrimaryUser *)self uuidString];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMAccessoryInfoPrimaryUser selectionType](self, "selectionType")}];
  v7 = [v3 stringWithFormat:@"%@, %@, %@", v4, v5, v6];

  return v7;
}

- (HMAccessoryInfoPrimaryUser)initWithUUIDString:(id)a3 selectionType:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMAccessoryInfoPrimaryUser;
  v8 = [(HMAccessoryInfoPrimaryUser *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_uuidString, a3);
    v9->_selectionType = a4;
  }

  return v9;
}

@end