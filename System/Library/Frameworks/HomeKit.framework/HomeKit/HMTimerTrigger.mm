@interface HMTimerTrigger
- (BOOL)mergeFromNewObject:(id)a3;
- (HMTimerTrigger)initWithCoder:(id)a3;
- (HMTimerTrigger)initWithDictionary:(id)a3 home:(id)a4;
- (HMTimerTrigger)initWithName:(id)a3 fireDate:(id)a4 timeZone:(id)a5 recurrence:(id)a6;
- (HMTimerTrigger)initWithName:(id)a3 fireDate:(id)a4 timeZone:(id)a5 recurrences:(id)a6;
- (HMTimerTrigger)initWithName:(id)a3 significantEvent:(id)a4 significantEventOffset:(id)a5 recurrences:(id)a6;
- (NSArray)recurrences;
- (NSDate)fireDate;
- (NSDateComponents)recurrence;
- (NSDateComponents)significantEventOffset;
- (NSString)significantEvent;
- (NSTimeZone)timeZone;
- (id)_serializeForAdd;
- (void)_handleTriggerFired:(id)a3;
- (void)_updateFireDate:(id)a3 completionHandler:(id)a4;
- (void)_updateRecurrence:(id)a3 completionHandler:(id)a4;
- (void)_updateRecurrences:(id)a3 completionHandler:(id)a4;
- (void)_updateSignificantEvent:(id)a3 completionHandler:(id)a4;
- (void)_updateSignificantEventOffset:(id)a3 completionHandler:(id)a4;
- (void)_updateTimeZone:(id)a3 completionHandler:(id)a4;
- (void)_updateTimerTriggerPropertiesFromResponse:(id)a3;
- (void)_updateTimerTriggerWithResponse:(id)a3 payloadToSend:(id)a4;
- (void)setFireDate:(id)a3;
- (void)setRecurrence:(id)a3;
- (void)setRecurrences:(id)a3;
- (void)setSignificantEvent:(id)a3;
- (void)setSignificantEventOffset:(id)a3;
- (void)setTimeZone:(id)a3;
- (void)updateFireDate:(NSDate *)fireDate completionHandler:(void *)completion;
- (void)updateRecurrence:(NSDateComponents *)recurrence completionHandler:(void *)completion;
- (void)updateRecurrences:(id)a3 completionHandler:(id)a4;
- (void)updateSignificantEvent:(id)a3 completionHandler:(id)a4;
- (void)updateSignificantEventOffset:(id)a3 completionHandler:(id)a4;
- (void)updateTimeZone:(NSTimeZone *)timeZone completionHandler:(void *)completion;
@end

