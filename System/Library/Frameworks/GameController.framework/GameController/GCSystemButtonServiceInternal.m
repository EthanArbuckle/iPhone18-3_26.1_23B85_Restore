@interface GCSystemButtonServiceInternal
@end

@implementation GCSystemButtonServiceInternal

void __38___GCSystemButtonServiceInternal_init__block_invoke(uint64_t a1)
{
  v2 = _gc_log_system_button();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __38___GCSystemButtonServiceInternal_init__block_invoke_cold_1(v2);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DFD8] set];
  [v3 setActiveClientsRespondingToSystemButton:v4];

  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  *(v9 + 16) = 0;
}

void __38___GCSystemButtonServiceInternal_init__block_invoke_158(uint64_t a1)
{
  v2 = _gc_log_system_button();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __38___GCSystemButtonServiceInternal_init__block_invoke_158_cold_1(v2);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DFD8] set];
  [v3 setActiveClientsRespondingToSystemButton:v4];

  v5 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___GCSystemButtonServiceInternal_init__block_invoke_159;
  block[3] = &unk_1E8418C28;
  v7 = *(a1 + 32);
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
}

@end