@interface NetworkDiagnosticsReportGenerator
- (BOOL)startNetDiagnosticsTaskWithReply:(id)a3;
- (BOOL)startReportGeneration;
- (NetDiagnosticsShim)netDiags;
- (NetworkDiagnosticsReportGenerator)initWithQueue:(id)a3;
- (id)createDefaultTaskDictionaryWithTaskName:(const char *)a3;
- (void)netDiagnosticTaskStatusChangedFor:(id)a3 toStatus:(int)a4;
- (void)setNetDiags:(id)a3;
@end

@implementation NetworkDiagnosticsReportGenerator

- (NetworkDiagnosticsReportGenerator)initWithQueue:(id)a3
{
  v6.receiver = self;
  v6.super_class = NetworkDiagnosticsReportGenerator;
  v3 = [(DiagnosticReportGenerator *)&v6 initWithQueue:a3];
  v4 = v3;
  if (v3)
  {
    [(DiagnosticReportGenerator *)v3 setTimeoutSeconds:600.0];
  }

  return v4;
}

- (void)setNetDiags:(id)a3
{
  v5 = a3;
  netDiags = self->_netDiags;
  if (netDiags != v5)
  {
    v7 = v5;
    if (netDiags)
    {
      [(NetDiagnosticsShim *)netDiags setDelegate:0];
      [(NetDiagnosticsShim *)self->_netDiags invalidateConnections];
      v5 = v7;
    }

    if (v5)
    {
      [(NetDiagnosticsShim *)v7 setDelegate:self];
    }

    objc_storeStrong(&self->_netDiags, a3);
    v5 = v7;
  }

  MEMORY[0x2821F96F8](netDiags, v5);
}

- (NetDiagnosticsShim)netDiags
{
  netDiags = self->_netDiags;
  if (!netDiags)
  {
    v4 = [NetDiagnosticsShim alloc];
    v5 = [(NetworkDiagnosticsReportGenerator *)self options];
    v6 = [v5 objectForKeyedSubscript:@"taskName"];
    v7 = [(DiagnosticReportGenerator *)self queue];
    v8 = [(NetDiagnosticsShim *)v4 initWithTaskName:v6 queue:v7];
    [(NetworkDiagnosticsReportGenerator *)self setNetDiags:v8];

    netDiags = self->_netDiags;
  }

  return netDiags;
}

- (BOOL)startNetDiagnosticsTaskWithReply:(id)a3
{
  v4 = a3;
  v5 = [(NetworkDiagnosticsReportGenerator *)self netDiags];
  v6 = [(NetworkDiagnosticsReportGenerator *)self options];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__NetworkDiagnosticsReportGenerator_startNetDiagnosticsTaskWithReply___block_invoke;
  v10[3] = &unk_278CF2288;
  v11 = v4;
  v7 = v4;
  v8 = [v5 startNetDiagnosticTaskWithOptions:v6 reply:v10];

  return v8;
}

