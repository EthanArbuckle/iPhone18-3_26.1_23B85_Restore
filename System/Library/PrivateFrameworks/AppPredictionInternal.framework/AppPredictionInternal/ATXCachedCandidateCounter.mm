@interface ATXCachedCandidateCounter
- (ATXCachedCandidateCounter)initWithCandidateIdPublisher:(id)publisher;
- (int64_t)countForCandidate:(id)candidate;
- (void)populateCache;
@end

@implementation ATXCachedCandidateCounter

- (ATXCachedCandidateCounter)initWithCandidateIdPublisher:(id)publisher
{
  publisherCopy = publisher;
  v11.receiver = self;
  v11.super_class = ATXCachedCandidateCounter;
  v6 = [(ATXCachedCandidateCounter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_publisher, publisher);
    v8 = objc_opt_new();
    cache = v7->_cache;
    v7->_cache = v8;
  }

  return v7;
}

- (void)populateCache
{
  publisher = self->_publisher;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__ATXCachedCandidateCounter_populateCache__block_invoke_2;
  v4[3] = &unk_27859C988;
  v4[4] = self;
  v3 = [(BPSPublisher *)publisher sinkWithCompletion:&__block_literal_global_251 receiveInput:v4];
}

void __42__ATXCachedCandidateCounter_populateCache__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:?];
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "integerValue") + 1}];
    [*(*(a1 + 32) + 16) setObject:v5 forKeyedSubscript:v6];
  }

  else
  {
    [*(*(a1 + 32) + 16) setObject:&unk_283A57C80 forKeyedSubscript:v6];
  }
}

- (int64_t)countForCandidate:(id)candidate
{
  v3 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:candidate];
  integerValue = [v3 integerValue];

  return integerValue;
}

@end