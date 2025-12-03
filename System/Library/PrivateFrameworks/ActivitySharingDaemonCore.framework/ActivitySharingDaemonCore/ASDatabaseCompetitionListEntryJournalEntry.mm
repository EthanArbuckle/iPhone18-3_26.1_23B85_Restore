@interface ASDatabaseCompetitionListEntryJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (ASDatabaseCompetitionListEntryJournalEntry)initWithCoder:(id)coder;
- (ASDatabaseCompetitionListEntryJournalEntry)initWithCompetitionList:(id)list;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDatabaseCompetitionListEntryJournalEntry

- (ASDatabaseCompetitionListEntryJournalEntry)initWithCompetitionList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = ASDatabaseCompetitionListEntryJournalEntry;
  v6 = [(ASDatabaseCompetitionListEntryJournalEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_competitionList, list);
  }

  return v7;
}

- (ASDatabaseCompetitionListEntryJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ASDatabaseCompetitionListEntryJournalEntry;
  v5 = [(HDJournalEntry *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"competition_list"];
    v7 = [objc_alloc(MEMORY[0x277CE9078]) initWithData:v6];
    competitionList = v5->_competitionList;
    v5->_competitionList = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = ASDatabaseCompetitionListEntryJournalEntry;
  coderCopy = coder;
  [(HDJournalEntry *)&v8 encodeWithCoder:coderCopy];
  v5 = objc_alloc(MEMORY[0x277CBEA90]);
  v6 = [(ASCodableDatabaseCompetitionListEntry *)self->_competitionList data:v8.receiver];
  v7 = [v5 initWithData:v6];
  [coderCopy encodeObject:v7 forKey:@"competition_list"];
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  database = [profileCopy database];
  v17 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__ASDatabaseCompetitionListEntryJournalEntry_applyEntries_withProfile___block_invoke;
  v15[3] = &unk_278C4BF90;
  v16 = entriesCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__ASDatabaseCompetitionListEntryJournalEntry_applyEntries_withProfile___block_invoke_2;
  v12[3] = &unk_278C4BF40;
  v8 = profileCopy;
  v13 = v8;
  v9 = v16;
  v14 = v9;
  v10 = [(HDHealthEntity *)ASDatabaseCompetitionListEntryEntity performWriteTransactionWithHealthDatabase:database error:&v17 block:v15 inaccessibilityHandler:v12];
  v11 = v17;

  if (!v10)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      +[ASDatabaseCompetitionListEntryJournalEntry applyEntries:withProfile:];
    }
  }
}

uint64_t __71__ASDatabaseCompetitionListEntryJournalEntry_applyEntries_withProfile___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * v11) competitionList];
        v13 = [ASDatabaseCompetitionListEntryEntity _insertCompetitionList:v12 database:v6 error:a3];

        if (!v13)
        {
          v14 = 0;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __71__ASDatabaseCompetitionListEntryJournalEntry_applyEntries_withProfile___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) database];
  v6 = [v5 addJournalEntries:*(a1 + 40) error:a3];

  return v6;
}

+ (void)applyEntries:withProfile:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error inserting journaled competition lists %@: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end