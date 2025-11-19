@interface HDCrossTrainerData
- (id)_init;
- (id)allFields;
- (id)description;
- (id)generateDatums:(id)a3;
@end

@implementation HDCrossTrainerData

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
    if ([(HDCrossTrainerData *)self instantaneousSpeedIsSet])
    {
      v10 = [HKUnit unitFromString:@"km/hr"];
      [(HDCrossTrainerData *)self instantaneousSpeed];
      v11 = [HKQuantity quantityWithUnit:v10 doubleValue:?];

      v12 = [HDQuantityDatum alloc];
      v13 = +[NSUUID UUID];
      v14 = [v12 initWithIdentifier:v13 dateInterval:v4 resumeContext:0 quantity:v11];

      [v5 setObject:v14 forKeyedSubscript:&off_5F7C0];
    }

    if ([(HDCrossTrainerData *)self averageSpeedIsSet])
    {
      v15 = [HKUnit unitFromString:@"km/hr"];
      [(HDCrossTrainerData *)self averageSpeed];
      v16 = [HKQuantity quantityWithUnit:v15 doubleValue:?];

      v17 = [HDQuantityDatum alloc];
      v18 = +[NSUUID UUID];
      v19 = [v17 initWithIdentifier:v18 dateInterval:v4 resumeContext:0 quantity:v16];

      [v5 setObject:v19 forKeyedSubscript:&off_5F7D8];
    }
  }

  if ([(HDCrossTrainerData *)self totalDistanceIsSet])
  {
    v20 = [HKUnit unitFromString:@"m"];
    v21 = [HKQuantity quantityWithUnit:v20 doubleValue:[(HDCrossTrainerData *)self totalDistance]];

    v22 = [HDQuantityDatum alloc];
    v23 = +[NSUUID UUID];
    v24 = [v22 initWithIdentifier:v23 dateInterval:v4 resumeContext:0 quantity:v21];

    [v5 setObject:v24 forKeyedSubscript:&off_5F7F0];
  }

  if ([(HDCrossTrainerData *)self strideCountIsSet])
  {
    v25 = [HKUnit unitFromString:@"count"];
    [(HDCrossTrainerData *)self strideCount];
    v26 = [HKQuantity quantityWithUnit:v25 doubleValue:?];

    v27 = [HDQuantityDatum alloc];
    v28 = +[NSUUID UUID];
    v29 = [v27 initWithIdentifier:v28 dateInterval:v4 resumeContext:0 quantity:v26];

    [v5 setObject:v29 forKeyedSubscript:&off_5F808];
  }

  if ([(HDCrossTrainerData *)self positiveElevationGainIsSet])
  {
    v30 = [HKUnit unitFromString:@"m"];
    v31 = [HKQuantity quantityWithUnit:v30 doubleValue:[(HDCrossTrainerData *)self positiveElevationGain]];

    v32 = [HDQuantityDatum alloc];
    v33 = +[NSUUID UUID];
    v34 = [v32 initWithIdentifier:v33 dateInterval:v4 resumeContext:0 quantity:v31];

    [v5 setObject:v34 forKeyedSubscript:&off_5F820];
  }

  if ([(HDCrossTrainerData *)self inclinationIsSet])
  {
    v35 = [HKUnit unitFromString:@"%"];
    [(HDCrossTrainerData *)self inclination];
    v36 = [HKQuantity quantityWithUnit:v35 doubleValue:?];

    v37 = [HDQuantityDatum alloc];
    v38 = +[NSUUID UUID];
    v39 = [v37 initWithIdentifier:v38 dateInterval:v4 resumeContext:0 quantity:v36];

    [v5 setObject:v39 forKeyedSubscript:&off_5F838];
  }

  if ([(HDCrossTrainerData *)self resistanceLevelIsSet])
  {
    v40 = [HKUnit unitFromString:@"count"];
    [(HDCrossTrainerData *)self resistanceLevel];
    v41 = [HKQuantity quantityWithUnit:v40 doubleValue:?];

    v42 = [HDQuantityDatum alloc];
    v43 = +[NSUUID UUID];
    v44 = [v42 initWithIdentifier:v43 dateInterval:v4 resumeContext:0 quantity:v41];

    [v5 setObject:v44 forKeyedSubscript:&off_5F850];
  }

  if ([(HDCrossTrainerData *)self instantaneousPowerIsSet])
  {
    v45 = +[HKUnit wattUnit];
    v46 = [HKQuantity quantityWithUnit:v45 doubleValue:[(HDCrossTrainerData *)self instantaneousPower]];

    v47 = [HDQuantityDatum alloc];
    v48 = +[NSUUID UUID];
    v49 = [v47 initWithIdentifier:v48 dateInterval:v4 resumeContext:0 quantity:v46];

    [v5 setObject:v49 forKeyedSubscript:&off_5F868];
  }

  if ([(HDCrossTrainerData *)self averagePowerIsSet])
  {
    v50 = +[HKUnit wattUnit];
    v51 = [HKQuantity quantityWithUnit:v50 doubleValue:[(HDCrossTrainerData *)self averagePower]];

    v52 = [HDQuantityDatum alloc];
    v53 = +[NSUUID UUID];
    v54 = [v52 initWithIdentifier:v53 dateInterval:v4 resumeContext:0 quantity:v51];

    [v5 setObject:v54 forKeyedSubscript:&off_5F880];
  }

  if ([(HDCrossTrainerData *)self totalEnergyIsSet])
  {
    v55 = [HKUnit unitFromString:@"kcal"];
    v56 = [HKQuantity quantityWithUnit:v55 doubleValue:[(HDCrossTrainerData *)self totalEnergy]];

    v57 = [HDQuantityDatum alloc];
    v58 = +[NSUUID UUID];
    v59 = [v57 initWithIdentifier:v58 dateInterval:v4 resumeContext:0 quantity:v56];

    [v5 setObject:v59 forKeyedSubscript:&off_5F898];
  }

  if ([(HDCrossTrainerData *)self elapsedTimeIsSet])
  {
    v60 = [HKUnit unitFromString:@"s"];
    v61 = [HKQuantity quantityWithUnit:v60 doubleValue:[(HDCrossTrainerData *)self elapsedTime]];

    v62 = [HDQuantityDatum alloc];
    v63 = +[NSUUID UUID];
    v64 = [v62 initWithIdentifier:v63 dateInterval:v4 resumeContext:0 quantity:v61];

    [v5 setObject:v64 forKeyedSubscript:&off_5F8B0];
  }

  return v5;
}

