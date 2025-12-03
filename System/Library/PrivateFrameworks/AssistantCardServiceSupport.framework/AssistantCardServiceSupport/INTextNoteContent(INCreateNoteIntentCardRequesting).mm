@interface INTextNoteContent(INCreateNoteIntentCardRequesting)
- (id)acs_cardSection;
@end

@implementation INTextNoteContent(INCreateNoteIntentCardRequesting)

- (id)acs_cardSection
{
  text = [self text];
  if ([text length])
  {
    acs_uniquelyIdentifiedCardSection = [MEMORY[0x277D4C320] acs_uniquelyIdentifiedCardSection];
    [acs_uniquelyIdentifiedCardSection setTitle:text];
  }

  else
  {
    acs_uniquelyIdentifiedCardSection = 0;
  }

  return acs_uniquelyIdentifiedCardSection;
}

@end