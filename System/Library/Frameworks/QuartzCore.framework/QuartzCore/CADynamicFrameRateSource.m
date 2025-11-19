@interface CADynamicFrameRateSource
- (BOOL)shiftFramePhaseBy:(double)a3;
- (CADynamicFrameRateSource)initWithDisplay:(id)a3;
- (CAFrameRateRange)preferredFrameRateRange;
- (double)commitDeadline;
- (double)commitDeadlineAfterTimestamp:(double)a3;
- (void)dealloc;
- (void)setHighFrameRateReasons:(const unsigned int *)a3 count:(unint64_t)a4;
- (void)setPaused:(BOOL)a3;
- (void)setPreferredFrameRateRange:(CAFrameRateRange)a3;
@end

@implementation CADynamicFrameRateSource

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    if (*(impl + 88))
    {
      CA::Display::DisplayTimingsControl::unregister_frame_interval_range(impl->var1, impl->var3);
      CA::Display::DisplayTimingsControl::register_frame_interval_reasons(impl->var1, impl, 0, 0);
    }

    os_unfair_lock_lock(&CA::DynamicFrameRateSource::_list_lock);
    v4 = CA::DynamicFrameRateSource::_list;
    if (CA::DynamicFrameRateSource::_list)
    {
      if (CA::DynamicFrameRateSource::_list == impl)
      {
        v6 = &CA::DynamicFrameRateSource::_list;
LABEL_10:
        *v6 = impl->var11;
      }

      else
      {
        while (1)
        {
          v5 = v4;
          v4 = *(v4 + 96);
          if (!v4)
          {
            break;
          }

          if (v4 == impl)
          {
            v6 = (v5 + 96);
            goto LABEL_10;
          }
        }
      }
    }

    os_unfair_lock_unlock(&CA::DynamicFrameRateSource::_list_lock);
    MEMORY[0x1865EA9A0](impl, 0x10A0C4090658EE0);
  }

  v7.receiver = self;
  v7.super_class = CADynamicFrameRateSource;
  [(CADynamicFrameRateSource *)&v7 dealloc];
}

- (void)setHighFrameRateReasons:(const unsigned int *)a3 count:(unint64_t)a4
{
  __dst[2] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (a4 >= 4)
  {
    v6 = 4;
  }

  else
  {
    v6 = a4;
  }

  v7 = (4 * v6);
  __dst[0] = 0;
  __dst[1] = 0;
  memcpy(__dst, a3, v7);
  if (memcmp(impl->var8, __dst, v7))
  {
    memmove(impl->var8, a3, v7);
    if (*(impl + 88))
    {
      CA::Display::DisplayTimingsControl::register_frame_interval_reasons(impl->var1, impl, impl->var8, 4u);
    }

    minimum = impl->var2.minimum;
    maximum = impl->var2.maximum;
    preferred = impl->var2.preferred;

    CA::DynamicFrameRateSource::set_preferred_fps_range(impl, *&minimum, 1);
  }
}

