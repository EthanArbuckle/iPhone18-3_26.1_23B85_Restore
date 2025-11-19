@interface HeuristicInterpreter
- (HeuristicInterpreter)init;
- (void)actionsAndExpirersForHeuristicsExcept:(id)a3 bundlePath:(id)a4 now:(id)a5 dataSourcesEndpoint:(id)a6 reply:(id)a7;
- (void)ping:(id)a3;
- (void)resultsForInformationHeuristics:(id)a3 bundlePath:(id)a4 now:(id)a5 dataSourcesEndpoint:(id)a6 reply:(id)a7;
@end

@implementation HeuristicInterpreter

- (HeuristicInterpreter)init
{
  v3.receiver = self;
  v3.super_class = HeuristicInterpreter;
  return [(HeuristicInterpreter *)&v3 init];
}

- (void)ping:(id)a3
{
  v3 = a3;
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

  v3[2](v3, 0);
  v9 = sub_1000018B8();
  v10 = v9;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v5, "ping", " enableTelemetry=YES ", v11, 2u);
  }
}

- (void)actionsAndExpirersForHeuristicsExcept:(id)a3 bundlePath:(id)a4 now:(id)a5 dataSourcesEndpoint:(id)a6 reply:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = sub_1000036B0();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000036F4;
  block[3] = &unk_100024C10;
  v23 = v13;
  v24 = v11;
  v25 = v12;
  v26 = v14;
  v27 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v12;
  v20 = v11;
  v21 = v13;
  dispatch_async(v16, block);
}

- (void)resultsForInformationHeuristics:(id)a3 bundlePath:(id)a4 now:(id)a5 dataSourcesEndpoint:(id)a6 reply:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = sub_1000036B0();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D38;
  block[3] = &unk_100024C10;
  v23 = v13;
  v24 = v11;
  v25 = v12;
  v26 = v14;
  v27 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v12;
  v20 = v11;
  v21 = v13;
  dispatch_async(v16, block);
}

@end