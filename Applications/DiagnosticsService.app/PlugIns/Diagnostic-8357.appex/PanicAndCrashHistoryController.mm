@interface PanicAndCrashHistoryController
- (BOOL)passesFilter:(id)filter;
- (id)defaultLogLineLabelMap;
- (id)gatherBiomeRecords;
- (id)logLineLabelForIndex:(id)index andLogLineType:(id)type;
- (id)processLine:(id)line;
- (void)parseLogsWithCollector:(id)collector;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
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

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  [(PanicAndCrashHistoryController *)self setInputs:inputs, responder];
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  inputs = [(PanicAndCrashHistoryController *)self inputs];
  applicationFilters = [inputs applicationFilters];

  v8 = [applicationFilters countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(applicationFilters);
        }

        v12 = [NSPredicate predicateWithFormat:@"self LIKE %@", *(*(&v14 + 1) + 8 * v11)];
        [v5 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [applicationFilters countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  inputs = [(PanicAndCrashHistoryController *)self inputs];
  logIds = [inputs logIds];
  allObjects = [logIds allObjects];
  v7 = [v3 initWithLogIDs:allObjects];

  if (([(PanicAndCrashHistoryController *)self isCancelled]& 1) == 0)
  {
    [(PanicAndCrashHistoryController *)self parseLogsWithCollector:v7];
  }

  [(PanicAndCrashHistoryController *)self setFinished:1];
}

- (void)parseLogsWithCollector:(id)collector
{
  collectorCopy = collector;
  v5 = +[NSMutableArray array];
  gatherBiomeRecords = [(PanicAndCrashHistoryController *)self gatherBiomeRecords];
  [v5 addObjectsFromArray:gatherBiomeRecords];

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001DB0;
  v11[3] = &unk_1000082A0;
  objc_copyWeak(&v13, &location);
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  [collectorCopy enumerateLogLinesWithBlock:v11];
  if (([(PanicAndCrashHistoryController *)self isCancelled]& 1) == 0)
  {
    result = [(PanicAndCrashHistoryController *)self result];
    [result setStatusCode:&off_100008658];

    v15 = @"logLines";
    v16 = v7;
    v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    result2 = [(PanicAndCrashHistoryController *)self result];
    [result2 setData:v9];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)logLineLabelForIndex:(id)index andLogLineType:(id)type
{
  indexCopy = index;
  typeCopy = type;
  inputs = [(PanicAndCrashHistoryController *)self inputs];
  resultLabelFilters = [inputs resultLabelFilters];
  v10 = [resultLabelFilters objectForKey:typeCopy];

  if (!v10 || ([v10 objectForKey:indexCopy], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    intValue = [indexCopy intValue];
    defaultLogLineLabelMap = [(PanicAndCrashHistoryController *)self defaultLogLineLabelMap];
    v14 = defaultLogLineLabelMap;
    v15 = intValue > 1 ? typeCopy : @"AnyLogLine";
    v16 = [defaultLogLineLabelMap objectForKey:v15];

    v10 = v16;
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  indexCopy = [v10 objectForKey:indexCopy];
  if (!indexCopy)
  {
LABEL_8:
    indexCopy = [NSString stringWithFormat:@"untitledLabelAt-%@", indexCopy];
  }

  return indexCopy;
}

- (id)processLine:(id)line
{
  lineCopy = line;
  v5 = +[NSMutableDictionary dictionary];
  fields = [lineCopy fields];
  v7 = [fields count];

  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [NSNumber numberWithInt:v8];
      type = [lineCopy type];
      v11 = [(PanicAndCrashHistoryController *)self logLineLabelForIndex:v9 andLogLineType:type];

      fields2 = [lineCopy fields];
      v13 = [NSNumber numberWithInt:v8];
      v14 = [fields2 objectAtIndex:{objc_msgSend(v13, "unsignedIntValue")}];

      [v5 setValue:v14 forKey:v11];
      ++v8;
      fields3 = [lineCopy fields];
      v16 = [fields3 count];
    }

    while (v16 > v8);
  }

  return v5;
}

- (BOOL)passesFilter:(id)filter
{
  v4 = [NSArray arrayWithObject:filter];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  applicationPredicates = [(PanicAndCrashHistoryController *)self applicationPredicates];
  v6 = [applicationPredicates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(applicationPredicates);
        }

        v9 = [v4 filteredArrayUsingPredicate:*(*(&v11 + 1) + 8 * i)];

        if (v9)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [applicationPredicates countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  diagnostics = [v4 Diagnostics];
  panic = [diagnostics Panic];

  v7 = [panic publisherWithUseCase:@"DiagnosticsPanicEventCollection"];
  v8 = [v7 filterWithIsIncluded:&stru_1000082E0];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000024B0;
  v16 = &unk_100008348;
  objc_copyWeak(&v19, &location);
  selfCopy = self;
  v9 = v3;
  v18 = v9;
  v10 = [v8 sinkWithCompletion:&stru_100008320 receiveInput:&v13];

  v11 = [v9 copy];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);

  return v11;
}

@end