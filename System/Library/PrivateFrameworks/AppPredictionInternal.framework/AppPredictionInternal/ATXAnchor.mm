@interface ATXAnchor
+ (BOOL)isActive;
+ (BOOL)shouldPredicateOnStartDate;
+ (BOOL)shouldProcessContextStoreNotification;
+ (BOOL)shouldProcessContextStoreNotificationForDict;
+ (BOOL)shouldProcessContextStoreNotificationForNumber;
+ (BOOL)usesContextStoreForRealTimeNotifications;
+ (Class)anchorClassFromAnchorTypeString:(id)a3;
+ (Class)supportedDuetDataProviderClass;
+ (NSArray)duetEventsPredicates;
+ (double)durationOfAnchorEvent:(id)a3;
+ (double)secondsOfInfluence;
+ (id)allAnchorClasses;
+ (id)anchorOccurenceDateFromDuetEvent:(id)a3;
+ (id)anchorTypeStringToClassName:(id)a3;
+ (id)anchorTypeToAnchorClassName:(int64_t)a3;
+ (id)anchorTypeToString:(int64_t)a3;
+ (id)candidateQueryStartDateFromDuetEvent:(id)a3;
+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)a3 endDate:(id)a4;
+ (id)filterBlock;
+ (id)invalidationPredicateForContextStoreRegistration;
+ (id)keyPathForContextStore;
+ (id)predicateForContextStoreRegistration;
+ (id)sampleEvent;
+ (int)pbAnchorEventTypeFromDuetEvent:(id)a3;
+ (int64_t)anchorType;
+ (int64_t)stringToAnchorType:(id)a3;
+ (void)registerForNotificationsWithoutUsingContextStoreForObserver:(id)a3 enterSelector:(SEL)a4 exitSelector:(SEL)a5;
+ (void)registerWithContextStoreForAnchorEntranceWithCallback:(id)a3 notificationId:(id)a4 registrationPersistenceContext:(id)a5;
+ (void)registerWithContextStoreForAnchorExitWithCallback:(id)a3 notificationId:(id)a4 registrationPersistenceContext:(id)a5;
+ (void)unregisterForNotificationsWithoutUsingContextStoreForObserver:(id)a3;
- (ATXAnchor)initWithCoder:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)anchorTypeString;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXAnchor

+ (Class)supportedDuetDataProviderClass
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:28 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (NSArray)duetEventsPredicates
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:34 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (id)filterBlock
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:40 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (int64_t)anchorType
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:46 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (double)secondsOfInfluence
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:57 description:@"Should be implemented by subclasses"];

  return 0.0;
}

+ (BOOL)shouldPredicateOnStartDate
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:63 description:@"Should be implemented by subclasses"];

  return 1;
}

- (id)anchorTypeString
{
  v2 = objc_opt_class();
  v3 = [objc_opt_class() anchorType];

  return [v2 anchorTypeToString:v3];
}

+ (id)anchorOccurenceDateFromDuetEvent:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() shouldPredicateOnStartDate])
  {
    [v3 startDate];
  }

  else
  {
    [v3 endDate];
  }
  v4 = ;

  return v4;
}

+ (id)candidateQueryStartDateFromDuetEvent:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:v3];

  return v4;
}

+ (double)durationOfAnchorEvent:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() shouldPredicateOnStartDate])
  {
    v5 = [v4 endDate];
    v6 = [v4 startDate];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7;

    [a1 secondsOfInfluence];
    v10 = v9;
    if (v8 >= 1.0 && v8 < v9)
    {
      v10 = v8;
    }
  }

  else
  {
    [a1 secondsOfInfluence];
    v10 = v11;
  }

  return v10;
}

+ (BOOL)usesContextStoreForRealTimeNotifications
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:106 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (void)registerWithContextStoreForAnchorEntranceWithCallback:(id)a3 notificationId:(id)a4 registrationPersistenceContext:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  if (([objc_opt_class() usesContextStoreForRealTimeNotifications] & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:115 description:{@"Anchor %@ doesn't use ContextStore but received request to register with context store.", v14}];
  }

  v15 = MEMORY[0x277CFE350];
  v16 = [objc_opt_class() predicateForContextStoreRegistration];
  v17 = [v15 localWakingRegistrationWithIdentifier:v10 contextualPredicate:v16 clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v11];

  [v9 registerCallback:v17];
}

