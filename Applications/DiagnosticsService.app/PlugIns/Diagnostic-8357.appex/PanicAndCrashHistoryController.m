@interface PanicAndCrashHistoryController
- (BOOL)passesFilter:(id)a3;
- (id)defaultLogLineLabelMap;
- (id)gatherBiomeRecords;
- (id)logLineLabelForIndex:(id)a3 andLogLineType:(id)a4;
- (id)processLine:(id)a3;
- (void)parseLogsWithCollector:(id)a3;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
@end

@implementation PanicAndCrashHistoryController

- (id)defaultLogLineLabelMap
{
  if (qword_10000C8A0 != -1)
  {
    sub_100002978();
  }

  v3 = qword_10000C898;

  return v3;
}

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  [(PanicAndCrashHistoryController *)self setInputs:a3, a4];
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(PanicAndCrashHistoryController *)self inputs];
  v7 = [v6 applicationFilters];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [NSPredicate predicateWithFormat:@"self LIKE %@", *(*(&v14 + 1) + 8 * v11)];
        [v5 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(PanicAndCrashHistoryController *)self setApplicationPredicates:v5];
  v13 = +[NSMutableSet set];
  [(PanicAndCrashHistoryController *)self setLogLineReferences:v13];
}

- (void)start
{
  v3 = [DSGeneralLogCollector alloc];
  v4 = [(PanicAndCrashHistoryController *)self inputs];
  v5 = [v4 logIds];
  v6 = [v5 allObjects];
  v7 = [v3 initWithLogIDs:v6];

  if (([(PanicAndCrashHistoryController *)self isCancelled]& 1) == 0)
  {
    [(PanicAndCrashHistoryController *)self parseLogsWithCollector:v7];
  }

  [(PanicAndCrashHistoryController *)self setFinished:1];
}

- (void)parseLogsWithCollector:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(PanicAndCrashHistoryController *)self gatherBiomeRecords];
  [v5 addObjectsFromArray:v6];

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001DB0;
  v11[3] = &unk_1000082A0;
  objc_copyWeak(&v13, &location);
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  [v4 enumerateLogLinesWithBlock:v11];
  if (([(PanicAndCrashHistoryController *)self isCancelled]& 1) == 0)
  {
    v8 = [(PanicAndCrashHistoryController *)self result];
    [v8 setStatusCode:&off_100008658];

    v15 = @"logLines";
    v16 = v7;
    v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = [(PanicAndCrashHistoryController *)self result];
    [v10 setData:v9];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)logLineLabelForIndex:(id)a3 andLogLineType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PanicAndCrashHistoryController *)self inputs];
  v9 = [v8 resultLabelFilters];
  v10 = [v9 objectForKey:v7];

  if (!v10 || ([v10 objectForKey:v6], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v12 = [v6 intValue];
    v13 = [(PanicAndCrashHistoryController *)self defaultLogLineLabelMap];
    v14 = v13;
    v15 = v12 > 1 ? v7 : @"AnyLogLine";
    v16 = [v13 objectForKey:v15];

    v10 = v16;
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  v17 = [v10 objectForKey:v6];
  if (!v17)
  {
LABEL_8:
    v17 = [NSString stringWithFormat:@"untitledLabelAt-%@", v6];
  }

  return v17;
}

- (id)processLine:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [v4 fields];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [NSNumber numberWithInt:v8];
      v10 = [v4 type];
      v11 = [(PanicAndCrashHistoryController *)self logLineLabelForIndex:v9 andLogLineType:v10];

      v12 = [v4 fields];
      v13 = [NSNumber numberWithInt:v8];
      v14 = [v12 objectAtIndex:{objc_msgSend(v13, "unsignedIntValue")}];

      [v5 setValue:v14 forKey:v11];
      ++v8;
      v15 = [v4 fields];
      v16 = [v15 count];
    }

    while (v16 > v8);
  }

  return v5;
}

- (BOOL)passesFilter:(id)a3
{
  v4 = [NSArray arrayWithObject:a3];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PanicAndCrashHistoryController *)self applicationPredicates];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [v4 filteredArrayUsingPredicate:*(*(&v11 + 1) + 8 * i)];

        if (v9)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)gatherBiomeRecords
{
  v3 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  v4 = BiomeLibrary();
  v5 = [v4 Diagnostics];
  v6 = [v5 Panic];

  v7 = [v6 publisherWithUseCase:@"DiagnosticsPanicEventCollection"];
  v8 = [v7 filterWithIsIncluded:&stru_1000082E0];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000024B0;
  v16 = &unk_100008348;
  objc_copyWeak(&v19, &location);
  v17 = self;
  v9 = v3;
  v18 = v9;
  v10 = [v8 sinkWithCompletion:&stru_100008320 receiveInput:&v13];

  v11 = [v9 copy];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);

  return v11;
}

@end