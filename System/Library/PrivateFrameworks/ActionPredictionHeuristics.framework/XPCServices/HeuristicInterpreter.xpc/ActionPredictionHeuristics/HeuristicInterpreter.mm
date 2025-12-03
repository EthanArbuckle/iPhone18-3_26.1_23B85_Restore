@interface HeuristicInterpreter
- (HeuristicInterpreter)init;
- (void)actionsAndExpirersForHeuristicsExcept:(id)except bundlePath:(id)path now:(id)now dataSourcesEndpoint:(id)endpoint reply:(id)reply;
- (void)ping:(id)ping;
- (void)resultsForInformationHeuristics:(id)heuristics bundlePath:(id)path now:(id)now dataSourcesEndpoint:(id)endpoint reply:(id)reply;
@end

@implementation HeuristicInterpreter

- (HeuristicInterpreter)init
{
  v3.receiver = self;
  v3.super_class = HeuristicInterpreter;
  return [(HeuristicInterpreter *)&v3 init];
}

- (void)ping:(id)ping
{
  pingCopy = ping;
  v4 = sub_1000018B8();
  v5 = os_signpost_id_generate(v4);

  v6 = sub_1000018B8();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ping", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = sub_100001940();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pinged", v12, 2u);
  }

  pingCopy[2](pingCopy, 0);
  v9 = sub_1000018B8();
  v10 = v9;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v5, "ping", " enableTelemetry=YES ", v11, 2u);
  }
}

- (void)actionsAndExpirersForHeuristicsExcept:(id)except bundlePath:(id)path now:(id)now dataSourcesEndpoint:(id)endpoint reply:(id)reply
{
  exceptCopy = except;
  pathCopy = path;
  nowCopy = now;
  endpointCopy = endpoint;
  replyCopy = reply;
  v16 = sub_1000036B0();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000036F4;
  block[3] = &unk_100024C10;
  v23 = nowCopy;
  v24 = exceptCopy;
  v25 = pathCopy;
  v26 = endpointCopy;
  v27 = replyCopy;
  v17 = replyCopy;
  v18 = endpointCopy;
  v19 = pathCopy;
  v20 = exceptCopy;
  v21 = nowCopy;
  dispatch_async(v16, block);
}

- (void)resultsForInformationHeuristics:(id)heuristics bundlePath:(id)path now:(id)now dataSourcesEndpoint:(id)endpoint reply:(id)reply
{
  heuristicsCopy = heuristics;
  pathCopy = path;
  nowCopy = now;
  endpointCopy = endpoint;
  replyCopy = reply;
  v16 = sub_1000036B0();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D38;
  block[3] = &unk_100024C10;
  v23 = nowCopy;
  v24 = heuristicsCopy;
  v25 = pathCopy;
  v26 = endpointCopy;
  v27 = replyCopy;
  v17 = replyCopy;
  v18 = endpointCopy;
  v19 = pathCopy;
  v20 = heuristicsCopy;
  v21 = nowCopy;
  dispatch_async(v16, block);
}

@end