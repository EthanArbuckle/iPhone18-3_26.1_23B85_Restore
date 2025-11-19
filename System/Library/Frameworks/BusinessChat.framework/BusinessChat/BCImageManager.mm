@interface BCImageManager
- (BCImageManager)init;
@end

@implementation BCImageManager

- (BCImageManager)init
{
  v3 = objc_alloc_init(BCNetworkProvider);
  v4 = v3;
  if (self)
  {
    v7.receiver = self;
    v7.super_class = BCImageManager;
    v5 = [(BCImageManager *)&v7 init];
    self = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_networkProvider, v3);
    }
  }

  return self;
}

void __84__BCImageManager__fetchBrandIconDataForMapItem_desiredSize_allowSmaller_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = LogCategory_Daemon();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v12 = 138412290;
      v13 = v7;
      v10 = "Failed to fetch brand icon data: %@";
LABEL_6:
      _os_log_impl(&dword_236EA0000, v8, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
    }
  }

  else if (v9)
  {
    v12 = 134217984;
    v13 = [v6 length];
    v10 = "Fetched brand icon data with length: %ld";
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6);
  v11 = *MEMORY[0x277D85DE8];
}

void __90__BCImageManager__fetchNavBarBrandIconDataForMapItem_desiredSize_allowSmaller_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = LogCategory_Daemon();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v12 = 138412290;
      v13 = v7;
      v10 = "Failed to fetch navbar brand icon data: %@";
LABEL_6:
      _os_log_impl(&dword_236EA0000, v8, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
    }
  }

  else if (v9)
  {
    v12 = 134217984;
    v13 = [v6 length];
    v10 = "Fetched navbar brand icon data with length: %ld";
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6);
  v11 = *MEMORY[0x277D85DE8];
}

@end