@interface MPAVOutputDeviceDescription
- (BOOL)isEqual:(id)equal;
- (MPAVOutputDeviceDescription)initWithDeviceType:(int64_t)type deviceSubtype:(int64_t)subtype uid:(id)uid modelID:(id)d;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MPAVOutputDeviceDescription *)equalCopy uid];
      if ([v5 isEqualToString:self->_uid] && -[MPAVOutputDeviceDescription routeSubtype](equalCopy, "routeSubtype") == self->_routeSubtype && -[MPAVOutputDeviceDescription routeType](equalCopy, "routeType") == self->_routeType)
      {
        modelID = [(MPAVOutputDeviceDescription *)equalCopy modelID];
        v7 = [modelID isEqualToString:self->_modelID];
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
  routeType = [(MPAVOutputDeviceDescription *)self routeType];
  if (routeType > 3)
  {
    v7 = @"Undefined";
  }

  else
  {
    v7 = off_1E7676B20[routeType];
  }

  routeSubtype = [(MPAVOutputDeviceDescription *)self routeSubtype];
  if (routeSubtype > 0x1B)
  {
    v9 = @"Undefined";
  }

  else
  {
    v9 = off_1E7676A40[routeSubtype];
  }

  v10 = v9;
  v11 = [v3 stringWithFormat:@"<%@: %p uid=%@ type=%@ subtype=%@ modelID=%@>", v4, self, v5, v7, v10, self->_modelID];

  return v11;
}

- (MPAVOutputDeviceDescription)initWithDeviceType:(int64_t)type deviceSubtype:(int64_t)subtype uid:(id)uid modelID:(id)d
{
  uidCopy = uid;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = MPAVOutputDeviceDescription;
  v13 = [(MPAVOutputDeviceDescription *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_routeType = type;
    v13->_routeSubtype = subtype;
    objc_storeStrong(&v13->_uid, uid);
    objc_storeStrong(&v14->_modelID, d);
  }

  return v14;
}

@end