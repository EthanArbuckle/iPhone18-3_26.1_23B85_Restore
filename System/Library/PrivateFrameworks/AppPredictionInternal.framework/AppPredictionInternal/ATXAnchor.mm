@interface ATXAnchor
+ (BOOL)isActive;
+ (BOOL)shouldPredicateOnStartDate;
+ (BOOL)shouldProcessContextStoreNotification;
+ (BOOL)shouldProcessContextStoreNotificationForDict;
+ (BOOL)shouldProcessContextStoreNotificationForNumber;
+ (BOOL)usesContextStoreForRealTimeNotifications;
+ (Class)anchorClassFromAnchorTypeString:(id)string;
+ (Class)supportedDuetDataProviderClass;
+ (NSArray)duetEventsPredicates;
+ (double)durationOfAnchorEvent:(id)event;
+ (double)secondsOfInfluence;
+ (id)allAnchorClasses;
+ (id)anchorOccurenceDateFromDuetEvent:(id)event;
+ (id)anchorTypeStringToClassName:(id)name;
+ (id)anchorTypeToAnchorClassName:(int64_t)name;
+ (id)anchorTypeToString:(int64_t)string;
+ (id)candidateQueryStartDateFromDuetEvent:(id)event;
+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate;
+ (id)filterBlock;
+ (id)invalidationPredicateForContextStoreRegistration;
+ (id)keyPathForContextStore;
+ (id)predicateForContextStoreRegistration;
+ (id)sampleEvent;
+ (int)pbAnchorEventTypeFromDuetEvent:(id)event;
+ (int64_t)anchorType;
+ (int64_t)stringToAnchorType:(id)type;
+ (void)registerForNotificationsWithoutUsingContextStoreForObserver:(id)observer enterSelector:(SEL)selector exitSelector:(SEL)exitSelector;
+ (void)registerWithContextStoreForAnchorEntranceWithCallback:(id)callback notificationId:(id)id registrationPersistenceContext:(id)context;
+ (void)registerWithContextStoreForAnchorExitWithCallback:(id)callback notificationId:(id)id registrationPersistenceContext:(id)context;
+ (void)unregisterForNotificationsWithoutUsingContextStoreForObserver:(id)observer;
- (ATXAnchor)initWithCoder:(id)coder;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)anchorTypeString;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAnchor

+ (Class)supportedDuetDataProviderClass
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:28 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (NSArray)duetEventsPredicates
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:34 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (id)filterBlock
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:40 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (int64_t)anchorType
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:46 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (double)secondsOfInfluence
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:57 description:@"Should be implemented by subclasses"];

  return 0.0;
}

+ (BOOL)shouldPredicateOnStartDate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:63 description:@"Should be implemented by subclasses"];

  return 1;
}

- (id)anchorTypeString
{
  v2 = objc_opt_class();
  anchorType = [objc_opt_class() anchorType];

  return [v2 anchorTypeToString:anchorType];
}

+ (id)anchorOccurenceDateFromDuetEvent:(id)event
{
  eventCopy = event;
  if ([objc_opt_class() shouldPredicateOnStartDate])
  {
    [eventCopy startDate];
  }

  else
  {
    [eventCopy endDate];
  }
  v4 = ;

  return v4;
}

+ (id)candidateQueryStartDateFromDuetEvent:(id)event
{
  eventCopy = event;
  v4 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:eventCopy];

  return v4;
}

+ (double)durationOfAnchorEvent:(id)event
{
  eventCopy = event;
  if ([objc_opt_class() shouldPredicateOnStartDate])
  {
    endDate = [eventCopy endDate];
    startDate = [eventCopy startDate];
    [endDate timeIntervalSinceDate:startDate];
    v8 = v7;

    [self secondsOfInfluence];
    v10 = v9;
    if (v8 >= 1.0 && v8 < v9)
    {
      v10 = v8;
    }
  }

  else
  {
    [self secondsOfInfluence];
    v10 = v11;
  }

  return v10;
}

+ (BOOL)usesContextStoreForRealTimeNotifications
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:106 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (void)registerWithContextStoreForAnchorEntranceWithCallback:(id)callback notificationId:(id)id registrationPersistenceContext:(id)context
{
  contextCopy = context;
  idCopy = id;
  callbackCopy = callback;
  if (([objc_opt_class() usesContextStoreForRealTimeNotifications] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:115 description:{@"Anchor %@ doesn't use ContextStore but received request to register with context store.", v14}];
  }

  v15 = MEMORY[0x277CFE350];
  predicateForContextStoreRegistration = [objc_opt_class() predicateForContextStoreRegistration];
  v17 = [v15 localWakingRegistrationWithIdentifier:idCopy contextualPredicate:predicateForContextStoreRegistration clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:callbackCopy];

  [contextCopy registerCallback:v17];
}

