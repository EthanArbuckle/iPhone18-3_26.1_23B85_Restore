@interface _AFClockTimerIntentSupportMutableProxy
- (NSArray)trackedChanges;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDuration:(double)duration;
- (void)setState:(unint64_t)state;
@end

@implementation _AFClockTimerIntentSupportMutableProxy

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_AFClockTimerIntentSupportProxy allocWithZone:zone];
  timerID = [(_AFClockTimerIntentSupportProxy *)self timerID];
  state = [(_AFClockTimerIntentSupportProxy *)self state];
  [(_AFClockTimerIntentSupportProxy *)self duration];
  v8 = v7;
  [(_AFClockTimerIntentSupportProxy *)self remainingTime];
  v10 = v9;
  lastModifiedDate = [(_AFClockTimerIntentSupportProxy *)self lastModifiedDate];
  title = [(_AFClockTimerIntentSupportProxy *)self title];
  siriContext = [(_AFClockTimerIntentSupportProxy *)self siriContext];
  v14 = [(_AFClockTimerIntentSupportProxy *)v4 initWithTimerID:timerID state:state duration:lastModifiedDate remainingTime:title lastModifiedDate:siriContext title:v8 siriContext:v10];

  return v14;
}

- (NSArray)trackedChanges
{
  if ([(NSMutableArray *)self->_trackedChanges count])
  {
    v3 = [(NSMutableArray *)self->_trackedChanges copy];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (void)setDuration:(double)duration
{
  v10.receiver = self;
  v10.super_class = _AFClockTimerIntentSupportMutableProxy;
  [(_AFClockTimerIntentSupportProxy *)&v10 setDuration:?];
  trackedChanges = self->_trackedChanges;
  if (!trackedChanges)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_trackedChanges;
    self->_trackedChanges = v6;

    trackedChanges = self->_trackedChanges;
  }

  v11 = @"duration";
  v8 = [NSNumber numberWithDouble:duration];
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [(NSMutableArray *)trackedChanges addObject:v9];
}

- (void)setState:(unint64_t)state
{
  v10.receiver = self;
  v10.super_class = _AFClockTimerIntentSupportMutableProxy;
  [(_AFClockTimerIntentSupportProxy *)&v10 setState:?];
  trackedChanges = self->_trackedChanges;
  if (!trackedChanges)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_trackedChanges;
    self->_trackedChanges = v6;

    trackedChanges = self->_trackedChanges;
  }

  v11 = @"state";
  v8 = [NSNumber numberWithUnsignedInteger:state];
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [(NSMutableArray *)trackedChanges addObject:v9];
}

@end