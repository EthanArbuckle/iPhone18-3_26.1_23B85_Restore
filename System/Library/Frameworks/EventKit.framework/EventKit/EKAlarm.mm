@interface EKAlarm
+ (BOOL)_processIsAllowedToCreateProcedureAlarms;
+ (BOOL)areLocationsAllowed;
+ (BOOL)areLocationsAllowedWithAuthorizationStatus:(int)status;
+ (BOOL)areLocationsCurrentlyEnabled;
+ (EKAlarm)alarmWithAbsoluteDate:(NSDate *)date;
+ (EKAlarm)alarmWithRelativeOffset:(NSTimeInterval)offset;
+ (id)knownIdentityKeysForComparison;
+ (id)knownRelationshipMultiValueKeys;
+ (id)knownRelationshipSingleValueKeys;
+ (id)knownRelationshipWeakKeys;
+ (id)knownSingleValueKeysForComparison;
+ (int)_currentAuthorizationStatus;
- (BOOL)_reset;
- (BOOL)isAbsolute;
- (BOOL)isDefaultAlarm;
- (BOOL)isSnoozed;
- (BOOL)isTopographicallyEqualToAlarm:(id)alarm;
- (BOOL)validateWithOwner:(id)owner error:(id *)error;
- (EKAlarm)init;
- (EKAlarm)initWithAbsoluteDate:(id)date;
- (EKAlarm)initWithRelativeOffset:(double)offset;
- (EKAlarmProximity)proximity;
- (EKAlarmType)type;
- (EKObject)owner;
- (NSArray)snoozedAlarms;
- (NSTimeInterval)relativeOffset;
- (NSURL)url;
- (id)bookmarkURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)ownerUUID;
- (int64_t)compare:(id)compare;
- (void)_setType:(int64_t)type;
- (void)rebaseForDetachment;
- (void)setAbsoluteDate:(NSDate *)absoluteDate;
- (void)setBookmarkURL:(id)l;
- (void)setEmailAddress:(NSString *)emailAddress;
- (void)setOriginalAlarm:(id)alarm;
- (void)setProximity:(EKAlarmProximity)proximity;
- (void)setRelativeOffset:(NSTimeInterval)relativeOffset;
- (void)setRelativeOffsetRaw:(id)raw;
- (void)setSnoozedAlarms:(id)alarms;
- (void)setStructuredLocation:(EKStructuredLocation *)structuredLocation;
- (void)setType:(int64_t)type;
- (void)setUrl:(NSURL *)url;
- (void)setUrlWrapper:(id)wrapper;
@end

@implementation EKAlarm

+ (id)knownRelationshipSingleValueKeys
{
  if (knownRelationshipSingleValueKeys_onceToken_4 != -1)
  {
    +[EKAlarm knownRelationshipSingleValueKeys];
  }

  v3 = knownRelationshipSingleValueKeys_keys_4;

  return v3;
}

void __43__EKAlarm_knownRelationshipSingleValueKeys__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992490];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownRelationshipSingleValueKeys_keys_4;
  knownRelationshipSingleValueKeys_keys_4 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)knownRelationshipMultiValueKeys
{
  if (knownRelationshipMultiValueKeys_onceToken_4 != -1)
  {
    +[EKAlarm knownRelationshipMultiValueKeys];
  }

  v3 = knownRelationshipMultiValueKeys_keys_4;

  return v3;
}

void __42__EKAlarm_knownRelationshipMultiValueKeys__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992488];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownRelationshipMultiValueKeys_keys_4;
  knownRelationshipMultiValueKeys_keys_4 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken_8 != -1)
  {
    +[EKAlarm knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys_8;

  return v3;
}

void __41__EKAlarm_knownIdentityKeysForComparison__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992B08];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownIdentityKeysForComparison_keys_8;
  knownIdentityKeysForComparison_keys_8 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)knownSingleValueKeysForComparison
{
  if (knownSingleValueKeysForComparison_onceToken_7 != -1)
  {
    +[EKAlarm knownSingleValueKeysForComparison];
  }

  v3 = knownSingleValueKeysForComparison_keys_7;

  return v3;
}

