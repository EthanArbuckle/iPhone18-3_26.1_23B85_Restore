@interface HMEventTrigger
+ (BOOL)__validateRecurrences:(id)recurrences;
+ (NSPredicate)predicateForEvaluatingTriggerOccurringAfterSignificantEvent:(HMSignificantTimeEvent *)significantEvent;
+ (NSPredicate)predicateForEvaluatingTriggerOccurringBeforeSignificantEvent:(HMSignificantTimeEvent *)significantEvent;
+ (NSPredicate)predicateForEvaluatingTriggerOccurringBetweenDateWithComponents:(NSDateComponents *)firstDateComponents secondDateWithComponents:(NSDateComponents *)secondDateWithComponents;
+ (NSPredicate)predicateForEvaluatingTriggerOccurringBetweenSignificantEvent:(HMSignificantTimeEvent *)firstSignificantEvent secondSignificantEvent:(HMSignificantTimeEvent *)secondSignificantEvent;
+ (NSPredicate)predicateForEvaluatingTriggerWithCharacteristic:(HMCharacteristic *)characteristic relatedBy:(NSPredicateOperatorType)operatorType toValue:(id)value;
+ (id)_predicateForEvaluatingTriggerOccurringAfterSignificantEvent:(id)event applyingOffset:(id)offset;
+ (id)_predicateForEvaluatingTriggerOccurringBeforeSignificantEvent:(id)event applyingOffset:(id)offset;
+ (id)_predicateForEvaluatingTriggerWithCharacteristic:(id)characteristic value:(id)value valueFormatString:(id)string;
+ (id)createWithDictionary:(id)dictionary home:(id)home;
+ (id)negateOffset:(id)offset;
- (BOOL)_updateCharacteristicReferenceInNewEvent:(id)event;
- (BOOL)compatibleWithApp;
- (BOOL)containsSharedTriggerActivationBits;
- (BOOL)executeOnce;
- (BOOL)mergeFromNewObject:(id)object;
- (BOOL)mergeFromNewObjectForBuilderUpdates:(id)updates;
- (HMEventTrigger)initWithCoder:(id)coder;
- (HMEventTrigger)initWithDictionary:(id)dictionary home:(id)home;
- (HMEventTrigger)initWithName:(NSString *)name events:(NSArray *)events endEvents:(NSArray *)endEvents recurrences:(NSArray *)recurrences predicate:(NSPredicate *)predicate;
- (NSArray)allEvents;
- (NSArray)endEvents;
- (NSArray)events;
- (NSArray)recurrences;
- (NSPredicate)internalPredicate;
- (NSPredicate)predicate;
- (id)_eventsWithDictionaries:(void *)dictionaries home:;
- (id)_serializeForAdd;
- (id)addedEvent:(void *)event home:;
- (id)copyAsBuilder;
- (id)initInternalWithName:(id)name configuredName:(id)configuredName events:(id)events endEvents:(id)endEvents recurrences:(id)recurrences predicate:(id)predicate;
- (unint64_t)activationState;
- (void)__configureWithContext:(id)context home:(id)home;
- (void)_addEvent:(id)event completionHandler:(id)handler;
- (void)_handleAddEventFromResponse:(id)response newEventPayload:(id)payload;
- (void)_handleEventsRemovedFromResponse:(id)response;
- (void)_registerNotificationHandlers;
- (void)_removeEvent:(id)event completionHandler:(id)handler;
- (void)_removeEventsForAccessory:(id)accessory;
- (void)_updateCharacteristicReference;
- (void)_updateEventsFromResponse:(id)response responsePayload:(id)payload;
- (void)_updatePredicate:(id)predicate completionHandler:(id)handler;
- (void)_updateRecurrences:(id)recurrences completionHandler:(id)handler;
- (void)addEvent:(HMEvent *)event completionHandler:(void *)completion;
- (void)handleActivationStateNotification:(id)notification;
- (void)removeEvent:(HMEvent *)event completionHandler:(void *)completion;
- (void)setActivationState:(unint64_t)state;
- (void)setExecuteOnce:(BOOL)once;
- (void)setInternalPredicate:(id)predicate;
- (void)setRecurrences:(id)recurrences;
- (void)updateEndEvents:(NSArray *)endEvents completionHandler:(void *)completion;
- (void)updateEvents:(NSArray *)events completionHandler:(void *)completion;
- (void)updateExecuteOnce:(BOOL)executeOnce completionHandler:(void *)completion;
- (void)updatePredicate:(NSPredicate *)predicate completionHandler:(void *)completion;
- (void)updateRecurrences:(NSArray *)recurrences completionHandler:(void *)completion;
- (void)updateWithBuilder:(id)builder completionHandler:(id)handler;
@end

@implementation HMEventTrigger

- (BOOL)compatibleWithApp
{
  if (dyld_program_sdk_at_least())
  {
    return 1;
  }

  else
  {
    return ![(HMEventTrigger *)self containsSharedTriggerActivationBits];
  }
}

- (BOOL)containsSharedTriggerActivationBits
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(HMEventTrigger *)self executeOnce])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v6;
    v7 = "%{public}@Contains execute once, requires data version 4";
    goto LABEL_4;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  currentEvents = [(HMEventTrigger *)self currentEvents];
  array = [currentEvents array];

  v10 = [array countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(array);
        }

        if (([*(*(&v18 + 1) + 8 * i) isEndEvent] & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }
              }
            }
          }
        }

        goto LABEL_22;
      }

      v11 = [array countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  internalPredicate = [(HMEventTrigger *)self internalPredicate];
  v15 = [HMPredicateUtilities containsPresenceEvents:internalPredicate];

  if (!v15)
  {
    result = 0;
    goto LABEL_23;
  }

  v3 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v6;
    v7 = "%{public}@Contains presence events, requires data version 4";
LABEL_4:
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, v7, buf, 0xCu);
  }

LABEL_5:

  objc_autoreleasePoolPop(v3);
LABEL_22:
  result = 1;
