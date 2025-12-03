@interface CameraSyncController
- (id)findRequestedHardwareDiagnostic:(id *)diagnostic;
- (id)processResultsForReport:(id)report;
- (id)runRequestedHardwareDiagnostic:(id)diagnostic error:(id *)error;
- (id)workingDirectory;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation CameraSyncController

- (void)start
{
  v22 = 0;
  v3 = [(CameraSyncController *)self findRequestedHardwareDiagnostic:&v22];
  v4 = v22;
  v5 = v4;
  if (!v3)
  {
    v7 = v4;
LABEL_11:
    [(CameraSyncController *)self finishWithError:v5];
    goto LABEL_14;
  }

  v21 = v4;
  v6 = [(CameraSyncController *)self runRequestedHardwareDiagnostic:v3 error:&v21];
  v7 = v21;

  if (!v6)
  {
    v5 = v7;
    goto LABEL_11;
  }

  results = [v6 results];
  if (results && (v9 = results, [v6 results], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9, v11))
  {
    error2 = [(CameraSyncController *)self processResultsForReport:v6];
    v13 = [error2 valueForKey:@"results"];
    if (v13 && (v14 = v13, [error2 valueForKey:@"errorCounters"], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
    {
      result = [(CameraSyncController *)self result];
      [result setData:error2];

      error = [v6 error];
      [(CameraSyncController *)self finishWithError:error];
    }

    else
    {
      v23 = NSLocalizedDescriptionKey;
      v18 = [NSString stringWithFormat:@"Camera Sync report is incomplete. Processed result: %@", error2];
      v24 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v20 = [NSError errorWithDomain:@"com.apple.DiagnosticsService.Diagnostic-8217.errorDomain" code:-9 userInfo:v19];

      [(CameraSyncController *)self finishWithError:v20];
      v7 = v20;
    }
  }

  else
  {
    error2 = [v6 error];
    [(CameraSyncController *)self finishWithError:error2];
  }

LABEL_14:
}

- (id)processResultsForReport:(id)report
{
  reportCopy = report;
  v4 = objc_opt_new();
  v33 = objc_opt_new();
  dictionaryRepresentation = [reportCopy dictionaryRepresentation];
  v6 = [dictionaryRepresentation valueForKey:@"results"];

  if (v6)
  {
    v30 = dictionaryRepresentation;
    [dictionaryRepresentation objectForKeyedSubscript:@"results"];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v37 = 0u;
    v7 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v7)
    {
      v8 = v7;
      v32 = *v35;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v35 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v34 + 1) + 8 * i);
          v42[0] = @"name";
          v11 = [v10 objectForKeyedSubscript:@"name"];
          v12 = stringOrNull(v11);
          v42[1] = @"value";
          v43[0] = v12;
          v13 = [v10 objectForKeyedSubscript:@"measurement"];
          v14 = [v13 objectForKeyedSubscript:@"value"];
          v15 = numberOrNull(v14);
          v43[1] = v15;
          v16 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
          [v33 addObject:v16];
        }

        v8 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v8);
    }

    v40 = @"results";
    v41 = v33;
    v17 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    [v4 addEntriesFromDictionary:v17];

    dictionaryRepresentation = v30;
  }

  auxiliaryData = [reportCopy auxiliaryData];
  if (auxiliaryData)
  {
    v19 = auxiliaryData;
    auxiliaryData2 = [reportCopy auxiliaryData];
    v21 = [auxiliaryData2 valueForKey:@"experiment"];
    if (v21)
    {
      v22 = v21;
      auxiliaryData3 = [reportCopy auxiliaryData];
      v24 = [auxiliaryData3 objectForKeyedSubscript:@"experiment"];
      v25 = [v24 valueForKey:@"ErrorCounters"];

      if (!v25)
      {
        goto LABEL_15;
      }

      v19 = objc_opt_new();
      auxiliaryData4 = [reportCopy auxiliaryData];
      v27 = [auxiliaryData4 objectForKeyedSubscript:@"experiment"];
      auxiliaryData2 = [v27 objectForKeyedSubscript:@"ErrorCounters"];

      [v19 addObjectsFromArray:auxiliaryData2];
      v38 = @"errorCounters";
      v39 = auxiliaryData2;
      v28 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [v4 addEntriesFromDictionary:v28];
    }
  }

