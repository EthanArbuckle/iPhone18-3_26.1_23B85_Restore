@interface ASDatabaseCompetitionBulkDeletionJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
@end

@implementation ASDatabaseCompetitionBulkDeletionJournalEntry

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 database];
  v17 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__ASDatabaseCompetitionBulkDeletionJournalEntry_applyEntries_withProfile___block_invoke;
  v15[3] = &unk_278C4BF90;
  v16 = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__ASDatabaseCompetitionBulkDeletionJournalEntry_applyEntries_withProfile___block_invoke_2;
  v12[3] = &unk_278C4BF40;
  v8 = v16;
  v13 = v8;
  v9 = v5;
  v14 = v9;
  v10 = [(HDHealthEntity *)ASDatabaseCompetitionEntity performWriteTransactionWithHealthDatabase:v7 error:&v17 block:v15 inaccessibilityHandler:v12];
  v11 = v17;

  if (!v10)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      +[ASDatabaseCompetitionBulkDeletionJournalEntry applyEntries:withProfile:];
    }
  }
}

BOOL __74__ASDatabaseCompetitionBulkDeletionJournalEntry_applyEntries_withProfile___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277D10B70] truePredicate];
  v6 = [*(a1 + 32) database];
  v7 = [(HDHealthEntity *)ASDatabaseCompetitionEntity deleteEntitiesWithPredicate:v5 healthDatabase:v6 error:a3];

  return v7;
}

uint64_t __74__ASDatabaseCompetitionBulkDeletionJournalEntry_applyEntries_withProfile___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) database];
  v6 = [v5 addJournalEntries:*(a1 + 40) error:a3];

  return v6;
}

+ (void)applyEntries:withProfile:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error applying journal delete for all competitions %@: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end