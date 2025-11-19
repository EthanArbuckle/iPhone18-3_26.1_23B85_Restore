@interface HDTreadmillData
- (id)_init;
- (id)allFields;
- (id)description;
- (id)generateDatums:(id)a3;
@end

@implementation HDTreadmillData

- (id)generateDatums:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 persistentDomainForName:kHKConnectedGymPreferencesDomain];

  v8 = [v7 objectForKeyedSubscript:@"ConnectedGymLegacySpeed"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    if ([(HDTreadmillData *)self instantaneousSpeedIsSet])
    {
      v10 = [HKUnit unitFromString:@"km/hr"];
      [(HDTreadmillData *)self instantaneousSpeed];
      v11 = [HKQuantity quantityWithUnit:v10 doubleValue:?];

      v12 = [HDQuantityDatum alloc];
      v13 = +[NSUUID UUID];
      v14 = [v12 initWithIdentifier:v13 dateInterval:v4 resumeContext:0 quantity:v11];

      [v5 setObject:v14 forKeyedSubscript:&off_5FA48];
    }

    if ([(HDTreadmillData *)self averageSpeedIsSet])
    {
      v15 = [HKUnit unitFromString:@"km/hr"];
      [(HDTreadmillData *)self averageSpeed];
      v16 = [HKQuantity quantityWithUnit:v15 doubleValue:?];

      v17 = [HDQuantityDatum alloc];
      v18 = +[NSUUID UUID];
      v19 = [v17 initWithIdentifier:v18 dateInterval:v4 resumeContext:0 quantity:v16];

      [v5 setObject:v19 forKeyedSubscript:&off_5FA60];
    }
  }

  if ([(HDTreadmillData *)self totalDistanceIsSet])
  {
    v20 = [HKUnit unitFromString:@"m"];
    v21 = [HKQuantity quantityWithUnit:v20 doubleValue:[(HDTreadmillData *)self totalDistance]];

    v22 = [HDQuantityDatum alloc];
    v23 = +[NSUUID UUID];
    v24 = [v22 initWithIdentifier:v23 dateInterval:v4 resumeContext:0 quantity:v21];

    [v5 setObject:v24 forKeyedSubscript:&off_5FA78];
  }

  if ([(HDTreadmillData *)self inclinationIsSet])
  {
    v25 = [HKUnit unitFromString:@"%"];
    [(HDTreadmillData *)self inclination];
    v26 = [HKQuantity quantityWithUnit:v25 doubleValue:?];

    v27 = [HDQuantityDatum alloc];
    v28 = +[NSUUID UUID];
    v29 = [v27 initWithIdentifier:v28 dateInterval:v4 resumeContext:0 quantity:v26];

    [v5 setObject:v29 forKeyedSubscript:&off_5FA90];
  }

  if ([(HDTreadmillData *)self positiveElevationGainIsSet])
  {
    v30 = [HKUnit unitFromString:@"m"];
    [(HDTreadmillData *)self positiveElevationGain];
    v31 = [HKQuantity quantityWithUnit:v30 doubleValue:?];

    v32 = [HDQuantityDatum alloc];
    v33 = +[NSUUID UUID];
    v34 = [v32 initWithIdentifier:v33 dateInterval:v4 resumeContext:0 quantity:v31];

    [v5 setObject:v34 forKeyedSubscript:&off_5FAA8];
  }

  if ([(HDTreadmillData *)self instantaneousPaceIsSet])
  {
    v35 = [HKUnit unitFromString:@"km/min"];
    [(HDTreadmillData *)self instantaneousPace];
    v36 = [HKQuantity quantityWithUnit:v35 doubleValue:?];

    v37 = [HDQuantityDatum alloc];
    v38 = +[NSUUID UUID];
    v39 = [v37 initWithIdentifier:v38 dateInterval:v4 resumeContext:0 quantity:v36];

    [v5 setObject:v39 forKeyedSubscript:&off_5FAC0];
  }

  if ([(HDTreadmillData *)self averagePaceIsSet])
  {
    v40 = [HKUnit unitFromString:@"km/min"];
    [(HDTreadmillData *)self averagePace];
    v41 = [HKQuantity quantityWithUnit:v40 doubleValue:?];

    v42 = [HDQuantityDatum alloc];
    v43 = +[NSUUID UUID];
    v44 = [v42 initWithIdentifier:v43 dateInterval:v4 resumeContext:0 quantity:v41];

    [v5 setObject:v44 forKeyedSubscript:&off_5FAD8];
  }

  if ([(HDTreadmillData *)self totalEnergyIsSet])
  {
    v45 = [HKUnit unitFromString:@"kcal"];
    v46 = [HKQuantity quantityWithUnit:v45 doubleValue:[(HDTreadmillData *)self totalEnergy]];

    v47 = [HDQuantityDatum alloc];
    v48 = +[NSUUID UUID];
    v49 = [v47 initWithIdentifier:v48 dateInterval:v4 resumeContext:0 quantity:v46];

    [v5 setObject:v49 forKeyedSubscript:&off_5FAF0];
  }

  if ([(HDTreadmillData *)self elapsedTimeIsSet])
  {
    v50 = [HKUnit unitFromString:@"s"];
    v51 = [HKQuantity quantityWithUnit:v50 doubleValue:[(HDTreadmillData *)self elapsedTime]];

    v52 = [HDQuantityDatum alloc];
    v53 = +[NSUUID UUID];
    v54 = [v52 initWithIdentifier:v53 dateInterval:v4 resumeContext:0 quantity:v51];

    [v5 setObject:v54 forKeyedSubscript:&off_5FB08];
  }

  return v5;
}

