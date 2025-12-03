@interface CADisplayLink
+ (CADisplayLink)displayLinkWithTarget:(id)target selector:(SEL)sel;
+ (double)earlyWakeupOffset;
+ (double)expectedWakeupBeforeCommitDeadline:(double)deadline;
+ (void)dispatchDeferredDisplayLink:(unint64_t)link;
+ (void)dispatchDeferredDisplayLinks;
+ (void)dispatchDeferredDisplayLinksWithDisplayId:(unsigned int)id;
+ (void)notifyDisplayChange:(unint64_t)change;
+ (void)setEarlyWakeupOffset:(double)offset;
+ (void)setWillFireHandler:(id)handler;
- (BOOL)active;
- (CADisplay)display;
- (CAFrameRateRange)preferredFrameRateRange;
- (CFTimeInterval)duration;
- (NSInteger)frameInterval;
- (double)heartbeatRate;
- (double)localEarlyWakeupOffset;
- (double)maximumRefreshRate;
- (id)_initWithDisplayLinkItem:(void *)item;
- (int64_t)actualFramesPerSecond;
- (int64_t)minimumFrameDuration;
- (void)addToRunLoop:(NSRunLoop *)runloop forMode:(NSRunLoopMode)mode;
- (void)dealloc;
- (void)removeFromRunLoop:(NSRunLoop *)runloop forMode:(NSRunLoopMode)mode;
- (void)setFrameInterval:(NSInteger)frameInterval;
- (void)setHighFrameRateReason:(unsigned int)reason;
- (void)setLocalEarlyWakeupOffset:(double)offset;
- (void)setPreferredFrameRateRange:(CAFrameRateRange)preferredFrameRateRange;
- (void)setPreferredFramesPerSecond:(NSInteger)preferredFramesPerSecond;
- (void)setPriority:(int64_t)priority;
- (void)setUserInfo:(id)info;
@end

@implementation CADisplayLink

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    (*(*impl + 8))(impl, a2);
  }

  v4.receiver = self;
  v4.super_class = CADisplayLink;
  [(CADisplayLink *)&v4 dealloc];
}

+ (void)dispatchDeferredDisplayLinks
{
  if (_CFRunLoopCurrentIsMain())
  {

    CA::Display::DisplayLink::dispatch_deferred_display_links(0xFFFFFFFFLL);
  }

  else
  {

    CA_ABORT_ON_NON_MAIN_THREAD_DEFERRED_DISPLAY_LINK_ACTION();
  }
}

- (CAFrameRateRange)preferredFrameRateRange
{
  impl = self->_impl;
  v3 = impl[19];
  v4 = impl[20];
  v5 = impl[21];
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

+ (double)earlyWakeupOffset
{
  if (_CFRunLoopCurrentIsMain())
  {
    v2 = CA::Display::DisplayLink::_early_wakeup_offset;

    return CATimeWithHostTime(v2);
  }

  else
  {
    CA_ABORT_ON_NON_MAIN_THREAD_DEFERRED_DISPLAY_LINK_ACTION();
    return 0.0;
  }
}

- (double)maximumRefreshRate
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 2);
  v3 = *&impl[4]._os_unfair_lock_opaque;
  v4 = 64;
  if ((*(v3 + 705) & 8) == 0)
  {
    v4 = 32;
  }

  v5 = *(v3 + v4 + 464);
  os_unfair_lock_unlock(impl + 2);
  return v5;
}

- (CADisplay)display
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 2);
  v3 = *(*&impl[4]._os_unfair_lock_opaque + 80);
  os_unfair_lock_unlock(impl + 2);
  return v3;
}

