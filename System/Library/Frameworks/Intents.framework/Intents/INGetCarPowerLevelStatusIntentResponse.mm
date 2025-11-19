@interface INGetCarPowerLevelStatusIntentResponse
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INCarChargingConnectorType)activeConnector;
- (INGetCarPowerLevelStatusIntentResponse)initWithBackingStore:(id)a3;
- (INGetCarPowerLevelStatusIntentResponse)initWithCode:(INGetCarPowerLevelStatusIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INGetCarPowerLevelStatusIntentResponse)initWithCoder:(id)a3;
- (INGetCarPowerLevelStatusIntentResponseCode)code;
- (NSDateComponents)dateOfLastStateUpdate;
- (NSDictionary)chargingFormulaArguments;
- (NSDictionary)consumptionFormulaArguments;
- (NSMeasurement)currentBatteryCapacity;
- (NSMeasurement)distanceRemaining;
- (NSMeasurement)distanceRemainingElectric;
- (NSMeasurement)distanceRemainingFuel;
- (NSMeasurement)maximumBatteryCapacity;
- (NSMeasurement)maximumDistance;
- (NSMeasurement)maximumDistanceElectric;
- (NSMeasurement)maximumDistanceFuel;
- (NSMeasurement)minimumBatteryCapacity;
- (NSNumber)chargePercentRemaining;
- (NSNumber)charging;
- (NSNumber)fuelPercentRemaining;
- (NSNumber)minutesToFull;
- (NSString)carIdentifier;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
- (void)setActiveConnector:(INCarChargingConnectorType)activeConnector;
- (void)setCarIdentifier:(NSString *)carIdentifier;
- (void)setChargePercentRemaining:(NSNumber *)chargePercentRemaining;
- (void)setCharging:(NSNumber *)charging;
- (void)setChargingFormulaArguments:(NSDictionary *)chargingFormulaArguments;
- (void)setConsumptionFormulaArguments:(NSDictionary *)consumptionFormulaArguments;
- (void)setCurrentBatteryCapacity:(NSMeasurement *)currentBatteryCapacity;
- (void)setDateOfLastStateUpdate:(NSDateComponents *)dateOfLastStateUpdate;
- (void)setDistanceRemaining:(NSMeasurement *)distanceRemaining;
- (void)setDistanceRemainingElectric:(NSMeasurement *)distanceRemainingElectric;
- (void)setDistanceRemainingFuel:(NSMeasurement *)distanceRemainingFuel;
- (void)setFuelPercentRemaining:(NSNumber *)fuelPercentRemaining;
- (void)setMaximumBatteryCapacity:(NSMeasurement *)maximumBatteryCapacity;
- (void)setMaximumDistance:(NSMeasurement *)maximumDistance;
- (void)setMaximumDistanceElectric:(NSMeasurement *)maximumDistanceElectric;
- (void)setMaximumDistanceFuel:(NSMeasurement *)maximumDistanceFuel;
- (void)setMinimumBatteryCapacity:(NSMeasurement *)minimumBatteryCapacity;
- (void)setMinutesToFull:(NSNumber *)minutesToFull;
@end

@implementation INGetCarPowerLevelStatusIntentResponse

