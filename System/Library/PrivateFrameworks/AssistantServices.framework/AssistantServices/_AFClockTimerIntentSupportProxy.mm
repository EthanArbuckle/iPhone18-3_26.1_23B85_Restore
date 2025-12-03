@interface _AFClockTimerIntentSupportProxy
- (NSString)description;
- (_AFClockTimerIntentSupportProxy)initWithTimerID:(id)d state:(unint64_t)state duration:(double)duration remainingTime:(double)time lastModifiedDate:(id)date title:(id)title siriContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)type;
- (void)setDuration:(double)duration;
- (void)setState:(unint64_t)state;
@end

@implementation _AFClockTimerIntentSupportProxy

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [_AFClockTimerIntentSupportMutableProxy allocWithZone:zone];
  timerID = self->_timerID;
  state = self->_state;
  duration = self->_duration;
  remainingTime = self->_remainingTime;
  lastModifiedDate = self->_lastModifiedDate;
  title = self->_title;
  siriContext = self->_siriContext;

  return [(_AFClockTimerIntentSupportProxy *)v4 initWithTimerID:timerID state:state duration:lastModifiedDate remainingTime:title lastModifiedDate:siriContext title:duration siriContext:remainingTime];
}

- (void)setDuration:(double)duration
{
  if (self->_state != 1)
  {
    v3 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v5 = 136315138;
    v6 = "[_AFClockTimerIntentSupportProxy setDuration:]";
    v4 = "%s Timer duration can only be modified while stopped.";
LABEL_9:
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, v4, &v5, 0xCu);
    return;
  }

  if (duration > 0.0)
  {
    self->_duration = duration;
    return;
  }

  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[_AFClockTimerIntentSupportProxy setDuration:]";
    v4 = "%s Timer duration must be positive.";
    goto LABEL_9;
  }
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    if (state == 1)
    {
      self->_remainingTime = self->_duration;
    }

    self->_state = state;
  }
}

- (NSString)description
{
  v3 = [NSString alloc];
  v7.receiver = self;
  v7.super_class = _AFClockTimerIntentSupportProxy;
  v4 = [(_AFClockTimerIntentSupportProxy *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {timerID = %@, state = %ld, duration = %f, remainingTime = %f, lastModifiedDate = %@, title = %@, siriContext = %@}", v4, self->_timerID, self->_state, *&self->_duration, *&self->_remainingTime, self->_lastModifiedDate, self->_title, self->_siriContext];

  return v5;
}

- (int64_t)type
{
  v2 = [(NSDictionary *)self->_siriContext objectForKeyedSubscript:SOMTTimerIntentSupportSiriContextTimerTypeKey];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (_AFClockTimerIntentSupportProxy)initWithTimerID:(id)d state:(unint64_t)state duration:(double)duration remainingTime:(double)time lastModifiedDate:(id)date title:(id)title siriContext:(id)context
{
  dCopy = d;
  dateCopy = date;
  titleCopy = title;
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = _AFClockTimerIntentSupportProxy;
  v21 = [(_AFClockTimerIntentSupportProxy *)&v26 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_timerID, d);
    v22->_state = state;
    v22->_duration = duration;
    v22->_remainingTime = time;
    objc_storeStrong(&v22->_lastModifiedDate, date);
    v23 = [titleCopy copy];
    title = v22->_title;
    v22->_title = v23;

    objc_storeStrong(&v22->_siriContext, context);
  }

  return v22;
}

@end