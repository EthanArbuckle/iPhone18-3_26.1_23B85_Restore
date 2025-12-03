@interface _SWHighlightMentionEvent
- (_SWHighlightMentionEvent)initWithHighlight:(id)highlight mentionedPerson:(id)person;
@end

@implementation _SWHighlightMentionEvent

- (_SWHighlightMentionEvent)initWithHighlight:(id)highlight mentionedPerson:(id)person
{
  personCopy = person;
  v7 = [highlight URL];
  handle = [personCopy handle];

  v11.receiver = self;
  v11.super_class = _SWHighlightMentionEvent;
  v9 = [(SWHighlightMentionEvent *)&v11 initWithHighlightURL:v7 mentionedPersonHandle:handle mentionedPersonIdentity:0];

  return v9;
}

@end