void __70__NetworkDiagnosticsReportGenerator_startNetDiagnosticsTaskWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = 0x277CCA000uLL;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:kNetDiagTaskFilePath[0]];
    v10 = [v5 objectForKeyedSubscript:v9];

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v10)
    {
      v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
      v14 = [v13 absoluteString];
      [v12 addObject:v14];
    }

    else
    {
      v23 = [v5 objectForKeyedSubscript:@"filepaths"];
      v10 = v23;
      if (v23)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v24 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v24)
        {
          v25 = v24;
          v40 = a1;
          v41 = v7;
          v26 = 0;
          v27 = *v43;
          do
          {
            v28 = 0;
            v29 = v26;
            do
            {
              if (*v43 != v27)
              {
                objc_enumerationMutation(v10);
              }

              v26 = *(*(&v42 + 1) + 8 * v28);

              v30 = [MEMORY[0x277CBEBC0] fileURLWithPath:v26];
              v31 = [v30 absoluteString];
              [v12 addObject:v31];

              ++v28;
              v29 = v26;
            }

            while (v25 != v28);
            v25 = [v10 countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v25);

          v7 = v41;
          a1 = v40;
          v8 = 0x277CCA000;
        }
      }
    }

    [v11 setObject:v12 forKeyedSubscript:@"attachments"];
    v15 = [*(v8 + 3240) stringWithUTF8String:kNetDiagStatus[0]];
    v16 = [v5 objectForKeyedSubscript:v15];
    v17 = [v16 longLongValue];

    if (!v17)
    {
      v32 = *(a1 + 32);
      if (v32)
      {
        (*(v32 + 16))(v32, v11, 0);
      }

      goto LABEL_29;
    }

    if (v17 == -1)
    {
      v18 = *(a1 + 32);
      if (!v18)
      {
LABEL_29:

        goto LABEL_30;
      }

      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:5 userInfo:&unk_285379FB8];
      (*(v18 + 16))(v18, 0, v19);
    }

    else
    {
      v33 = diagreportLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v49 = v17;
        _os_log_impl(&dword_241804000, v33, OS_LOG_TYPE_DEBUG, "Unknown kNetDiagStatus %lld\n", buf, 0xCu);
      }

      v34 = *(a1 + 32);
      if (!v34)
      {
        goto LABEL_29;
      }

      v35 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA5B8];
      v46 = @"error";
      v19 = [*(v8 + 3240) stringWithFormat:@"Unknown kNetDiagStatus %lld\n", v17];
      v47 = v19;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v38 = [v35 errorWithDomain:v36 code:5 userInfo:v37];
      (*(v34 + 16))(v34, 0, v38);
    }

    goto LABEL_29;
  }

  if (v6)
  {
    v20 = diagreportLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v7 userInfo];
      *buf = 138412290;
      v49 = v21;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v22 = *(a1 + 32);
    if (v22)
    {
      (*(v22 + 16))(v22, 0, v7);
    }
  }

LABEL_30:

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)startReportGeneration
{
  v2 = self;
  v3 = [(NetworkDiagnosticsReportGenerator *)self options];
  v4 = [v3 objectForKeyedSubscript:@"taskName"];

  [(DiagnosticReportGenerator *)v2 setReportGenerated:0];
  v5 = [MEMORY[0x277CBEAA8] date];
  reportStart = v2->_reportStart;
  v2->_reportStart = v5;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__NetworkDiagnosticsReportGenerator_startReportGeneration__block_invoke;
  v9[3] = &unk_278CF22B0;
  v10 = v4;
  v11 = v2;
  v7 = v4;
  LOBYTE(v2) = [(NetworkDiagnosticsReportGenerator *)v2 startNetDiagnosticsTaskWithReply:v9];

  return v2;
}

void __58__NetworkDiagnosticsReportGenerator_startReportGeneration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_21;
    }

    v10 = diagreportLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138412546;
      v32 = v11;
      v33 = 2112;
      v34 = v7;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Start task %@ failed with error: %@", buf, 0x16u);
    }

    v12 = [*(a1 + 40) delegate];
    v13 = [*(a1 + 40) completionHandler];
    if (v13)
    {
    }

    else if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_20:
      [*(a1 + 40) setNetDiags:0];
      [*(a1 + 40) setDiagCase:0];

      goto LABEL_21;
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v14 setObject:*(*(a1 + 40) + 80) forKey:@"reportStart"];
    v15 = *(a1 + 40);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v14 setObject:v17 forKey:@"reportCreator"];

    v18 = [MEMORY[0x277CBEAA8] date];
    [v14 setObject:v18 forKey:@"reportEnd"];

    [v14 setObject:@"Error" forKey:@"reportEndStatus"];
    v19 = [v7 description];
    v20 = [v19 length];

    if (v20)
    {
      v21 = [v7 description];
    }

    else
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = [v7 domain];
      v24 = [v7 code];
      v25 = [v7 userInfo];
      v26 = v25;
      v27 = &stru_285368168;
      if (v25)
      {
        v27 = v25;
      }

      v21 = [v22 stringWithFormat:@"Error Domain: %@ Error Code: %ld %@", v23, v24, v27];
    }

    [v14 setObject:v21 forKey:@"Error"];

    v28 = [*(a1 + 40) completionHandler];

    if (v28)
    {
      v29 = [*(a1 + 40) completionHandler];
      (v29)[2](v29, v14, v7);

      [*(a1 + 40) setCompletionHandler:0];
    }

    else
    {
      [v12 reportGeneratorEnded:*(a1 + 40) reportInfo:v14 error:v7];
    }

    goto LABEL_20;
  }

  v8 = diagreportLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138412546;
    v32 = v9;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "Started task %@ with info: %@", buf, 0x16u);
  }

  [*(a1 + 40) setNetDiagsResults:v5];
