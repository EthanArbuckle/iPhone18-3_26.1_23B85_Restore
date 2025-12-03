@interface ASDatabaseCompetitionDeletionJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (ASDatabaseCompetitionDeletionJournalEntry)initWithCoder:(id)coder;
- (ASDatabaseCompetitionDeletionJournalEntry)initWithFriendUUID:(id)d type:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDatabaseCompetitionDeletionJournalEntry

- (ASDatabaseCompetitionDeletionJournalEntry)initWithFriendUUID:(id)d type:(int64_t)type
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = ASDatabaseCompetitionDeletionJournalEntry;
  v8 = [(ASDatabaseCompetitionDeletionJournalEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_friendUUID, d);
    v9->_type = type;
  }

  return v9;
}

- (ASDatabaseCompetitionDeletionJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ASDatabaseCompetitionDeletionJournalEntry;
  v5 = [(HDJournalEntry *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"friendUUID"];
    v7 = [MEMORY[0x277CCAD78] hk_UUIDWithData:v6];
    friendUUID = v5->_friendUUID;
    v5->_friendUUID = v7;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ASDatabaseCompetitionDeletionJournalEntry;
  coderCopy = coder;
  [(HDJournalEntry *)&v6 encodeWithCoder:coderCopy];
  v5 = [(NSUUID *)self->_friendUUID hk_dataForUUIDBytes:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"friendUUID"];

  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  database = [profileCopy database];
  v18 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__ASDatabaseCompetitionDeletionJournalEntry_applyEntries_withProfile___block_invoke;
  v15[3] = &unk_278C4DA00;
  v16 = entriesCopy;
  v17 = profileCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__ASDatabaseCompetitionDeletionJournalEntry_applyEntries_withProfile___block_invoke_2;
  v12[3] = &unk_278C4BF40;
  v8 = v17;
  v13 = v8;
  v9 = v16;
  v14 = v9;
  v10 = [(HDHealthEntity *)ASDatabaseCompetitionEntity performWriteTransactionWithHealthDatabase:database error:&v18 block:v15 inaccessibilityHandler:v12];
  v11 = v18;

  if (!v10)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      +[ASDatabaseCompetitionDeletionJournalEntry applyEntries:withProfile:];
    }
  }
}

uint64_t __70__ASDatabaseCompetitionDeletionJournalEntry_applyEntries_withProfile___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = ASCompetitionPredicateForFriendUUIDAndType(*(*(*(&v16 + 1) + 8 * v8) + 8), *(*(*(&v16 + 1) + 8 * v8) + 16));
        v10 = [*(a1 + 40) database];
        v11 = [(HDHealthEntity *)ASDatabaseCompetitionEntity deleteEntitiesWithPredicate:v9 healthDatabase:v10 error:a3];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __70__ASDatabaseCompetitionDeletionJournalEntry_applyEntries_withProfile___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) database];
  v6 = [v5 addJournalEntries:*(a1 + 40) error:a3];

  return v6;
}

+ (void)applyEntries:withProfile:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error applying journal deletes for competitions %@: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end