- (id)allFields
{
  averageSpeedField = self->_averageSpeedField;
  v14[0] = self->_instantaneousSpeedField;
  v14[1] = averageSpeedField;
  stepPerMinuteField = self->_stepPerMinuteField;
  v14[2] = self->_totalDistanceField;
  v14[3] = stepPerMinuteField;
  strideCountField = self->_strideCountField;
  v14[4] = self->_averageStepRateField;
  v14[5] = strideCountField;
  negativeElevationGainField = self->_negativeElevationGainField;
  v14[6] = self->_positiveElevationGainField;
  v14[7] = negativeElevationGainField;
  rampSettingField = self->_rampSettingField;
  v14[8] = self->_inclinationField;
  v14[9] = rampSettingField;
  instantaneousPowerField = self->_instantaneousPowerField;
  v14[10] = self->_resistanceLevelField;
  v14[11] = instantaneousPowerField;
  totalEnergyField = self->_totalEnergyField;
  v14[12] = self->_averagePowerField;
  v14[13] = totalEnergyField;
  energyPerMinuteField = self->_energyPerMinuteField;
  v14[14] = self->_energyPerHourField;
  v14[15] = energyPerMinuteField;
  metabolicEquivalentField = self->_metabolicEquivalentField;
  v14[16] = self->_heartRateField;
  v14[17] = metabolicEquivalentField;
  remainingTimeField = self->_remainingTimeField;
  v14[18] = self->_elapsedTimeField;
  v14[19] = remainingTimeField;
  v12 = [NSArray arrayWithObjects:v14 count:20];

  return v12;
}

