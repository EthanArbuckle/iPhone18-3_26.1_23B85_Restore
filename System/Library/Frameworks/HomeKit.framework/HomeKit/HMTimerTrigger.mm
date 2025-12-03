@interface HMTimerTrigger
- (BOOL)mergeFromNewObject:(id)object;
- (HMTimerTrigger)initWithCoder:(id)coder;
- (HMTimerTrigger)initWithDictionary:(id)dictionary home:(id)home;
- (HMTimerTrigger)initWithName:(id)name fireDate:(id)date timeZone:(id)zone recurrence:(id)recurrence;
- (HMTimerTrigger)initWithName:(id)name fireDate:(id)date timeZone:(id)zone recurrences:(id)recurrences;
- (HMTimerTrigger)initWithName:(id)name significantEvent:(id)event significantEventOffset:(id)offset recurrences:(id)recurrences;
- (NSArray)recurrences;
- (NSDate)fireDate;
- (NSDateComponents)recurrence;
- (NSDateComponents)significantEventOffset;
- (NSString)significantEvent;
- (NSTimeZone)timeZone;
- (id)_serializeForAdd;
- (void)_handleTriggerFired:(id)fired;
- (void)_updateFireDate:(id)date completionHandler:(id)handler;
- (void)_updateRecurrence:(id)recurrence completionHandler:(id)handler;
- (void)_updateRecurrences:(id)recurrences completionHandler:(id)handler;
- (void)_updateSignificantEvent:(id)event completionHandler:(id)handler;
- (void)_updateSignificantEventOffset:(id)offset completionHandler:(id)handler;
- (void)_updateTimeZone:(id)zone completionHandler:(id)handler;
- (void)_updateTimerTriggerPropertiesFromResponse:(id)response;
- (void)_updateTimerTriggerWithResponse:(id)response payloadToSend:(id)send;
- (void)setFireDate:(id)date;
- (void)setRecurrence:(id)recurrence;
- (void)setRecurrences:(id)recurrences;
- (void)setSignificantEvent:(id)event;
- (void)setSignificantEventOffset:(id)offset;
- (void)setTimeZone:(id)zone;
- (void)updateFireDate:(NSDate *)fireDate completionHandler:(void *)completion;
- (void)updateRecurrence:(NSDateComponents *)recurrence completionHandler:(void *)completion;
- (void)updateRecurrences:(id)recurrences completionHandler:(id)handler;
- (void)updateSignificantEvent:(id)event completionHandler:(id)handler;
- (void)updateSignificantEventOffset:(id)offset completionHandler:(id)handler;
- (void)updateTimeZone:(NSTimeZone *)timeZone completionHandler:(void *)completion;
@end

