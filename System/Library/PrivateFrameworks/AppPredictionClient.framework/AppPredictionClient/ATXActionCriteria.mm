@interface ATXActionCriteria
+ (id)predicateValidForAirplaneModeOn:(BOOL)on;
+ (id)predicateValidForDNDStatusOn:(BOOL)on;
- (ATXActionCriteria)initWithCoder:(id)coder;
- (ATXActionCriteria)initWithProto:(id)proto;
- (ATXActionCriteria)initWithProtoData:(id)data;
- (ATXActionCriteria)initWithStartDate:(id)date endDate:(id)endDate lockScreenEligible:(BOOL)eligible predicate:(id)predicate;
- (BOOL)isRelevant:(id)relevant;
- (NSDateInterval)dateInterval;
- (id)description;
- (id)encodeAsProto;
- (id)json;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
- (void)proto;
@end

@implementation ATXActionCriteria

- (NSDateInterval)dateInterval
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  startDate = self->_startDate;
  distantPast = startDate;
  if (!startDate)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
  }

  if (self->_endDate)
  {
    v6 = [v3 initWithStartDate:distantPast endDate:?];
    if (startDate)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 initWithStartDate:distantPast endDate:distantFuture];

  if (!startDate)
  {
LABEL_5:
  }

LABEL_6:

  return v6;
}

- (ATXActionCriteria)initWithStartDate:(id)date endDate:(id)endDate lockScreenEligible:(BOOL)eligible predicate:(id)predicate
{
  v30 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  predicateCopy = predicate;
  if (dateCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      dateCopy = 0;
    }
  }

  if (endDateCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (dateCopy && [dateCopy compare:endDateCopy] == 1)
      {
        v13 = __atxlog_handle_default();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          *buf = 138412802;
          v25 = v22;
          v26 = 2112;
          v27 = dateCopy;
          v28 = 2112;
          v29 = endDateCopy;
          _os_log_fault_impl(&dword_1BF549000, v13, OS_LOG_TYPE_FAULT, "%@: tried to initialize startDate must be before endDate %@ : %@", buf, 0x20u);
        }

        selfCopy = 0;
        goto LABEL_15;
      }
    }

    else
    {

      endDateCopy = 0;
    }
  }

  v23.receiver = self;
  v23.super_class = ATXActionCriteria;
  v15 = [(ATXActionCriteria *)&v23 init];
  if (v15)
  {
    v16 = [dateCopy copy];
    startDate = v15->_startDate;
    v15->_startDate = v16;

    v18 = [endDateCopy copy];
    endDate = v15->_endDate;
    v15->_endDate = v18;

    v15->_lockScreenEligible = eligible;
    objc_storeStrong(&v15->_predicate, predicate);
  }

  self = v15;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

+ (id)predicateValidForDNDStatusOn:(BOOL)on
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:on];
  v5 = [v3 predicateWithFormat:@"doNotDisturb==%@", v4];

  return v5;
}

+ (id)predicateValidForAirplaneModeOn:(BOOL)on
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:on];
  v5 = [v3 predicateWithFormat:@"airplaneMode==%@", v4];

  return v5;
}

- (BOOL)isRelevant:(id)relevant
{
  relevantCopy = relevant;
  dateInterval = [(ATXActionCriteria *)self dateInterval];
  v6 = [relevantCopy now];
  v7 = [dateInterval containsDate:v6];

  if (!v7 || [relevantCopy lockScreen] && !-[ATXActionCriteria lockScreenEligible](self, "lockScreenEligible"))
  {
    goto LABEL_11;
  }

  predicate = self->_predicate;
  if (!predicate)
  {
    goto LABEL_10;
  }

  if (([(NSPredicate *)predicate _allowsEvaluation]& 1) == 0)
  {
    v9 = [[ATXActionCriteriaPredicateChecker alloc] initWithObject:relevantCopy];
    if ([(ATXActionCriteriaPredicateChecker *)v9 isValid:self->_predicate])
    {
      [(NSPredicate *)self->_predicate allowEvaluation];
    }
  }

  if ([(NSPredicate *)self->_predicate evaluateWithObject:relevantCopy])
  {
LABEL_10:
    v10 = 1;
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

  return v10;
}

- (id)json
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"startDate";
  v3 = dateToJson(self->_startDate);
  v11[0] = v3;
  v10[1] = @"endDate";
  v4 = dateToJson(self->_endDate);
  v11[1] = v4;
  v10[2] = @"isLockScreenEligible";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_lockScreenEligible];
  v11[2] = v5;
  v10[3] = @"predicate";
  v6 = [(NSPredicate *)self->_predicate description];
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[3] = null;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  if (!v6)
  {
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeBool:self->_lockScreenEligible forKey:@"lockScreenEligible"];
  [coderCopy encodeObject:self->_predicate forKey:@"predicate"];
}

