@interface ADUserTargetingProperties
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAccountStates:(id)states;
- (int)StringAsAccountTypes:(id)types;
- (int)StringAsConnectionType:(id)type;
- (int)StringAsDeviceModes:(id)modes;
- (int)StringAsOverrideType:(id)type;
- (int)StringAsRunState:(id)state;
- (int)accountStateAtIndex:(unint64_t)index;
- (int)accountTypeAtIndex:(unint64_t)index;
- (int)connectionType;
- (int)deviceModeAtIndex:(unint64_t)index;
- (int)overrideType;
- (int)runState;
- (unint64_t)hash;
- (void)addTargeting:(id)targeting;
- (void)addUserKeyboard:(id)keyboard;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAdvertisingIdentifierMonthResetCount:(BOOL)count;
- (void)setHasAppsRank:(BOOL)rank;
- (void)setHasConnectionType:(BOOL)type;
- (void)setHasHorizontalAccuracy:(BOOL)accuracy;
- (void)setHasIsOnInternationalDataRoaming:(BOOL)roaming;
- (void)setHasLatitude:(BOOL)latitude;
- (void)setHasLimitAdTracking:(BOOL)tracking;
- (void)setHasLongitude:(BOOL)longitude;
- (void)setHasOverrideType:(BOOL)type;
- (void)setHasRunState:(BOOL)state;
- (void)setHasTimezone:(BOOL)timezone;
- (void)writeTo:(id)to;
@end

@implementation ADUserTargetingProperties

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = ADUserTargetingProperties;
  [(ADUserTargetingProperties *)&v3 dealloc];
}

- (void)setHasTimezone:(BOOL)timezone
{
  if (timezone)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (int)runState
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_runState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRunState:(BOOL)state
{
  if (state)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)StringAsRunState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Simulator"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"DevelopmentDevice"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"ConsumerDevice"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addUserKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  userKeyboards = self->_userKeyboards;
  v8 = keyboardCopy;
  if (!userKeyboards)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_userKeyboards;
    self->_userKeyboards = v6;

    keyboardCopy = v8;
    userKeyboards = self->_userKeyboards;
  }

  [(NSMutableArray *)userKeyboards addObject:keyboardCopy];
}

- (void)setHasAppsRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)deviceModeAtIndex:(unint64_t)index
{
  p_deviceModes = &self->_deviceModes;
  count = self->_deviceModes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_deviceModes->list[index];
}

- (int)StringAsDeviceModes:(id)modes
{
  modesCopy = modes;
  if ([modesCopy isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([modesCopy isEqualToString:@"EducationMode"])
  {
    v4 = 1;
  }

  else if ([modesCopy isEqualToString:@"GuestMode"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)accountTypeAtIndex:(unint64_t)index
{
  p_accountTypes = &self->_accountTypes;
  count = self->_accountTypes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_accountTypes->list[index];
}

- (int)StringAsAccountTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"NoAccount"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"Consumer"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"ManagedAccount"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"U13"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"T13"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"U18"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"Unknown_Age"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"SensitiveContentEligible"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLatitude:(BOOL)latitude
{
  if (latitude)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasLongitude:(BOOL)longitude
{
  if (longitude)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasHorizontalAccuracy:(BOOL)accuracy
{
  if (accuracy)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)addTargeting:(id)targeting
{
  targetingCopy = targeting;
  targetings = self->_targetings;
  v8 = targetingCopy;
  if (!targetings)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_targetings;
    self->_targetings = v6;

    targetingCopy = v8;
    targetings = self->_targetings;
  }

  [(NSMutableArray *)targetings addObject:targetingCopy];
}

- (void)setHasLimitAdTracking:(BOOL)tracking
{
  if (tracking)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasAdvertisingIdentifierMonthResetCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasIsOnInternationalDataRoaming:(BOOL)roaming
{
  if (roaming)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (int)connectionType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_connectionType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConnectionType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)StringAsConnectionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UnknownConnection"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"WiFi"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Cellular_2_G"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Cellular_2_5G"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Cellular_3_G"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"Cellular_3_5G"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"Cellular_3_75G"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"Cellular_H_Plus"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"Cellular_4G"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"Cellular_5G"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)accountStateAtIndex:(unint64_t)index
{
  p_accountStates = &self->_accountStates;
  count = self->_accountStates.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_accountStates->list[index];
}

- (int)StringAsAccountStates:(id)states
{
  statesCopy = states;
  if ([statesCopy isEqualToString:@"No_iCloud"])
  {
    v4 = 0;
  }

  else if ([statesCopy isEqualToString:@"Same_iCloud"])
  {
    v4 = 1;
  }

  else if ([statesCopy isEqualToString:@"Diff_iCloud"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)overrideType
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_overrideType;
  }

  else
  {
    return 11000;
  }
}

- (void)setHasOverrideType:(BOOL)type
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

- (int)StringAsOverrideType:(id)type
{
  typeCopy = type;
  v4 = 11000;
  if (([typeCopy isEqualToString:@"NoOverride"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"ODMLData"])
    {
      v4 = 11001;
    }

    else
    {
      v4 = 11000;
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADUserTargetingProperties;
  v4 = [(ADUserTargetingProperties *)&v8 description];
  dictionaryRepresentation = [(ADUserTargetingProperties *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v75 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clientClockTime];
    [dictionary setObject:v5 forKey:@"clientClockTime"];
  }

  appID = self->_appID;
  if (appID)
  {
    [dictionary setObject:appID forKey:@"appID"];
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [dictionary setObject:deviceModel forKey:@"deviceModel"];
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *&v4 = self->_timezone;
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v9 forKey:@"timezone"];

    has = self->_has;
  }

  if ((has & 0x100) != 0)
  {
    runState = self->_runState;
    if (runState >= 3)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_runState];
    }

    else
    {
      v11 = off_278C554F8[runState];
    }

    [dictionary setObject:v11 forKey:@"runState"];
  }

  appVersion = self->_appVersion;
  if (appVersion)
  {
    [dictionary setObject:appVersion forKey:@"appVersion"];
  }

  osVersionAndBuild = self->_osVersionAndBuild;
  if (osVersionAndBuild)
  {
    [dictionary setObject:osVersionAndBuild forKey:@"osVersionAndBuild"];
  }

  iTunesStore = self->_iTunesStore;
  if (iTunesStore)
  {
    [dictionary setObject:iTunesStore forKey:@"iTunesStore"];
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    [dictionary setObject:localeIdentifier forKey:@"localeIdentifier"];
  }

  userKeyboards = self->_userKeyboards;
  if (userKeyboards)
  {
    [dictionary setObject:userKeyboards forKey:@"userKeyboard"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_appsRank];
    [dictionary setObject:v17 forKey:@"appsRank"];
  }

  p_deviceModes = &self->_deviceModes;
  if (self->_deviceModes.count)
  {
    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_deviceModes.count)
    {
      v20 = 0;
      do
      {
        v21 = p_deviceModes->list[v20];
        if (v21 >= 3)
        {
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_deviceModes->list[v20]];
        }

        else
        {
          v22 = off_278C55510[v21];
        }

        [v19 addObject:v22];

        ++v20;
      }

      while (v20 < self->_deviceModes.count);
    }

    [dictionary setObject:v19 forKey:@"deviceMode"];
  }

  p_accountTypes = &self->_accountTypes;
  if (self->_accountTypes.count)
  {
    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_accountTypes.count)
    {
      v25 = 0;
      do
      {
        v26 = p_accountTypes->list[v25];
        if (v26 >= 8)
        {
          v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_accountTypes->list[v25]];
        }

        else
        {
          v27 = off_278C55528[v26];
        }

        [v24 addObject:v27];

        ++v25;
      }

      while (v25 < self->_accountTypes.count);
    }

    [dictionary setObject:v24 forKey:@"accountType"];
  }

  v28 = self->_has;
  if ((v28 & 0x20) != 0)
  {
    *&v4 = self->_latitude;
    v57 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v57 forKey:@"latitude"];

    v28 = self->_has;
    if ((v28 & 0x40) == 0)
    {
LABEL_44:
      if ((v28 & 0x10) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }
  }

  else if ((v28 & 0x40) == 0)
  {
    goto LABEL_44;
  }

  *&v4 = self->_longitude;
  v58 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v58 forKey:@"longitude"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_45:
    *&v4 = self->_horizontalAccuracy;
    v29 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v29 forKey:@"horizontalAccuracy"];
  }

