@interface DiagnosticReportGenerator
- (BOOL)generateReportForCase:(id)a3 reportName:(id)a4 completion:(id)a5;
- (DiagnosticReportGenerator)initWithQueue:(id)a3;
- (DiagnosticReportGeneratorDelegate)delegate;
@end

@implementation DiagnosticReportGenerator

- (DiagnosticReportGenerator)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DiagnosticReportGenerator;
  v6 = [(DiagnosticReportGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (BOOL)generateReportForCase:(id)a3 reportName:(id)a4 completion:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = diagreportLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v8 caseId];
    *buf = 138412546;
    v45 = v12;
    v46 = 2112;
    v47 = v9;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEBUG, "Generating a report for case ID %@, desired report file name %@", buf, 0x16u);
  }

  [(DiagnosticReportGenerator *)self setDiagCase:v8];
  if (v10)
  {
    [(DiagnosticReportGenerator *)self setCompletionHandler:v10];
  }

  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [(DiagnosticReportGenerator *)self delegate];
  v15 = [(DiagnosticReportGenerator *)self startReportGeneration];
  if (v15)
  {
    [(DiagnosticReportGenerator *)self timeoutSeconds];
    v17 = dispatch_time(0, (v16 * 1000000000.0));
    v18 = [(DiagnosticReportGenerator *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__DiagnosticReportGenerator_generateReportForCase_reportName_completion___block_invoke;
    block[3] = &unk_278CF00E0;
    block[4] = self;
    v40 = v13;
    v41 = v14;
    dispatch_after(v17, v18, block);
  }

  else
  {
    v36 = v14;
    v37 = v9;
    v38 = v8;
    v19 = diagreportLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_INFO, "report generation did not start", buf, 2u);
    }

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v20 setObject:v13 forKey:@"reportStart"];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v20 setObject:v22 forKey:@"reportCreator"];

    v23 = [MEMORY[0x277CBEAA8] date];
    [v20 setObject:v23 forKey:@"reportEnd"];

    [v20 setObject:@"Error" forKey:@"reportEndStatus"];
    [v20 setObject:@"Failed to start report generation." forKey:@"reportError"];
    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA5B8];
    v42 = @"error";
    v26 = MEMORY[0x277CCACA8];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v26 stringWithFormat:@"%@ failed to start", v28];
    v43 = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v31 = [v24 errorWithDomain:v25 code:5 userInfo:v30];

    v32 = [(DiagnosticReportGenerator *)self completionHandler];

    if (v32)
    {
      v33 = [(DiagnosticReportGenerator *)self completionHandler];
      (v33)[2](v33, v20, v31);

      [(DiagnosticReportGenerator *)self setCompletionHandler:0];
      v9 = v37;
      v8 = v38;
      v14 = v36;
    }

    else
    {
      v14 = v36;
      v9 = v37;
      v8 = v38;
      if (objc_opt_respondsToSelector())
      {
        [v36 reportGeneratorEnded:self reportInfo:v20 error:v31];
      }
    }

    [(DiagnosticReportGenerator *)self setDiagCase:0];
  }

  v34 = *MEMORY[0x277D85DE8];
  return v15;
}

void __73__DiagnosticReportGenerator_generateReportForCase_reportName_completion___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) reportGenerated] & 1) == 0)
  {
    v2 = diagreportLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "report generator timed out.", buf, 2u);
    }

    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v3 setObject:*(a1 + 40) forKey:@"reportStart"];
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v3 setObject:v6 forKey:@"reportCreator"];

    v7 = [MEMORY[0x277CBEAA8] date];
    [v3 setObject:v7 forKey:@"reportEnd"];

    [v3 setObject:@"Timeout" forKey:@"reportEndStatus"];
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA5B8];
    v22 = @"error";
    v10 = MEMORY[0x277CCACA8];
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v10 stringWithFormat:@"%@ timed out", v13];
    v23[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v16 = [v8 errorWithDomain:v9 code:60 userInfo:v15];

    v17 = [*(a1 + 32) completionHandler];

    if (v17)
    {
      v18 = [*(a1 + 32) completionHandler];
      (v18)[2](v18, v3, v16);

      [*(a1 + 32) setCompletionHandler:0];
    }

    else
    {
      v19 = *(a1 + 48);
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 48) reportGeneratorEnded:*(a1 + 32) reportInfo:v3 error:v16];
      }
    }

    [*(a1 + 32) setDiagCase:0];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (DiagnosticReportGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end