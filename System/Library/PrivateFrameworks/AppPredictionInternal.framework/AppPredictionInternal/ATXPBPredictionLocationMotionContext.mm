@interface ATXPBPredictionLocationMotionContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMotionType:(id)type;
- (int)motionType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCanPredictClipsGivenRecentMotion:(BOOL)motion;
- (void)setHasDistanceFromGym:(BOOL)gym;
- (void)setHasDistanceFromHome:(BOOL)home;
- (void)setHasDistanceFromSchool:(BOOL)school;
- (void)setHasDistanceFromWork:(BOOL)work;
- (void)setHasGeohash:(BOOL)geohash;
- (void)setHasLargeGeohash:(BOOL)geohash;
- (void)setHasLocationEnabled:(BOOL)enabled;
- (void)setHasMotionType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ATXPBPredictionLocationMotionContext

- (int)motionType
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_motionType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMotionType:(BOOL)type
{
  if (type)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)StringAsMotionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Walking"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Running"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Cycling"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Driving"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLocationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasDistanceFromHome:(BOOL)home
{
  if (home)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasDistanceFromWork:(BOOL)work
{
  if (work)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasDistanceFromSchool:(BOOL)school
{
  if (school)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasDistanceFromGym:(BOOL)gym
{
  if (gym)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasCanPredictClipsGivenRecentMotion:(BOOL)motion
{
  if (motion)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasGeohash:(BOOL)geohash
{
  if (geohash)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasLargeGeohash:(BOOL)geohash
{
  if (geohash)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBPredictionLocationMotionContext;
  v4 = [(ATXPBPredictionLocationMotionContext *)&v8 description];
  dictionaryRepresentation = [(ATXPBPredictionLocationMotionContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  previousLOI = self->_previousLOI;
  if (previousLOI)
  {
    dictionaryRepresentation = [(ATXPBPredictionLocationOfInterest *)previousLOI dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"previousLOI"];
  }

  currentLOI = self->_currentLOI;
  if (currentLOI)
  {
    dictionaryRepresentation2 = [(ATXPBPredictionLocationOfInterest *)currentLOI dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"currentLOI"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    motionType = self->_motionType;
    if (motionType >= 5)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_motionType];
    }

    else
    {
      v9 = off_27859C230[motionType];
    }

    [dictionary setObject:v9 forKey:@"motionType"];
  }

  currentLocation = self->_currentLocation;
  if (currentLocation)
  {
    [dictionary setObject:currentLocation forKey:@"currentLocation"];
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_locationEnabled];
    [dictionary setObject:v14 forKey:@"locationEnabled"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_14:
      if ((has & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_14;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromHome];
  [dictionary setObject:v15 forKey:@"distanceFromHome"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromWork];
  [dictionary setObject:v16 forKey:@"distanceFromWork"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_16:
    if ((has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromSchool];
  [dictionary setObject:v17 forKey:@"distanceFromSchool"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_17:
    if ((has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromGym];
  [dictionary setObject:v18 forKey:@"distanceFromGym"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_18:
    if ((has & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_canPredictClipsGivenRecentMotion];
  [dictionary setObject:v19 forKey:@"canPredictClipsGivenRecentMotion"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_19:
    if ((has & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

LABEL_31:
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_geohash];
  [dictionary setObject:v20 forKey:@"geohash"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_20:
    if ((has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_32:
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_coarseGeohash];
  [dictionary setObject:v21 forKey:@"coarseGeohash"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_21:
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_largeGeohash];
    [dictionary setObject:v12 forKey:@"largeGeohash"];
  }

LABEL_22:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v16 = toCopy;
  if (self->_previousLOI)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v16;
  }

  if (self->_currentLOI)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v16;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    motionType = self->_motionType;
    PBDataWriterWriteInt32Field();
    toCopy = v16;
  }

  if (self->_currentLocation)
  {
    PBDataWriterWriteDataField();
    toCopy = v16;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    locationEnabled = self->_locationEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v16;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_11:
      if ((has & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_11;
  }

  distanceFromHome = self->_distanceFromHome;
  PBDataWriterWriteDoubleField();
  toCopy = v16;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  distanceFromWork = self->_distanceFromWork;
  PBDataWriterWriteDoubleField();
  toCopy = v16;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  distanceFromSchool = self->_distanceFromSchool;
  PBDataWriterWriteDoubleField();
  toCopy = v16;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  distanceFromGym = self->_distanceFromGym;
  PBDataWriterWriteDoubleField();
  toCopy = v16;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  canPredictClipsGivenRecentMotion = self->_canPredictClipsGivenRecentMotion;
  PBDataWriterWriteBOOLField();
  toCopy = v16;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_16:
    if ((has & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  geohash = self->_geohash;
  PBDataWriterWriteFixed64Field();
  toCopy = v16;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_17:
    if ((has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_29:
  coarseGeohash = self->_coarseGeohash;
  PBDataWriterWriteFixed64Field();
  toCopy = v16;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_18:
    largeGeohash = self->_largeGeohash;
    PBDataWriterWriteFixed64Field();
    toCopy = v16;
  }

LABEL_19:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_previousLOI)
  {
    [toCopy setPreviousLOI:?];
    toCopy = v6;
  }

  if (self->_currentLOI)
  {
    [v6 setCurrentLOI:?];
    toCopy = v6;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    *(toCopy + 20) = self->_motionType;
    *(toCopy + 50) |= 0x80u;
  }

  if (self->_currentLocation)
  {
    [v6 setCurrentLocation:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(toCopy + 97) = self->_locationEnabled;
    *(toCopy + 50) |= 0x200u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_11:
      if ((has & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_11;
  }

  *(toCopy + 3) = *&self->_distanceFromHome;
  *(toCopy + 50) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(toCopy + 5) = *&self->_distanceFromWork;
  *(toCopy + 50) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(toCopy + 4) = *&self->_distanceFromSchool;
  *(toCopy + 50) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(toCopy + 2) = *&self->_distanceFromGym;
  *(toCopy + 50) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(toCopy + 96) = self->_canPredictClipsGivenRecentMotion;
  *(toCopy + 50) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_16:
    if ((has & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(toCopy + 6) = self->_geohash;
  *(toCopy + 50) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_17:
    if ((has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_29:
  *(toCopy + 1) = self->_coarseGeohash;
  *(toCopy + 50) |= 1u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_18:
    *(toCopy + 7) = self->_largeGeohash;
    *(toCopy + 50) |= 0x40u;
  }

LABEL_19:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ATXPBPredictionLocationOfInterest *)self->_previousLOI copyWithZone:zone];
  v7 = *(v5 + 88);
  *(v5 + 88) = v6;

  v8 = [(ATXPBPredictionLocationOfInterest *)self->_currentLOI copyWithZone:zone];
  v9 = *(v5 + 64);
  *(v5 + 64) = v8;

  if ((*&self->_has & 0x80) != 0)
  {
    *(v5 + 80) = self->_motionType;
    *(v5 + 100) |= 0x80u;
  }

  v10 = [(NSData *)self->_currentLocation copyWithZone:zone];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v5 + 97) = self->_locationEnabled;
    *(v5 + 100) |= 0x200u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 24) = self->_distanceFromHome;
  *(v5 + 100) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 40) = self->_distanceFromWork;
  *(v5 + 100) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 32) = self->_distanceFromSchool;
  *(v5 + 100) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 16) = self->_distanceFromGym;
  *(v5 + 100) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 96) = self->_canPredictClipsGivenRecentMotion;
  *(v5 + 100) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    *(v5 + 8) = self->_coarseGeohash;
    *(v5 + 100) |= 1u;
    if ((*&self->_has & 0x40) == 0)
    {
      return v5;
    }

    goto LABEL_12;
  }

LABEL_20:
  *(v5 + 48) = self->_geohash;
  *(v5 + 100) |= 0x20u;
  has = self->_has;
  if (has)
  {
    goto LABEL_21;
  }

LABEL_11:
  if ((has & 0x40) != 0)
  {
LABEL_12:
    *(v5 + 56) = self->_largeGeohash;
    *(v5 + 100) |= 0x40u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_65;
  }

  previousLOI = self->_previousLOI;
  if (previousLOI | *(equalCopy + 11))
  {
    if (![(ATXPBPredictionLocationOfInterest *)previousLOI isEqual:?])
    {
      goto LABEL_65;
    }
  }

  currentLOI = self->_currentLOI;
  if (currentLOI | *(equalCopy + 8))
  {
    if (![(ATXPBPredictionLocationOfInterest *)currentLOI isEqual:?])
    {
      goto LABEL_65;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 50);
  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_motionType != *(equalCopy + 20))
    {
      goto LABEL_65;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_65;
  }

  currentLocation = self->_currentLocation;
  if (currentLocation | *(equalCopy + 9))
  {
    if (![(NSData *)currentLocation isEqual:?])
    {
      goto LABEL_65;
    }

    has = self->_has;
  }

  v10 = *(equalCopy + 50);
  if ((has & 0x200) != 0)
  {
    if ((*(equalCopy + 50) & 0x200) == 0)
    {
      goto LABEL_65;
    }

    v11 = *(equalCopy + 97);
    if (self->_locationEnabled)
    {
      if ((*(equalCopy + 97) & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    else if (*(equalCopy + 97))
    {
      goto LABEL_65;
    }
  }

  else if ((*(equalCopy + 50) & 0x200) != 0)
  {
    goto LABEL_65;
  }

  if ((has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_distanceFromHome != *(equalCopy + 3))
    {
      goto LABEL_65;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_65;
  }

  if ((has & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_distanceFromWork != *(equalCopy + 5))
    {
      goto LABEL_65;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    goto LABEL_65;
  }

  if ((has & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_distanceFromSchool != *(equalCopy + 4))
    {
      goto LABEL_65;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_65;
  }

  if ((has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_distanceFromGym != *(equalCopy + 2))
    {
      goto LABEL_65;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_65;
  }

  if ((has & 0x100) == 0)
  {
    if ((*(equalCopy + 50) & 0x100) == 0)
    {
      goto LABEL_44;
    }

LABEL_65:
    v13 = 0;
    goto LABEL_66;
  }

  if ((*(equalCopy + 50) & 0x100) == 0)
  {
    goto LABEL_65;
  }

  v12 = *(equalCopy + 96);
  if (self->_canPredictClipsGivenRecentMotion)
  {
    if ((*(equalCopy + 96) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (*(equalCopy + 96))
  {
    goto LABEL_65;
  }

LABEL_44:
  if ((has & 0x20) != 0)
  {
    if ((v10 & 0x20) == 0 || self->_geohash != *(equalCopy + 6))
    {
      goto LABEL_65;
    }
  }

  else if ((v10 & 0x20) != 0)
  {
    goto LABEL_65;
  }

  if (has)
  {
    if ((v10 & 1) == 0 || self->_coarseGeohash != *(equalCopy + 1))
    {
      goto LABEL_65;
    }
  }

  else if (v10)
  {
    goto LABEL_65;
  }

  if ((has & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0 || self->_largeGeohash != *(equalCopy + 7))
    {
      goto LABEL_65;
    }

    v13 = 1;
  }

  else
  {
    v13 = (v10 & 0x40) == 0;
  }

LABEL_66:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(ATXPBPredictionLocationOfInterest *)self->_previousLOI hash];
  v4 = [(ATXPBPredictionLocationOfInterest *)self->_currentLOI hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v5 = 2654435761 * self->_motionType;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSData *)self->_currentLocation hash];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v10 = 2654435761 * self->_locationEnabled;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v10 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  distanceFromHome = self->_distanceFromHome;
  if (distanceFromHome < 0.0)
  {
    distanceFromHome = -distanceFromHome;
  }

  *v7.i64 = floor(distanceFromHome + 0.5);
  v12 = (distanceFromHome - *v7.i64) * 1.84467441e19;
  *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v7 = vbslq_s8(vnegq_f64(v13), v8, v7);
  v14 = 2654435761u * *v7.i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_12:
  if ((has & 0x10) != 0)
  {
    distanceFromWork = self->_distanceFromWork;
    if (distanceFromWork < 0.0)
    {
      distanceFromWork = -distanceFromWork;
    }

    *v7.i64 = floor(distanceFromWork + 0.5);
    v17 = (distanceFromWork - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v7 = vbslq_s8(vnegq_f64(v18), v8, v7);
    v15 = 2654435761u * *v7.i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((has & 8) != 0)
  {
    distanceFromSchool = self->_distanceFromSchool;
    if (distanceFromSchool < 0.0)
    {
      distanceFromSchool = -distanceFromSchool;
    }

    *v7.i64 = floor(distanceFromSchool + 0.5);
    v21 = (distanceFromSchool - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v7 = vbslq_s8(vnegq_f64(v22), v8, v7);
    v19 = 2654435761u * *v7.i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v19 += v21;
      }
    }

    else
    {
      v19 -= fabs(v21);
    }
  }

  else
  {
    v19 = 0;
  }

  if ((has & 2) != 0)
  {
    distanceFromGym = self->_distanceFromGym;
    if (distanceFromGym < 0.0)
    {
      distanceFromGym = -distanceFromGym;
    }

    *v7.i64 = floor(distanceFromGym + 0.5);
    v25 = (distanceFromGym - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v23 = 2654435761u * *vbslq_s8(vnegq_f64(v26), v8, v7).i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v23 += v25;
      }
    }

    else
    {
      v23 -= fabs(v25);
    }
  }

  else
  {
    v23 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v27 = 2654435761 * self->_canPredictClipsGivenRecentMotion;
    if ((has & 0x20) != 0)
    {
LABEL_40:
      v28 = 2654435761u * self->_geohash;
      if (has)
      {
        goto LABEL_41;
      }

LABEL_45:
      v29 = 0;
      if ((has & 0x40) != 0)
      {
        goto LABEL_42;
      }

LABEL_46:
      v30 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v10 ^ v14 ^ v15 ^ v19 ^ v23 ^ v27 ^ v28 ^ v29 ^ v30;
    }
  }

  else
  {
    v27 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_40;
    }
  }

  v28 = 0;
  if ((has & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_41:
  v29 = 2654435761u * self->_coarseGeohash;
  if ((has & 0x40) == 0)
  {
    goto LABEL_46;
  }

LABEL_42:
  v30 = 2654435761u * self->_largeGeohash;
  return v4 ^ v3 ^ v5 ^ v6 ^ v10 ^ v14 ^ v15 ^ v19 ^ v23 ^ v27 ^ v28 ^ v29 ^ v30;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  previousLOI = self->_previousLOI;
  v6 = *(fromCopy + 11);
  v10 = fromCopy;
  if (previousLOI)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ATXPBPredictionLocationOfInterest *)previousLOI mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ATXPBPredictionLocationMotionContext *)self setPreviousLOI:?];
  }

  fromCopy = v10;
LABEL_7:
  currentLOI = self->_currentLOI;
  v8 = *(fromCopy + 8);
  if (currentLOI)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    currentLOI = [(ATXPBPredictionLocationOfInterest *)currentLOI mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    currentLOI = [(ATXPBPredictionLocationMotionContext *)self setCurrentLOI:?];
  }

  fromCopy = v10;
LABEL_13:
  if ((*(fromCopy + 50) & 0x80) != 0)
  {
    self->_motionType = *(fromCopy + 20);
    *&self->_has |= 0x80u;
  }

  if (*(fromCopy + 9))
  {
    currentLOI = [(ATXPBPredictionLocationMotionContext *)self setCurrentLocation:?];
    fromCopy = v10;
  }

  v9 = *(fromCopy + 50);
  if ((v9 & 0x200) != 0)
  {
    self->_locationEnabled = *(fromCopy + 97);
    *&self->_has |= 0x200u;
    v9 = *(fromCopy + 50);
    if ((v9 & 4) == 0)
    {
LABEL_19:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }
  }

  else if ((v9 & 4) == 0)
  {
    goto LABEL_19;
  }

  self->_distanceFromHome = *(fromCopy + 3);
  *&self->_has |= 4u;
  v9 = *(fromCopy + 50);
  if ((v9 & 0x10) == 0)
  {
LABEL_20:
    if ((v9 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_distanceFromWork = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v9 = *(fromCopy + 50);
  if ((v9 & 8) == 0)
  {
LABEL_21:
    if ((v9 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_distanceFromSchool = *(fromCopy + 4);
  *&self->_has |= 8u;
  v9 = *(fromCopy + 50);
  if ((v9 & 2) == 0)
  {
LABEL_22:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_distanceFromGym = *(fromCopy + 2);
  *&self->_has |= 2u;
  v9 = *(fromCopy + 50);
  if ((v9 & 0x100) == 0)
  {
LABEL_23:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_canPredictClipsGivenRecentMotion = *(fromCopy + 96);
  *&self->_has |= 0x100u;
  v9 = *(fromCopy + 50);
  if ((v9 & 0x20) == 0)
  {
LABEL_24:
    if ((v9 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_geohash = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v9 = *(fromCopy + 50);
  if ((v9 & 1) == 0)
  {
LABEL_25:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_37:
  self->_coarseGeohash = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 50) & 0x40) != 0)
  {
LABEL_26:
    self->_largeGeohash = *(fromCopy + 7);
    *&self->_has |= 0x40u;
  }

LABEL_27:

  MEMORY[0x2821F96F8](currentLOI, fromCopy);
}

@end