- (id)_dictionaryRepresentation
{
  v73[19] = *MEMORY[0x1E69E9840];
  v72[0] = @"code";
  v3 = [(INGetCarPowerLevelStatusIntentResponse *)self code];
  v70 = v3;
  if (v3 < (INGetCarPowerLevelStatusIntentResponseCodeFailure|INGetCarPowerLevelStatusIntentResponseCodeInProgress))
  {
    v4 = *(&off_1E7283320 + v3);
    v69 = v4;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v69 = 0;
  }

  v57 = v4;
  v73[0] = v4;
  v72[1] = @"carIdentifier";
  v5 = [(INGetCarPowerLevelStatusIntentResponse *)self carIdentifier];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = v5;
  v73[1] = v5;
  v72[2] = @"fuelPercentRemaining";
  v7 = [(INGetCarPowerLevelStatusIntentResponse *)self fuelPercentRemaining];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = v7;
  v73[2] = v7;
  v72[3] = @"chargePercentRemaining";
  v9 = [(INGetCarPowerLevelStatusIntentResponse *)self chargePercentRemaining];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = v9;
  v73[3] = v9;
  v72[4] = @"distanceRemaining";
  v11 = [(INGetCarPowerLevelStatusIntentResponse *)self distanceRemaining];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = v11;
  v73[4] = v11;
  v72[5] = @"charging";
  v13 = [(INGetCarPowerLevelStatusIntentResponse *)self charging];
  v14 = v13;
  if (!v13)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = v13;
  v73[5] = v13;
  v72[6] = @"minutesToFull";
  v15 = [(INGetCarPowerLevelStatusIntentResponse *)self minutesToFull];
  v16 = v15;
  if (!v15)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v15;
  v73[6] = v15;
  v72[7] = @"maximumDistance";
  v17 = [(INGetCarPowerLevelStatusIntentResponse *)self maximumDistance];
  v18 = v17;
  if (!v17)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = v17;
  v73[7] = v17;
  v72[8] = @"distanceRemainingElectric";
  v19 = [(INGetCarPowerLevelStatusIntentResponse *)self distanceRemainingElectric];
  v62 = v19;
  if (!v19)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v19;
  v73[8] = v19;
  v72[9] = @"maximumDistanceElectric";
  v20 = [(INGetCarPowerLevelStatusIntentResponse *)self maximumDistanceElectric];
  v21 = v20;
  if (!v20)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v20;
  v73[9] = v20;
  v72[10] = @"distanceRemainingFuel";
  v22 = [(INGetCarPowerLevelStatusIntentResponse *)self distanceRemainingFuel];
  v23 = v22;
  if (!v22)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v22;
  v73[10] = v22;
  v72[11] = @"maximumDistanceFuel";
  v24 = [(INGetCarPowerLevelStatusIntentResponse *)self maximumDistanceFuel];
  v71 = v24;
  if (!v24)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v12;
  v46 = v24;
  v73[11] = v24;
  v72[12] = @"consumptionFormulaArguments";
  v25 = [(INGetCarPowerLevelStatusIntentResponse *)self consumptionFormulaArguments];
  v59 = v25;
  if (!v25)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v18;
  v45 = v25;
  v73[12] = v25;
  v72[13] = @"chargingFormulaArguments";
  v26 = [(INGetCarPowerLevelStatusIntentResponse *)self chargingFormulaArguments];
  v27 = v26;
  if (!v26)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v6;
  v44 = v26;
  v73[13] = v26;
  v72[14] = @"dateOfLastStateUpdate";
  v28 = [(INGetCarPowerLevelStatusIntentResponse *)self dateOfLastStateUpdate];
  v29 = v28;
  if (!v28)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v23;
  v67 = v8;
  v43 = v28;
  v73[14] = v28;
  v72[15] = @"activeConnector";
  v30 = [(INGetCarPowerLevelStatusIntentResponse *)self activeConnector];
  v31 = v30;
  if (!v30)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v21;
  v64 = v14;
  v66 = v10;
  v73[15] = v30;
  v72[16] = @"maximumBatteryCapacity";
  v32 = [(INGetCarPowerLevelStatusIntentResponse *)self maximumBatteryCapacity];
  v33 = v32;
  if (!v32)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v16;
  v73[16] = v33;
  v72[17] = @"currentBatteryCapacity";
  v35 = [(INGetCarPowerLevelStatusIntentResponse *)self currentBatteryCapacity];
  v36 = v35;
  if (!v35)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v73[17] = v36;
  v72[18] = @"minimumBatteryCapacity";
  v37 = [(INGetCarPowerLevelStatusIntentResponse *)self minimumBatteryCapacity];
  v38 = v37;
  if (!v37)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v73[18] = v38;
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:19];
  if (!v37)
  {
  }

  if (!v35)
  {
  }

  if (!v32)
  {
  }

  if (!v31)
  {
  }

  if (!v29)
  {
  }

  if (!v27)
  {
  }

  if (!v59)
  {
  }

  v39 = v71;
  if (!v71)
  {

    v39 = 0;
  }

  if (!v60)
  {
  }

  if (!v61)
  {
  }

  if (!v62)
  {
  }

  if (!v63)
  {
  }

  if (!v34)
  {
  }

  if (!v64)
  {
  }

  if (!v65)
  {
  }

  if (!v66)
  {
  }

  if (!v67)
  {
  }

  if (!v68)
  {
  }

  if (v70 >= 6)
  {
  }

  v40 = *MEMORY[0x1E69E9840];

  return v58;
}