LABEL_21:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)netDiagnosticTaskStatusChangedFor:(id)a3 toStatus:(int)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NetworkDiagnosticsReportGenerator *)self options];
  v8 = [v7 objectForKeyedSubscript:@"taskName"];

  v9 = [v6 isEqualToString:v8];
  if (a4 == 3 && v9)
  {
    v10 = diagreportLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(NetworkDiagnosticsReportGenerator *)self netDiagsResults];
      v25 = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "%@ changed to ending. Signaling completion with results %@", &v25, 0x16u);
    }

    v12 = [(DiagnosticReportGenerator *)self delegate];
    v13 = [(DiagnosticReportGenerator *)self completionHandler];
    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = objc_opt_respondsToSelector();
    }

    v15 = [(NetworkDiagnosticsReportGenerator *)self netDiagsResults];

    if (v15 && (v14 & 1) != 0)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v16 setObject:self->_reportStart forKey:@"reportStart"];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      [v16 setObject:v18 forKey:@"reportCreator"];

      v19 = [MEMORY[0x277CBEAA8] date];
      [v16 setObject:v19 forKey:@"reportEnd"];

      [v16 setObject:@"Success" forKey:@"reportEndStatus"];
      v20 = [(NetworkDiagnosticsReportGenerator *)self netDiagsResults];
      v21 = [v20 objectForKeyedSubscript:@"attachments"];
      [v16 setObject:v21 forKey:@"attachments"];

      [(DiagnosticReportGenerator *)self setReportGenerated:1];
      v22 = [(DiagnosticReportGenerator *)self completionHandler];

      if (v22)
      {
        v23 = [(DiagnosticReportGenerator *)self completionHandler];
        (v23)[2](v23, v16, 0);

        [(DiagnosticReportGenerator *)self setCompletionHandler:0];
      }

      else
      {
        [v12 reportGeneratorEnded:self reportInfo:v16 error:0];
      }

      [(NetworkDiagnosticsReportGenerator *)self setNetDiagsResults:0];
    }

    [(NetworkDiagnosticsReportGenerator *)self setNetDiags:0];
    [(DiagnosticReportGenerator *)self setDiagCase:0];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)createDefaultTaskDictionaryWithTaskName:(const char *)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  [v4 setObject:v5 forKeyedSubscript:@"taskName"];

  v6 = +[ABCAdministrator sharedInstance];
  v7 = [v6 configurationManager];

  v8 = [v7 logArchivePath];
  v9 = [v8 stringByAppendingString:@"/"];
  [v4 setObject:v9 forKeyedSubscript:@"filename"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "logArchiveUID")}];
  [v4 setObject:v10 forKeyedSubscript:@"taskFileUserID"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "logArchiveGID")}];
  [v4 setObject:v11 forKeyedSubscript:@"taskFileGroupID"];

  [v4 setObject:&unk_28537A2A8 forKeyedSubscript:@"taskFileMode"];

  return v4;
}

@end