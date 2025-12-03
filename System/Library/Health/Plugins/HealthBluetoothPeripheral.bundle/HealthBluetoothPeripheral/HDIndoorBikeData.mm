@interface HDIndoorBikeData
- (id)_init;
- (id)allFields;
- (id)description;
- (id)generateDatums:(id)datums;
@end

@implementation HDIndoorBikeData

- (id)generateDatums:(id)datums
{
  datumsCopy = datums;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 persistentDomainForName:kHKConnectedGymPreferencesDomain];

  v8 = [v7 objectForKeyedSubscript:@"ConnectedGymLegacySpeed"];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    if ([(HDIndoorBikeData *)self instantaneousSpeedIsSet])
    {
      v10 = [HKUnit unitFromString:@"km/hr"];
      [(HDIndoorBikeData *)self instantaneousSpeed];
      v11 = [HKQuantity quantityWithUnit:v10 doubleValue:?];

      v12 = [HDQuantityDatum alloc];
      v13 = +[NSUUID UUID];
      v14 = [v12 initWithIdentifier:v13 dateInterval:datumsCopy resumeContext:0 quantity:v11];

      [v5 setObject:v14 forKeyedSubscript:&off_5F8C8];
    }

    if ([(HDIndoorBikeData *)self averageSpeedIsSet])
    {
      v15 = [HKUnit unitFromString:@"km/hr"];
      [(HDIndoorBikeData *)self averageSpeed];
      v16 = [HKQuantity quantityWithUnit:v15 doubleValue:?];

      v17 = [HDQuantityDatum alloc];
      v18 = +[NSUUID UUID];
      v19 = [v17 initWithIdentifier:v18 dateInterval:datumsCopy resumeContext:0 quantity:v16];

      [v5 setObject:v19 forKeyedSubscript:&off_5F8E0];
    }
  }

  if ([(HDIndoorBikeData *)self instantaneousCadenceIsSet])
  {
    v20 = [HKUnit unitFromString:@"count/min"];
    [(HDIndoorBikeData *)self instantaneousCadence];
    v21 = [HKQuantity quantityWithUnit:v20 doubleValue:?];

    v22 = [HDQuantityDatum alloc];
    v23 = +[NSUUID UUID];
    v24 = [v22 initWithIdentifier:v23 dateInterval:datumsCopy resumeContext:0 quantity:v21];

    [v5 setObject:v24 forKeyedSubscript:&off_5F8F8];
  }

  if ([(HDIndoorBikeData *)self averageCadenceIsSet])
  {
    v25 = [HKUnit unitFromString:@"count/min"];
    [(HDIndoorBikeData *)self averageCadence];
    v26 = [HKQuantity quantityWithUnit:v25 doubleValue:?];

    v27 = [HDQuantityDatum alloc];
    v28 = +[NSUUID UUID];
    v29 = [v27 initWithIdentifier:v28 dateInterval:datumsCopy resumeContext:0 quantity:v26];

    [v5 setObject:v29 forKeyedSubscript:&off_5F910];
  }

  if ([(HDIndoorBikeData *)self totalDistanceIsSet])
  {
    v30 = [HKUnit unitFromString:@"m"];
    v31 = [HKQuantity quantityWithUnit:v30 doubleValue:[(HDIndoorBikeData *)self totalDistance]];

    v32 = [HDQuantityDatum alloc];
    v33 = +[NSUUID UUID];
    v34 = [v32 initWithIdentifier:v33 dateInterval:datumsCopy resumeContext:0 quantity:v31];

    [v5 setObject:v34 forKeyedSubscript:&off_5F928];
  }

  if ([(HDIndoorBikeData *)self resistanceLevelIsSet])
  {
    v35 = [HKUnit unitFromString:@"count"];
    v36 = [HKQuantity quantityWithUnit:v35 doubleValue:[(HDIndoorBikeData *)self resistanceLevel]];

    v37 = [HDQuantityDatum alloc];
    v38 = +[NSUUID UUID];
    v39 = [v37 initWithIdentifier:v38 dateInterval:datumsCopy resumeContext:0 quantity:v36];

    [v5 setObject:v39 forKeyedSubscript:&off_5F940];
  }

  if ([(HDIndoorBikeData *)self instantaneousPowerIsSet])
  {
    v40 = +[HKUnit wattUnit];
    v41 = [HKQuantity quantityWithUnit:v40 doubleValue:[(HDIndoorBikeData *)self instantaneousPower]];

    v42 = [HDQuantityDatum alloc];
    v43 = +[NSUUID UUID];
    v44 = [v42 initWithIdentifier:v43 dateInterval:datumsCopy resumeContext:0 quantity:v41];

    [v5 setObject:v44 forKeyedSubscript:&off_5F958];
  }

  if ([(HDIndoorBikeData *)self averagePowerIsSet])
  {
    v45 = +[HKUnit wattUnit];
    v46 = [HKQuantity quantityWithUnit:v45 doubleValue:[(HDIndoorBikeData *)self averagePower]];

    v47 = [HDQuantityDatum alloc];
    v48 = +[NSUUID UUID];
    v49 = [v47 initWithIdentifier:v48 dateInterval:datumsCopy resumeContext:0 quantity:v46];

    [v5 setObject:v49 forKeyedSubscript:&off_5F970];
  }

  if ([(HDIndoorBikeData *)self totalEnergyIsSet])
  {
    v50 = [HKUnit unitFromString:@"kcal"];
    v51 = [HKQuantity quantityWithUnit:v50 doubleValue:[(HDIndoorBikeData *)self totalEnergy]];

    v52 = [HDQuantityDatum alloc];
    v53 = +[NSUUID UUID];
    v54 = [v52 initWithIdentifier:v53 dateInterval:datumsCopy resumeContext:0 quantity:v51];

    [v5 setObject:v54 forKeyedSubscript:&off_5F988];
  }

  if ([(HDIndoorBikeData *)self elapsedTimeIsSet])
  {
    v55 = [HKUnit unitFromString:@"s"];
    v56 = [HKQuantity quantityWithUnit:v55 doubleValue:[(HDIndoorBikeData *)self elapsedTime]];

    v57 = [HDQuantityDatum alloc];
    v58 = +[NSUUID UUID];
    v59 = [v57 initWithIdentifier:v58 dateInterval:datumsCopy resumeContext:0 quantity:v56];

    [v5 setObject:v59 forKeyedSubscript:&off_5F9A0];
  }

  return v5;
}

