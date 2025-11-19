@interface _HKFitnessFriendWorkout
+ (id)fitnessFriendWorkoutFromHKWorkout:(id)a3;
+ (id)fitnessFriendworkoutWithActivityType:(unint64_t)a3 friendUUID:(id)a4 startDate:(id)a5 endDate:(id)a6 duration:(double)a7 totalActiveEnergyBurned:(id)a8 totalBasalEnergyBurned:(id)a9 totalDistance:(id)a10 goalType:(unint64_t)a11 goal:(id)a12 bundleID:(id)a13 isWatchWorkout:(BOOL)a14 isIndoorWorkout:(BOOL)a15 deviceManufacturer:(id)a16 deviceModel:(id)a17 amm:(int64_t)a18 seymourCatalogWorkoutIdentifier:(id)a19 seymourMediaType:(id)a20;
- (_HKFitnessFriendWorkout)initWithCoder:(id)a3;
- (id)hkWorkoutFromFriendWorkout;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKFitnessFriendWorkout

- (id)hkWorkoutFromFriendWorkout
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_HKFitnessFriendWorkout *)self isIndoorWorkout])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HKIndoorWorkout"];
  }

  if ([(_HKFitnessFriendWorkout *)self amm]== 2)
  {
    v4 = &unk_1F0685190;
  }

  else
  {
    v4 = &unk_1F06851A8;
  }

  [v3 setObject:v4 forKeyedSubscript:@"_HKPrivateWorkoutActivityMoveMode"];
  v5 = [(_HKFitnessFriendWorkout *)self seymourCatalogWorkoutIdentifier];

  if (v5)
  {
    v6 = [(_HKFitnessFriendWorkout *)self seymourCatalogWorkoutIdentifier];
    [v3 setObject:v6 forKeyedSubscript:@"_HKPrivateSeymourCatalogWorkoutIdentifier"];
  }

  v7 = [(_HKFitnessFriendWorkout *)self seymourMediaType];

  if (v7)
  {
    v8 = [(_HKFitnessFriendWorkout *)self seymourMediaType];
    [v3 setObject:v8 forKeyedSubscript:@"_HKPrivateSeymourMediaType"];
  }

  v9 = [(_HKFitnessFriendWorkout *)self workoutActivityType];
  v10 = [(HKSample *)self startDate];
  v11 = [(HKSample *)self endDate];
  [(_HKFitnessFriendWorkout *)self duration];
  v13 = v12;
  v14 = [(_HKFitnessFriendWorkout *)self totalEnergyBurned];
  v15 = [(_HKFitnessFriendWorkout *)self totalBasalEnergyBurned];
  v16 = [(_HKFitnessFriendWorkout *)self totalDistance];
  v17 = [(_HKFitnessFriendWorkout *)self goalType];
  v18 = [(_HKFitnessFriendWorkout *)self goal];
  v26 = v3;
  v19 = [v3 copy];
  v20 = [HKWorkout _workoutWithActivityType:v9 startDate:v10 endDate:v11 workoutEvents:0 duration:v14 totalActiveEnergyBurned:v15 totalBasalEnergyBurned:v13 totalDistance:v16 goalType:v17 goal:v18 device:0 metadata:v19];

  v21 = [[HKSource alloc] _init];
  v22 = [(_HKFitnessFriendWorkout *)self bundleID];
  [v21 _setBundleIdentifier:v22];

  v23 = [[HKSourceRevision alloc] _initWithSource:v21];
  [v20 _setSourceRevision:v23];
  if (self->_deviceManufacturer)
  {
    v24 = [[HKDevice alloc] initWithName:0 manufacturer:self->_deviceManufacturer model:self->_deviceModel hardwareVersion:0 firmwareVersion:0 softwareVersion:0 localIdentifier:@"com.healthd.fitnessmachine" UDIDeviceIdentifier:0];
    [v20 _setDevice:v24];
  }

  [v20 _setIsWatchWorkout:{-[_HKFitnessFriendWorkout isWatchWorkout](self, "isWatchWorkout")}];

  return v20;
}

