@interface ATXPredictionLocationMotionContext
- (ATXPredictionLocationMotionContext)initWithCurrentLOI:(id)i previousLOI:(id)oI motionType:(int64_t)type geohash:(int64_t)geohash coarseGeohash:(int64_t)coarseGeohash largeGeohash:(int64_t)largeGeohash locationEnabled:(BOOL)enabled distanceFromHome:(double)self0 distanceFromWork:(double)self1 distanceFromSchool:(double)self2 distanceFromGym:(double)self3 canPredictClipsGivenRecentMotion:(BOOL)self4;
- (ATXPredictionLocationMotionContext)initWithProto:(id)proto;
- (ATXPredictionLocationMotionContext)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXPredictionLocationMotionContext:(id)context;
- (id)_unarchiveCLLocation:(id)location;
- (id)description;
- (id)encodeAsProto;
- (id)jsonDict;
- (id)proto;
- (int)_pbMotionTypeFromATXMotionType:(int64_t)type;
- (int64_t)_atxMotionTypeFromPBMotionType:(int)type;
@end

@implementation ATXPredictionLocationMotionContext

- (ATXPredictionLocationMotionContext)initWithCurrentLOI:(id)i previousLOI:(id)oI motionType:(int64_t)type geohash:(int64_t)geohash coarseGeohash:(int64_t)coarseGeohash largeGeohash:(int64_t)largeGeohash locationEnabled:(BOOL)enabled distanceFromHome:(double)self0 distanceFromWork:(double)self1 distanceFromSchool:(double)self2 distanceFromGym:(double)self3 canPredictClipsGivenRecentMotion:(BOOL)self4
{
  iCopy = i;
  oICopy = oI;
  v30.receiver = self;
  v30.super_class = ATXPredictionLocationMotionContext;
  v27 = [(ATXPredictionLocationMotionContext *)&v30 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_previousLOI, oI);
    objc_storeStrong(&v28->_currentLOI, i);
    v28->_motionType = type;
    v28->_geohash = geohash;
    v28->_coarseGeohash = coarseGeohash;
    v28->_largeGeohash = largeGeohash;
    v28->_locationEnabled = enabled;
    v28->_distanceFromHomeOfCurrentLocationInMeters = home;
    v28->_distanceFromWorkOfCurrentLocationInMeters = work;
    v28->_distanceFromSchoolOfCurrentLocationInMeters = school;
    v28->_distanceFromGymOfCurrentLocationInMeters = gym;
    v28->_canPredictClipsGivenRecentMotion = motion;
  }

  return v28;
}

- (id)description
{
  jsonDict = [(ATXPredictionLocationMotionContext *)self jsonDict];
  v3 = [jsonDict description];

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
  stringValue = [v10 stringValue];
  v27[7] = stringValue;
  v26[8] = @"distanceFromWork";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromWorkOfCurrentLocationInMeters];
  stringValue2 = [v12 stringValue];
  v27[8] = stringValue2;
  v26[9] = @"distanceFromSchool";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromSchoolOfCurrentLocationInMeters];
  stringValue3 = [v14 stringValue];
  v27[9] = stringValue3;
  v26[10] = @"distanceFromGym";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromGymOfCurrentLocationInMeters];
  stringValue4 = [v16 stringValue];
  v27[10] = stringValue4;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:11];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (ATXPredictionLocationMotionContext)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBPredictionLocationMotionContext alloc] initWithData:dataCopy];

    self = [(ATXPredictionLocationMotionContext *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXPredictionLocationMotionContext *)self proto];
  data = [proto data];

  return data;
}