+ (void)registerWithContextStoreForAnchorExitWithCallback:(id)callback notificationId:(id)id registrationPersistenceContext:(id)context
{
  contextCopy = context;
  idCopy = id;
  callbackCopy = callback;
  if (([objc_opt_class() usesContextStoreForRealTimeNotifications] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:130 description:{@"Anchor %@ doesn't use ContextStore but received request to register with context store.", v14}];
  }

  v15 = MEMORY[0x277CFE350];
  invalidationPredicateForContextStoreRegistration = [objc_opt_class() invalidationPredicateForContextStoreRegistration];
  v17 = [v15 localWakingRegistrationWithIdentifier:idCopy contextualPredicate:invalidationPredicateForContextStoreRegistration clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:callbackCopy];

  [contextCopy registerCallback:v17];
}

+ (void)registerForNotificationsWithoutUsingContextStoreForObserver:(id)observer enterSelector:(SEL)selector exitSelector:(SEL)exitSelector
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:144 description:@"Should be implemented by subclasses"];
}

+ (void)unregisterForNotificationsWithoutUsingContextStoreForObserver:(id)observer
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:150 description:@"Should be implemented by subclasses"];
}

+ (id)keyPathForContextStore
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:156 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (id)predicateForContextStoreRegistration
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:162 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (id)invalidationPredicateForContextStoreRegistration
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:168 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (BOOL)shouldProcessContextStoreNotification
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:174 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (BOOL)isActive
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:180 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (id)sampleEvent
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAnchor.m" lineNumber:186 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (BOOL)shouldProcessContextStoreNotificationForDict
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForContextStore = [objc_opt_class() keyPathForContextStore];
  v4 = [userContext objectForKeyedSubscript:keyPathForContextStore];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)shouldProcessContextStoreNotificationForNumber
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForContextStore = [objc_opt_class() keyPathForContextStore];
  v4 = [userContext objectForKeyedSubscript:keyPathForContextStore];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  v7 = MEMORY[0x277CBEB18];
  endDateCopy = endDate;
  v9 = [v7 alloc];
  duetEventsPredicates = [objc_opt_class() duetEventsPredicates];
  v11 = [v9 initWithArray:duetEventsPredicates];

  [objc_opt_class() supportedDuetDataProviderClass];
  v12 = objc_opt_new();
  v13 = [v11 copy];
  v14 = [v12 fetchEventsBetweenStartDate:dateCopy andEndDate:endDateCopy withPredicates:v13];

  if ([self shouldPredicateOnStartDate])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__ATXAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke;
    v17[3] = &unk_2785A0D70;
    v18 = dateCopy;
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

+ (int)pbAnchorEventTypeFromDuetEvent:(id)event
{
  eventCopy = event;
  if (([objc_opt_class() anchorType] - 1) > 1 || (v4 = objc_msgSend(eventCopy, "deviceType"), v4 > 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_226872C18[v4];
  }

  return v5;
}

+ (id)anchorTypeToString:(int64_t)string
{
  if ((string - 1) > 0x15)
  {
    return @"UnknownAnchor";
  }

  else
  {
    return off_2785A0D90[string - 1];
  }
}

+ (int64_t)stringToAnchorType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"BluetoothConnectedAnchor"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"BluetoothDisconnectedAnchor"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"IdleTimeBeginAnchor"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"IdleTimeEndAnchor"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"CarPlayConnectedAnchor"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"CarPlayDisconnectedAnchor"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"LOIEntranceAnchor"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"LOIExitAnchor"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"WorkoutStartAnchor"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"WorkoutEndAnchor"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"HeadingHomeAnchor"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"HeadingToWorkAnchor"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"FirstCalendarEventOfDayAnchor"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"LastCalendarEventOfDayAnchor"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"UpcomingSemanticEventAnchor"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"WiredAudioDeviceConnectedAnchor"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"WiredAudioDeviceDisconnectedAnchor"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"ChargerConnectedAnchor"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"MicrolocationVisitAnchor"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"UpcomingCommuteToWorkAnchor"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"UpcomingCommuteFromWorkAnchor"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"GymArrivalAnchor"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)anchorTypeStringToClassName:(id)name
{
  nameCopy = name;
  v4 = objc_opt_class();
  v5 = [objc_opt_class() stringToAnchorType:nameCopy];

  return [v4 anchorTypeToAnchorClassName:v5];
}

