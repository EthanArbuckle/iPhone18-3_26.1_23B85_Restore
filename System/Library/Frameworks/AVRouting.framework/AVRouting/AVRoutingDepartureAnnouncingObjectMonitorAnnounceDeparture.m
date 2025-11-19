@interface AVRoutingDepartureAnnouncingObjectMonitorAnnounceDeparture
@end

@implementation AVRoutingDepartureAnnouncingObjectMonitorAnnounceDeparture

uint64_t ___AVRoutingDepartureAnnouncingObjectMonitorAnnounceDeparture_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [v1 monitoredObjectHasDeparted];
  }

  return result;
}

@end