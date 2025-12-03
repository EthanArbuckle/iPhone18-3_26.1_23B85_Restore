@interface NWAccumulatedValue
- (id)description;
- (id)snapshot;
@end

@implementation NWAccumulatedValue

- (id)snapshot
{
  v3 = objc_alloc_init(NWAccumulatedValue);
  keyPath = [(NWAccumulatedValue *)self keyPath];
  [(NWAccumulatedValue *)v3 setKeyPath:keyPath];

  accumulation = [(NWAccumulatedValue *)self accumulation];
  snapshot = [accumulation snapshot];
  [(NWAccumulatedValue *)v3 setAccumulation:snapshot];

  return v3;
}

- (id)description
{
  accumulation = [(NWAccumulatedValue *)self accumulation];
  v3 = [accumulation description];

  return v3;
}

@end