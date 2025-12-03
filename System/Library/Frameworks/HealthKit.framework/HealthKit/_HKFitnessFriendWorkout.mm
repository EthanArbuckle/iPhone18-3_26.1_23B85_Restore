@interface _HKFitnessFriendWorkout
+ (id)fitnessFriendWorkoutFromHKWorkout:(id)workout;
+ (id)fitnessFriendworkoutWithActivityType:(unint64_t)type friendUUID:(id)d startDate:(id)date endDate:(id)endDate duration:(double)duration totalActiveEnergyBurned:(id)burned totalBasalEnergyBurned:(id)energyBurned totalDistance:(id)self0 goalType:(unint64_t)self1 goal:(id)self2 bundleID:(id)self3 isWatchWorkout:(BOOL)self4 isIndoorWorkout:(BOOL)self5 deviceManufacturer:(id)self6 deviceModel:(id)self7 amm:(int64_t)self8 seymourCatalogWorkoutIdentifier:(id)self9 seymourMediaType:(id)mediaType;
- (_HKFitnessFriendWorkout)initWithCoder:(id)coder;
- (id)hkWorkoutFromFriendWorkout;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKFitnessFriendWorkout

- (id)hkWorkoutFromFriendWorkout
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_HKFitnessFriendWorkout *)self isIndoorWorkout])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HKIndoorWorkout"];
  }

  if ([(_HKFitnessFriendWorkout *)self amm]== 2)
  {
    v4 = &unk_1F0685190;
  }

  else
  {
    v4 = &unk_1F06851A8;
  }

  [dictionary setObject:v4 forKeyedSubscript:@"_HKPrivateWorkoutActivityMoveMode"];
  seymourCatalogWorkoutIdentifier = [(_HKFitnessFriendWorkout *)self seymourCatalogWorkoutIdentifier];

  if (seymourCatalogWorkoutIdentifier)
  {
    seymourCatalogWorkoutIdentifier2 = [(_HKFitnessFriendWorkout *)self seymourCatalogWorkoutIdentifier];
    [dictionary setObject:seymourCatalogWorkoutIdentifier2 forKeyedSubscript:@"_HKPrivateSeymourCatalogWorkoutIdentifier"];
  }

  seymourMediaType = [(_HKFitnessFriendWorkout *)self seymourMediaType];

  if (seymourMediaType)
  {
    seymourMediaType2 = [(_HKFitnessFriendWorkout *)self seymourMediaType];
    [dictionary setObject:seymourMediaType2 forKeyedSubscript:@"_HKPrivateSeymourMediaType"];
  }

  workoutActivityType = [(_HKFitnessFriendWorkout *)self workoutActivityType];
  startDate = [(HKSample *)self startDate];
  endDate = [(HKSample *)self endDate];
  [(_HKFitnessFriendWorkout *)self duration];
  v13 = v12;
  totalEnergyBurned = [(_HKFitnessFriendWorkout *)self totalEnergyBurned];
  totalBasalEnergyBurned = [(_HKFitnessFriendWorkout *)self totalBasalEnergyBurned];
  totalDistance = [(_HKFitnessFriendWorkout *)self totalDistance];
  goalType = [(_HKFitnessFriendWorkout *)self goalType];
  goal = [(_HKFitnessFriendWorkout *)self goal];
  v26 = dictionary;
  v19 = [dictionary copy];
  v20 = [HKWorkout _workoutWithActivityType:workoutActivityType startDate:startDate endDate:endDate workoutEvents:0 duration:totalEnergyBurned totalActiveEnergyBurned:totalBasalEnergyBurned totalBasalEnergyBurned:v13 totalDistance:totalDistance goalType:goalType goal:goal device:0 metadata:v19];

  _init = [[HKSource alloc] _init];
  bundleID = [(_HKFitnessFriendWorkout *)self bundleID];
  [_init _setBundleIdentifier:bundleID];

  v23 = [[HKSourceRevision alloc] _initWithSource:_init];
  [v20 _setSourceRevision:v23];
  if (self->_deviceManufacturer)
  {
    v24 = [[HKDevice alloc] initWithName:0 manufacturer:self->_deviceManufacturer model:self->_deviceModel hardwareVersion:0 firmwareVersion:0 softwareVersion:0 localIdentifier:@"com.healthd.fitnessmachine" UDIDeviceIdentifier:0];
    [v20 _setDevice:v24];
  }

  [v20 _setIsWatchWorkout:{-[_HKFitnessFriendWorkout isWatchWorkout](self, "isWatchWorkout")}];

  return v20;
}

