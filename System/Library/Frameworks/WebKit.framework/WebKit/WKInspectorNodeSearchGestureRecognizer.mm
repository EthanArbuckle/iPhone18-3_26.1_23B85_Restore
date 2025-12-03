@interface WKInspectorNodeSearchGestureRecognizer
- (CGPoint)locationInView:(id)view;
- (void)_processTouches:(id)touches state:(int64_t)state;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation WKInspectorNodeSearchGestureRecognizer

- (CGPoint)locationInView:(id)view
{
  [(UITouch *)self->_touch.m_ptr locationInView:view];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_processTouches:(id)touches state:(int64_t)state
{
  if ([touches containsObject:self->_touch.m_ptr])
  {

    [(WKInspectorNodeSearchGestureRecognizer *)self setState:state];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if (![(WKInspectorNodeSearchGestureRecognizer *)self state:began])
  {
    anyObject = [began anyObject];
    v7 = anyObject;
    if (anyObject)
    {
      v8 = anyObject;
    }

    m_ptr = self->_touch.m_ptr;
    self->_touch.m_ptr = v7;
    if (m_ptr)
    {
    }

    [(WKInspectorNodeSearchGestureRecognizer *)self _processTouches:began state:1];
  }
}

- (void)reset
{
  m_ptr = self->_touch.m_ptr;
  self->_touch.m_ptr = 0;
  if (m_ptr)
  {
  }
}

@end