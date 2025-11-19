@interface ASTConnectionRetrieveInstructionalPromptDetails
- (ASTConnectionRetrieveInstructionalPromptDetails)initWithInstructionID:(id)a3 type:(id)a4 language:(id)a5 locale:(id)a6;
@end

@implementation ASTConnectionRetrieveInstructionalPromptDetails

- (ASTConnectionRetrieveInstructionalPromptDetails)initWithInstructionID:(id)a3 type:(id)a4 language:(id)a5 locale:(id)a6
{
  v21[4] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = ASTConnectionRetrieveInstructionalPromptDetails;
  v14 = [(ASTMaterializedConnection *)&v19 init];
  if (v14)
  {
    v20[0] = @"instructionId";
    v20[1] = @"type";
    v21[0] = v10;
    v21[1] = v11;
    v20[2] = @"language";
    v20[3] = @"locale";
    v21[2] = v12;
    v21[3] = v13;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
    rawBody = v14->_rawBody;
    v14->_rawBody = v15;

    [(ASTMaterializedConnection *)v14 addBody:v14->_rawBody];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

@end