+ (id)fitnessFriendworkoutWithActivityType:(unint64_t)type friendUUID:(id)d startDate:(id)date endDate:(id)endDate duration:(double)duration totalActiveEnergyBurned:(id)burned totalBasalEnergyBurned:(id)energyBurned totalDistance:(id)self0 goalType:(unint64_t)self1 goal:(id)self2 bundleID:(id)self3 isWatchWorkout:(BOOL)self4 isIndoorWorkout:(BOOL)self5 deviceManufacturer:(id)self6 deviceModel:(id)self7 amm:(int64_t)self8 seymourCatalogWorkoutIdentifier:(id)self9 seymourMediaType:(id)mediaType
{
  dCopy = d;
  burnedCopy = burned;
  energyBurnedCopy = energyBurned;
  distanceCopy = distance;
  goalCopy = goal;
  iDCopy = iD;
  manufacturerCopy = manufacturer;
  modelCopy = model;
  identifierCopy = identifier;
  mediaTypeCopy = mediaType;
  endDateCopy = endDate;
  dateCopy = date;
  v51 = +[HKObjectType fitnessFriendWorkoutType];
  [dateCopy timeIntervalSinceReferenceDate];
  v31 = v30;

  [endDateCopy timeIntervalSinceReferenceDate];
  v33 = v32;

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __301___HKFitnessFriendWorkout_fitnessFriendworkoutWithActivityType_friendUUID_startDate_endDate_duration_totalActiveEnergyBurned_totalBasalEnergyBurned_totalDistance_goalType_goal_bundleID_isWatchWorkout_isIndoorWorkout_deviceManufacturer_deviceModel_amm_seymourCatalogWorkoutIdentifier_seymourMediaType___block_invoke;
  v58[3] = &unk_1E7384470;
  typeCopy = type;
  durationCopy = duration;
  v59 = dCopy;
  v60 = burnedCopy;
  v34 = energyBurnedCopy;
  v61 = energyBurnedCopy;
  v62 = distanceCopy;
  v63 = goalCopy;
  v64 = iDCopy;
  workoutCopy = workout;
  indoorWorkoutCopy = indoorWorkout;
  v65 = manufacturerCopy;
  v66 = modelCopy;
  goalTypeCopy = goalType;
  ammCopy = amm;
  v67 = identifierCopy;
  v68 = mediaTypeCopy;
  v57.receiver = self;
  v57.super_class = &OBJC_METACLASS____HKFitnessFriendWorkout;
  v56 = mediaTypeCopy;
  v54 = identifierCopy;
  v53 = modelCopy;
  v52 = manufacturerCopy;
  v49 = iDCopy;
  v35 = goalCopy;
  v36 = distanceCopy;
  v37 = v34;
  v38 = burnedCopy;
  v39 = dCopy;
  v40 = objc_msgSendSuper2(&v57, sel__newSampleWithType_startDate_endDate_device_metadata_config_, v51, 0, 0, v58, v31, v33);

  return v40;
}