void __44__EKAlarm_knownSingleValueKeysForComparison__block_invoke()
{
  v7[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992440];
  v7[0] = *MEMORY[0x1E6992438];
  v7[1] = v0;
  v1 = *MEMORY[0x1E6992468];
  v7[2] = *MEMORY[0x1E6992498];
  v7[3] = v1;
  v2 = *MEMORY[0x1E6992480];
  v7[4] = *MEMORY[0x1E6992478];
  v7[5] = v2;
  v3 = *MEMORY[0x1E69924A0];
  v7[6] = *MEMORY[0x1E6992458];
  v7[7] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:8];
  v5 = knownSingleValueKeysForComparison_keys_7;
  knownSingleValueKeysForComparison_keys_7 = v4;

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)knownRelationshipWeakKeys
{
  if (knownRelationshipWeakKeys_onceToken_5 != -1)
  {
    +[EKAlarm knownRelationshipWeakKeys];
  }

  v3 = knownRelationshipWeakKeys_keys_5;

  return v3;
}

void __36__EKAlarm_knownRelationshipWeakKeys__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992448];
  v4[0] = *MEMORY[0x1E6992450];
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = knownRelationshipWeakKeys_keys_5;
  knownRelationshipWeakKeys_keys_5 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (EKAlarm)alarmWithAbsoluteDate:(NSDate *)date
{
  v4 = date;
  v5 = [[self alloc] initWithAbsoluteDate:v4];

  return v5;
}

+ (EKAlarm)alarmWithRelativeOffset:(NSTimeInterval)offset
{
  v3 = [[self alloc] initWithRelativeOffset:offset];

  return v3;
}

- (EKAlarm)init
{
  v7.receiver = self;
  v7.super_class = EKAlarm;
  v2 = [(EKObject *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(EKAlarm *)v2 setType:0];
    v4 = EKUUIDString();
    [(EKAlarm *)v3 setUUID:v4];

    uUID = [(EKAlarm *)v3 UUID];
    [(EKAlarm *)v3 setExternalID:uUID];

    [(EKObject *)v3 updatePersistentValueForKeyIfNeeded:*MEMORY[0x1E6992B08]];
  }

  return v3;
}

- (EKAlarm)initWithAbsoluteDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    [(EKAlarm *)a2 initWithAbsoluteDate:?];
  }

  v6 = [(EKAlarm *)self init];
  v7 = v6;
  if (v6)
  {
    [(EKAlarm *)v6 setAbsoluteDate:dateCopy];
  }

  return v7;
}

- (EKAlarm)initWithRelativeOffset:(double)offset
{
  v4 = [(EKAlarm *)self init];
  v5 = v4;
  if (v4)
  {
    [(EKAlarm *)v4 setRelativeOffset:offset];
  }

  return v5;
}

- (EKObject)owner
{
  calendarItemOwner = [(EKAlarm *)self calendarItemOwner];
  v4 = calendarItemOwner;
  if (calendarItemOwner)
  {
    calendarOwner = calendarItemOwner;
  }

  else
  {
    calendarOwner = [(EKAlarm *)self calendarOwner];
  }

  v6 = calendarOwner;

  return v6;
}

- (void)rebaseForDetachment
{
  uUID = [(EKAlarm *)self UUID];
  [(EKObject *)self rebase];
  [(EKAlarm *)self setExternalID:uUID];
  [(EKAlarm *)self setUUID:uUID];
  [(EKObject *)self updatePersistentValueForKeyIfNeeded:*MEMORY[0x1E6992B08]];
}

- (EKAlarmType)type
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992498]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)_setType:(int64_t)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992498]];
}

- (void)setType:(int64_t)type
{
  if (type == 3 || ([(EKAlarm *)self _setEmailAddress:0], type != 2))
  {
    [(EKAlarm *)self _setUrlWrapper:0];
  }

  [(EKAlarm *)self _setType:type];
}

- (void)setRelativeOffsetRaw:(id)raw
{
  v4 = *MEMORY[0x1E6992438];
  rawCopy = raw;
  [(EKObject *)self setSingleChangedValue:0 forKey:v4];
  [(EKObject *)self setSingleChangedValue:rawCopy forKey:*MEMORY[0x1E6992480]];
}

