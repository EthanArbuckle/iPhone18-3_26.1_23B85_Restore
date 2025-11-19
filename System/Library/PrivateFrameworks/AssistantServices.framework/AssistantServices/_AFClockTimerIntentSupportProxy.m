@interface _AFClockTimerIntentSupportProxy
- (NSString)description;
- (_AFClockTimerIntentSupportProxy)initWithTimerID:(id)a3 state:(unint64_t)a4 duration:(double)a5 remainingTime:(double)a6 lastModifiedDate:(id)a7 title:(id)a8 siriContext:(id)a9;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)type;
- (void)setDuration:(double)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation _AFClockTimerIntentSupportProxy

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [_AFClockTimerIntentSupportMutableProxy allocWithZone:a3];
  timerID = self->_timerID;
  state = self->_state;
  duration = self->_duration;
  remainingTime = self->_remainingTime;
  lastModifiedDate = self->_lastModifiedDate;
  title = self->_title;
  siriContext = self->_siriContext;

  return [(_AFClockTimerIntentSupportProxy *)v4 initWithTimerID:timerID state:state duration:lastModifiedDate remainingTime:title lastModifiedDate:siriContext title:duration siriContext:remainingTime];
}

- (void)setDuration:(double)a3
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

  if (a3 > 0.0)
  {
    self->_duration = a3;
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

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    if (a3 == 1)
    {
      self->_remainingTime = self->_duration;
    }

    self->_state = a3;
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
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (_AFClockTimerIntentSupportProxy)initWithTimerID:(id)a3 state:(unint64_t)a4 duration:(double)a5 remainingTime:(double)a6 lastModifiedDate:(id)a7 title:(id)a8 siriContext:(id)a9
{
  v17 = a3;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v26.receiver = self;
  v26.super_class = _AFClockTimerIntentSupportProxy;
  v21 = [(_AFClockTimerIntentSupportProxy *)&v26 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_timerID, a3);
    v22->_state = a4;
    v22->_duration = a5;
    v22->_remainingTime = a6;
    objc_storeStrong(&v22->_lastModifiedDate, a7);
    v23 = [v19 copy];
    title = v22->_title;
    v22->_title = v23;

    objc_storeStrong(&v22->_siriContext, a9);
  }

  return v22;
}

@end