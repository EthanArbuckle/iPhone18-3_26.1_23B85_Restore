@interface AFUIRecordSiriBeginEndCoreDuetEvent
@end

@implementation AFUIRecordSiriBeginEndCoreDuetEvent

void ___AFUIRecordSiriBeginEndCoreDuetEvent_block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [MEMORY[0x277CFE1E8] eventStreamWithName:@"/siri/ui"];
  v4 = [MEMORY[0x277CFE1D8] eventWithStream:v3 startDate:v2 endDate:v2 identifierStringValue:*(a1 + 32) metadata:*(a1 + 40)];
  if (v4)
  {
    v5 = [MEMORY[0x277CFE208] knowledgeStore];
    v7[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [v5 saveObjects:v6 error:0];
  }
}

@end