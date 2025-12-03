@interface MTRDownload
- (BOOL)matches:(id)matches fabricIndex:(id)index nodeID:(id)d;
- (MTRDownload)initWithType:(int64_t)type fabricIndex:(id)index nodeID:(id)d timeout:(double)timeout queue:(id)queue completion:(id)completion done:(id)done;
- (id)_toFileDesignatorString:(int64_t)string nodeID:(id)d;
- (id)_toFileURL:(int64_t)l nodeID:(id)d;
- (id)_toNodeIDString:(id)string;
- (id)_toTypeString:(int64_t)string;
- (void)_callFinalize:(id)finalize;
- (void)abort:(id)abort;
- (void)cancelTimeoutTimer;
- (void)checkInteractionModelResponse:(id)response error:(id)error;
- (void)createFile:(id *)file;
- (void)deleteFile;
- (void)failure:(id)failure;
- (void)writeToFile:(id)file error:(id *)error;
@end

@implementation MTRDownload

- (MTRDownload)initWithType:(int64_t)type fabricIndex:(id)index nodeID:(id)d timeout:(double)timeout queue:(id)queue completion:(id)completion done:(id)done
{
  indexCopy = index;
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  doneCopy = done;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 188);
  v48.receiver = self;
  v48.super_class = MTRDownload;
  v22 = [(MTRDownload *)&v48 init];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_17;
  }

  v38 = indexCopy;
  obj = [(MTRDownload *)v22 _toFileDesignatorString:type nodeID:dCopy];
  v24 = [(MTRDownload *)v23 _toFileURL:type nodeID:dCopy];
  objc_initWeak(&location, v23);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_238EAB6BC;
  v41[3] = &unk_278A72B38;
  objc_copyWeak(&v46, &location);
  v42 = queueCopy;
  v44 = completionCopy;
  v25 = v24;
  v43 = v25;
  v45 = doneCopy;
  v26 = MEMORY[0x23EE78590](v41);
  objc_storeStrong(&v23->_fileDesignator, obj);
  objc_storeStrong(&v23->_fabricIndex, index);
  objc_storeStrong(&v23->_nodeID, d);
  objc_storeStrong(&v23->_fileURL, v24);
  fileHandle = v23->_fileHandle;
  v23->_fileHandle = 0;

  v28 = MEMORY[0x23EE78590](v26);
  finalize = v23->_finalize;
  v23->_finalize = v28;

  v23->_lock._os_unfair_lock_opaque = 0;
  if (timeout <= 0.0)
  {
    goto LABEL_15;
  }

  timeoutCopy = 65535.0;
  if (timeout <= 65535.0)
  {
    timeoutCopy = timeout;
    if (timeout <= 0.0)
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
  if (!(*(*v33 + 40))(v33, 1000 * timeoutCopy, sub_238EAB884, v23))
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

  indexCopy = v38;
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

- (void)checkInteractionModelResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (!errorCopy)
  {
    status = [responseCopy status];
    if ([status isEqual:&unk_284C3E510])
    {
      v9 = sub_23921C1E4(MTRError, 0x100000000DBLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
      [(MTRDownload *)self failure:v9];
    }

    else if ([status isEqual:&unk_284C3E528])
    {
      v9 = sub_23921C1E4(MTRError, 0x101000000A5, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
      [(MTRDownload *)self failure:v9];
    }

    else
    {
      if (![status isEqual:&unk_284C3E540])
      {
        if ([status isEqual:&unk_284C3E558])
        {
          logContent = [responseCopy logContent];
          v12 = 0;
          [(MTRDownload *)self writeToFile:logContent error:&v12];
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

  [(MTRDownload *)self failure:errorCopy];
LABEL_11:
}

- (void)createFile:(id *)file
{
  p_fileHandle = &self->_fileHandle;
  if (!self->_fileHandle)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:self->_fileURL create:1 error:file];
    if (!*file)
    {
      path = [(NSURL *)self->_fileURL path];
      v8 = [defaultManager createFileAtPath:path contents:0 attributes:0];

      if (v8)
      {
        v9 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:self->_fileURL error:file];
        if (!*file)
        {
          objc_storeStrong(p_fileHandle, v9);
        }
      }

      else
      {
        *file = sub_23921C1E4(MTRError, 0x11F000000ACLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
      }
    }
  }
}

- (void)deleteFile
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_fileHandle)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [(NSURL *)self->_fileURL path];
    v10 = 0;
    [defaultManager removeItemAtPath:path error:&v10];
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

- (void)writeToFile:(id)file error:(id *)error
{
  fileCopy = file;
  [(MTRDownload *)self createFile:error];
  [(NSFileHandle *)self->_fileHandle seekToEndOfFile];
  [(NSFileHandle *)self->_fileHandle writeData:fileCopy error:error];
}

- (BOOL)matches:(id)matches fabricIndex:(id)index nodeID:(id)d
{
  matchesCopy = matches;
  indexCopy = index;
  dCopy = d;
  v11 = [(NSString *)self->_fileDesignator isEqualToString:matchesCopy]&& [(NSNumber *)self->_fabricIndex isEqualToNumber:indexCopy]&& [(NSNumber *)self->_nodeID isEqualToNumber:dCopy];

  return v11;
}

- (void)_callFinalize:(id)finalize
{
  finalizeCopy = finalize;
  os_unfair_lock_lock(&self->_lock);
  v4 = MEMORY[0x23EE78590](self->_finalize);
  finalize = self->_finalize;
  self->_finalize = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    (v4)[2](v4, finalizeCopy);
  }
}

- (void)failure:(id)failure
{
  v13 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = failureCopy;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ Diagnostic log transfer failure: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    selfCopy2 = self;
    v8 = failureCopy;
    sub_2393D5320(0, 2);
  }

  [(MTRDownload *)self _callFinalize:failureCopy, selfCopy2, v8];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancelTimeoutTimer
{
  v2 = sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 350);
  v3 = *(*sub_239476328(v2) + 72);

  v3();
}

- (void)abort:(id)abort
{
  abortCopy = abort;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 356);
  [(MTRDownload *)self cancelTimeoutTimer];
  abortHandler = [(MTRDownload *)self abortHandler];

  if (abortHandler)
  {
    abortHandler2 = [(MTRDownload *)self abortHandler];
    (abortHandler2)[2](abortHandler2, abortCopy);
  }

  else
  {
    [(MTRDownload *)self failure:abortCopy];
  }
}

- (id)_toFileURL:(int64_t)l nodeID:(id)d
{
  dCopy = d;
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setDateFormat:@"yyyy-MM-dd_HH:mm:ss.SSSZZZ"];
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = [v7 stringFromDate:v8];

  v10 = [(MTRDownload *)self _toNodeIDString:dCopy];
  v11 = [(MTRDownload *)self _toTypeString:l];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", v9, v10, v11];
  v13 = MEMORY[0x277CBEBC0];
  v14 = NSTemporaryDirectory();
  v15 = [v14 stringByAppendingPathComponent:v12];
  v16 = [v13 fileURLWithPath:v15 isDirectory:1];

  return v16;
}

- (id)_toFileDesignatorString:(int64_t)string nodeID:(id)d
{
  v6 = [(MTRDownload *)self _toNodeIDString:d];
  v7 = [(MTRDownload *)self _toTypeString:string];
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

- (id)_toNodeIDString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%016llX", objc_msgSend(stringCopy, "unsignedLongLongValue")];

  return v4;
}

- (id)_toTypeString:(int64_t)string
{
  if (string >= 3)
  {
    sub_238EAC830();
  }

  return off_278A72BF0[string];
}

@end