LABEL_46:
  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode)
  {
    [dictionary setObject:isoCountryCode forKey:@"isoCountryCode"];
  }

  if ([(NSMutableArray *)self->_targetings count])
  {
    v31 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_targetings, "count")}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v32 = self->_targetings;
    v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v71;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v71 != v35)
          {
            objc_enumerationMutation(v32);
          }

          dictionaryRepresentation = [*(*(&v70 + 1) + 8 * i) dictionaryRepresentation];
          [v31 addObject:dictionaryRepresentation];
        }

        v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v70 objects:v74 count:16];
      }

      while (v34);
    }

    [dictionary setObject:v31 forKey:@"targeting"];
  }

  if ((*&self->_has & 0x800) != 0)
  {
    v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_limitAdTracking];
    [dictionary setObject:v38 forKey:@"limitAdTracking"];
  }

  toroIDString = self->_toroIDString;
  if (toroIDString)
  {
    [dictionary setObject:toroIDString forKey:@"toroIDString"];
  }

  iAdIDString = self->_iAdIDString;
  if (iAdIDString)
  {
    [dictionary setObject:iAdIDString forKey:@"iAdIDString"];
  }

  algoId = self->_algoId;
  if (algoId)
  {
    [dictionary setObject:algoId forKey:@"algoId"];
  }

  dPIDString = self->_dPIDString;
  if (dPIDString)
  {
    [dictionary setObject:dPIDString forKey:@"DPIDString"];
  }

  postalCode = self->_postalCode;
  if (postalCode)
  {
    [dictionary setObject:postalCode forKey:@"postalCode"];
  }

  administrativeArea = self->_administrativeArea;
  if (administrativeArea)
  {
    [dictionary setObject:administrativeArea forKey:@"administrativeArea"];
  }

  locality = self->_locality;
  if (locality)
  {
    [dictionary setObject:locality forKey:@"locality"];
  }

  subAdministrativeArea = self->_subAdministrativeArea;
  if (subAdministrativeArea)
  {
    [dictionary setObject:subAdministrativeArea forKey:@"subAdministrativeArea"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v47 = [MEMORY[0x277CCABB0] numberWithInt:self->_advertisingIdentifierMonthResetCount];
    [dictionary setObject:v47 forKey:@"advertisingIdentifierMonthResetCount"];
  }

  deviceRequestID = self->_deviceRequestID;
  if (deviceRequestID)
  {
    [dictionary setObject:deviceRequestID forKey:@"deviceRequestID"];
  }

  carrierMNC = self->_carrierMNC;
  if (carrierMNC)
  {
    [dictionary setObject:carrierMNC forKey:@"carrierMNC"];
  }

  carrierMCC = self->_carrierMCC;
  if (carrierMCC)
  {
    [dictionary setObject:carrierMCC forKey:@"carrierMCC"];
  }

  currentCarrierMNC = self->_currentCarrierMNC;
  if (currentCarrierMNC)
  {
    [dictionary setObject:currentCarrierMNC forKey:@"currentCarrierMNC"];
  }

  currentCarrierMCC = self->_currentCarrierMCC;
  if (currentCarrierMCC)
  {
    [dictionary setObject:currentCarrierMCC forKey:@"currentCarrierMCC"];
  }

  v53 = self->_has;
  if ((v53 & 0x400) != 0)
  {
    v54 = [MEMORY[0x277CCABB0] numberWithBool:self->_isOnInternationalDataRoaming];
    [dictionary setObject:v54 forKey:@"isOnInternationalDataRoaming"];

    v53 = self->_has;
  }

  if ((v53 & 8) != 0)
  {
    connectionType = self->_connectionType;
    if (connectionType >= 0xB)
    {
      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_connectionType];
    }

    else
    {
      v56 = off_278C55568[connectionType];
    }

    [dictionary setObject:v56 forKey:@"connectionType"];
  }

  storeFrontLanguageLocaleIdentifier = self->_storeFrontLanguageLocaleIdentifier;
  if (storeFrontLanguageLocaleIdentifier)
  {
    [dictionary setObject:storeFrontLanguageLocaleIdentifier forKey:@"storeFrontLanguageLocaleIdentifier"];
  }

  p_accountStates = &self->_accountStates;
  if (self->_accountStates.count)
  {
    v61 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_accountStates.count)
    {
      v62 = 0;
      do
      {
        v63 = p_accountStates->list[v62];
        if (v63 >= 3)
        {
          v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_accountStates->list[v62]];
        }

        else
        {
          v64 = off_278C555C0[v63];
        }

        [v61 addObject:v64];

        ++v62;
      }

      while (v62 < self->_accountStates.count);
    }

    [dictionary setObject:v61 forKey:@"accountState"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    overrideType = self->_overrideType;
    if (overrideType == 11000)
    {
      v66 = @"NoOverride";
    }

    else if (overrideType == 11001)
    {
      v66 = @"ODMLData";
    }

    else
    {
      v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_overrideType];
    }

    [dictionary setObject:v66 forKey:@"overrideType"];
  }

  v67 = dictionary;

  v68 = *MEMORY[0x277D85DE8];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v49 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    clientClockTime = self->_clientClockTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_appID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    timezone = self->_timezone;
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if ((has & 0x100) != 0)
  {
    runState = self->_runState;
    PBDataWriterWriteInt32Field();
  }

  if (self->_appVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_osVersionAndBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iTunesStore)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = self->_userKeyboards;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v11);
  }

  if ((*&self->_has & 4) != 0)
  {
    appsRank = self->_appsRank;
    PBDataWriterWriteInt32Field();
  }

  if (self->_deviceModes.count)
  {
    v16 = 0;
    do
    {
      v17 = self->_deviceModes.list[v16];
      PBDataWriterWriteInt32Field();
      ++v16;
    }

    while (v16 < self->_deviceModes.count);
  }

  if (self->_accountTypes.count)
  {
    v18 = 0;
    do
    {
      v19 = self->_accountTypes.list[v18];
      PBDataWriterWriteInt32Field();
      ++v18;
    }

    while (v18 < self->_accountTypes.count);
  }

  v20 = self->_has;
  if ((v20 & 0x20) != 0)
  {
    latitude = self->_latitude;
    PBDataWriterWriteFloatField();
    v20 = self->_has;
    if ((v20 & 0x40) == 0)
    {
LABEL_36:
      if ((v20 & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  else if ((v20 & 0x40) == 0)
  {
    goto LABEL_36;
  }

  longitude = self->_longitude;
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_37:
    horizontalAccuracy = self->_horizontalAccuracy;
    PBDataWriterWriteFloatField();
  }

LABEL_38:
  if (self->_isoCountryCode)
  {
    PBDataWriterWriteStringField();
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = self->_targetings;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v39 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v24);
  }

  if ((*&self->_has & 0x800) != 0)
  {
    limitAdTracking = self->_limitAdTracking;
    PBDataWriterWriteBOOLField();
  }

  if (self->_toroIDString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iAdIDString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_algoId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_dPIDString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_postalCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_administrativeArea)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_locality)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subAdministrativeArea)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    advertisingIdentifierMonthResetCount = self->_advertisingIdentifierMonthResetCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_deviceRequestID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_carrierMNC)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_carrierMCC)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_currentCarrierMNC)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_currentCarrierMCC)
  {
    PBDataWriterWriteStringField();
  }

  v30 = self->_has;
  if ((v30 & 0x400) != 0)
  {
    isOnInternationalDataRoaming = self->_isOnInternationalDataRoaming;
    PBDataWriterWriteBOOLField();
    v30 = self->_has;
  }

  if ((v30 & 8) != 0)
  {
    connectionType = self->_connectionType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_storeFrontLanguageLocaleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accountStates.count)
  {
    v33 = 0;
    do
    {
      v34 = self->_accountStates.list[v33];
      PBDataWriterWriteInt32Field();
      ++v33;
    }

    while (v33 < self->_accountStates.count);
  }

  if ((*&self->_has & 0x80) != 0)
  {
    overrideType = self->_overrideType;
    PBDataWriterWriteInt32Field();
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[10] = *&self->_clientClockTime;
    *(toCopy + 174) |= 1u;
  }

  v26 = toCopy;
  if (self->_appID)
  {
    [toCopy setAppID:?];
    toCopy = v26;
  }

  if (self->_deviceModel)
  {
    [v26 setDeviceModel:?];
    toCopy = v26;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(toCopy + 80) = LODWORD(self->_timezone);
    *(toCopy + 174) |= 0x200u;
    has = self->_has;
  }

  if ((has & 0x100) != 0)
  {
    *(toCopy + 72) = self->_runState;
    *(toCopy + 174) |= 0x100u;
  }

  if (self->_appVersion)
  {
    [v26 setAppVersion:?];
  }

  if (self->_osVersionAndBuild)
  {
    [v26 setOsVersionAndBuild:?];
  }

  if (self->_iTunesStore)
  {
    [v26 setITunesStore:?];
  }

  if (self->_localeIdentifier)
  {
    [v26 setLocaleIdentifier:?];
  }

  if ([(ADUserTargetingProperties *)self userKeyboardsCount])
  {
    [v26 clearUserKeyboards];
    userKeyboardsCount = [(ADUserTargetingProperties *)self userKeyboardsCount];
    if (userKeyboardsCount)
    {
      v7 = userKeyboardsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(ADUserTargetingProperties *)self userKeyboardAtIndex:i];
        [v26 addUserKeyboard:v9];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v26 + 32) = self->_appsRank;
    *(v26 + 174) |= 4u;
  }

  if ([(ADUserTargetingProperties *)self deviceModesCount])
  {
    [v26 clearDeviceModes];
    deviceModesCount = [(ADUserTargetingProperties *)self deviceModesCount];
    if (deviceModesCount)
    {
      v11 = deviceModesCount;
      for (j = 0; j != v11; ++j)
      {
        [v26 addDeviceMode:{-[ADUserTargetingProperties deviceModeAtIndex:](self, "deviceModeAtIndex:", j)}];
      }
    }
  }

  if ([(ADUserTargetingProperties *)self accountTypesCount])
  {
    [v26 clearAccountTypes];
    accountTypesCount = [(ADUserTargetingProperties *)self accountTypesCount];
    if (accountTypesCount)
    {
      v14 = accountTypesCount;
      for (k = 0; k != v14; ++k)
      {
        [v26 addAccountType:{-[ADUserTargetingProperties accountTypeAtIndex:](self, "accountTypeAtIndex:", k)}];
      }
    }
  }

  v16 = self->_has;
  if ((v16 & 0x20) != 0)
  {
    *(v26 + 58) = LODWORD(self->_latitude);
    *(v26 + 174) |= 0x20u;
    v16 = self->_has;
    if ((v16 & 0x40) == 0)
    {
LABEL_35:
      if ((v16 & 0x10) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if ((v16 & 0x40) == 0)
  {
    goto LABEL_35;
  }

  *(v26 + 64) = LODWORD(self->_longitude);
  *(v26 + 174) |= 0x40u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_36:
    *(v26 + 50) = LODWORD(self->_horizontalAccuracy);
    *(v26 + 174) |= 0x10u;
  }

LABEL_37:
  if (self->_isoCountryCode)
  {
    [v26 setIsoCountryCode:?];
  }

  if ([(ADUserTargetingProperties *)self targetingsCount])
  {
    [v26 clearTargetings];
    targetingsCount = [(ADUserTargetingProperties *)self targetingsCount];
    if (targetingsCount)
    {
      v18 = targetingsCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(ADUserTargetingProperties *)self targetingAtIndex:m];
        [v26 addTargeting:v20];
      }
    }
  }

  v21 = v26;
  if ((*&self->_has & 0x800) != 0)
  {
    *(v26 + 345) = self->_limitAdTracking;
    *(v26 + 174) |= 0x800u;
  }

  if (self->_toroIDString)
  {
    [v26 setToroIDString:?];
    v21 = v26;
  }

  if (self->_iAdIDString)
  {
    [v26 setIAdIDString:?];
    v21 = v26;
  }

  if (self->_algoId)
  {
    [v26 setAlgoId:?];
    v21 = v26;
  }

  if (self->_dPIDString)
  {
    [v26 setDPIDString:?];
    v21 = v26;
  }

  if (self->_postalCode)
  {
    [v26 setPostalCode:?];
    v21 = v26;
  }

  if (self->_administrativeArea)
  {
    [v26 setAdministrativeArea:?];
    v21 = v26;
  }

  if (self->_locality)
  {
    [v26 setLocality:?];
    v21 = v26;
  }

  if (self->_subAdministrativeArea)
  {
    [v26 setSubAdministrativeArea:?];
    v21 = v26;
  }

  if ((*&self->_has & 2) != 0)
  {
    v21[24] = self->_advertisingIdentifierMonthResetCount;
    *(v21 + 174) |= 2u;
  }

  if (self->_deviceRequestID)
  {
    [v26 setDeviceRequestID:?];
    v21 = v26;
  }

  if (self->_carrierMNC)
  {
    [v26 setCarrierMNC:?];
    v21 = v26;
  }

  if (self->_carrierMCC)
  {
    [v26 setCarrierMCC:?];
    v21 = v26;
  }

  if (self->_currentCarrierMNC)
  {
    [v26 setCurrentCarrierMNC:?];
    v21 = v26;
  }

  if (self->_currentCarrierMCC)
  {
    [v26 setCurrentCarrierMCC:?];
    v21 = v26;
  }

  v22 = self->_has;
  if ((v22 & 0x400) != 0)
  {
    *(v21 + 344) = self->_isOnInternationalDataRoaming;
    *(v21 + 174) |= 0x400u;
    v22 = self->_has;
  }

  if ((v22 & 8) != 0)
  {
    v21[38] = self->_connectionType;
    *(v21 + 174) |= 8u;
  }

  if (self->_storeFrontLanguageLocaleIdentifier)
  {
    [v26 setStoreFrontLanguageLocaleIdentifier:?];
  }

  if ([(ADUserTargetingProperties *)self accountStatesCount])
  {
    [v26 clearAccountStates];
    accountStatesCount = [(ADUserTargetingProperties *)self accountStatesCount];
    if (accountStatesCount)
    {
      v24 = accountStatesCount;
      for (n = 0; n != v24; ++n)
      {
        [v26 addAccountState:{-[ADUserTargetingProperties accountStateAtIndex:](self, "accountStateAtIndex:", n)}];
      }
    }
  }

  if ((*&self->_has & 0x80) != 0)
  {
    *(v26 + 68) = self->_overrideType;
    *(v26 + 174) |= 0x80u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 80) = self->_clientClockTime;
    *(v5 + 348) |= 1u;
  }

  v7 = [(NSString *)self->_appID copyWithZone:zone];
  v8 = *(v6 + 112);
  *(v6 + 112) = v7;

  v9 = [(NSString *)self->_deviceModel copyWithZone:zone];
  v10 = *(v6 + 184);
  *(v6 + 184) = v9;

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v6 + 320) = self->_timezone;
    *(v6 + 348) |= 0x200u;
    has = self->_has;
  }

  if ((has & 0x100) != 0)
  {
    *(v6 + 288) = self->_runState;
    *(v6 + 348) |= 0x100u;
  }

  v12 = [(NSString *)self->_appVersion copyWithZone:zone];
  v13 = *(v6 + 120);
  *(v6 + 120) = v12;

  v14 = [(NSString *)self->_osVersionAndBuild copyWithZone:zone];
  v15 = *(v6 + 264);
  *(v6 + 264) = v14;

  v16 = [(NSString *)self->_iTunesStore copyWithZone:zone];
  v17 = *(v6 + 216);
  *(v6 + 216) = v16;

  v18 = [(NSString *)self->_localeIdentifier copyWithZone:zone];
  v19 = *(v6 + 240);
  *(v6 + 240) = v18;

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v20 = self->_userKeyboards;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v71;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v71 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v70 + 1) + 8 * i) copyWithZone:zone];
        [v6 addUserKeyboard:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v70 objects:v75 count:16];
    }

    while (v22);
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 128) = self->_appsRank;
    *(v6 + 348) |= 4u;
  }

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v26 = self->_has;
  if ((v26 & 0x20) != 0)
  {
    *(v6 + 232) = self->_latitude;
    *(v6 + 348) |= 0x20u;
    v26 = self->_has;
    if ((v26 & 0x40) == 0)
    {
LABEL_18:
      if ((v26 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((v26 & 0x40) == 0)
  {
    goto LABEL_18;
  }

  *(v6 + 256) = self->_longitude;
  *(v6 + 348) |= 0x40u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_19:
    *(v6 + 200) = self->_horizontalAccuracy;
    *(v6 + 348) |= 0x10u;
  }

LABEL_20:
  v27 = [(NSString *)self->_isoCountryCode copyWithZone:zone];
  v28 = *(v6 + 224);
  *(v6 + 224) = v27;

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v29 = self->_targetings;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v67;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v67 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v66 + 1) + 8 * j) copyWithZone:{zone, v66}];
        [v6 addTargeting:v34];
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v31);
  }

  if ((*&self->_has & 0x800) != 0)
  {
    *(v6 + 345) = self->_limitAdTracking;
    *(v6 + 348) |= 0x800u;
  }

  v35 = [(NSString *)self->_toroIDString copyWithZone:zone, v66];
  v36 = *(v6 + 328);
  *(v6 + 328) = v35;

  v37 = [(NSString *)self->_iAdIDString copyWithZone:zone];
  v38 = *(v6 + 208);
  *(v6 + 208) = v37;

  v39 = [(NSString *)self->_algoId copyWithZone:zone];
  v40 = *(v6 + 104);
  *(v6 + 104) = v39;

  v41 = [(NSString *)self->_dPIDString copyWithZone:zone];
  v42 = *(v6 + 176);
  *(v6 + 176) = v41;

  v43 = [(NSString *)self->_postalCode copyWithZone:zone];
  v44 = *(v6 + 280);
  *(v6 + 280) = v43;

  v45 = [(NSString *)self->_administrativeArea copyWithZone:zone];
  v46 = *(v6 + 88);
  *(v6 + 88) = v45;

  v47 = [(NSString *)self->_locality copyWithZone:zone];
  v48 = *(v6 + 248);
  *(v6 + 248) = v47;

  v49 = [(NSString *)self->_subAdministrativeArea copyWithZone:zone];
  v50 = *(v6 + 304);
  *(v6 + 304) = v49;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 96) = self->_advertisingIdentifierMonthResetCount;
    *(v6 + 348) |= 2u;
  }

  v51 = [(NSString *)self->_deviceRequestID copyWithZone:zone];
  v52 = *(v6 + 192);
  *(v6 + 192) = v51;

  v53 = [(NSString *)self->_carrierMNC copyWithZone:zone];
  v54 = *(v6 + 144);
  *(v6 + 144) = v53;

  v55 = [(NSString *)self->_carrierMCC copyWithZone:zone];
  v56 = *(v6 + 136);
  *(v6 + 136) = v55;

  v57 = [(NSString *)self->_currentCarrierMNC copyWithZone:zone];
  v58 = *(v6 + 168);
  *(v6 + 168) = v57;

  v59 = [(NSString *)self->_currentCarrierMCC copyWithZone:zone];
  v60 = *(v6 + 160);
  *(v6 + 160) = v59;

  v61 = self->_has;
  if ((v61 & 0x400) != 0)
  {
    *(v6 + 344) = self->_isOnInternationalDataRoaming;
    *(v6 + 348) |= 0x400u;
    v61 = self->_has;
  }

  if ((v61 & 8) != 0)
  {
    *(v6 + 152) = self->_connectionType;
    *(v6 + 348) |= 8u;
  }

  v62 = [(NSString *)self->_storeFrontLanguageLocaleIdentifier copyWithZone:zone];
  v63 = *(v6 + 296);
  *(v6 + 296) = v62;

  PBRepeatedInt32Copy();
  if ((*&self->_has & 0x80) != 0)
  {
    *(v6 + 272) = self->_overrideType;
    *(v6 + 348) |= 0x80u;
  }

  v64 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_79;
  }

  v5 = *(equalCopy + 174);
  if (*&self->_has)
  {
    if ((v5 & 1) == 0 || self->_clientClockTime != *(equalCopy + 10))
    {
      goto LABEL_79;
    }
  }

  else if (v5)
  {
    goto LABEL_79;
  }

  appID = self->_appID;
  if (appID | *(equalCopy + 14) && ![(NSString *)appID isEqual:?])
  {
    goto LABEL_79;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel | *(equalCopy + 23))
  {
    if (![(NSString *)deviceModel isEqual:?])
    {
      goto LABEL_79;
    }
  }

  v8 = *(equalCopy + 174);
  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 174) & 0x200) == 0 || self->_timezone != *(equalCopy + 80))
    {
      goto LABEL_79;
    }
  }

  else if ((*(equalCopy + 174) & 0x200) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 174) & 0x100) == 0 || self->_runState != *(equalCopy + 72))
    {
      goto LABEL_79;
    }
  }

  else if ((*(equalCopy + 174) & 0x100) != 0)
  {
    goto LABEL_79;
  }

  appVersion = self->_appVersion;
  if (appVersion | *(equalCopy + 15) && ![(NSString *)appVersion isEqual:?])
  {
    goto LABEL_79;
  }

  osVersionAndBuild = self->_osVersionAndBuild;
  if (osVersionAndBuild | *(equalCopy + 33))
  {
    if (![(NSString *)osVersionAndBuild isEqual:?])
    {
      goto LABEL_79;
    }
  }

  iTunesStore = self->_iTunesStore;
  if (iTunesStore | *(equalCopy + 27))
  {
    if (![(NSString *)iTunesStore isEqual:?])
    {
      goto LABEL_79;
    }
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(equalCopy + 30))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_79;
    }
  }

  userKeyboards = self->_userKeyboards;
  if (userKeyboards | *(equalCopy + 42))
  {
    if (![(NSMutableArray *)userKeyboards isEqual:?])
    {
      goto LABEL_79;
    }
  }

  v14 = *(equalCopy + 174);
  if ((*&self->_has & 4) != 0)
  {
    if ((v14 & 4) == 0 || self->_appsRank != *(equalCopy + 32))
    {
      goto LABEL_79;
    }
  }

  else if ((v14 & 4) != 0)
  {
    goto LABEL_79;
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_79;
  }

  has = self->_has;
  v16 = *(equalCopy + 174);
  if ((has & 0x20) != 0)
  {
    if ((v16 & 0x20) == 0 || self->_latitude != *(equalCopy + 58))
    {
      goto LABEL_79;
    }
  }

  else if ((v16 & 0x20) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 0x40) != 0)
  {
    if ((v16 & 0x40) == 0 || self->_longitude != *(equalCopy + 64))
    {
      goto LABEL_79;
    }
  }

  else if ((v16 & 0x40) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 0x10) != 0)
  {
    if ((v16 & 0x10) == 0 || self->_horizontalAccuracy != *(equalCopy + 50))
    {
      goto LABEL_79;
    }
  }

  else if ((v16 & 0x10) != 0)
  {
    goto LABEL_79;
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode | *(equalCopy + 28) && ![(NSString *)isoCountryCode isEqual:?])
  {
    goto LABEL_79;
  }

  targetings = self->_targetings;
  if (targetings | *(equalCopy + 39))
  {
    if (![(NSMutableArray *)targetings isEqual:?])
    {
      goto LABEL_79;
    }
  }

  v19 = *(equalCopy + 174);
  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 174) & 0x800) == 0)
    {
      goto LABEL_79;
    }

    v31 = *(equalCopy + 345);
    if (self->_limitAdTracking)
    {
      if ((*(equalCopy + 345) & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (*(equalCopy + 345))
    {
      goto LABEL_79;
    }
  }

  else if ((*(equalCopy + 174) & 0x800) != 0)
  {
    goto LABEL_79;
  }

  toroIDString = self->_toroIDString;
  if (toroIDString | *(equalCopy + 41) && ![(NSString *)toroIDString isEqual:?])
  {
    goto LABEL_79;
  }

  iAdIDString = self->_iAdIDString;
  if (iAdIDString | *(equalCopy + 26))
  {
    if (![(NSString *)iAdIDString isEqual:?])
    {
      goto LABEL_79;
    }
  }

  algoId = self->_algoId;
  if (algoId | *(equalCopy + 13))
  {
    if (![(NSString *)algoId isEqual:?])
    {
      goto LABEL_79;
    }
  }

  dPIDString = self->_dPIDString;
  if (dPIDString | *(equalCopy + 22))
  {
    if (![(NSString *)dPIDString isEqual:?])
    {
      goto LABEL_79;
    }
  }

  postalCode = self->_postalCode;
  if (postalCode | *(equalCopy + 35))
  {
    if (![(NSString *)postalCode isEqual:?])
    {
      goto LABEL_79;
    }
  }

  administrativeArea = self->_administrativeArea;
  if (administrativeArea | *(equalCopy + 11))
  {
    if (![(NSString *)administrativeArea isEqual:?])
    {
      goto LABEL_79;
    }
  }

  locality = self->_locality;
  if (locality | *(equalCopy + 31))
  {
    if (![(NSString *)locality isEqual:?])
    {
      goto LABEL_79;
    }
  }

  subAdministrativeArea = self->_subAdministrativeArea;
  if (subAdministrativeArea | *(equalCopy + 38))
  {
    if (![(NSString *)subAdministrativeArea isEqual:?])
    {
      goto LABEL_79;
    }
  }

  v28 = *(equalCopy + 174);
  if ((*&self->_has & 2) != 0)
  {
    if ((v28 & 2) == 0 || self->_advertisingIdentifierMonthResetCount != *(equalCopy + 24))
    {
      goto LABEL_79;
    }
  }

  else if ((v28 & 2) != 0)
  {
    goto LABEL_79;
  }

  deviceRequestID = self->_deviceRequestID;
  if (deviceRequestID | *(equalCopy + 24) && ![(NSString *)deviceRequestID isEqual:?])
  {
    goto LABEL_79;
  }

  carrierMNC = self->_carrierMNC;
  if (carrierMNC | *(equalCopy + 18))
  {
    if (![(NSString *)carrierMNC isEqual:?])
    {
      goto LABEL_79;
    }
  }

  carrierMCC = self->_carrierMCC;
  if (carrierMCC | *(equalCopy + 17))
  {
    if (![(NSString *)carrierMCC isEqual:?])
    {
      goto LABEL_79;
    }
  }

  currentCarrierMNC = self->_currentCarrierMNC;
  if (currentCarrierMNC | *(equalCopy + 21))
  {
    if (![(NSString *)currentCarrierMNC isEqual:?])
    {
      goto LABEL_79;
    }
  }

  currentCarrierMCC = self->_currentCarrierMCC;
  if (currentCarrierMCC | *(equalCopy + 20))
  {
    if (![(NSString *)currentCarrierMCC isEqual:?])
    {
      goto LABEL_79;
    }
  }

  v37 = self->_has;
  v38 = *(equalCopy + 174);
  if ((v37 & 0x400) != 0)
  {
    if ((*(equalCopy + 174) & 0x400) == 0)
    {
      goto LABEL_79;
    }

    v39 = *(equalCopy + 344);
    if (self->_isOnInternationalDataRoaming)
    {
      if ((*(equalCopy + 344) & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (*(equalCopy + 344))
    {
      goto LABEL_79;
    }
  }

  else if ((*(equalCopy + 174) & 0x400) != 0)
  {
    goto LABEL_79;
  }

  if ((v37 & 8) != 0)
  {
    if ((v38 & 8) == 0 || self->_connectionType != *(equalCopy + 38))
    {
      goto LABEL_79;
    }
  }

  else if ((v38 & 8) != 0)
  {
    goto LABEL_79;
  }

  storeFrontLanguageLocaleIdentifier = self->_storeFrontLanguageLocaleIdentifier;
  if ((!(storeFrontLanguageLocaleIdentifier | *(equalCopy + 37)) || [(NSString *)storeFrontLanguageLocaleIdentifier isEqual:?]) && PBRepeatedInt32IsEqual())
  {
    v41 = *(equalCopy + 174);
    if ((*&self->_has & 0x80) == 0)
    {
      v29 = (v41 & 0x80) == 0;
      goto LABEL_80;
    }

    if ((v41 & 0x80) != 0 && self->_overrideType == *(equalCopy + 68))
    {
      v29 = 1;
      goto LABEL_80;
    }
  }

LABEL_79:
  v29 = 0;
LABEL_80:

  return v29;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    clientClockTime = self->_clientClockTime;
    if (clientClockTime < 0.0)
    {
      clientClockTime = -clientClockTime;
    }

    *v2.i64 = floor(clientClockTime + 0.5);
    v6 = (clientClockTime - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v2.i64[0] = vbslq_s8(vnegq_f64(v7), v3, v2).i64[0];
    v8 = 2654435761u * *v2.i64;
    v9 = v8 + v6;
    if (v6 <= 0.0)
    {
      v9 = 2654435761u * *v2.i64;
    }

    v10 = v8 - fabs(v6);
    if (v6 >= 0.0)
    {
      v10 = v9;
    }

    v73 = v10;
  }

  else
  {
    v73 = 0;
  }

  v72 = [(NSString *)self->_appID hash];
  v71 = [(NSString *)self->_deviceModel hash];
  if ((*&self->_has & 0x200) != 0)
  {
    timezone = self->_timezone;
    if (timezone < 0.0)
    {
      timezone = -timezone;
    }

    *v11.i32 = floorf(timezone + 0.5);
    v14 = (timezone - *v11.i32) * 1.8447e19;
    *v12.i32 = *v11.i32 - (truncf(*v11.i32 * 5.421e-20) * 1.8447e19);
    v15.i64[0] = 0x8000000080000000;
    v15.i64[1] = 0x8000000080000000;
    v16 = 2654435761u * *vbslq_s8(v15, v12, v11).i32;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v16 += v14;
      }
    }

    else
    {
      v16 -= fabsf(v14);
    }

    v70 = v16;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v70 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_12:
      v69 = 2654435761 * self->_runState;
      goto LABEL_21;
    }
  }

  v69 = 0;
LABEL_21:
  v68 = [(NSString *)self->_appVersion hash];
  v67 = [(NSString *)self->_osVersionAndBuild hash];
  v66 = [(NSString *)self->_iTunesStore hash];
  v65 = [(NSString *)self->_localeIdentifier hash];
  v64 = [(NSMutableArray *)self->_userKeyboards hash];
  if ((*&self->_has & 4) != 0)
  {
    v63 = 2654435761 * self->_appsRank;
  }

  else
  {
    v63 = 0;
  }

  v62 = PBRepeatedInt32Hash();
  v61 = PBRepeatedInt32Hash();
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    latitude = self->_latitude;
    if (latitude < 0.0)
    {
      latitude = -latitude;
    }

    *v17.i32 = floorf(latitude + 0.5);
    v22 = (latitude - *v17.i32) * 1.8447e19;
    *v18.i32 = *v17.i32 - (truncf(*v17.i32 * 5.421e-20) * 1.8447e19);
    v23.i64[0] = 0x8000000080000000;
    v23.i64[1] = 0x8000000080000000;
    v17 = vbslq_s8(v23, v18, v17);
    v20 = 2654435761u * *v17.i32;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabsf(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  if ((has & 0x40) != 0)
  {
    longitude = self->_longitude;
    if (longitude < 0.0)
    {
      longitude = -longitude;
    }

    *v17.i32 = floorf(longitude + 0.5);
    v26 = (longitude - *v17.i32) * 1.8447e19;
    *v18.i32 = *v17.i32 - (truncf(*v17.i32 * 5.421e-20) * 1.8447e19);
    v27.i64[0] = 0x8000000080000000;
    v27.i64[1] = 0x8000000080000000;
    v17 = vbslq_s8(v27, v18, v17);
    v24 = 2654435761u * *v17.i32;
    if (v26 >= 0.0)
    {
      if (v26 > 0.0)
      {
        v24 += v26;
      }
    }

    else
    {
      v24 -= fabsf(v26);
    }
  }

  else
  {
    v24 = 0;
  }

  v59 = v24;
  v60 = v20;
  if ((has & 0x10) != 0)
  {
    horizontalAccuracy = self->_horizontalAccuracy;
    if (horizontalAccuracy < 0.0)
    {
      horizontalAccuracy = -horizontalAccuracy;
    }

    *v17.i32 = floorf(horizontalAccuracy + 0.5);
    v29 = (horizontalAccuracy - *v17.i32) * 1.8447e19;
    *v18.i32 = *v17.i32 - (truncf(*v17.i32 * 5.421e-20) * 1.8447e19);
    v30.i64[0] = 0x8000000080000000;
    v30.i64[1] = 0x8000000080000000;
    v17.i32[0] = vbslq_s8(v30, v18, v17).i32[0];
    v31 = 2654435761u * *v17.i32;
    v32 = v31 + v29;
    if (v29 <= 0.0)
    {
      v32 = 2654435761u * *v17.i32;
    }

    v33 = v31 - fabsf(v29);
    if (v29 >= 0.0)
    {
      v33 = v32;
    }

    v58 = v33;
  }

  else
  {
    v58 = 0;
  }

  v57 = [(NSString *)self->_isoCountryCode hash];
  v56 = [(NSMutableArray *)self->_targetings hash];
  if ((*&self->_has & 0x800) != 0)
  {
    v55 = 2654435761 * self->_limitAdTracking;
  }

  else
  {
    v55 = 0;
  }

  v54 = [(NSString *)self->_toroIDString hash];
  v53 = [(NSString *)self->_iAdIDString hash];
  v52 = [(NSString *)self->_algoId hash];
  v51 = [(NSString *)self->_dPIDString hash];
  v50 = [(NSString *)self->_postalCode hash];
  v49 = [(NSString *)self->_administrativeArea hash];
  v48 = [(NSString *)self->_locality hash];
  v47 = [(NSString *)self->_subAdministrativeArea hash];
  if ((*&self->_has & 2) != 0)
  {
    v46 = 2654435761 * self->_advertisingIdentifierMonthResetCount;
  }

  else
  {
    v46 = 0;
  }

  v45 = [(NSString *)self->_deviceRequestID hash];
  v34 = [(NSString *)self->_carrierMNC hash];
  v35 = [(NSString *)self->_carrierMCC hash];
  v36 = [(NSString *)self->_currentCarrierMNC hash];
  v37 = [(NSString *)self->_currentCarrierMCC hash];
  v38 = self->_has;
  if ((v38 & 0x400) != 0)
  {
    v39 = 2654435761 * self->_isOnInternationalDataRoaming;
    if ((v38 & 8) != 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v39 = 0;
    if ((v38 & 8) != 0)
    {
LABEL_57:
      v40 = 2654435761 * self->_connectionType;
      goto LABEL_60;
    }
  }

  v40 = 0;
LABEL_60:
  v41 = [(NSString *)self->_storeFrontLanguageLocaleIdentifier hash];
  v42 = PBRepeatedInt32Hash();
  if ((*&self->_has & 0x80) != 0)
  {
    v43 = 2654435761 * self->_overrideType;
  }

  else
  {
    v43 = 0;
  }

  return v72 ^ v73 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v34 ^ v35 ^ v36 ^ v37 ^ v39 ^ v40 ^ v41 ^ v42 ^ v43;
}

- (void)mergeFrom:(id)from
{
  v39 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 174))
  {
    self->_clientClockTime = fromCopy[10];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 14))
  {
    [(ADUserTargetingProperties *)self setAppID:?];
  }

  if (*(v5 + 23))
  {
    [(ADUserTargetingProperties *)self setDeviceModel:?];
  }

  v6 = *(v5 + 174);
  if ((v6 & 0x200) != 0)
  {
    self->_timezone = *(v5 + 80);
    *&self->_has |= 0x200u;
    v6 = *(v5 + 174);
  }

  if ((v6 & 0x100) != 0)
  {
    self->_runState = *(v5 + 72);
    *&self->_has |= 0x100u;
  }

  if (*(v5 + 15))
  {
    [(ADUserTargetingProperties *)self setAppVersion:?];
  }

  if (*(v5 + 33))
  {
    [(ADUserTargetingProperties *)self setOsVersionAndBuild:?];
  }

  if (*(v5 + 27))
  {
    [(ADUserTargetingProperties *)self setITunesStore:?];
  }

  if (*(v5 + 30))
  {
    [(ADUserTargetingProperties *)self setLocaleIdentifier:?];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = *(v5 + 42);
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ADUserTargetingProperties *)self addUserKeyboard:*(*(&v33 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);
  }

  if ((*(v5 + 174) & 4) != 0)
  {
    self->_appsRank = *(v5 + 32);
    *&self->_has |= 4u;
  }

  deviceModesCount = [v5 deviceModesCount];
  if (deviceModesCount)
  {
    v13 = deviceModesCount;
    for (j = 0; j != v13; ++j)
    {
      -[ADUserTargetingProperties addDeviceMode:](self, "addDeviceMode:", [v5 deviceModeAtIndex:j]);
    }
  }

  accountTypesCount = [v5 accountTypesCount];
  if (accountTypesCount)
  {
    v16 = accountTypesCount;
    for (k = 0; k != v16; ++k)
    {
      -[ADUserTargetingProperties addAccountType:](self, "addAccountType:", [v5 accountTypeAtIndex:k]);
    }
  }

  v18 = *(v5 + 174);
  if ((v18 & 0x20) != 0)
  {
    self->_latitude = *(v5 + 58);
    *&self->_has |= 0x20u;
    v18 = *(v5 + 174);
    if ((v18 & 0x40) == 0)
    {
LABEL_36:
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  else if ((v18 & 0x40) == 0)
  {
    goto LABEL_36;
  }

  self->_longitude = *(v5 + 64);
  *&self->_has |= 0x40u;
  if ((*(v5 + 174) & 0x10) != 0)
  {
LABEL_37:
    self->_horizontalAccuracy = *(v5 + 50);
    *&self->_has |= 0x10u;
  }

LABEL_38:
  if (*(v5 + 28))
  {
    [(ADUserTargetingProperties *)self setIsoCountryCode:?];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = *(v5 + 39);
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      for (m = 0; m != v21; ++m)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(ADUserTargetingProperties *)self addTargeting:*(*(&v29 + 1) + 8 * m), v29];
      }

      v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v21);
  }

  if ((*(v5 + 174) & 0x800) != 0)
  {
    self->_limitAdTracking = *(v5 + 345);
    *&self->_has |= 0x800u;
  }

  if (*(v5 + 41))
  {
    [(ADUserTargetingProperties *)self setToroIDString:?];
  }

  if (*(v5 + 26))
  {
    [(ADUserTargetingProperties *)self setIAdIDString:?];
  }

  if (*(v5 + 13))
  {
    [(ADUserTargetingProperties *)self setAlgoId:?];
  }

  if (*(v5 + 22))
  {
    [(ADUserTargetingProperties *)self setDPIDString:?];
  }

  if (*(v5 + 35))
  {
    [(ADUserTargetingProperties *)self setPostalCode:?];
  }

  if (*(v5 + 11))
  {
    [(ADUserTargetingProperties *)self setAdministrativeArea:?];
  }

  if (*(v5 + 31))
  {
    [(ADUserTargetingProperties *)self setLocality:?];
  }

  if (*(v5 + 38))
  {
    [(ADUserTargetingProperties *)self setSubAdministrativeArea:?];
  }

  if ((*(v5 + 174) & 2) != 0)
  {
    self->_advertisingIdentifierMonthResetCount = *(v5 + 24);
    *&self->_has |= 2u;
  }

  if (*(v5 + 24))
  {
    [(ADUserTargetingProperties *)self setDeviceRequestID:?];
  }

  if (*(v5 + 18))
  {
    [(ADUserTargetingProperties *)self setCarrierMNC:?];
  }

  if (*(v5 + 17))
  {
    [(ADUserTargetingProperties *)self setCarrierMCC:?];
  }

  if (*(v5 + 21))
  {
    [(ADUserTargetingProperties *)self setCurrentCarrierMNC:?];
  }

  if (*(v5 + 20))
  {
    [(ADUserTargetingProperties *)self setCurrentCarrierMCC:?];
  }

  v24 = *(v5 + 174);
  if ((v24 & 0x400) != 0)
  {
    self->_isOnInternationalDataRoaming = *(v5 + 344);
    *&self->_has |= 0x400u;
    v24 = *(v5 + 174);
  }

  if ((v24 & 8) != 0)
  {
    self->_connectionType = *(v5 + 38);
    *&self->_has |= 8u;
  }

  if (*(v5 + 37))
  {
    [(ADUserTargetingProperties *)self setStoreFrontLanguageLocaleIdentifier:?];
  }

  accountStatesCount = [v5 accountStatesCount];
  if (accountStatesCount)
  {
    v26 = accountStatesCount;
    for (n = 0; n != v26; ++n)
    {
      -[ADUserTargetingProperties addAccountState:](self, "addAccountState:", [v5 accountStateAtIndex:n]);
    }
  }

  if ((*(v5 + 174) & 0x80) != 0)
  {
    self->_overrideType = *(v5 + 68);
    *&self->_has |= 0x80u;
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end