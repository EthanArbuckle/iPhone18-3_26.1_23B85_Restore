@interface CFPrefsObservationConnectionQueue
@end

@implementation CFPrefsObservationConnectionQueue

dispatch_queue_t ___CFPrefsObservationConnectionQueue_block_invoke()
{
  result = dispatch_queue_create("Observation Connection Event Handling", 0);
  _CFPrefsObservationConnectionQueue_observationQueue = result;
  return result;
}

@end