+ (Class)anchorClassFromAnchorTypeString:(id)string
{
  stringCopy = string;
  v5 = [self anchorTypeToString:1];
  v6 = [stringCopy isEqualToString:v5];

  if (v6)
  {
    v7 = off_278593200;
LABEL_31:
    v36 = *v7;
    v37 = objc_opt_class();
    goto LABEL_32;
  }

  v8 = [self anchorTypeToString:2];
  v9 = [stringCopy isEqualToString:v8];

  if (v9)
  {
    v7 = off_278593208;
    goto LABEL_31;
  }

  v10 = [self anchorTypeToString:4];
  v11 = [stringCopy isEqualToString:v10];

  if (v11)
  {
    v7 = off_278593908;
    goto LABEL_31;
  }

  v12 = [self anchorTypeToString:5];
  v13 = [stringCopy isEqualToString:v12];

  if (v13)
  {
    v7 = off_278593328;
    goto LABEL_31;
  }

  v14 = [self anchorTypeToString:6];
  v15 = [stringCopy isEqualToString:v14];

  if (v15)
  {
    v7 = off_278593338;
    goto LABEL_31;
  }

  v16 = [self anchorTypeToString:16];
  v17 = [stringCopy isEqualToString:v16];

  if (v17)
  {
    v7 = off_278593140;
    goto LABEL_31;
  }

  v18 = [self anchorTypeToString:17];
  v19 = [stringCopy isEqualToString:v18];

  if (v19)
  {
    v7 = off_278593150;
    goto LABEL_31;
  }

  v20 = [self anchorTypeToString:19];
  v21 = [stringCopy isEqualToString:v20];

  if (v21)
  {
    v7 = off_278593C20;
    goto LABEL_31;
  }

  v22 = [self anchorTypeToString:18];
  v23 = [stringCopy isEqualToString:v22];

  if (v23)
  {
    v7 = off_278593378;
    goto LABEL_31;
  }

  v24 = [self anchorTypeToString:7];
  v25 = [stringCopy isEqualToString:v24];

  if (v25)
  {
    v7 = off_278593A20;
    goto LABEL_31;
  }

  v26 = [self anchorTypeToString:8];
  v27 = [stringCopy isEqualToString:v26];

  if (v27)
  {
    v7 = off_278593A28;
    goto LABEL_31;
  }

  v28 = [self anchorTypeToString:3];
  v29 = [stringCopy isEqualToString:v28];

  if (v29)
  {
    v7 = off_278593900;
    goto LABEL_31;
  }

  v30 = [self anchorTypeToString:20];
  v31 = [stringCopy isEqualToString:v30];

  if (v31)
  {
    v7 = off_2785944D8;
    goto LABEL_31;
  }

  v32 = [self anchorTypeToString:21];
  v33 = [stringCopy isEqualToString:v32];

  if (v33)
  {
    v7 = off_2785944D0;
    goto LABEL_31;
  }

  v34 = [self anchorTypeToString:22];
  v35 = [stringCopy isEqualToString:v34];

  if (v35)
  {
    v7 = off_2785937A8;
    goto LABEL_31;
  }

  v37 = 0;
LABEL_32:

  return v37;
}

+ (id)anchorTypeToAnchorClassName:(int64_t)name
{
  v4 = name - 1;
  if (name - 1) <= 0x15 && ((0x3F80FFu >> v4))
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      anchorType = [objc_opt_class() anchorType];
      v7 = objc_opt_class();

      v8 = anchorType == [v7 anchorType];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  anchorEventIdentifier = [(ATXAnchor *)self anchorEventIdentifier];
  [v4 setAnchorEventIdentifier:anchorEventIdentifier];

  return v4;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  anchorEventIdentifier = [(ATXAnchor *)self anchorEventIdentifier];
  [coderCopy encodeObject:anchorEventIdentifier forKey:@"codingKeyForAnchorEventId"];
}

- (ATXAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForAnchorEventId"];
  v6 = [(ATXAnchor *)self checkAndReportDecodingFailureIfNeededForid:v5 key:@"codingKeyForAnchorEventId" coder:coderCopy errorDomain:@"com.apple.proactive.ATXAnchor" errorCode:-1];

  if (v6)
  {
    selfCopy = 0;
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
    selfCopy = self;
  }

  return selfCopy;
}

@end