- (ATXActionCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v7 = [coderCopy decodeBoolForKey:@"lockScreenEligible"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];

  v9 = [(ATXActionCriteria *)self initWithStartDate:v5 endDate:v6 lockScreenEligible:v7 predicate:v8];
  return v9;
}

- (ATXActionCriteria)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBActionCriteria alloc] initWithData:dataCopy];

    self = [(ATXActionCriteria *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXActionCriteria *)self proto];
  data = [proto data];

  return data;
}

- (ATXActionCriteria)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasStartDate])
      {
        v6 = objc_alloc(MEMORY[0x1E695DF00]);
        [v5 startDate];
        v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v7 = 0;
      }

      if ([v5 hasEndDate])
      {
        v9 = objc_alloc(MEMORY[0x1E695DF00]);
        [v5 endDate];
        v10 = [v9 initWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v10 = 0;
      }

      predicate = [v5 predicate];
      v12 = [predicate length];

      if (v12)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = MEMORY[0x1E696ACD0];
        v15 = objc_opt_class();
        predicate2 = [v5 predicate];
        v21 = 0;
        v17 = [v14 unarchivedObjectOfClass:v15 fromData:predicate2 error:&v21];
        v18 = v21;

        objc_autoreleasePoolPop(v13);
        if (v18)
        {
          v19 = __atxlog_handle_default();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [(ATXActionCriteria *)v18 initWithProto:v19];
          }
        }
      }

      else
      {
        v17 = 0;
      }

      self = [(ATXActionCriteria *)self initWithStartDate:v7 endDate:v10 lockScreenEligible:[v5 isLockScreenEligible] predicate:v17];

      selfCopy = self;
    }

    else
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXActionCriteria *)self initWithProto:v5];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_alloc_init(ATXPBActionCriteria);
  startDate = self->_startDate;
  if (startDate)
  {
    [(NSDate *)startDate timeIntervalSinceReferenceDate];
    [(ATXPBActionCriteria *)v3 setStartDate:?];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    [(NSDate *)endDate timeIntervalSinceReferenceDate];
    [(ATXPBActionCriteria *)v3 setEndDate:?];
  }

  [(ATXPBActionCriteria *)v3 setIsLockScreenEligible:self->_lockScreenEligible];
  if (self->_predicate)
  {
    v6 = objc_autoreleasePoolPush();
    predicate = self->_predicate;
    v12 = 0;
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:predicate requiringSecureCoding:1 error:&v12];
    v9 = v12;
    [(ATXPBActionCriteria *)v3 setPredicate:v8];

    objc_autoreleasePoolPop(v6);
    if (v9)
    {
      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(ATXActionCriteria *)v9 proto];
      }
    }
  }

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  startDate = self->_startDate;
  endDate = self->_endDate;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_lockScreenEligible];
  v7 = [v3 initWithFormat:@"<ATXActionCriteria startDate: %@, endDate: %@, lockScreenEligible: %@, predicate: %@", startDate, endDate, v6, self->_predicate];

  return v7;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBActionCriteria proto", &v5, 0xCu);
}

- (void)initWithProto:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Could not unarchive predicate via protobufs: %@", &v2, 0xCu);
}

- (void)proto
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Could not archive predicate via protobufs: %@", &v2, 0xCu);
}

@end