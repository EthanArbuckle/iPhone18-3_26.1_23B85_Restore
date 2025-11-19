@interface MTRDownload
- (BOOL)matches:(id)a3 fabricIndex:(id)a4 nodeID:(id)a5;
- (MTRDownload)initWithType:(int64_t)a3 fabricIndex:(id)a4 nodeID:(id)a5 timeout:(double)a6 queue:(id)a7 completion:(id)a8 done:(id)a9;
- (id)_toFileDesignatorString:(int64_t)a3 nodeID:(id)a4;
- (id)_toFileURL:(int64_t)a3 nodeID:(id)a4;
- (id)_toNodeIDString:(id)a3;
- (id)_toTypeString:(int64_t)a3;
- (void)_callFinalize:(id)a3;
- (void)abort:(id)a3;
- (void)cancelTimeoutTimer;
- (void)checkInteractionModelResponse:(id)a3 error:(id)a4;
- (void)createFile:(id *)a3;
- (void)deleteFile;
- (void)failure:(id)a3;
- (void)writeToFile:(id)a3 error:(id *)a4;
@end

@implementation MTRDownload

- (MTRDownload)initWithType:(int64_t)a3 fabricIndex:(id)a4 nodeID:(id)a5 timeout:(double)a6 queue:(id)a7 completion:(id)a8 done:(id)a9
{
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 188);
  v48.receiver = self;
  v48.super_class = MTRDownload;
  v22 = [(MTRDownload *)&v48 init];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_17;
  }

  v38 = v17;
  obj = [(MTRDownload *)v22 _toFileDesignatorString:a3 nodeID:v18];
  v24 = [(MTRDownload *)v23 _toFileURL:a3 nodeID:v18];
  objc_initWeak(&location, v23);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_238EAB6BC;
  v41[3] = &unk_278A72B38;
  objc_copyWeak(&v46, &location);
  v42 = v19;
  v44 = v20;
  v25 = v24;
  v43 = v25;
  v45 = v21;
  v26 = MEMORY[0x23EE78590](v41);
  objc_storeStrong(&v23->_fileDesignator, obj);
  objc_storeStrong(&v23->_fabricIndex, a4);
  objc_storeStrong(&v23->_nodeID, a5);
  objc_storeStrong(&v23->_fileURL, v24);
  fileHandle = v23->_fileHandle;
  v23->_fileHandle = 0;

  v28 = MEMORY[0x23EE78590](v26);
  finalize = v23->_finalize;
  v23->_finalize = v28;

  v23->_lock._os_unfair_lock_opaque = 0;
  if (a6 <= 0.0)
  {
    goto LABEL_15;
  }

  v31 = 65535.0;
  if (a6 <= 65535.0)
  {
    v31 = a6;
    if (a6 <= 0.0)
    {
LABEL_15:
      v35 = 1;
      goto LABEL_16;
    }
  }

  else
  {
    v32 = sub_2393D9044(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_DEFAULT, "Warning: timeout is too large. It will be truncated to UINT16_MAX.", buf, 2u);
    }

    v30 = sub_2393D5398(2u);
    if (v30)
    {
      v30 = sub_2393D5320(0, 2);
    }
  }

  v33 = sub_239476328(v30);
  if (!(*(*v33 + 40))(v33, 1000 * v31, sub_238EAB884, v23))
  {
    goto LABEL_15;
  }

  v34 = sub_2393D9044(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v34, OS_LOG_TYPE_ERROR, "Failed to start timer for diagnostic log download timeout", buf, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  v35 = 0;
LABEL_16:

  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);

  v17 = v38;
  if ((v35 & 1) == 0)
  {
    v36 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v36 = v23;
LABEL_19:

  return v36;
}

