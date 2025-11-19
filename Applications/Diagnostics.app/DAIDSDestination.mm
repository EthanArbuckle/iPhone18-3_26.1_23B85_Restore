@interface DAIDSDestination
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIDSDevice:(id)a3;
- (BOOL)isEqualToNRDevice:(id)a3;
- (DAIDSDestination)initWithCoder:(id)a3;
- (DAIDSDestination)initWithIDSDevice:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAIDSDestination

- (DAIDSDestination)initWithIDSDevice:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = DAIDSDestination;
  v5 = [(DAIDSDestination *)&v17 init];
  if (v5)
  {
    v6 = IDSCopyIDForDevice();
    idsDestination = v5->_idsDestination;
    v5->_idsDestination = v6;

    v8 = [v4 nsuuid];
    bluetoothID = v5->_bluetoothID;
    v5->_bluetoothID = v8;

    v10 = [v4 uniqueID];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v10;

    v12 = [v4 uniqueIDOverride];
    uniqueIDOverride = v5->_uniqueIDOverride;
    v5->_uniqueIDOverride = v12;

    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isLocallyPaired]);
    locallyPaired = v5->_locallyPaired;
    v5->_locallyPaired = v14;
  }

  return v5;
}

- (DAIDSDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DAIDSDestination *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
    idsDestination = v5->_idsDestination;
    v5->_idsDestination = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothID"];
    bluetoothID = v5->_bluetoothID;
    v5->_bluetoothID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIDOverride"];
    uniqueIDOverride = v5->_uniqueIDOverride;
    v5->_uniqueIDOverride = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locallyPaired"];
    locallyPaired = v5->_locallyPaired;
    v5->_locallyPaired = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DAIDSDestination *)self idsDestination];
  [v4 encodeObject:v5 forKey:@"destination"];

  v6 = [(DAIDSDestination *)self bluetoothID];
  [v4 encodeObject:v6 forKey:@"bluetoothID"];

  v7 = [(DAIDSDestination *)self uniqueID];
  [v4 encodeObject:v7 forKey:@"uniqueID"];

  v8 = [(DAIDSDestination *)self uniqueIDOverride];
  [v4 encodeObject:v8 forKey:@"uniqueIDOverride"];

  v9 = [(DAIDSDestination *)self locallyPaired];
  [v4 encodeObject:v9 forKey:@"locallyPaired"];
}

- (unint64_t)hash
{
  v2 = [(DAIDSDestination *)self uniqueIDOverride];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DAIDSDestination *)self uniqueIDOverride];
    v6 = [v4 uniqueIDOverride];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(DAIDSDestination *)self isEqualToIDSDevice:v4];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
        goto LABEL_9;
      }

      v8 = [(DAIDSDestination *)self isEqualToNRDevice:v4];
    }

    v7 = v8;
  }

LABEL_9:

  return v7;
}

- (BOOL)isEqualToNRDevice:(id)a3
{
  v4 = NRDevicePropertyIsPaired;
  v5 = a3;
  v6 = [v5 valueForProperty:v4];
  v7 = +[NRPairedDeviceRegistry sharedInstance];
  v8 = [v7 deviceIDForNRDevice:v5];

  v9 = [(DAIDSDestination *)self locallyPaired];
  if ([v6 isEqualToNumber:v9])
  {
    v10 = [(DAIDSDestination *)self bluetoothID];
    v11 = [v8 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualToIDSDevice:(id)a3
{
  v4 = [a3 uniqueIDOverride];
  v5 = [(DAIDSDestination *)self uniqueIDOverride];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (id)description
{
  v3 = [(DAIDSDestination *)self idsDestination];
  v4 = [(DAIDSDestination *)self bluetoothID];
  v5 = [(DAIDSDestination *)self uniqueID];
  v6 = [(DAIDSDestination *)self uniqueIDOverride];
  v7 = [(DAIDSDestination *)self locallyPaired];
  v8 = [NSString stringWithFormat:@"idsDestination: %@ bluetoothID: %@; unqiueID: %@; uniqueIDOverride: %@; isLocallyPaired: %@", v3, v4, v5, v6, v7];;

  return v8;
}

@end