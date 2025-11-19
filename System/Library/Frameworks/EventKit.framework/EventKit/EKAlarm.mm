@interface EKAlarm
+ (BOOL)_processIsAllowedToCreateProcedureAlarms;
+ (BOOL)areLocationsAllowed;
+ (BOOL)areLocationsAllowedWithAuthorizationStatus:(int)a3;
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
- (BOOL)isTopographicallyEqualToAlarm:(id)a3;
- (BOOL)validateWithOwner:(id)a3 error:(id *)a4;
- (EKAlarm)init;
- (EKAlarm)initWithAbsoluteDate:(id)a3;
- (EKAlarm)initWithRelativeOffset:(double)a3;
- (EKAlarmProximity)proximity;
- (EKAlarmType)type;
- (EKObject)owner;
- (NSArray)snoozedAlarms;
- (NSTimeInterval)relativeOffset;
- (NSURL)url;
- (id)bookmarkURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)ownerUUID;
- (int64_t)compare:(id)a3;
- (void)_setType:(int64_t)a3;
- (void)rebaseForDetachment;
- (void)setAbsoluteDate:(NSDate *)absoluteDate;
- (void)setBookmarkURL:(id)a3;
- (void)setEmailAddress:(NSString *)emailAddress;
- (void)setOriginalAlarm:(id)a3;
- (void)setProximity:(EKAlarmProximity)proximity;
- (void)setRelativeOffset:(NSTimeInterval)relativeOffset;
- (void)setRelativeOffsetRaw:(id)a3;
- (void)setSnoozedAlarms:(id)a3;
- (void)setStructuredLocation:(EKStructuredLocation *)structuredLocation;
- (void)setType:(int64_t)a3;
- (void)setUrl:(NSURL *)url;
- (void)setUrlWrapper:(id)a3;
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
  v5 = [[a1 alloc] initWithAbsoluteDate:v4];

  return v5;
}

+ (EKAlarm)alarmWithRelativeOffset:(NSTimeInterval)offset
{
  v3 = [[a1 alloc] initWithRelativeOffset:offset];

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

    v5 = [(EKAlarm *)v3 UUID];
    [(EKAlarm *)v3 setExternalID:v5];

    [(EKObject *)v3 updatePersistentValueForKeyIfNeeded:*MEMORY[0x1E6992B08]];
  }

  return v3;
}

- (EKAlarm)initWithAbsoluteDate:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(EKAlarm *)a2 initWithAbsoluteDate:?];
  }

  v6 = [(EKAlarm *)self init];
  v7 = v6;
  if (v6)
  {
    [(EKAlarm *)v6 setAbsoluteDate:v5];
  }

  return v7;
}

- (EKAlarm)initWithRelativeOffset:(double)a3
{
  v4 = [(EKAlarm *)self init];
  v5 = v4;
  if (v4)
  {
    [(EKAlarm *)v4 setRelativeOffset:a3];
  }

  return v5;
}

- (EKObject)owner
{
  v3 = [(EKAlarm *)self calendarItemOwner];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(EKAlarm *)self calendarOwner];
  }

  v6 = v5;

  return v6;
}

- (void)rebaseForDetachment
{
  v3 = [(EKAlarm *)self UUID];
  [(EKObject *)self rebase];
  [(EKAlarm *)self setExternalID:v3];
  [(EKAlarm *)self setUUID:v3];
  [(EKObject *)self updatePersistentValueForKeyIfNeeded:*MEMORY[0x1E6992B08]];
}

- (EKAlarmType)type
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992498]];
  v3 = [v2 integerValue];

  return v3;
}

- (void)_setType:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992498]];
}

- (void)setType:(int64_t)a3
{
  if (a3 == 3 || ([(EKAlarm *)self _setEmailAddress:0], a3 != 2))
  {
    [(EKAlarm *)self _setUrlWrapper:0];
  }

  [(EKAlarm *)self _setType:a3];
}

- (void)setRelativeOffsetRaw:(id)a3
{
  v4 = *MEMORY[0x1E6992438];
  v5 = a3;
  [(EKObject *)self setSingleChangedValue:0 forKey:v4];
  [(EKObject *)self setSingleChangedValue:v5 forKey:*MEMORY[0x1E6992480]];
}