@implementation HMTimerTrigger

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = HMTimerTrigger;
  LODWORD(v5) = [(HMTrigger *)&v48 mergeFromNewObject:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [(HMTimerTrigger *)self fireDate];
    v8 = [v6 fireDate];
    v9 = [v7 isEqualToDate:v8];

    if ((v9 & 1) == 0)
    {
      v5 = [v6 fireDate];
      [(HMTimerTrigger *)self setFireDate:v5];

      LODWORD(v5) = 1;
    }

    v10 = [(HMTimerTrigger *)self timeZone];

    v11 = [v6 timeZone];
    v12 = v11;
    if (v10)
    {

      if (!v12)
      {
        [(HMTimerTrigger *)self setTimeZone:0];
        goto LABEL_11;
      }

      v13 = [(HMTimerTrigger *)self timeZone];
      v14 = [v6 timeZone];
      v15 = [v13 isEqualToTimeZone:v14];

      if (v15)
      {
LABEL_12:
        v17 = [(HMTimerTrigger *)self recurrence];

        v18 = [v6 recurrence];
        v19 = v18;
        if (v17)
        {

          if (!v19)
          {
            [(HMTimerTrigger *)self setRecurrence:0];
            goto LABEL_19;
          }

          v20 = [(HMTimerTrigger *)self recurrence];
          v21 = [v6 recurrence];
          v22 = [v20 isEqual:v21];

          if (v22)
          {
LABEL_20:
            v24 = [(HMTimerTrigger *)self recurrences];

            v25 = [v6 recurrences];
            v26 = v25;
            if (v24)
            {

              if (!v26)
              {
                [(HMTimerTrigger *)self setRecurrences:0];
                goto LABEL_27;
              }

              v27 = [(HMTimerTrigger *)self recurrences];
              v28 = [v6 recurrences];
              v29 = [v27 isEqual:v28];

              if (v29)
              {
LABEL_28:
                v31 = [(HMTimerTrigger *)self significantEvent];

                v32 = [v6 significantEvent];
                v33 = v32;
                if (v31)
                {

                  if (!v33)
                  {
                    [(HMTimerTrigger *)self setSignificantEvent:0];
                    goto LABEL_35;
                  }

                  v34 = [(HMTimerTrigger *)self significantEvent];
                  v35 = [v6 significantEvent];
                  v36 = [v34 isEqual:v35];

                  if (v36)
                  {
LABEL_36:
                    v38 = [(HMTimerTrigger *)self significantEventOffset];

                    v39 = [v6 significantEventOffset];
                    v40 = v39;
                    if (v38)
                    {

                      if (!v40)
                      {
                        [(HMTimerTrigger *)self setSignificantEventOffset:0];
                        goto LABEL_44;
                      }

                      v41 = [(HMTimerTrigger *)self significantEventOffset];
                      v42 = [v6 significantEventOffset];
                      v43 = [v41 isEqual:v42];

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
                        if (!v5)
                        {
                          goto LABEL_45;
                        }

                        goto LABEL_44;
                      }
                    }

                    v44 = [v6 significantEventOffset];
                    [(HMTimerTrigger *)self setSignificantEventOffset:v44];

LABEL_44:
                    v5 = [(HMTrigger *)self context];
                    v45 = [v5 queue];
                    block[0] = MEMORY[0x1E69E9820];
                    block[1] = 3221225472;
                    block[2] = __37__HMTimerTrigger_mergeFromNewObject___block_invoke;
                    block[3] = &unk_1E754E2A8;
                    block[4] = self;
                    dispatch_async(v45, block);

                    LOBYTE(v5) = 1;
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

                v37 = [v6 significantEvent];
                [(HMTimerTrigger *)self setSignificantEvent:v37];

LABEL_35:
                LODWORD(v5) = 1;
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

            v30 = [v6 recurrences];
            [(HMTimerTrigger *)self setRecurrences:v30];

LABEL_27:
            LODWORD(v5) = 1;
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

        v23 = [v6 recurrence];
        [(HMTimerTrigger *)self setRecurrence:v23];

LABEL_19:
        LODWORD(v5) = 1;
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

    v16 = [v6 timeZone];
    [(HMTimerTrigger *)self setTimeZone:v16];

LABEL_11:
    LODWORD(v5) = 1;
    goto LABEL_12;
  }

LABEL_46:

  return v5;
}

void __37__HMTimerTrigger_mergeFromNewObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  [v2 _notifyDelegateOfTriggerUpdated:*(a1 + 32)];
}

- (HMTimerTrigger)initWithCoder:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HMTimerTrigger;
  v5 = [(HMTrigger *)&v23 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timerTriggerInitialFireDate"];
    fireDate = v5->_fireDate;
    v5->_fireDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timerTriggerTimeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.timerTriggerSignificantEvent"];
    significantEvent = v5->_significantEvent;
    v5->_significantEvent = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.timerTriggerSignificantEventOffset"];
    significantEventOffset = v5->_significantEventOffset;
    v5->_significantEventOffset = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timerTriggerRepeatInterval"];
    recurrence = v5->_recurrence;
    v5->_recurrence = v14;

    v16 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"HM.timerTriggerRecurrences"];
    recurrences = v5->_recurrences;
    v5->_recurrences = v19;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_handleTriggerFired:(id)a3
{
  v3.receiver = self;
  v3.super_class = HMTimerTrigger;
  [(HMTrigger *)&v3 _handleTriggerFired:a3];
}

- (void)_updateTimerTriggerPropertiesFromResponse:(id)a3
{
  v23 = a3;
  v4 = [v23 hmf_dateForKey:@"kTimerTriggerInitialFireDateKey"];
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
  v7 = [v23 objectForKeyedSubscript:@"kTimerTriggerTimeZoneDataKey"];
  v8 = [v6 hmf_unarchiveFromData:v7 error:0];

  if (v8)
  {
    v9 = self;
    v10 = v8;
  }

  else
  {
    if (![v23 hmf_BOOLForKey:@"kTimerTriggerResetTimeZoneDataKey"])
    {
      goto LABEL_9;
    }

    v9 = self;
    v10 = 0;
  }

  [(HMTimerTrigger *)v9 setTimeZone:v10];
LABEL_9:
  v11 = [v23 dateComponentsForKey:@"kTimerTriggerRecurrenceDataKey"];
  if (v11)
  {
    v12 = self;
    v13 = v11;
  }

  else
  {
    if (![v23 hmf_BOOLForKey:@"kTimerTriggerResetRecurrenceDataKey"])
    {
      goto LABEL_14;
    }

    v12 = self;
    v13 = 0;
  }

  [(HMTimerTrigger *)v12 setRecurrence:v13];
LABEL_14:
  v14 = [v23 arrayOfDateComponentsFromDataForKey:@"kTimerTriggerRecurrencesKey"];
  if (v14)
  {
    v15 = self;
    v16 = v14;
  }

  else
  {
    if (![v23 hmf_BOOLForKey:@"kTimerTriggerResetRecurrencesKey"])
    {
      goto LABEL_19;
    }

    v15 = self;
    v16 = 0;
  }

  [(HMTimerTrigger *)v15 setRecurrences:v16];
LABEL_19:
  v17 = [v23 hmf_stringForKey:@"kTimerTriggerSignificantEventKey"];
  if (v17)
  {
    v18 = self;
    v19 = v17;
  }

  else
  {
    if (![v23 hmf_BOOLForKey:@"kTimerTriggerResetSignificantEventKey"])
    {
      goto LABEL_24;
    }

    v18 = self;
    v19 = 0;
  }

  [(HMTimerTrigger *)v18 setSignificantEvent:v19];
LABEL_24:
  v20 = [v23 hmf_dateComponentsForKey:@"kTimerTriggerSignificantEventOffsetKey"];
  if (v20)
  {
    v21 = self;
    v22 = v20;
  }

  else
  {
    if (![v23 hmf_BOOLForKey:@"kTimerTriggerResetSignificantEventOffsetKey"])
    {
      goto LABEL_29;
    }

    v21 = self;
    v22 = 0;
  }

  [(HMTimerTrigger *)v21 setSignificantEventOffset:v22];
LABEL_29:
}

- (id)_serializeForAdd
{
  v3 = MEMORY[0x1E695DF90];
  v28.receiver = self;
  v28.super_class = HMTimerTrigger;
  v4 = [(HMTrigger *)&v28 _serializeForAdd];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(HMTimerTrigger *)self fireDate];

  if (v6)
  {
    v7 = [(HMTimerTrigger *)self fireDate];
    [v5 setObject:v7 forKeyedSubscript:@"kTimerTriggerInitialFireDateKey"];
  }

  v8 = [(HMTimerTrigger *)self timeZone];

  if (v8)
  {
    v9 = MEMORY[0x1E696ACC8];
    v10 = [(HMTimerTrigger *)self timeZone];
    v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
    [v5 setObject:v11 forKeyedSubscript:@"kTimerTriggerTimeZoneDataKey"];
  }

  else
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kTimerTriggerResetTimeZoneDataKey"];
  }

  v12 = [(HMTimerTrigger *)self recurrence];

  if (v12)
  {
    v13 = MEMORY[0x1E696ACC8];
    v14 = [(HMTimerTrigger *)self recurrence];
    v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
    [v5 setObject:v15 forKeyedSubscript:@"kTimerTriggerRecurrenceDataKey"];
  }

  else
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kTimerTriggerResetRecurrenceDataKey"];
  }

  v16 = [(HMTimerTrigger *)self recurrences];

  if (v16)
  {
    v17 = MEMORY[0x1E696ACC8];
    v18 = [(HMTimerTrigger *)self recurrences];
    v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];
    [v5 setObject:v19 forKeyedSubscript:@"kTimerTriggerRecurrencesKey"];
  }

  else
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kTimerTriggerResetRecurrencesKey"];
  }

  v20 = [(HMTimerTrigger *)self significantEvent];

  if (v20)
  {
    v21 = [(HMTimerTrigger *)self significantEvent];
    [v5 setObject:v21 forKeyedSubscript:@"kTimerTriggerSignificantEventKey"];
  }

  else
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kTimerTriggerResetSignificantEventKey"];
  }

  v22 = [(HMTimerTrigger *)self significantEventOffset];

  if (v22)
  {
    v23 = MEMORY[0x1E696ACC8];
    v24 = [(HMTimerTrigger *)self significantEventOffset];
    v25 = [v23 archivedDataWithRootObject:v24 requiringSecureCoding:1 error:0];
    [v5 setObject:v25 forKeyedSubscript:@"kTimerTriggerSignificantEventOffsetKey"];
  }

  else
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kTimerTriggerResetSignificantEventOffsetKey"];
  }

  v26 = [v5 copy];

  return v26;
}

