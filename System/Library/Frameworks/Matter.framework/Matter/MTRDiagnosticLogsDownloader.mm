@interface MTRDiagnosticLogsDownloader
- (MTRDiagnosticLogsDownloader)init;
- (void)_abortDownloadsForController:(id)controller nodeID:(id)d;
- (void)dealloc;
- (void)downloadLogFromNodeWithID:(id)d controller:(id)controller type:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)handleBDXTransferSessionBeginForFileDesignator:(id)designator fabricIndex:(id)index nodeID:(id)d completion:(id)completion abortHandler:(id)handler;
- (void)handleBDXTransferSessionDataForFileDesignator:(id)designator fabricIndex:(id)index nodeID:(id)d data:(id)data completion:(id)completion;
- (void)handleBDXTransferSessionEndForFileDesignator:(id)designator fabricIndex:(id)index nodeID:(id)d error:(id)error;
@end

@implementation MTRDiagnosticLogsDownloader

- (MTRDiagnosticLogsDownloader)init
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 493);
  v7.receiver = self;
  v7.super_class = MTRDiagnosticLogsDownloader;
  v3 = [(MTRDiagnosticLogsDownloader *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(MTRDownloads);
    downloads = v3->_downloads;
    v3->_downloads = v4;

    operator new();
  }

  return 0;
}

- (void)dealloc
{
  bridge = self->_bridge;
  if (bridge)
  {
    (*(bridge->var0 + 1))(bridge, a2);
    self->_bridge = 0;
  }

  downloads = self->_downloads;
  self->_downloads = 0;

  v5.receiver = self;
  v5.super_class = MTRDiagnosticLogsDownloader;
  [(MTRDiagnosticLogsDownloader *)&v5 dealloc];
}

- (void)downloadLogFromNodeWithID:(id)d controller:(id)controller type:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v53 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  queueCopy = queue;
  completionCopy = completion;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 527);
  [(MTRDiagnosticLogsDownloader *)self _abortDownloadsForController:controllerCopy nodeID:dCopy];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_238EAD7BC;
  v42[3] = &unk_278A72B60;
  v17 = controllerCopy;
  v43 = v17;
  selfCopy = self;
  v36 = MEMORY[0x23EE78590](v42);
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v17, "fabricIndex")}];
  v18 = [MTRDownloads add:"add:fabricIndex:nodeID:timeout:queue:completion:done:" fabricIndex:type nodeID:timeout timeout:? queue:? completion:? done:?];
  v19 = v18;
  if (v18)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_238EAD908;
    v38[3] = &unk_278A72BB0;
    v20 = v18;
    v39 = v20;
    v32 = MEMORY[0x23EE78590](v38);
    v34 = [MTRDevice deviceWithNodeID:dCopy controller:v17];
    v33 = [(MTRGenericCluster *)[MTRClusterDiagnosticLogs alloc] initWithDevice:v34 endpointID:&unk_284C3E570 queue:queueCopy];
    v21 = objc_alloc_init(MTRDiagnosticLogsClusterRetrieveLogsRequestParams);
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)v21 setIntent:v22];

    [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)v21 setRequestedProtocol:&unk_284C3E558];
    fileDesignator = [v20 fileDesignator];
    [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)v21 setTransferFileDesignator:fileDesignator];

    [(MTRClusterDiagnosticLogs *)v33 retrieveLogsRequestWithParams:v21 expectedValues:0 expectedValueInterval:0 completion:v32];
    v24 = sub_2393D9044(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      compressedFabricID = [v17 compressedFabricID];
      unsignedLongLongValue = [compressedFabricID unsignedLongLongValue];
      unsignedLongLongValue2 = [dCopy unsignedLongLongValue];
      unsignedLongLongValue3 = [dCopy unsignedLongLongValue];
      *buf = 138413058;
      v46 = v20;
      v47 = 2048;
      v48 = unsignedLongLongValue;
      v49 = 2048;
      v50 = unsignedLongLongValue2;
      v51 = 2048;
      v52 = unsignedLongLongValue3;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_DEFAULT, "%@ Started log download attempt for node %016llX-%016llX (%llu)", buf, 0x2Au);
    }

    if (sub_2393D5398(2u))
    {
      compressedFabricID2 = [v17 compressedFabricID];
      [compressedFabricID2 unsignedLongLongValue];
      [dCopy unsignedLongLongValue];
      [dCopy unsignedLongLongValue];
      sub_2393D5320(0, 2);
    }

    v30 = &v39;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_238EAD87C;
    block[3] = &unk_278A72B88;
    v30 = &v41;
    v41 = completionCopy;
    dispatch_async(queueCopy, block);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_abortDownloadsForController:(id)controller nodeID:(id)d
{
  controllerCopy = controller;
  dCopy = d;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 570);
  [(MTRDownloads *)self->_downloads abortDownloadsForController:controllerCopy nodeID:dCopy];
}

