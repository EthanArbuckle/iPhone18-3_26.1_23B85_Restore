@interface WFPrescriptionRecordCollector
- (WFPrescriptionRecordCollector)initWithTimeout:(double)timeout;
- (void)fetchPrescriptionRecordsWithCompletion:(id)completion;
@end

@implementation WFPrescriptionRecordCollector

- (WFPrescriptionRecordCollector)initWithTimeout:(double)timeout
{
  v7.receiver = self;
  v7.super_class = WFPrescriptionRecordCollector;
  v4 = [(WFPrescriptionRecordCollector *)&v7 init];
  if (v4)
  {
    v5 = [[CRXFPrescriptionRecordCollector alloc] initWithTimeout:timeout];
    [(WFPrescriptionRecordCollector *)v4 setCollector:v5];
  }

  return v4;
}

- (void)fetchPrescriptionRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  collector = [(WFPrescriptionRecordCollector *)self collector];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000285C;
  v7[3] = &unk_100049210;
  v8 = completionCopy;
  v6 = completionCopy;
  [collector fetchPrescriptionRecordsWithCompletion:v7];
}

@end