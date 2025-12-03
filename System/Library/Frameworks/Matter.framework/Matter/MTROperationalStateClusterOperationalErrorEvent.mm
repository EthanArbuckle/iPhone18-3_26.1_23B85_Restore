@interface MTROperationalStateClusterOperationalErrorEvent
- (MTROperationalStateClusterOperationalErrorEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTROperationalStateClusterOperationalErrorEvent

- (MTROperationalStateClusterOperationalErrorEvent)init
{
  v6.receiver = self;
  v6.super_class = MTROperationalStateClusterOperationalErrorEvent;
  v2 = [(MTROperationalStateClusterOperationalErrorEvent *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    errorState = v2->_errorState;
    v2->_errorState = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROperationalStateClusterOperationalErrorEvent);
  errorState = [(MTROperationalStateClusterOperationalErrorEvent *)self errorState];
  [(MTROperationalStateClusterOperationalErrorEvent *)v4 setErrorState:errorState];

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