- (void)_updateTimerTriggerWithResponse:(id)a3 payloadToSend:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMTrigger *)self context];
  if (v8)
  {
    v9 = MEMORY[0x1E69A2A10];
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    v11 = [(HMTrigger *)self uuid];
    v12 = [v10 initWithTarget:v11];
    v13 = [v9 messageWithName:@"kScheduleTimerTriggerRequestKey" destination:v12 payload:v7];

    objc_initWeak(location, self);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __64__HMTimerTrigger__updateTimerTriggerWithResponse_payloadToSend___block_invoke;
    v23 = &unk_1E754CFF8;
    objc_copyWeak(&v25, location);
    v24 = v6;
    [v13 setResponseHandler:&v20];
    v14 = [v8 messageDispatcher];
    [v14 sendMessage:v13 completionHandler:0];

    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
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

- (void)_updateRecurrences:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMTrigger *)self context];
  if (!v7)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger _updateRecurrences:completionHandler:]", @"clientCompletionHandler"];
    v23 = objc_autoreleasePoolPush();
    v24 = self;
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

  v9 = v8;
  if (v8)
  {
    v10 = [(HMTrigger *)self home];
    if (v10)
    {
      v11 = v10;
      if (v6)
      {
        v30 = @"kTimerTriggerRecurrencesKey";
        v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
        v31 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      }

      else
      {
        v28 = @"kTimerTriggerResetRecurrencesKey";
        v29 = MEMORY[0x1E695E118];
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      }

      [(HMTimerTrigger *)self _updateTimerTriggerWithResponse:v7 payloadToSend:v13];
    }

    else
    {
      v18 = [(HMTrigger *)self context];
      v19 = [v18 delegateCaller];
      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [v19 callCompletion:v7 error:v20];

      v11 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
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
    v7[2](v7, v11);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)updateRecurrences:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMTrigger *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger updateRecurrences:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
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

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__HMTimerTrigger_updateRecurrences_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updateRecurrence:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMTrigger *)self context];
  if (v8)
  {
    v9 = [(HMTrigger *)self home];
    if (v9)
    {
      if (v6)
      {
        v22 = @"kTimerTriggerRecurrenceDataKey";
        v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
        v23 = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      }

      else
      {
        v20 = @"kTimerTriggerResetRecurrenceDataKey";
        v21 = MEMORY[0x1E695E118];
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      }

      [(HMTimerTrigger *)self _updateTimerTriggerWithResponse:v7 payloadToSend:v11];
    }

    else
    {
      v16 = [(HMTrigger *)self context];
      v17 = [v16 delegateCaller];
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [v17 callCompletion:v7 error:v18];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
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
  v8 = [(HMTrigger *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger updateRecurrence:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
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

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__HMTimerTrigger_updateRecurrence_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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

- (void)_updateSignificantEventOffset:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMTrigger *)self context];
  if (v8)
  {
    v9 = [(HMTrigger *)self home];
    if (v9)
    {
      if (v6)
      {
        v22 = @"kTimerTriggerSignificantEventOffsetKey";
        v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
        v23 = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      }

      else
      {
        v20 = @"kTimerTriggerResetSignificantEventOffsetKey";
        v21 = MEMORY[0x1E695E118];
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      }

      [(HMTimerTrigger *)self _updateTimerTriggerWithResponse:v7 payloadToSend:v11];
    }

    else
    {
      v16 = [(HMTrigger *)self context];
      v17 = [v16 delegateCaller];
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [v17 callCompletion:v7 error:v18];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
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

- (void)updateSignificantEventOffset:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMTrigger *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger updateSignificantEventOffset:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
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

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__HMTimerTrigger_updateSignificantEventOffset_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updateSignificantEvent:(id)a3 completionHandler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMTrigger *)self context];
  if (v8)
  {
    if (v6)
    {
      v9 = [(HMTrigger *)self home];
      if (v9)
      {
        v19 = @"kTimerTriggerSignificantEventKey";
        v20 = v6;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [(HMTimerTrigger *)self _updateTimerTriggerWithResponse:v7 payloadToSend:v10];

LABEL_11:
        goto LABEL_12;
      }

      v15 = [(HMTrigger *)self context];
      v16 = [v15 delegateCaller];
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [v16 callCompletion:v7 error:v17];
    }

    else
    {
      v9 = [(HMTrigger *)self context];
      v15 = [v9 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      [v15 callCompletion:v7 error:v16];
    }

    goto LABEL_11;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
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

- (void)updateSignificantEvent:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMTrigger *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger updateSignificantEvent:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
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

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__HMTimerTrigger_updateSignificantEvent_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updateTimeZone:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMTrigger *)self context];
  if (v8)
  {
    v9 = [(HMTrigger *)self home];
    if (v9)
    {
      if (v6)
      {
        v22 = @"kTimerTriggerTimeZoneDataKey";
        v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
        v23 = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      }

      else
      {
        v20 = @"kTimerTriggerResetTimeZoneDataKey";
        v21 = MEMORY[0x1E695E118];
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      }

      [(HMTimerTrigger *)self _updateTimerTriggerWithResponse:v7 payloadToSend:v11];
    }

    else
    {
      v16 = [(HMTrigger *)self context];
      v17 = [v16 delegateCaller];
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [v17 callCompletion:v7 error:v18];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
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
  v8 = [(HMTrigger *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger updateTimeZone:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
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

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__HMTimerTrigger_updateTimeZone_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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

- (void)_updateFireDate:(id)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMTrigger *)self context];
  if (!v7)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger _updateFireDate:completionHandler:]", @"clientCompletionHandler"];
    v24 = objc_autoreleasePoolPush();
    v25 = self;
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

  v9 = v8;
  if (!v8)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
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
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v7[2](v7, v16);
    goto LABEL_10;
  }

  if (!v6)
  {
    v16 = [(HMTrigger *)self context];
    v17 = [v16 delegateCaller];
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    [v17 callCompletion:v7 error:v18];

LABEL_10:
    goto LABEL_13;
  }

  v10 = [(HMTrigger *)self home];
  if (v10)
  {
    v29 = @"kTimerTriggerInitialFireDateKey";
    v30 = v6;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [(HMTimerTrigger *)self _updateTimerTriggerWithResponse:v7 payloadToSend:v11];
  }

  else
  {
    v19 = [(HMTrigger *)self context];
    v20 = [v19 delegateCaller];
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    [v20 callCompletion:v7 error:v21];
  }

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)updateFireDate:(NSDate *)fireDate completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = fireDate;
  v7 = completion;
  v8 = [(HMTrigger *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTimerTrigger updateFireDate:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
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

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__HMTimerTrigger_updateFireDate_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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

- (void)setSignificantEventOffset:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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

- (void)setSignificantEvent:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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

- (void)setRecurrences:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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

- (void)setRecurrence:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  recurrence = self->_recurrence;
  self->_recurrence = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSDateComponents)recurrence
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDateComponents *)self->_recurrence copy];
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setTimeZone:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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

