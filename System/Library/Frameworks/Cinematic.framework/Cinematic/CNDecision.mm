@interface CNDecision
+ (id)_copyDecisionFromInternal:(id)internal;
+ (id)_copyDecisionsFromInternal:(id)internal;
+ (id)_copyInternalFromDecisions:(id)decisions;
+ (id)_takeDecisionsFromInternal:(id)internal;
- (BOOL)isEqual:(id)equal;
- (CMTime)time;
- (CNDecision)initWithTime:(CMTime *)time detectionGroupID:(CNDetectionGroupID)detectionGroupID strong:(BOOL)isStrong;
- (CNDecision)initWithTime:(CMTime *)time detectionID:(CNDetectionID)detectionID strong:(BOOL)isStrong;
- (id)_initCopyingInternalDecision:(id)decision;
- (id)_initTakingInternalDecision:(id)decision;
- (id)copyWithZone:(_NSZone *)zone;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    internalDecision = [(CNDecision *)self internalDecision];
    internalDecision2 = [v5 internalDecision];

    v8 = [internalDecision isEqual:internalDecision2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  internalDecision = [(CNDecision *)self internalDecision];
  v3 = [internalDecision hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  internalDecision = [(CNDecision *)self internalDecision];
  v6 = [v4 _initCopyingInternalDecision:internalDecision];

  return v6;
}

- (id)_initTakingInternalDecision:(id)decision
{
  decisionCopy = decision;
  v9.receiver = self;
  v9.super_class = CNDecision;
  v6 = [(CNDecision *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalDecision, decision);
  }

  return v7;
}

- (id)_initCopyingInternalDecision:(id)decision
{
  v4 = [decision copy];
  v5 = [(CNDecision *)self _initTakingInternalDecision:v4];

  return v5;
}

+ (id)_copyDecisionFromInternal:(id)internal
{
  internalCopy = internal;
  v5 = [[self alloc] _initCopyingInternalDecision:internalCopy];

  return v5;
}

+ (id)_takeDecisionsFromInternal:(id)internal
{
  v22 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = internalCopy;
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
        v12 = [self alloc];
        v13 = [v12 _initTakingInternalDecision:{v11, v17}];
        [array addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [array copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_copyDecisionsFromInternal:(id)internal
{
  v20 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = internalCopy;
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

        v11 = [self _copyDecisionFromInternal:{*(*(&v15 + 1) + 8 * v10), v15}];
        [array addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [array copy];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_copyInternalFromDecisions:(id)decisions
{
  v20 = *MEMORY[0x277D85DE8];
  decisionsCopy = decisions;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = decisionsCopy;
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

        internalDecision = [*(*(&v15 + 1) + 8 * v9) internalDecision];
        v11 = [internalDecision copy];
        [array addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [array copy];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end