- (BOOL)shiftFramePhaseBy:(double)a3
{
  v24 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v4 = CAHostTimeWithTime(a3);
  if (*(impl + 104))
  {
    return 0;
  }

  var1 = impl->var1;
  if ((*(var1 + 241) & 2) == 0)
  {
    return 0;
  }

  v6 = v4;
  os_unfair_lock_lock(var1 + 23);
  if (0xAAAAAAAAAAAAAAABLL * ((*(var1 + 15) - *(var1 + 14)) >> 2) >= 2)
  {
    goto LABEL_33;
  }

  ServerPort = CARenderServerGetServerPort(0);
  v8 = *(var1 + 2);
  v9 = getpid();
  v20 = *MEMORY[0x1E69E99E0];
  v21 = v8;
  v22 = v9;
  v23 = v6;
  reply_port = mig_get_reply_port();
  *&v19.msgh_bits = 5395;
  v19.msgh_remote_port = ServerPort;
  v19.msgh_local_port = reply_port;
  *&v19.msgh_voucher_port = 0x9D5600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v19);
    msgh_local_port = v19.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&v19, 3, 0x30u, 0x30u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v19.msgh_local_port);
    goto LABEL_29;
  }

  if (v12)
  {
    mig_dealloc_reply_port(v19.msgh_local_port);
    goto LABEL_28;
  }

  if (v19.msgh_id == 71)
  {
    v13 = -308;
LABEL_27:
    mach_msg_destroy(&v19);
LABEL_28:
    if (!v13)
    {
LABEL_33:
      os_unfair_lock_unlock(var1 + 23);
      return 0;
    }

LABEL_29:
    if (x_log_get_frame_rate(void)::once != -1)
    {
      dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
    }

    v15 = x_log_get_frame_rate(void)::log;
    if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19.msgh_bits) = 0;
      _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, "CAFrameRateClient: request_frame_phase_shift failed", &v19, 2u);
    }

    goto LABEL_33;
  }

  if (v19.msgh_id != 40378)
  {
    v13 = -301;
    goto LABEL_27;
  }

  if ((v19.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  if (v19.msgh_size != 40)
  {
    if (v19.msgh_size == 36)
    {
      if (v19.msgh_remote_port)
      {
        v14 = 1;
      }

      else
      {
        v14 = v21 == 0;
      }

      if (v14)
      {
        v13 = -300;
      }

      else
      {
        v13 = v21;
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v19.msgh_remote_port)
  {
LABEL_26:
    v13 = -300;
    goto LABEL_27;
  }

  v13 = v21;
  if (v21)
  {
    goto LABEL_27;
  }

  v17 = v22;
  os_unfair_lock_unlock(var1 + 23);
  if (!v17)
  {
    return 0;
  }

  impl->var4 = 0;
  var6 = impl->var6;
  if (var6)
  {
    impl->var6 = var6 + v6;
  }

  return 1;
}

- (double)commitDeadlineAfterTimestamp:(double)a3
{
  impl = self->_impl;
  v4 = CAHostTimeWithTime(a3);
  v5 = CA::DynamicFrameRateSource::commit_deadline(impl);
  if (v5 <= v4)
  {
    v5 = CA::DynamicFrameRateSource::_commit_deadline_at_timestamp(impl, v4);
  }

  return CATimeWithHostTime(v5);
}

- (double)commitDeadline
{
  v2 = CA::DynamicFrameRateSource::commit_deadline(self->_impl);

  return CATimeWithHostTime(v2);
}

- (void)setPaused:(BOOL)a3
{
  impl = self->_impl;
  v4 = *(impl + 104);
  if ((v4 & 1) != a3)
  {
    *(impl + 104) = v4 & 0xFE | a3;
    if (a3)
    {
      if (*(impl + 88))
      {
        CA::Display::DisplayTimingsControl::unregister_frame_interval_range(impl->var1, impl->var3);
        CA::Display::DisplayTimingsControl::register_frame_interval_reasons(impl->var1, impl, 0, 0);
        *(impl + 88) &= ~1u;
      }
    }

    else
    {
      minimum = impl->var2.minimum;
      maximum = impl->var2.maximum;
      preferred = impl->var2.preferred;

      CA::DynamicFrameRateSource::set_preferred_fps_range(impl, *&minimum, 1);
    }
  }
}

- (CAFrameRateRange)preferredFrameRateRange
{
  impl = self->_impl;
  minimum = impl->var2.minimum;
  maximum = impl->var2.maximum;
  preferred = impl->var2.preferred;
  result.preferred = preferred;
  result.maximum = maximum;
  result.minimum = minimum;
  return result;
}

- (void)setPreferredFrameRateRange:(CAFrameRateRange)a3
{
  preferred = a3.preferred;
  maximum = a3.maximum;
  minimum = a3.minimum;
  if (!CAFrameRateRangeIsValid(a3.minimum, a3.maximum, a3.preferred))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid range (minimum: %.2f maximum: %.2f preferred: %.2f)", minimum, maximum, preferred];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v11 userInfo:0]);
  }

  impl = self->_impl;
  v8 = minimum;
  v9 = maximum;
  v10 = preferred;

  CA::DynamicFrameRateSource::set_preferred_fps_range(impl, *&v8, 1);
}

- (CADynamicFrameRateSource)initWithDisplay:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = CADynamicFrameRateSource;
  v3 = [(CADynamicFrameRateSource *)&v5 init];
  if (v3)
  {
    operator new();
  }

  return v3;
}

@end