- (void)setFireDate:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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

- (HMTimerTrigger)initWithDictionary:(id)a3 home:(id)a4
{
  v6 = a3;
  v29.receiver = self;
  v29.super_class = HMTimerTrigger;
  v7 = [(HMTrigger *)&v29 initWithDictionary:v6 home:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"kTimerTriggerInitialFireDateKey"];
    fireDate = v7->_fireDate;
    v7->_fireDate = v8;

    v10 = MEMORY[0x1E695DFE8];
    v11 = [v6 hmf_dataForKey:@"kTimerTriggerTimeZoneDataKey"];
    v12 = [v10 hmf_unarchiveFromData:v11 error:0];
    timeZone = v7->_timeZone;
    v7->_timeZone = v12;

    v14 = MEMORY[0x1E695DF10];
    v15 = [v6 hmf_dataForKey:@"kTimerTriggerRecurrenceDataKey"];
    v16 = [v14 hmf_unarchiveFromData:v15 error:0];
    recurrence = v7->_recurrence;
    v7->_recurrence = v16;

    v18 = [v6 hmf_stringForKey:@"kTimerTriggerSignificantEventKey"];
    significantEvent = v7->_significantEvent;
    v7->_significantEvent = v18;

    v20 = MEMORY[0x1E695DF10];
    v21 = [v6 hmf_dataForKey:@"kTimerTriggerSignificantEventOffsetKey"];
    v22 = [v20 hmf_unarchiveFromData:v21 error:0];
    significantEventOffset = v7->_significantEventOffset;
    v7->_significantEventOffset = v22;

    v24 = [v6 hmf_numberForKey:@"kTimerTriggerRecurrencesKey"];
    v25 = v24;
    if (v24)
    {
      HMDaysOfTheWeekToDateComponents([v24 unsignedIntegerValue]);
    }

    else
    {
      [v6 arrayOfDateComponentsFromDataForKey:@"kTimerTriggerRecurrencesKey"];
    }
    v26 = ;
    recurrences = v7->_recurrences;
    v7->_recurrences = v26;
  }

  return v7;
}

