@interface IPCGuidanceStateReply
- (BOOL)isArrived;
- (BOOL)isArriving;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInArrivalState;
- (BOOL)isInParkingState;
- (BOOL)isParked;
- (BOOL)isParking;
- (IPCGuidanceStateReply)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryValue;
- (id)maneuverGuidanceInfo;
- (id)shortDescription;
@end

@implementation IPCGuidanceStateReply

- (id)maneuverGuidanceInfo
{
  v3 = [(IPCGuidanceStateReply *)self shieldInfo];
  v4 = [v3 shieldInfo];

  v5 = [GuidanceManeuverArtwork alloc];
  v6 = [(IPCGuidanceStateReply *)self maneuver];
  v7 = [(IPCGuidanceStateReply *)self junction];
  v8 = [(IPCGuidanceStateReply *)self drivingSide];
  v9 = [(IPCGuidanceStateReply *)self artworkOverride];
  v10 = [(GuidanceManeuverArtwork *)v5 initWithManeuver:v6 junction:v7 drivingSide:v8 artworkDataSource:v9];

  v11 = [NavSignManeuverGuidanceInfo alloc];
  v12 = [(IPCGuidanceStateReply *)self maneuverID];
  v13 = [(IPCGuidanceStateReply *)self primaryInstructions];
  v14 = [(IPCGuidanceStateReply *)self secondaryInstructions];
  v15 = [(NavSignManeuverGuidanceInfo *)v11 initWithSignID:v12 maneuverArtwork:v10 majorTextAlternatives:v13 minorTextAlternatives:v14 shieldInfo:v4];

  return v15;
}

- (IPCGuidanceStateReply)initWithDictionary:(id)a3
{
  v4 = a3;
  v79.receiver = self;
  v79.super_class = IPCGuidanceStateReply;
  v5 = [(IPCMessageObject *)&v79 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_32;
  }

  v6 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyGuidanceStateKey"];
  -[IPCGuidanceStateReply setGuidanceState:](v5, "setGuidanceState:", [v6 unsignedIntegerValue]);

  v7 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyNavigationStateKey"];
  -[IPCGuidanceStateReply setNavigationState:](v5, "setNavigationState:", [v7 unsignedIntegerValue]);

  v8 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyAffectsDimmingKey"];
  -[IPCGuidanceStateReply setAffectsDimming:](v5, "setAffectsDimming:", [v8 BOOLValue]);

  v9 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyTransportTypeKey"];
  -[IPCGuidanceStateReply setTransportType:](v5, "setTransportType:", [v9 integerValue]);

  v10 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyTrafficIncidentAlertKey"];

  if (v10)
  {
    v11 = [IPCTrafficIncidentAlertMessage alloc];
    v12 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyTrafficIncidentAlertKey"];
    v13 = [(IPCTrafficIncidentAlertMessage *)v11 initWithDictionary:v12];
    [(IPCGuidanceStateReply *)v5 setTrafficIncidentAlert:v13];
  }

  v14 = NSStringFromSelector("alightMessage");
  v15 = [v4 objectForKeyedSubscript:v14];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [[TransitAlightMessage alloc] initWithDictionary:v15];
    [(IPCGuidanceStateReply *)v5 setAlightMessage:v16];
  }

  v17 = IPCMessageGetServerFormattedInstructionArrayForKey(v4, @"kIPCGuidanceStateReplyPrimaryInstructionsKey");
  [(IPCGuidanceStateReply *)v5 setPrimaryInstructions:v17];

  v18 = IPCMessageGetServerFormattedInstructionArrayForKey(v4, @"kIPCGuidanceStateReplySecondaryInstructionsKey");
  [(IPCGuidanceStateReply *)v5 setSecondaryInstructions:v18];

  v19 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyShieldInfoKey"];

  if (v19)
  {
    v20 = [IPCShieldInfoMessage alloc];
    v21 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyShieldInfoKey"];
    v22 = [(IPCShieldInfoMessage *)v20 initWithDictionary:v21];
    [(IPCGuidanceStateReply *)v5 setShieldInfo:v22];
  }

  v23 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyLaneGuidanceInfoKey"];

  if (v23)
  {
    v24 = [IPCLaneGuidanceInfoReply alloc];
    v25 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyLaneGuidanceInfoKey"];
    v26 = [(IPCLaneGuidanceInfoReply *)v24 initWithDictionary:v25];
    [(IPCGuidanceStateReply *)v5 setLaneGuidanceInfo:v26];
  }

  v27 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyManeuverIDKey"];

  if (v27)
  {
    v28 = [NSUUID alloc];
    v29 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyManeuverIDKey"];
    v30 = [v28 initWithUUIDString:v29];
    [(IPCGuidanceStateReply *)v5 setManeuverID:v30];
  }

  v31 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyManeuverKey"];
  -[IPCGuidanceStateReply setManeuver:](v5, "setManeuver:", [v31 integerValue]);

  v32 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyDrivingSideKey"];
  -[IPCGuidanceStateReply setDrivingSide:](v5, "setDrivingSide:", [v32 integerValue]);

  v33 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyJunctionKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = objc_opt_class();
    v80 = 0;
    v35 = [NSKeyedUnarchiver unarchivedObjectOfClass:v34 fromData:v33 error:&v80];
    v36 = v80;
    if (!v36)
    {
      goto LABEL_16;
    }

    v37 = v36;
  }

  v35 = 0;
LABEL_16:

  [(IPCGuidanceStateReply *)v5 setJunction:v35];
  v38 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyArtworkOverrideClassKey"];
  v39 = NSClassFromString(v38);

  if (!v39)
  {
    goto LABEL_22;
  }

  v40 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyArtworkOverrideKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v80 = 0;
  v39 = [NSKeyedUnarchiver unarchivedObjectOfClass:v39 fromData:v40 error:&v80];
  v41 = v80;
  if (v41)
  {
    v42 = v41;

LABEL_20:
    v39 = 0;
  }