- (void)setMinimumBatteryCapacity:(NSMeasurement *)minimumBatteryCapacity
{
  v4 = minimumBatteryCapacity;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToEnergy(v4);

  [v5 setMinimumBatteryCapacity:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setCurrentBatteryCapacity:(NSMeasurement *)currentBatteryCapacity
{
  v4 = currentBatteryCapacity;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToEnergy(v4);

  [v5 setCurrentBatteryCapacity:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setMaximumBatteryCapacity:(NSMeasurement *)maximumBatteryCapacity
{
  v4 = maximumBatteryCapacity;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToEnergy(v4);

  [v5 setMaximumBatteryCapacity:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setActiveConnector:(INCarChargingConnectorType)activeConnector
{
  BackingType = INCarChargingConnectorTypeGetBackingType(activeConnector);
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = v5;
  if (BackingType == 0x7FFFFFFF)
  {
    [v5 setHasActiveConnector:0];
  }

  else
  {
    [v5 setActiveConnector:BackingType];
  }

  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setDateOfLastStateUpdate:(NSDateComponents *)dateOfLastStateUpdate
{
  v4 = dateOfLastStateUpdate;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDateTime(v4);

  [v5 setDateOfLastStateUpdate:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setChargingFormulaArguments:(NSDictionary *)chargingFormulaArguments
{
  v4 = chargingFormulaArguments;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToJSONDictionary(v4);

  [v5 setChargingFormulaArguments:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setConsumptionFormulaArguments:(NSDictionary *)consumptionFormulaArguments
{
  v4 = consumptionFormulaArguments;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToJSONDictionary(v4);

  [v5 setConsumptionFormulaArguments:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setMaximumDistanceFuel:(NSMeasurement *)maximumDistanceFuel
{
  v4 = maximumDistanceFuel;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDistance(v4);

  [v5 setMaximumDistanceFuel:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setDistanceRemainingFuel:(NSMeasurement *)distanceRemainingFuel
{
  v4 = distanceRemainingFuel;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDistance(v4);

  [v5 setDistanceRemainingFuel:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setMaximumDistanceElectric:(NSMeasurement *)maximumDistanceElectric
{
  v4 = maximumDistanceElectric;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDistance(v4);

  [v5 setMaximumDistanceElectric:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setDistanceRemainingElectric:(NSMeasurement *)distanceRemainingElectric
{
  v4 = distanceRemainingElectric;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDistance(v4);

  [v5 setDistanceRemainingElectric:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setMaximumDistance:(NSMeasurement *)maximumDistance
{
  v4 = maximumDistance;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDistance(v4);

  [v5 setMaximumDistance:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setMinutesToFull:(NSNumber *)minutesToFull
{
  v4 = minutesToFull;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToInteger(v4);

  [v5 setMinutesToFull:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setCharging:(NSNumber *)charging
{
  v7 = charging;
  v4 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (v7)
  {
    [v4 setCharging:{-[NSNumber BOOLValue](v7, "BOOLValue")}];
  }

  else
  {
    [v4 setHasCharging:0];
  }

  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (void)setDistanceRemaining:(NSMeasurement *)distanceRemaining
{
  v4 = distanceRemaining;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDistance(v4);

  [v5 setDistanceRemaining:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setChargePercentRemaining:(NSNumber *)chargePercentRemaining
{
  v4 = chargePercentRemaining;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDouble(v4);

  [v5 setChargePercentRemaining:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setFuelPercentRemaining:(NSNumber *)fuelPercentRemaining
{
  v4 = fuelPercentRemaining;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDouble(v4);

  [v5 setFuelPercentRemaining:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setCarIdentifier:(NSString *)carIdentifier
{
  v4 = carIdentifier;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 setCarIdentifier:v4];

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (NSMeasurement)minimumBatteryCapacity
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 minimumBatteryCapacity];
  v4 = INIntentSlotValueTransformFromEnergy(v3);

  return v4;
}

- (NSMeasurement)currentBatteryCapacity
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 currentBatteryCapacity];
  v4 = INIntentSlotValueTransformFromEnergy(v3);

  return v4;
}

- (NSMeasurement)maximumBatteryCapacity
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 maximumBatteryCapacity];
  v4 = INIntentSlotValueTransformFromEnergy(v3);

  return v4;
}

- (INCarChargingConnectorType)activeConnector
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v4 = [v3 hasActiveConnector];
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 activeConnector];
  if (v4 && (v6 - 2) <= 9)
  {
    v7 = off_1E7288530[v6 - 2];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (NSDateComponents)dateOfLastStateUpdate
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 dateOfLastStateUpdate];
  v4 = INIntentSlotValueTransformFromDateTime(v3);

  return v4;
}

- (NSDictionary)chargingFormulaArguments
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 chargingFormulaArguments];
  v4 = INIntentSlotValueTransformFromJSONDictionary(v3);

  return v4;
}

- (NSDictionary)consumptionFormulaArguments
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 consumptionFormulaArguments];
  v4 = INIntentSlotValueTransformFromJSONDictionary(v3);

  return v4;
}

- (NSMeasurement)maximumDistanceFuel
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 maximumDistanceFuel];
  v4 = INIntentSlotValueTransformFromDistance(v3);

  return v4;
}

- (NSMeasurement)distanceRemainingFuel
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 distanceRemainingFuel];
  v4 = INIntentSlotValueTransformFromDistance(v3);

  return v4;
}

- (NSMeasurement)maximumDistanceElectric
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 maximumDistanceElectric];
  v4 = INIntentSlotValueTransformFromDistance(v3);

  return v4;
}

- (NSMeasurement)distanceRemainingElectric
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 distanceRemainingElectric];
  v4 = INIntentSlotValueTransformFromDistance(v3);

  return v4;
}

- (NSMeasurement)maximumDistance
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 maximumDistance];
  v4 = INIntentSlotValueTransformFromDistance(v3);

  return v4;
}

- (NSNumber)minutesToFull
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 minutesToFull];
  v4 = INIntentSlotValueTransformFromInteger(v3);

  return v4;
}

- (NSNumber)charging
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([v3 hasCharging])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "charging")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSMeasurement)distanceRemaining
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 distanceRemaining];
  v4 = INIntentSlotValueTransformFromDistance(v3);

  return v4;
}

- (NSNumber)chargePercentRemaining
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 chargePercentRemaining];
  v4 = INIntentSlotValueTransformFromDouble(v3);

  return v4;
}

- (NSNumber)fuelPercentRemaining
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 fuelPercentRemaining];
  v4 = INIntentSlotValueTransformFromDouble(v3);

  return v4;
}