LABEL_23:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_updateCharacteristicReferenceInNewEvent:(id)event
{
  eventCopy = event;
  characteristic = [eventCopy characteristic];
  service = [characteristic service];
  accessory = [service accessory];
  if (accessory)
  {
    home = [(HMTrigger *)self home];
    uuid = [accessory uuid];
    v10 = [home accessoryWithUUID:uuid];

    instanceID = [characteristic instanceID];
    instanceID2 = [service instanceID];
    v13 = [v10 _findCharacteristic:instanceID forService:instanceID2];

    v14 = v13 != 0;
    if (v13)
    {
      [eventCopy setCharacteristic:v13];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)mergeFromNewObjectForBuilderUpdates:(id)updates
{
  updatesCopy = updates;
  v29.receiver = self;
  v29.super_class = HMEventTrigger;
  v5 = [(HMTrigger *)&v29 mergeFromNewObjectForBuilderUpdates:updatesCopy];
  v6 = [HMObjectMergeCollection alloc];
  currentEvents = [(HMEventTrigger *)self currentEvents];
  array = [currentEvents array];
  currentEvents2 = [updatesCopy currentEvents];
  array2 = [currentEvents2 array];
  v11 = [(HMObjectMergeCollection *)v6 initWithCurrentObjects:array newObjects:array2];

  removedObjects = [(HMObjectMergeCollection *)v11 removedObjects];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __54__HMEventTrigger_mergeFromNewObjectForBuilderUpdates___block_invoke;
  v28[3] = &unk_1E75481A0;
  v28[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v28];

  addedObjects = [(HMObjectMergeCollection *)v11 addedObjects];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __54__HMEventTrigger_mergeFromNewObjectForBuilderUpdates___block_invoke_152;
  v27[3] = &unk_1E75481A0;
  v27[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v27];

  [(HMObjectMergeCollection *)v11 mergeCommonObjects];
  if ([(HMObjectMergeCollection *)v11 isModified])
  {
    finalObjects = [(HMObjectMergeCollection *)v11 finalObjects];
    currentEvents3 = [(HMEventTrigger *)self currentEvents];
    [currentEvents3 setArray:finalObjects];

    v5 = 1;
  }

  internalPredicate = [(HMEventTrigger *)self internalPredicate];
  internalPredicate2 = [updatesCopy internalPredicate];
  v18 = HMFEqualObjects();

  if ((v18 & 1) == 0)
  {
    internalPredicate3 = [updatesCopy internalPredicate];
    [(HMEventTrigger *)self setInternalPredicate:internalPredicate3];

    v5 = 1;
  }

  recurrences = [(HMEventTrigger *)self recurrences];
  recurrences2 = [updatesCopy recurrences];
  v22 = HMFEqualObjects();

  if ((v22 & 1) == 0)
  {
    recurrences3 = [updatesCopy recurrences];
    [(HMEventTrigger *)self setRecurrences:recurrences3];

    v5 = 1;
  }

  executeOnce = [(HMEventTrigger *)self executeOnce];
  if (executeOnce != [updatesCopy executeOnce])
  {
    -[HMEventTrigger setExecuteOnce:](self, "setExecuteOnce:", [updatesCopy executeOnce]);
    v5 = 1;
  }

  activationState = [(HMEventTrigger *)self activationState];
  if (activationState != [updatesCopy activationState])
  {
    -[HMEventTrigger setActivationState:](self, "setActivationState:", [updatesCopy activationState]);
    v5 = 1;
  }

  return v5;
}

void __54__HMEventTrigger_mergeFromNewObjectForBuilderUpdates___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed event via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];

  v8 = *MEMORY[0x1E69E9840];
}

void __54__HMEventTrigger_mergeFromNewObjectForBuilderUpdates___block_invoke_152(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added event via merge: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = v3;
  if ([v8 conformsToProtocol:&unk_1F0F13D40])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10 || [*(a1 + 32) _updateCharacteristicReferenceInNewEvent:v10])
  {
    v11 = [*(a1 + 32) context];
    [v8 __configureWithContext:v11 eventTrigger:*(a1 + 32)];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  v33.receiver = self;
  v33.super_class = HMEventTrigger;
  v5 = [(HMTrigger *)&v33 mergeFromNewObject:objectCopy];
  v6 = [HMObjectMergeCollection alloc];
  currentEvents = [(HMEventTrigger *)self currentEvents];
  array = [currentEvents array];
  currentEvents2 = [objectCopy currentEvents];
  array2 = [currentEvents2 array];
  v11 = [(HMObjectMergeCollection *)v6 initWithCurrentObjects:array newObjects:array2];

  removedObjects = [(HMObjectMergeCollection *)v11 removedObjects];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __37__HMEventTrigger_mergeFromNewObject___block_invoke;
  v32[3] = &unk_1E75481A0;
  v32[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v32];

  addedObjects = [(HMObjectMergeCollection *)v11 addedObjects];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __37__HMEventTrigger_mergeFromNewObject___block_invoke_148;
  v31[3] = &unk_1E75481A0;
  v31[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v31];

  [(HMObjectMergeCollection *)v11 mergeCommonObjects];
  if ([(HMObjectMergeCollection *)v11 isModified])
  {
    finalObjects = [(HMObjectMergeCollection *)v11 finalObjects];
    currentEvents3 = [(HMEventTrigger *)self currentEvents];
    [currentEvents3 setArray:finalObjects];

    v5 = 1;
  }

  internalPredicate = [(HMEventTrigger *)self internalPredicate];
  internalPredicate2 = [objectCopy internalPredicate];
  v18 = HMFEqualObjects();

  if ((v18 & 1) == 0)
  {
    internalPredicate3 = [objectCopy internalPredicate];
    [(HMEventTrigger *)self setInternalPredicate:internalPredicate3];

    v5 = 1;
  }

  recurrences = [(HMEventTrigger *)self recurrences];
  recurrences2 = [objectCopy recurrences];
  v22 = HMFEqualObjects();

  if ((v22 & 1) == 0)
  {
    recurrences3 = [objectCopy recurrences];
    [(HMEventTrigger *)self setRecurrences:recurrences3];

    v5 = 1;
  }

  executeOnce = [(HMEventTrigger *)self executeOnce];
  if (executeOnce != [objectCopy executeOnce])
  {
    -[HMEventTrigger setExecuteOnce:](self, "setExecuteOnce:", [objectCopy executeOnce]);
    v5 = 1;
  }

  activationState = [(HMEventTrigger *)self activationState];
  if (activationState != [objectCopy activationState])
  {
    -[HMEventTrigger setActivationState:](self, "setActivationState:", [objectCopy activationState]);
    goto LABEL_13;
  }

  if (v5)
  {
LABEL_13:
    context = [(HMTrigger *)self context];
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__HMEventTrigger_mergeFromNewObject___block_invoke_149;
    block[3] = &unk_1E754E2A8;
    block[4] = self;
    dispatch_async(queue, block);

    v26 = 1;
    goto LABEL_14;
  }

  v26 = 0;
LABEL_14:

  return v26;
}

void __37__HMEventTrigger_mergeFromNewObject___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed event via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];

  v8 = *MEMORY[0x1E69E9840];
}

