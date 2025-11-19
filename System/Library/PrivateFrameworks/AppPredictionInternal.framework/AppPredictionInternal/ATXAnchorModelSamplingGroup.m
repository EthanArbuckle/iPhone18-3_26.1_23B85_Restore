@interface ATXAnchorModelSamplingGroup
+ (id)getSamplingGroupForDataCollection;
+ (id)samplingGroupFromSamplingGroupId:(int64_t)a3;
+ (int64_t)assignSamplingGroupToUserAndPersistToDefaults:(id)a3;
+ (void)resetSamplingGroupAssignmentForUser;
- (ATXAnchorModelSamplingGroup)initWithAnchorWhitelist:(id)a3 samplingGroupId:(int64_t)a4;
- (id)description;
@end

@implementation ATXAnchorModelSamplingGroup

- (ATXAnchorModelSamplingGroup)initWithAnchorWhitelist:(id)a3 samplingGroupId:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ATXAnchorModelSamplingGroup;
  v7 = [(ATXAnchorModelSamplingGroup *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    anchorWhitelist = v7->_anchorWhitelist;
    v7->_anchorWhitelist = v8;

    v7->_samplingGroupId = a4;
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Sampling Group ID: %li. Anchors: ", self->_samplingGroupId];
  [v3 appendString:v4];

  if ([(NSArray *)self->_anchorWhitelist count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSArray *)self->_anchorWhitelist objectAtIndexedSubscript:v5];
      v7 = [(NSArray *)self->_anchorWhitelist count]- 1;
      v8 = objc_alloc(MEMORY[0x277CCACA8]);
      v9 = [v6 description];
      v10 = v9;
      if (v5 == v7)
      {
        v11 = @"%@";
      }

      else
      {
        v11 = @"%@, ";
      }

      v12 = [v8 initWithFormat:v11, v9];
      [v3 appendString:v12];

      ++v5;
    }

    while ([(NSArray *)self->_anchorWhitelist count]> v5);
  }

  v13 = [v3 copy];

  return v13;
}

+ (id)getSamplingGroupForDataCollection
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v5 = [v4 integerForKey:@"com.apple.duetexpertd.anchormodel.dataharvester.samplinggroup.samplinggroupid"];
  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "AnchorModel: Retrieving the user's assigned sampling group for Anchor Model Data Collection.", &v12, 2u);
  }

  if (!v5)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "AnchorModel: User was not assigned to a sampling group. Selecting a sampling group for the user...", &v12, 2u);
    }

    v5 = [a1 assignSamplingGroupToUserAndPersistToDefaults:v4];
  }

  v8 = __atxlog_handle_default();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v5;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "AnchorModel: Sampling group retrieved for user: %li", &v12, 0xCu);
  }

  v9 = [ATXAnchorModelSamplingGroup samplingGroupFromSamplingGroupId:v5];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (int64_t)assignSamplingGroupToUserAndPersistToDefaults:(id)a3
{
  v4 = a3;
  v5 = [a1 selectSamplingGroupForUser];
  [v4 setInteger:v5 forKey:@"com.apple.duetexpertd.anchormodel.dataharvester.samplinggroup.samplinggroupid"];

  return v5;
}

+ (void)resetSamplingGroupAssignmentForUser
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v3 setInteger:0 forKey:@"com.apple.duetexpertd.anchormodel.dataharvester.samplinggroup.samplinggroupid"];
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "AnchorModel: User's assigned sampling group for Anchor Model Data Collection has been reset.", v5, 2u);
  }
}

+ (id)samplingGroupFromSamplingGroupId:(int64_t)a3
{
  v30[5] = *MEMORY[0x277D85DE8];
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0:
        v17 = __atxlog_handle_default();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          [ATXAnchorModelSamplingGroup samplingGroupFromSamplingGroupId:v17];
        }

        v4 = [ATXAnchorModelSamplingGroup alloc];
        v5 = MEMORY[0x277CBEBF8];
        v6 = 0;
        goto LABEL_20;
      case 1:
        v21 = [ATXAnchorModelSamplingGroup alloc];
        v8 = objc_opt_new();
        v30[0] = v8;
        v9 = objc_opt_new();
        v30[1] = v9;
        v10 = objc_opt_new();
        v30[2] = v10;
        v11 = objc_opt_new();
        v30[3] = v11;
        v12 = objc_opt_new();
        v30[4] = v12;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
        v14 = v21;
        v15 = v13;
        v16 = 1;
        goto LABEL_22;
      case 2:
        v7 = [ATXAnchorModelSamplingGroup alloc];
        v8 = objc_opt_new();
        v29[0] = v8;
        v9 = objc_opt_new();
        v29[1] = v9;
        v10 = objc_opt_new();
        v29[2] = v10;
        v11 = objc_opt_new();
        v29[3] = v11;
        v12 = objc_opt_new();
        v29[4] = v12;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:5];
        v14 = v7;
        v15 = v13;
        v16 = 2;
        goto LABEL_22;
    }

LABEL_15:
    v18 = __atxlog_handle_default();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [(ATXAnchorModelSamplingGroup *)a3 samplingGroupFromSamplingGroupId:v18];
    }

    v4 = [ATXAnchorModelSamplingGroup alloc];
    v5 = MEMORY[0x277CBEBF8];
    v6 = a3;
    goto LABEL_20;
  }

  if (a3 > 4)
  {
    if (a3 == 5)
    {
      v4 = [ATXAnchorModelSamplingGroup alloc];
      v5 = MEMORY[0x277CBEBF8];
      v6 = 5;
      goto LABEL_20;
    }

    if (a3 == 6)
    {
      v4 = [ATXAnchorModelSamplingGroup alloc];
      v5 = MEMORY[0x277CBEBF8];
      v6 = 6;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (a3 != 3)
  {
    v4 = [ATXAnchorModelSamplingGroup alloc];
    v5 = MEMORY[0x277CBEBF8];
    v6 = 4;
LABEL_20:
    v20 = [(ATXAnchorModelSamplingGroup *)v4 initWithAnchorWhitelist:v5 samplingGroupId:v6];
    goto LABEL_23;
  }

  v19 = [ATXAnchorModelSamplingGroup alloc];
  v8 = objc_opt_new();
  v24 = v8;
  v9 = objc_opt_new();
  v25 = v9;
  v10 = objc_opt_new();
  v26 = v10;
  v11 = objc_opt_new();
  v27 = v11;
  v12 = objc_opt_new();
  v28 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:5];
  v14 = v19;
  v15 = v13;
  v16 = 3;
LABEL_22:
  v20 = [(ATXAnchorModelSamplingGroup *)v14 initWithAnchorWhitelist:v15 samplingGroupId:v16, v24, v25, v26, v27];

LABEL_23:
  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (void)samplingGroupFromSamplingGroupId:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "AnchorModel: Tried to initialize a sampling group with an unknown sampling group id. Passed-in id: %li", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end