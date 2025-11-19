@interface NWConcrete_nw_interface_use_observer
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation NWConcrete_nw_interface_use_observer

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 24) &= ~1u;
  *(self + 4) = 0;
  *(self + 40) &= ~1u;
  return self;
}

- (void)dealloc
{
  v3 = *(self + 1);
  if (v3)
  {
    free(v3);
    *(self + 1) = 0;
  }

  v4 = *(self + 2);
  if ((*(self + 24) & 1) != 0 && v4)
  {
    *(self + 2) = 0;

    v4 = *(self + 2);
  }

  *(self + 2) = 0;

  v5 = *(self + 2);
  *(self + 2) = 0;

  *(self + 24) |= 1u;
  v6 = *(self + 4);
  if ((*(self + 40) & 1) != 0 && v6)
  {
    *(self + 4) = 0;

    v6 = *(self + 4);
  }

  *(self + 4) = 0;

  v7 = *(self + 4);
  *(self + 4) = 0;

  *(self + 40) |= 1u;
  *(self + 12) = -1;
  v8.receiver = self;
  v8.super_class = NWConcrete_nw_interface_use_observer;
  [(NWConcrete_nw_interface_use_observer *)&v8 dealloc];
}

@end