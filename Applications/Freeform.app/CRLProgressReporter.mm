@interface CRLProgressReporter
- (CRLProgressReporter)initWithTotalUnitCount:(int64_t)count;
@end

@implementation CRLProgressReporter

- (CRLProgressReporter)initWithTotalUnitCount:(int64_t)count
{
  v8.receiver = self;
  v8.super_class = CRLProgressReporter;
  v4 = [(CRLProgressReporter *)&v8 init];
  if (v4)
  {
    v5 = [NSProgress progressWithTotalUnitCount:count];
    progress = v4->_progress;
    v4->_progress = v5;
  }

  return v4;
}

@end