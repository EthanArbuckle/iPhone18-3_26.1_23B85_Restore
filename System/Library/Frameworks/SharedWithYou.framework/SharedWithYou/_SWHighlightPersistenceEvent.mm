@interface _SWHighlightPersistenceEvent
- (_SWHighlightPersistenceEvent)initWithHighlight:(id)highlight type:(int64_t)type;
@end

@implementation _SWHighlightPersistenceEvent

- (_SWHighlightPersistenceEvent)initWithHighlight:(id)highlight type:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = _SWHighlightPersistenceEvent;
  v4 = [(SWHighlightPersistenceEvent *)&v8 initWithHighlight:highlight type:type];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

@end