- (CFTimeInterval)duration
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 2);
  v3 = *(impl + 2);
  if ((*(v3 + 705) & 1) == 0)
  {
LABEL_23:
    v11 = CATimeWithHostTime(*(impl + 38));
    goto LABEL_24;
  }

  if (CADeviceIsPhone::once != -1)
  {
    dispatch_once(&CADeviceIsPhone::once, &__block_literal_global_227);
  }

  v4 = CADeviceIsPhone::phone;
  if ((*(v3 + 705) & 2) == 0 || (!CADeviceIsPhone::phone || (dyld_program_sdk_at_least() & 1) == 0) && !dyld_program_sdk_at_least())
  {
    if ((dyld_program_sdk_at_least() & 1) == 0 && ((v4 & 1) != 0 || !dyld_program_sdk_at_least()))
    {
      v13 = CATimeWithHostTime(*(impl + 38));
      v11 = v13 + v13;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v5 = CA::Display::DisplayTimingsControl::server_frame_interval((v3 + 464), 0);
  if (!v5)
  {
    if (*(v3 + 705))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (v6 <= *(v3 + 520))
    {
      v6 = *(v3 + 520);
    }

    if (v6 <= *(v3 + 552))
    {
      v6 = *(v3 + 552);
    }

    if (v6 <= *(v3 + 524))
    {
      v5 = *(v3 + 524);
    }

    else
    {
      v5 = v6;
    }
  }

  v7 = v5;
  v8 = 64;
  if ((*(v3 + 705) & 8) == 0)
  {
    v8 = 48;
  }

  v9 = CAHostTimeWithTime(*(v3 + 464 + v8));
  v10 = CA::Display::DisplayTimingsControl::granularity((v3 + 464), v9);
  v11 = CATimeWithHostTime(v10) * v7;
LABEL_24:
  os_unfair_lock_unlock(impl + 2);
  return v11;
}

- (void)setPreferredFrameRateRange:(CAFrameRateRange)preferredFrameRateRange
{
  preferred = preferredFrameRateRange.preferred;
  maximum = preferredFrameRateRange.maximum;
  minimum = preferredFrameRateRange.minimum;
  if (!CAFrameRateRangeIsValid(preferredFrameRateRange.minimum, preferredFrameRateRange.maximum, preferredFrameRateRange.preferred))
  {
    preferred = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid range (minimum: %.2f maximum: %.2f preferred: %.2f)", minimum, maximum, preferred];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:preferred userInfo:0]);
  }

  impl = self->_impl;
  v8 = minimum;
  v9 = maximum;
  v10 = preferred;

  CA::Display::DisplayLinkItem::set_preferred_fps_range(impl, *&v8, 1, 1);
}

- (void)setPreferredFramesPerSecond:(NSInteger)preferredFramesPerSecond
{
  v3.minimum = preferredFramesPerSecond;
  v3.maximum = preferredFramesPerSecond;
  v3.preferred = preferredFramesPerSecond;
  CA::Display::DisplayLinkItem::set_preferred_fps_range(self->_impl, v3, 1, 0);
}

- (NSInteger)frameInterval
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 2);
  v4 = *&impl[4]._os_unfair_lock_opaque;
  v5 = *(v4 + 705);
  v6 = *(v4 + 520);
  v7 = *(v4 + 552);
  os_unfair_lock_unlock(impl + 2);
  v8 = *(self->_impl + 14);
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    if (v5)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    if (v9 <= v6)
    {
      v9 = v6;
    }

    if (v9 <= v7)
    {
      v9 = v7;
    }

    v10 = v8 / v9;
    if (v10 <= 1)
    {
      return 1;
    }

    else
    {
      return v10;
    }
  }

  return v8;
}

- (void)setFrameInterval:(NSInteger)frameInterval
{
  impl = self->_impl;
  if (frameInterval <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = frameInterval;
  }

  v5.minimum = (60.0 / v4);
  v5.maximum = v5.minimum;
  v5.preferred = v5.minimum;
  CA::Display::DisplayLinkItem::set_preferred_fps_range(impl, v5, 1, 0);
}

