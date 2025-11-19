@interface CDXAWDReporter
- (CDXAWDReporter)init;
- (void)_reportMetricId:(unsigned int)a3 usingBlock:(id)a4;
- (void)reportLoadedDataForExtensionWithIdentifier:(id)a3 blockingEntries:(unint64_t)a4 identificationEntries:(unint64_t)a5;
- (void)reportSetEnabled:(BOOL)a3 forExtensionWithIdentifier:(id)a4;
@end

@implementation CDXAWDReporter

- (CDXAWDReporter)init
{
  v9.receiver = self;
  v9.super_class = CDXAWDReporter;
  v2 = [(CDXAWDReporter *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.callkit.calldirectory.awdreporter", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_100034B58;
    v8 = v2;
    dispatch_async(v5, block);
  }

  return v2;
}

- (void)reportLoadedDataForExtensionWithIdentifier:(id)a3 blockingEntries:(unint64_t)a4 identificationEntries:(unint64_t)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005770;
  v7[3] = &unk_100034BD0;
  v9 = a4;
  v10 = a5;
  v8 = a3;
  v6 = v8;
  [(CDXAWDReporter *)self _reportMetricId:5242881 usingBlock:v7];
}

- (void)reportSetEnabled:(BOOL)a3 forExtensionWithIdentifier:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005980;
  v7[3] = &unk_100034BF8;
  v8 = a4;
  v9 = a3;
  v6 = v8;
  [(CDXAWDReporter *)self _reportMetricId:5242881 usingBlock:v7];
}

- (void)_reportMetricId:(unsigned int)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(CDXAWDReporter *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005A94;
  block[3] = &unk_100034C20;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

@end