- (id)allFields
{
  averageSpeedField = self->_averageSpeedField;
  v13[0] = self->_instantaneousSpeedField;
  v13[1] = averageSpeedField;
  inclinationField = self->_inclinationField;
  v13[2] = self->_totalDistanceField;
  v13[3] = inclinationField;
  positiveElevationGainField = self->_positiveElevationGainField;
  v13[4] = self->_rampSettingField;
  v13[5] = positiveElevationGainField;
  instantaneousPaceField = self->_instantaneousPaceField;
  v13[6] = self->_negativeElevationGainField;
  v13[7] = instantaneousPaceField;
  totalEnergyField = self->_totalEnergyField;
  v13[8] = self->_averagePaceField;
  v13[9] = totalEnergyField;
  energyPerMinuteField = self->_energyPerMinuteField;
  v13[10] = self->_energyPerHourField;
  v13[11] = energyPerMinuteField;
  metabolicEquivalentField = self->_metabolicEquivalentField;
  v13[12] = self->_heartRateField;
  v13[13] = metabolicEquivalentField;
  remainingTimeField = self->_remainingTimeField;
  v13[14] = self->_elapsedTimeField;
  v13[15] = remainingTimeField;
  powerOutputField = self->_powerOutputField;
  v13[16] = self->_forceOnBeltField;
  v13[17] = powerOutputField;
  v11 = [NSArray arrayWithObjects:v13 count:18];

  return v11;
}

