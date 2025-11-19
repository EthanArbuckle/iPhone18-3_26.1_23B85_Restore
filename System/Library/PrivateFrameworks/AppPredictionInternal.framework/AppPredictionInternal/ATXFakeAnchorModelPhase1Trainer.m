@interface ATXFakeAnchorModelPhase1Trainer
- (ATXFakeAnchorModelPhase1Trainer)init;
- (id)trainPhase1;
@end

@implementation ATXFakeAnchorModelPhase1Trainer

- (ATXFakeAnchorModelPhase1Trainer)init
{
  v3.receiver = self;
  v3.super_class = ATXFakeAnchorModelPhase1Trainer;
  result = [(ATXFakeAnchorModelPhase1Trainer *)&v3 init];
  if (result)
  {
    result->_phase1TrainerCalled = 0;
  }

  return result;
}

- (id)trainPhase1
{
  v16 = *MEMORY[0x277D85DE8];
  self->_phase1TrainerCalled = 1;
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [&unk_283A588F8 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(&unk_283A588F8);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = objc_opt_new();
        [v8 setCandidateId:v7];
        [v2 addObject:v8];
      }

      v4 = [&unk_283A588F8 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

@end