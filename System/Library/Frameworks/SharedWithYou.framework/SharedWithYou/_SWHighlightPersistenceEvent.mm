@interface _SWHighlightPersistenceEvent
- (_SWHighlightPersistenceEvent)initWithHighlight:(id)a3 type:(int64_t)a4;
@end

@implementation _SWHighlightPersistenceEvent

- (_SWHighlightPersistenceEvent)initWithHighlight:(id)a3 type:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = _SWHighlightPersistenceEvent;
  v4 = [(SWHighlightPersistenceEvent *)&v8 initWithHighlight:a3 type:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

@end