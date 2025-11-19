@interface NWConcrete_nw_interpose
- (void)dealloc;
@end

@implementation NWConcrete_nw_interpose

- (void)dealloc
{
  v3 = *(self + 7);
  *(self + 7) = 0;

  v4 = *(self + 5);
  if (v4)
  {
    nw_path_evaluator_cancel(v4);
    v5 = *(self + 5);
    *(self + 5) = 0;
  }

  v6.receiver = self;
  v6.super_class = NWConcrete_nw_interpose;
  [(NWConcrete_nw_interpose *)&v6 dealloc];
}

@end