void __37__HMEventTrigger_mergeFromNewObject___block_invoke_148(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added event via merge: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = v3;
  if ([v8 conformsToProtocol:&unk_1F0F13D40])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10 || [*(a1 + 32) _updateCharacteristicReferenceInNewEvent:v10])
  {
    v11 = [*(a1 + 32) context];
    [v8 __configureWithContext:v11 eventTrigger:*(a1 + 32)];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __37__HMEventTrigger_mergeFromNewObject___block_invoke_149(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  [v2 _notifyDelegateOfTriggerUpdated:*(a1 + 32)];
}

- (HMEventTrigger)initWithCoder:(id)coder
{
  v27[9] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = HMEventTrigger;
  v5 = [(HMTrigger *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v27[2] = objc_opt_class();
    v27[3] = objc_opt_class();
    v27[4] = objc_opt_class();
    v27[5] = objc_opt_class();
    v27[6] = objc_opt_class();
    v27[7] = objc_opt_class();
    v27[8] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:9];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HM.eventTriggerEvents"];

    v10 = [HMMutableArray arrayWithArray:v9];
    currentEvents = v5->_currentEvents;
    v5->_currentEvents = v10;

    v12 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"HM.eventTriggerCondition"];
    internalPredicate = v5->_internalPredicate;
    v5->_internalPredicate = v15;

    v17 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v19 = [v17 setWithArray:v18];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"HM.eventTriggerRecurrences"];
    recurrences = v5->_recurrences;
    v5->_recurrences = v20;

    v5->_activationState = [coderCopy decodeIntegerForKey:@"kEventTriggerActivationStateKey"];
    *(&v5->_executeOnce + 4) = [coderCopy decodeBoolForKey:@"kEventTriggerExecuteOnce"];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)handleActivationStateNotification:(id)notification
{
  v4 = [notification numberForKey:@"kEventTriggerActivationStateKey"];
  integerValue = [v4 integerValue];

  [(HMEventTrigger *)self setActivationState:integerValue];
  home = [(HMTrigger *)self home];
  [home _notifyDelegateOfTriggerUpdated:self];
}

- (void)_handleEventsRemovedFromResponse:(id)response
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [response hmf_arrayForKey:@"kUUIDsOfEventsKey"];
  v5 = v4;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:*(*(&v15 + 1) + 8 * v9)];
          currentEvents = [(HMEventTrigger *)self currentEvents];
          v12 = [currentEvents firstItemWithUUID:v10];

          if (v12)
          {
            currentEvents2 = [(HMEventTrigger *)self currentEvents];
            [currentEvents2 removeObject:v12];

            [v12 _unconfigure];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_updateEventsFromResponse:(id)response responsePayload:(id)payload
{
  v47 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  payloadCopy = payload;
  v7 = [payloadCopy hmf_BOOLForKey:@"kEventTriggerEndEvent"];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  currentEvents = [(HMEventTrigger *)self currentEvents];
  array = [currentEvents array];

  v10 = [array countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(array);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        if (v7 == [v14 isEndEvent])
        {
          currentEvents2 = [(HMEventTrigger *)self currentEvents];
          [currentEvents2 removeObject:v14];
        }
      }

      v11 = [array countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v11);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = responseCopy;
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v33 + 1) + 8 * j);
        currentEvents3 = [(HMEventTrigger *)self currentEvents];
        [currentEvents3 replaceObject:v21];

        [v21 setEndEvent:v7];
        context = [(HMTrigger *)self context];
        [v21 __configureWithContext:context eventTrigger:self];

        v24 = v21;
        if ([v24 conformsToProtocol:&unk_1F0F13D40])
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;

        if (v26 && ![(HMEventTrigger *)self _updateCharacteristicReferenceInNewEvent:v26])
        {

          goto LABEL_26;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v27 = objc_autoreleasePoolPush();
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    allEvents = [(HMEventTrigger *)self allEvents];
    *buf = 138543618;
    v42 = v29;
    v43 = 2112;
    v44 = allEvents;
    _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@handleEventsUpdatedNotification: current events: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
LABEL_26:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)_handleAddEventFromResponse:(id)response newEventPayload:(id)payload
{
  responseCopy = response;
  payloadCopy = payload;
  v18 = responseCopy;
  if (v18)
  {
    [v18 setEndEvent:{objc_msgSend(payloadCopy, "hmf_BOOLForKey:", @"kEventTriggerEndEvent"}];
    v8 = v18;
  }

  else
  {
    home = [(HMTrigger *)self home];
    v8 = [(HMEventTrigger *)self addedEvent:payloadCopy home:home];

    if (!v8)
    {
      goto LABEL_11;
    }
  }

  v10 = v8;
  v11 = [v10 conformsToProtocol:&unk_1F0F13D40];
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v11 || (v14 = [(HMEventTrigger *)self _updateCharacteristicReferenceInNewEvent:v10], v15 = v10, v14))
  {
    currentEvents = [(HMEventTrigger *)self currentEvents];
    [currentEvents replaceObject:v10];

    context = [(HMTrigger *)self context];
    [v10 __configureWithContext:context eventTrigger:self];

    v15 = v13;
  }

LABEL_11:
}

- (id)addedEvent:(void *)event home:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  eventCopy = event;
  if (self)
  {
    v7 = [v5 hmf_stringForKey:@"kEventTriggerTypeKey"];
    if ([v7 isEqualToString:@"kEventTriggerTypeCharacteristicEventKey"])
    {
      v8 = HMCharacteristicEvent;
    }

    else if ([v7 isEqualToString:@"kEventTriggerTypeLocationEventKey"])
    {
      v8 = HMLocationEvent;
    }

    else if ([v7 isEqualToString:@"kEventTriggerTypeCalendarEventKey"])
    {
      v8 = HMCalendarEvent;
    }

    else if ([v7 isEqualToString:@"kEventTriggerTypeSignificantTimeEventKey"])
    {
      v8 = HMSignificantTimeEvent;
    }

    else if ([v7 isEqualToString:@"kEventTriggerTypeCharacteristicThresholdRangeEventKey"])
    {
      v8 = HMCharacteristicThresholdRangeEvent;
    }

    else if ([v7 isEqualToString:@"kEventTriggerTypePresenceEventKey"])
    {
      v8 = HMPresenceEvent;
    }

    else if ([v7 isEqualToString:@"kEventTriggerTypeDurationEventKey"])
    {
      v8 = HMDurationEvent;
    }

    else
    {
      if (![v7 isEqualToString:@"kEventTriggerTypeMatterAttributeEventKey"])
      {
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = HMFGetLogIdentifier();
          v15 = 138543874;
          v16 = v14;
          v17 = 2112;
          v18 = objc_opt_class();
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, invalid event type '%@'", &v15, 0x20u);
        }

        objc_autoreleasePoolPop(v11);
        self = 0;
        goto LABEL_19;
      }

      v8 = HMMatterAttributeEvent;
    }

    self = [(__objc2_class *)v8 createWithDictionary:v5 home:eventCopy];
LABEL_19:
  }

  v9 = *MEMORY[0x1E69E9840];

  return self;
}