- (void)handleBDXTransferSessionBeginForFileDesignator:(id)designator fabricIndex:(id)index nodeID:(id)d completion:(id)completion abortHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  designatorCopy = designator;
  indexCopy = index;
  dCopy = d;
  completionCopy = completion;
  handlerCopy = handler;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 581);
  v16 = [(MTRDownloads *)self->_downloads get:designatorCopy fabricIndex:indexCopy nodeID:dCopy];
  v17 = +[MTRDeviceControllerFactory sharedInstance];
  v18 = sub_23952B954(v17, [indexCopy unsignedCharValue]);

  v19 = sub_2393D9044(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    compressedFabricID = [v18 compressedFabricID];
    *buf = 138413314;
    v26 = v16;
    v27 = 2048;
    unsignedLongLongValue = [compressedFabricID unsignedLongLongValue];
    v29 = 2048;
    unsignedLongLongValue2 = [dCopy unsignedLongLongValue];
    v31 = 2048;
    unsignedLongLongValue3 = [dCopy unsignedLongLongValue];
    v33 = 2112;
    v34 = designatorCopy;
    _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "%@ BDX Transfer Session Begin for log download: %016llX-%016llX (%llu), %@", buf, 0x34u);
  }

  if (sub_2393D5398(2u))
  {
    compressedFabricID2 = [v18 compressedFabricID];
    [compressedFabricID2 unsignedLongLongValue];
    [dCopy unsignedLongLongValue];
    [dCopy unsignedLongLongValue];
    sub_2393D5320(0, 2);
  }

  if (v16)
  {
    [v16 setAbortHandler:handlerCopy];
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v22 = sub_23921C1E4(MTRError, 0x24F000000D8, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
    (completionCopy)[2](completionCopy, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleBDXTransferSessionDataForFileDesignator:(id)designator fabricIndex:(id)index nodeID:(id)d data:(id)data completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  designatorCopy = designator;
  indexCopy = index;
  dCopy = d;
  dataCopy = data;
  completionCopy = completion;
  v26 = designatorCopy;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 603);
  v17 = designatorCopy;
  v18 = [(MTRDownloads *)self->_downloads get:designatorCopy fabricIndex:indexCopy nodeID:dCopy];
  v19 = +[MTRDeviceControllerFactory sharedInstance];
  v20 = sub_23952B954(v19, [indexCopy unsignedCharValue]);

  v21 = sub_2393D9044(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    compressedFabricID = [v20 compressedFabricID];
    *buf = 138413570;
    v29 = v18;
    v30 = 2048;
    unsignedLongLongValue = [compressedFabricID unsignedLongLongValue];
    v32 = 2048;
    unsignedLongLongValue2 = [dCopy unsignedLongLongValue];
    v34 = 2048;
    unsignedLongLongValue3 = [dCopy unsignedLongLongValue];
    v36 = 2112;
    v17 = v26;
    v37 = v26;
    v38 = 2112;
    v39 = dataCopy;
    _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "%@ BDX Transfer Session Data for log download: %016llX-%016llX (%llu), %@: %@", buf, 0x3Eu);
  }

  if (sub_2393D5398(2u))
  {
    compressedFabricID2 = [v20 compressedFabricID];
    [compressedFabricID2 unsignedLongLongValue];
    [dCopy unsignedLongLongValue];
    [dCopy unsignedLongLongValue];
    sub_2393D5320(0, 2);

    v17 = v26;
  }

  if (v18)
  {
    v27 = 0;
    [v18 writeToFile:dataCopy error:&v27];
    v24 = v27;
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v24 = sub_23921C1E4(MTRError, 0x265000000D8, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
    (completionCopy)[2](completionCopy, v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleBDXTransferSessionEndForFileDesignator:(id)designator fabricIndex:(id)index nodeID:(id)d error:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  designatorCopy = designator;
  indexCopy = index;
  dCopy = d;
  errorCopy = error;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 627);
  v14 = [(MTRDownloads *)self->_downloads get:designatorCopy fabricIndex:indexCopy nodeID:dCopy];
  v15 = +[MTRDeviceControllerFactory sharedInstance];
  v16 = sub_23952B954(v15, [indexCopy unsignedCharValue]);

  v17 = sub_2393D9044(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    compressedFabricID = [v16 compressedFabricID];
    *buf = 138413570;
    v22 = v14;
    v23 = 2048;
    unsignedLongLongValue = [compressedFabricID unsignedLongLongValue];
    v25 = 2048;
    unsignedLongLongValue2 = [dCopy unsignedLongLongValue];
    v27 = 2048;
    unsignedLongLongValue3 = [dCopy unsignedLongLongValue];
    v29 = 2112;
    v30 = designatorCopy;
    v31 = 2112;
    v32 = errorCopy;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ BDX Transfer Session End for log download: %016llX-%016llX (%llu), %@: %@", buf, 0x3Eu);
  }

  if (sub_2393D5398(2u))
  {
    compressedFabricID2 = [v16 compressedFabricID];
    [compressedFabricID2 unsignedLongLongValue];
    [dCopy unsignedLongLongValue];
    [dCopy unsignedLongLongValue];
    sub_2393D5320(0, 2);
  }

  if (v14)
  {
    if (errorCopy)
    {
      [v14 failure:errorCopy];
    }

    else
    {
      [v14 success];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end