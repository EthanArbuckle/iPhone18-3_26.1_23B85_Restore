@interface MTRDiagnosticLogsDownloader
- (MTRDiagnosticLogsDownloader)init;
- (void)_abortDownloadsForController:(id)a3 nodeID:(id)a4;
- (void)dealloc;
- (void)downloadLogFromNodeWithID:(id)a3 controller:(id)a4 type:(int64_t)a5 timeout:(double)a6 queue:(id)a7 completion:(id)a8;
- (void)handleBDXTransferSessionBeginForFileDesignator:(id)a3 fabricIndex:(id)a4 nodeID:(id)a5 completion:(id)a6 abortHandler:(id)a7;
- (void)handleBDXTransferSessionDataForFileDesignator:(id)a3 fabricIndex:(id)a4 nodeID:(id)a5 data:(id)a6 completion:(id)a7;
- (void)handleBDXTransferSessionEndForFileDesignator:(id)a3 fabricIndex:(id)a4 nodeID:(id)a5 error:(id)a6;
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

- (void)downloadLogFromNodeWithID:(id)a3 controller:(id)a4 type:(int64_t)a5 timeout:(double)a6 queue:(id)a7 completion:(id)a8
{
  v53 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v37 = a8;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 527);
  [(MTRDiagnosticLogsDownloader *)self _abortDownloadsForController:v15 nodeID:v14];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_238EAD7BC;
  v42[3] = &unk_278A72B60;
  v17 = v15;
  v43 = v17;
  v44 = self;
  v36 = MEMORY[0x23EE78590](v42);
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v17, "fabricIndex")}];
  v18 = [MTRDownloads add:"add:fabricIndex:nodeID:timeout:queue:completion:done:" fabricIndex:a5 nodeID:a6 timeout:? queue:? completion:? done:?];
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
    v34 = [MTRDevice deviceWithNodeID:v14 controller:v17];
    v33 = [(MTRGenericCluster *)[MTRClusterDiagnosticLogs alloc] initWithDevice:v34 endpointID:&unk_284C3E570 queue:v16];
    v21 = objc_alloc_init(MTRDiagnosticLogsClusterRetrieveLogsRequestParams);
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)v21 setIntent:v22];

    [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)v21 setRequestedProtocol:&unk_284C3E558];
    v23 = [v20 fileDesignator];
    [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)v21 setTransferFileDesignator:v23];

    [(MTRClusterDiagnosticLogs *)v33 retrieveLogsRequestWithParams:v21 expectedValues:0 expectedValueInterval:0 completion:v32];
    v24 = sub_2393D9044(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v17 compressedFabricID];
      v26 = [v25 unsignedLongLongValue];
      v27 = [v14 unsignedLongLongValue];
      v28 = [v14 unsignedLongLongValue];
      *buf = 138413058;
      v46 = v20;
      v47 = 2048;
      v48 = v26;
      v49 = 2048;
      v50 = v27;
      v51 = 2048;
      v52 = v28;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_DEFAULT, "%@ Started log download attempt for node %016llX-%016llX (%llu)", buf, 0x2Au);
    }

    if (sub_2393D5398(2u))
    {
      v29 = [v17 compressedFabricID];
      [v29 unsignedLongLongValue];
      [v14 unsignedLongLongValue];
      [v14 unsignedLongLongValue];
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
    v41 = v37;
    dispatch_async(v16, block);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_abortDownloadsForController:(id)a3 nodeID:(id)a4
{
  v7 = a3;
  v6 = a4;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 570);
  [(MTRDownloads *)self->_downloads abortDownloadsForController:v7 nodeID:v6];
}

