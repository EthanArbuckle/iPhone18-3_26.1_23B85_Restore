@interface MPAVOutputDeviceDescription
- (BOOL)isEqual:(id)a3;
- (MPAVOutputDeviceDescription)initWithDeviceType:(int64_t)a3 deviceSubtype:(int64_t)a4 uid:(id)a5 modelID:(id)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation MPAVOutputDeviceDescription

- (unint64_t)hash
{
  v3 = self->_routeSubtype ^ self->_routeType;
  v4 = v3 ^ [(NSString *)self->_uid hash];
  return v4 ^ [(NSString *)self->_modelID hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MPAVOutputDeviceDescription *)v4 uid];
      if ([v5 isEqualToString:self->_uid] && -[MPAVOutputDeviceDescription routeSubtype](v4, "routeSubtype") == self->_routeSubtype && -[MPAVOutputDeviceDescription routeType](v4, "routeType") == self->_routeType)
      {
        v6 = [(MPAVOutputDeviceDescription *)v4 modelID];
        v7 = [v6 isEqualToString:self->_modelID];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPAVOutputDeviceDescription *)self uid];
  v6 = [(MPAVOutputDeviceDescription *)self routeType];
  if (v6 > 3)
  {
    v7 = @"Undefined";
  }

  else
  {
    v7 = off_1E7676B20[v6];
  }

  v8 = [(MPAVOutputDeviceDescription *)self routeSubtype];
  if (v8 > 0x1B)
  {
    v9 = @"Undefined";
  }

  else
  {
    v9 = off_1E7676A40[v8];
  }

  v10 = v9;
  v11 = [v3 stringWithFormat:@"<%@: %p uid=%@ type=%@ subtype=%@ modelID=%@>", v4, self, v5, v7, v10, self->_modelID];

  return v11;
}

- (MPAVOutputDeviceDescription)initWithDeviceType:(int64_t)a3 deviceSubtype:(int64_t)a4 uid:(id)a5 modelID:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = MPAVOutputDeviceDescription;
  v13 = [(MPAVOutputDeviceDescription *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_routeType = a3;
    v13->_routeSubtype = a4;
    objc_storeStrong(&v13->_uid, a5);
    objc_storeStrong(&v14->_modelID, a6);
  }

  return v14;
}

@end