LABEL_22:
  [(IPCGuidanceStateReply *)v5 setArtworkOverride:v39];

  v43 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyCurrentLegIndexKey"];
  -[IPCGuidanceStateReply setCurrentLegIndex:](v5, "setCurrentLegIndex:", [v43 unsignedIntegerValue]);

  v44 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyNumberOfLegsKey"];
  -[IPCGuidanceStateReply setNumberOfLegs:](v5, "setNumberOfLegs:", [v44 unsignedIntegerValue]);

  v45 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyArrivalInfoKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = objc_opt_class();
    v80 = 0;
    v47 = [NSKeyedUnarchiver unarchivedObjectOfClass:v46 fromData:v45 error:&v80];
    v48 = v80;
    if (!v48)
    {
      goto LABEL_26;
    }

    v49 = v48;
  }

  v47 = 0;
LABEL_26:

  [(IPCGuidanceStateReply *)v5 setArrivalInfo:v47];
  v50 = objc_opt_class();
  v51 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplySceneDeactivationDateKey"];
  v52 = [NSKeyedUnarchiver unarchivedObjectOfClass:v50 fromData:v51 error:0];
  [(IPCGuidanceStateReply *)v5 setLastSceneDeactivationTime:v52];

  v53 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyIsAlertingKey"];
  -[IPCGuidanceStateReply setIsAlerting:](v5, "setIsAlerting:", [v53 BOOLValue]);

  v54 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyIsReroutingKey"];
  -[IPCGuidanceStateReply setIsRerouting:](v5, "setIsRerouting:", [v54 BOOLValue]);

  v55 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyCurrentSpokenEventID"];

  if (v55)
  {
    v56 = [NSUUID alloc];
    v57 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyCurrentSpokenEventID"];
    v58 = [v56 initWithUUIDString:v57];
    [(IPCGuidanceStateReply *)v5 setCurrentSpokenEventID:v58];
  }

  v59 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyIsStickyKey"];
  -[IPCGuidanceStateReply setIsSticky:](v5, "setIsSticky:", [v59 BOOLValue]);

  v60 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyShowInMainScreenKey"];
  -[IPCGuidanceStateReply setShowInMainScreen:](v5, "setShowInMainScreen:", [v60 BOOLValue]);

  v61 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyShowInCarPlayKey"];
  -[IPCGuidanceStateReply setShowInCarPlay:](v5, "setShowInCarPlay:", [v61 BOOLValue]);

  v62 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyIsMapsForegroundOnMainScreen"];
  -[IPCGuidanceStateReply setIsMapsForegroundOnMainScreen:](v5, "setIsMapsForegroundOnMainScreen:", [v62 BOOLValue]);

  v63 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyRouteDataKey"];
  [(IPCGuidanceStateReply *)v5 setLegacyRouteData:v63];

  v64 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyOriginalWaypointRouteDataKey"];
  [(IPCGuidanceStateReply *)v5 setOriginalWaypointRouteData:v64];

  v65 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyETAFilterDataKey"];
  [(IPCGuidanceStateReply *)v5 setEtaFilterData:v65];

  v66 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyIncidentsOnRouteDataKey"];
  [(IPCGuidanceStateReply *)v5 setIncidentsOnRouteData:v66];

  v67 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyIncidentsOnRouteOffsetsKey"];
  [(IPCGuidanceStateReply *)v5 setIncidentsOnRouteOffsets:v67];

  v68 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyIsNavigatingKey"];
  -[IPCGuidanceStateReply setIsNavigating:](v5, "setIsNavigating:", [v68 BOOLValue]);

  v69 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyNavVolumeSettingKey"];
  [(IPCGuidanceStateReply *)v5 setNavVolumeSetting:v69];

  v70 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyNavSessionDataKey"];
  [(IPCGuidanceStateReply *)v5 setNavSessionData:v70];

  v71 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyDistanceKey"];
  [(IPCGuidanceStateReply *)v5 setDistance:v71];

  v72 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyRemainingDistanceOnRouteKey"];
  [(IPCGuidanceStateReply *)v5 setRemainingDistanceOnRoute:v72];

  v73 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyRemainingMinutesOnRouteKey"];
  [(IPCGuidanceStateReply *)v5 setRemainingMinutesOnRoute:v73];

  v74 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyTimeToNextManeuverKey"];
  [(IPCGuidanceStateReply *)v5 setTimeToNextManeuver:v74];

  v75 = [v4 objectForKeyedSubscript:@"kIPCGuidanceStateReplyEvChargingMetadataKey"];
  [(IPCGuidanceStateReply *)v5 setEvChargingMetadata:v75];

  if (![(IPCGuidanceStateReply *)v5 maneuver])
  {

    goto LABEL_32;
  }

  v76 = [(IPCGuidanceStateReply *)v5 maneuverID];

  if (v76)
  {
LABEL_32:
    v77 = v5;
    goto LABEL_33;
  }

  v77 = 0;
LABEL_33:

  return v77;
}

