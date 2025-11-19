@interface MPSNDArrayAutoTuneRecorderObj
- (MPSNDArrayAutoTuneRecorderObj)init;
- (id)getKernelNodesForKernelID:(unint64_t)a3;
- (void)dealloc;
- (void)recordNode:(id)a3 kernelID:(unint64_t)a4;
@end

@implementation MPSNDArrayAutoTuneRecorderObj

- (MPSNDArrayAutoTuneRecorderObj)init
{
  v15.receiver = self;
  v15.super_class = MPSNDArrayAutoTuneRecorderObj;
  v2 = [(MPSNDArrayAutoTuneRecorderObj *)&v15 init];
  v2->_nodeDictionary = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2->_fileManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = getenv("MPSNDARRAY_AUTO_TUNE_FILE_PATH");
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/", v3];
  }

  else
  {
    v5 = NSTemporaryDirectory();
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"/tmp/";
    }

    v7 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v7 setDateFormat:@"yyyy-MM-dd_HH_mm_ss"];
    v8 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "bundleIdentifier"}];
    v9 = MEMORY[0x277CCACA8];
    v10 = getpid();
    v4 = [v9 stringWithFormat:@"%@%@/mpsndarray_autotune-%d-%@-%u/", v6, v8, v10, objc_msgSend(v7, "stringFromDate:", objc_msgSend(MEMORY[0x277CBEAA8], "date")), arc4random()];
  }

  v2->_autoTuneNodesDirURL = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v14 = 0;
  v13 = 0;
  if ([(NSFileManager *)v2->_fileManager fileExistsAtPath:v4 isDirectory:&v13])
  {
    if ((v13 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      [objc_msgSend(0 "localizedFailureReason")];
      [objc_msgSend(0 "localizedDescription")];
      MTLReportFailure();
    }
  }

  else if (![(NSFileManager *)v2->_fileManager createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v14])
  {
    v11 = [objc_msgSend(v14 "localizedFailureReason")];
    NSLog(&cfstr_ErrorCreatingD.isa, v11, [objc_msgSend(v14 "localizedDescription")]);
    v2->_autoTuneNodesDirURL = 0;
  }

  return v2;
}

- (void)recordNode:(id)a3 kernelID:(unint64_t)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = [(MPSNDArrayAutoTuneRecorderObj *)self getKernelNodesForKernelID:a4];
  if ([v7 containsObject:a3])
  {
LABEL_23:
    v33 = *MEMORY[0x277D85DE8];
    return;
  }

  v8 = objc_autoreleasePoolPush();
  [v7 addObject:a3];
  v9 = kernelIDToFileNameMap[a4];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v9, @".nsarray"];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v9, @".h"];
  v12 = [(NSURL *)self->_autoTuneNodesDirURL URLByAppendingPathComponent:v10];
  v13 = [(NSURL *)self->_autoTuneNodesDirURL URLByAppendingPathComponent:v11];
  v14 = [(NSString *)[(NSURL *)v12 path] UTF8String];
  MPSKernel_LogInfo(v14, v15, v16, v17, v18, v19, v20, v21, v14);
  v22 = [v7 allObjects];
  [v22 writeToURL:v12 error:0];
  if (a4 < 4)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"const %@ nodeTable[] {\n", off_278B0AA40[a4]];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = [v22 countByEnumeratingWithState:&v34 objects:v58 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      if (a4 >= 2)
      {
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v35 != v26)
            {
              objc_enumerationMutation(v22);
            }

            [*(*(&v34 + 1) + 8 * i) getBytes:&v38 length:80];
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", v38, HIDWORD(v38), v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57];
            v23 = [v23 stringByAppendingString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"    %@, \n", v31)}];
          }

          v25 = [v22 countByEnumeratingWithState:&v34 objects:v58 count:16];
        }

        while (v25);
      }

      else
      {
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v35 != v26)
            {
              objc_enumerationMutation(v22);
            }

            [*(*(&v34 + 1) + 8 * j) getBytes:&v38 length:72];
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", v38, HIDWORD(v38), v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54];
            v23 = [v23 stringByAppendingString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"    %@, \n", v28)}];
          }

          v25 = [v22 countByEnumeratingWithState:&v34 objects:v58 count:16];
        }

        while (v25);
      }
    }

    v32 = [v23 stringByAppendingString:@"};\n"];
    v38 = 0;
    [v32 writeToURL:v13 atomically:1 encoding:10 error:&v38];
    objc_autoreleasePoolPop(v8);
    goto LABEL_23;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v29 = *MEMORY[0x277D85DE8];

  objc_autoreleasePoolPop(v8);
}

- (id)getKernelNodesForKernelID:(unint64_t)a3
{
  result = -[NSMutableDictionary objectForKeyedSubscript:](self->_nodeDictionary, "objectForKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?]);
  if (!result)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_nodeDictionary, "setObject:forKeyedSubscript:", v6, [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3]);
    return v6;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayAutoTuneRecorderObj;
  [(MPSNDArrayAutoTuneRecorderObj *)&v3 dealloc];
}

@end