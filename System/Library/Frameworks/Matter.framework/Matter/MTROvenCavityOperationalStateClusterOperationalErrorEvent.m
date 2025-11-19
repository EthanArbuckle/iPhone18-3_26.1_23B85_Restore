@interface MTROvenCavityOperationalStateClusterOperationalErrorEvent
- (MTROvenCavityOperationalStateClusterOperationalErrorEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROvenCavityOperationalStateClusterOperationalErrorEvent

- (MTROvenCavityOperationalStateClusterOperationalErrorEvent)init
{
  v6.receiver = self;
  v6.super_class = MTROvenCavityOperationalStateClusterOperationalErrorEvent;
  v2 = [(MTROvenCavityOperationalStateClusterOperationalErrorEvent *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    errorState = v2->_errorState;
    v2->_errorState = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROvenCavityOperationalStateClusterOperationalErrorEvent);
  v5 = [(MTROvenCavityOperationalStateClusterOperationalErrorEvent *)self errorState];
  [(MTROvenCavityOperationalStateClusterOperationalErrorEvent *)v4 setErrorState:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: errorState:%@ >", v5, self->_errorState];;

  return v6;
}

@end