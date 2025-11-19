@interface CRLProgressReporter
- (CRLProgressReporter)initWithTotalUnitCount:(int64_t)a3;
@end

@implementation CRLProgressReporter

- (CRLProgressReporter)initWithTotalUnitCount:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CRLProgressReporter;
  v4 = [(CRLProgressReporter *)&v8 init];
  if (v4)
  {
    v5 = [NSProgress progressWithTotalUnitCount:a3];
    progress = v4->_progress;
    v4->_progress = v5;
  }

  return v4;
}

@end