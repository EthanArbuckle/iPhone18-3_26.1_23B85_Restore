@interface NWConcrete_nw_masque_listener_pair
- (void)dealloc;
@end

@implementation NWConcrete_nw_masque_listener_pair

- (void)dealloc
{
  v3 = *(self + 3);
  if (v3)
  {
    nw_connection_group_cancel(v3);
    v4 = *(self + 3);
    *(self + 3) = 0;
  }

  v5 = *(self + 6);
  if (v5)
  {
    nw_connection_cancel(v5);
    v6 = *(self + 6);
    *(self + 6) = 0;
  }

  v7 = *(self + 7);
  if (v7)
  {
    _nw_array_apply(v7, &__block_literal_global_117);
    v8 = *(self + 7);
    *(self + 7) = 0;
  }

  v9.receiver = self;
  v9.super_class = NWConcrete_nw_masque_listener_pair;
  [(NWConcrete_nw_masque_listener_pair *)&v9 dealloc];
}

@end