@implementation HMTimerTrigger

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  v48.receiver = self;
  v48.super_class = HMTimerTrigger;
  LODWORD(fireDate3) = [(HMTrigger *)&v48 mergeFromNewObject:objectCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objectCopy;
    fireDate = [(HMTimerTrigger *)self fireDate];
    fireDate2 = [v6 fireDate];
    v9 = [fireDate isEqualToDate:fireDate2];

    if ((v9 & 1) == 0)
    {
      fireDate3 = [v6 fireDate];
      [(HMTimerTrigger *)self setFireDate:fireDate3];

      LODWORD(fireDate3) = 1;
    }

    timeZone = [(HMTimerTrigger *)self timeZone];

    timeZone2 = [v6 timeZone];
    v12 = timeZone2;
    if (timeZone)
    {

      if (!v12)
      {
        [(HMTimerTrigger *)self setTimeZone:0];
        goto LABEL_11;
      }

      timeZone3 = [(HMTimerTrigger *)self timeZone];
      timeZone4 = [v6 timeZone];
      v15 = [timeZone3 isEqualToTimeZone:timeZone4];

      if (v15)
      {
LABEL_12:
        recurrence = [(HMTimerTrigger *)self recurrence];

        recurrence2 = [v6 recurrence];
        v19 = recurrence2;
        if (recurrence)
        {

          if (!v19)
          {
            [(HMTimerTrigger *)self setRecurrence:0];
            goto LABEL_19;
          }

          recurrence3 = [(HMTimerTrigger *)self recurrence];
          recurrence4 = [v6 recurrence];
          v22 = [recurrence3 isEqual:recurrence4];

          if (v22)
          {
LABEL_20:
            recurrences = [(HMTimerTrigger *)self recurrences];

            recurrences2 = [v6 recurrences];
            v26 = recurrences2;
            if (recurrences)
            {

              if (!v26)
              {
                [(HMTimerTrigger *)self setRecurrences:0];
                goto LABEL_27;
              }

              recurrences3 = [(HMTimerTrigger *)self recurrences];
              recurrences4 = [v6 recurrences];
              v29 = [recurrences3 isEqual:recurrences4];

              if (v29)
              {
LABEL_28:
                significantEvent = [(HMTimerTrigger *)self significantEvent];

                significantEvent2 = [v6 significantEvent];
                v33 = significantEvent2;
                if (significantEvent)
                {

                  if (!v33)
                  {
                    [(HMTimerTrigger *)self setSignificantEvent:0];
                    goto LABEL_35;
                  }

                  significantEvent3 = [(HMTimerTrigger *)self significantEvent];
                  significantEvent4 = [v6 significantEvent];
                  v36 = [significantEvent3 isEqual:significantEvent4];

                  if (v36)
                  {
LABEL_36:
                    significantEventOffset = [(HMTimerTrigger *)self significantEventOffset];

                    significantEventOffset2 = [v6 significantEventOffset];
                    v40 = significantEventOffset2;
                    if (significantEventOffset)
                    {

                      if (!v40)
                      {
                        [(HMTimerTrigger *)self setSignificantEventOffset:0];
                        goto LABEL_44;
                      }

                      significantEventOffset3 = [(HMTimerTrigger *)self significantEventOffset];
                      significantEventOffset4 = [v6 significantEventOffset];
                      v43 = [significantEventOffset3 isEqual:significantEventOffset4];

                      if (v43)
                      {
                        goto LABEL_39;
                      }
                    }

                    else
                    {

                      if (!v40)
                      {
LABEL_39:
                        if (!fireDate3)
                        {
                          goto LABEL_45;
                        }

                        goto LABEL_44;
                      }
                    }

                    significantEventOffset5 = [v6 significantEventOffset];
                    [(HMTimerTrigger *)self setSignificantEventOffset:significantEventOffset5];

LABEL_44:
                    fireDate3 = [(HMTrigger *)self context];
                    queue = [fireDate3 queue];
                    block[0] = MEMORY[0x1E69E9820];
                    block[1] = 3221225472;
                    block[2] = __37__HMTimerTrigger_mergeFromNewObject___block_invoke;
                    block[3] = &unk_1E754E2A8;
                    block[4] = self;
                    dispatch_async(queue, block);

                    LOBYTE(fireDate3) = 1;
LABEL_45:

                    goto LABEL_46;
                  }
                }

                else
                {

                  if (!v33)
                  {
                    goto LABEL_36;
                  }
                }

                significantEvent5 = [v6 significantEvent];
                [(HMTimerTrigger *)self setSignificantEvent:significantEvent5];

LABEL_35:
                LODWORD(fireDate3) = 1;
                goto LABEL_36;
              }
            }

            else
            {

              if (!v26)
              {
                goto LABEL_28;
              }
            }

            recurrences5 = [v6 recurrences];
            [(HMTimerTrigger *)self setRecurrences:recurrences5];

LABEL_27:
            LODWORD(fireDate3) = 1;
            goto LABEL_28;
          }
        }

        else
        {

          if (!v19)
          {
            goto LABEL_20;
          }
        }

        recurrence5 = [v6 recurrence];
        [(HMTimerTrigger *)self setRecurrence:recurrence5];

LABEL_19:
        LODWORD(fireDate3) = 1;
        goto LABEL_20;
      }
    }

    else
    {

      if (!v12)
      {
        goto LABEL_12;
      }
    }

    timeZone5 = [v6 timeZone];
    [(HMTimerTrigger *)self setTimeZone:timeZone5];

LABEL_11:
    LODWORD(fireDate3) = 1;
    goto LABEL_12;
  }

