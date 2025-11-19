@interface PearlErrorDataController
- (id)findRequestedHardwareDiagnostic:(id *)a3;
- (id)processResultsForReport:(id)a3;
- (id)runRequestedHardwareDiagnostic:(id)a3 error:(id *)a4;
- (id)workingDirectory;
- (void)finishWithError:(id)a3;
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

  v8 = [v6 results];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 results];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(PearlErrorDataController *)self processResultsForReport:v6];
      v13 = [(PearlErrorDataController *)self result];
      [v13 setData:v12];
    }
  }

  v14 = [v6 error];
  [(PearlErrorDataController *)self finishWithError:v14];

LABEL_10:
}

- (id)processResultsForReport:(id)a3
{
  v3 = a3;
  v21 = objc_opt_new();
  v18 = v3;
  v4 = [v3 dictionaryRepresentation];
  v5 = [v4 objectForKeyedSubscript:@"results"];

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

- (void)finishWithError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100001BDC(v4, v5);
    }

    v6 = [v4 domain];
    v7 = [v6 isEqualToString:@"com.apple.DiagnosticsService.Diagnostic-8068.errorDomain"];

    if (v7)
    {
      v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
      v9 = [(PearlErrorDataController *)self result];
      [v9 setStatusCode:v8];
    }

    else
    {
      v11 = [v4 domain];
      v12 = [v11 isEqualToString:HDErrorDomain];

      if (v12)
      {
        v13 = [(PearlErrorDataController *)self result];
        v8 = v13;
        v14 = &off_100004440;
      }

      else
      {
        v15 = [v4 domain];
        v16 = [v15 isEqualToString:HDIOReportErrorDomain];

        if (v16)
        {
          v13 = [(PearlErrorDataController *)self result];
          v8 = v13;
          v14 = &off_100004458;
        }

        else
        {
          v17 = [v4 domain];
          v18 = [v17 isEqualToString:HDCapturePlugInErrorDomain];

          if (v18)
          {
            v19 = [v4 code];
            v13 = [(PearlErrorDataController *)self result];
            v8 = v13;
            if (v19 == 213)
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
            v13 = [(PearlErrorDataController *)self result];
            v8 = v13;
            v14 = &off_1000044A0;
          }
        }
      }

      [v13 setStatusCode:v14];
    }

    v27[0] = @"code";
    v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
    v28[0] = v20;
    v27[1] = @"domain";
    v21 = [v4 domain];
    v28[1] = v21;
    v27[2] = @"description";
    v22 = [v4 localizedDescription];
    v28[2] = v22;
    v10 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];

    v23 = [(PearlErrorDataController *)self result];
    v24 = [v23 data];
    v25 = [NSMutableDictionary dictionaryWithDictionary:v24];

    [v25 setObject:v10 forKeyedSubscript:@"error"];
    v26 = [(PearlErrorDataController *)self result];
    [v26 setData:v25];
  }

  else
  {
    v10 = [(PearlErrorDataController *)self result];
    [v10 setStatusCode:&off_1000044B8];
  }

  [(PearlErrorDataController *)self setFinished:1];
}

- (id)findRequestedHardwareDiagnostic:(id *)a3
{
  v5 = +[HDLab defaultLab];
  v6 = [(PearlErrorDataController *)self inputs];
  v7 = [v6 testType];
  v8 = [v7 unsignedIntegerValue];

  if (v8 == 1)
  {
    v9 = @"PearlFaultDiagnostic";
  }

  else
  {
    v9 = @"PearlIOReportDiagnostic";
  }

  v10 = [v5 availableDiagnostics];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (a3 && !v11)
  {
    v12 = [NSString stringWithFormat:@"Could not find requested hardware diagnostic (%@).", v9, NSLocalizedDescriptionKey];
    v16 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    *a3 = [NSError errorWithDomain:@"com.apple.DiagnosticsService.Diagnostic-8068.errorDomain" code:-1 userInfo:v13];
  }

  return v11;
}

- (id)runRequestedHardwareDiagnostic:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PearlErrorDataController *)self inputs];
  v8 = [v7 testType];
  v9 = [v8 unsignedIntegerValue];

  if (v9 == 1)
  {
    v29[0] = HDDiagnosticAnalysisParametersKey;
    v27 = @"frameCount";
    v22 = [(PearlErrorDataController *)self inputs];
    v21 = [v22 frameCount];
    v28 = v21;
    v10 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v30[0] = v10;
    v29[1] = HDDiagnosticExperimentParametersKey;
    v25[0] = @"frameCount";
    v11 = [(PearlErrorDataController *)self inputs];
    v12 = [v11 frameCount];
    v25[1] = @"timeout";
    v26[0] = v12;
    v13 = [(PearlErrorDataController *)self inputs];
    v14 = [v13 timeout];
    v26[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    v30[1] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  }

  else
  {
    v16 = &__NSDictionary0__struct;
  }

  v17 = [v6 runWithParameters:v16 host:self error:a4];
  v18 = v17;
  if (a4 && !v17)
  {
    v23 = NSLocalizedDescriptionKey;
    v24 = @"No report, nor error were retrieved.";
    v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.DiagnosticsService.Diagnostic-8068.errorDomain" code:-3 userInfo:v19];
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