@interface CRLDisplayLink
- (CRLDisplayLink)initWithHandler:(id)handler;
- (id)p_initWithHandler:(id)handler manager:(id)manager;
- (void)invalidate;
- (void)setPaused:(BOOL)paused;
@end

@implementation CRLDisplayLink

- (id)p_initWithHandler:(id)handler manager:(id)manager
{
  handlerCopy = handler;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = CRLDisplayLink;
  v8 = [(CRLDisplayLink *)&v12 init];
  if (v8)
  {
    v9 = [handlerCopy copy];
    handler = v8->_handler;
    v8->_handler = v9;

    *&v8->_paused = 257;
    [managerCopy addLink:v8];
  }

  return v8;
}

- (CRLDisplayLink)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[CRLDisplayLinkManager sharedManager];
  v6 = [(CRLDisplayLink *)self p_initWithHandler:handlerCopy manager:v5];

  return v6;
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  if (self->_valid)
  {
    goto LABEL_11;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013542E0();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013542F4();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101354394();
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v5);
  }

  v6 = [NSString stringWithUTF8String:"[CRLDisplayLink setPaused:]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDisplayLink.m"];
  [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:71 isFatal:0 description:"Can't pause an invalid display link."];

  if (self->_valid)
  {
LABEL_11:
    if (self->_paused != pausedCopy)
    {
      self->_paused = pausedCopy;
      p_manager = [(CRLDisplayLink *)self p_manager];
      [p_manager updatePausedForLink:self];
    }
  }
}

- (void)invalidate
{
  p_manager = [(CRLDisplayLink *)self p_manager];
  [p_manager removeLink:self];

  self->_valid = 0;
}

@end