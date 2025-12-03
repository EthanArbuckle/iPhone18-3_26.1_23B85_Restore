@interface WKWebEvent
- (WKWebEvent)initWithEvent:(id)event;
@end

@implementation WKWebEvent

- (WKWebEvent)initWithEvent:(id)event
{
  if (_MergedGlobals_292 != 1)
  {
    qword_1EB01D658 = NSClassFromString(&cfstr_Uiphysicalkeyb.isa);
    _MergedGlobals_292 = 1;
  }

  if ((objc_opt_isKindOfClass() & 1) != 0 && [event _hidEvent])
  {
    _keyCode = [event _keyCode];
    _inputFlags = [event _inputFlags];
    _gsModifierFlags = [event _gsModifierFlags];
    event = [event _cloneEvent];
  }

  else
  {
    if (event)
    {
      eventCopy = event;
    }

    _keyCode = 0;
    _inputFlags = 0;
    _gsModifierFlags = 0;
  }

  if ([event _isKeyDown])
  {
    v9 = 4;
  }

  else
  {
    v9 = 5;
  }

  [event timestamp];
  v11 = v10;
  _modifiedInput = [event _modifiedInput];
  _unmodifiedInput = [event _unmodifiedInput];
  v19.receiver = self;
  v19.super_class = WKWebEvent;
  BYTE2(v18) = [objc_msgSend(event "_modifiedInput")];
  LOWORD(v18) = _keyCode;
  v14 = [(WebEvent *)&v19 initWithKeyEventType:v9 timeStamp:_modifiedInput characters:_unmodifiedInput charactersIgnoringModifiers:_gsModifierFlags modifiers:_inputFlags & 1 isRepeating:_inputFlags withFlags:v11 withInputManagerHint:0 keyCode:v18 isTabKey:?];
  v15 = v14;
  if (!v14)
  {
    if (!event)
    {
      return v15;
    }

    goto LABEL_14;
  }

  m_ptr = v14->_uiEvent.m_ptr;
  v14->_uiEvent.m_ptr = event;
  event = m_ptr;
  if (m_ptr)
  {
LABEL_14:
  }

  return v15;
}

@end