@interface PearlErrorDataController
- (id)findRequestedHardwareDiagnostic:(id *)diagnostic;
- (id)processResultsForReport:(id)report;
- (id)runRequestedHardwareDiagnostic:(id)diagnostic error:(id *)error;
- (id)workingDirectory;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation PearlErrorDataController

- (void)start
{
  v16 = 0;
  v3 = [(PearlErrorDataController *)self findRequestedHardwareDiagnostic:&v16];
  v4 = v16;
  v5 = v4;
  if (!v3)
  {
    v7 = v4;
LABEL_9:
    [(PearlErrorDataController *)self finishWithError:v5];
    goto LABEL_10;
  }

  v15 = v4;
  v6 = [(PearlErrorDataController *)self runRequestedHardwareDiagnostic:v3 error:&v15];
  v7 = v15;

  if (!v6)
  {
    v5 = v7;
    goto LABEL_9;
  }

  results = [v6 results];
  if (results)
  {
    v9 = results;
    results2 = [v6 results];
    v11 = [results2 count];

    if (v11)
    {
      v12 = [(PearlErrorDataController *)self processResultsForReport:v6];
      result = [(PearlErrorDataController *)self result];
      [result setData:v12];
    }
  }

  error = [v6 error];
  [(PearlErrorDataController *)self finishWithError:error];

LABEL_10:
}

- (id)processResultsForReport:(id)report
{
  reportCopy = report;
  v21 = objc_opt_new();
  v18 = reportCopy;
  dictionaryRepresentation = [reportCopy dictionaryRepresentation];
  v5 = [dictionaryRepresentation objectForKeyedSubscript:@"results"];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v20 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v28[0] = @"name";
        v10 = [v9 objectForKeyedSubscript:@"name"];
        v11 = stringOrNull(v10);
        v28[1] = @"value";
        v29[0] = v11;
        v12 = [v9 objectForKeyedSubscript:@"measurement"];
        v13 = [v12 objectForKeyedSubscript:@"value"];
        v14 = numberOrNull(v13);
        v29[1] = v14;
        v15 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
        [v21 addObject:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v7);
  }

  v26 = @"results";
  v27 = v21;
  v16 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

  return v16;
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100001BDC(errorCopy, v5);
    }

    domain = [errorCopy domain];
    v7 = [domain isEqualToString:@"com.apple.DiagnosticsService.Diagnostic-8068.errorDomain"];

    if (v7)
    {
      v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
      result = [(PearlErrorDataController *)self result];
      [result setStatusCode:v8];
    }

    else
    {
      domain2 = [errorCopy domain];
      v12 = [domain2 isEqualToString:HDErrorDomain];

      if (v12)
      {
        result2 = [(PearlErrorDataController *)self result];
        v8 = result2;
        v14 = &off_100004440;
      }

      else
      {
        domain3 = [errorCopy domain];
        v16 = [domain3 isEqualToString:HDIOReportErrorDomain];

        if (v16)
        {
          result2 = [(PearlErrorDataController *)self result];
          v8 = result2;
          v14 = &off_100004458;
        }

        else
        {
          domain4 = [errorCopy domain];
          v18 = [domain4 isEqualToString:HDCapturePlugInErrorDomain];

          if (v18)
          {
            code = [errorCopy code];
            result2 = [(PearlErrorDataController *)self result];
            v8 = result2;
            if (code == 213)
            {
              v14 = &off_100004470;
            }

            else
            {
              v14 = &off_100004488;
            }
          }

          else
          {
            result2 = [(PearlErrorDataController *)self result];
            v8 = result2;
            v14 = &off_1000044A0;
          }
        }
      }

      [result2 setStatusCode:v14];
    }

    v27[0] = @"code";
    v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    v28[0] = v20;
    v27[1] = @"domain";
    domain5 = [errorCopy domain];
    v28[1] = domain5;
    v27[2] = @"description";
    localizedDescription = [errorCopy localizedDescription];
    v28[2] = localizedDescription;
    result5 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];

    result3 = [(PearlErrorDataController *)self result];
    data = [result3 data];
    v25 = [NSMutableDictionary dictionaryWithDictionary:data];

    [v25 setObject:result5 forKeyedSubscript:@"error"];
    result4 = [(PearlErrorDataController *)self result];
    [result4 setData:v25];
  }

  else
  {
    result5 = [(PearlErrorDataController *)self result];
    [result5 setStatusCode:&off_1000044B8];
  }

  [(PearlErrorDataController *)self setFinished:1];
}

- (id)findRequestedHardwareDiagnostic:(id *)diagnostic
{
  v5 = +[HDLab defaultLab];
  inputs = [(PearlErrorDataController *)self inputs];
  testType = [inputs testType];
  unsignedIntegerValue = [testType unsignedIntegerValue];

  if (unsignedIntegerValue == 1)
  {
    v9 = @"PearlFaultDiagnostic";
  }

  else
  {
    v9 = @"PearlIOReportDiagnostic";
  }

  availableDiagnostics = [v5 availableDiagnostics];
  v11 = [availableDiagnostics objectForKeyedSubscript:v9];

  if (diagnostic && !v11)
  {
    nSLocalizedDescriptionKey = [NSString stringWithFormat:@"Could not find requested hardware diagnostic (%@).", v9, NSLocalizedDescriptionKey];
    v16 = nSLocalizedDescriptionKey;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    *diagnostic = [NSError errorWithDomain:@"com.apple.DiagnosticsService.Diagnostic-8068.errorDomain" code:-1 userInfo:v13];
  }

  return v11;
}

- (id)runRequestedHardwareDiagnostic:(id)diagnostic error:(id *)error
{
  diagnosticCopy = diagnostic;
  inputs = [(PearlErrorDataController *)self inputs];
  testType = [inputs testType];
  unsignedIntegerValue = [testType unsignedIntegerValue];

  if (unsignedIntegerValue == 1)
  {
    v29[0] = HDDiagnosticAnalysisParametersKey;
    v27 = @"frameCount";
    inputs2 = [(PearlErrorDataController *)self inputs];
    frameCount = [inputs2 frameCount];
    v28 = frameCount;
    v10 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v30[0] = v10;
    v29[1] = HDDiagnosticExperimentParametersKey;
    v25[0] = @"frameCount";
    inputs3 = [(PearlErrorDataController *)self inputs];
    frameCount2 = [inputs3 frameCount];
    v25[1] = @"timeout";
    v26[0] = frameCount2;
    inputs4 = [(PearlErrorDataController *)self inputs];
    timeout = [inputs4 timeout];
    v26[1] = timeout;
    v15 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    v30[1] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  }

  else
  {
    v16 = &__NSDictionary0__struct;
  }

  v17 = [diagnosticCopy runWithParameters:v16 host:self error:error];
  v18 = v17;
  if (error && !v17)
  {
    v23 = NSLocalizedDescriptionKey;
    v24 = @"No report, nor error were retrieved.";
    v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    *error = [NSError errorWithDomain:@"com.apple.DiagnosticsService.Diagnostic-8068.errorDomain" code:-3 userInfo:v19];
  }

  return v18;
}

- (id)workingDirectory
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingString:@"com.apple.DiagnosticsService.Diagnostic-8068"];
  v4 = [NSURL fileURLWithPath:v3];

  return v4;
}

@end