- (void)_registerNotificationHandlers
{
  v5.receiver = self;
  v5.super_class = HMEventTrigger;
  [(HMTrigger *)&v5 _registerNotificationHandlers];
  context = [(HMTrigger *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"kEventTriggerActivationStateNotificationKey" receiver:self selector:sel_handleActivationStateNotification_];
}

- (id)_serializeForAdd
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v32.receiver = self;
  v32.super_class = HMEventTrigger;
  _serializeForAdd = [(HMTrigger *)&v32 _serializeForAdd];
  v5 = [v3 dictionaryWithDictionary:_serializeForAdd];

  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  events = [(HMEventTrigger *)self events];
  v8 = [events copy];

  v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        _serializeForAdd2 = [*(*(&v28 + 1) + 8 * i) _serializeForAdd];
        v14 = _serializeForAdd2;
        if (_serializeForAdd2)
        {
          v15 = [_serializeForAdd2 objectForKeyedSubscript:@"kEventTriggerTypeKey"];

          if (v15)
          {
            [array addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  v16 = [array copy];
  [v5 setObject:v16 forKeyedSubscript:@"kEventTriggerEventsKey"];

  internalPredicate = [(HMEventTrigger *)self internalPredicate];

  if (internalPredicate)
  {
    v27 = 0;
    predicate = [(HMEventTrigger *)self predicate];
    v19 = [HMPredicateUtilities rewritePredicateForDaemon:predicate characteristicIsInvalid:&v27];

    v20 = encodeRootObject(v19);
    [v5 setObject:v20 forKeyedSubscript:@"kEventTriggerConditionKey"];
  }

  recurrences = [(HMEventTrigger *)self recurrences];

  if (recurrences)
  {
    recurrences2 = [(HMEventTrigger *)self recurrences];
    v23 = encodeRootObject(recurrences2);
    [v5 setObject:v23 forKeyedSubscript:@"kEventTriggerRecurrencesKey"];
  }

  v24 = [v5 copy];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)_removeEventsForAccessory:(id)accessory
{
  v33 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(HMEventTrigger *)self allEvents];
  v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;

        if (v10)
        {
          characteristic = [v10 characteristic];
          service = [characteristic service];

          if (service)
          {
            targetAccessoryUUID = [service targetAccessoryUUID];
            uuid = [accessoryCopy uuid];
            v15 = [targetAccessoryUUID hmf_isEqualToUUID:uuid];

            if (v15)
            {
              [array addObject:v8];
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v5);
  }

  currentEvents = [(HMEventTrigger *)self currentEvents];
  [currentEvents removeObjectsInArray:array];

  home = [(HMTrigger *)self home];
  delegate = [home delegate];

  if ([array count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    context = [(HMTrigger *)self context];
    delegateCaller = [context delegateCaller];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __44__HMEventTrigger__removeEventsForAccessory___block_invoke;
    v25[3] = &unk_1E754E5C0;
    v26 = delegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v25];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __44__HMEventTrigger__removeEventsForAccessory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) home];
  [v2 home:v3 didUpdateTrigger:*(a1 + 40)];
}

void __55__HMEventTrigger__updateExecuteOnce_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v15 = 138544130;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Update event trigger execute once response : %@, completionHandler: %@ error %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5)
  {
    if (v6)
    {
      v13 = [v6 hmf_BOOLForKey:@"kEventTriggerExecuteOnce"];
    }

    else
    {
      v13 = 0;
    }

    [v9 setExecuteOnce:v13];
  }

  [v9 _updateClientWithResults:*(a1 + 32) withError:v5];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)updateExecuteOnce:(BOOL)executeOnce completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = completion;
  context = [(HMTrigger *)self context];
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMEventTrigger updateExecuteOnce:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v8 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__HMEventTrigger_updateExecuteOnce_completionHandler___block_invoke;
    block[3] = &unk_1E7548108;
    block[4] = self;
    v24 = executeOnce;
    v23 = v6;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v13;
      v27 = 2080;
      v28 = "[HMEventTrigger updateExecuteOnce:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_updateRecurrences:(id)recurrences completionHandler:(id)handler
{
  v38[1] = *MEMORY[0x1E69E9840];
  recurrencesCopy = recurrences;
  handlerCopy = handler;
  home = [(HMTrigger *)self home];
  if (!home)
  {
    context = [(HMTrigger *)self context];
    delegateCaller = [context delegateCaller];
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    goto LABEL_9;
  }

  if (recurrencesCopy)
  {
    if ([HMEventTrigger __validateRecurrences:recurrencesCopy])
    {
      v9 = encodeRootObject(recurrencesCopy);
      v10 = v9;
      if (v9)
      {
        v37 = @"kEventTriggerRecurrencesKey";
        v38[0] = v9;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_12;
    }

    context = [(HMTrigger *)self context];
    delegateCaller = [context delegateCaller];
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:3 userInfo:0];
LABEL_9:
    v15 = v14;
    [delegateCaller callCompletion:handlerCopy error:v14];

    goto LABEL_18;
  }

  v11 = 0;
LABEL_12:
  context2 = [(HMTrigger *)self context];
  if (context2)
  {
    v17 = MEMORY[0x1E69A2A10];
    v18 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMTrigger *)self uuid];
    v20 = [v18 initWithTarget:uuid];
    v21 = [v17 messageWithName:@"kUpdateEventTriggerRecurrencesRequestKey" destination:v20 payload:v11];

    objc_initWeak(location, self);
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __55__HMEventTrigger__updateRecurrences_completionHandler___block_invoke;
    v31 = &unk_1E754CFF8;
    objc_copyWeak(&v33, location);
    v32 = handlerCopy;
    [v21 setResponseHandler:&v28];
    messageDispatcher = [context2 messageDispatcher];
    [messageDispatcher sendMessage:v21 completionHandler:0];

    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v26;
      v35 = 2080;
      v36 = "[HMEventTrigger _updateRecurrences:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
  }

LABEL_18:
  v27 = *MEMORY[0x1E69E9840];
}

