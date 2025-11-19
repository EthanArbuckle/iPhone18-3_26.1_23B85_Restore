@interface WKStylusDeviceObserver
+ (id)sharedInstance;
- (WKStylusDeviceObserver)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setHasStylusDevice:(BOOL)a3;
- (void)start;
- (void)startChangeTimer:(double)a3;
- (void)stop;
@end

@implementation WKStylusDeviceObserver

+ (id)sharedInstance
{
  if (_MergedGlobals_17 == 1)
  {
    return qword_1ED642838;
  }

  result = objc_alloc_init(WKStylusDeviceObserver);
  qword_1ED642838 = result;
  _MergedGlobals_17 = 1;
  return result;
}

- (WKStylusDeviceObserver)init
{
  v6.receiver = self;
  v6.super_class = WKStylusDeviceObserver;
  v2 = [(WKStylusDeviceObserver *)&v6 init];
  if (v2)
  {
    v2->_hasStylusDevice = [MEMORY[0x1E69DCEC8] isPencilInputExpected];
    v3 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (v3)
    {
      [v3 doubleValue];
      changeTimeInterval = v4;
      WTFLogAlways();
    }
  }

  return v2;
}

- (void)start
{
  v2 = self->_startCount + 1;
  self->_startCount = v2;
  if (v2 <= 1 && WTF::linkedOnOrAfterSDKWithBehavior())
  {
    v4 = objc_opt_class();

    [v4 addObserver:self forKeyPath:@"isPencilInputExpected" options:4 context:0];
  }
}

- (void)stop
{
  startCount = self->_startCount;
  if (startCount)
  {
    v4 = startCount - 1;
    self->_startCount = v4;
    if (!v4)
    {
      if (WTF::linkedOnOrAfterSDKWithBehavior())
      {
        v5 = objc_opt_class();

        [v5 removeObserver:self forKeyPath:@"isPencilInputExpected"];
      }
    }
  }
}

- (void)setHasStylusDevice:(BOOL)a3
{
  if (self->_hasStylusDevice != a3)
  {
    self->_hasStylusDevice = a3;
    WebKit::WebProcessProxy::notifyHasStylusDeviceChanged(a3);
  }

  [(NSTimer *)self->_changeTimer.m_ptr invalidate];
  m_ptr = self->_changeTimer.m_ptr;
  self->_changeTimer.m_ptr = 0;
  if (m_ptr)
  {
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([MEMORY[0x1E69DCEC8] isPencilInputExpected])
  {

    [(WKStylusDeviceObserver *)self setHasStylusDevice:1];
  }

  else
  {
    v7 = *&changeTimeInterval;

    [(WKStylusDeviceObserver *)self startChangeTimer:v7];
  }
}

- (void)startChangeTimer:(double)a3
{
  [(NSTimer *)self->_changeTimer.m_ptr invalidate];
  v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_changeTimerFired_ selector:0 userInfo:0 repeats:a3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  m_ptr = self->_changeTimer.m_ptr;
  self->_changeTimer.m_ptr = v6;
  if (m_ptr)
  {
  }
}

@end