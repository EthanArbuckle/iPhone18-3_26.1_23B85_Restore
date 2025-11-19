@interface CNDecision
+ (id)_copyDecisionFromInternal:(id)a3;
+ (id)_copyDecisionsFromInternal:(id)a3;
+ (id)_copyInternalFromDecisions:(id)a3;
+ (id)_takeDecisionsFromInternal:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CMTime)time;
- (CNDecision)initWithTime:(CMTime *)time detectionGroupID:(CNDetectionGroupID)detectionGroupID strong:(BOOL)isStrong;
- (CNDecision)initWithTime:(CMTime *)time detectionID:(CNDetectionID)detectionID strong:(BOOL)isStrong;
- (id)_initCopyingInternalDecision:(id)a3;
- (id)_initTakingInternalDecision:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CNDecision

- (CNDecision)initWithTime:(CMTime *)time detectionID:(CNDetectionID)detectionID strong:(BOOL)isStrong
{
  v8 = isStrong;
  v9 = objc_alloc(MEMORY[0x277D3E838]);
  v13 = *time;
  v10 = [v9 initWithTime:&v13 trackIdentifier:detectionID options:v8];
  v11 = [(CNDecision *)self _initTakingInternalDecision:v10];

  return v11;
}

- (CNDecision)initWithTime:(CMTime *)time detectionGroupID:(CNDetectionGroupID)detectionGroupID strong:(BOOL)isStrong
{
  v8 = isStrong;
  v9 = objc_alloc(MEMORY[0x277D3E838]);
  v13 = *time;
  v10 = [v9 initWithTime:&v13 groupIdentifier:detectionGroupID options:v8 | 2];
  v11 = [(CNDecision *)self _initTakingInternalDecision:v10];

  return v11;
}

- (CMTime)time
{
  result = self->_internalDecision;
  if (result)
  {
    return [(CMTime *)result time];
  }

  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CNDecision *)self internalDecision];
    v7 = [v5 internalDecision];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(CNDecision *)self internalDecision];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(CNDecision *)self internalDecision];
  v6 = [v4 _initCopyingInternalDecision:v5];

  return v6;
}

- (id)_initTakingInternalDecision:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNDecision;
  v6 = [(CNDecision *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalDecision, a3);
  }

  return v7;
}

- (id)_initCopyingInternalDecision:(id)a3
{
  v4 = [a3 copy];
  v5 = [(CNDecision *)self _initTakingInternalDecision:v4];

  return v5;
}

+ (id)_copyDecisionFromInternal:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initCopyingInternalDecision:v4];

  return v5;
}

+ (id)_takeDecisionsFromInternal:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [a1 alloc];
        v13 = [v12 _initTakingInternalDecision:{v11, v17}];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_copyDecisionsFromInternal:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 _copyDecisionFromInternal:{*(*(&v15 + 1) + 8 * v10), v15}];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_copyInternalFromDecisions:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

        v10 = [*(*(&v15 + 1) + 8 * v9) internalDecision];
        v11 = [v10 copy];
        [v4 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end