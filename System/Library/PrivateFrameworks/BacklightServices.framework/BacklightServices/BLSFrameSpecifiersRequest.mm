@interface BLSFrameSpecifiersRequest
- (BLSFrameSpecifiersRequest)initWithDateInterval:(id)interval previousPresentationDate:(id)date shouldReset:(BOOL)reset completion:(id)completion;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)completeWithDateSpecifiers:(id)specifiers;
@end

@implementation BLSFrameSpecifiersRequest

- (BLSFrameSpecifiersRequest)initWithDateInterval:(id)interval previousPresentationDate:(id)date shouldReset:(BOOL)reset completion:(id)completion
{
  intervalCopy = interval;
  dateCopy = date;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = BLSFrameSpecifiersRequest;
  v14 = [(BLSFrameSpecifiersRequest *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_dateInterval, interval);
    objc_storeStrong(&v15->_previousPresentationDate, date);
    v15->_shouldReset = reset;
    v16 = MEMORY[0x223D716E0](completionCopy);
    completion = v15->_completion;
    v15->_completion = v16;
  }

  return v15;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bls_shortLoggingString = [(NSDateInterval *)self->_dateInterval bls_shortLoggingString];
  v5 = [v3 appendObject:bls_shortLoggingString withName:@"interval"];

  bls_shortLoggingString2 = [(NSDate *)self->_previousPresentationDate bls_shortLoggingString];
  v7 = [v3 appendObject:bls_shortLoggingString2 withName:@"previous"];

  v8 = [v3 appendBool:self->_shouldReset withName:@"reset"];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_dateInterval];
  v5 = [builder appendObject:self->_previousPresentationDate];
  v6 = [builder appendBool:self->_shouldReset];
  v7 = [builder hash];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  dateInterval = self->_dateInterval;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __37__BLSFrameSpecifiersRequest_isEqual___block_invoke;
  v20[3] = &unk_278428B00;
  v7 = equalCopy;
  v21 = v7;
  v8 = [v5 appendObject:dateInterval counterpart:v20];
  previousPresentationDate = self->_previousPresentationDate;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __37__BLSFrameSpecifiersRequest_isEqual___block_invoke_2;
  v18[3] = &unk_278428B00;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendObject:previousPresentationDate counterpart:v18];
  shouldReset = self->_shouldReset;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__BLSFrameSpecifiersRequest_isEqual___block_invoke_3;
  v16[3] = &unk_278428FA8;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendBool:shouldReset counterpart:v16];
  LOBYTE(shouldReset) = [v5 isEqual];

  return shouldReset;
}

- (void)completeWithDateSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  os_unfair_lock_lock(&self->_lock);
  lock_completed = self->_lock_completed;
  self->_lock_completed = 1;
  v6 = MEMORY[0x223D716E0](self->_completion);
  completion = self->_completion;
  self->_completion = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (lock_completed)
  {
    v8 = bls_scenes_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BLSFrameSpecifiersRequest *)self completeWithDateSpecifiers:v8];
    }
  }

  else if (v6)
  {
    (v6)[2](v6, specifiersCopy);
  }
}

- (void)completeWithDateSpecifiers:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21FE25000, a2, OS_LOG_TYPE_ERROR, "completeWithDateSpecifiers should only be called once for request:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end