- (void)setPriority:(int64_t)priority
{
  v12 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (*(impl + 6) != priority)
  {
    *(impl + 6) = priority;
    if (*(impl + 33))
    {
      pthread_mutex_lock((impl + 136));
      v4 = *(impl + 33);
      v10 = impl;
      pthread_mutex_lock((v4 + 56));
      v5 = *(v4 + 120);
      v6 = *(v4 + 128);
      v7 = v5;
      if (v5 != v6)
      {
        while (*v7 != impl)
        {
          if (++v7 == v6)
          {
            v7 = *(v4 + 128);
            break;
          }
        }
      }

      if (v6 == v7)
      {
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v9 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "CADisplayLink: reload_item, item does not exist", buf, 2u);
        }
      }

      else
      {
        v8 = v6 - (v7 + 1);
        if (v6 != v7 + 1)
        {
          memmove(v7, v7 + 1, v6 - (v7 + 1));
          v5 = *(v4 + 120);
        }

        *(v4 + 128) = v7 + v8;
        if (v5 != v7 + v8)
        {
          while (*(*v5 + 48) >= *(impl + 6))
          {
            v5 += 8;
            if (v5 == v7 + v8)
            {
              v5 = v7 + v8;
              break;
            }
          }
        }

        std::vector<CA::Display::DisplayLinkItem *>::insert(v4 + 120, v5, &v10);
      }

      pthread_mutex_unlock((v4 + 56));

      pthread_mutex_unlock((impl + 136));
    }
  }
}

- (void)removeFromRunLoop:(NSRunLoop *)runloop forMode:(NSRunLoopMode)mode
{
  impl = self->_impl;
  getCFRunLoop = [(NSRunLoop *)runloop getCFRunLoop];

  CA::Display::DisplayLinkItem::unschedule(impl, getCFRunLoop, mode);
}

- (void)addToRunLoop:(NSRunLoop *)runloop forMode:(NSRunLoopMode)mode
{
  impl = self->_impl;
  getCFRunLoop = [(NSRunLoop *)runloop getCFRunLoop];

  CA::Display::DisplayLinkItem::schedule(impl, getCFRunLoop, mode);
}

- (id)_initWithDisplayLinkItem:(void *)item
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CADisplayLink;
  v4 = [(CADisplayLink *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_impl = item;
    *(item + 32) = v4;
  }

  else if (item)
  {
    (*(*item + 8))(item);
  }

  return v5;
}

+ (CADisplayLink)displayLinkWithTarget:(id)target selector:(SEL)sel
{
  result = +[CADisplay mainDisplay];
  if (result)
  {

    return [self displayLinkWithDisplay:result target:target selector:sel];
  }

  return result;
}

- (void)setLocalEarlyWakeupOffset:(double)offset
{
  if (!_CFRunLoopCurrentIsMain() && CA::Render::Server::_thread)
  {
    impl = self->_impl;
    offsetCopy = 0.0;
    if (offset >= 0.0)
    {
      offsetCopy = offset;
    }

    impl[39] = CAHostTimeWithTime(offsetCopy);
  }
}

- (double)localEarlyWakeupOffset
{
  if (_CFRunLoopCurrentIsMain() || !CA::Render::Server::_thread)
  {
    return 0.0;
  }

  v3 = *(self->_impl + 39);

  return CATimeWithHostTime(v3);
}

- (void)setHighFrameRateReason:(unsigned int)reason
{
  v4 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  CA::Display::DisplayLinkItem::set_reasons(self->_impl, &reasonCopy, 1u);
}

- (BOOL)active
{
  impl = self->_impl;
  if (impl[33])
  {
    return (*(impl + 324) >> 3) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (int64_t)actualFramesPerSecond
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 2);
  v3 = *&impl[4]._os_unfair_lock_opaque;
  v4 = 64;
  if ((*(v3 + 705) & 8) == 0)
  {
    v4 = 48;
  }

  v5 = *(v3 + v4 + 464);
  os_unfair_lock_unlock(impl + 2);
  v6 = 1.0 / v5;
  return (roundf(v6) / impl[14]._os_unfair_lock_opaque);
}

- (int64_t)minimumFrameDuration
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 2);
  v3 = *&impl[4]._os_unfair_lock_opaque;
  if (*(v3 + 705))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4 <= *(v3 + 520))
  {
    v4 = *(v3 + 520);
  }

  v5 = *(v3 + 552);
  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  os_unfair_lock_unlock(impl + 2);
  return v6;
}

