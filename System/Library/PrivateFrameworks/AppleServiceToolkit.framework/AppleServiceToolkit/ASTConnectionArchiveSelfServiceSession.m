@interface ASTConnectionArchiveSelfServiceSession
- (void)setSessionId:(id)a3;
@end

@implementation ASTConnectionArchiveSelfServiceSession

- (void)setSessionId:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASTConnectionArchiveSelfServiceSession;
  [(ASTMaterializedConnection *)&v8 setSessionId:v4];
  if (v4)
  {
    v9 = @"sessionId";
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    rawBody = self->_rawBody;
    self->_rawBody = v5;

    [(ASTMaterializedConnection *)self addBody:self->_rawBody];
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end