void __55__HMEventTrigger__updateRecurrences_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v15 = 138544130;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Update event trigger recurrences response : %@, completionHandler: %@ error %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5)
  {
    if (v6)
    {
      v13 = [v6 arrayOfDateComponentsFromDataForKey:@"kEventTriggerRecurrencesKey"];
      [v9 setRecurrences:v13];
    }

    else
    {
      [v9 setRecurrences:0];
    }
  }

  [v9 _updateClientWithResults:*(a1 + 32) withError:v5];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)updateRecurrences:(NSArray *)recurrences completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = recurrences;
  v7 = completion;
  context = [(HMTrigger *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMEventTrigger updateRecurrences:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__HMEventTrigger_updateRecurrences_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2080;
      v29 = "[HMEventTrigger updateRecurrences:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updatePredicate:(id)predicate completionHandler:(id)handler
{
  v37[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  handlerCopy = handler;
  home = [(HMTrigger *)self home];
  if (!home)
  {
    context = [(HMTrigger *)self context];
    delegateCaller = [context delegateCaller];
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    goto LABEL_9;
  }

  if (predicateCopy)
  {
    if ([HMPredicateUtilities validatePredicate:predicateCopy])
    {
      location[0] = 0;
      v9 = [HMPredicateUtilities rewritePredicateForDaemon:predicateCopy characteristicIsInvalid:location];

      if (v9)
      {
        v36 = @"kEventTriggerConditionKey";
        v10 = encodeRootObject(v9);
        v37[0] = v10;
        predicateCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      }

      else
      {
        predicateCopy = 0;
      }

      goto LABEL_11;
    }

    context = [(HMTrigger *)self context];
    delegateCaller = [context delegateCaller];
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:3 userInfo:0];
LABEL_9:
    v14 = v13;
    [delegateCaller callCompletion:handlerCopy error:v13];

    goto LABEL_17;
  }

  v9 = 0;
LABEL_11:
  context2 = [(HMTrigger *)self context];
  if (context2)
  {
    v16 = MEMORY[0x1E69A2A10];
    v17 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMTrigger *)self uuid];
    v19 = [v17 initWithTarget:uuid];
    v20 = [v16 messageWithName:@"kUpdateEventTriggerConditionRequestKey" destination:v19 payload:predicateCopy];

    objc_initWeak(location, self);
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __53__HMEventTrigger__updatePredicate_completionHandler___block_invoke;
    v30 = &unk_1E754CFF8;
    objc_copyWeak(&v32, location);
    v31 = handlerCopy;
    [v20 setResponseHandler:&v27];
    messageDispatcher = [context2 messageDispatcher];
    [messageDispatcher sendMessage:v20 completionHandler:0];

    objc_destroyWeak(&v32);
    objc_destroyWeak(location);
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v25;
      v34 = 2080;
      v35 = "[HMEventTrigger _updatePredicate:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }

  predicateCopy = v9;
LABEL_17:

  v26 = *MEMORY[0x1E69E9840];
}

void __53__HMEventTrigger__updatePredicate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v15 = 138544130;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Update event trigger condition response : %@, completionHandler: %@ error %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5)
  {
    if (v6)
    {
      v13 = [v6 predicateFromDataForKey:@"kEventTriggerConditionKey"];
      [v9 setInternalPredicate:v13];
    }

    else
    {
      [v9 setInternalPredicate:0];
    }
  }

  [v9 _updateClientWithResults:*(a1 + 32) withError:v5];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)updatePredicate:(NSPredicate *)predicate completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = predicate;
  v7 = completion;
  context = [(HMTrigger *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMEventTrigger updatePredicate:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__HMEventTrigger_updatePredicate_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2080;
      v29 = "[HMEventTrigger updatePredicate:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updateCharacteristicReference
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating characteristic references in the events and predicate", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allEvents = [(HMEventTrigger *)self allEvents];
  v7 = [allEvents countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    v10 = &selRef_hm_generateSHA256;
    v24 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(allEvents);
        }

        v12 = v10[37];
        v13 = *(*(&v25 + 1) + 8 * i);
        if ([v13 conformsToProtocol:v12])
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15 && ![(HMEventTrigger *)self _updateCharacteristicReferenceInNewEvent:v15])
        {
          v16 = objc_autoreleasePoolPush();
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v18 = v10;
            v19 = allEvents;
            v21 = v20 = self;
            uuid = [v13 uuid];
            *buf = 138543618;
            v30 = v21;
            v31 = 2112;
            v32 = uuid;
            _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Failed to update the characteristic reference for event %@", buf, 0x16u);

            self = v20;
            allEvents = v19;
            v10 = v18;
            v9 = v24;
          }

          objc_autoreleasePoolPop(v16);
        }
      }

      v8 = [allEvents countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __59__HMEventTrigger__updateEvents_endEvent_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v14 = 138544130;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Update events to event trigger response : %@, completionHandler: %@ error %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5 && v6)
  {
    [v9 _updateEventsFromResponse:*(*(*(a1 + 40) + 8) + 40) responsePayload:v6];
  }

  [v9 _updateClientWithResults:*(a1 + 32) withError:v5];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updateEndEvents:(NSArray *)endEvents completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = endEvents;
  v7 = completion;
  context = [(HMTrigger *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMEventTrigger updateEndEvents:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__HMEventTrigger_updateEndEvents_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2080;
      v29 = "[HMEventTrigger updateEndEvents:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)updateEvents:(NSArray *)events completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = events;
  v7 = completion;
  context = [(HMTrigger *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMEventTrigger updateEvents:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__HMEventTrigger_updateEvents_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2080;
      v29 = "[HMEventTrigger updateEvents:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_removeEvent:(id)event completionHandler:(id)handler
{
  v37[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  handlerCopy = handler;
  home = [(HMTrigger *)self home];
  if (home)
  {
    v36 = @"kEventUUIDKey";
    uuid = [eventCopy uuid];
    uUIDString = [uuid UUIDString];
    v37[0] = uUIDString;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];

    context = [(HMTrigger *)self context];
    if (context)
    {
      v13 = MEMORY[0x1E69A2A10];
      v14 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid2 = [(HMTrigger *)self uuid];
      v16 = [v14 initWithTarget:uuid2];
      v17 = [v13 messageWithName:@"kRemoveEventFromEventTriggerRequestKey" destination:v16 payload:v11];

      objc_initWeak(location, self);
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __49__HMEventTrigger__removeEvent_completionHandler___block_invoke;
      v30 = &unk_1E754CFF8;
      objc_copyWeak(&v32, location);
      v31 = handlerCopy;
      [v17 setResponseHandler:&v27];
      messageDispatcher = [context messageDispatcher];
      [messageDispatcher sendMessage:v17 completionHandler:0];

      objc_destroyWeak(&v32);
      objc_destroyWeak(location);
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v25;
        v34 = 2080;
        v35 = "[HMEventTrigger _removeEvent:completionHandler:]";
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }
  }

  else
  {
    context2 = [(HMTrigger *)self context];
    delegateCaller = [context2 delegateCaller];
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    [delegateCaller callCompletion:handlerCopy error:v21];
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __49__HMEventTrigger__removeEvent_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v14 = 138544130;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Remove event from event trigger response : %@, completionHandler: %@ error %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5 && v6)
  {
    [v9 _handleEventsRemovedFromResponse:v6];
  }

  [v9 _updateClientWithResults:*(a1 + 32) withError:v5];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)removeEvent:(HMEvent *)event completionHandler:(void *)completion
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = event;
  v7 = completion;
  context = [(HMTrigger *)self context];
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMEventTrigger removeEvent:completionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v9 = context;
  if (!context)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v14;
      v29 = 2080;
      v30 = "[HMEventTrigger removeEvent:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    goto LABEL_9;
  }

  if (!v6)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:3 userInfo:0];
LABEL_9:
    v16 = v15;
    v7[2](v7, v15);

    goto LABEL_10;
  }

  queue = [context queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HMEventTrigger_removeEvent_completionHandler___block_invoke;
  block[3] = &unk_1E754E0F8;
  block[4] = self;
  v25 = v6;
  v26 = v7;
  dispatch_async(queue, block);

LABEL_10:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)_addEvent:(id)event completionHandler:(id)handler
{
  v44[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  handlerCopy = handler;
  home = [(HMTrigger *)self home];
  if (home)
  {
    _serializeForAdd = [eventCopy _serializeForAdd];
    v10 = [_serializeForAdd mutableCopy];

    if (v10)
    {
      v43 = @"kEventTriggerEventsKey";
      v11 = [v10 copy];
      v44[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];

      context = [(HMTrigger *)self context];
      if (context)
      {
        v14 = MEMORY[0x1E69A2A10];
        v15 = objc_alloc(MEMORY[0x1E69A2A00]);
        uuid = [(HMTrigger *)self uuid];
        v17 = [v15 initWithTarget:uuid];
        v18 = [v14 messageWithName:@"kAddEventToEventTriggerRequestKey" destination:v17 payload:v12];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v40 = __Block_byref_object_copy__17070;
        v41 = __Block_byref_object_dispose__17071;
        v42 = eventCopy;
        objc_initWeak(&location, self);
        v31 = MEMORY[0x1E69E9820];
        v32 = 3221225472;
        v33 = __46__HMEventTrigger__addEvent_completionHandler___block_invoke;
        v34 = &unk_1E75480D8;
        objc_copyWeak(&v37, &location);
        v35 = handlerCopy;
        v36 = buf;
        [v18 setResponseHandler:&v31];
        messageDispatcher = [context messageDispatcher];
        [messageDispatcher sendMessage:v18 completionHandler:0];

        objc_destroyWeak(&v37);
        objc_destroyWeak(&location);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        selfCopy = self;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v29;
          *&buf[12] = 2080;
          *&buf[14] = "[HMEventTrigger _addEvent:completionHandler:]";
          _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
      }
    }

    else
    {
      context2 = [(HMTrigger *)self context];
      delegateCaller = [context2 delegateCaller];
      v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:3 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v25];
    }
  }

  else
  {
    context3 = [(HMTrigger *)self context];
    delegateCaller2 = [context3 delegateCaller];
    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    [delegateCaller2 callCompletion:handlerCopy error:v22];
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __46__HMEventTrigger__addEvent_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v14 = 138544130;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Add event to event trigger response : %@, completionHandler: %@ error %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5 && v6)
  {
    [v9 _handleAddEventFromResponse:*(*(*(a1 + 40) + 8) + 40) newEventPayload:v6];
  }

  [v9 _updateClientWithResults:*(a1 + 32) withError:v5];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addEvent:(HMEvent *)event completionHandler:(void *)completion
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = event;
  v7 = completion;
  context = [(HMTrigger *)self context];
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMEventTrigger addEvent:completionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v9 = context;
  if (!context)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v14;
      v29 = 2080;
      v30 = "[HMEventTrigger addEvent:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    goto LABEL_9;
  }

  if (!v6)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:3 userInfo:0];
