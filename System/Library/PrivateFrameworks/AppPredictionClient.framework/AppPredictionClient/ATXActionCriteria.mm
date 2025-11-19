@interface ATXActionCriteria
+ (id)predicateValidForAirplaneModeOn:(BOOL)a3;
+ (id)predicateValidForDNDStatusOn:(BOOL)a3;
- (ATXActionCriteria)initWithCoder:(id)a3;
- (ATXActionCriteria)initWithProto:(id)a3;
- (ATXActionCriteria)initWithProtoData:(id)a3;
- (ATXActionCriteria)initWithStartDate:(id)a3 endDate:(id)a4 lockScreenEligible:(BOOL)a5 predicate:(id)a6;
- (BOOL)isRelevant:(id)a3;
- (NSDateInterval)dateInterval;
- (id)description;
- (id)encodeAsProto;
- (id)json;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
- (void)proto;
@end

@implementation ATXActionCriteria

- (NSDateInterval)dateInterval
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  startDate = self->_startDate;
  v5 = startDate;
  if (!startDate)
  {
    v5 = [MEMORY[0x1E695DF00] distantPast];
  }

  if (self->_endDate)
  {
    v6 = [v3 initWithStartDate:v5 endDate:?];
    if (startDate)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 initWithStartDate:v5 endDate:v8];

  if (!startDate)
  {
LABEL_5:
  }

LABEL_6:

  return v6;
}

- (ATXActionCriteria)initWithStartDate:(id)a3 endDate:(id)a4 lockScreenEligible:(BOOL)a5 predicate:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v10 = 0;
    }
  }

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v10 && [v10 compare:v11] == 1)
      {
        v13 = __atxlog_handle_default();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          *buf = 138412802;
          v25 = v22;
          v26 = 2112;
          v27 = v10;
          v28 = 2112;
          v29 = v11;
          _os_log_fault_impl(&dword_1BF549000, v13, OS_LOG_TYPE_FAULT, "%@: tried to initialize startDate must be before endDate %@ : %@", buf, 0x20u);
        }

        v14 = 0;
        goto LABEL_15;
      }
    }

    else
    {

      v11 = 0;
    }
  }

  v23.receiver = self;
  v23.super_class = ATXActionCriteria;
  v15 = [(ATXActionCriteria *)&v23 init];
  if (v15)
  {
    v16 = [v10 copy];
    startDate = v15->_startDate;
    v15->_startDate = v16;

    v18 = [v11 copy];
    endDate = v15->_endDate;
    v15->_endDate = v18;

    v15->_lockScreenEligible = a5;
    objc_storeStrong(&v15->_predicate, a6);
  }

  self = v15;
  v14 = self;
LABEL_15:

  return v14;
}

+ (id)predicateValidForDNDStatusOn:(BOOL)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v5 = [v3 predicateWithFormat:@"doNotDisturb==%@", v4];

  return v5;
}

+ (id)predicateValidForAirplaneModeOn:(BOOL)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v5 = [v3 predicateWithFormat:@"airplaneMode==%@", v4];

  return v5;
}

- (BOOL)isRelevant:(id)a3
{
  v4 = a3;
  v5 = [(ATXActionCriteria *)self dateInterval];
  v6 = [v4 now];
  v7 = [v5 containsDate:v6];

  if (!v7 || [v4 lockScreen] && !-[ATXActionCriteria lockScreenEligible](self, "lockScreenEligible"))
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
    v9 = [[ATXActionCriteriaPredicateChecker alloc] initWithObject:v4];
    if ([(ATXActionCriteriaPredicateChecker *)v9 isValid:self->_predicate])
    {
      [(NSPredicate *)self->_predicate allowEvaluation];
    }
  }

  if ([(NSPredicate *)self->_predicate evaluateWithObject:v4])
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
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v11[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  if (!v6)
  {
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeBool:self->_lockScreenEligible forKey:@"lockScreenEligible"];
  [v5 encodeObject:self->_predicate forKey:@"predicate"];
}

- (ATXActionCriteria)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v7 = [v4 decodeBoolForKey:@"lockScreenEligible"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];

  v9 = [(ATXActionCriteria *)self initWithStartDate:v5 endDate:v6 lockScreenEligible:v7 predicate:v8];
  return v9;
}

- (ATXActionCriteria)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBActionCriteria alloc] initWithData:v4];

    self = [(ATXActionCriteria *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXActionCriteria *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXActionCriteria)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

      v11 = [v5 predicate];
      v12 = [v11 length];

      if (v12)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = MEMORY[0x1E696ACD0];
        v15 = objc_opt_class();
        v16 = [v5 predicate];
        v21 = 0;
        v17 = [v14 unarchivedObjectOfClass:v15 fromData:v16 error:&v21];
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

      v8 = self;
    }

    else
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXActionCriteria *)self initWithProto:v5];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Could not archive predicate via protobufs: %@", &v2, 0xCu);
}

@end