- (id)dictionaryValue
{
  v73.receiver = self;
  v73.super_class = IPCGuidanceStateReply;
  v3 = [(IPCMessageObject *)&v73 dictionaryValue];
  v4 = [v3 mutableCopy];

  v5 = [NSNumber numberWithUnsignedInteger:[(IPCGuidanceStateReply *)self guidanceState]];
  [v4 setObject:v5 forKeyedSubscript:@"kIPCGuidanceStateReplyGuidanceStateKey"];

  v6 = [NSNumber numberWithUnsignedInteger:[(IPCGuidanceStateReply *)self navigationState]];
  [v4 setObject:v6 forKeyedSubscript:@"kIPCGuidanceStateReplyNavigationStateKey"];

  v7 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self affectsDimming]];
  [v4 setObject:v7 forKeyedSubscript:@"kIPCGuidanceStateReplyAffectsDimmingKey"];

  v8 = [NSNumber numberWithInt:[(IPCGuidanceStateReply *)self transportType]];
  [v4 setObject:v8 forKeyedSubscript:@"kIPCGuidanceStateReplyTransportTypeKey"];

  v9 = [(IPCGuidanceStateReply *)self trafficIncidentAlert];

  if (v9)
  {
    v10 = [(IPCGuidanceStateReply *)self trafficIncidentAlert];
    v11 = [v10 dictionaryValue];
    [v4 setObject:v11 forKeyedSubscript:@"kIPCGuidanceStateReplyTrafficIncidentAlertKey"];
  }

  v12 = [(IPCGuidanceStateReply *)self alightMessage];

  if (v12)
  {
    v13 = [(IPCGuidanceStateReply *)self alightMessage];
    v14 = [v13 dictionaryValue];
    v15 = NSStringFromSelector("alightMessage");
    [v4 setObject:v14 forKeyedSubscript:v15];
  }

  v16 = [(IPCGuidanceStateReply *)self primaryInstructions];

  if (v16)
  {
    v17 = [(IPCGuidanceStateReply *)self primaryInstructions];
    v18 = [NSKeyedArchiver archivedDataWithRootObject:v17 requiringSecureCoding:1 error:0];
    [v4 setObject:v18 forKeyedSubscript:@"kIPCGuidanceStateReplyPrimaryInstructionsKey"];
  }

  v19 = [(IPCGuidanceStateReply *)self secondaryInstructions];

  if (v19)
  {
    v20 = [(IPCGuidanceStateReply *)self secondaryInstructions];
    v21 = [NSKeyedArchiver archivedDataWithRootObject:v20 requiringSecureCoding:1 error:0];
    [v4 setObject:v21 forKeyedSubscript:@"kIPCGuidanceStateReplySecondaryInstructionsKey"];
  }

  v22 = [(IPCGuidanceStateReply *)self shieldInfo];

  if (v22)
  {
    v23 = [(IPCGuidanceStateReply *)self shieldInfo];
    v24 = [v23 dictionaryValue];
    [v4 setObject:v24 forKeyedSubscript:@"kIPCGuidanceStateReplyShieldInfoKey"];
  }

  v25 = [(IPCGuidanceStateReply *)self laneGuidanceInfo];

  if (v25)
  {
    v26 = [(IPCGuidanceStateReply *)self laneGuidanceInfo];
    v27 = [v26 dictionaryValue];
    [v4 setObject:v27 forKeyedSubscript:@"kIPCGuidanceStateReplyLaneGuidanceInfoKey"];
  }

  v28 = [(IPCGuidanceStateReply *)self maneuverID];

  if (v28)
  {
    v29 = [(IPCGuidanceStateReply *)self maneuverID];
    v30 = [v29 UUIDString];
    [v4 setObject:v30 forKeyedSubscript:@"kIPCGuidanceStateReplyManeuverIDKey"];
  }

  v31 = [NSNumber numberWithInt:[(IPCGuidanceStateReply *)self maneuver]];
  [v4 setObject:v31 forKeyedSubscript:@"kIPCGuidanceStateReplyManeuverKey"];

  v32 = [NSNumber numberWithInt:[(IPCGuidanceStateReply *)self drivingSide]];
  [v4 setObject:v32 forKeyedSubscript:@"kIPCGuidanceStateReplyDrivingSideKey"];

  v33 = [(IPCGuidanceStateReply *)self junction];

  if (v33)
  {
    v34 = [(IPCGuidanceStateReply *)self junction];
    v35 = [NSKeyedArchiver archivedDataWithRootObject:v34 requiringSecureCoding:1 error:0];
    [v4 setObject:v35 forKeyedSubscript:@"kIPCGuidanceStateReplyJunctionKey"];
  }

  v36 = [(IPCGuidanceStateReply *)self artworkOverride];

  if (v36)
  {
    v37 = [(IPCGuidanceStateReply *)self artworkOverride];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    [v4 setObject:v39 forKeyedSubscript:@"kIPCGuidanceStateReplyArtworkOverrideClassKey"];

    v40 = [(IPCGuidanceStateReply *)self artworkOverride];
    v41 = [NSKeyedArchiver archivedDataWithRootObject:v40 requiringSecureCoding:1 error:0];
    [v4 setObject:v41 forKeyedSubscript:@"kIPCGuidanceStateReplyArtworkOverrideKey"];
  }

  v42 = [NSNumber numberWithUnsignedInteger:[(IPCGuidanceStateReply *)self currentLegIndex]];
  [v4 setObject:v42 forKeyedSubscript:@"kIPCGuidanceStateReplyCurrentLegIndexKey"];

  v43 = [NSNumber numberWithUnsignedInteger:[(IPCGuidanceStateReply *)self numberOfLegs]];
  [v4 setObject:v43 forKeyedSubscript:@"kIPCGuidanceStateReplyNumberOfLegsKey"];

  v44 = [(IPCGuidanceStateReply *)self arrivalInfo];

  if (v44)
  {
    v45 = [(IPCGuidanceStateReply *)self arrivalInfo];
    v46 = [NSKeyedArchiver archivedDataWithRootObject:v45 requiringSecureCoding:1 error:0];
    [v4 setObject:v46 forKeyedSubscript:@"kIPCGuidanceStateReplyArrivalInfoKey"];
  }

  v47 = [(IPCGuidanceStateReply *)self lastSceneDeactivationTime];
  v48 = [NSKeyedArchiver archivedDataWithRootObject:v47 requiringSecureCoding:1 error:0];
  [v4 setObject:v48 forKeyedSubscript:@"kIPCGuidanceStateReplySceneDeactivationDateKey"];

  v49 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self isAlerting]];
  [v4 setObject:v49 forKeyedSubscript:@"kIPCGuidanceStateReplyIsAlertingKey"];

  v50 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self isRerouting]];
  [v4 setObject:v50 forKeyedSubscript:@"kIPCGuidanceStateReplyIsReroutingKey"];

  v51 = [(IPCGuidanceStateReply *)self currentSpokenEventID];
  v52 = [v51 UUIDString];
  [v4 setObject:v52 forKeyedSubscript:@"kIPCGuidanceStateReplyCurrentSpokenEventID"];

  v53 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self isSticky]];
  [v4 setObject:v53 forKeyedSubscript:@"kIPCGuidanceStateReplyIsStickyKey"];

  v54 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self showInMainScreen]];
  [v4 setObject:v54 forKeyedSubscript:@"kIPCGuidanceStateReplyShowInMainScreenKey"];

  v55 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self showInCarPlay]];
  [v4 setObject:v55 forKeyedSubscript:@"kIPCGuidanceStateReplyShowInCarPlayKey"];

  v56 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self isMapsForegroundOnMainScreen]];
  [v4 setObject:v56 forKeyedSubscript:@"kIPCGuidanceStateReplyIsMapsForegroundOnMainScreen"];

  v57 = [(IPCGuidanceStateReply *)self legacyRouteData];
  [v4 setObject:v57 forKeyedSubscript:@"kIPCGuidanceStateReplyRouteDataKey"];

  v58 = [(IPCGuidanceStateReply *)self originalWaypointRouteData];
  [v4 setObject:v58 forKeyedSubscript:@"kIPCGuidanceStateReplyOriginalWaypointRouteDataKey"];

  v59 = [(IPCGuidanceStateReply *)self incidentsOnRouteData];
  [v4 setObject:v59 forKeyedSubscript:@"kIPCGuidanceStateReplyIncidentsOnRouteDataKey"];

  v60 = [(IPCGuidanceStateReply *)self incidentsOnRouteOffsets];
  [v4 setObject:v60 forKeyedSubscript:@"kIPCGuidanceStateReplyIncidentsOnRouteOffsetsKey"];

  v61 = [(IPCGuidanceStateReply *)self etaFilterData];
  [v4 setObject:v61 forKeyedSubscript:@"kIPCGuidanceStateReplyETAFilterDataKey"];

  v62 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self isNavigating]];
  [v4 setObject:v62 forKeyedSubscript:@"kIPCGuidanceStateReplyIsNavigatingKey"];

  v63 = [(IPCGuidanceStateReply *)self navVolumeSetting];
  v64 = [v63 copy];
  [v4 setObject:v64 forKeyedSubscript:@"kIPCGuidanceStateReplyNavVolumeSettingKey"];

  v65 = [(IPCGuidanceStateReply *)self navSessionData];
  [v4 setObject:v65 forKeyedSubscript:@"kIPCGuidanceStateReplyNavSessionDataKey"];

  v66 = [(IPCGuidanceStateReply *)self distance];
  [v4 setObject:v66 forKeyedSubscript:@"kIPCGuidanceStateReplyDistanceKey"];

  v67 = [(IPCGuidanceStateReply *)self remainingDistanceOnRoute];
  [v4 setObject:v67 forKeyedSubscript:@"kIPCGuidanceStateReplyRemainingDistanceOnRouteKey"];

  v68 = [(IPCGuidanceStateReply *)self remainingMinutesOnRoute];
  [v4 setObject:v68 forKeyedSubscript:@"kIPCGuidanceStateReplyRemainingMinutesOnRouteKey"];

  v69 = [(IPCGuidanceStateReply *)self timeToNextManeuver];
  [v4 setObject:v69 forKeyedSubscript:@"kIPCGuidanceStateReplyTimeToNextManeuverKey"];

  v70 = [(IPCGuidanceStateReply *)self evChargingMetadata];
  [v4 setObject:v70 forKeyedSubscript:@"kIPCGuidanceStateReplyEvChargingMetadataKey"];

  v71 = [v4 copy];

  return v71;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v66 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(IPCGuidanceStateReply *)self guidanceState];
      if (v6 == [(IPCGuidanceStateReply *)v5 guidanceState]&& (v7 = [(IPCGuidanceStateReply *)self navigationState], v7 == [(IPCGuidanceStateReply *)v5 navigationState]) && (v8 = [(IPCGuidanceStateReply *)self affectsDimming], v8 == [(IPCGuidanceStateReply *)v5 affectsDimming]) && (v9 = [(IPCGuidanceStateReply *)self transportType], v9 == [(IPCGuidanceStateReply *)v5 transportType]))
      {
        v10 = [(IPCGuidanceStateReply *)self trafficIncidentAlert];
        v11 = [(IPCGuidanceStateReply *)v5 trafficIncidentAlert];
        v12 = v10;
        v13 = v11;
        if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, !v14))
        {
          v66 = 0;
        }

        else
        {
          v15 = [(IPCGuidanceStateReply *)self alightMessage];
          v16 = [(IPCGuidanceStateReply *)v5 alightMessage];
          v17 = v15;
          v18 = v16;
          if (v17 | v18 && (v19 = [v17 isEqual:v18], v18, v17, !v19))
          {
            v66 = 0;
          }

          else
          {
            v20 = [(IPCGuidanceStateReply *)self primaryInstructions];
            v21 = [(IPCGuidanceStateReply *)v5 primaryInstructions];
            v22 = v20;
            v23 = v21;
            if (v22 | v23 && (v24 = [v22 isEqual:v23], v23, v22, !v24))
            {
              v66 = 0;
            }

            else
            {
              v168 = v22;
              v25 = [(IPCGuidanceStateReply *)self secondaryInstructions];
              v26 = [(IPCGuidanceStateReply *)v5 secondaryInstructions];
              v27 = v25;
              v169 = v26;
              if (v27 | v169 && (v166 = [v27 isEqual:v169], v169, v27, !v166))
              {
                v66 = 0;
                v22 = v168;
              }

              else
              {
                v164 = v27;
                v28 = [(IPCGuidanceStateReply *)self shieldInfo];
                v29 = [(IPCGuidanceStateReply *)v5 shieldInfo];
                v30 = v28;
                v165 = v29;
                v167 = v30;
                if (v30 | v165 && (v162 = [v30 isEqual:v165], v165, v30, !v162))
                {
                  v66 = 0;
                  v22 = v168;
                  v27 = v164;
                }

                else
                {
                  v31 = [(IPCGuidanceStateReply *)self laneGuidanceInfo];
                  v32 = [(IPCGuidanceStateReply *)v5 laneGuidanceInfo];
                  v33 = v31;
                  v34 = v32;
                  v161 = v34;
                  v163 = v33;
                  if (v33 | v34 && (v35 = v34, v159 = [v33 isEqual:v34], v35, v33, !v159))
                  {
                    v66 = 0;
                    v22 = v168;
                    v27 = v164;
                  }

                  else
                  {
                    v36 = [(IPCGuidanceStateReply *)self maneuverID];
                    v37 = [(IPCGuidanceStateReply *)v5 maneuverID];
                    v38 = v36;
                    v158 = v37;
                    v160 = v38;
                    if (v38 | v158 && (v156 = [v38 isEqual:v158], v158, v38, !v156))
                    {
                      v66 = 0;
                      v22 = v168;
                      v27 = v164;
                    }

                    else
                    {
                      v39 = [(IPCGuidanceStateReply *)self maneuver];
                      v27 = v164;
                      if (v39 == [(IPCGuidanceStateReply *)v5 maneuver]&& (v40 = [(IPCGuidanceStateReply *)self drivingSide], v40 == [(IPCGuidanceStateReply *)v5 drivingSide]))
                      {
                        v155 = v23;
                        v41 = [(IPCGuidanceStateReply *)self junction];
                        v42 = [(IPCGuidanceStateReply *)v5 junction];
                        v43 = v41;
                        v44 = v42;
                        v157 = v44;
                        if (v43 | v44 && (v45 = v44, v46 = [v43 isEqual:v44], v45, v43, !v46))
                        {
                          v66 = 0;
                          v22 = v168;
                          v27 = v164;
                        }

                        else
                        {
                          v47 = [(IPCGuidanceStateReply *)self artworkOverride];
                          v48 = [(IPCGuidanceStateReply *)v5 artworkOverride];
                          v49 = v47;
                          v153 = v48;
                          v154 = v49;
                          if (v49 | v153 && (v151 = [v49 isEqual:v153], v153, v49, !v151))
                          {
                            v66 = 0;
                            v22 = v168;
                            v27 = v164;
                          }

                          else
                          {
                            v50 = [(IPCGuidanceStateReply *)self currentLegIndex];
                            v27 = v164;
                            if (v50 == [(IPCGuidanceStateReply *)v5 currentLegIndex]&& (v51 = [(IPCGuidanceStateReply *)self numberOfLegs], v51 == [(IPCGuidanceStateReply *)v5 numberOfLegs]))
                            {
                              v152 = v43;
                              v149 = v12;
                              v150 = v13;
                              v148 = v18;
                              v52 = [(IPCGuidanceStateReply *)self arrivalInfo];
                              v53 = [(IPCGuidanceStateReply *)v5 arrivalInfo];
                              v54 = v52;
                              v55 = v54;
                              v56 = v53;
                              if (v54 | v56 && (v57 = [v54 isEqual:v56], v56, v55, !v57))
                              {
                                v66 = 0;
                              }

                              else
                              {
                                v58 = [(IPCGuidanceStateReply *)self lastSceneDeactivationTime];
                                v59 = [(IPCGuidanceStateReply *)v5 lastSceneDeactivationTime];
                                v60 = v58;
                                v61 = v59;
                                v147 = v61;
                                if ((!(v60 | v61) || (v62 = v61, v63 = [v60 isEqual:v61], v62, v60, v63)) && (v64 = -[IPCGuidanceStateReply isAlerting](self, "isAlerting"), v64 == -[IPCGuidanceStateReply isAlerting](v5, "isAlerting")) && (v65 = -[IPCGuidanceStateReply isRerouting](self, "isRerouting"), v65 == -[IPCGuidanceStateReply isRerouting](v5, "isRerouting")))
                                {
                                  v68 = [(IPCGuidanceStateReply *)self currentSpokenEventID];
                                  v69 = [(IPCGuidanceStateReply *)v5 currentSpokenEventID];
                                  v70 = v68;
                                  v145 = v69;
                                  v146 = v70;
                                  if ((!(v70 | v145) || (v71 = [v70 isEqual:v145], v145, v146, v71)) && (v72 = -[IPCGuidanceStateReply isSticky](self, "isSticky"), v72 == -[IPCGuidanceStateReply isSticky](v5, "isSticky")) && (v73 = -[IPCGuidanceStateReply showInMainScreen](self, "showInMainScreen"), v73 == -[IPCGuidanceStateReply showInMainScreen](v5, "showInMainScreen")) && (v74 = -[IPCGuidanceStateReply showInCarPlay](self, "showInCarPlay"), v74 == -[IPCGuidanceStateReply showInCarPlay](v5, "showInCarPlay")) && (v75 = -[IPCGuidanceStateReply isMapsForegroundOnMainScreen](self, "isMapsForegroundOnMainScreen"), v75 == -[IPCGuidanceStateReply isMapsForegroundOnMainScreen](v5, "isMapsForegroundOnMainScreen")))
                                  {
                                    v76 = [(IPCGuidanceStateReply *)self legacyRouteData];
                                    v77 = [(IPCGuidanceStateReply *)v5 legacyRouteData];
                                    v78 = v76;
                                    v143 = v78;
                                    v144 = v77;
                                    if (__PAIR128__(v144, v78) == 0 || (v79 = [v78 isEqual:v144], v144, v78, v79))
                                    {
                                      v80 = [(IPCGuidanceStateReply *)self originalWaypointRouteData];
                                      v81 = [(IPCGuidanceStateReply *)v5 originalWaypointRouteData];
                                      v82 = v80;
                                      v141 = v81;
                                      v142 = v82;
                                      if (v82 | v141 && (v83 = [v82 isEqual:v141], v141, v142, !v83))
                                      {
                                        v66 = 0;
                                      }

                                      else
                                      {
                                        v84 = [(IPCGuidanceStateReply *)self incidentsOnRouteData];
                                        v85 = [(IPCGuidanceStateReply *)v5 incidentsOnRouteData];
                                        v86 = v84;
                                        v139 = v86;
                                        v140 = v85;
                                        if (__PAIR128__(v140, v86) == 0 || (v87 = [v86 isEqual:v140], v140, v86, v87))
                                        {
                                          v88 = [(IPCGuidanceStateReply *)self incidentsOnRouteOffsets];
                                          v89 = [(IPCGuidanceStateReply *)v5 incidentsOnRouteOffsets];
                                          v90 = v88;
                                          v137 = v89;
                                          v138 = v90;
                                          if (v90 | v137 && (v91 = [v90 isEqual:v137], v137, v138, !v91))
                                          {
                                            v66 = 0;
                                          }

                                          else
                                          {
                                            v92 = [(IPCGuidanceStateReply *)self etaFilterData];
                                            v93 = [(IPCGuidanceStateReply *)v5 etaFilterData];
                                            v94 = v92;
                                            v135 = v94;
                                            v136 = v93;
                                            if ((__PAIR128__(v136, v94) == 0 || (v95 = [v94 isEqual:v136], v136, v94, v95)) && (v96 = -[IPCGuidanceStateReply isNavigating](self, "isNavigating"), v96 == -[IPCGuidanceStateReply isNavigating](v5, "isNavigating")))
                                            {
                                              v97 = [(IPCGuidanceStateReply *)self navVolumeSetting];
                                              v98 = [(IPCGuidanceStateReply *)v5 navVolumeSetting];
                                              v99 = v97;
                                              v133 = v98;
                                              v134 = v99;
                                              if (v99 | v133 && (v100 = [v99 isEqual:v133], v133, v134, !v100))
                                              {
                                                v66 = 0;
                                              }

                                              else
                                              {
                                                v101 = [(IPCGuidanceStateReply *)self navSessionData];
                                                v102 = [(IPCGuidanceStateReply *)v5 navSessionData];
                                                v103 = v101;
                                                v131 = v103;
                                                v132 = v102;
                                                if (__PAIR128__(v132, v103) == 0 || (v104 = [v103 isEqual:v132], v132, v103, v104))
                                                {
                                                  v105 = [(IPCGuidanceStateReply *)self distance];
                                                  v106 = [(IPCGuidanceStateReply *)v5 distance];
                                                  v107 = v105;
                                                  v129 = v106;
                                                  v130 = v107;
                                                  if (v107 | v129 && (v108 = [v107 isEqual:v129], v129, v130, !v108))
                                                  {
                                                    v66 = 0;
                                                  }

                                                  else
                                                  {
                                                    v109 = [(IPCGuidanceStateReply *)self remainingDistanceOnRoute];
                                                    v110 = [(IPCGuidanceStateReply *)v5 remainingDistanceOnRoute];
                                                    v111 = v109;
                                                    v127 = v111;
                                                    v128 = v110;
                                                    if (__PAIR128__(v128, v111) == 0 || (v112 = [v111 isEqual:v128], v128, v111, v112))
                                                    {
                                                      v113 = [(IPCGuidanceStateReply *)self remainingMinutesOnRoute];
                                                      v114 = [(IPCGuidanceStateReply *)v5 remainingMinutesOnRoute];
                                                      v115 = v113;
                                                      v125 = v114;
                                                      v126 = v115;
                                                      if (v115 | v125 && (v116 = [v115 isEqual:v125], v125, v126, !v116))
                                                      {
                                                        v66 = 0;
                                                      }

                                                      else
                                                      {
                                                        v117 = [(IPCGuidanceStateReply *)self timeToNextManeuver];
                                                        v118 = [(IPCGuidanceStateReply *)v5 timeToNextManeuver];
                                                        v119 = v117;
                                                        v120 = v118;
                                                        v124 = v119;
                                                        if (v119 | v120 && (v121 = [v119 isEqual:v120], v120, v119, !v121))
                                                        {
                                                          v66 = 0;
                                                        }

                                                        else
                                                        {
                                                          v122 = [(IPCGuidanceStateReply *)self evChargingMetadata];
                                                          v123 = [(IPCGuidanceStateReply *)v5 evChargingMetadata];
                                                          if (v122 | v123)
                                                          {
                                                            v66 = [v122 isEqual:v123];
                                                          }

                                                          else
                                                          {
                                                            v66 = 1;
                                                          }
                                                        }
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v66 = 0;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  v66 = 0;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              v66 = 0;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v66 = 0;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      v66 = 0;
                                    }
                                  }

                                  else
                                  {
                                    v66 = 0;
                                  }
                                }

                                else
                                {
                                  v66 = 0;
                                }
                              }

                              v22 = v168;
                              v27 = v164;
                              v18 = v148;
                              v12 = v149;
                              v13 = v150;
                              v43 = v152;
                            }

                            else
                            {
                              v66 = 0;
                              v22 = v168;
                            }
                          }
                        }

                        v23 = v155;
                      }

                      else
                      {
                        v66 = 0;
                        v22 = v168;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v66 = 0;
      }
    }

    else
    {
      v66 = 0;
    }
  }

  return v66;
}

- (id)description
{
  v3 = [(IPCGuidanceStateReply *)self primaryInstructions];
  v20 = MapsMap(v3, &stru_4AAD8);

  v4 = [(IPCGuidanceStateReply *)self secondaryInstructions];
  v19 = MapsMap(v4, &stru_4AAF8);

  v50.receiver = self;
  v50.super_class = IPCGuidanceStateReply;
  v49 = [(IPCGuidanceStateReply *)&v50 description];
  v48 = [NSNumber numberWithUnsignedInteger:[(IPCGuidanceStateReply *)self guidanceState]];
  v47 = [NSNumber numberWithUnsignedInteger:[(IPCGuidanceStateReply *)self navigationState]];
  v46 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self affectsDimming]];
  v45 = [NSNumber numberWithInt:[(IPCGuidanceStateReply *)self transportType]];
  v44 = [(IPCGuidanceStateReply *)self trafficIncidentAlert];
  v43 = [v20 componentsJoinedByString:@" | "];
  v42 = [v19 componentsJoinedByString:@" | "];
  v41 = [(IPCGuidanceStateReply *)self shieldInfo];
  v40 = [(IPCGuidanceStateReply *)self maneuverID];
  v39 = [NSNumber numberWithInt:[(IPCGuidanceStateReply *)self maneuver]];
  v38 = [NSNumber numberWithInt:[(IPCGuidanceStateReply *)self drivingSide]];
  v32 = [(IPCGuidanceStateReply *)self junction];
  v37 = [(IPCGuidanceStateReply *)self artworkOverride];
  v36 = [NSNumber numberWithUnsignedInteger:[(IPCGuidanceStateReply *)self currentLegIndex]];
  v35 = [NSNumber numberWithUnsignedInteger:[(IPCGuidanceStateReply *)self numberOfLegs]];
  v34 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self isArriving]];
  v33 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self isArrived]];
  v29 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self isParking]];
  v31 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self isParked]];
  v17 = [(IPCGuidanceStateReply *)self arrivalInfo];
  v30 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self isAlerting]];
  v28 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self isRerouting]];
  v16 = [(IPCGuidanceStateReply *)self currentSpokenEventID];
  v27 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self isSticky]];
  v26 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self showInMainScreen]];
  v25 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self showInCarPlay]];
  v24 = [(IPCGuidanceStateReply *)self navVolumeSetting];
  v23 = [(IPCGuidanceStateReply *)self navSessionData];
  v22 = [(IPCGuidanceStateReply *)self distance];
  v21 = [(IPCGuidanceStateReply *)self remainingDistanceOnRoute];
  v15 = [(IPCGuidanceStateReply *)self remainingMinutesOnRoute];
  v14 = [NSNumber numberWithBool:[(IPCGuidanceStateReply *)self isNavigating]];
  v5 = [(IPCGuidanceStateReply *)self legacyRouteData];
  v6 = [(IPCGuidanceStateReply *)self originalWaypointRouteData];
  v7 = [(IPCGuidanceStateReply *)self etaFilterData];
  v8 = [(IPCGuidanceStateReply *)self incidentsOnRouteData];
  v9 = [(IPCGuidanceStateReply *)self incidentsOnRouteOffsets];
  v10 = [(IPCGuidanceStateReply *)self timeToNextManeuver];
  v11 = [(IPCGuidanceStateReply *)self laneGuidanceInfo];
  v12 = [(IPCGuidanceStateReply *)self evChargingMetadata];
  v18 = [NSString stringWithFormat:@"%@             guidanceState : {%@}             navigationState : {%@}             affectsDimming : {%@}             transportType : {%@}             trafficIncidentAlert : {%@}             primaryInstructions : [%@]             secondaryInstructions : [%@]             shieldInfo : {%@}             maneuverID : {%@}             maneuver : {%@}             drivingSide : {%@}             junction : {%@}             artworkOverride : {%@}             currentLegIndex : {%@}             numberOfLegs : {%@}             isArriving : {%@}             isArrived : {%@}             isParking : {%@}             isParked : {%@}             arrivalInfo : {%@}             isAlerting : {%@}             isRerouting : {%@}             currentSpokenEventID : {%@}             isSticky : {%@}             showInMainScreen : {%@}             showInCarPlay: {%@}             navVolumeSetting : {%@}             navSessionData : {%@}             distance : {%@}             remainingDistanceOnRoute : {%@}             remainingMinutesOnRoute : {%@}             isNavigating : {%@}             legacyRouteData : {%@}             originalWaypointRouteData : {%@}             etaFilterData: {%@}             incidentsOnRouteData: {%@}             incidentsOnRouteOffsets: {%@}             timeToNextManeuver : {%@}             laneGuidance : {%@}             evChargingMetadata: {%@}", v49, v48, v47, v46, v45, v44, v43, v42, v41, v40, v39, v38, v32, v37, v36, v35, v34, v33, v29, v31, v17, v30, v28, v16, v27, v26, v25, v24, v23, v22, v21, v15, v14, v5, v6, v7, v8, v9, v10, v11, v12];

  return v18;
}

