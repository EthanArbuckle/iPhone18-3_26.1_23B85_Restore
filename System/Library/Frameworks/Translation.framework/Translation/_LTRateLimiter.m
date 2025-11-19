@interface _LTRateLimiter
- (BOOL)allowedForRequests:(unint64_t)a3;
- (_LTRateLimiter)initWithMaximumPageLoadRequest:(unint64_t)a3 maximumDynamicContentRequests:(int64_t)a4;
@end

@implementation _LTRateLimiter

- (_LTRateLimiter)initWithMaximumPageLoadRequest:(unint64_t)a3 maximumDynamicContentRequests:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = _LTRateLimiter;
  v6 = [(_LTRateLimiter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_maximumPageLoadRequests = a3;
    v6->_maximumDynamicContentRequests = a4;
    v6->_pageLoaded = 0;
    v6->_count = 0;
    v8 = v6;
  }

  return v7;
}

- (BOOL)allowedForRequests:(unint64_t)a3
{
  v3 = 24;
  if (self->_pageLoaded)
  {
    v3 = 32;
  }

  v4 = *(&self->super.isa + v3);
  v5 = self->_count + a3;
  self->_count = v5;
  return v5 < v4;
}

@end