- (id)_init
{
  v40.receiver = self;
  v40.super_class = HDTreadmillData;
  v2 = [(HDHealthServiceCharacteristic *)&v40 _init];
  if (v2)
  {
    v3 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:0 fieldLength:2 factor:100];
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    [*(v2 + 2) setFlagFieldFlipped:1];
    v5 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:1 fieldLength:2 factor:100];
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    v7 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt24Field alloc] initWithCorrespondingFlagBit:2 fieldLength:3 factor:1];
    v8 = *(v2 + 4);
    *(v2 + 4) = v7;

    v9 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:3 fieldLength:2 factor:10];
    v10 = *(v2 + 5);
    *(v2 + 5) = v9;

    [*(v2 + 5) setIsSigned:1];
    v11 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:3 fieldLength:2 factor:10];
    v12 = *(v2 + 6);
    *(v2 + 6) = v11;

    [*(v2 + 6) setIsSigned:1];
    v13 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:4 fieldLength:2 factor:10];
    v14 = *(v2 + 7);
    *(v2 + 7) = v13;

    v15 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:4 fieldLength:2 factor:10];
    v16 = *(v2 + 8);
    *(v2 + 8) = v15;

    v17 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:5 fieldLength:1 factor:10];
    v18 = *(v2 + 9);
    *(v2 + 9) = v17;

    v19 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:6 fieldLength:1 factor:10];
    v20 = *(v2 + 10);
    *(v2 + 10) = v19;

    v21 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:7 fieldLength:2 factor:1];
    v22 = *(v2 + 11);
    *(v2 + 11) = v21;

    v23 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:7 fieldLength:2 factor:1];
    v24 = *(v2 + 12);
    *(v2 + 12) = v23;

    v25 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:7 fieldLength:1 factor:1];
    v26 = *(v2 + 13);
    *(v2 + 13) = v25;

    v27 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:8 fieldLength:1 factor:1];
    v28 = *(v2 + 14);
    *(v2 + 14) = v27;

    v29 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:9 fieldLength:1 factor:1];
    v30 = *(v2 + 15);
    *(v2 + 15) = v29;

    v31 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:10 fieldLength:2 factor:1];
    v32 = *(v2 + 16);
    *(v2 + 16) = v31;

    v33 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:11 fieldLength:2 factor:1];
    v34 = *(v2 + 17);
    *(v2 + 17) = v33;

    v35 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:12 fieldLength:2 factor:1];
    v36 = *(v2 + 18);
    *(v2 + 18) = v35;

    v37 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:12 fieldLength:2 factor:1];
    v38 = *(v2 + 19);
    *(v2 + 19) = v37;
  }

  return v2;
}