- (id)_init
{
  v44.receiver = self;
  v44.super_class = HDCrossTrainerData;
  v2 = [(HDHealthServiceCharacteristic *)&v44 _init];
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

    v9 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:3 fieldLength:2 factor:1];
    v10 = *(v2 + 5);
    *(v2 + 5) = v9;

    v11 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:3 fieldLength:2 factor:1];
    v12 = *(v2 + 6);
    *(v2 + 6) = v11;

    v13 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:4 fieldLength:2 factor:10];
    v14 = *(v2 + 7);
    *(v2 + 7) = v13;

    v15 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:5 fieldLength:2 factor:1];
    v16 = *(v2 + 8);
    *(v2 + 8) = v15;

    v17 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:5 fieldLength:2 factor:1];
    v18 = *(v2 + 9);
    *(v2 + 9) = v17;

    v19 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:6 fieldLength:2 factor:10];
    v20 = *(v2 + 10);
    *(v2 + 10) = v19;

    [*(v2 + 10) setIsSigned:1];
    v21 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:6 fieldLength:2 factor:10];
    v22 = *(v2 + 11);
    *(v2 + 11) = v21;

    [*(v2 + 11) setIsSigned:1];
    v23 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicDoubleField alloc] initWithCorrespondingFlagBit:7 fieldLength:2 factor:10];
    v24 = *(v2 + 12);
    *(v2 + 12) = v23;

    [*(v2 + 12) setIsSigned:1];
    v25 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicInt16Field alloc] initWithCorrespondingFlagBit:8 fieldLength:2 factor:1];
    v26 = *(v2 + 13);
    *(v2 + 13) = v25;

    v27 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicInt16Field alloc] initWithCorrespondingFlagBit:9 fieldLength:2 factor:1];
    v28 = *(v2 + 14);
    *(v2 + 14) = v27;

    v29 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:10 fieldLength:2 factor:1];
    v30 = *(v2 + 15);
    *(v2 + 15) = v29;

    v31 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:10 fieldLength:2 factor:1];
    v32 = *(v2 + 16);
    *(v2 + 16) = v31;

    v33 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:10 fieldLength:1 factor:1];
    v34 = *(v2 + 17);
    *(v2 + 17) = v33;

    v35 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:11 fieldLength:1 factor:1];
    v36 = *(v2 + 18);
    *(v2 + 18) = v35;

    v37 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:12 fieldLength:1 factor:1];
    v38 = *(v2 + 19);
    *(v2 + 19) = v37;

    v39 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:13 fieldLength:2 factor:1];
    v40 = *(v2 + 20);
    *(v2 + 20) = v39;

    v41 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:14 fieldLength:2 factor:1];
    v42 = *(v2 + 21);
    *(v2 + 21) = v41;
  }

  return v2;
}