LABEL_46:

  return fireDate3;
}

void __37__HMTimerTrigger_mergeFromNewObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  [v2 _notifyDelegateOfTriggerUpdated:*(a1 + 32)];
}

- (HMTimerTrigger)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = HMTimerTrigger;
  v5 = [(HMTrigger *)&v23 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timerTriggerInitialFireDate"];
    fireDate = v5->_fireDate;
    v5->_fireDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timerTriggerTimeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.timerTriggerSignificantEvent"];
    significantEvent = v5->_significantEvent;
    v5->_significantEvent = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.timerTriggerSignificantEventOffset"];
    significantEventOffset = v5->_significantEventOffset;
    v5->_significantEventOffset = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timerTriggerRepeatInterval"];
    recurrence = v5->_recurrence;
    v5->_recurrence = v14;

    v16 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"HM.timerTriggerRecurrences"];
    recurrences = v5->_recurrences;
    v5->_recurrences = v19;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_handleTriggerFired:(id)fired
{
  v3.receiver = self;
  v3.super_class = HMTimerTrigger;
  [(HMTrigger *)&v3 _handleTriggerFired:fired];
}

- (void)_updateTimerTriggerPropertiesFromResponse:(id)response
{
  responseCopy = response;
  v4 = [responseCopy hmf_dateForKey:@"kTimerTriggerInitialFireDateKey"];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  [(HMTimerTrigger *)self setFireDate:v5];
  v6 = MEMORY[0x1E695DFE8];
  v7 = [responseCopy objectForKeyedSubscript:@"kTimerTriggerTimeZoneDataKey"];
  v8 = [v6 hmf_unarchiveFromData:v7 error:0];

  if (v8)
  {
    selfCopy2 = self;
    v10 = v8;
  }

  else
  {
    if (![responseCopy hmf_BOOLForKey:@"kTimerTriggerResetTimeZoneDataKey"])
    {
      goto LABEL_9;
    }

    selfCopy2 = self;
    v10 = 0;
  }

  [(HMTimerTrigger *)selfCopy2 setTimeZone:v10];
LABEL_9:
  v11 = [responseCopy dateComponentsForKey:@"kTimerTriggerRecurrenceDataKey"];
  if (v11)
  {
    selfCopy4 = self;
    v13 = v11;
  }

  else
  {
    if (![responseCopy hmf_BOOLForKey:@"kTimerTriggerResetRecurrenceDataKey"])
    {
      goto LABEL_14;
    }

    selfCopy4 = self;
    v13 = 0;
  }

  [(HMTimerTrigger *)selfCopy4 setRecurrence:v13];
LABEL_14:
  v14 = [responseCopy arrayOfDateComponentsFromDataForKey:@"kTimerTriggerRecurrencesKey"];
  if (v14)
  {
    selfCopy6 = self;
    v16 = v14;
  }

  else
  {
    if (![responseCopy hmf_BOOLForKey:@"kTimerTriggerResetRecurrencesKey"])
    {
      goto LABEL_19;
    }

    selfCopy6 = self;
    v16 = 0;
  }

  [(HMTimerTrigger *)selfCopy6 setRecurrences:v16];
LABEL_19:
  v17 = [responseCopy hmf_stringForKey:@"kTimerTriggerSignificantEventKey"];
  if (v17)
  {
    selfCopy8 = self;
    v19 = v17;
  }

  else
  {
    if (![responseCopy hmf_BOOLForKey:@"kTimerTriggerResetSignificantEventKey"])
    {
      goto LABEL_24;
    }

    selfCopy8 = self;
    v19 = 0;
  }

  [(HMTimerTrigger *)selfCopy8 setSignificantEvent:v19];
LABEL_24:
  v20 = [responseCopy hmf_dateComponentsForKey:@"kTimerTriggerSignificantEventOffsetKey"];
  if (v20)
  {
    selfCopy10 = self;
    v22 = v20;
  }

  else
  {
    if (![responseCopy hmf_BOOLForKey:@"kTimerTriggerResetSignificantEventOffsetKey"])
    {
      goto LABEL_29;
    }

    selfCopy10 = self;
    v22 = 0;
  }

  [(HMTimerTrigger *)selfCopy10 setSignificantEventOffset:v22];
LABEL_29:
}

