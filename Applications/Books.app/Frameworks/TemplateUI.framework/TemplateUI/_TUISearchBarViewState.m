@interface _TUISearchBarViewState
- (_TUISearchBarViewState)initWithText:(id)a3;
@end

@implementation _TUISearchBarViewState

- (_TUISearchBarViewState)initWithText:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TUISearchBarViewState;
  v6 = [(_TUISearchBarViewState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_text, a3);
  }

  return v7;
}

@end