- (id)allFields
{
  averageSpeedField = self->_averageSpeedField;
  instantaneousCadenceField = self->_instantaneousCadenceField;
  averageCadenceField = self->_averageCadenceField;
  totalDistanceField = self->_totalDistanceField;
  resistanceLevelField = self->_resistanceLevelField;
  instantaneousPowerField = self->_instantaneousPowerField;
  v16[0] = self->_instantaneousSpeedField;
  v16[1] = averageSpeedField;
  averagePowerField = self->_averagePowerField;
  v16[2] = instantaneousCadenceField;
  v16[3] = averageCadenceField;
  totalEnergyField = self->_totalEnergyField;
  v16[4] = totalDistanceField;
  v16[5] = resistanceLevelField;
  energyPerHourField = self->_energyPerHourField;
  v16[6] = instantaneousPowerField;
  v16[7] = averagePowerField;
  energyPerMinuteField = self->_energyPerMinuteField;
  v16[8] = totalEnergyField;
  v16[9] = energyPerHourField;
  heartRateField = self->_heartRateField;
  v16[10] = energyPerMinuteField;
  v16[11] = heartRateField;
  elapsedTimeField = self->_elapsedTimeField;
  v16[12] = self->_metabolicEquivalentField;
  v16[13] = elapsedTimeField;
  v16[14] = self->_remainingTimeField;
  v14 = [NSArray arrayWithObjects:v16 count:15];

  return v14;
}

