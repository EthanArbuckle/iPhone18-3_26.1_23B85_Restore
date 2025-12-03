@interface _SWHighlightChangeEvent
- (_SWHighlightChangeEvent)initWithHighlight:(id)highlight type:(int64_t)type;
- (_SWHighlightChangeEvent)initWithHighlightURL:(id)l type:(int64_t)type;
@end

@implementation _SWHighlightChangeEvent

- (_SWHighlightChangeEvent)initWithHighlightURL:(id)l type:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = _SWHighlightChangeEvent;
  return [(SWHighlightChangeEvent *)&v5 initWithHighlightURL:l type:type];
}

- (_SWHighlightChangeEvent)initWithHighlight:(id)highlight type:(int64_t)type
{
  v6 = [highlight URL];
  v9.receiver = self;
  v9.super_class = _SWHighlightChangeEvent;
  v7 = [(SWHighlightChangeEvent *)&v9 initWithHighlightURL:v6 type:type];

  return v7;
}

@end