LABEL_9:
    v16 = v15;
    v7[2](v7, v15);

    goto LABEL_10;
  }

  queue = [context queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__HMEventTrigger_addEvent_completionHandler___block_invoke;
  block[3] = &unk_1E754E0F8;
  block[4] = self;
  v25 = v6;
  v26 = v7;
  dispatch_async(queue, block);

LABEL_10:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)setActivationState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_activationState = state;

  os_unfair_lock_unlock(&self->super._lock);
}

- (unint64_t)activationState
{
  os_unfair_lock_lock_with_options();
  activationState = self->_activationState;
  os_unfair_lock_unlock(&self->super._lock);
  return activationState;
}

- (void)setExecuteOnce:(BOOL)once
{
  os_unfair_lock_lock_with_options();
  *(&self->_executeOnce + 4) = once;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)executeOnce
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_executeOnce + 4);
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setRecurrences:(id)recurrences
{
  recurrencesCopy = recurrences;
  os_unfair_lock_lock_with_options();
  v4 = [recurrencesCopy copy];
  recurrences = self->_recurrences;
  self->_recurrences = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSArray)recurrences
{
  os_unfair_lock_lock_with_options();
  v3 = self->_recurrences;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setInternalPredicate:(id)predicate
{
  predicateCopy = predicate;
  os_unfair_lock_lock_with_options();
  v4 = [predicateCopy copy];
  internalPredicate = self->_internalPredicate;
  self->_internalPredicate = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSPredicate)internalPredicate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_internalPredicate;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (NSPredicate)predicate
{
  internalPredicate = [(HMEventTrigger *)self internalPredicate];
  home = [(HMTrigger *)self home];
  v5 = [HMPredicateUtilities rewritePredicateForClient:internalPredicate home:home];

  return v5;
}

- (NSArray)allEvents
{
  currentEvents = [(HMEventTrigger *)self currentEvents];
  array = [currentEvents array];

  return array;
}

- (NSArray)endEvents
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  currentEvents = [(HMEventTrigger *)self currentEvents];
  array2 = [currentEvents array];

  v6 = [array2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(array2);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isEndEvent])
        {
          [array addObject:v10];
        }
      }

      v7 = [array2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return array;
}

- (NSArray)events
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  currentEvents = [(HMEventTrigger *)self currentEvents];
  array2 = [currentEvents array];

  v6 = [array2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(array2);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v10 isEndEvent] & 1) == 0)
        {
          [array addObject:v10];
        }
      }

      v7 = [array2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)__configureWithContext:(id)context home:(id)home
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = HMEventTrigger;
  [(HMTrigger *)&v17 __configureWithContext:contextCopy home:home];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allEvents = [(HMEventTrigger *)self allEvents];
  v8 = [allEvents countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(allEvents);
        }

        [*(*(&v13 + 1) + 8 * v11++) __configureWithContext:contextCopy eventTrigger:self];
      }

      while (v9 != v11);
      v9 = [allEvents countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (HMEventTrigger)initWithDictionary:(id)dictionary home:(id)home
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v38.receiver = self;
  v38.super_class = HMEventTrigger;
  v8 = [(HMTrigger *)&v38 initWithDictionary:dictionaryCopy home:homeCopy];
  if (v8)
  {
    v9 = [dictionaryCopy hmf_numberForKey:@"kEventTriggerRecurrencesKey"];
    v10 = v9;
    if (v9)
    {
      HMDaysOfTheWeekToDateComponents([v9 unsignedIntegerValue]);
    }

    else
    {
      [dictionaryCopy arrayOfDateComponentsFromDataForKey:@"kEventTriggerRecurrencesKey"];
    }
    v11 = ;
    recurrences = v8->_recurrences;
    v8->_recurrences = v11;

    *(&v8->_executeOnce + 4) = [dictionaryCopy hmf_BOOLForKey:@"kEventTriggerExecuteOnce"];
    v13 = [dictionaryCopy predicateFromDataForKey:@"kEventTriggerConditionKey"];
    internalPredicate = v8->_internalPredicate;
    v8->_internalPredicate = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [dictionaryCopy hmf_arrayForKey:@"kEventTriggerEventsKey" ofClasses:v15];
    v17 = [(HMEventTrigger *)v8 _eventsWithDictionaries:v16 home:homeCopy];

    if (v17)
    {
      v18 = [dictionaryCopy hmf_arrayForKey:@"kEventTriggerEndEventsKey" ofClasses:v15];
      v19 = [(HMEventTrigger *)v8 _eventsWithDictionaries:v18 home:homeCopy];

      if (v19)
      {
        v32 = v17;
        v33 = v10;
        v20 = [v17 mutableCopy];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v21 = v19;
        v22 = [v21 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v35;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v35 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v34 + 1) + 8 * i);
              [v26 setEndEvent:1];
              [v20 addObject:v26];
            }

            v23 = [v21 countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v23);
        }

        v27 = [HMMutableArray arrayWithArray:v20];
        currentEvents = v8->_currentEvents;
        v8->_currentEvents = v27;

        goto LABEL_15;
      }
    }

    v29 = 0;
    goto LABEL_18;
  }

