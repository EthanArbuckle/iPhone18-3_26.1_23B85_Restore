@interface CRLDisplayLink
- (CRLDisplayLink)initWithHandler:(id)a3;
- (id)p_initWithHandler:(id)a3 manager:(id)a4;
- (void)invalidate;
- (void)setPaused:(BOOL)a3;
@end

@implementation CRLDisplayLink

- (id)p_initWithHandler:(id)a3 manager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CRLDisplayLink;
  v8 = [(CRLDisplayLink *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    handler = v8->_handler;
    v8->_handler = v9;

    *&v8->_paused = 257;
    [v7 addLink:v8];
  }

  return v8;
}

- (CRLDisplayLink)initWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[CRLDisplayLinkManager sharedManager];
  v6 = [(CRLDisplayLink *)self p_initWithHandler:v4 manager:v5];

  return v6;
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
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
    if (self->_paused != v3)
    {
      self->_paused = v3;
      v8 = [(CRLDisplayLink *)self p_manager];
      [v8 updatePausedForLink:self];
    }
  }
}

- (void)invalidate
{
  v3 = [(CRLDisplayLink *)self p_manager];
  [v3 removeLink:self];

  self->_valid = 0;
}

@end