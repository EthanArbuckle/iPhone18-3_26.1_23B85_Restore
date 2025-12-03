@interface ASVHitTestHistory
- (ASVHitTestHistory)initWithResultCapacity:(unint64_t)capacity decisionCapacity:(unint64_t)decisionCapacity;
- (id)recentDecisionsForCount:(unint64_t)count;
- (id)recentResultsForCount:(unint64_t)count;
- (void)addDecision:(id)decision;
- (void)addResult:(id)result;
- (void)clearHistory;
- (void)reinitializeDecisionHistoryWithDecision:(id)decision;
@end

@implementation ASVHitTestHistory

- (ASVHitTestHistory)initWithResultCapacity:(unint64_t)capacity decisionCapacity:(unint64_t)decisionCapacity
{
  v13.receiver = self;
  v13.super_class = ASVHitTestHistory;
  v6 = [(ASVHitTestHistory *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_resultCapacity = capacity;
    v6->_decisionCapacity = decisionCapacity;
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:capacity];
    results = v7->_results;
    v7->_results = v8;

    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:decisionCapacity];
    decisions = v7->_decisions;
    v7->_decisions = v10;
  }

  return v7;
}

- (void)addResult:(id)result
{
  resultCopy = result;
  results = [(ASVHitTestHistory *)self results];
  [results addObject:resultCopy];

  results2 = [(ASVHitTestHistory *)self results];
  v7 = [results2 count];
  resultCapacity = [(ASVHitTestHistory *)self resultCapacity];

  if (v7 > resultCapacity)
  {
    results3 = [(ASVHitTestHistory *)self results];
    [results3 removeObjectAtIndex:0];
  }
}

- (void)addDecision:(id)decision
{
  decisionCopy = decision;
  decisions = [(ASVHitTestHistory *)self decisions];
  [decisions addObject:decisionCopy];

  decisions2 = [(ASVHitTestHistory *)self decisions];
  v7 = [decisions2 count];
  decisionCapacity = [(ASVHitTestHistory *)self decisionCapacity];

  if (v7 > decisionCapacity)
  {
    decisions3 = [(ASVHitTestHistory *)self decisions];
    [decisions3 removeObjectAtIndex:0];
  }
}

- (id)recentResultsForCount:(unint64_t)count
{
  results = [(ASVHitTestHistory *)self results];
  v6 = [results count];

  if (v6 < count)
  {
    count = v6;
  }

  if (count)
  {
    results2 = [(ASVHitTestHistory *)self results];
    v8 = [results2 count] - count;

    results3 = [(ASVHitTestHistory *)self results];
    v10 = [results3 subarrayWithRange:{v8, count}];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (id)recentDecisionsForCount:(unint64_t)count
{
  decisions = [(ASVHitTestHistory *)self decisions];
  v6 = [decisions count];

  if (!v6)
  {
    goto LABEL_6;
  }

  decisions2 = [(ASVHitTestHistory *)self decisions];
  v8 = [decisions2 count] - 1;

  if (v8 < count)
  {
    count = v8;
  }

  if (count)
  {
    decisions3 = [(ASVHitTestHistory *)self decisions];
    v10 = [decisions3 count] - count;

    decisions4 = [(ASVHitTestHistory *)self decisions];
    v12 = [decisions4 subarrayWithRange:{v10, count}];
  }

  else
  {
LABEL_6:
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (void)clearHistory
{
  results = [(ASVHitTestHistory *)self results];
  [results removeAllObjects];

  decisions = [(ASVHitTestHistory *)self decisions];
  [decisions removeAllObjects];
}

- (void)reinitializeDecisionHistoryWithDecision:(id)decision
{
  decisionCopy = decision;
  decisions = [(ASVHitTestHistory *)self decisions];
  [decisions removeAllObjects];

  decisions2 = [(ASVHitTestHistory *)self decisions];
  [decisions2 addObject:decisionCopy];
}

@end