LABEL_15:

  return v4;
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100001DC0(errorCopy, v5);
    }

    domain = [errorCopy domain];
    v7 = [domain isEqualToString:@"com.apple.DiagnosticsService.Diagnostic-8217.errorDomain"];

    if (v7)
    {
      v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
      result = [(CameraSyncController *)self result];
      [result setStatusCode:v8];
    }

    else
    {
      domain2 = [errorCopy domain];
      v12 = [domain2 isEqualToString:HDErrorDomain];

      if (v12)
      {
        result2 = [(CameraSyncController *)self result];
        v8 = result2;
        v14 = &off_100004488;
      }

      else
      {
        domain3 = [errorCopy domain];
        v16 = [domain3 isEqualToString:HDIOReportErrorDomain];

        if (v16)
        {
          result2 = [(CameraSyncController *)self result];
          v8 = result2;
          v14 = &off_1000044A0;
        }

        else
        {
          domain4 = [errorCopy domain];
          v18 = [domain4 isEqualToString:HDCapturePlugInErrorDomain];

          if (v18)
          {
            code = [errorCopy code];
            result2 = [(CameraSyncController *)self result];
            v8 = result2;
            if (code == 213)
            {
              v14 = &off_1000044B8;
            }

            else
            {
              v14 = &off_1000044D0;
            }
          }

          else
          {
            result2 = [(CameraSyncController *)self result];
            v8 = result2;
            v14 = &off_1000044E8;
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

    result3 = [(CameraSyncController *)self result];
    data = [result3 data];
    v25 = [NSMutableDictionary dictionaryWithDictionary:data];

    [v25 setObject:result5 forKeyedSubscript:@"error"];
    result4 = [(CameraSyncController *)self result];
    [result4 setData:v25];
  }

  else
  {
    result5 = [(CameraSyncController *)self result];
    [result5 setStatusCode:&off_100004500];
  }

  [(CameraSyncController *)self setFinished:1];
}

- (id)findRequestedHardwareDiagnostic:(id *)diagnostic
{
  v5 = +[HDLab defaultLab];
  inputs = [(CameraSyncController *)self inputs];
  type = [inputs type];
  unsignedIntegerValue = [type unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    if (unsignedIntegerValue != 1)
    {
      v14 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100001E38(self, v14);
      }

      v20 = NSLocalizedDescriptionKey;
      inputs2 = [(CameraSyncController *)self inputs];
      type2 = [inputs2 type];
      v15 = [NSString stringWithFormat:@"Unrecognized camera sync group with type (%@).", type2];
      v21 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      *diagnostic = [NSError errorWithDomain:@"com.apple.DiagnosticsService.Diagnostic-8217.errorDomain" code:-10 userInfo:v16];

      goto LABEL_11;
    }

    v9 = @"CameraSyncDiagnostic.Back";
  }

  else
  {
    v9 = @"CameraSyncDiagnostic.Front";
  }

  availableDiagnostics = [v5 availableDiagnostics];
  v11 = [availableDiagnostics objectForKeyedSubscript:v9];

  if (diagnostic && !v11)
  {
    inputs2 = [NSString stringWithFormat:@"Could not find requested hardware diagnostic (%@).", v9, NSLocalizedDescriptionKey];
    v19 = inputs2;
    type2 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    *diagnostic = [NSError errorWithDomain:@"com.apple.DiagnosticsService.Diagnostic-8217.errorDomain" code:-1 userInfo:type2];
LABEL_11:

    v11 = 0;
  }

  return v11;
}

- (id)runRequestedHardwareDiagnostic:(id)diagnostic error:(id *)error
{
  v18 = HDDiagnosticExperimentParametersKey;
  v16 = @"duration";
  diagnosticCopy = diagnostic;
  inputs = [(CameraSyncController *)self inputs];
  duration = [inputs duration];
  v17 = duration;
  v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v11 = [diagnosticCopy runWithParameters:v10 host:self error:error];

  if (error && !v11)
  {
    v14 = NSLocalizedDescriptionKey;
    v15 = @"No report, nor error were retrieved.";
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    *error = [NSError errorWithDomain:@"com.apple.DiagnosticsService.Diagnostic-8217.errorDomain" code:-3 userInfo:v12];
  }

  return v11;
}

- (id)workingDirectory
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingString:@"com.apple.DiagnosticsService-8217"];
  v4 = [NSURL fileURLWithPath:v3];

  return v4;
}

@end