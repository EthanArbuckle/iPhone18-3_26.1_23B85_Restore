@interface CAFrameRateRangeGroup
- (CAFrameIntervalRange)arbitratedIntervalRange;
- (CAFrameRateRange)arbitratedRange;
- (CAFrameRateRangeGroup)initWithDisplay:(id)display;
- (CAFrameRateRangeGroup)initWithHeartbeatRate:(double)rate minimumFrameDuration:(unsigned __int8)duration supportsVRR:(BOOL)r compatQuantaMode:(BOOL)mode serverCompatQuantaMode:(BOOL)quantaMode;
- (void)addFrameRateRange:(CAFrameRateRange)range;
- (void)addReason:(unsigned int)reason;
- (void)dealloc;
- (void)removeFrameRateRange:(CAFrameRateRange)range;
- (void)updateFrameRateRange:(CAFrameRateRange)range toRange:(CAFrameRateRange)toRange;
@end

@implementation CAFrameRateRangeGroup

- (CAFrameIntervalRange)arbitratedIntervalRange
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  v3 = *&impl[8]._os_unfair_lock_opaque;
  os_unfair_lock_opaque = impl[10]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(impl);
  v5 = v3;
  v6 = os_unfair_lock_opaque;
  result.var0 = v5;
  result.var1 = HIDWORD(v5);
  result.var2 = v6;
  return result;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    if (impl[1])
    {
      os_unfair_lock_lock(&CA::FrameRateRangeGroup::_list_lock);
      v4 = CA::FrameRateRangeGroup::_list;
      if (CA::FrameRateRangeGroup::_list)
      {
        if (CA::FrameRateRangeGroup::_list == impl)
        {
          v6 = &CA::FrameRateRangeGroup::_list;
LABEL_9:
          *v6 = impl[3];
        }

        else
        {
          while (1)
          {
            v5 = v4;
            v4 = *(v4 + 24);
            if (!v4)
            {
              break;
            }

            if (v4 == impl)
            {
              v6 = (v5 + 24);
              goto LABEL_9;
            }
          }
        }
      }

      os_unfair_lock_unlock(&CA::FrameRateRangeGroup::_list_lock);
    }

    v7 = impl[12];
    if (v7)
    {
      impl[13] = v7;
      operator delete(v7);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table((impl + 7));
    MEMORY[0x1865EA9A0](impl, 0x10A0C40DF5EECE8);
  }

  v8.receiver = self;
  v8.super_class = CAFrameRateRangeGroup;
  [(CAFrameRateRangeGroup *)&v8 dealloc];
}

- (void)addReason:(unsigned int)reason
{
  if (reason)
  {
    current_reason_count = self->_current_reason_count;
    if (current_reason_count)
    {
      if (current_reason_count != 8)
      {
        reasons = self->_reasons;
        v5 = self->_current_reason_count;
        while (1)
        {
          v6 = *reasons++;
          if (v6 == reason)
          {
            break;
          }

          if (!--v5)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {
LABEL_7:
      self->_current_reason_count = current_reason_count + 1;
      self->_reasons[current_reason_count] = reason;
    }
  }
}

- (CAFrameRateRange)arbitratedRange
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  v3 = *&impl[11]._os_unfair_lock_opaque;
  v4 = *&impl[12]._os_unfair_lock_opaque;
  v5 = *&impl[13]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(impl);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  result.preferred = v8;
  result.maximum = v7;
  result.minimum = v6;
  return result;
}

- (void)updateFrameRateRange:(CAFrameRateRange)range toRange:(CAFrameRateRange)toRange
{
  preferred = toRange.preferred;
  maximum = toRange.maximum;
  minimum = toRange.minimum;
  v7 = range.preferred;
  v8 = range.maximum;
  v9 = range.minimum;
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  v12.minimum = v9;
  v12.maximum = v8;
  v12.preferred = v7;
  CA::FrameRateRangeGroup::remove(impl, v12);
  v13.minimum = minimum;
  v13.maximum = maximum;
  v13.preferred = preferred;
  CA::FrameRateRangeGroup::add(impl, v13);
  CA::FrameRateRangeGroup::arbitrate_ranges(impl);

  os_unfair_lock_unlock(impl);
}

- (void)removeFrameRateRange:(CAFrameRateRange)range
{
  preferred = range.preferred;
  maximum = range.maximum;
  minimum = range.minimum;
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  v8.minimum = minimum;
  v8.maximum = maximum;
  v8.preferred = preferred;
  CA::FrameRateRangeGroup::remove(impl, v8);
  CA::FrameRateRangeGroup::arbitrate_ranges(impl);

  os_unfair_lock_unlock(impl);
}

- (void)addFrameRateRange:(CAFrameRateRange)range
{
  preferred = range.preferred;
  maximum = range.maximum;
  minimum = range.minimum;
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  v8.minimum = minimum;
  v8.maximum = maximum;
  v8.preferred = preferred;
  CA::FrameRateRangeGroup::add(impl, v8);
  CA::FrameRateRangeGroup::arbitrate_ranges(impl);

  os_unfair_lock_unlock(impl);
}

- (CAFrameRateRangeGroup)initWithHeartbeatRate:(double)rate minimumFrameDuration:(unsigned __int8)duration supportsVRR:(BOOL)r compatQuantaMode:(BOOL)mode serverCompatQuantaMode:(BOOL)quantaMode
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CAFrameRateRangeGroup;
  if ([(CAFrameRateRangeGroup *)&v8 init])
  {
    operator new();
  }

  return 0;
}

- (CAFrameRateRangeGroup)initWithDisplay:(id)display
{
  v6 = *MEMORY[0x1E69E9840];
  if (!display)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = CAFrameRateRangeGroup;
  v3 = [(CAFrameRateRangeGroup *)&v5 init];
  if (v3)
  {
    operator new();
  }

  return v3;
}

@end