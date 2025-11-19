@interface VGVehicle
- (BOOL)isLPRWithElectricEngine;
- (LSApplicationRecord)applicationRecord;
- (id)evChargingPorts;
- (id)updatedTraitsFrom:(id)a3;
@end

@implementation VGVehicle

- (LSApplicationRecord)applicationRecord
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v5 = [LSApplicationRecord alloc];
    v6 = [(VGVehicle *)self pairedAppIdentifier];
    v4 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:0 error:0];

    objc_setAssociatedObject(self, a2, v4, 1);
  }

  return v4;
}

- (id)updatedTraitsFrom:(id)a3
{
  v4 = a3;
  v5 = [(VGVehicle *)self evChargingPorts];
  [v4 setEvChargingPorts:v5];

  [v4 clearEngineTypes];
  v6 = +[MapsExternalDevice sharedInstance];
  v7 = [v6 engineTypes];

  if (v7)
  {
    [v4 addEngineType:1];
    if ((v7 & 0x1000000) == 0)
    {
LABEL_3:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x1000000) == 0)
  {
    goto LABEL_3;
  }

  [v4 addEngineType:4];
  if ((v7 & 0x100) == 0)
  {
LABEL_4:
    if ((v7 & 0x10000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_8:
  [v4 addEngineType:2];
  if ((v7 & 0x10000) != 0)
  {
LABEL_11:
    [v4 addEngineType:3];
    goto LABEL_12;
  }

LABEL_9:
  if (([(VGVehicle *)self isPureElectricVehicle]& 1) != 0 || [(VGVehicle *)self isLPRWithElectricEngine])
  {
    goto LABEL_11;
  }

LABEL_12:
  [v4 clearPreferredBrands];
  v8 = +[NSMutableSet set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [(VGVehicle *)self preferredChargingNetworks];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(*(&v25 + 1) + 8 * i) globalBrandID]);
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v11);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v4 addPreferredBrand:{objc_msgSend(*(*(&v21 + 1) + 8 * j), "unsignedLongLongValue", v21)}];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  return v4;
}

- (BOOL)isLPRWithElectricEngine
{
  v3 = [(VGVehicle *)self lprVehicleType];
  if (v3)
  {
    v4 = [(VGVehicle *)self lprPowerType];
    v5 = [v4 isEqualToString:@"EV"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)evChargingPorts
{
  v3 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(VGVehicle *)self powerByConnector];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        [v9 unsignedIntegerValue];
        v10 = GEOEvChargingConnectorTypeFromVGConnectorType();
        if (v10)
        {
          v11 = v10;
          v12 = [(VGVehicle *)self powerByConnector];
          v13 = [v12 objectForKeyedSubscript:v9];

          v14 = objc_alloc_init(GEOPDEvChargingPort);
          [v14 setChargingConnectorType:v11];
          v15 = +[NSUnitPower watts];
          v16 = [v13 measurementByConvertingToUnit:v15];
          [v16 doubleValue];
          [v14 setPower:v17];

          [v3 addObject:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return v3;
}

@end