- (NSTimeInterval)relativeOffset
{
  if (![(EKAlarm *)self isDefaultAlarm])
  {
    goto LABEL_7;
  }

  v3 = [(EKAlarm *)self calendarItemOwner];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v3 defaultAlarms], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "anyObject"), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {

LABEL_7:
    v3 = [(EKAlarm *)self relativeOffsetRaw];
    [v3 doubleValue];
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
  v4 = [(EKAlarm *)self absoluteDate];

  v5 = v9;
  if (v4 != v9)
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
  v2 = [(EKAlarm *)self absoluteDate];
  v3 = v2 != 0;

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
  v3 = [v2 integerValue];

  return v3;
}

- (void)setStructuredLocation:(EKStructuredLocation *)structuredLocation
{
  v4 = *MEMORY[0x1E6992490];
  v5 = structuredLocation;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKStructuredLocation frozenClass]];
}

- (id)ownerUUID
{
  v2 = [(EKAlarm *)self calendarItemOwner];
  v3 = [v2 calendarItemIdentifier];

  return v3;
}

- (BOOL)isDefaultAlarm
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992468]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setOriginalAlarm:(id)a3
{
  v4 = *MEMORY[0x1E6992470];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKAlarm frozenClass]];
}

- (NSArray)snoozedAlarms
{
  v2 = [(EKAlarm *)self snoozedAlarmsSet];
  v3 = [v2 allObjects];

  return v3;
}

- (void)setSnoozedAlarms:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  [(EKAlarm *)self setSnoozedAlarmsSet:v4];
}

- (BOOL)isSnoozed
{
  v2 = [(EKAlarm *)self originalAlarm];
  v3 = v2 != 0;

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

- (void)setUrlWrapper:(id)a3
{
  v3 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKAlarm setUrlWrapper:v3];
  }
}

- (void)setBookmarkURL:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AE98];
    v5 = a3;
    v6 = [[v4 alloc] initWithURL:v5 readonly:1];
  }

  else
  {
    v6 = 0;
  }

  [(EKAlarm *)self setUrlWrapper:v6];
}

- (id)bookmarkURL
{
  v2 = [(EKAlarm *)self urlWrapper];
  v3 = [v2 url];

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
  v2 = [(EKAlarm *)self urlWrapper];
  v3 = [v2 url];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v12.receiver = self;
    v12.super_class = EKAlarm;
    return [(EKObject *)&v12 copyWithZone:a3];
  }

  else
  {
    v6 = [(EKAlarm *)self isAbsolute];
    v7 = [EKAlarm alloc];
    if (v6)
    {
      v8 = [(EKAlarm *)self absoluteDate];
      v5 = [(EKAlarm *)v7 initWithAbsoluteDate:v8];
    }

    else
    {
      [(EKAlarm *)self relativeOffset];
      v5 = [(EKAlarm *)v7 initWithRelativeOffset:?];
    }

    v9 = [(EKAlarm *)self structuredLocation];
    v10 = [v9 copy];
    [(EKAlarm *)v5 setStructuredLocation:v10];

    [(EKAlarm *)v5 setProximity:[(EKAlarm *)self proximity]];
    [(EKAlarm *)v5 setType:[(EKAlarm *)self type]];
  }

  return v5;
}

- (id)description
{
  v3 = [(EKAlarm *)self isAbsolute];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  if (v3)
  {
    v6 = [(EKAlarm *)self absoluteDate];
    v7 = [v4 stringWithFormat:@"%@ <%p> {triggerDate = %@}", v5, self, v6];
  }

  else
  {
    [(EKAlarm *)self relativeOffset];
    v7 = [v4 stringWithFormat:@"%@ <%p> {triggerInterval = %lf}", v5, self, v8];
  }

  return v7;
}

- (BOOL)validateWithOwner:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = EKAlarm;
  if (![(EKObject *)&v19 validateWithOwner:v6 error:a4])
  {
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 constraints];
    v8 = [v7 supportsAlarmProximity];

    if (v8)
    {
      goto LABEL_18;
    }