- (NSTimeInterval)relativeOffset
{
  if (![(EKAlarm *)self isDefaultAlarm])
  {
    goto LABEL_7;
  }

  calendarItemOwner = [(EKAlarm *)self calendarItemOwner];
  if (!calendarItemOwner || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([calendarItemOwner defaultAlarms], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "anyObject"), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {

LABEL_7:
    calendarItemOwner = [(EKAlarm *)self relativeOffsetRaw];
    [calendarItemOwner doubleValue];
    v7 = v8;
    goto LABEL_8;
  }

  [v5 relativeOffset];
  v7 = v6;

LABEL_8:
  return v7;
}

- (void)setRelativeOffset:(NSTimeInterval)relativeOffset
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:relativeOffset];
  [(EKAlarm *)self setRelativeOffsetRaw:v4];
}

- (void)setAbsoluteDate:(NSDate *)absoluteDate
{
  v9 = absoluteDate;
  absoluteDate = [(EKAlarm *)self absoluteDate];

  v5 = v9;
  if (absoluteDate != v9)
  {
    [(EKObject *)self setSingleChangedValue:0 forKey:*MEMORY[0x1E6992480]];
    if (v9)
    {
      v6 = MEMORY[0x1E695DF00];
      [(NSDate *)v9 timeIntervalSinceReferenceDate];
      v8 = [v6 dateWithTimeIntervalSinceReferenceDate:floor(v7)];
    }

    else
    {
      v8 = 0;
    }

    [(EKObject *)self setSingleChangedValue:v8 forKey:*MEMORY[0x1E6992438]];

    v5 = v9;
  }
}

- (BOOL)isAbsolute
{
  absoluteDate = [(EKAlarm *)self absoluteDate];
  v3 = absoluteDate != 0;

  return v3;
}

- (void)setProximity:(EKAlarmProximity)proximity
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:proximity];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992478]];
}

- (EKAlarmProximity)proximity
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992478]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setStructuredLocation:(EKStructuredLocation *)structuredLocation
{
  v4 = *MEMORY[0x1E6992490];
  v5 = structuredLocation;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKStructuredLocation frozenClass]];
}

- (id)ownerUUID
{
  calendarItemOwner = [(EKAlarm *)self calendarItemOwner];
  calendarItemIdentifier = [calendarItemOwner calendarItemIdentifier];

  return calendarItemIdentifier;
}

- (BOOL)isDefaultAlarm
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992468]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setOriginalAlarm:(id)alarm
{
  v4 = *MEMORY[0x1E6992470];
  alarmCopy = alarm;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:alarmCopy forKey:v4 frozenClass:+[EKAlarm frozenClass]];
}

- (NSArray)snoozedAlarms
{
  snoozedAlarmsSet = [(EKAlarm *)self snoozedAlarmsSet];
  allObjects = [snoozedAlarmsSet allObjects];

  return allObjects;
}

- (void)setSnoozedAlarms:(id)alarms
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:alarms];
  [(EKAlarm *)self setSnoozedAlarmsSet:v4];
}

- (BOOL)isSnoozed
{
  originalAlarm = [(EKAlarm *)self originalAlarm];
  v3 = originalAlarm != 0;

  return v3;
}

- (void)setEmailAddress:(NSString *)emailAddress
{
  v6 = emailAddress;
  if (emailAddress)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [(EKAlarm *)self setType:v5];
  [(EKAlarm *)self _setEmailAddress:v6];
}

+ (BOOL)_processIsAllowedToCreateProcedureAlarms
{
  if ([MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp] & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessIsAutomator") & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessIsShortcuts") & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessHasSyncClientEntitlement") & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessIsCalendarDaemon"))
  {
    return 1;
  }

  v3 = MEMORY[0x1E6992FA0];

  return [v3 currentProcessHasTestingEntitlement];
}

- (void)setUrlWrapper:(id)wrapper
{
  v3 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKAlarm setUrlWrapper:v3];
  }
}

- (void)setBookmarkURL:(id)l
{
  if (l)
  {
    v4 = MEMORY[0x1E696AE98];
    lCopy = l;
    v6 = [[v4 alloc] initWithURL:lCopy readonly:1];
  }

  else
  {
    v6 = 0;
  }

  [(EKAlarm *)self setUrlWrapper:v6];
}

