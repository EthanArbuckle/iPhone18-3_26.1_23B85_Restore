@interface NWAccumulatedValue
- (id)description;
- (id)snapshot;
@end

@implementation NWAccumulatedValue

- (id)snapshot
{
  v3 = objc_alloc_init(NWAccumulatedValue);
  v4 = [(NWAccumulatedValue *)self keyPath];
  [(NWAccumulatedValue *)v3 setKeyPath:v4];

  v5 = [(NWAccumulatedValue *)self accumulation];
  v6 = [v5 snapshot];
  [(NWAccumulatedValue *)v3 setAccumulation:v6];

  return v3;
}

- (id)description
{
  v2 = [(NWAccumulatedValue *)self accumulation];
  v3 = [v2 description];

  return v3;
}

@end