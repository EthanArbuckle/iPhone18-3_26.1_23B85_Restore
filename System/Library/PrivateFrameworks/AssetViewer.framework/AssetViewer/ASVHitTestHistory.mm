@interface ASVHitTestHistory
- (ASVHitTestHistory)initWithResultCapacity:(unint64_t)a3 decisionCapacity:(unint64_t)a4;
- (id)recentDecisionsForCount:(unint64_t)a3;
- (id)recentResultsForCount:(unint64_t)a3;
- (void)addDecision:(id)a3;
- (void)addResult:(id)a3;
- (void)clearHistory;
- (void)reinitializeDecisionHistoryWithDecision:(id)a3;
@end

@implementation ASVHitTestHistory

- (ASVHitTestHistory)initWithResultCapacity:(unint64_t)a3 decisionCapacity:(unint64_t)a4
{
  v13.receiver = self;
  v13.super_class = ASVHitTestHistory;
  v6 = [(ASVHitTestHistory *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_resultCapacity = a3;
    v6->_decisionCapacity = a4;
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
    results = v7->_results;
    v7->_results = v8;

    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a4];
    decisions = v7->_decisions;
    v7->_decisions = v10;
  }

  return v7;
}

- (void)addResult:(id)a3
{
  v4 = a3;
  v5 = [(ASVHitTestHistory *)self results];
  [v5 addObject:v4];

  v6 = [(ASVHitTestHistory *)self results];
  v7 = [v6 count];
  v8 = [(ASVHitTestHistory *)self resultCapacity];

  if (v7 > v8)
  {
    v9 = [(ASVHitTestHistory *)self results];
    [v9 removeObjectAtIndex:0];
  }
}

- (void)addDecision:(id)a3
{
  v4 = a3;
  v5 = [(ASVHitTestHistory *)self decisions];
  [v5 addObject:v4];

  v6 = [(ASVHitTestHistory *)self decisions];
  v7 = [v6 count];
  v8 = [(ASVHitTestHistory *)self decisionCapacity];

  if (v7 > v8)
  {
    v9 = [(ASVHitTestHistory *)self decisions];
    [v9 removeObjectAtIndex:0];
  }
}

- (id)recentResultsForCount:(unint64_t)a3
{
  v5 = [(ASVHitTestHistory *)self results];
  v6 = [v5 count];

  if (v6 < a3)
  {
    a3 = v6;
  }

  if (a3)
  {
    v7 = [(ASVHitTestHistory *)self results];
    v8 = [v7 count] - a3;

    v9 = [(ASVHitTestHistory *)self results];
    v10 = [v9 subarrayWithRange:{v8, a3}];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (id)recentDecisionsForCount:(unint64_t)a3
{
  v5 = [(ASVHitTestHistory *)self decisions];
  v6 = [v5 count];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [(ASVHitTestHistory *)self decisions];
  v8 = [v7 count] - 1;

  if (v8 < a3)
  {
    a3 = v8;
  }

  if (a3)
  {
    v9 = [(ASVHitTestHistory *)self decisions];
    v10 = [v9 count] - a3;

    v11 = [(ASVHitTestHistory *)self decisions];
    v12 = [v11 subarrayWithRange:{v10, a3}];
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
  v3 = [(ASVHitTestHistory *)self results];
  [v3 removeAllObjects];

  v4 = [(ASVHitTestHistory *)self decisions];
  [v4 removeAllObjects];
}

- (void)reinitializeDecisionHistoryWithDecision:(id)a3
{
  v4 = a3;
  v5 = [(ASVHitTestHistory *)self decisions];
  [v5 removeAllObjects];

  v6 = [(ASVHitTestHistory *)self decisions];
  [v6 addObject:v4];
}

@end