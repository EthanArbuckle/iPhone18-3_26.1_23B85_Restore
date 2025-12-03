@interface ASTSendPropertiesErrorStatus
- (id)reasonForCode:(id)code;
@end

@implementation ASTSendPropertiesErrorStatus

- (id)reasonForCode:(id)code
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = &unk_2852D5EF8;
  v9[1] = &unk_2852D5F10;
  v10[0] = @"One or more of the properties requested were not valid. Other properties requested were processed.";
  v10[1] = @"One or more of the properties requested were not valid. Other properties requested were NOT processed.";
  v9[2] = &unk_2852D5F28;
  v10[2] = @"The client does not support the send properties query.";
  v3 = MEMORY[0x277CBEAC0];
  codeCopy = code;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:v9 count:3];
  v6 = [v5 objectForKeyedSubscript:codeCopy];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end