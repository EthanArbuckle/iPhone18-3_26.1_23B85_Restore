@interface _WKPageLoadTiming
- (NSDate)allSubresourcesFinishedLoading;
- (NSDate)documentFinishedLoading;
- (NSDate)firstMeaningfulPaint;
- (NSDate)firstVisualLayout;
- (NSDate)navigationStart;
- (id).cxx_construct;
- (id)_initWithTiming:(const void *)a3;
@end

@implementation _WKPageLoadTiming

- (id)_initWithTiming:(const void *)a3
{
  v5.receiver = self;
  v5.super_class = _WKPageLoadTiming;
  result = [(_WKPageLoadTiming *)&v5 init];
  if (result)
  {
    *(result + 1) = *a3;
    *(result + 2) = *(a3 + 1);
    *(result + 3) = *(a3 + 2);
    *(result + 4) = *(a3 + 3);
    *(result + 5) = *(a3 + 4);
  }

  return result;
}

- (NSDate)navigationStart
{
  if (self->_navigationStart.m_value == 0.0)
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
  }
}

- (NSDate)firstVisualLayout
{
  if (self->_firstVisualLayout.m_value == 0.0)
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
  }
}

- (NSDate)firstMeaningfulPaint
{
  if (self->_firstMeaningfulPaint.m_value == 0.0)
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
  }
}

- (NSDate)documentFinishedLoading
{
  if (self->_documentFinishedLoading.m_value == 0.0)
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
  }
}

- (NSDate)allSubresourcesFinishedLoading
{
  if (self->_allSubresourcesFinishedLoading.m_value == 0.0)
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
  }
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end