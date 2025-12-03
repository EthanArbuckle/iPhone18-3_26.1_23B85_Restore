@interface INGetCarPowerLevelStatusIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INCarChargingConnectorType)activeConnector;
- (INGetCarPowerLevelStatusIntentResponse)initWithBackingStore:(id)store;
- (INGetCarPowerLevelStatusIntentResponse)initWithCode:(INGetCarPowerLevelStatusIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INGetCarPowerLevelStatusIntentResponse)initWithCoder:(id)coder;
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
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
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
  code = [(INGetCarPowerLevelStatusIntentResponse *)self code];
  v70 = code;
  if (code < (INGetCarPowerLevelStatusIntentResponseCodeFailure|INGetCarPowerLevelStatusIntentResponseCodeInProgress))
  {
    null = *(&off_1E7283320 + code);
    v69 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v69 = 0;
  }

  v57 = null;
  v73[0] = null;
  v72[1] = @"carIdentifier";
  carIdentifier = [(INGetCarPowerLevelStatusIntentResponse *)self carIdentifier];
  v6 = carIdentifier;
  if (!carIdentifier)
  {
    carIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  v56 = carIdentifier;
  v73[1] = carIdentifier;
  v72[2] = @"fuelPercentRemaining";
  fuelPercentRemaining = [(INGetCarPowerLevelStatusIntentResponse *)self fuelPercentRemaining];
  v8 = fuelPercentRemaining;
  if (!fuelPercentRemaining)
  {
    fuelPercentRemaining = [MEMORY[0x1E695DFB0] null];
  }

  v55 = fuelPercentRemaining;
  v73[2] = fuelPercentRemaining;
  v72[3] = @"chargePercentRemaining";
  chargePercentRemaining = [(INGetCarPowerLevelStatusIntentResponse *)self chargePercentRemaining];
  v10 = chargePercentRemaining;
  if (!chargePercentRemaining)
  {
    chargePercentRemaining = [MEMORY[0x1E695DFB0] null];
  }

  v54 = chargePercentRemaining;
  v73[3] = chargePercentRemaining;
  v72[4] = @"distanceRemaining";
  distanceRemaining = [(INGetCarPowerLevelStatusIntentResponse *)self distanceRemaining];
  v12 = distanceRemaining;
  if (!distanceRemaining)
  {
    distanceRemaining = [MEMORY[0x1E695DFB0] null];
  }

  v53 = distanceRemaining;
  v73[4] = distanceRemaining;
  v72[5] = @"charging";
  charging = [(INGetCarPowerLevelStatusIntentResponse *)self charging];
  v14 = charging;
  if (!charging)
  {
    charging = [MEMORY[0x1E695DFB0] null];
  }

  v52 = charging;
  v73[5] = charging;
  v72[6] = @"minutesToFull";
  minutesToFull = [(INGetCarPowerLevelStatusIntentResponse *)self minutesToFull];
  v16 = minutesToFull;
  if (!minutesToFull)
  {
    minutesToFull = [MEMORY[0x1E695DFB0] null];
  }

  v51 = minutesToFull;
  v73[6] = minutesToFull;
  v72[7] = @"maximumDistance";
  maximumDistance = [(INGetCarPowerLevelStatusIntentResponse *)self maximumDistance];
  v18 = maximumDistance;
  if (!maximumDistance)
  {
    maximumDistance = [MEMORY[0x1E695DFB0] null];
  }

  v50 = maximumDistance;
  v73[7] = maximumDistance;
  v72[8] = @"distanceRemainingElectric";
  distanceRemainingElectric = [(INGetCarPowerLevelStatusIntentResponse *)self distanceRemainingElectric];
  v62 = distanceRemainingElectric;
  if (!distanceRemainingElectric)
  {
    distanceRemainingElectric = [MEMORY[0x1E695DFB0] null];
  }

  v49 = distanceRemainingElectric;
  v73[8] = distanceRemainingElectric;
  v72[9] = @"maximumDistanceElectric";
  maximumDistanceElectric = [(INGetCarPowerLevelStatusIntentResponse *)self maximumDistanceElectric];
  v21 = maximumDistanceElectric;
  if (!maximumDistanceElectric)
  {
    maximumDistanceElectric = [MEMORY[0x1E695DFB0] null];
  }

  v48 = maximumDistanceElectric;
  v73[9] = maximumDistanceElectric;
  v72[10] = @"distanceRemainingFuel";
  distanceRemainingFuel = [(INGetCarPowerLevelStatusIntentResponse *)self distanceRemainingFuel];
  v23 = distanceRemainingFuel;
  if (!distanceRemainingFuel)
  {
    distanceRemainingFuel = [MEMORY[0x1E695DFB0] null];
  }

  v47 = distanceRemainingFuel;
  v73[10] = distanceRemainingFuel;
  v72[11] = @"maximumDistanceFuel";
  maximumDistanceFuel = [(INGetCarPowerLevelStatusIntentResponse *)self maximumDistanceFuel];
  v71 = maximumDistanceFuel;
  if (!maximumDistanceFuel)
  {
    maximumDistanceFuel = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v12;
  v46 = maximumDistanceFuel;
  v73[11] = maximumDistanceFuel;
  v72[12] = @"consumptionFormulaArguments";
  consumptionFormulaArguments = [(INGetCarPowerLevelStatusIntentResponse *)self consumptionFormulaArguments];
  v59 = consumptionFormulaArguments;
  if (!consumptionFormulaArguments)
  {
    consumptionFormulaArguments = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v18;
  v45 = consumptionFormulaArguments;
  v73[12] = consumptionFormulaArguments;
  v72[13] = @"chargingFormulaArguments";
  chargingFormulaArguments = [(INGetCarPowerLevelStatusIntentResponse *)self chargingFormulaArguments];
  v27 = chargingFormulaArguments;
  if (!chargingFormulaArguments)
  {
    chargingFormulaArguments = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v6;
  v44 = chargingFormulaArguments;
  v73[13] = chargingFormulaArguments;
  v72[14] = @"dateOfLastStateUpdate";
  dateOfLastStateUpdate = [(INGetCarPowerLevelStatusIntentResponse *)self dateOfLastStateUpdate];
  v29 = dateOfLastStateUpdate;
  if (!dateOfLastStateUpdate)
  {
    dateOfLastStateUpdate = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v23;
  v67 = v8;
  v43 = dateOfLastStateUpdate;
  v73[14] = dateOfLastStateUpdate;
  v72[15] = @"activeConnector";
  activeConnector = [(INGetCarPowerLevelStatusIntentResponse *)self activeConnector];
  v31 = activeConnector;
  if (!activeConnector)
  {
    activeConnector = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v21;
  v64 = v14;
  v66 = v10;
  v73[15] = activeConnector;
  v72[16] = @"maximumBatteryCapacity";
  maximumBatteryCapacity = [(INGetCarPowerLevelStatusIntentResponse *)self maximumBatteryCapacity];
  null2 = maximumBatteryCapacity;
  if (!maximumBatteryCapacity)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v16;
  v73[16] = null2;
  v72[17] = @"currentBatteryCapacity";
  currentBatteryCapacity = [(INGetCarPowerLevelStatusIntentResponse *)self currentBatteryCapacity];
  null3 = currentBatteryCapacity;
  if (!currentBatteryCapacity)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v73[17] = null3;
  v72[18] = @"minimumBatteryCapacity";
  minimumBatteryCapacity = [(INGetCarPowerLevelStatusIntentResponse *)self minimumBatteryCapacity];
  null4 = minimumBatteryCapacity;
  if (!minimumBatteryCapacity)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v73[18] = null4;
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:19];
  if (!minimumBatteryCapacity)
  {
  }

  if (!currentBatteryCapacity)
  {
  }

  if (!maximumBatteryCapacity)
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
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToEnergy(v4);

  [_responseMessagePBRepresentation setMinimumBatteryCapacity:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setCurrentBatteryCapacity:(NSMeasurement *)currentBatteryCapacity
{
  v4 = currentBatteryCapacity;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToEnergy(v4);

  [_responseMessagePBRepresentation setCurrentBatteryCapacity:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setMaximumBatteryCapacity:(NSMeasurement *)maximumBatteryCapacity
{
  v4 = maximumBatteryCapacity;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToEnergy(v4);

  [_responseMessagePBRepresentation setMaximumBatteryCapacity:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setActiveConnector:(INCarChargingConnectorType)activeConnector
{
  BackingType = INCarChargingConnectorTypeGetBackingType(activeConnector);
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = _responseMessagePBRepresentation;
  if (BackingType == 0x7FFFFFFF)
  {
    [_responseMessagePBRepresentation setHasActiveConnector:0];
  }

  else
  {
    [_responseMessagePBRepresentation setActiveConnector:BackingType];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setDateOfLastStateUpdate:(NSDateComponents *)dateOfLastStateUpdate
{
  v4 = dateOfLastStateUpdate;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDateTime(v4);

  [_responseMessagePBRepresentation setDateOfLastStateUpdate:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setChargingFormulaArguments:(NSDictionary *)chargingFormulaArguments
{
  v4 = chargingFormulaArguments;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToJSONDictionary(v4);

  [_responseMessagePBRepresentation setChargingFormulaArguments:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setConsumptionFormulaArguments:(NSDictionary *)consumptionFormulaArguments
{
  v4 = consumptionFormulaArguments;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToJSONDictionary(v4);

  [_responseMessagePBRepresentation setConsumptionFormulaArguments:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setMaximumDistanceFuel:(NSMeasurement *)maximumDistanceFuel
{
  v4 = maximumDistanceFuel;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDistance(v4);

  [_responseMessagePBRepresentation setMaximumDistanceFuel:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setDistanceRemainingFuel:(NSMeasurement *)distanceRemainingFuel
{
  v4 = distanceRemainingFuel;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDistance(v4);

  [_responseMessagePBRepresentation setDistanceRemainingFuel:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setMaximumDistanceElectric:(NSMeasurement *)maximumDistanceElectric
{
  v4 = maximumDistanceElectric;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDistance(v4);

  [_responseMessagePBRepresentation setMaximumDistanceElectric:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setDistanceRemainingElectric:(NSMeasurement *)distanceRemainingElectric
{
  v4 = distanceRemainingElectric;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDistance(v4);

  [_responseMessagePBRepresentation setDistanceRemainingElectric:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setMaximumDistance:(NSMeasurement *)maximumDistance
{
  v4 = maximumDistance;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDistance(v4);

  [_responseMessagePBRepresentation setMaximumDistance:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setMinutesToFull:(NSNumber *)minutesToFull
{
  v4 = minutesToFull;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToInteger(v4);

  [_responseMessagePBRepresentation setMinutesToFull:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setCharging:(NSNumber *)charging
{
  v7 = charging;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (v7)
  {
    [_responseMessagePBRepresentation setCharging:{-[NSNumber BOOLValue](v7, "BOOLValue")}];
  }

  else
  {
    [_responseMessagePBRepresentation setHasCharging:0];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setDistanceRemaining:(NSMeasurement *)distanceRemaining
{
  v4 = distanceRemaining;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDistance(v4);

  [_responseMessagePBRepresentation setDistanceRemaining:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setChargePercentRemaining:(NSNumber *)chargePercentRemaining
{
  v4 = chargePercentRemaining;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDouble(v4);

  [_responseMessagePBRepresentation setChargePercentRemaining:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setFuelPercentRemaining:(NSNumber *)fuelPercentRemaining
{
  v4 = fuelPercentRemaining;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDouble(v4);

  [_responseMessagePBRepresentation setFuelPercentRemaining:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setCarIdentifier:(NSString *)carIdentifier
{
  v4 = carIdentifier;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation setCarIdentifier:v4];

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSMeasurement)minimumBatteryCapacity
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  minimumBatteryCapacity = [_responseMessagePBRepresentation minimumBatteryCapacity];
  v4 = INIntentSlotValueTransformFromEnergy(minimumBatteryCapacity);

  return v4;
}

- (NSMeasurement)currentBatteryCapacity
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  currentBatteryCapacity = [_responseMessagePBRepresentation currentBatteryCapacity];
  v4 = INIntentSlotValueTransformFromEnergy(currentBatteryCapacity);

  return v4;
}

- (NSMeasurement)maximumBatteryCapacity
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  maximumBatteryCapacity = [_responseMessagePBRepresentation maximumBatteryCapacity];
  v4 = INIntentSlotValueTransformFromEnergy(maximumBatteryCapacity);

  return v4;
}

- (INCarChargingConnectorType)activeConnector
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  hasActiveConnector = [_responseMessagePBRepresentation hasActiveConnector];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  activeConnector = [_responseMessagePBRepresentation2 activeConnector];
  if (hasActiveConnector && (activeConnector - 2) <= 9)
  {
    v7 = off_1E7288530[activeConnector - 2];
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
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  dateOfLastStateUpdate = [_responseMessagePBRepresentation dateOfLastStateUpdate];
  v4 = INIntentSlotValueTransformFromDateTime(dateOfLastStateUpdate);

  return v4;
}

- (NSDictionary)chargingFormulaArguments
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  chargingFormulaArguments = [_responseMessagePBRepresentation chargingFormulaArguments];
  v4 = INIntentSlotValueTransformFromJSONDictionary(chargingFormulaArguments);

  return v4;
}

- (NSDictionary)consumptionFormulaArguments
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  consumptionFormulaArguments = [_responseMessagePBRepresentation consumptionFormulaArguments];
  v4 = INIntentSlotValueTransformFromJSONDictionary(consumptionFormulaArguments);

  return v4;
}

- (NSMeasurement)maximumDistanceFuel
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  maximumDistanceFuel = [_responseMessagePBRepresentation maximumDistanceFuel];
  v4 = INIntentSlotValueTransformFromDistance(maximumDistanceFuel);

  return v4;
}

- (NSMeasurement)distanceRemainingFuel
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  distanceRemainingFuel = [_responseMessagePBRepresentation distanceRemainingFuel];
  v4 = INIntentSlotValueTransformFromDistance(distanceRemainingFuel);

  return v4;
}

- (NSMeasurement)maximumDistanceElectric
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  maximumDistanceElectric = [_responseMessagePBRepresentation maximumDistanceElectric];
  v4 = INIntentSlotValueTransformFromDistance(maximumDistanceElectric);

  return v4;
}

- (NSMeasurement)distanceRemainingElectric
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  distanceRemainingElectric = [_responseMessagePBRepresentation distanceRemainingElectric];
  v4 = INIntentSlotValueTransformFromDistance(distanceRemainingElectric);

  return v4;
}

- (NSMeasurement)maximumDistance
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  maximumDistance = [_responseMessagePBRepresentation maximumDistance];
  v4 = INIntentSlotValueTransformFromDistance(maximumDistance);

  return v4;
}

- (NSNumber)minutesToFull
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  minutesToFull = [_responseMessagePBRepresentation minutesToFull];
  v4 = INIntentSlotValueTransformFromInteger(minutesToFull);

  return v4;
}

- (NSNumber)charging
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([_responseMessagePBRepresentation hasCharging])
  {
    v4 = MEMORY[0x1E696AD98];
    _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithBool:{objc_msgSend(_responseMessagePBRepresentation2, "charging")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSMeasurement)distanceRemaining
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  distanceRemaining = [_responseMessagePBRepresentation distanceRemaining];
  v4 = INIntentSlotValueTransformFromDistance(distanceRemaining);

  return v4;
}

- (NSNumber)chargePercentRemaining
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  chargePercentRemaining = [_responseMessagePBRepresentation chargePercentRemaining];
  v4 = INIntentSlotValueTransformFromDouble(chargePercentRemaining);

  return v4;
}

- (NSNumber)fuelPercentRemaining
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  fuelPercentRemaining = [_responseMessagePBRepresentation fuelPercentRemaining];
  v4 = INIntentSlotValueTransformFromDouble(fuelPercentRemaining);

  return v4;
}

- (NSString)carIdentifier
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  carIdentifier = [_responseMessagePBRepresentation carIdentifier];
  v4 = [carIdentifier copy];

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INGetCarPowerLevelStatusIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INGetCarPowerLevelStatusIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INGetCarPowerLevelStatusIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INGetCarPowerLevelStatusIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INGetCarPowerLevelStatusIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INGetCarPowerLevelStatusIntentResponseCodeFailureRequiringAppLaunch"];

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
  code = [(INGetCarPowerLevelStatusIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[code - 1];
  }
}

- (INGetCarPowerLevelStatusIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INGetCarPowerLevelStatusIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INGetCarPowerLevelStatusIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INGetCarPowerLevelStatusIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INGetCarPowerLevelStatusIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INGetCarPowerLevelStatusIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INGetCarPowerLevelStatusIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INGetCarPowerLevelStatusIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
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

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 4)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FDB0[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 2;
  if (type != 2)
  {
    v5 = type == 5;
  }

  v6 = 3;
  v7 = 4;
  if (requested)
  {
    v7 = 5;
  }

  if (type != 1)
  {
    v7 = 0;
  }

  if (type)
  {
    v6 = v7;
  }

  if (type <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end