+ (id)fitnessFriendworkoutWithActivityType:(unint64_t)a3 friendUUID:(id)a4 startDate:(id)a5 endDate:(id)a6 duration:(double)a7 totalActiveEnergyBurned:(id)a8 totalBasalEnergyBurned:(id)a9 totalDistance:(id)a10 goalType:(unint64_t)a11 goal:(id)a12 bundleID:(id)a13 isWatchWorkout:(BOOL)a14 isIndoorWorkout:(BOOL)a15 deviceManufacturer:(id)a16 deviceModel:(id)a17 amm:(int64_t)a18 seymourCatalogWorkoutIdentifier:(id)a19 seymourMediaType:(id)a20
{
  v47 = a4;
  v46 = a8;
  v24 = a9;
  v45 = a10;
  v44 = a12;
  v43 = a13;
  v42 = a16;
  v25 = a17;
  v26 = a19;
  v27 = a20;
  v28 = a6;
  v29 = a5;
  v51 = +[HKObjectType fitnessFriendWorkoutType];
  [v29 timeIntervalSinceReferenceDate];
  v31 = v30;

  [v28 timeIntervalSinceReferenceDate];
  v33 = v32;

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __301___HKFitnessFriendWorkout_fitnessFriendworkoutWithActivityType_friendUUID_startDate_endDate_duration_totalActiveEnergyBurned_totalBasalEnergyBurned_totalDistance_goalType_goal_bundleID_isWatchWorkout_isIndoorWorkout_deviceManufacturer_deviceModel_amm_seymourCatalogWorkoutIdentifier_seymourMediaType___block_invoke;
  v58[3] = &unk_1E7384470;
  v69 = a3;
  v70 = a7;
  v59 = v47;
  v60 = v46;
  v34 = v24;
  v61 = v24;
  v62 = v45;
  v63 = v44;
  v64 = v43;
  v73 = a14;
  v74 = a15;
  v65 = v42;
  v66 = v25;
  v71 = a11;
  v72 = a18;
  v67 = v26;
  v68 = v27;
  v57.receiver = a1;
  v57.super_class = &OBJC_METACLASS____HKFitnessFriendWorkout;
  v56 = v27;
  v54 = v26;
  v53 = v25;
  v52 = v42;
  v49 = v43;
  v35 = v44;
  v36 = v45;
  v37 = v34;
  v38 = v46;
  v39 = v47;
  v40 = objc_msgSendSuper2(&v57, sel__newSampleWithType_startDate_endDate_device_metadata_config_, v51, 0, 0, v58, v31, v33);

  return v40;
}