LABEL_11:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 _hasChangesForKey:*MEMORY[0x1E6992570]])
      {
        v13 = [v6 committedConstraints];
        v14 = [v13 supportsAlarmProximity];

        if (v14)
        {
          goto LABEL_18;
        }
      }
    }

    if ([(EKAlarm *)self proximity]== EKAlarmProximityNone)
    {
      v15 = [(EKAlarm *)self structuredLocation];

      if (!v15)
      {
        goto LABEL_18;
      }
    }

    if (a4)
    {
      v16 = 21;
LABEL_21:
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:v16];
      *a4 = v17 = 0;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 calendar];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    v9 = v6;
  }

  v10 = v9;
  if (!v9)
  {
LABEL_19:
    if (a4)
    {
      v16 = 1;
      goto LABEL_21;
    }

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  v11 = [v9 constraints];
  v12 = [v11 supportsAlarmProximity];

  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_18:
  v17 = 1;
LABEL_23:

  return v17;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if ([(EKObject *)self isEqual:v4])
  {
    v5 = 0;
    goto LABEL_17;
  }

  v6 = [(EKAlarm *)self absoluteDate];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 absoluteDate];

    if (v8)
    {
      v9 = [(EKAlarm *)self absoluteDate];
      v10 = [v4 absoluteDate];
      v5 = [v9 compare:v10];
LABEL_10:

      goto LABEL_17;
    }
  }

  [(EKAlarm *)self relativeOffset];
  v12 = v11;
  [v4 relativeOffset];
  if (vabdd_f64(v12, v13) >= 2.22044605e-16)
  {
    [(EKAlarm *)self relativeOffset];
    v20 = v19;
    [v4 relativeOffset];
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
    v14 = [(EKAlarm *)self structuredLocation];
    if (v14)
    {
      v15 = v14;
      v16 = [v4 structuredLocation];

      if (v16)
      {
        v9 = [(EKAlarm *)self structuredLocation];
        v10 = [v9 title];
        v17 = [v4 structuredLocation];
        v18 = [v17 title];
        v5 = [v10 compare:v18];

        goto LABEL_10;
      }
    }

    v22 = [(EKAlarm *)self structuredLocation];

    if (v22)
    {
      v5 = -1;
    }

    else
    {
      v23 = [v4 structuredLocation];

      v5 = v23 != 0;
    }
  }

LABEL_17:

  return v5;
}

- (BOOL)isTopographicallyEqualToAlarm:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(EKAlarm *)self absoluteDate];
    v6 = [v4 absoluteDate];
    v7 = v6;
    if (v5)
    {
      v8 = [v5 isEqualToDate:v6];
    }

    else
    {
      v8 = v6 == 0;
    }

    [(EKAlarm *)self relativeOffset];
    v11 = v10;
    [v4 relativeOffset];
    v13 = vabdd_f64(v11, v12);
    v14 = [(EKAlarm *)self structuredLocation];
    v15 = [v4 structuredLocation];
    if (v14 | v15)
    {
      v16 = [v14 isEqual:v15];
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
  v3 = [(EKObject *)&v7 _reset];
  if (v3)
  {
    v4 = objc_opt_class();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __17__EKAlarm__reset__block_invoke;
    v6[3] = &unk_1E77FE7D0;
    v6[4] = self;
    LOBYTE(v3) = [(EKObject *)self _resetIfBackingObjectIsOfClass:v4 fetchResetFrozenObjectBlock:v6];
  }

  return v3;
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
  v3 = [a1 _currentAuthorizationStatus];

  return [a1 areLocationsAllowedWithAuthorizationStatus:v3];
}

+ (BOOL)areLocationsAllowedWithAuthorizationStatus:(int)a3
{
  result = [a1 areLocationsAvailable];
  if (a3 == 2)
  {
    return 0;
  }

  return result;
}

+ (BOOL)areLocationsCurrentlyEnabled
{
  v3 = [a1 areLocationsAvailable];
  if (v3)
  {
    LOBYTE(v3) = [a1 _currentAuthorizationStatus] != 2;
  }

  return v3;
}

- (void)initWithAbsoluteDate:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKAlarm.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"date != nil"}];
}

@end