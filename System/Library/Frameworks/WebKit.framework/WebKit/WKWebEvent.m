@interface WKWebEvent
- (WKWebEvent)initWithEvent:(id)a3;
@end

@implementation WKWebEvent

- (WKWebEvent)initWithEvent:(id)a3
{
  if (_MergedGlobals_292 != 1)
  {
    qword_1EB01D658 = NSClassFromString(&cfstr_Uiphysicalkeyb.isa);
    _MergedGlobals_292 = 1;
  }

  if ((objc_opt_isKindOfClass() & 1) != 0 && [a3 _hidEvent])
  {
    v5 = [a3 _keyCode];
    v6 = [a3 _inputFlags];
    v7 = [a3 _gsModifierFlags];
    a3 = [a3 _cloneEvent];
  }

  else
  {
    if (a3)
    {
      v8 = a3;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  if ([a3 _isKeyDown])
  {
    v9 = 4;
  }

  else
  {
    v9 = 5;
  }

  [a3 timestamp];
  v11 = v10;
  v12 = [a3 _modifiedInput];
  v13 = [a3 _unmodifiedInput];
  v19.receiver = self;
  v19.super_class = WKWebEvent;
  BYTE2(v18) = [objc_msgSend(a3 "_modifiedInput")];
  LOWORD(v18) = v5;
  v14 = [(WebEvent *)&v19 initWithKeyEventType:v9 timeStamp:v12 characters:v13 charactersIgnoringModifiers:v7 modifiers:v6 & 1 isRepeating:v6 withFlags:v11 withInputManagerHint:0 keyCode:v18 isTabKey:?];
  v15 = v14;
  if (!v14)
  {
    if (!a3)
    {
      return v15;
    }

    goto LABEL_14;
  }

  m_ptr = v14->_uiEvent.m_ptr;
  v14->_uiEvent.m_ptr = a3;
  a3 = m_ptr;
  if (m_ptr)
  {
LABEL_14:
  }

  return v15;
}

@end