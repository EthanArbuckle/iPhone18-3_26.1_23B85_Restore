@interface _SWHighlightMembershipEvent
- (_SWHighlightMembershipEvent)initWithHighlight:(id)highlight type:(int64_t)type;
@end

@implementation _SWHighlightMembershipEvent

- (_SWHighlightMembershipEvent)initWithHighlight:(id)highlight type:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = _SWHighlightMembershipEvent;
  return [(SWHighlightMembershipEvent *)&v5 initWithHighlight:highlight trigger:type];
}

@end