- (id)_init
{
  v34.receiver = self;
  v34.super_class = HDIndoorBikeData;
  _init = [(HDHealthServiceCharacteristic *)&v34 _init];
  if (_init)
  {
    v3 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:0 fieldLength:2 factor:100];
    v4 = *(_init + 2);
    *(_init + 2) = v3;

    [*(_init + 2) setFlagFieldFlipped:1];
    v5 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:1 fieldLength:2 factor:100];
    v6 = *(_init + 3);
    *(_init + 3) = v5;

    v7 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:2 fieldLength:2 factor:2];
    v8 = *(_init + 4);
    *(_init + 4) = v7;

    [*(_init + 4) setFlagFieldFlipped:1];
    v9 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:3 fieldLength:2 factor:2];
    v10 = *(_init + 5);
    *(_init + 5) = v9;

    v11 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt24Field alloc] initWithCorrespondingFlagBit:4 fieldLength:3 factor:1];
    v12 = *(_init + 6);
    *(_init + 6) = v11;

    v13 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicInt16Field alloc] initWithCorrespondingFlagBit:5 fieldLength:2 factor:1];
    v14 = *(_init + 7);
    *(_init + 7) = v13;

    v15 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicInt16Field alloc] initWithCorrespondingFlagBit:6 fieldLength:2 factor:1];
    v16 = *(_init + 8);
    *(_init + 8) = v15;

    v17 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicInt16Field alloc] initWithCorrespondingFlagBit:7 fieldLength:2 factor:1];
    v18 = *(_init + 9);
    *(_init + 9) = v17;

    v19 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:8 fieldLength:2 factor:1];
    v20 = *(_init + 10);
    *(_init + 10) = v19;

    v21 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:8 fieldLength:2 factor:1];
    v22 = *(_init + 11);
    *(_init + 11) = v21;

    v23 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:8 fieldLength:1 factor:1];
    v24 = *(_init + 12);
    *(_init + 12) = v23;

    v25 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:9 fieldLength:1 factor:1];
    v26 = *(_init + 13);
    *(_init + 13) = v25;

    v27 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:10 fieldLength:1 factor:1];
    v28 = *(_init + 14);
    *(_init + 14) = v27;

    v29 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:11 fieldLength:2 factor:1];
    v30 = *(_init + 15);
    *(_init + 15) = v29;

    v31 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:12 fieldLength:2 factor:1];
    v32 = *(_init + 16);
    *(_init + 16) = v31;
  }

  return _init;
}