- (id)description
{
  v26 = [(HDFitnessMachineCharacteristicField *)self->_instantaneousSpeedField isSet];
  if (v26)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_instantaneousSpeedField value];
    v3 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v3 = @"(null)";
  }

  v25 = [(HDFitnessMachineCharacteristicField *)self->_averageSpeedField isSet];
  if (v25)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_averageSpeedField value];
    v39 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v39 = @"(null)";
  }

  v24 = [(HDFitnessMachineCharacteristicField *)self->_totalDistanceField isSet];
  if (v24)
  {
    v38 = [NSNumber numberWithUnsignedInt:[(HDFitnessMachineCharacteristicUInt24Field *)self->_totalDistanceField value]];
  }

  else
  {
    v38 = @"(null)";
  }

  v23 = [(HDFitnessMachineCharacteristicField *)self->_inclinationField isSet];
  if (v23)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_inclinationField value];
    v37 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v37 = @"(null)";
  }

  v22 = [(HDFitnessMachineCharacteristicField *)self->_rampSettingField isSet];
  if (v22)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_rampSettingField value];
    v36 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v36 = @"(null)";
  }

  v21 = [(HDFitnessMachineCharacteristicField *)self->_positiveElevationGainField isSet];
  if (v21)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_positiveElevationGainField value];
    v4 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v4 = @"(null)";
  }

  v20 = [(HDFitnessMachineCharacteristicField *)self->_negativeElevationGainField isSet];
  if (v20)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_negativeElevationGainField value];
    v35 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v35 = @"(null)";
  }

  v19 = [(HDFitnessMachineCharacteristicField *)self->_instantaneousPaceField isSet];
  if (v19)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_instantaneousPaceField value];
    v34 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v34 = @"(null)";
  }

  v18 = [(HDFitnessMachineCharacteristicField *)self->_averagePaceField isSet];
  if (v18)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_averagePaceField value];
    v33 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v33 = @"(null)";
  }

  v17 = [(HDFitnessMachineCharacteristicField *)self->_totalEnergyField isSet];
  if (v17)
  {
    v32 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_totalEnergyField value]];
  }

  else
  {
    v32 = @"(null)";
  }

  v16 = [(HDFitnessMachineCharacteristicField *)self->_energyPerHourField isSet];
  if (v16)
  {
    v31 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_energyPerHourField value]];
  }

  else
  {
    v31 = @"(null)";
  }

  v15 = [(HDFitnessMachineCharacteristicField *)self->_energyPerMinuteField isSet];
  if (v15)
  {
    v30 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_energyPerMinuteField value]];
  }

  else
  {
    v30 = @"(null)";
  }

  v14 = [(HDFitnessMachineCharacteristicField *)self->_heartRateField isSet];
  if (v14)
  {
    v29 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_heartRateField value]];
  }

  else
  {
    v29 = @"(null)";
  }

  v13 = [(HDFitnessMachineCharacteristicField *)self->_metabolicEquivalentField isSet];
  if (v13)
  {
    v28 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_metabolicEquivalentField value]];
  }

  else
  {
    v28 = @"(null)";
  }

  v12 = [(HDFitnessMachineCharacteristicField *)self->_elapsedTimeField isSet];
  if (v12)
  {
    v27 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_elapsedTimeField value]];
  }

  else
  {
    v27 = @"(null)";
  }

  v5 = [(HDFitnessMachineCharacteristicField *)self->_remainingTimeField isSet];
  if (v5)
  {
    v6 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_remainingTimeField value]];
  }

  else
  {
    v6 = @"(null)";
  }

  v7 = [(HDFitnessMachineCharacteristicField *)self->_forceOnBeltField isSet];
  if (v7)
  {
    v8 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_forceOnBeltField value]];
  }

  else
  {
    v8 = @"(null)";
  }

  if (![(HDFitnessMachineCharacteristicField *)self->_powerOutputField isSet])
  {
    v10 = [NSString stringWithFormat:@"Treadmill Data: instantaneousSpeed = %@, averageSpeed = %@, totalDistance = %@, inclination = %@, rampSetting = %@, positiveElevationGain = %@, negativeElevationGain = %@, instantaneousPace = %@, averagePace = %@, totalEnergy = %@, energyPerHour = %@, energyPerMinute = %@, heartRate = %@, metabolicEquivalent = %@, elapsedTime = %@, remainingTime = %@, forceOnBelt = %@, powerOutput = %@", v3, v39, v38, v37, v36, v4, v35, v34, v33, v32, v31, v30, v29, v28, v27, v6, v8, @"(null)"];
    if (!v7)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v9 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_powerOutputField value]];
  v10 = [NSString stringWithFormat:@"Treadmill Data: instantaneousSpeed = %@, averageSpeed = %@, totalDistance = %@, inclination = %@, rampSetting = %@, positiveElevationGain = %@, negativeElevationGain = %@, instantaneousPace = %@, averagePace = %@, totalEnergy = %@, energyPerHour = %@, energyPerMinute = %@, heartRate = %@, metabolicEquivalent = %@, elapsedTime = %@, remainingTime = %@, forceOnBelt = %@, powerOutput = %@", v3, v39, v38, v37, v36, v4, v35, v34, v33, v32, v31, v30, v29, v28, v27, v6, v8, v9];

  if (v7)
  {
LABEL_56:
  }

LABEL_57:
  if (v5)
  {
  }

  if (v12)
  {
  }

  if (v13)
  {
  }

  if (v14)
  {
  }

  if (v15)
  {
  }

  if (v16)
  {
  }

  if (v17)
  {
  }

  if (v18)
  {
  }

  if (v19)
  {
  }

  if (v20)
  {
  }

  if (v21)
  {
  }

  if (v22)
  {
  }

  if (v23)
  {
  }

  if (v24)
  {
  }

  if (v25)
  {
  }

  if (v26)
  {
  }

  return v10;
}

@end