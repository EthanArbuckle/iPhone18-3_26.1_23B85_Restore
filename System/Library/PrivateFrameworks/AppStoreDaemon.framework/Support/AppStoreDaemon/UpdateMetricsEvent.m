@interface UpdateMetricsEvent
- (UpdateMetricsEvent)initWithTopic:(id)a3;
- (id)description;
@end

@implementation UpdateMetricsEvent

- (UpdateMetricsEvent)initWithTopic:(id)a3
{
  v7.receiver = self;
  v7.super_class = UpdateMetricsEvent;
  v3 = [(UpdateMetricsEvent *)&v7 initWithTopic:a3];
  v4 = v3;
  if (v3)
  {
    [(UpdateMetricsEvent *)v3 setEventType:@"autoUpdateMetrics"];
    objc_opt_self();
    if (qword_1005AA9B0 != -1)
    {
      dispatch_once(&qword_1005AA9B0, &stru_10051F818);
    }

    v5 = qword_1005AA9B8;
    [(UpdateMetricsEvent *)v4 addPropertiesWithDictionary:v5];
  }

  return v4;
}

- (id)description
{
  if (self)
  {
    meanTimeToDiscovery = self->_meanTimeToDiscovery;
    meanTimeToTransaction = self->_meanTimeToTransaction;
    meanTimeToDownload = self->_meanTimeToDownload;
    meanTimeToInstall = self->_meanTimeToInstall;
    averageTimeBetweenPolls = self->_averageTimeBetweenPolls;
  }

  else
  {
    meanTimeToInstall = 0.0;
    meanTimeToTransaction = 0.0;
    meanTimeToDiscovery = 0.0;
    meanTimeToDownload = 0.0;
    averageTimeBetweenPolls = 0.0;
  }

  return [NSString stringWithFormat:@"{ meanToDiscover: %f meanToTransaction: %f meanToDownload: %f meanToInstall: %f averageTimeBetweenPolls: %f }", *&meanTimeToDiscovery, *&meanTimeToTransaction, *&meanTimeToDownload, *&meanTimeToInstall, *&averageTimeBetweenPolls];
}

@end