- (id)_serializeForAdd
{
  v3 = MEMORY[0x1E695DF90];
  v28.receiver = self;
  v28.super_class = HMTimerTrigger;
  _serializeForAdd = [(HMTrigger *)&v28 _serializeForAdd];
  v5 = [v3 dictionaryWithDictionary:_serializeForAdd];

  fireDate = [(HMTimerTrigger *)self fireDate];

  if (fireDate)
  {
    fireDate2 = [(HMTimerTrigger *)self fireDate];
    [v5 setObject:fireDate2 forKeyedSubscript:@"kTimerTriggerInitialFireDateKey"];
  }

  timeZone = [(HMTimerTrigger *)self timeZone];

  if (timeZone)
  {
    v9 = MEMORY[0x1E696ACC8];
    timeZone2 = [(HMTimerTrigger *)self timeZone];
    v11 = [v9 archivedDataWithRootObject:timeZone2 requiringSecureCoding:1 error:0];
    [v5 setObject:v11 forKeyedSubscript:@"kTimerTriggerTimeZoneDataKey"];
  }

  else
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kTimerTriggerResetTimeZoneDataKey"];
  }

  recurrence = [(HMTimerTrigger *)self recurrence];

  if (recurrence)
  {
    v13 = MEMORY[0x1E696ACC8];
    recurrence2 = [(HMTimerTrigger *)self recurrence];
    v15 = [v13 archivedDataWithRootObject:recurrence2 requiringSecureCoding:1 error:0];
    [v5 setObject:v15 forKeyedSubscript:@"kTimerTriggerRecurrenceDataKey"];
  }

  else
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kTimerTriggerResetRecurrenceDataKey"];
  }

  recurrences = [(HMTimerTrigger *)self recurrences];

  if (recurrences)
  {
    v17 = MEMORY[0x1E696ACC8];
    recurrences2 = [(HMTimerTrigger *)self recurrences];
    v19 = [v17 archivedDataWithRootObject:recurrences2 requiringSecureCoding:1 error:0];
    [v5 setObject:v19 forKeyedSubscript:@"kTimerTriggerRecurrencesKey"];
  }

  else
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kTimerTriggerResetRecurrencesKey"];
  }

  significantEvent = [(HMTimerTrigger *)self significantEvent];

  if (significantEvent)
  {
    significantEvent2 = [(HMTimerTrigger *)self significantEvent];
    [v5 setObject:significantEvent2 forKeyedSubscript:@"kTimerTriggerSignificantEventKey"];
  }

  else
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kTimerTriggerResetSignificantEventKey"];
  }

  significantEventOffset = [(HMTimerTrigger *)self significantEventOffset];

  if (significantEventOffset)
  {
    v23 = MEMORY[0x1E696ACC8];
    significantEventOffset2 = [(HMTimerTrigger *)self significantEventOffset];
    v25 = [v23 archivedDataWithRootObject:significantEventOffset2 requiringSecureCoding:1 error:0];
    [v5 setObject:v25 forKeyedSubscript:@"kTimerTriggerSignificantEventOffsetKey"];
  }

  else
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kTimerTriggerResetSignificantEventOffsetKey"];
  }

  v26 = [v5 copy];

  return v26;
}

