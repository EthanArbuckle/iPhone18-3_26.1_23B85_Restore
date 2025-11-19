@interface INImageNoteContent(INCreateNoteIntentCardRequesting)
- (id)acs_cardSection;
@end

@implementation INImageNoteContent(INCreateNoteIntentCardRequesting)

- (id)acs_cardSection
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 image];
  if (v1)
  {
    v2 = [MEMORY[0x277D4C3D0] acs_uniquelyIdentifiedCardSection];
    v3 = [objc_alloc(MEMORY[0x277CD4608]) initWithIntentsImage:v1];
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [v2 setImages:v4];
  }

  else
  {
    v2 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v2;
}

@end