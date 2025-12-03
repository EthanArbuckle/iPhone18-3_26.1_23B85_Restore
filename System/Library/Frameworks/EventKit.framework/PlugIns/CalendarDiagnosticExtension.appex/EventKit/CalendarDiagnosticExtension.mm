@interface CalendarDiagnosticExtension
+ (id)log;
- (id)attachmentsForParameters:(id)parameters;
- (void)cleanUpOldAttachments;
- (void)dealloc;
@end

@implementation CalendarDiagnosticExtension

+ (id)log
{
  if (qword_100008688 != -1)
  {
    sub_1000014D0();
  }

  v3 = qword_100008690;

  return v3;
}

- (id)attachmentsForParameters:(id)parameters
{
  v4 = [parameters objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  v5 = [v4 isEqualToString:@"com.apple.symptomsd"];

  selfCopy = self;
  [(CalendarDiagnosticExtension *)self cleanUpOldAttachments];
  v6 = dispatch_semaphore_create(0);
  v7 = objc_alloc_init(CDELogGatherer);
  v8 = v7;
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [(CDELogGatherer *)v7 setTrafficLogsCollectionMode:v9];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100000FE4;
  v29[3] = &unk_1000041B8;
  v10 = v6;
  v30 = v10;
  [(CDELogGatherer *)v8 gatherLogsWithCompletion:v29];
  v11 = dispatch_time(0, 270000000000);
  if (dispatch_semaphore_wait(v10, v11))
  {
    v12 = +[CalendarDiagnosticExtension log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000014E4(v12);
    }
  }

  attachments = [(CDELogGatherer *)v8 attachments];
  v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(attachments, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = attachments;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        [v20 startAccessingSecurityScopedResource];
        v21 = [DEAttachmentItem attachmentWithPathURL:v20];
        [v21 setDeleteOnAttach:&__kCFBooleanTrue];
        [v14 addObject:v21];
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v17);
  }

  oldAttachments = selfCopy->_oldAttachments;
  selfCopy->_oldAttachments = v15;

  return v14;
}

- (void)dealloc
{
  [(CalendarDiagnosticExtension *)self cleanUpOldAttachments];
  v3.receiver = self;
  v3.super_class = CalendarDiagnosticExtension;
  [(CalendarDiagnosticExtension *)&v3 dealloc];
}

- (void)cleanUpOldAttachments
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_oldAttachments;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) stopAccessingSecurityScopedResource];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  oldAttachments = self->_oldAttachments;
  self->_oldAttachments = 0;
}

@end