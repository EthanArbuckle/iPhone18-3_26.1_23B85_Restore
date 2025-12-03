@interface CLKAssertionBlockSentinel
- (void)dealloc;
- (void)markCalled;
@end

@implementation CLKAssertionBlockSentinel

- (void)markCalled
{
  if ([(CLKAssertionBlockSentinel *)self isCalled])
  {
    v3 = CLKLoggingObjectForDomain(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(CLKAssertionBlockSentinel *)self markCalled];
    }

    if ([(CLKAssertionBlockSentinel *)self shouldBeFatal])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Called completion handler more than once in %@", self->_message}];
    }
  }

  [(CLKAssertionBlockSentinel *)self setCalled:1];
}

- (void)dealloc
{
  if (![(CLKAssertionBlockSentinel *)self isCalled])
  {
    v3 = CLKLoggingObjectForDomain(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(CLKAssertionBlockSentinel *)self dealloc];
    }

    fallbackBlock = [(CLKAssertionBlockSentinel *)self fallbackBlock];

    if (fallbackBlock)
    {
      fallbackBlock2 = [(CLKAssertionBlockSentinel *)self fallbackBlock];
      fallbackBlock2[2]();
    }

    if ([(CLKAssertionBlockSentinel *)self shouldBeFatal])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Failed to call completion handler in %@", self->_message}];
    }
  }

  v6.receiver = self;
  v6.super_class = CLKAssertionBlockSentinel;
  [(CLKAssertionBlockSentinel *)&v6 dealloc];
}

@end