- (double)heartbeatRate
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 2);
  v3 = *&impl[4]._os_unfair_lock_opaque;
  v4 = 64;
  if ((*(v3 + 705) & 8) == 0)
  {
    v4 = 48;
  }

  v5 = *(v3 + v4 + 464);
  os_unfair_lock_unlock(impl + 2);
  return v5;
}

- (void)setUserInfo:(id)info
{
  impl = self->_impl;
  pthread_mutex_lock((impl + 136));
  while (1)
  {
    v5 = *(impl + 31);
    if (!v5 || v5 == pthread_self())
    {
      break;
    }

    pthread_cond_wait((impl + 200), (impl + 136));
  }

  v6 = *(impl + 5);
  if (v6 != info)
  {
    if (v6)
    {
      CFRelease(v6);
    }

    *(impl + 5) = info;
    if (info)
    {
      CFRetain(info);
    }
  }

  pthread_mutex_unlock((impl + 136));
}

+ (void)setEarlyWakeupOffset:(double)offset
{
  if (_CFRunLoopCurrentIsMain())
  {
    offsetCopy = 0.0;
    if (offset >= 0.0)
    {
      offsetCopy = offset;
    }

    v5 = CAHostTimeWithTime(offsetCopy);
    v6 = CA::Display::MaxEarlyWakeupOffset(v5);
    if (v6 >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    CA::Display::DisplayLink::_early_wakeup_offset = v7;
  }

  else
  {

    CA_ABORT_ON_NON_MAIN_THREAD_DEFERRED_DISPLAY_LINK_ACTION();
  }
}

+ (void)dispatchDeferredDisplayLinksWithDisplayId:(unsigned int)id
{
  v3 = *&id;
  if (_CFRunLoopCurrentIsMain())
  {

    CA::Display::DisplayLink::dispatch_deferred_display_links(v3);
  }

  else
  {

    CA_ABORT_ON_NON_MAIN_THREAD_DEFERRED_DISPLAY_LINK_ACTION();
  }
}

+ (void)setWillFireHandler:(id)handler
{
  if (_CFRunLoopCurrentIsMain())
  {
    _Block_release(CA::Display::DisplayLink::_will_fire_handler_external);
    CA::Display::DisplayLink::_will_fire_handler_external = _Block_copy(handler);
  }

  else
  {

    CA_ABORT_ON_NON_MAIN_THREAD_DEFERRED_DISPLAY_LINK_ACTION();
  }
}

+ (double)expectedWakeupBeforeCommitDeadline:(double)deadline
{
  v3 = CAHostTimeWithTime(deadline);
  v4 = +[CADisplay mainDisplay];
  if (v4)
  {
    [v4 refreshRate];
    v6 = CAHostTimeWithTime(v5);
    Main = CFRunLoopGetMain();
    v8 = CFRunLoopCopyCurrentMode(Main);
    os_unfair_lock_lock(&CA::Display::DisplayLink::_next_wakeup_info_lock);
    if (CA::Display::DisplayLink::_next_wakeup_info_count)
    {
      v9 = 0;
      v21 = 0;
      v10 = v3 - v6 + (v6 >> 3);
      if (Main)
      {
        v11 = v8 == 0;
      }

      else
      {
        v11 = 1;
      }

      v12 = !v11;
      v13 = *MEMORY[0x1E695E8D0];
      do
      {
        v14 = &CA::Display::DisplayLink::_next_wakeup_info_list + 5 * v9;
        v15 = v14[1];
        if (v15 < v10)
        {
          v16 = v14[3];
          if (v16)
          {
            if (v16 == 1)
            {
              v17 = (v14 + 4);
              if (v12)
              {
LABEL_16:
                while (*v17)
                {
                  if (CFEqual(*v17, v8) || CFEqual(*v17, v13) && _CFRunLoop01())
                  {
                    v18 = v21;
                    if (v21 <= v15)
                    {
                      v18 = v15;
                    }

                    v21 = v18;
                    break;
                  }

                  ++v17;
                  if (!--v16)
                  {
                    break;
                  }
                }
              }
            }

            else
            {
              v17 = v14[4];
              if (v12)
              {
                goto LABEL_16;
              }
            }
          }
        }

        ++v9;
      }

      while (v9 < CA::Display::DisplayLink::_next_wakeup_info_count);
      CFRelease(v8);
      v19 = v21;
    }

    else
    {
      v19 = 0;
    }

    os_unfair_lock_unlock(&CA::Display::DisplayLink::_next_wakeup_info_lock);
  }

  else
  {
    v19 = 0;
  }

  return CATimeWithHostTime(v19);
}

+ (void)notifyDisplayChange:(unint64_t)change
{
  os_unfair_lock_lock(&CA::Display::MetalLinkItem::_list_lock);
  for (i = CA::Display::MetalLinkItem::_list; i != qword_1EA84E840; ++i)
  {
    v5 = *i;
    if (*i == change)
    {
      if (v5)
      {
        v6 = *(v5 + 256);
        os_unfair_lock_unlock(&CA::Display::MetalLinkItem::_list_lock);
        pthread_mutex_lock((v5 + 136));
        v7 = *(*(*(*(v5 + 328) + 48) + 16) + 48);
        if (v7)
        {
          v8 = *(*(v7 + 24) + 24);
        }

        else
        {
          v8 = 0;
        }

        v9 = *(CADisplayLookupFromDisplayId(v8) + 1);
        os_unfair_lock_lock((v5 + 8));
        CA::Display::DisplayLinkItem::hot_swap_display(v5, v9);
        os_unfair_lock_unlock((v5 + 8));
        CA::Display::DisplayLinkItem::set_preferred_fps_range_locked(v5, *(v5 + 76), 0);
        v10 = *(v5 + 264);
        if (v10)
        {
          v11 = *(v10 + 16);
          pthread_mutex_unlock((v5 + 136));
          if (v11)
          {
            CA::Display::DisplayLinkItem::update_link(v5, v11);
          }
        }

        else
        {
          pthread_mutex_unlock((v5 + 136));
        }

        v12 = *(v5 + 256);

        return;
      }

      break;
    }
  }

  os_unfair_lock_unlock(&CA::Display::MetalLinkItem::_list_lock);
}

+ (void)dispatchDeferredDisplayLink:(unint64_t)link
{
  v10[5] = *MEMORY[0x1E69E9840];
  kdebug_trace();
  os_unfair_lock_lock(&CA::Display::DisplayLink::_list_lock);
  v4 = CA::Display::DisplayLink::_list;
  if (CA::Display::DisplayLink::_list)
  {
    while (1)
    {
      v5 = *(v4 + 232);
      if (v5)
      {
        if ((*(v5 + 16))(v5, link))
        {
          break;
        }
      }

      v4 = *(v4 + 48);
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    if (*(v4 + 200) == 1)
    {
      *(v4 + 200) = 0;
      while (1)
      {
        v6 = *(v4 + 40);
        if (!v6)
        {
          break;
        }

        v7 = *(v4 + 40);
        atomic_compare_exchange_strong((v4 + 40), &v7, v6 + 1);
        if (v7 == v6)
        {
          os_unfair_lock_unlock(&CA::Display::DisplayLink::_list_lock);
          v8 = *(v4 + 32);
          if (!v8)
          {
            *(v4 + 32) = v8;
          }

          v9 = *(v4 + 16);
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = ___ZN2CA7Display11DisplayLink30dispatch_deferred_display_linkEy_block_invoke;
          v10[3] = &__block_descriptor_40_e5_v8__0l;
          v10[4] = v4;
          CFRunLoopPerformBlock(v9, v8, v10);
          CFRunLoopWakeUp(*(v4 + 16));
          return;
        }
      }
    }
  }

LABEL_13:

  os_unfair_lock_unlock(&CA::Display::DisplayLink::_list_lock);
}

@end