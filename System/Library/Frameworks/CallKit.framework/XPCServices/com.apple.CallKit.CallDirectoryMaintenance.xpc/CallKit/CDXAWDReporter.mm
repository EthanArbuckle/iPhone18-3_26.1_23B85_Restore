@interface CDXAWDReporter
- (CDXAWDReporter)init;
- (void)_reportMetricId:(unsigned int)id usingBlock:(id)block;
- (void)reportLoadedDataForExtensionWithIdentifier:(id)identifier blockingEntries:(unint64_t)entries identificationEntries:(unint64_t)identificationEntries;
- (void)reportSetEnabled:(BOOL)enabled forExtensionWithIdentifier:(id)identifier;
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

- (void)reportLoadedDataForExtensionWithIdentifier:(id)identifier blockingEntries:(unint64_t)entries identificationEntries:(unint64_t)identificationEntries
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005770;
  v7[3] = &unk_100034BD0;
  entriesCopy = entries;
  identificationEntriesCopy = identificationEntries;
  identifierCopy = identifier;
  v6 = identifierCopy;
  [(CDXAWDReporter *)self _reportMetricId:5242881 usingBlock:v7];
}

- (void)reportSetEnabled:(BOOL)enabled forExtensionWithIdentifier:(id)identifier
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005980;
  v7[3] = &unk_100034BF8;
  identifierCopy = identifier;
  enabledCopy = enabled;
  v6 = identifierCopy;
  [(CDXAWDReporter *)self _reportMetricId:5242881 usingBlock:v7];
}

- (void)_reportMetricId:(unsigned int)id usingBlock:(id)block
{
  blockCopy = block;
  queue = [(CDXAWDReporter *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005A94;
  block[3] = &unk_100034C20;
  idCopy = id;
  block[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_async(queue, block);
}

@end