@interface INTextNoteContent(INCreateNoteIntentCardRequesting)
- (id)acs_cardSection;
@end

@implementation INTextNoteContent(INCreateNoteIntentCardRequesting)

- (id)acs_cardSection
{
  v1 = [a1 text];
  if ([v1 length])
  {
    v2 = [MEMORY[0x277D4C320] acs_uniquelyIdentifiedCardSection];
    [v2 setTitle:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end