- (id)description
{
  isSet = [(HDFitnessMachineCharacteristicField *)self->_instantaneousSpeedField isSet];
  if (isSet)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_instantaneousSpeedField value];
    v3 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v3 = @"(null)";
  }

  isSet2 = [(HDFitnessMachineCharacteristicField *)self->_averageSpeedField isSet];
  if (isSet2)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_averageSpeedField value];
    v34 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v34 = @"(null)";
  }

  isSet3 = [(HDFitnessMachineCharacteristicField *)self->_instantaneousCadenceField isSet];
  if (isSet3)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_instantaneousCadenceField value];
    v33 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v33 = @"(null)";
  }

  isSet4 = [(HDFitnessMachineCharacteristicField *)self->_averageCadenceField isSet];
  if (isSet4)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_averageCadenceField value];
    v32 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v32 = @"(null)";
  }

  isSet5 = [(HDFitnessMachineCharacteristicField *)self->_totalDistanceField isSet];
  if (isSet5)
  {
    v31 = [NSNumber numberWithUnsignedInt:[(HDFitnessMachineCharacteristicUInt24Field *)self->_totalDistanceField value]];
  }

  else
  {
    v31 = @"(null)";
  }

  isSet6 = [(HDFitnessMachineCharacteristicField *)self->_resistanceLevelField isSet];
  if (isSet6)
  {
    v4 = [NSNumber numberWithShort:[(HDFitnessMachineCharacteristicInt16Field *)self->_resistanceLevelField value]];
  }

  else
  {
    v4 = @"(null)";
  }

  isSet7 = [(HDFitnessMachineCharacteristicField *)self->_instantaneousPowerField isSet];
  if (isSet7)
  {
    v30 = [NSNumber numberWithShort:[(HDFitnessMachineCharacteristicInt16Field *)self->_instantaneousPowerField value]];
  }

  else
  {
    v30 = @"(null)";
  }

  isSet8 = [(HDFitnessMachineCharacteristicField *)self->_averagePowerField isSet];
  if (isSet8)
  {
    v29 = [NSNumber numberWithShort:[(HDFitnessMachineCharacteristicInt16Field *)self->_averagePowerField value]];
  }

  else
  {
    v29 = @"(null)";
  }

  isSet9 = [(HDFitnessMachineCharacteristicField *)self->_totalEnergyField isSet];
  if (isSet9)
  {
    v28 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_totalEnergyField value]];
  }

  else
  {
    v28 = @"(null)";
  }

  isSet10 = [(HDFitnessMachineCharacteristicField *)self->_energyPerHourField isSet];
  if (isSet10)
  {
    v27 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_energyPerHourField value]];
  }

  else
  {
    v27 = @"(null)";
  }

  isSet11 = [(HDFitnessMachineCharacteristicField *)self->_energyPerMinuteField isSet];
  if (isSet11)
  {
    v26 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_energyPerMinuteField value]];
  }

  else
  {
    v26 = @"(null)";
  }

  isSet12 = [(HDFitnessMachineCharacteristicField *)self->_heartRateField isSet];
  if (isSet12)
  {
    v25 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_heartRateField value]];
  }

  else
  {
    v25 = @"(null)";
  }

  isSet13 = [(HDFitnessMachineCharacteristicField *)self->_metabolicEquivalentField isSet];
  if (isSet13)
  {
    v7 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_metabolicEquivalentField value]];
  }

  else
  {
    v7 = @"(null)";
  }

  v8 = v4;
  isSet14 = [(HDFitnessMachineCharacteristicField *)self->_elapsedTimeField isSet];
  if (isSet14)
  {
    v10 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_elapsedTimeField value]];
  }

  else
  {
    v10 = @"(null)";
  }

  if (![(HDFitnessMachineCharacteristicField *)self->_remainingTimeField isSet])
  {
    v12 = [NSString stringWithFormat:@"Indoor Bike Data: instantaneousSpeed = %@, averageSpeed = %@, instantaneousCadence = %@, averageCadence = %@, totalDistance = %@, resistanceLevel = %@, instantaneousPower = %@, averagePower = %@, totalEnergy = %@, energyPerHour = %@, energyPerMinute = %@, heartRate = %@, metabolicEquivalent = %@, elapsedTime = %@, remainingTime = %@", v3, v34, v33, v32, v31, v4, v30, v29, v28, v27, v26, v25, v7, v10, @"(null)"];
    if (!isSet14)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v11 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_remainingTimeField value]];
  v12 = [NSString stringWithFormat:@"Indoor Bike Data: instantaneousSpeed = %@, averageSpeed = %@, instantaneousCadence = %@, averageCadence = %@, totalDistance = %@, resistanceLevel = %@, instantaneousPower = %@, averagePower = %@, totalEnergy = %@, energyPerHour = %@, energyPerMinute = %@, heartRate = %@, metabolicEquivalent = %@, elapsedTime = %@, remainingTime = %@", v3, v34, v33, v32, v31, v8, v30, v29, v28, v27, v26, v25, v7, v10, v11];

  if (isSet14)
  {
LABEL_47:
  }

LABEL_48:
  if (!isSet13)
  {
    if (!isSet12)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (isSet12)
  {
LABEL_50:
  }

LABEL_51:
  if (isSet11)
  {
  }

  if (isSet10)
  {
  }

  if (isSet9)
  {
  }

  if (isSet8)
  {
  }

  if (isSet7)
  {
  }

  if (isSet6)
  {
  }

  if (isSet5)
  {
  }

  if (isSet4)
  {
  }

  if (isSet3)
  {
  }

  if (isSet2)
  {
  }

  if (isSet)
  {
  }

  return v12;
}

@end