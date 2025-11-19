@interface AMSEngagementObserverInfo
- (AMSEngagementObserverInfo)initWithQueue:(id)a3;
- (NSSet)placements;
- (NSSet)serviceTypes;
- (void)addPlacements:(id)a3;
- (void)addServiceType:(id)a3;
- (void)removePlacement:(id)a3;
- (void)removeServiceType:(id)a3;
@end

@implementation AMSEngagementObserverInfo

- (AMSEngagementObserverInfo)initWithQueue:(id)a3
{
  v5 = a3;
  v6 = [(AMSEngagementObserverInfo *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, a3);
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
  v3 = [(AMSEngagementObserverInfo *)self underlyingPlacements];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AMSEngagementObserverInfo *)self underlyingPlacements];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSSet)serviceTypes
{
  v3 = [(AMSEngagementObserverInfo *)self underlyingServiceTypes];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AMSEngagementObserverInfo *)self underlyingServiceTypes];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addPlacements:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementObserverInfo *)self underlyingPlacements];
  [v5 unionSet:v4];
}

- (void)removePlacement:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementObserverInfo *)self underlyingPlacements];
  [v5 removeObject:v4];
}

- (void)addServiceType:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementObserverInfo *)self underlyingServiceTypes];
  [v5 addObject:v4];
}

- (void)removeServiceType:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementObserverInfo *)self underlyingPlacements];
  [v5 removeObject:v4];
}

@end