- (void)_updateTimerTriggerWithResponse:(id)response payloadToSend:(id)send
{
  v29 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  sendCopy = send;
  context = [(HMTrigger *)self context];
  if (context)
  {
    v9 = MEMORY[0x1E69A2A10];
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMTrigger *)self uuid];
    v12 = [v10 initWithTarget:uuid];
    v13 = [v9 messageWithName:@"kScheduleTimerTriggerRequestKey" destination:v12 payload:sendCopy];

    objc_initWeak(location, self);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __64__HMTimerTrigger__updateTimerTriggerWithResponse_payloadToSend___block_invoke;
    v23 = &unk_1E754CFF8;
    objc_copyWeak(&v25, location);
    v24 = responseCopy;
    [v13 setResponseHandler:&v20];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v13 completionHandler:0];

    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v18;
      v27 = 2080;
      v28 = "[HMTimerTrigger _updateTimerTriggerWithResponse:payloadToSend:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __64__HMTimerTrigger__updateTimerTriggerWithResponse_payloadToSend___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Update timer trigger properties : %@, completionHandler: %@ error %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5 && v6)
  {
    [v9 _updateTimerTriggerPropertiesFromResponse:v6];
  }

  [v9 _updateClientWithResults:*(a1 + 32) withError:v5];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_updateRecurrences:(id)recurrences completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  recurrencesCopy = recurrences;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (!handlerCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger _updateRecurrences:completionHandler:]", @"clientCompletionHandler"];
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v26;
      v34 = 2112;
      v35 = v22;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
    objc_exception_throw(v27);
  }

  v9 = context;
  if (context)
  {
    home = [(HMTrigger *)self home];
    if (home)
    {
      v11 = home;
      if (recurrencesCopy)
      {
        v30 = @"kTimerTriggerRecurrencesKey";
        v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:recurrencesCopy requiringSecureCoding:1 error:0];
        v31 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      }

      else
      {
        v28 = @"kTimerTriggerResetRecurrencesKey";
        v29 = MEMORY[0x1E695E118];
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      }

      [(HMTimerTrigger *)self _updateTimerTriggerWithResponse:handlerCopy payloadToSend:v13];
    }

    else
    {
      context2 = [(HMTrigger *)self context];
      delegateCaller = [context2 delegateCaller];
      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v20];

      v11 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v17;
      v34 = 2080;
      v35 = "[HMTimerTrigger _updateRecurrences:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, v11);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)updateRecurrences:(id)recurrences completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  recurrencesCopy = recurrences;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger updateRecurrences:completionHandler:]", @"completion"];
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
    block[2] = __54__HMTimerTrigger_updateRecurrences_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = recurrencesCopy;
    v25 = handlerCopy;
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
      v29 = "[HMTimerTrigger updateRecurrences:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updateRecurrence:(id)recurrence completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  recurrenceCopy = recurrence;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (context)
  {
    home = [(HMTrigger *)self home];
    if (home)
    {
      if (recurrenceCopy)
      {
        v22 = @"kTimerTriggerRecurrenceDataKey";
        v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:recurrenceCopy requiringSecureCoding:1 error:0];
        v23 = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      }

      else
      {
        v20 = @"kTimerTriggerResetRecurrenceDataKey";
        v21 = MEMORY[0x1E695E118];
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      }

      [(HMTimerTrigger *)self _updateTimerTriggerWithResponse:handlerCopy payloadToSend:v11];
    }

    else
    {
      context2 = [(HMTrigger *)self context];
      delegateCaller = [context2 delegateCaller];
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v18];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v15;
      v26 = 2080;
      v27 = "[HMTimerTrigger _updateRecurrence:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)updateRecurrence:(NSDateComponents *)recurrence completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = recurrence;
  v7 = completion;
  context = [(HMTrigger *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger updateRecurrence:completionHandler:]", @"completion"];
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
    block[2] = __53__HMTimerTrigger_updateRecurrence_completionHandler___block_invoke;
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
      v29 = "[HMTimerTrigger updateRecurrence:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updateSignificantEventOffset:(id)offset completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  offsetCopy = offset;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (context)
  {
    home = [(HMTrigger *)self home];
    if (home)
    {
      if (offsetCopy)
      {
        v22 = @"kTimerTriggerSignificantEventOffsetKey";
        v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:offsetCopy requiringSecureCoding:1 error:0];
        v23 = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      }

      else
      {
        v20 = @"kTimerTriggerResetSignificantEventOffsetKey";
        v21 = MEMORY[0x1E695E118];
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      }

      [(HMTimerTrigger *)self _updateTimerTriggerWithResponse:handlerCopy payloadToSend:v11];
    }

    else
    {
      context2 = [(HMTrigger *)self context];
      delegateCaller = [context2 delegateCaller];
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v18];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v15;
      v26 = 2080;
      v27 = "[HMTimerTrigger _updateSignificantEventOffset:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)updateSignificantEventOffset:(id)offset completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  offsetCopy = offset;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger updateSignificantEventOffset:completionHandler:]", @"completion"];
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
    block[2] = __65__HMTimerTrigger_updateSignificantEventOffset_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = offsetCopy;
    v25 = handlerCopy;
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
      v29 = "[HMTimerTrigger updateSignificantEventOffset:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updateSignificantEvent:(id)event completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (context)
  {
    if (eventCopy)
    {
      home = [(HMTrigger *)self home];
      if (home)
      {
        v19 = @"kTimerTriggerSignificantEventKey";
        v20 = eventCopy;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [(HMTimerTrigger *)self _updateTimerTriggerWithResponse:handlerCopy payloadToSend:v10];

LABEL_11:
        goto LABEL_12;
      }

      context2 = [(HMTrigger *)self context];
      delegateCaller = [context2 delegateCaller];
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v17];
    }

    else
    {
      home = [(HMTrigger *)self context];
      context2 = [home delegateCaller];
      delegateCaller = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      [context2 callCompletion:handlerCopy error:delegateCaller];
    }

    goto LABEL_11;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v14;
    v23 = 2080;
    v24 = "[HMTimerTrigger _updateSignificantEvent:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)updateSignificantEvent:(id)event completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger updateSignificantEvent:completionHandler:]", @"completion"];
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
    block[2] = __59__HMTimerTrigger_updateSignificantEvent_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = eventCopy;
    v25 = handlerCopy;
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
      v29 = "[HMTimerTrigger updateSignificantEvent:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updateTimeZone:(id)zone completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  zoneCopy = zone;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (context)
  {
    home = [(HMTrigger *)self home];
    if (home)
    {
      if (zoneCopy)
      {
        v22 = @"kTimerTriggerTimeZoneDataKey";
        v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:zoneCopy requiringSecureCoding:1 error:0];
        v23 = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      }

      else
      {
        v20 = @"kTimerTriggerResetTimeZoneDataKey";
        v21 = MEMORY[0x1E695E118];
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      }

      [(HMTimerTrigger *)self _updateTimerTriggerWithResponse:handlerCopy payloadToSend:v11];
    }

    else
    {
      context2 = [(HMTrigger *)self context];
      delegateCaller = [context2 delegateCaller];
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v18];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v15;
      v26 = 2080;
      v27 = "[HMTimerTrigger _updateTimeZone:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)updateTimeZone:(NSTimeZone *)timeZone completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = timeZone;
  v7 = completion;
  context = [(HMTrigger *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger updateTimeZone:completionHandler:]", @"completion"];
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
    block[2] = __51__HMTimerTrigger_updateTimeZone_completionHandler___block_invoke;
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
      v29 = "[HMTimerTrigger updateTimeZone:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updateFireDate:(id)date completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (!handlerCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger _updateFireDate:completionHandler:]", @"clientCompletionHandler"];
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v27;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0];
    objc_exception_throw(v28);
  }

  v9 = context;
  if (!context)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v15;
      v33 = 2080;
      v34 = "[HMTimerTrigger _updateFireDate:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, context2);
    goto LABEL_10;
  }

  if (!dateCopy)
  {
    context2 = [(HMTrigger *)self context];
    delegateCaller = [context2 delegateCaller];
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    [delegateCaller callCompletion:handlerCopy error:v18];

LABEL_10:
    goto LABEL_13;
  }

  home = [(HMTrigger *)self home];
  if (home)
  {
    v29 = @"kTimerTriggerInitialFireDateKey";
    v30 = dateCopy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [(HMTimerTrigger *)self _updateTimerTriggerWithResponse:handlerCopy payloadToSend:v11];
  }

  else
  {
    context3 = [(HMTrigger *)self context];
    delegateCaller2 = [context3 delegateCaller];
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    [delegateCaller2 callCompletion:handlerCopy error:v21];
  }

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)updateFireDate:(NSDate *)fireDate completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = fireDate;
  v7 = completion;
  context = [(HMTrigger *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger updateFireDate:completionHandler:]", @"completion"];
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
    block[2] = __51__HMTimerTrigger_updateFireDate_completionHandler___block_invoke;
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
      v29 = "[HMTimerTrigger updateFireDate:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setSignificantEventOffset:(id)offset
{
  offsetCopy = offset;
  os_unfair_lock_lock_with_options();
  v4 = [offsetCopy copy];
  significantEventOffset = self->_significantEventOffset;
  self->_significantEventOffset = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSDateComponents)significantEventOffset
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDateComponents *)self->_significantEventOffset copy];
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setSignificantEvent:(id)event
{
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  v4 = [eventCopy copy];
  significantEvent = self->_significantEvent;
  self->_significantEvent = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)significantEvent
{
  os_unfair_lock_lock_with_options();
  v3 = self->_significantEvent;
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

- (void)setRecurrence:(id)recurrence
{
  recurrenceCopy = recurrence;
  os_unfair_lock_lock_with_options();
  recurrence = self->_recurrence;
  self->_recurrence = recurrenceCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSDateComponents)recurrence
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDateComponents *)self->_recurrence copy];
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  os_unfair_lock_lock_with_options();
  v4 = [zoneCopy copy];
  timeZone = self->_timeZone;
  self->_timeZone = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSTimeZone)timeZone
{
  os_unfair_lock_lock_with_options();
  v3 = self->_timeZone;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setFireDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  v4 = [dateCopy copy];
  fireDate = self->_fireDate;
  self->_fireDate = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSDate)fireDate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_fireDate;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (HMTimerTrigger)initWithDictionary:(id)dictionary home:(id)home
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = HMTimerTrigger;
  v7 = [(HMTrigger *)&v29 initWithDictionary:dictionaryCopy home:home];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"kTimerTriggerInitialFireDateKey"];
    fireDate = v7->_fireDate;
    v7->_fireDate = v8;

    v10 = MEMORY[0x1E695DFE8];
    v11 = [dictionaryCopy hmf_dataForKey:@"kTimerTriggerTimeZoneDataKey"];
    v12 = [v10 hmf_unarchiveFromData:v11 error:0];
    timeZone = v7->_timeZone;
    v7->_timeZone = v12;

    v14 = MEMORY[0x1E695DF10];
    v15 = [dictionaryCopy hmf_dataForKey:@"kTimerTriggerRecurrenceDataKey"];
    v16 = [v14 hmf_unarchiveFromData:v15 error:0];
    recurrence = v7->_recurrence;
    v7->_recurrence = v16;

    v18 = [dictionaryCopy hmf_stringForKey:@"kTimerTriggerSignificantEventKey"];
    significantEvent = v7->_significantEvent;
    v7->_significantEvent = v18;

    v20 = MEMORY[0x1E695DF10];
    v21 = [dictionaryCopy hmf_dataForKey:@"kTimerTriggerSignificantEventOffsetKey"];
    v22 = [v20 hmf_unarchiveFromData:v21 error:0];
    significantEventOffset = v7->_significantEventOffset;
    v7->_significantEventOffset = v22;

    v24 = [dictionaryCopy hmf_numberForKey:@"kTimerTriggerRecurrencesKey"];
    v25 = v24;
    if (v24)
    {
      HMDaysOfTheWeekToDateComponents([v24 unsignedIntegerValue]);
    }

    else
    {
      [dictionaryCopy arrayOfDateComponentsFromDataForKey:@"kTimerTriggerRecurrencesKey"];
    }
    v26 = ;
    recurrences = v7->_recurrences;
    v7->_recurrences = v26;
  }

  return v7;
}