+ (id)fitnessFriendWorkoutFromHKWorkout:(id)workout
{
  workoutCopy = workout;
  device = [workoutCopy device];
  _isConnectedGymDevice = [device _isConnectedGymDevice];

  if (_isConnectedGymDevice)
  {
    device2 = [workoutCopy device];
    manufacturer = [device2 manufacturer];

    device3 = [workoutCopy device];
    model = [device3 model];
  }

  else
  {
    model = 0;
    manufacturer = 0;
  }

  workoutActivityType = [workoutCopy workoutActivityType];
  startDate = [workoutCopy startDate];
  endDate = [workoutCopy endDate];
  [workoutCopy duration];
  v9 = v8;
  totalEnergyBurned = [workoutCopy totalEnergyBurned];
  _totalBasalEnergyBurned = [workoutCopy _totalBasalEnergyBurned];
  totalDistance = [workoutCopy totalDistance];
  _goalType = [workoutCopy _goalType];
  _goal = [workoutCopy _goal];
  sourceRevision = [workoutCopy sourceRevision];
  source = [sourceRevision source];
  bundleIdentifier = [source bundleIdentifier];
  _isWatchWorkout = [workoutCopy _isWatchWorkout];
  metadata = [workoutCopy metadata];
  v12 = [metadata objectForKeyedSubscript:@"HKIndoorWorkout"];
  bOOLValue = [v12 BOOLValue];

  _activityMoveMode = [workoutCopy _activityMoveMode];
  metadata2 = [workoutCopy metadata];
  v16 = [metadata2 objectForKeyedSubscript:@"_HKPrivateSeymourCatalogWorkoutIdentifier"];
  metadata3 = [workoutCopy metadata];
  v18 = [metadata3 objectForKeyedSubscript:@"_HKPrivateSeymourMediaType"];
  BYTE1(v21) = bOOLValue;
  LOBYTE(v21) = _isWatchWorkout;
  v34 = [self fitnessFriendworkoutWithActivityType:workoutActivityType friendUUID:0 startDate:startDate endDate:endDate duration:totalEnergyBurned totalActiveEnergyBurned:_totalBasalEnergyBurned totalBasalEnergyBurned:v9 totalDistance:totalDistance goalType:_goalType goal:_goal bundleID:bundleIdentifier isWatchWorkout:v21 isIndoorWorkout:manufacturer deviceManufacturer:model deviceModel:_activityMoveMode amm:v16 seymourCatalogWorkoutIdentifier:v18 seymourMediaType:?];

  uUID = [workoutCopy UUID];
  [v34 _setUUID:uUID];

  return v34;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKFitnessFriendWorkout;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_friendUUID forKey:{@"friendUUID", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_workoutActivityType forKey:@"workoutActivityType"];
  [coderCopy encodeDouble:@"duration" forKey:self->_duration];
  [coderCopy encodeObject:self->_totalEnergyBurned forKey:@"totalEnergyBurned"];
  [coderCopy encodeObject:self->_totalBasalEnergyBurned forKey:@"totalBasalEnergyBurned"];
  [coderCopy encodeObject:self->_totalDistance forKey:@"totalDistance"];
  [coderCopy encodeInteger:self->_goalType forKey:@"goalType"];
  [coderCopy encodeObject:self->_goal forKey:@"goal"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundle_id"];
  [coderCopy encodeBool:self->_isWatchWorkout forKey:@"is_watch_workout"];
  [coderCopy encodeBool:self->_isIndoorWorkout forKey:@"is_indoor_workout"];
  [coderCopy encodeObject:self->_deviceManufacturer forKey:@"device_manufacturer"];
  [coderCopy encodeObject:self->_deviceModel forKey:@"device_model"];
  [coderCopy encodeInteger:self->_amm forKey:@"activity_move_mode"];
  [coderCopy encodeObject:self->_seymourCatalogWorkoutIdentifier forKey:@"seymourCatalogWorkoutIdentifier"];
  [coderCopy encodeObject:self->_seymourMediaType forKey:@"seymourMediaType"];
}

- (_HKFitnessFriendWorkout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = _HKFitnessFriendWorkout;
  v5 = [(HKSample *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"friendUUID"];
    friendUUID = v5->_friendUUID;
    v5->_friendUUID = v6;

    v5->_workoutActivityType = [coderCopy decodeIntegerForKey:@"workoutActivityType"];
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->_duration = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalEnergyBurned"];
    totalEnergyBurned = v5->_totalEnergyBurned;
    v5->_totalEnergyBurned = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalBasalEnergyBurned"];
    totalBasalEnergyBurned = v5->_totalBasalEnergyBurned;
    v5->_totalBasalEnergyBurned = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalDistance"];
    totalDistance = v5->_totalDistance;
    v5->_totalDistance = v13;

    v5->_goalType = [coderCopy decodeIntegerForKey:@"goalType"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"goal"];
    goal = v5->_goal;
    v5->_goal = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundle_id"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v17;

    v5->_isWatchWorkout = [coderCopy decodeBoolForKey:@"is_watch_workout"];
    v5->_isIndoorWorkout = [coderCopy decodeBoolForKey:@"is_indoor_workout"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device_manufacturer"];
    deviceManufacturer = v5->_deviceManufacturer;
    v5->_deviceManufacturer = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device_model"];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v21;

    v5->_amm = [coderCopy decodeIntegerForKey:@"activity_move_mode"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seymourCatalogWorkoutIdentifier"];
    seymourCatalogWorkoutIdentifier = v5->_seymourCatalogWorkoutIdentifier;
    v5->_seymourCatalogWorkoutIdentifier = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seymourMediaType"];
    seymourMediaType = v5->_seymourMediaType;
    v5->_seymourMediaType = v25;
  }

  return v5;
}

@end