- (void)handleBDXTransferSessionBeginForFileDesignator:(id)a3 fabricIndex:(id)a4 nodeID:(id)a5 completion:(id)a6 abortHandler:(id)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24 = a7;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 581);
  v16 = [(MTRDownloads *)self->_downloads get:v12 fabricIndex:v13 nodeID:v14];
  v17 = +[MTRDeviceControllerFactory sharedInstance];
  v18 = sub_23952B954(v17, [v13 unsignedCharValue]);

  v19 = sub_2393D9044(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v18 compressedFabricID];
    *buf = 138413314;
    v26 = v16;
    v27 = 2048;
    v28 = [v20 unsignedLongLongValue];
    v29 = 2048;
    v30 = [v14 unsignedLongLongValue];
    v31 = 2048;
    v32 = [v14 unsignedLongLongValue];
    v33 = 2112;
    v34 = v12;
    _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "%@ BDX Transfer Session Begin for log download: %016llX-%016llX (%llu), %@", buf, 0x34u);
  }

  if (sub_2393D5398(2u))
  {
    v21 = [v18 compressedFabricID];
    [v21 unsignedLongLongValue];
    [v14 unsignedLongLongValue];
    [v14 unsignedLongLongValue];
    sub_2393D5320(0, 2);
  }

  if (v16)
  {
    [v16 setAbortHandler:v24];
    v15[2](v15, 0);
  }

  else
  {
    v22 = sub_23921C1E4(MTRError, 0x24F000000D8, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
    (v15)[2](v15, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleBDXTransferSessionDataForFileDesignator:(id)a3 fabricIndex:(id)a4 nodeID:(id)a5 data:(id)a6 completion:(id)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26 = v12;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 603);
  v17 = v12;
  v18 = [(MTRDownloads *)self->_downloads get:v12 fabricIndex:v13 nodeID:v14];
  v19 = +[MTRDeviceControllerFactory sharedInstance];
  v20 = sub_23952B954(v19, [v13 unsignedCharValue]);

  v21 = sub_2393D9044(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v20 compressedFabricID];
    *buf = 138413570;
    v29 = v18;
    v30 = 2048;
    v31 = [v22 unsignedLongLongValue];
    v32 = 2048;
    v33 = [v14 unsignedLongLongValue];
    v34 = 2048;
    v35 = [v14 unsignedLongLongValue];
    v36 = 2112;
    v17 = v26;
    v37 = v26;
    v38 = 2112;
    v39 = v15;
    _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "%@ BDX Transfer Session Data for log download: %016llX-%016llX (%llu), %@: %@", buf, 0x3Eu);
  }

  if (sub_2393D5398(2u))
  {
    v23 = [v20 compressedFabricID];
    [v23 unsignedLongLongValue];
    [v14 unsignedLongLongValue];
    [v14 unsignedLongLongValue];
    sub_2393D5320(0, 2);

    v17 = v26;
  }

  if (v18)
  {
    v27 = 0;
    [v18 writeToFile:v15 error:&v27];
    v24 = v27;
    v16[2](v16, 0);
  }

  else
  {
    v24 = sub_23921C1E4(MTRError, 0x265000000D8, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
    (v16)[2](v16, v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleBDXTransferSessionEndForFileDesignator:(id)a3 fabricIndex:(id)a4 nodeID:(id)a5 error:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 627);
  v14 = [(MTRDownloads *)self->_downloads get:v10 fabricIndex:v11 nodeID:v12];
  v15 = +[MTRDeviceControllerFactory sharedInstance];
  v16 = sub_23952B954(v15, [v11 unsignedCharValue]);

  v17 = sub_2393D9044(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 compressedFabricID];
    *buf = 138413570;
    v22 = v14;
    v23 = 2048;
    v24 = [v18 unsignedLongLongValue];
    v25 = 2048;
    v26 = [v12 unsignedLongLongValue];
    v27 = 2048;
    v28 = [v12 unsignedLongLongValue];
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ BDX Transfer Session End for log download: %016llX-%016llX (%llu), %@: %@", buf, 0x3Eu);
  }

  if (sub_2393D5398(2u))
  {
    v19 = [v16 compressedFabricID];
    [v19 unsignedLongLongValue];
    [v12 unsignedLongLongValue];
    [v12 unsignedLongLongValue];
    sub_2393D5320(0, 2);
  }

  if (v14)
  {
    if (v13)
    {
      [v14 failure:v13];
    }

    else
    {
      [v14 success];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end