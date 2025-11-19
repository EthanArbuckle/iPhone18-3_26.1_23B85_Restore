@interface _SWHighlightChangeEvent
- (_SWHighlightChangeEvent)initWithHighlight:(id)a3 type:(int64_t)a4;
- (_SWHighlightChangeEvent)initWithHighlightURL:(id)a3 type:(int64_t)a4;
@end

@implementation _SWHighlightChangeEvent

- (_SWHighlightChangeEvent)initWithHighlightURL:(id)a3 type:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = _SWHighlightChangeEvent;
  return [(SWHighlightChangeEvent *)&v5 initWithHighlightURL:a3 type:a4];
}

- (_SWHighlightChangeEvent)initWithHighlight:(id)a3 type:(int64_t)a4
{
  v6 = [a3 URL];
  v9.receiver = self;
  v9.super_class = _SWHighlightChangeEvent;
  v7 = [(SWHighlightChangeEvent *)&v9 initWithHighlightURL:v6 type:a4];

  return v7;
}

@end