- (HMTimerTrigger)initWithName:(id)name significantEvent:(id)event significantEventOffset:(id)offset recurrences:(id)recurrences
{
  nameCopy = name;
  eventCopy = event;
  offsetCopy = offset;
  recurrencesCopy = recurrences;
  if (!eventCopy)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = [MEMORY[0x1E696ABC0] hmStringFromErrorCode:3];
    v26 = [v23 exceptionWithName:v24 reason:v25 userInfo:0];
    v27 = v26;

    objc_exception_throw(v26);
  }

  v14 = recurrencesCopy;
  v28.receiver = self;
  v28.super_class = HMTimerTrigger;
  v15 = [(HMTrigger *)&v28 initWithName:nameCopy configuredName:nameCopy];
  if (v15)
  {
    v16 = [eventCopy copy];
    significantEvent = v15->_significantEvent;
    v15->_significantEvent = v16;

    v18 = [offsetCopy copy];
    significantEventOffset = v15->_significantEventOffset;
    v15->_significantEventOffset = v18;

    v20 = [v14 copy];
    recurrences = v15->_recurrences;
    v15->_recurrences = v20;
  }

  return v15;
}

- (HMTimerTrigger)initWithName:(id)name fireDate:(id)date timeZone:(id)zone recurrences:(id)recurrences
{
  recurrencesCopy = recurrences;
  v11 = [(HMTimerTrigger *)self initWithName:name fireDate:date timeZone:zone recurrence:0];
  if (v11)
  {
    v12 = [recurrencesCopy copy];
    recurrences = v11->_recurrences;
    v11->_recurrences = v12;
  }

  return v11;
}

- (HMTimerTrigger)initWithName:(id)name fireDate:(id)date timeZone:(id)zone recurrence:(id)recurrence
{
  nameCopy = name;
  dateCopy = date;
  zoneCopy = zone;
  recurrenceCopy = recurrence;
  if (!dateCopy)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = [MEMORY[0x1E696ABC0] hmStringFromErrorCode:3];
    v26 = [v23 exceptionWithName:v24 reason:v25 userInfo:0];
    v27 = v26;

    objc_exception_throw(v26);
  }

  v14 = recurrenceCopy;
  v28.receiver = self;
  v28.super_class = HMTimerTrigger;
  v15 = [(HMTrigger *)&v28 initWithName:nameCopy configuredName:nameCopy];
  if (v15)
  {
    v16 = [dateCopy copy];
    fireDate = v15->_fireDate;
    v15->_fireDate = v16;

    v18 = [zoneCopy copy];
    timeZone = v15->_timeZone;
    v15->_timeZone = v18;

    v20 = [v14 copy];
    recurrence = v15->_recurrence;
    v15->_recurrence = v20;
  }

  return v15;
}

@end