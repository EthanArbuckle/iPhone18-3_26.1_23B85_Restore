@interface AXSDResultsCollector
- (AXSDResultsCollector)init;
- (void)receivedObservation:(id)a3 forDetector:(id)a4;
@end

@implementation AXSDResultsCollector

- (AXSDResultsCollector)init
{
  v7.receiver = self;
  v7.super_class = AXSDResultsCollector;
  v2 = [(AXSDResultsCollector *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    results = v2->_results;
    v2->_results = v3;

    v2->_didFinish = 0;
    error = v2->_error;
    v2->_error = 0;
  }

  return v2;
}

- (void)receivedObservation:(id)a3 forDetector:(id)a4
{
  v5 = a3;
  v6 = [[AXSDDetectionResult alloc] initWithResult:v5];

  [(NSMutableArray *)self->_results addObject:v6];
}

@end