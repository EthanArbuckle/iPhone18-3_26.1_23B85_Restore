@interface AXSDResultsCollector
- (AXSDResultsCollector)init;
- (void)receivedObservation:(id)observation forDetector:(id)detector;
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

- (void)receivedObservation:(id)observation forDetector:(id)detector
{
  observationCopy = observation;
  v6 = [[AXSDDetectionResult alloc] initWithResult:observationCopy];

  [(NSMutableArray *)self->_results addObject:v6];
}

@end