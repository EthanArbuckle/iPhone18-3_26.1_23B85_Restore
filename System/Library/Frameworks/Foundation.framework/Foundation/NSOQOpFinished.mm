@interface NSOQOpFinished
@end

@implementation NSOQOpFinished

void ____NSOQOpFinished_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 40);
  v3 = *(v2 + 16);
  LODWORD(v2) = atomic_load((v2 + 237));
  if (v2 == 244)
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = v4;
    if (!v4)
    {
      v5 = *(a1 + 32);
    }

    *(v5 + 16) = v3;
    if (v3)
    {
      v6 = (v3 + 8);
    }

    else
    {
      v6 = (*(a1 + 32) + 24);
    }

    *v6 = v4;
    if (*(a1 + 48) >= 0x88u)
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 172);
      v9 = __OFSUB__(v8, 1);
      v10 = v8 - 1;
      if (v10 < 0 == v9)
      {
        *(v7 + 172) = v10;
      }
    }

    *(*(a1 + 40) + 8) = 0;
    *(*(a1 + 40) + 16) = 0;
    v11 = *(a1 + 40);
    os_unfair_lock_lock((v11 + 232));
    v12 = *(v11 + 32);
    *(v11 + 32) = 0;
    v14 = *(v11 + 104);
    v13 = *(v11 + 112);
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
    os_unfair_lock_unlock((v11 + 232));

    if (v13)
    {
      _Block_release(v13);
    }
  }

  if ((*(a1 + 49) & 1) == 0)
  {
    atomic_fetch_add_explicit((*(a1 + 32) + 144), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  }

  v15 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v15);
}

@end