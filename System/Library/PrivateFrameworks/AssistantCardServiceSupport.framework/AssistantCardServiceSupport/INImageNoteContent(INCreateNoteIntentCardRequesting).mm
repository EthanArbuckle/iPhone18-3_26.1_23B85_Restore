@interface INImageNoteContent(INCreateNoteIntentCardRequesting)
- (id)acs_cardSection;
@end

@implementation INImageNoteContent(INCreateNoteIntentCardRequesting)

- (id)acs_cardSection
{
  v7[1] = *MEMORY[0x277D85DE8];
  image = [self image];
  if (image)
  {
    acs_uniquelyIdentifiedCardSection = [MEMORY[0x277D4C3D0] acs_uniquelyIdentifiedCardSection];
    v3 = [objc_alloc(MEMORY[0x277CD4608]) initWithIntentsImage:image];
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [acs_uniquelyIdentifiedCardSection setImages:v4];
  }

  else
  {
    acs_uniquelyIdentifiedCardSection = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return acs_uniquelyIdentifiedCardSection;
}

@end