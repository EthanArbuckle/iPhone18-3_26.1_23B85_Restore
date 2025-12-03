@interface AMSEngagementObserverInfo
- (AMSEngagementObserverInfo)initWithQueue:(id)queue;
- (NSSet)placements;
- (NSSet)serviceTypes;
- (void)addPlacements:(id)placements;
- (void)addServiceType:(id)type;
- (void)removePlacement:(id)placement;
- (void)removeServiceType:(id)type;
@end

@implementation AMSEngagementObserverInfo

- (AMSEngagementObserverInfo)initWithQueue:(id)queue
{
  queueCopy = queue;
  v6 = [(AMSEngagementObserverInfo *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
    v8 = [MEMORY[0x1E695DFA8] set];
    underlyingPlacements = v7->_underlyingPlacements;
    v7->_underlyingPlacements = v8;

    v10 = [MEMORY[0x1E695DFA8] set];
    underlyingServiceTypes = v7->_underlyingServiceTypes;
    v7->_underlyingServiceTypes = v10;
  }

  return v7;
}

- (NSSet)placements
{
  underlyingPlacements = [(AMSEngagementObserverInfo *)self underlyingPlacements];
  v4 = [underlyingPlacements count];

  if (v4)
  {
    underlyingPlacements2 = [(AMSEngagementObserverInfo *)self underlyingPlacements];
  }

  else
  {
    underlyingPlacements2 = 0;
  }

  return underlyingPlacements2;
}

- (NSSet)serviceTypes
{
  underlyingServiceTypes = [(AMSEngagementObserverInfo *)self underlyingServiceTypes];
  v4 = [underlyingServiceTypes count];

  if (v4)
  {
    underlyingServiceTypes2 = [(AMSEngagementObserverInfo *)self underlyingServiceTypes];
  }

  else
  {
    underlyingServiceTypes2 = 0;
  }

  return underlyingServiceTypes2;
}

- (void)addPlacements:(id)placements
{
  placementsCopy = placements;
  underlyingPlacements = [(AMSEngagementObserverInfo *)self underlyingPlacements];
  [underlyingPlacements unionSet:placementsCopy];
}

- (void)removePlacement:(id)placement
{
  placementCopy = placement;
  underlyingPlacements = [(AMSEngagementObserverInfo *)self underlyingPlacements];
  [underlyingPlacements removeObject:placementCopy];
}

- (void)addServiceType:(id)type
{
  typeCopy = type;
  underlyingServiceTypes = [(AMSEngagementObserverInfo *)self underlyingServiceTypes];
  [underlyingServiceTypes addObject:typeCopy];
}

- (void)removeServiceType:(id)type
{
  typeCopy = type;
  underlyingPlacements = [(AMSEngagementObserverInfo *)self underlyingPlacements];
  [underlyingPlacements removeObject:typeCopy];
}

@end