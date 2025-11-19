@interface NWConcrete_nw_masque_connection_pair
- (void)dealloc;
@end

@implementation NWConcrete_nw_masque_connection_pair

- (void)dealloc
{
  nw_masque_connection_pair_cancel_waiting_timer(self);
  v3 = *(self + 3);
  if (v3)
  {
    nw_connection_cancel(v3);
    v4 = *(self + 3);
    *(self + 3) = 0;
  }

  v5 = *(self + 4);
  if (v5)
  {
    nw_connection_cancel(v5);
    v6 = *(self + 4);
    *(self + 4) = 0;
  }

  v7 = *(self + 5);
  if (v7)
  {
    _nw_array_apply(v7, &__block_literal_global_30082);
    v8 = *(self + 5);
    *(self + 5) = 0;
  }

  v9 = *(self + 6);
  if (v9)
  {
    nw_connection_cancel(v9);
    v10 = *(self + 6);
    *(self + 6) = 0;
  }

  v11.receiver = self;
  v11.super_class = NWConcrete_nw_masque_connection_pair;
  [(NWConcrete_nw_masque_connection_pair *)&v11 dealloc];
}

@end