- (void)checkInteractionModelResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = [v6 status];
    if ([v8 isEqual:&unk_284C3E510])
    {
      v9 = sub_23921C1E4(MTRError, 0x100000000DBLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
      [(MTRDownload *)self failure:v9];
    }

    else if ([v8 isEqual:&unk_284C3E528])
    {
      v9 = sub_23921C1E4(MTRError, 0x101000000A5, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
      [(MTRDownload *)self failure:v9];
    }

    else
    {
      if (![v8 isEqual:&unk_284C3E540])
      {
        if ([v8 isEqual:&unk_284C3E558])
        {
          v10 = [v6 logContent];
          v12 = 0;
          [(MTRDownload *)self writeToFile:v10 error:&v12];
          v11 = v12;

          if (v11)
          {
            [(MTRDownload *)self failure:v11];
          }

          else
          {
            [(MTRDownload *)self success];
          }
        }

        goto LABEL_10;
      }

      v9 = sub_23921C1E4(MTRError, 0x102000000D8, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
      [(MTRDownload *)self failure:v9];
    }

LABEL_10:
    goto LABEL_11;
  }

  [(MTRDownload *)self failure:v7];
LABEL_11:
}

- (void)createFile:(id *)a3
{
  p_fileHandle = &self->_fileHandle;
  if (!self->_fileHandle)
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v10 URLForDirectory:99 inDomain:1 appropriateForURL:self->_fileURL create:1 error:a3];
    if (!*a3)
    {
      v7 = [(NSURL *)self->_fileURL path];
      v8 = [v10 createFileAtPath:v7 contents:0 attributes:0];

      if (v8)
      {
        v9 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:self->_fileURL error:a3];
        if (!*a3)
        {
          objc_storeStrong(p_fileHandle, v9);
        }
      }

      else
      {
        *a3 = sub_23921C1E4(MTRError, 0x11F000000ACLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
      }
    }
  }
}

- (void)deleteFile
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_fileHandle)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [(NSURL *)self->_fileURL path];
    v10 = 0;
    [v3 removeItemAtPath:v4 error:&v10];
    v5 = v10;

    if (v5)
    {
      v6 = sub_2393D9044(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        fileURL = self->_fileURL;
        *buf = 138412546;
        v12 = fileURL;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Error trying to delete the log file: %@. Error: %@", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        v9 = self->_fileURL;
        sub_2393D5320(0, 1);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)writeToFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(MTRDownload *)self createFile:a4];
  [(NSFileHandle *)self->_fileHandle seekToEndOfFile];
  [(NSFileHandle *)self->_fileHandle writeData:v6 error:a4];
}

- (BOOL)matches:(id)a3 fabricIndex:(id)a4 nodeID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSString *)self->_fileDesignator isEqualToString:v8]&& [(NSNumber *)self->_fabricIndex isEqualToNumber:v9]&& [(NSNumber *)self->_nodeID isEqualToNumber:v10];

  return v11;
}

- (void)_callFinalize:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = MEMORY[0x23EE78590](self->_finalize);
  finalize = self->_finalize;
  self->_finalize = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    (v4)[2](v4, v6);
  }
}

- (void)failure:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ Diagnostic log transfer failure: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v7 = self;
    v8 = v4;
    sub_2393D5320(0, 2);
  }

  [(MTRDownload *)self _callFinalize:v4, v7, v8];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancelTimeoutTimer
{
  v2 = sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 350);
  v3 = *(*sub_239476328(v2) + 72);

  v3();
}

- (void)abort:(id)a3
{
  v6 = a3;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 356);
  [(MTRDownload *)self cancelTimeoutTimer];
  v4 = [(MTRDownload *)self abortHandler];

  if (v4)
  {
    v5 = [(MTRDownload *)self abortHandler];
    (v5)[2](v5, v6);
  }

  else
  {
    [(MTRDownload *)self failure:v6];
  }
}

- (id)_toFileURL:(int64_t)a3 nodeID:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setDateFormat:@"yyyy-MM-dd_HH:mm:ss.SSSZZZ"];
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = [v7 stringFromDate:v8];

  v10 = [(MTRDownload *)self _toNodeIDString:v6];
  v11 = [(MTRDownload *)self _toTypeString:a3];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", v9, v10, v11];
  v13 = MEMORY[0x277CBEBC0];
  v14 = NSTemporaryDirectory();
  v15 = [v14 stringByAppendingPathComponent:v12];
  v16 = [v13 fileURLWithPath:v15 isDirectory:1];

  return v16;
}

- (id)_toFileDesignatorString:(int64_t)a3 nodeID:(id)a4
{
  v6 = [(MTRDownload *)self _toNodeIDString:a4];
  v7 = [(MTRDownload *)self _toTypeString:a3];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"bdx://%@/%@", v6, v7];
  v9 = [v8 length];
  if (v9 >= 0x20)
  {
    v10 = 32;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 substringToIndex:v10];

  return v11;
}

- (id)_toNodeIDString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%016llX", objc_msgSend(v3, "unsignedLongLongValue")];

  return v4;
}

- (id)_toTypeString:(int64_t)a3
{
  if (a3 >= 3)
  {
    sub_238EAC830();
  }

  return off_278A72BF0[a3];
}

@end