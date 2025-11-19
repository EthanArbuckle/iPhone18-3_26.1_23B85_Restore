@interface MDLScatteringFunction
- (MDLScatteringFunction)init;
@end

@implementation MDLScatteringFunction

- (MDLScatteringFunction)init
{
  v5 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = MDLScatteringFunction;
  if ([(MDLScatteringFunction *)&v4 init])
  {
    operator new();
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

@end