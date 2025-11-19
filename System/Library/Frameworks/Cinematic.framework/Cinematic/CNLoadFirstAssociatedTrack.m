@interface CNLoadFirstAssociatedTrack
@end

@implementation CNLoadFirstAssociatedTrack

void ___CNLoadFirstAssociatedTrack_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CNLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      ___CNLoadFirstAssociatedTrack_block_invoke_cold_1(v6, a1);
    }

    v8 = 2;
    v9 = v6;
  }

  else
  {
    if ([v5 count])
    {
      v12 = *(a1 + 48);
      v10 = [v5 firstObject];
      v11 = *(v12 + 16);
      goto LABEL_8;
    }

    v13 = _CNLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      ___CNLoadFirstAssociatedTrack_block_invoke_cold_2(a1, v13);
    }

    v8 = 3;
    v9 = 0;
  }

  v10 = _CNCinematicError(v8, v9);
  v11 = *(*(a1 + 48) + 16);
LABEL_8:
  v11();
}

void ___CNLoadFirstAssociatedTrack_block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void ___CNLoadFirstAssociatedTrack_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = 138412546;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_236F52000, a2, OS_LOG_TYPE_DEBUG, "Error: no tracks associated (type %@) with track %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end