- (ATXPredictionLocationMotionContext)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_9:
    selfCopy2 = 0;
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

  v5 = protoCopy;
  v6 = objc_alloc(MEMORY[0x277D41C18]);
  currentLOI = [v5 currentLOI];
  v8 = [v6 initWithProto:currentLOI];

  v9 = objc_alloc(MEMORY[0x277D41C18]);
  previousLOI = [v5 previousLOI];
  v11 = [v9 initWithProto:previousLOI];

  v12 = -[ATXPredictionLocationMotionContext _atxMotionTypeFromPBMotionType:](self, "_atxMotionTypeFromPBMotionType:", [v5 motionType]);
  if ([v5 hasCurrentLocation])
  {
    currentLocation = [v5 currentLocation];
    v14 = [(ATXPredictionLocationMotionContext *)self _unarchiveCLLocation:currentLocation];

    if (v14)
    {
      locationEnabled = [v5 locationEnabled];
      [v5 distanceFromHome];
      v17 = v16;
      [v5 distanceFromWork];
      v19 = v18;
      [v5 distanceFromSchool];
      v21 = v20;
      [v5 distanceFromGym];
      self = -[ATXPredictionLocationMotionContext initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:](self, "initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:", v8, v11, v12, v14, locationEnabled, [v5 canPredictClipsGivenRecentMotion], v17, v19, v21, v22);
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  else
  {
    if (([v5 hasGeohash] & 1) != 0 || (objc_msgSend(v5, "hasCoarseGeohash") & 1) != 0 || objc_msgSend(v5, "hasLargeGeohash"))
    {
      geohash = [v5 geohash];
      coarseGeohash = [v5 coarseGeohash];
      largeGeohash = [v5 largeGeohash];
      locationEnabled2 = [v5 locationEnabled];
      [v5 distanceFromHome];
      v30 = v29;
      [v5 distanceFromWork];
      v32 = v31;
      [v5 distanceFromSchool];
      v34 = v33;
      [v5 distanceFromGym];
      v36 = v35;
      BYTE1(v47) = [v5 canPredictClipsGivenRecentMotion];
      LOBYTE(v47) = locationEnabled2;
      v37 = [(ATXPredictionLocationMotionContext *)self initWithCurrentLOI:v8 previousLOI:v11 motionType:v12 geohash:geohash coarseGeohash:coarseGeohash largeGeohash:largeGeohash locationEnabled:v30 distanceFromHome:v32 distanceFromWork:v34 distanceFromSchool:v36 distanceFromGym:v47 canPredictClipsGivenRecentMotion:?];
    }

    else
    {
      locationEnabled3 = [v5 locationEnabled];
      [v5 distanceFromHome];
      v41 = v40;
      [v5 distanceFromWork];
      v43 = v42;
      [v5 distanceFromSchool];
      v45 = v44;
      [v5 distanceFromGym];
      v37 = -[ATXPredictionLocationMotionContext initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:](self, "initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:", v8, v11, v12, 0, locationEnabled3, [v5 canPredictClipsGivenRecentMotion], v41, v43, v45, v46);
    }

    self = v37;
    selfCopy2 = self;
  }

LABEL_18:
  return selfCopy2;
}

- (id)proto
{
  v3 = objc_opt_new();
  proto = [(ATXLocationOfInterest *)self->_currentLOI proto];
  [v3 setCurrentLOI:proto];

  proto2 = [(ATXLocationOfInterest *)self->_previousLOI proto];
  [v3 setPreviousLOI:proto2];

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

- (id)_unarchiveCLLocation:(id)location
{
  locationCopy = location;
  if (locationCopy)
  {
    v4 = objc_autoreleasePoolPush();
    v10 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:locationCopy error:&v10];
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

- (int64_t)_atxMotionTypeFromPBMotionType:(int)type
{
  v3 = (type - 1);
  if (v3 < 4)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (int)_pbMotionTypeFromATXMotionType:(int64_t)type
{
  if ((type - 1) < 4)
  {
    return type;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPredictionLocationMotionContext *)self isEqualToATXPredictionLocationMotionContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPredictionLocationMotionContext:(id)context
{
  contextCopy = context;
  v5 = self->_currentLOI;
  v6 = v5;
  if (v5 == contextCopy[3])
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
  if (v8 == contextCopy[2])
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
  if (motionType == [contextCopy motionType] && self->_geohash == contextCopy[5] && self->_coarseGeohash == contextCopy[6] && self->_largeGeohash == contextCopy[7] && self->_locationEnabled == *(contextCopy + 8) && self->_distanceFromHomeOfCurrentLocationInMeters == *(contextCopy + 8) && self->_distanceFromWorkOfCurrentLocationInMeters == *(contextCopy + 9) && self->_distanceFromSchoolOfCurrentLocationInMeters == *(contextCopy + 10) && self->_distanceFromGymOfCurrentLocationInMeters == *(contextCopy + 11))
  {
    v12 = self->_canPredictClipsGivenRecentMotion == *(contextCopy + 9);
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