LABEL_15:
  v29 = v8;
LABEL_18:

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)_eventsWithDictionaries:(void *)dictionaries home:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  dictionariesCopy = dictionaries;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(HMEventTrigger *)self addedEvent:dictionariesCopy home:?];
        if (!v13)
        {

          v15 = 0;
          goto LABEL_11;
        }

        v14 = v13;
        [v7 addObject:{v13, v18}];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v7 copy];
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)initInternalWithName:(id)name configuredName:(id)configuredName events:(id)events endEvents:(id)endEvents recurrences:(id)recurrences predicate:(id)predicate
{
  eventsCopy = events;
  endEventsCopy = endEvents;
  recurrencesCopy = recurrences;
  predicateCopy = predicate;
  v26.receiver = self;
  v26.super_class = HMEventTrigger;
  v18 = [(HMTrigger *)&v26 initWithName:name configuredName:configuredName];
  if (v18)
  {
    v19 = [HMMutableArray arrayWithArray:eventsCopy];
    currentEvents = v18->_currentEvents;
    v18->_currentEvents = v19;

    [(HMMutableArray *)v18->_currentEvents addObjectsFromArray:endEventsCopy];
    v21 = [predicateCopy copy];
    internalPredicate = v18->_internalPredicate;
    v18->_internalPredicate = v21;

    v23 = [recurrencesCopy copy];
    recurrences = v18->_recurrences;
    v18->_recurrences = v23;

    v18->_activationState = 0;
  }

  return v18;
}

- (HMEventTrigger)initWithName:(NSString *)name events:(NSArray *)events endEvents:(NSArray *)endEvents recurrences:(NSArray *)recurrences predicate:(NSPredicate *)predicate
{
  v12 = name;
  v13 = events;
  v14 = endEvents;
  v15 = recurrences;
  v16 = predicate;
  if (!v13 || (v17 = v16, ![HMEventTrigger __validateRecurrences:v15]) || ![HMPredicateUtilities validatePredicate:v17])
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = [MEMORY[0x1E696ABC0] hmStringFromErrorCode:3];
    v23 = [v20 exceptionWithName:v21 reason:v22 userInfo:0];
    v24 = v23;

    objc_exception_throw(v23);
  }

  v18 = [(HMEventTrigger *)self initInternalWithName:v12 configuredName:v12 events:v13 endEvents:v14 recurrences:v15 predicate:v17];

  return v18;
}

+ (id)createWithDictionary:(id)dictionary home:(id)home
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy hmf_stringForKey:@"kTriggerName"];
  if (v5)
  {
    v6 = [dictionaryCopy hmf_stringForKey:@"HMT.triggerConfiguredNameKey"];
    v7 = [dictionaryCopy arrayOfDateComponentsFromDataForKey:@"kEventTriggerRecurrencesKey"];
    v8 = [dictionaryCopy predicateFromDataForKey:@"kEventTriggerConditionKey"];
    v9 = [HMEventTrigger alloc];
    v10 = [(HMEventTrigger *)v9 initInternalWithName:v5 configuredName:v6 events:MEMORY[0x1E695E0F0] endEvents:MEMORY[0x1E695E0F0] recurrences:v7 predicate:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_predicateForEvaluatingTriggerWithCharacteristic:(id)characteristic value:(id)value valueFormatString:(id)string
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AE18];
  stringCopy = string;
  valueCopy = value;
  characteristic = [v7 predicateWithFormat:@"%K = %@", @"characteristic", characteristic];
  valueCopy = [MEMORY[0x1E696AE18] predicateWithFormat:stringCopy, @"characteristicValue", valueCopy];

  v12 = MEMORY[0x1E696AB28];
  v17[0] = characteristic;
  v17[1] = valueCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (NSPredicate)predicateForEvaluatingTriggerWithCharacteristic:(HMCharacteristic *)characteristic relatedBy:(NSPredicateOperatorType)operatorType toValue:(id)value
{
  v7 = characteristic;
  v8 = value;
  if (operatorType >= NSMatchesPredicateOperatorType)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%tu is not a supported operation type", operatorType}];
    v9 = 0;
  }

  else
  {
    v9 = [HMEventTrigger _predicateForEvaluatingTriggerWithCharacteristic:v7 value:v8 valueFormatString:off_1E75481C0[operatorType]];
  }

  return v9;
}

+ (NSPredicate)predicateForEvaluatingTriggerOccurringBetweenDateWithComponents:(NSDateComponents *)firstDateComponents secondDateWithComponents:(NSDateComponents *)secondDateWithComponents
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = firstDateComponents;
  v6 = secondDateWithComponents;
  v7 = [HMEventTrigger predicateForEvaluatingTriggerOccurringAfterDateWithComponents:v5];
  v8 = [HMEventTrigger predicateForEvaluatingTriggerOccurringBeforeDateWithComponents:v6];
  if (![HMPredicateUtilities areOnlyHourAndMinuteSet:v5]|| ![HMPredicateUtilities areOnlyHourAndMinuteSet:v6])
  {
    v13 = MEMORY[0x1E696AB28];
    v22[0] = v7;
    v22[1] = v8;
    v14 = MEMORY[0x1E695DEC8];
    v15 = v22;
LABEL_6:
    v11 = [v14 arrayWithObjects:v15 count:2];
    v12 = [v13 andPredicateWithSubpredicates:v11];
    goto LABEL_7;
  }

  hour = [(NSDateComponents *)v5 hour];
  if (hour > [(NSDateComponents *)v6 hour])
  {
LABEL_4:
    v10 = MEMORY[0x1E696AB28];
    v23[0] = v7;
    v23[1] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v12 = [v10 orPredicateWithSubpredicates:v11];
LABEL_7:
    v16 = v12;

    goto LABEL_8;
  }

  hour2 = [(NSDateComponents *)v5 hour];
  if (hour2 < [(NSDateComponents *)v6 hour])
  {
    goto LABEL_12;
  }

  minute = [(NSDateComponents *)v5 minute];
  if (minute > [(NSDateComponents *)v6 minute])
  {
    goto LABEL_4;
  }

  minute2 = [(NSDateComponents *)v5 minute];
  if (minute2 < [(NSDateComponents *)v6 minute])
  {
LABEL_12:
    v13 = MEMORY[0x1E696AB28];
    v24[0] = v7;
    v24[1] = v8;
    v14 = MEMORY[0x1E695DEC8];
    v15 = v24;
    goto LABEL_6;
  }

  v16 = [HMEventTrigger predicateForEvaluatingTriggerOccurringOnDateWithComponents:v5];
