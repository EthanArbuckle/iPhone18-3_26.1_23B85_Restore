@interface WKInspectorNodeSearchGestureRecognizer
- (CGPoint)locationInView:(id)a3;
- (void)_processTouches:(id)a3 state:(int64_t)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation WKInspectorNodeSearchGestureRecognizer

- (CGPoint)locationInView:(id)a3
{
  [(UITouch *)self->_touch.m_ptr locationInView:a3];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_processTouches:(id)a3 state:(int64_t)a4
{
  if ([a3 containsObject:self->_touch.m_ptr])
  {

    [(WKInspectorNodeSearchGestureRecognizer *)self setState:a4];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if (![(WKInspectorNodeSearchGestureRecognizer *)self state:a3])
  {
    v6 = [a3 anyObject];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    m_ptr = self->_touch.m_ptr;
    self->_touch.m_ptr = v7;
    if (m_ptr)
    {
    }

    [(WKInspectorNodeSearchGestureRecognizer *)self _processTouches:a3 state:1];
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