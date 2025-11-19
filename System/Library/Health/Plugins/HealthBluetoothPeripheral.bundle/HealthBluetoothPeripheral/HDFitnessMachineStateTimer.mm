@interface HDFitnessMachineStateTimer
- (void)dealloc;
@end

@implementation HDFitnessMachineStateTimer

- (void)dealloc
{
  sub_3440C(self);
  v3.receiver = self;
  v3.super_class = HDFitnessMachineStateTimer;
  [(HDFitnessMachineStateTimer *)&v3 dealloc];
}

@end