- (HMTimerTrigger)initWithName:(id)a3 significantEvent:(id)a4 significantEventOffset:(id)a5 recurrences:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = [MEMORY[0x1E696ABC0] hmStringFromErrorCode:3];
    v26 = [v23 exceptionWithName:v24 reason:v25 userInfo:0];
    v27 = v26;

    objc_exception_throw(v26);
  }

  v14 = v13;
  v28.receiver = self;
  v28.super_class = HMTimerTrigger;
  v15 = [(HMTrigger *)&v28 initWithName:v10 configuredName:v10];
  if (v15)
  {
    v16 = [v11 copy];
    significantEvent = v15->_significantEvent;
    v15->_significantEvent = v16;

    v18 = [v12 copy];
    significantEventOffset = v15->_significantEventOffset;
    v15->_significantEventOffset = v18;

    v20 = [v14 copy];
    recurrences = v15->_recurrences;
    v15->_recurrences = v20;
  }

  return v15;
}

- (HMTimerTrigger)initWithName:(id)a3 fireDate:(id)a4 timeZone:(id)a5 recurrences:(id)a6
{
  v10 = a6;
  v11 = [(HMTimerTrigger *)self initWithName:a3 fireDate:a4 timeZone:a5 recurrence:0];
  if (v11)
  {
    v12 = [v10 copy];
    recurrences = v11->_recurrences;
    v11->_recurrences = v12;
  }

  return v11;
}

- (HMTimerTrigger)initWithName:(id)a3 fireDate:(id)a4 timeZone:(id)a5 recurrence:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = [MEMORY[0x1E696ABC0] hmStringFromErrorCode:3];
    v26 = [v23 exceptionWithName:v24 reason:v25 userInfo:0];
    v27 = v26;

    objc_exception_throw(v26);
  }

  v14 = v13;
  v28.receiver = self;
  v28.super_class = HMTimerTrigger;
  v15 = [(HMTrigger *)&v28 initWithName:v10 configuredName:v10];
  if (v15)
  {
    v16 = [v11 copy];
    fireDate = v15->_fireDate;
    v15->_fireDate = v16;

    v18 = [v12 copy];
    timeZone = v15->_timeZone;
    v15->_timeZone = v18;

    v20 = [v14 copy];
    recurrence = v15->_recurrence;
    v15->_recurrence = v20;
  }

  return v15;
}

@end