+ (void)registerWithContextStoreForAnchorExitWithCallback:(id)a3 notificationId:(id)a4 registrationPersistenceContext:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  if (([objc_opt_class() usesContextStoreForRealTimeNotifications] & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:130 description:{@"Anchor %@ doesn't use ContextStore but received request to register with context store.", v14}];
  }

  v15 = MEMORY[0x277CFE350];
  v16 = [objc_opt_class() invalidationPredicateForContextStoreRegistration];
  v17 = [v15 localWakingRegistrationWithIdentifier:v10 contextualPredicate:v16 clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v11];

  [v9 registerCallback:v17];
}

+ (void)registerForNotificationsWithoutUsingContextStoreForObserver:(id)a3 enterSelector:(SEL)a4 exitSelector:(SEL)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:144 description:@"Should be implemented by subclasses"];
}

+ (void)unregisterForNotificationsWithoutUsingContextStoreForObserver:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:150 description:@"Should be implemented by subclasses"];
}

+ (id)keyPathForContextStore
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:156 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (id)predicateForContextStoreRegistration
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:162 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (id)invalidationPredicateForContextStoreRegistration
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:168 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (BOOL)shouldProcessContextStoreNotification
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:174 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (BOOL)isActive
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:180 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (id)sampleEvent
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXAnchor.m" lineNumber:186 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (BOOL)shouldProcessContextStoreNotificationForDict
{
  v2 = [MEMORY[0x277CFE318] userContext];
  v3 = [objc_opt_class() keyPathForContextStore];
  v4 = [v2 objectForKeyedSubscript:v3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)shouldProcessContextStoreNotificationForNumber
{
  v2 = [MEMORY[0x277CFE318] userContext];
  v3 = [objc_opt_class() keyPathForContextStore];
  v4 = [v2 objectForKeyedSubscript:v3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CBEB18];
  v8 = a4;
  v9 = [v7 alloc];
  v10 = [objc_opt_class() duetEventsPredicates];
  v11 = [v9 initWithArray:v10];

  [objc_opt_class() supportedDuetDataProviderClass];
  v12 = objc_opt_new();
  v13 = [v11 copy];
  v14 = [v12 fetchEventsBetweenStartDate:v6 andEndDate:v8 withPredicates:v13];

  if ([a1 shouldPredicateOnStartDate])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__ATXAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke;
    v17[3] = &unk_2785A0D70;
    v18 = v6;
    v15 = [v14 _pas_filteredArrayWithTest:v17];
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

BOOL __60__ATXAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 startDate];
  v5 = [v2 earlierDate:v4];
  v6 = [v3 startDate];

  return v5 != v6;
}

+ (int)pbAnchorEventTypeFromDuetEvent:(id)a3
{
  v3 = a3;
  if (([objc_opt_class() anchorType] - 1) > 1 || (v4 = objc_msgSend(v3, "deviceType"), v4 > 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_226872C18[v4];
  }

  return v5;
}

+ (id)anchorTypeToString:(int64_t)a3
{
  if ((a3 - 1) > 0x15)
  {
    return @"UnknownAnchor";
  }

  else
  {
    return off_2785A0D90[a3 - 1];
  }
}

+ (int64_t)stringToAnchorType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BluetoothConnectedAnchor"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"BluetoothDisconnectedAnchor"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"IdleTimeBeginAnchor"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"IdleTimeEndAnchor"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CarPlayConnectedAnchor"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"CarPlayDisconnectedAnchor"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"LOIEntranceAnchor"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"LOIExitAnchor"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"WorkoutStartAnchor"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"WorkoutEndAnchor"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"HeadingHomeAnchor"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"HeadingToWorkAnchor"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"FirstCalendarEventOfDayAnchor"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"LastCalendarEventOfDayAnchor"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"UpcomingSemanticEventAnchor"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"WiredAudioDeviceConnectedAnchor"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"WiredAudioDeviceDisconnectedAnchor"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"ChargerConnectedAnchor"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"MicrolocationVisitAnchor"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"UpcomingCommuteToWorkAnchor"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"UpcomingCommuteFromWorkAnchor"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"GymArrivalAnchor"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)anchorTypeStringToClassName:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [objc_opt_class() stringToAnchorType:v3];

  return [v4 anchorTypeToAnchorClassName:v5];
}

