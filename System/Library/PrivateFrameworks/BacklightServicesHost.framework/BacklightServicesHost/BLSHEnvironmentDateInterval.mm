@interface BLSHEnvironmentDateInterval
- (BLSHEnvironmentDateInterval)initWithPresentationInterval:(id)a3 previousPresentationDate:(id)a4 shouldReset:(BOOL)a5 environment:(id)a6;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation BLSHEnvironmentDateInterval

- (BLSHEnvironmentDateInterval)initWithPresentationInterval:(id)a3 previousPresentationDate:(id)a4 shouldReset:(BOOL)a5 environment:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = BLSHEnvironmentDateInterval;
  v14 = [(BLSHEnvironmentDateInterval *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_presentationInterval, a3);
    objc_storeStrong(&v15->_previousPresentationDate, a4);
    v15->_shouldReset = a5;
    objc_storeStrong(&v15->_environment, a6);
  }

  return v15;
}

- (id)description
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __42__BLSHEnvironmentDateInterval_description__block_invoke;
  v10 = &unk_27841E538;
  v11 = v3;
  v12 = self;
  v4 = v3;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 description];

  return v5;
}

void __42__BLSHEnvironmentDateInterval_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 16) bls_shortLoggingString];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", *(a1 + 40)];
  [v2 appendString:v3 withName:v4];

  v5 = *(a1 + 32);
  v6 = [*(*(a1 + 40) + 24) bls_shortLoggingString];
  [v5 appendString:v6 withName:@"prev" skipIfEmpty:1];

  v7 = *(a1 + 40);
  if (*(v7 + 8) == 1)
  {
    [*(a1 + 32) appendString:@"shouldReset" withName:0];
    v7 = *(a1 + 40);
  }

  v8 = *(a1 + 32);
  v9 = [*(v7 + 32) identifier];
  v11 = v9;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"<NULL>";
  }

  [v8 appendString:v10 withName:0];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_presentationInterval];
  v5 = [v3 appendObject:self->_previousPresentationDate];
  v6 = [v3 appendBool:self->_shouldReset];
  v7 = [v3 appendPointer:self->_environment];
  v8 = [v3 hash];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  presentationInterval = self->_presentationInterval;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __39__BLSHEnvironmentDateInterval_isEqual___block_invoke;
  v28[3] = &unk_27841EB40;
  v7 = v4;
  v29 = v7;
  v8 = [v5 appendObject:presentationInterval counterpart:v28];
  previousPresentationDate = self->_previousPresentationDate;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __39__BLSHEnvironmentDateInterval_isEqual___block_invoke_2;
  v26[3] = &unk_27841EB40;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendObject:previousPresentationDate counterpart:v26];
  shouldReset = self->_shouldReset;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __39__BLSHEnvironmentDateInterval_isEqual___block_invoke_3;
  v24[3] = &unk_278420208;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendBool:shouldReset counterpart:v24];
  environment = self->_environment;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __39__BLSHEnvironmentDateInterval_isEqual___block_invoke_4;
  v22 = &unk_27841E868;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendPointer:environment counterpart:&v19];
  LOBYTE(environment) = [v5 isEqual];

  return environment;
}

@end