- (id)bookmarkURL
{
  urlWrapper = [(EKAlarm *)self urlWrapper];
  v3 = [urlWrapper url];

  return v3;
}

- (void)setUrl:(NSURL *)url
{
  v4 = MEMORY[0x1E696AE98];
  v5 = url;
  v6 = [[v4 alloc] initWithURL:v5 readonly:1];

  [(EKAlarm *)self setUrlWrapper:v6];
}

- (NSURL)url
{
  urlWrapper = [(EKAlarm *)self urlWrapper];
  v3 = [urlWrapper url];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v12.receiver = self;
    v12.super_class = EKAlarm;
    return [(EKObject *)&v12 copyWithZone:zone];
  }

  else
  {
    isAbsolute = [(EKAlarm *)self isAbsolute];
    v7 = [EKAlarm alloc];
    if (isAbsolute)
    {
      absoluteDate = [(EKAlarm *)self absoluteDate];
      v5 = [(EKAlarm *)v7 initWithAbsoluteDate:absoluteDate];
    }

    else
    {
      [(EKAlarm *)self relativeOffset];
      v5 = [(EKAlarm *)v7 initWithRelativeOffset:?];
    }

    structuredLocation = [(EKAlarm *)self structuredLocation];
    v10 = [structuredLocation copy];
    [(EKAlarm *)v5 setStructuredLocation:v10];

    [(EKAlarm *)v5 setProximity:[(EKAlarm *)self proximity]];
    [(EKAlarm *)v5 setType:[(EKAlarm *)self type]];
  }

  return v5;
}

- (id)description
{
  isAbsolute = [(EKAlarm *)self isAbsolute];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  if (isAbsolute)
  {
    absoluteDate = [(EKAlarm *)self absoluteDate];
    v7 = [v4 stringWithFormat:@"%@ <%p> {triggerDate = %@}", v5, self, absoluteDate];
  }

  else
  {
    [(EKAlarm *)self relativeOffset];
    v7 = [v4 stringWithFormat:@"%@ <%p> {triggerInterval = %lf}", v5, self, v8];
  }

  return v7;
}

