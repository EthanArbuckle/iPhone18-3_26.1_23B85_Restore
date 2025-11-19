@interface _SWHighlightMentionEvent
- (_SWHighlightMentionEvent)initWithHighlight:(id)a3 mentionedPerson:(id)a4;
@end

@implementation _SWHighlightMentionEvent

- (_SWHighlightMentionEvent)initWithHighlight:(id)a3 mentionedPerson:(id)a4
{
  v6 = a4;
  v7 = [a3 URL];
  v8 = [v6 handle];

  v11.receiver = self;
  v11.super_class = _SWHighlightMentionEvent;
  v9 = [(SWHighlightMentionEvent *)&v11 initWithHighlightURL:v7 mentionedPersonHandle:v8 mentionedPersonIdentity:0];

  return v9;
}

@end