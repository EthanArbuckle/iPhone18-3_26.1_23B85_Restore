@interface ATXPredictionLocationMotionContext
- (ATXPredictionLocationMotionContext)initWithCurrentLOI:(id)a3 previousLOI:(id)a4 motionType:(int64_t)a5 geohash:(int64_t)a6 coarseGeohash:(int64_t)a7 largeGeohash:(int64_t)a8 locationEnabled:(BOOL)a9 distanceFromHome:(double)a10 distanceFromWork:(double)a11 distanceFromSchool:(double)a12 distanceFromGym:(double)a13 canPredictClipsGivenRecentMotion:(BOOL)a14;
- (ATXPredictionLocationMotionContext)initWithProto:(id)a3;
- (ATXPredictionLocationMotionContext)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXPredictionLocationMotionContext:(id)a3;
- (id)_unarchiveCLLocation:(id)a3;
- (id)description;
- (id)encodeAsProto;
- (id)jsonDict;
- (id)proto;
- (int)_pbMotionTypeFromATXMotionType:(int64_t)a3;
- (int64_t)_atxMotionTypeFromPBMotionType:(int)a3;
@end

@implementation ATXPredictionLocationMotionContext

- (ATXPredictionLocationMotionContext)initWithCurrentLOI:(id)a3 previousLOI:(id)a4 motionType:(int64_t)a5 geohash:(int64_t)a6 coarseGeohash:(int64_t)a7 largeGeohash:(int64_t)a8 locationEnabled:(BOOL)a9 distanceFromHome:(double)a10 distanceFromWork:(double)a11 distanceFromSchool:(double)a12 distanceFromGym:(double)a13 canPredictClipsGivenRecentMotion:(BOOL)a14
{
  v25 = a3;
  v26 = a4;
  v30.receiver = self;
  v30.super_class = ATXPredictionLocationMotionContext;
  v27 = [(ATXPredictionLocationMotionContext *)&v30 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_previousLOI, a4);
    objc_storeStrong(&v28->_currentLOI, a3);
    v28->_motionType = a5;
    v28->_geohash = a6;
    v28->_coarseGeohash = a7;
    v28->_largeGeohash = a8;
    v28->_locationEnabled = a9;
    v28->_distanceFromHomeOfCurrentLocationInMeters = a10;
    v28->_distanceFromWorkOfCurrentLocationInMeters = a11;
    v28->_distanceFromSchoolOfCurrentLocationInMeters = a12;
    v28->_distanceFromGymOfCurrentLocationInMeters = a13;
    v28->_canPredictClipsGivenRecentMotion = a14;
  }

  return v28;
}

- (id)description
{
  v2 = [(ATXPredictionLocationMotionContext *)self jsonDict];
  v3 = [v2 description];

  return v3;
}