- (id)shortDescription
{
  v3 = [(IPCGuidanceStateReply *)self guidanceState];
  if (v3 >= 5)
  {
    v4 = [NSString stringWithFormat:@"?? - %lu", v3];
  }

  else
  {
    v4 = off_4AB18[v3];
  }

  v5 = [(IPCGuidanceStateReply *)self maneuverID];
  v6 = [(IPCGuidanceStateReply *)self maneuver];
  v7 = @"NO_TURN";
  switch(v6)
  {
    case 0:
      break;
    case 1:
      v7 = @"LEFT_TURN";
      break;
    case 2:
      v7 = @"RIGHT_TURN";
      break;
    case 3:
      v7 = @"STRAIGHT_AHEAD";
      break;
    case 4:
      v7 = @"U_TURN";
      break;
    case 5:
      v7 = @"FOLLOW_ROAD";
      break;
    case 6:
      v7 = @"ENTER_ROUNDABOUT";
      break;
    case 7:
      v7 = @"EXIT_ROUNDABOUT";
      break;
    case 11:
      v7 = @"OFF_RAMP";
      break;
    case 12:
      v7 = @"ON_RAMP";
      break;
    case 16:
      v7 = @"ARRIVE_END_OF_NAVIGATION";
      break;
    case 17:
      v7 = @"START_ROUTE";
      break;
    case 18:
      v7 = @"ARRIVE_AT_DESTINATION";
      break;
    case 20:
      v7 = @"KEEP_LEFT";
      break;
    case 21:
      v7 = @"KEEP_RIGHT";
      break;
    case 22:
      v7 = @"ENTER_FERRY";
      break;
    case 23:
      v7 = @"EXIT_FERRY";
      break;
    case 24:
      v7 = @"CHANGE_FERRY";
      break;
    case 25:
      v7 = @"START_ROUTE_WITH_U_TURN";
      break;
    case 26:
      v7 = @"U_TURN_AT_ROUNDABOUT";
      break;
    case 27:
      v7 = @"LEFT_TURN_AT_END";
      break;
    case 28:
      v7 = @"RIGHT_TURN_AT_END";
      break;
    case 29:
      v7 = @"HIGHWAY_OFF_RAMP_LEFT";
      break;
    case 30:
      v7 = @"HIGHWAY_OFF_RAMP_RIGHT";
      break;
    case 33:
      v7 = @"ARRIVE_AT_DESTINATION_LEFT";
      break;
    case 34:
      v7 = @"ARRIVE_AT_DESTINATION_RIGHT";
      break;
    case 35:
      v7 = @"U_TURN_WHEN_POSSIBLE";
      break;
    case 39:
      v7 = @"ARRIVE_END_OF_DIRECTIONS";
      break;
    case 41:
      v7 = @"ROUNDABOUT_EXIT_1";
      break;
    case 42:
      v7 = @"ROUNDABOUT_EXIT_2";
      break;
    case 43:
      v7 = @"ROUNDABOUT_EXIT_3";
      break;
    case 44:
      v7 = @"ROUNDABOUT_EXIT_4";
      break;
    case 45:
      v7 = @"ROUNDABOUT_EXIT_5";
      break;
    case 46:
      v7 = @"ROUNDABOUT_EXIT_6";
      break;
    case 47:
      v7 = @"ROUNDABOUT_EXIT_7";
      break;
    case 48:
      v7 = @"ROUNDABOUT_EXIT_8";
      break;
    case 49:
      v7 = @"ROUNDABOUT_EXIT_9";
      break;
    case 50:
      v7 = @"ROUNDABOUT_EXIT_10";
      break;
    case 51:
      v7 = @"ROUNDABOUT_EXIT_11";
      break;
    case 52:
      v7 = @"ROUNDABOUT_EXIT_12";
      break;
    case 53:
      v7 = @"ROUNDABOUT_EXIT_13";
      break;
    case 54:
      v7 = @"ROUNDABOUT_EXIT_14";
      break;
    case 55:
      v7 = @"ROUNDABOUT_EXIT_15";
      break;
    case 56:
      v7 = @"ROUNDABOUT_EXIT_16";
      break;
    case 57:
      v7 = @"ROUNDABOUT_EXIT_17";
      break;
    case 58:
      v7 = @"ROUNDABOUT_EXIT_18";
      break;
    case 59:
      v7 = @"ROUNDABOUT_EXIT_19";
      break;
    case 60:
      v7 = @"SHARP_LEFT_TURN";
      break;
    case 61:
      v7 = @"SHARP_RIGHT_TURN";
      break;
    case 62:
      v7 = @"SLIGHT_LEFT_TURN";
      break;
    case 63:
      v7 = @"SLIGHT_RIGHT_TURN";
      break;
    case 64:
      v7 = @"CHANGE_HIGHWAY";
      break;
    case 65:
      v7 = @"CHANGE_HIGHWAY_LEFT";
      break;
    case 66:
      v7 = @"CHANGE_HIGHWAY_RIGHT";
      break;
    case 80:
      v7 = @"TOLL_STATION";
      break;
    case 81:
      v7 = @"ENTER_TUNNEL";
      break;
    case 82:
      v7 = @"WAYPOINT_STOP";
      break;
    case 83:
      v7 = @"WAYPOINT_STOP_LEFT";
      break;
    case 84:
      v7 = @"WAYPOINT_STOP_RIGHT";
      break;
    case 85:
      v7 = @"RESUME_ROUTE";
      break;
    case 86:
      v7 = @"RESUME_ROUTE_WITH_U_TURN";
      break;
    case 87:
      v7 = @"CUSTOM";
      break;
    case 88:
      v7 = @"TURN_AROUND";
      break;
    default:
      v7 = [NSString stringWithFormat:@"(unknown: %i)", v6];
      break;
  }

  v8 = [(IPCGuidanceStateReply *)self distance];
  [v8 doubleValue];
  v10 = [NSString stringWithFormat:@"%@ | ID:%@: %@ in %#.1lfm | alert: %d | MainScreen:%d | Car:%d", v4, v5, v7, v9, [(IPCGuidanceStateReply *)self isAlerting], [(IPCGuidanceStateReply *)self showInMainScreen], [(IPCGuidanceStateReply *)self showInCarPlay]];

  return v10;
}

