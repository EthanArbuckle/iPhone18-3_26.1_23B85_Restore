@interface ATHostBrowser
- (ATHostBrowser)init;
- (void)_finishSearchIfComplete;
- (void)_handleTimeout;
- (void)browseForHostsWithTimeout:(unint64_t)a3 completion:(id)a4;
- (void)netService:(id)a3 didNotResolve:(id)a4;
- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5;
- (void)netServiceBrowser:(id)a3 didNotSearch:(id)a4;
- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4 moreComing:(BOOL)a5;
- (void)netServiceBrowserDidStopSearch:(id)a3;
- (void)netServiceDidResolveAddress:(id)a3;
@end

@implementation ATHostBrowser

- (void)_handleTimeout
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%@ timeout expired - ending search", &v4, 0xCu);
  }

  if (self->_searchInProgress)
  {
    [(NSNetServiceBrowser *)self->_netServiceBrowser stop];
  }
}

- (void)_finishSearchIfComplete
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_searchInProgress && ![(NSMutableSet *)self->_hostsBeingResolved count])
  {
    v3 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%@ host browse completed", &v8, 0xCu);
    }

    netServiceBrowser = self->_netServiceBrowser;
    v5 = [MEMORY[0x277CBEB88] mainRunLoop];
    [(NSNetServiceBrowser *)netServiceBrowser removeFromRunLoop:v5 forMode:*MEMORY[0x277CBE640]];

    [(NSNetServiceBrowser *)self->_netServiceBrowser setDelegate:0];
    v6 = self->_netServiceBrowser;
    self->_netServiceBrowser = 0;

    dispatch_source_cancel(self->_timer);
    completionBlock = self->_completionBlock;
    if (completionBlock)
    {
      completionBlock[2](completionBlock, 0, 1);
    }
  }
}

- (void)netService:(id)a3 didNotResolve:(id)a4
{
  v5 = a3;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__ATHostBrowser_netService_didNotResolve___block_invoke;
  v8[3] = &unk_2784E5960;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

uint64_t __42__ATHostBrowser_netService_didNotResolve___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _finishSearchIfComplete];
}

- (void)netServiceDidResolveAddress:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ATHostBrowser_netServiceDidResolveAddress___block_invoke;
  v7[3] = &unk_2784E5960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __45__ATHostBrowser_netServiceDidResolveAddress___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) containsObject:*(a1 + 40)];
  if (result)
  {
    [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
    v3 = *(a1 + 32);
    v4 = v3[5];
    if (v4)
    {
      v5 = [[ATHostNetService alloc] initWithNetService:*(a1 + 40)];
      (*(v4 + 16))(v4, v5, 0);

      v3 = *(a1 + 32);
    }

    return [v3 _finishSearchIfComplete];
  }

  return result;
}

- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4 moreComing:(BOOL)a5
{
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ATHostBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke;
  block[3] = &unk_2784E5480;
  block[4] = self;
  v11 = v7;
  v12 = a5;
  v9 = v7;
  dispatch_async(queue, block);
}

uint64_t __63__ATHostBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 8);

    return [v3 stop];
  }

  return result;
}

- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5
{
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ATHostBrowser_netServiceBrowser_didFindService_moreComing___block_invoke;
  block[3] = &unk_2784E5480;
  block[4] = self;
  v11 = v7;
  v12 = a5;
  v9 = v7;
  dispatch_async(queue, block);
}

uint64_t __61__ATHostBrowser_netServiceBrowser_didFindService_moreComing___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v12 = 138412802;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%@ found host %@. moreComing=%d", &v12, 0x1Cu);
  }

  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  [*(a1 + 40) setDelegate:*(a1 + 32)];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = *(*(a1 + 32) + 64);
  v8 = v7 - v6;
  v9 = v6 <= v7;
  v10 = 1.0;
  if (!v9)
  {
    v10 = v8;
  }

  result = [*(a1 + 40) resolveWithTimeout:v10];
  if ((*(a1 + 48) & 1) == 0)
  {
    return [*(*(a1 + 32) + 8) stop];
  }

  return result;
}

- (void)netServiceBrowserDidStopSearch:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ATHostBrowser_netServiceBrowserDidStopSearch___block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __48__ATHostBrowser_netServiceBrowserDidStopSearch___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%@ search stopped", &v5, 0xCu);
  }

  *(*(a1 + 32) + 16) = 0;
  return [*(a1 + 32) _finishSearchIfComplete];
}

- (void)netServiceBrowser:(id)a3 didNotSearch:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__ATHostBrowser_netServiceBrowser_didNotSearch___block_invoke;
  v8[3] = &unk_2784E5960;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

uint64_t __48__ATHostBrowser_netServiceBrowser_didNotSearch___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%@ host browser failed search with error: %@", &v6, 0x16u);
  }

  *(*(a1 + 32) + 16) = 0;
  return [*(a1 + 32) _finishSearchIfComplete];
}

- (void)browseForHostsWithTimeout:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ATHostBrowser_browseForHostsWithTimeout_completion___block_invoke;
  block[3] = &unk_2784E5458;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

void __54__ATHostBrowser_browseForHostsWithTimeout_completion___block_invoke(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[6];
    *buf = 138412546;
    v25 = v3;
    v26 = 2048;
    v27 = v4;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%@ browsing for hosts. timeout=%lus", buf, 0x16u);
  }

  v5 = MEMORY[0x223DED0C0](a1[5]);
  v6 = a1[4];
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1[4] + 24) removeAllObjects];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  *(a1[4] + 56) = v8;
  *(a1[4] + 64) = *(a1[4] + 56) + a1[6];
  v9 = objc_alloc_init(MEMORY[0x277CCAB80]);
  v10 = a1[4];
  v11 = *(v10 + 8);
  *(v10 + 8) = v9;

  v12 = *(a1[4] + 8);
  v13 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v12 scheduleInRunLoop:v13 forMode:*MEMORY[0x277CBE640]];

  [*(a1[4] + 8) setDelegate:?];
  v14 = *(a1[4] + 8);
  v15 = [MEMORY[0x277CCACA8] stringWithCString:"_atc._tcp" encoding:1];
  [v14 searchForServicesOfType:v15 inDomain:&stru_2836EC190];

  *(a1[4] + 16) = 1;
  v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1[4] + 32));
  v17 = a1[4];
  v18 = *(v17 + 48);
  *(v17 + 48) = v16;

  v19 = *(a1[4] + 48);
  v20 = dispatch_time(0, 1000000000 * a1[6]);
  dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v21 = a1[4];
  v22 = *(v21 + 48);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__ATHostBrowser_browseForHostsWithTimeout_completion___block_invoke_7;
  handler[3] = &unk_2784E5938;
  handler[4] = v21;
  dispatch_source_set_event_handler(v22, handler);
  dispatch_resume(*(a1[4] + 48));
}

- (ATHostBrowser)init
{
  v8.receiver = self;
  v8.super_class = ATHostBrowser;
  v2 = [(ATHostBrowser *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("ATHostDiscoveryService", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    hostsBeingResolved = v2->_hostsBeingResolved;
    v2->_hostsBeingResolved = v5;
  }

  return v2;
}

@end