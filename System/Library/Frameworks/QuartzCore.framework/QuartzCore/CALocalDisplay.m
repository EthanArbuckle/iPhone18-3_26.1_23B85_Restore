@interface CALocalDisplay
+ (id)displayWithDisplayId:(unsigned int)a3 name:(id)a4 deviceName:(id)a5 update:(id)a6 timings:(id)a7;
+ (void)notifyDisplayAdded:(unsigned int)a3;
+ (void)setDisplayLookupBlock:(id)a3;
@end

@implementation CALocalDisplay

+ (void)notifyDisplayAdded:(unsigned int)a3
{
  os_unfair_lock_lock(&CA::Display::MetalLinkItem::_list_lock);
  v4 = CA::Display::MetalLinkItem::_list;
  v5 = qword_1EA84E840;
  if (CA::Display::MetalLinkItem::_list != qword_1EA84E840)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *v4;
      pthread_mutex_lock((*v4 + 136));
      if (*(*(v8 + 16) + 104) != a3)
      {
        goto LABEL_9;
      }

      if (!v6)
      {
        v6 = CADisplayLookupFromDisplayId(a3);
        v7 = *(v6 + 1);
      }

      os_unfair_lock_lock((v8 + 8));
      CA::Display::DisplayLinkItem::hot_swap_display(v8, v7);
      os_unfair_lock_unlock((v8 + 8));
      CA::Display::DisplayLinkItem::set_preferred_fps_range_locked(v8, *(v8 + 76), 0);
      v9 = *(v8 + 264);
      if (v9)
      {
        v10 = *(v9 + 16);
        pthread_mutex_unlock((v8 + 136));
        if (v10)
        {
          CA::Display::DisplayLinkItem::update_link(v8, v10);
        }
      }

      else
      {
LABEL_9:
        pthread_mutex_unlock((v8 + 136));
      }

      v4 += 8;
    }

    while (v4 != v5);
  }

  os_unfair_lock_unlock(&CA::Display::MetalLinkItem::_list_lock);
}

+ (void)setDisplayLookupBlock:(id)a3
{
  if (local_display_enabled(void)::once != -1)
  {
    dispatch_once(&local_display_enabled(void)::once, &__block_literal_global_998);
  }

  if (local_display_enabled(void)::enabled == 1 && _local_display_lookup_block != a3)
  {
    _Block_release(_local_display_lookup_block);
    _local_display_lookup_block = _Block_copy(a3);
  }
}

+ (id)displayWithDisplayId:(unsigned int)a3 name:(id)a4 deviceName:(id)a5 update:(id)a6 timings:(id)a7
{
  if (local_display_enabled(void)::once == -1)
  {
    if (!a6)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&local_display_enabled(void)::once, &__block_literal_global_998);
    if (!a6)
    {
      return 0;
    }
  }

  if (local_display_enabled(void)::enabled)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v11 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x308uLL, 0xDEEC3011uLL);
    if (v11)
    {
      CA::Display::Display::Display(v11, a4, a5, a3);
    }
  }

  return 0;
}

@end