- (BOOL)isInArrivalState
{
  if ([(IPCGuidanceStateReply *)self isArriving])
  {
    return 1;
  }

  return [(IPCGuidanceStateReply *)self isArrived];
}

- (BOOL)isArriving
{
  v2 = [(IPCGuidanceStateReply *)self arrivalInfo];
  v3 = [v2 arrivalState] == &dword_0 + 2;

  return v3;
}

- (BOOL)isArrived
{
  v3 = [(IPCGuidanceStateReply *)self arrivalInfo];
  if ([v3 arrivalState] == &dword_4)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(IPCGuidanceStateReply *)self arrivalInfo];
    v4 = [v5 arrivalState] == &dword_0 + 3;
  }

  return v4;
}

- (BOOL)isInParkingState
{
  if ([(IPCGuidanceStateReply *)self isParking])
  {
    return 1;
  }

  return [(IPCGuidanceStateReply *)self isParked];
}

- (BOOL)isParking
{
  v3 = [(IPCGuidanceStateReply *)self arrivalInfo];
  if ([v3 arrivalState] == &dword_4 + 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(IPCGuidanceStateReply *)self arrivalInfo];
    v4 = [v5 arrivalState] == &dword_4 + 2;
  }

  return v4;
}

- (BOOL)isParked
{
  v2 = [(IPCGuidanceStateReply *)self arrivalInfo];
  v3 = [v2 arrivalState] == &dword_0 + 1;

  return v3;
}

@end