- (id)description
{
  v29 = [(HDFitnessMachineCharacteristicField *)self->_instantaneousSpeedField isSet];
  if (v29)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_instantaneousSpeedField value];
    v3 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v3 = @"(null)";
  }

  v28 = [(HDFitnessMachineCharacteristicField *)self->_averageSpeedField isSet];
  if (v28)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_averageSpeedField value];
    v44 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v44 = @"(null)";
  }

  v27 = [(HDFitnessMachineCharacteristicField *)self->_totalDistanceField isSet];
  if (v27)
  {
    v43 = [NSNumber numberWithUnsignedInt:[(HDFitnessMachineCharacteristicUInt24Field *)self->_totalDistanceField value]];
  }

  else
  {
    v43 = @"(null)";
  }

  v26 = [(HDFitnessMachineCharacteristicField *)self->_stepPerMinuteField isSet];
  if (v26)
  {
    v42 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_stepPerMinuteField value]];
  }

  else
  {
    v42 = @"(null)";
  }

  v25 = [(HDFitnessMachineCharacteristicField *)self->_averageStepRateField isSet];
  if (v25)
  {
    v41 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_averageStepRateField value]];
  }

  else
  {
    v41 = @"(null)";
  }

  v24 = [(HDFitnessMachineCharacteristicField *)self->_strideCountField isSet];
  if (v24)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_strideCountField value];
    v40 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v40 = @"(null)";
  }

  v23 = [(HDFitnessMachineCharacteristicField *)self->_positiveElevationGainField isSet];
  if (v23)
  {
    v22 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_positiveElevationGainField value]];
  }

  else
  {
    v22 = @"(null)";
  }

  v21 = [(HDFitnessMachineCharacteristicField *)self->_negativeElevationGainField isSet];
  if (v21)
  {
    v39 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_negativeElevationGainField value]];
  }

  else
  {
    v39 = @"(null)";
  }

  v20 = [(HDFitnessMachineCharacteristicField *)self->_inclinationField isSet];
  if (v20)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_inclinationField value];
    v38 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v38 = @"(null)";
  }

  v19 = [(HDFitnessMachineCharacteristicField *)self->_rampSettingField isSet];
  if (v19)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_rampSettingField value];
    v37 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v37 = @"(null)";
  }

  v18 = [(HDFitnessMachineCharacteristicField *)self->_resistanceLevelField isSet];
  if (v18)
  {
    [(HDFitnessMachineCharacteristicDoubleField *)self->_resistanceLevelField value];
    v36 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v36 = @"(null)";
  }

  v17 = [(HDFitnessMachineCharacteristicField *)self->_instantaneousPowerField isSet];
  if (v17)
  {
    v35 = [NSNumber numberWithShort:[(HDFitnessMachineCharacteristicInt16Field *)self->_instantaneousPowerField value]];
  }

  else
  {
    v35 = @"(null)";
  }

  v16 = [(HDFitnessMachineCharacteristicField *)self->_averagePowerField isSet];
  if (v16)
  {
    v34 = [NSNumber numberWithShort:[(HDFitnessMachineCharacteristicInt16Field *)self->_averagePowerField value]];
  }

  else
  {
    v34 = @"(null)";
  }

  v15 = [(HDFitnessMachineCharacteristicField *)self->_totalEnergyField isSet];
  if (v15)
  {
    v33 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_totalEnergyField value]];
  }

  else
  {
    v33 = @"(null)";
  }

  v14 = [(HDFitnessMachineCharacteristicField *)self->_energyPerHourField isSet];
  if (v14)
  {
    v32 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_energyPerHourField value]];
  }

  else
  {
    v32 = @"(null)";
  }

  v13 = [(HDFitnessMachineCharacteristicField *)self->_energyPerMinuteField isSet];
  if (v13)
  {
    v31 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_energyPerMinuteField value]];
  }

  else
  {
    v31 = @"(null)";
  }

  v4 = [(HDFitnessMachineCharacteristicField *)self->_heartRateField isSet];
  if (v4)
  {
    v30 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_heartRateField value]];
  }

  else
  {
    v30 = @"(null)";
  }

  v5 = [(HDFitnessMachineCharacteristicField *)self->_metabolicEquivalentField isSet];
  if (v5)
  {
    v6 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_metabolicEquivalentField value]];
  }

  else
  {
    v6 = @"(null)";
  }

  v7 = [(HDFitnessMachineCharacteristicField *)self->_elapsedTimeField isSet];
  if (v7)
  {
    v8 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_elapsedTimeField value]];
  }

  else
  {
    v8 = @"(null)";
  }

  if (![(HDFitnessMachineCharacteristicField *)self->_remainingTimeField isSet])
  {
    v10 = v22;
    v11 = [NSString stringWithFormat:@"Cross Trainer Data: instantaneousSpeed = %@, averageSpeed = %@, totalDistance = %@, stepPerMinute = %@, averageStepRate = %@, strideCount = %@, positiveElevationGain = %@, negativeElevationGain = %@, inclination = %@, rampSetting = %@, resistanceLevel = %@, instantaneousPower = %@, averagePower = %@, totalEnergy = %@, energyPerHour = %@, energyPerMinute = %@, heartRate = %@, metabolicEquivalent = %@, elapsedTime = %@, remainingTime = %@", v3, v44, v43, v42, v41, v40, v22, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v6, v8, @"(null)"];
    if (!v7)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v9 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_remainingTimeField value]];
  v10 = v22;
  v11 = [NSString stringWithFormat:@"Cross Trainer Data: instantaneousSpeed = %@, averageSpeed = %@, totalDistance = %@, stepPerMinute = %@, averageStepRate = %@, strideCount = %@, positiveElevationGain = %@, negativeElevationGain = %@, inclination = %@, rampSetting = %@, resistanceLevel = %@, instantaneousPower = %@, averagePower = %@, totalEnergy = %@, energyPerHour = %@, energyPerMinute = %@, heartRate = %@, metabolicEquivalent = %@, elapsedTime = %@, remainingTime = %@", v3, v44, v43, v42, v41, v40, v22, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v6, v8, v9];

  if (v7)
  {
LABEL_62:
  }

LABEL_63:
  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (v4)
  {
LABEL_65:
  }

LABEL_66:
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

  if (v27)
  {
  }

  if (v28)
  {
  }

  if (v29)
  {
  }

  return v11;
}

@end