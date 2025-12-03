@interface _TUITextViewState
- (_TUITextViewState)initWithText:(id)text;
@end

@implementation _TUITextViewState

- (_TUITextViewState)initWithText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = _TUITextViewState;
  v6 = [(_TUITextViewState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_text, text);
  }

  return v7;
}

@end