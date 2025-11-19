@interface WFPrescriptionRecordCollector
- (WFPrescriptionRecordCollector)initWithTimeout:(double)a3;
- (void)fetchPrescriptionRecordsWithCompletion:(id)a3;
@end

@implementation WFPrescriptionRecordCollector

- (WFPrescriptionRecordCollector)initWithTimeout:(double)a3
{
  v7.receiver = self;
  v7.super_class = WFPrescriptionRecordCollector;
  v4 = [(WFPrescriptionRecordCollector *)&v7 init];
  if (v4)
  {
    v5 = [[CRXFPrescriptionRecordCollector alloc] initWithTimeout:a3];
    [(WFPrescriptionRecordCollector *)v4 setCollector:v5];
  }

  return v4;
}

- (void)fetchPrescriptionRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WFPrescriptionRecordCollector *)self collector];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000285C;
  v7[3] = &unk_100049210;
  v8 = v4;
  v6 = v4;
  [v5 fetchPrescriptionRecordsWithCompletion:v7];
}

@end