LABEL_8:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (NSPredicate)predicateForEvaluatingTriggerOccurringBetweenSignificantEvent:(HMSignificantTimeEvent *)firstSignificantEvent secondSignificantEvent:(HMSignificantTimeEvent *)secondSignificantEvent
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = secondSignificantEvent;
  v6 = firstSignificantEvent;
  v7 = [HMEventTrigger predicateForEvaluatingTriggerOccurringAfterSignificantEvent:v6];
  v8 = [HMEventTrigger predicateForEvaluatingTriggerOccurringBeforeSignificantEvent:v5];
  significantEvent = [(HMSignificantTimeEvent *)v6 significantEvent];

  if ([significantEvent isEqualToString:@"sunrise"])
  {
    significantEvent2 = [(HMSignificantTimeEvent *)v5 significantEvent];
    v11 = [significantEvent2 isEqualToString:@"sunset"];

    if (v11)
    {
      v12 = MEMORY[0x1E696AB28];
      v20[0] = v7;
      v20[1] = v8;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
      v14 = [v12 andPredicateWithSubpredicates:v13];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = MEMORY[0x1E696AB28];
  v19[0] = v7;
  v19[1] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v14 = [v15 orPredicateWithSubpredicates:v13];
LABEL_6:
  v16 = v14;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (NSPredicate)predicateForEvaluatingTriggerOccurringAfterSignificantEvent:(HMSignificantTimeEvent *)significantEvent
{
  v3 = significantEvent;
  significantEvent = [(HMSignificantTimeEvent *)v3 significantEvent];
  offset = [(HMSignificantTimeEvent *)v3 offset];

  v6 = [HMEventTrigger _predicateForEvaluatingTriggerOccurringAfterSignificantEvent:significantEvent applyingOffset:offset];

  return v6;
}

+ (id)_predicateForEvaluatingTriggerOccurringAfterSignificantEvent:(id)event applyingOffset:(id)offset
{
  if (offset)
  {
    eventCopy = event;
    v6 = [HMEventTrigger negateOffset:offset];
    v7 = MEMORY[0x1E696AE18];
    v8 = _HMSignificantEventKeyPath(eventCopy);

    v9 = [v7 predicateWithFormat:@"%K <= now() + %@", v8, v6];
  }

  else
  {
    v10 = MEMORY[0x1E696AE18];
    eventCopy2 = event;
    v6 = _HMSignificantEventKeyPath(eventCopy2);

    v9 = [v10 predicateWithFormat:@"%K <= now()", v6];
  }

  return v9;
}

+ (NSPredicate)predicateForEvaluatingTriggerOccurringBeforeSignificantEvent:(HMSignificantTimeEvent *)significantEvent
{
  v3 = significantEvent;
  significantEvent = [(HMSignificantTimeEvent *)v3 significantEvent];
  offset = [(HMSignificantTimeEvent *)v3 offset];

  v6 = [HMEventTrigger _predicateForEvaluatingTriggerOccurringBeforeSignificantEvent:significantEvent applyingOffset:offset];

  return v6;
}

+ (id)_predicateForEvaluatingTriggerOccurringBeforeSignificantEvent:(id)event applyingOffset:(id)offset
{
  if (offset)
  {
    eventCopy = event;
    v6 = [HMEventTrigger negateOffset:offset];
    v7 = MEMORY[0x1E696AE18];
    v8 = _HMSignificantEventKeyPath(eventCopy);

    v9 = [v7 predicateWithFormat:@"%K > now() + %@", v8, v6];
  }

  else
  {
    v10 = MEMORY[0x1E696AE18];
    eventCopy2 = event;
    v6 = _HMSignificantEventKeyPath(eventCopy2);

    v9 = [v10 predicateWithFormat:@"%K > now()", v6];
  }

  return v9;
}

+ (id)negateOffset:(id)offset
{
  offsetCopy = offset;
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  if ([offsetCopy minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setMinute:{-objc_msgSend(offsetCopy, "minute")}];
  }

  if ([offsetCopy hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setHour:{-objc_msgSend(offsetCopy, "hour")}];
  }

  return v4;
}

+ (BOOL)__validateRecurrences:(id)recurrences
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  recurrencesCopy = recurrences;
  v4 = [recurrencesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(recurrencesCopy);
        }

        if (![*(*(&v11 + 1) + 8 * i) weekday])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [recurrencesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)updateWithBuilder:(id)builder completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  home = [(HMTrigger *)self home];
  v10 = home;
  if (context)
  {
    v38 = 0;
    v11 = [home validateBuilder:builderCopy error:&v38];
    v12 = v38;
    v13 = v12;
    if (v11)
    {
      v14 = MEMORY[0x1E695DF90];
      v37 = v12;
      v15 = [v10 encodeEventTriggerBuilder:builderCopy error:&v37];
      v16 = v37;

      delegateCaller2 = [v14 dictionaryWithDictionary:v15];

      uuid = [(HMTrigger *)self uuid];
      uUIDString = [uuid UUIDString];
      [delegateCaller2 setObject:uUIDString forKeyedSubscript:@"kTriggerUUID"];

      if (delegateCaller2)
      {
        v20 = objc_autoreleasePoolPush();
        selfCopy = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543618;
          v40 = v23;
          v41 = 2112;
          v42 = delegateCaller2;
          _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Going to update the event trigger with : %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        uuid2 = [(HMTrigger *)selfCopy uuid];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __77__HMEventTrigger_HMEventTriggerBuilder__updateWithBuilder_completionHandler___block_invoke;
        v31[3] = &unk_1E754B6C8;
        v32 = context;
        v36 = handlerCopy;
        v33 = selfCopy;
        v34 = delegateCaller2;
        v35 = v10;
        [(_HMContext *)v32 sendMessage:uuid2 target:v34 payload:v31 responseHandler:?];

        delegateCaller = v32;
      }

      else
      {
        delegateCaller = [context delegateCaller];
        [delegateCaller callCompletion:handlerCopy error:v16];
      }
    }

    else
    {
      delegateCaller2 = [context delegateCaller];
      [delegateCaller2 callCompletion:handlerCopy error:v13];
      v16 = v13;
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v29;
      v41 = 2080;
      v42 = "[HMEventTrigger(HMEventTriggerBuilder) updateWithBuilder:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __77__HMEventTrigger_HMEventTriggerBuilder__updateWithBuilder_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) delegateCaller];
    [(HMEventTrigger *)v7 callCompletion:*(a1 + 64) error:v5];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully updated the event trigger. ResponsePayload : %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [[HMEventTrigger alloc] initWithDictionary:v6 home:*(a1 + 56)];
    if (v7)
    {
      [*(a1 + 40) mergeFromNewObjectForBuilderUpdates:v7];
      v13 = [*(a1 + 32) delegateCaller];
      [v13 callCompletion:*(a1 + 64) error:0];
    }

    else
    {
      v13 = [*(a1 + 32) delegateCaller];
      v14 = *(a1 + 64);
      v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
      [v13 callCompletion:v14 error:v15];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)copyAsBuilder
{
  v3 = [HMEventTriggerBuilder alloc];

  return [(HMEventTriggerBuilder *)v3 initWithEventTrigger:self];
}

@end