- (BOOL)validateWithOwner:(id)owner error:(id *)error
{
  ownerCopy = owner;
  v19.receiver = self;
  v19.super_class = EKAlarm;
  if (![(EKObject *)&v19 validateWithOwner:ownerCopy error:error])
  {
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    constraints = [ownerCopy constraints];
    supportsAlarmProximity = [constraints supportsAlarmProximity];

    if (supportsAlarmProximity)
    {
      goto LABEL_18;
    }

LABEL_11:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([ownerCopy _hasChangesForKey:*MEMORY[0x1E6992570]])
      {
        committedConstraints = [ownerCopy committedConstraints];
        supportsAlarmProximity2 = [committedConstraints supportsAlarmProximity];

        if (supportsAlarmProximity2)
        {
          goto LABEL_18;
        }
      }
    }

    if ([(EKAlarm *)self proximity]== EKAlarmProximityNone)
    {
      structuredLocation = [(EKAlarm *)self structuredLocation];

      if (!structuredLocation)
      {
        goto LABEL_18;
      }
    }

    if (error)
    {
      v16 = 21;
LABEL_21:
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:v16];
      *error = v17 = 0;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    calendar = [ownerCopy calendar];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    calendar = ownerCopy;
  }

  v10 = calendar;
  if (!calendar)
  {
LABEL_19:
    if (error)
    {
      v16 = 1;
      goto LABEL_21;
    }

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  constraints2 = [calendar constraints];
  supportsAlarmProximity3 = [constraints2 supportsAlarmProximity];

  if ((supportsAlarmProximity3 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_18:
  v17 = 1;
LABEL_23:

  return v17;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if ([(EKObject *)self isEqual:compareCopy])
  {
    v5 = 0;
    goto LABEL_17;
  }

  absoluteDate = [(EKAlarm *)self absoluteDate];
  if (absoluteDate)
  {
    v7 = absoluteDate;
    absoluteDate2 = [compareCopy absoluteDate];

    if (absoluteDate2)
    {
      absoluteDate3 = [(EKAlarm *)self absoluteDate];
      absoluteDate4 = [compareCopy absoluteDate];
      v5 = [absoluteDate3 compare:absoluteDate4];
LABEL_10:

      goto LABEL_17;
    }
  }

  [(EKAlarm *)self relativeOffset];
  v12 = v11;
  [compareCopy relativeOffset];
  if (vabdd_f64(v12, v13) >= 2.22044605e-16)
  {
    [(EKAlarm *)self relativeOffset];
    v20 = v19;
    [compareCopy relativeOffset];
    if (v20 <= v21)
    {
      v5 = 1;
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    structuredLocation = [(EKAlarm *)self structuredLocation];
    if (structuredLocation)
    {
      v15 = structuredLocation;
      structuredLocation2 = [compareCopy structuredLocation];

      if (structuredLocation2)
      {
        absoluteDate3 = [(EKAlarm *)self structuredLocation];
        absoluteDate4 = [absoluteDate3 title];
        structuredLocation3 = [compareCopy structuredLocation];
        title = [structuredLocation3 title];
        v5 = [absoluteDate4 compare:title];

        goto LABEL_10;
      }
    }

    structuredLocation4 = [(EKAlarm *)self structuredLocation];

    if (structuredLocation4)
    {
      v5 = -1;
    }

    else
    {
      structuredLocation5 = [compareCopy structuredLocation];

      v5 = structuredLocation5 != 0;
    }
  }

LABEL_17:

  return v5;
}

- (BOOL)isTopographicallyEqualToAlarm:(id)alarm
{
  alarmCopy = alarm;
  if (alarmCopy)
  {
    absoluteDate = [(EKAlarm *)self absoluteDate];
    absoluteDate2 = [alarmCopy absoluteDate];
    v7 = absoluteDate2;
    if (absoluteDate)
    {
      v8 = [absoluteDate isEqualToDate:absoluteDate2];
    }

    else
    {
      v8 = absoluteDate2 == 0;
    }

    [(EKAlarm *)self relativeOffset];
    v11 = v10;
    [alarmCopy relativeOffset];
    v13 = vabdd_f64(v11, v12);
    structuredLocation = [(EKAlarm *)self structuredLocation];
    structuredLocation2 = [alarmCopy structuredLocation];
    if (structuredLocation | structuredLocation2)
    {
      v16 = [structuredLocation isEqual:structuredLocation2];
    }

    else
    {
      v16 = 1;
    }

    if (v8)
    {
      v9 = (v13 < 2.22044605e-16) & v16;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_reset
{
  v7.receiver = self;
  v7.super_class = EKAlarm;
  _reset = [(EKObject *)&v7 _reset];
  if (_reset)
  {
    v4 = objc_opt_class();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __17__EKAlarm__reset__block_invoke;
    v6[3] = &unk_1E77FE7D0;
    v6[4] = self;
    LOBYTE(_reset) = [(EKObject *)self _resetIfBackingObjectIsOfClass:v4 fetchResetFrozenObjectBlock:v6];
  }

  return _reset;
}

id __17__EKAlarm__reset__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 eventStore];
  v5 = [v4 reminderStore];
  v6 = [v5 resetBackingAlarmWithBackingAlarm:v3];

  return v6;
}

+ (int)_currentAuthorizationStatus
{
  v2 = MEMORY[0x1E6992FE0];
  v3 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/LocationBundles/RemindersAlerts.bundle"];
  LODWORD(v2) = [v2 authorizationStatusForBundle:v3];

  return v2;
}

+ (BOOL)areLocationsAllowed
{
  _currentAuthorizationStatus = [self _currentAuthorizationStatus];

  return [self areLocationsAllowedWithAuthorizationStatus:_currentAuthorizationStatus];
}

+ (BOOL)areLocationsAllowedWithAuthorizationStatus:(int)status
{
  result = [self areLocationsAvailable];
  if (status == 2)
  {
    return 0;
  }

  return result;
}

+ (BOOL)areLocationsCurrentlyEnabled
{
  areLocationsAvailable = [self areLocationsAvailable];
  if (areLocationsAvailable)
  {
    LOBYTE(areLocationsAvailable) = [self _currentAuthorizationStatus] != 2;
  }

  return areLocationsAvailable;
}

- (void)initWithAbsoluteDate:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKAlarm.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"date != nil"}];
}

@end