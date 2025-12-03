@interface DiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation DiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[DSMutableArchive archive];
  v19 = v5;
  [LogArchiveAggregator addLogTypes:238 archive:&v19 prefix:@"FieldDiagnosticsLogs"];
  v6 = v19;

  if (parametersCopy)
  {
    v7 = [parametersCopy objectForKey:@"shouldCreateTarBall"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v7 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        v9 = [@"FieldDiagnosticsLogs" stringByAppendingString:@".XXXXXX"];
        v17 = 0;
        v10 = [v6 archiveAsTempDirectoryWithName:v9 error:&v17];
        v11 = v17;

        v12 = [v10 URLByAppendingPathComponent:@"FieldDiagnosticsLogs"];
        v13 = [DEAttachmentItem attachmentWithPathURL:v12];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v14 = [@"FieldDiagnosticsLogs" stringByAppendingString:@".XXXXXX"];
  v18 = 0;
  v10 = [v6 archiveAsTempFileWithTemplate:v14 suffix:@".tgz" error:&v18];
  v11 = v18;

  v13 = [DEAttachmentItem attachmentWithPathURL:v10];
LABEL_8:
  [v4 addObject:v13];

  if (v11)
  {
    v15 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100001D50(v11, v15);
    }
  }

  return v4;
}

@end