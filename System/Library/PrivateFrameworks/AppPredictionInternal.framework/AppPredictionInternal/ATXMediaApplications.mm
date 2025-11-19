@interface ATXMediaApplications
- (ATXMediaApplications)init;
- (BOOL)appSupportsMedia:(id)a3;
- (void)_updateMediaApps;
@end

@implementation ATXMediaApplications

- (ATXMediaApplications)init
{
  v7.receiver = self;
  v7.super_class = ATXMediaApplications;
  v2 = [(ATXMediaApplications *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ATXMediaApplicationsQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    [(ATXMediaApplications *)v2 _updateMediaApps];
  }

  return v2;
}

- (void)_updateMediaApps
{
  dispatch_suspend(self->_queue);
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_BACKGROUND, 0);
  v4 = dispatch_queue_create("get-media-apps", v3);

  MRMediaRemoteGetAppsSupportingBrowsableContentAPIs();
}

void __40__ATXMediaApplications__updateMediaApps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __40__ATXMediaApplications__updateMediaApps__block_invoke_cold_1(a3, v5);
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:a2];
    [v6 addObject:@"com.apple.Music"];
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;
  }

  dispatch_resume(*(*(a1 + 32) + 8));
}

- (BOOL)appSupportsMedia:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(ATXMediaApplications *)a2 appSupportsMedia:?];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ATXMediaApplications_appSupportsMedia___block_invoke;
  block[3] = &unk_27859A8B0;
  v11 = v5;
  v12 = &v13;
  block[4] = self;
  v7 = v5;
  dispatch_sync(queue, block);
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t __41__ATXMediaApplications_appSupportsMedia___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void __40__ATXMediaApplications__updateMediaApps__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Unable to fetch media apps with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)appSupportsMedia:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXMediaApplications.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
}

@end