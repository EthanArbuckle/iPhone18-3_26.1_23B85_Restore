@interface _LTRateLimiter
- (BOOL)allowedForRequests:(unint64_t)requests;
- (_LTRateLimiter)initWithMaximumPageLoadRequest:(unint64_t)request maximumDynamicContentRequests:(int64_t)requests;
@end

@implementation _LTRateLimiter

- (_LTRateLimiter)initWithMaximumPageLoadRequest:(unint64_t)request maximumDynamicContentRequests:(int64_t)requests
{
  v10.receiver = self;
  v10.super_class = _LTRateLimiter;
  v6 = [(_LTRateLimiter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_maximumPageLoadRequests = request;
    v6->_maximumDynamicContentRequests = requests;
    v6->_pageLoaded = 0;
    v6->_count = 0;
    v8 = v6;
  }

  return v7;
}

- (BOOL)allowedForRequests:(unint64_t)requests
{
  v3 = 24;
  if (self->_pageLoaded)
  {
    v3 = 32;
  }

  v4 = *(&self->super.isa + v3);
  v5 = self->_count + requests;
  self->_count = v5;
  return v5 < v4;
}

@end