- (id)jsonDict
{
  v27[11] = *MEMORY[0x277D85DE8];
  v26[0] = @"currentLOI";
  v3 = [(ATXLocationOfInterest *)self->_currentLOI description];
  v25 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"nil";
  }

  v27[0] = v4;
  v26[1] = @"previousLOI";
  v5 = [(ATXLocationOfInterest *)self->_previousLOI description];
  v24 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"nil";
  }

  v27[1] = v6;
  v26[2] = @"motionType";
  v23 = [MEMORY[0x277D41C40] stringForMotionType:self->_motionType];
  v27[2] = v23;
  v26[3] = @"geohash";
  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_geohash];
  v27[3] = v22;
  v26[4] = @"coarseGeohash";
  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_coarseGeohash];
  v27[4] = v21;
  v26[5] = @"largeGeohash";
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_largeGeohash];
  v8 = v7;
  v9 = @"YES";
  if (!self->_locationEnabled)
  {
    v9 = @"NO";
  }

  v27[5] = v7;
  v27[6] = v9;
  v26[6] = @"locationEnabled";
  v26[7] = @"distanceFromHome";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromHomeOfCurrentLocationInMeters];
  v11 = [v10 stringValue];
  v27[7] = v11;
  v26[8] = @"distanceFromWork";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromWorkOfCurrentLocationInMeters];
  v13 = [v12 stringValue];
  v27[8] = v13;
  v26[9] = @"distanceFromSchool";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromSchoolOfCurrentLocationInMeters];
  v15 = [v14 stringValue];
  v27[9] = v15;
  v26[10] = @"distanceFromGym";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromGymOfCurrentLocationInMeters];
  v17 = [v16 stringValue];
  v27[10] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:11];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (ATXPredictionLocationMotionContext)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBPredictionLocationMotionContext alloc] initWithData:v4];

    self = [(ATXPredictionLocationMotionContext *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXPredictionLocationMotionContext *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXPredictionLocationMotionContext)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_9:
    v23 = 0;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = __atxlog_handle_default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      [(ATXPredictionLocationMotionContext *)self initWithProto:v24];
    }

    goto LABEL_9;
  }

  v5 = v4;
  v6 = objc_alloc(MEMORY[0x277D41C18]);
  v7 = [v5 currentLOI];
  v8 = [v6 initWithProto:v7];

  v9 = objc_alloc(MEMORY[0x277D41C18]);
  v10 = [v5 previousLOI];
  v11 = [v9 initWithProto:v10];

  v12 = -[ATXPredictionLocationMotionContext _atxMotionTypeFromPBMotionType:](self, "_atxMotionTypeFromPBMotionType:", [v5 motionType]);
  if ([v5 hasCurrentLocation])
  {
    v13 = [v5 currentLocation];
    v14 = [(ATXPredictionLocationMotionContext *)self _unarchiveCLLocation:v13];

    if (v14)
    {
      v15 = [v5 locationEnabled];
      [v5 distanceFromHome];
      v17 = v16;
      [v5 distanceFromWork];
      v19 = v18;
      [v5 distanceFromSchool];
      v21 = v20;
      [v5 distanceFromGym];
      self = -[ATXPredictionLocationMotionContext initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:](self, "initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:", v8, v11, v12, v14, v15, [v5 canPredictClipsGivenRecentMotion], v17, v19, v21, v22);
      v23 = self;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    if (([v5 hasGeohash] & 1) != 0 || (objc_msgSend(v5, "hasCoarseGeohash") & 1) != 0 || objc_msgSend(v5, "hasLargeGeohash"))
    {
      v25 = [v5 geohash];
      v26 = [v5 coarseGeohash];
      v27 = [v5 largeGeohash];
      v28 = [v5 locationEnabled];
      [v5 distanceFromHome];
      v30 = v29;
      [v5 distanceFromWork];
      v32 = v31;
      [v5 distanceFromSchool];
      v34 = v33;
      [v5 distanceFromGym];
      v36 = v35;
      BYTE1(v47) = [v5 canPredictClipsGivenRecentMotion];
      LOBYTE(v47) = v28;
      v37 = [(ATXPredictionLocationMotionContext *)self initWithCurrentLOI:v8 previousLOI:v11 motionType:v12 geohash:v25 coarseGeohash:v26 largeGeohash:v27 locationEnabled:v30 distanceFromHome:v32 distanceFromWork:v34 distanceFromSchool:v36 distanceFromGym:v47 canPredictClipsGivenRecentMotion:?];
    }

    else
    {
      v39 = [v5 locationEnabled];
      [v5 distanceFromHome];
      v41 = v40;
      [v5 distanceFromWork];
      v43 = v42;
      [v5 distanceFromSchool];
      v45 = v44;
      [v5 distanceFromGym];
      v37 = -[ATXPredictionLocationMotionContext initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:](self, "initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:", v8, v11, v12, 0, v39, [v5 canPredictClipsGivenRecentMotion], v41, v43, v45, v46);
    }

    self = v37;
    v23 = self;
  }

LABEL_18:
  return v23;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(ATXLocationOfInterest *)self->_currentLOI proto];
  [v3 setCurrentLOI:v4];

  v5 = [(ATXLocationOfInterest *)self->_previousLOI proto];
  [v3 setPreviousLOI:v5];

  [v3 setMotionType:{-[ATXPredictionLocationMotionContext _pbMotionTypeFromATXMotionType:](self, "_pbMotionTypeFromATXMotionType:", self->_motionType)}];
  [v3 setGeohash:self->_geohash];
  [v3 setCoarseGeohash:self->_coarseGeohash];
  [v3 setLargeGeohash:self->_largeGeohash];
  [v3 setLocationEnabled:self->_locationEnabled];
  [v3 setDistanceFromHome:self->_distanceFromHomeOfCurrentLocationInMeters];
  [v3 setDistanceFromWork:self->_distanceFromWorkOfCurrentLocationInMeters];
  [v3 setDistanceFromSchool:self->_distanceFromSchoolOfCurrentLocationInMeters];
  [v3 setDistanceFromGym:self->_distanceFromGymOfCurrentLocationInMeters];
  [v3 setCanPredictClipsGivenRecentMotion:self->_canPredictClipsGivenRecentMotion];

  return v3;
}

- (id)_unarchiveCLLocation:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v10 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v10];
    v6 = v10;
    objc_autoreleasePoolPop(v4);
    v7 = 0;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_atxMotionTypeFromPBMotionType:(int)a3
{
  v3 = (a3 - 1);
  if (v3 < 4)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (int)_pbMotionTypeFromATXMotionType:(int64_t)a3
{
  if ((a3 - 1) < 4)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPredictionLocationMotionContext *)self isEqualToATXPredictionLocationMotionContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPredictionLocationMotionContext:(id)a3
{
  v4 = a3;
  v5 = self->_currentLOI;
  v6 = v5;
  if (v5 == v4[3])
  {
  }

  else
  {
    v7 = [(ATXLocationOfInterest *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v8 = self->_previousLOI;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(ATXLocationOfInterest *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  motionType = self->_motionType;
  if (motionType == [v4 motionType] && self->_geohash == v4[5] && self->_coarseGeohash == v4[6] && self->_largeGeohash == v4[7] && self->_locationEnabled == *(v4 + 8) && self->_distanceFromHomeOfCurrentLocationInMeters == *(v4 + 8) && self->_distanceFromWorkOfCurrentLocationInMeters == *(v4 + 9) && self->_distanceFromSchoolOfCurrentLocationInMeters == *(v4 + 10) && self->_distanceFromGymOfCurrentLocationInMeters == *(v4 + 11))
  {
    v12 = self->_canPredictClipsGivenRecentMotion == *(v4 + 9);
    goto LABEL_19;
  }

LABEL_18:
  v12 = 0;
LABEL_19:

  return v12;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBPredictionLocationMotionContext proto", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end