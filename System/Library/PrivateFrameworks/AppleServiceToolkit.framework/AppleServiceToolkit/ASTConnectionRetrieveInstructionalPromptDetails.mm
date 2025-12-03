@interface ASTConnectionRetrieveInstructionalPromptDetails
- (ASTConnectionRetrieveInstructionalPromptDetails)initWithInstructionID:(id)d type:(id)type language:(id)language locale:(id)locale;
@end

@implementation ASTConnectionRetrieveInstructionalPromptDetails

- (ASTConnectionRetrieveInstructionalPromptDetails)initWithInstructionID:(id)d type:(id)type language:(id)language locale:(id)locale
{
  v21[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  typeCopy = type;
  languageCopy = language;
  localeCopy = locale;
  v19.receiver = self;
  v19.super_class = ASTConnectionRetrieveInstructionalPromptDetails;
  v14 = [(ASTMaterializedConnection *)&v19 init];
  if (v14)
  {
    v20[0] = @"instructionId";
    v20[1] = @"type";
    v21[0] = dCopy;
    v21[1] = typeCopy;
    v20[2] = @"language";
    v20[3] = @"locale";
    v21[2] = languageCopy;
    v21[3] = localeCopy;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
    rawBody = v14->_rawBody;
    v14->_rawBody = v15;

    [(ASTMaterializedConnection *)v14 addBody:v14->_rawBody];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

@end