+ (id)fitnessFriendWorkoutFromHKWorkout:(id)a3
{
  v3 = a3;
  v4 = [v3 device];
  v5 = [v4 _isConnectedGymDevice];

  if (v5)
  {
    v6 = [v3 device];
    v36 = [v6 manufacturer];

    v7 = [v3 device];
    v35 = [v7 model];
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v31 = [v3 workoutActivityType];
  v32 = [v3 startDate];
  v30 = [v3 endDate];
  [v3 duration];
  v9 = v8;
  v28 = [v3 totalEnergyBurned];
  v27 = [v3 _totalBasalEnergyBurned];
  v23 = [v3 totalDistance];
  v25 = [v3 _goalType];
  v22 = [v3 _goal];
  v29 = [v3 sourceRevision];
  v26 = [v29 source];
  v24 = [v26 bundleIdentifier];
  v10 = [v3 _isWatchWorkout];
  v11 = [v3 metadata];
  v12 = [v11 objectForKeyedSubscript:@"HKIndoorWorkout"];
  v13 = [v12 BOOLValue];

  v14 = [v3 _activityMoveMode];
  v15 = [v3 metadata];
  v16 = [v15 objectForKeyedSubscript:@"_HKPrivateSeymourCatalogWorkoutIdentifier"];
  v17 = [v3 metadata];
  v18 = [v17 objectForKeyedSubscript:@"_HKPrivateSeymourMediaType"];
  BYTE1(v21) = v13;
  LOBYTE(v21) = v10;
  v34 = [a1 fitnessFriendworkoutWithActivityType:v31 friendUUID:0 startDate:v32 endDate:v30 duration:v28 totalActiveEnergyBurned:v27 totalBasalEnergyBurned:v9 totalDistance:v23 goalType:v25 goal:v22 bundleID:v24 isWatchWorkout:v21 isIndoorWorkout:v36 deviceManufacturer:v35 deviceModel:v14 amm:v16 seymourCatalogWorkoutIdentifier:v18 seymourMediaType:?];

  v19 = [v3 UUID];
  [v34 _setUUID:v19];

  return v34;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKFitnessFriendWorkout;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_friendUUID forKey:{@"friendUUID", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_workoutActivityType forKey:@"workoutActivityType"];
  [v4 encodeDouble:@"duration" forKey:self->_duration];
  [v4 encodeObject:self->_totalEnergyBurned forKey:@"totalEnergyBurned"];
  [v4 encodeObject:self->_totalBasalEnergyBurned forKey:@"totalBasalEnergyBurned"];
  [v4 encodeObject:self->_totalDistance forKey:@"totalDistance"];
  [v4 encodeInteger:self->_goalType forKey:@"goalType"];
  [v4 encodeObject:self->_goal forKey:@"goal"];
  [v4 encodeObject:self->_bundleID forKey:@"bundle_id"];
  [v4 encodeBool:self->_isWatchWorkout forKey:@"is_watch_workout"];
  [v4 encodeBool:self->_isIndoorWorkout forKey:@"is_indoor_workout"];
  [v4 encodeObject:self->_deviceManufacturer forKey:@"device_manufacturer"];
  [v4 encodeObject:self->_deviceModel forKey:@"device_model"];
  [v4 encodeInteger:self->_amm forKey:@"activity_move_mode"];
  [v4 encodeObject:self->_seymourCatalogWorkoutIdentifier forKey:@"seymourCatalogWorkoutIdentifier"];
  [v4 encodeObject:self->_seymourMediaType forKey:@"seymourMediaType"];
}

- (_HKFitnessFriendWorkout)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = _HKFitnessFriendWorkout;
  v5 = [(HKSample *)&v28 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"friendUUID"];
    friendUUID = v5->_friendUUID;
    v5->_friendUUID = v6;

    v5->_workoutActivityType = [v4 decodeIntegerForKey:@"workoutActivityType"];
    [v4 decodeDoubleForKey:@"duration"];
    v5->_duration = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalEnergyBurned"];
    totalEnergyBurned = v5->_totalEnergyBurned;
    v5->_totalEnergyBurned = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalBasalEnergyBurned"];
    totalBasalEnergyBurned = v5->_totalBasalEnergyBurned;
    v5->_totalBasalEnergyBurned = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalDistance"];
    totalDistance = v5->_totalDistance;
    v5->_totalDistance = v13;

    v5->_goalType = [v4 decodeIntegerForKey:@"goalType"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"goal"];
    goal = v5->_goal;
    v5->_goal = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundle_id"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v17;

    v5->_isWatchWorkout = [v4 decodeBoolForKey:@"is_watch_workout"];
    v5->_isIndoorWorkout = [v4 decodeBoolForKey:@"is_indoor_workout"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device_manufacturer"];
    deviceManufacturer = v5->_deviceManufacturer;
    v5->_deviceManufacturer = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device_model"];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v21;

    v5->_amm = [v4 decodeIntegerForKey:@"activity_move_mode"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seymourCatalogWorkoutIdentifier"];
    seymourCatalogWorkoutIdentifier = v5->_seymourCatalogWorkoutIdentifier;
    v5->_seymourCatalogWorkoutIdentifier = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seymourMediaType"];
    seymourMediaType = v5->_seymourMediaType;
    v5->_seymourMediaType = v25;
  }

  return v5;
}

@end