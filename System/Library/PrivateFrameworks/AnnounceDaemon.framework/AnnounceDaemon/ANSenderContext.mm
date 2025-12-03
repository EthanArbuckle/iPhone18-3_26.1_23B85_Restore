@interface ANSenderContext
- (id)description;
@end

@implementation ANSenderContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANSenderContext isValidDevice](self, "isValidDevice")}];
  senderCorrelationIdentifier = [(ANSenderContext *)self senderCorrelationIdentifier];
  v6 = [v3 stringWithFormat:@"Valid Device = %@, Sender Corr. ID = %@", v4, senderCorrelationIdentifier];

  return v6;
}

@end