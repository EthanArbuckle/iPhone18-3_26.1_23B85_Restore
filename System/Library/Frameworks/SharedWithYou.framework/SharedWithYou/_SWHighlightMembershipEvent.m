@interface _SWHighlightMembershipEvent
- (_SWHighlightMembershipEvent)initWithHighlight:(id)a3 type:(int64_t)a4;
@end

@implementation _SWHighlightMembershipEvent

- (_SWHighlightMembershipEvent)initWithHighlight:(id)a3 type:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = _SWHighlightMembershipEvent;
  return [(SWHighlightMembershipEvent *)&v5 initWithHighlight:a3 trigger:a4];
}

@end