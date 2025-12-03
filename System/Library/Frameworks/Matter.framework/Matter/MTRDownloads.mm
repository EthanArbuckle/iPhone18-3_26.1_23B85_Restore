@interface MTRDownloads
- (MTRDownloads)init;
- (id)add:(int64_t)add fabricIndex:(id)index nodeID:(id)d timeout:(double)timeout queue:(id)queue completion:(id)completion done:(id)done;
- (id)get:(id)get fabricIndex:(id)index nodeID:(id)d;
- (void)abortDownloadsForController:(id)controller nodeID:(id)d;
- (void)dealloc;
- (void)remove:(id)remove;
@end

@implementation MTRDownloads

- (MTRDownloads)init
{
  v6.receiver = self;
  v6.super_class = MTRDownloads;
  v2 = [(MTRDownloads *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    downloads = v2->_downloads;
    v2->_downloads = v3;
  }

  return v2;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = sub_23921C1E4(MTRError, 0x1A8000000ACLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_downloads;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v7++) failure:v3];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  downloads = self->_downloads;
  self->_downloads = 0;

  v10.receiver = self;
  v10.super_class = MTRDownloads;
  [(MTRDownloads *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)get:(id)get fabricIndex:(id)index nodeID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  getCopy = get;
  indexCopy = index;
  dCopy = d;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_downloads;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v15 matches:getCopy fabricIndex:indexCopy nodeID:{dCopy, v18}])
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)add:(int64_t)add fabricIndex:(id)index nodeID:(id)d timeout:(double)timeout queue:(id)queue completion:(id)completion done:(id)done
{
  indexCopy = index;
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  doneCopy = done;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 450);
  v21 = [[MTRDownload alloc] initWithType:add fabricIndex:indexCopy nodeID:dCopy timeout:queueCopy queue:completionCopy completion:doneCopy done:timeout];
  if (v21)
  {
    [(NSMutableArray *)self->_downloads addObject:v21];
    v22 = v21;
  }

  return v21;
}

- (void)abortDownloadsForController:(id)controller nodeID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  v20 = controllerCopy;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 461);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(controllerCopy, "fabricIndex")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(NSMutableArray *)self->_downloads copy];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        fabricIndex = [v13 fabricIndex];
        v15 = [fabricIndex isEqual:v8];

        if (v15)
        {
          if (!dCopy || ([v13 nodeID], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", dCopy), v16, (v17 & 1) != 0))
          {
            v18 = sub_23921C1E4(MTRError, 0x1D900000074, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
            [v13 abort:v18];

            [(MTRDownloads *)self remove:v13];
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)remove:(id)remove
{
  removeCopy = remove;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 483);
  [removeCopy cancelTimeoutTimer];
  [(NSMutableArray *)self->_downloads removeObject:removeCopy];
}

@end