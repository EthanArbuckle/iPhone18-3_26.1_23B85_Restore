@interface BLSHInternalTapToRadarManager
+ (id)sharedTapToRadarManager;
- (id)_init;
- (void)requestTapToRadar:(id)a3 log:(id)a4 completion:(id)a5;
- (void)requestTapToRadarNonInteractiveDraft:(id)a3 log:(id)a4 completion:(id)a5;
@end

@implementation BLSHInternalTapToRadarManager

- (id)_init
{
  v3.receiver = self;
  v3.super_class = BLSHInternalTapToRadarManager;
  return [(BLSHInternalTapToRadarManager *)&v3 init];
}

+ (id)sharedTapToRadarManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__BLSHInternalTapToRadarManager_sharedTapToRadarManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedTapToRadarManager__onceToken != -1)
  {
    dispatch_once(&sharedTapToRadarManager__onceToken, block);
  }

  v2 = sharedTapToRadarManager___ttrManager;

  return v2;
}

uint64_t __56__BLSHInternalTapToRadarManager_sharedTapToRadarManager__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = sharedTapToRadarManager___ttrManager;
  sharedTapToRadarManager___ttrManager = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)requestTapToRadar:(id)a3 log:(id)a4 completion:(id)a5
{
  v7 = a3;
  v11 = a4;
  v12 = a5;
  v8 = v7;
  v9 = v11;
  v10 = v12;
  BSDispatchMain();
}

void __66__BLSHInternalTapToRadarManager_requestTapToRadar_log_completion___block_invoke(uint64_t a1)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__BLSHInternalTapToRadarManager_requestTapToRadar_log_completion___block_invoke_2;
  v12[3] = &unk_27841F8C0;
  v13 = *(a1 + 56);
  v2 = MEMORY[0x223D70730](v12);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v3 + 8))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      __66__BLSHInternalTapToRadarManager_requestTapToRadar_log_completion___block_invoke_cold_1(v4);
    }

    v2[2](v2, 1);
  }

  else
  {
    objc_storeStrong((v3 + 16), *(a1 + 40));
    v5 = [[BLSHInternalTapToRadarDialog alloc] initWithDescriptor:*(a1 + 48) log:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__BLSHInternalTapToRadarManager_requestTapToRadar_log_completion___block_invoke_3;
    v10[3] = &unk_27841F8E8;
    v10[4] = v8;
    v11 = v2;
    [v9 presentWithCompletion:v10];
  }
}

uint64_t __66__BLSHInternalTapToRadarManager_requestTapToRadar_log_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __66__BLSHInternalTapToRadarManager_requestTapToRadar_log_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (void)requestTapToRadarNonInteractiveDraft:(id)a3 log:(id)a4 completion:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v7 = v12;
  v8 = v11;
  v9 = v10;
  BSDispatchMain();
}

void __85__BLSHInternalTapToRadarManager_requestTapToRadarNonInteractiveDraft_log_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__BLSHInternalTapToRadarManager_requestTapToRadarNonInteractiveDraft_log_completion___block_invoke_2;
  v4[3] = &unk_27841F938;
  v5 = v2;
  v6 = *(a1 + 48);
  [BLSHTapToRadarFiler fileRadar:v3 log:v5 completion:v4];
}

void __85__BLSHInternalTapToRadarManager_requestTapToRadarNonInteractiveDraft_log_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __85__BLSHInternalTapToRadarManager_requestTapToRadarNonInteractiveDraft_log_completion___block_invoke_2_cold_1(v5, v6);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __85__BLSHInternalTapToRadarManager_requestTapToRadarNonInteractiveDraft_log_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "Problem creating non-interactive radar draft: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end