- (NSString)carIdentifier
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 carIdentifier];
  v4 = [v3 copy];

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INGetCarPowerLevelStatusIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INGetCarPowerLevelStatusIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INGetCarPowerLevelStatusIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INGetCarPowerLevelStatusIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INGetCarPowerLevelStatusIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INGetCarPowerLevelStatusIntentResponseCodeFailureRequiringAppLaunch"];

  if (v6)
  {
    return 5;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INGetCarPowerLevelStatusIntentResponse *)self code];
  if ((v2 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[v2 - 1];
  }
}

- (INGetCarPowerLevelStatusIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INGetCarPowerLevelStatusIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INGetCarPowerLevelStatusIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INGetCarPowerLevelStatusIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INGetCarPowerLevelStatusIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INGetCarPowerLevelStatusIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INGetCarPowerLevelStatusIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INGetCarPowerLevelStatusIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INGetCarPowerLevelStatusIntentResponse)initWithCode:(INGetCarPowerLevelStatusIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INGetCarPowerLevelStatusIntentResponseCodeFailureRequiringAppLaunch)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E7283320 + code);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INGetCarPowerLevelStatusIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INGetCarPowerLevelStatusIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FDB0[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 2;
  if (a3 != 2)
  {
    v5 = a3 == 5;
  }

  v6 = 3;
  v7 = 4;
  if (a5)
  {
    v7 = 5;
  }

  if (a3 != 1)
  {
    v7 = 0;
  }

  if (a3)
  {
    v6 = v7;
  }

  if (a3 <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end