+ (Class)anchorClassFromAnchorTypeString:(id)a3
{
  v4 = a3;
  v5 = [a1 anchorTypeToString:1];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = off_278593200;
LABEL_31:
    v36 = *v7;
    v37 = objc_opt_class();
    goto LABEL_32;
  }

  v8 = [a1 anchorTypeToString:2];
  v9 = [v4 isEqualToString:v8];

  if (v9)
  {
    v7 = off_278593208;
    goto LABEL_31;
  }

  v10 = [a1 anchorTypeToString:4];
  v11 = [v4 isEqualToString:v10];

  if (v11)
  {
    v7 = off_278593908;
    goto LABEL_31;
  }

  v12 = [a1 anchorTypeToString:5];
  v13 = [v4 isEqualToString:v12];

  if (v13)
  {
    v7 = off_278593328;
    goto LABEL_31;
  }

  v14 = [a1 anchorTypeToString:6];
  v15 = [v4 isEqualToString:v14];

  if (v15)
  {
    v7 = off_278593338;
    goto LABEL_31;
  }

  v16 = [a1 anchorTypeToString:16];
  v17 = [v4 isEqualToString:v16];

  if (v17)
  {
    v7 = off_278593140;
    goto LABEL_31;
  }

  v18 = [a1 anchorTypeToString:17];
  v19 = [v4 isEqualToString:v18];

  if (v19)
  {
    v7 = off_278593150;
    goto LABEL_31;
  }

  v20 = [a1 anchorTypeToString:19];
  v21 = [v4 isEqualToString:v20];

  if (v21)
  {
    v7 = off_278593C20;
    goto LABEL_31;
  }

  v22 = [a1 anchorTypeToString:18];
  v23 = [v4 isEqualToString:v22];

  if (v23)
  {
    v7 = off_278593378;
    goto LABEL_31;
  }

  v24 = [a1 anchorTypeToString:7];
  v25 = [v4 isEqualToString:v24];

  if (v25)
  {
    v7 = off_278593A20;
    goto LABEL_31;
  }

  v26 = [a1 anchorTypeToString:8];
  v27 = [v4 isEqualToString:v26];

  if (v27)
  {
    v7 = off_278593A28;
    goto LABEL_31;
  }

  v28 = [a1 anchorTypeToString:3];
  v29 = [v4 isEqualToString:v28];

  if (v29)
  {
    v7 = off_278593900;
    goto LABEL_31;
  }

  v30 = [a1 anchorTypeToString:20];
  v31 = [v4 isEqualToString:v30];

  if (v31)
  {
    v7 = off_2785944D8;
    goto LABEL_31;
  }

  v32 = [a1 anchorTypeToString:21];
  v33 = [v4 isEqualToString:v32];

  if (v33)
  {
    v7 = off_2785944D0;
    goto LABEL_31;
  }

  v34 = [a1 anchorTypeToString:22];
  v35 = [v4 isEqualToString:v34];

  if (v35)
  {
    v7 = off_2785937A8;
    goto LABEL_31;
  }

  v37 = 0;
LABEL_32:

  return v37;
}

+ (id)anchorTypeToAnchorClassName:(int64_t)a3
{
  v4 = a3 - 1;
  if (a3 - 1) <= 0x15 && ((0x3F80FFu >> v4))
  {
    v5 = *off_2785A0E40[v4];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)allAnchorClasses
{
  v20 = objc_autoreleasePoolPush();
  v19 = objc_alloc(MEMORY[0x277CBEB98]);
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v19 initWithObjects:{v18, v17, v16, v15, v14, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v20);

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [objc_opt_class() anchorType];
      v7 = objc_opt_class();

      v8 = v6 == [v7 anchorType];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(ATXAnchor *)self anchorEventIdentifier];
  [v4 setAnchorEventIdentifier:v5];

  return v4;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXAnchor *)self anchorEventIdentifier];
  [v4 encodeObject:v5 forKey:@"codingKeyForAnchorEventId"];
}

- (ATXAnchor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForAnchorEventId"];
  v6 = [(ATXAnchor *)self checkAndReportDecodingFailureIfNeededForid:v5 key:@"codingKeyForAnchorEventId" coder:v4 errorDomain:@"com.apple.proactive.ATXAnchor" errorCode:-1];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ATXAnchor;
    v8 = [(ATXAnchor *)&v11 init];
    v9 = v8;
    if (v8)
    {
      [(ATXAnchor *)v8 setAnchorEventIdentifier:v5];
    }

    self = v9;
    v7 = self;
  }

  return v7;
}

@end