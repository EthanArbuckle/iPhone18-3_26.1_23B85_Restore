@interface MPAVAuxiliaryDevice
+ (id)otherConnectedDevicesFromRouteDescription:(id)a3;
- (MPAVAuxiliaryDevice)initWithDictionary:(id)a3;
@end

@implementation MPAVAuxiliaryDevice

- (MPAVAuxiliaryDevice)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MPAVAuxiliaryDevice;
  v5 = [(MPAVAuxiliaryDevice *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKey:*MEMORY[0x1E69AEC60]];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v6;

    v8 = [v4 objectForKey:*MEMORY[0x1E69AEC58]];
    productName = v5->_productName;
    v5->_productName = v8;

    v10 = [v4 objectForKey:*MEMORY[0x1E69AEC48]];
    deviceName = v5->_deviceName;
    v5->_deviceName = v10;

    v12 = [v4 objectForKey:*MEMORY[0x1E69AEC40]];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = v12;

    v14 = [v4 objectForKey:*MEMORY[0x1E69AEC50]];
    v5->_playing = [v14 BOOLValue];
  }

  return v5;
}

+ (id)otherConnectedDevicesFromRouteDescription:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 objectForKey:*MEMORY[0x1E69AEC38]];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[MPAVAuxiliaryDevice alloc] initWithDictionary:*(*(&v12 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end