pthread_rwlock_t **ashp::lock_guard<ashp::rw_mutex_writer<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_writer<ashp::rw_mutex>>,0>::~lock_guard(pthread_rwlock_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    pthread_rwlock_unlock(v2);
    *a1 = 0;
  }

  return a1;
}

pthread_rwlock_t **ashp::device_transport::create_memory_mapping(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = (a2 + 8);
  pthread_rwlock_rdlock((a2 + 8));
  if (*(a2 + 208) == 1)
  {
    *a1 = 0;
  }

  else
  {
    (*(*a2 + 8))(a2, a3);
  }

  return ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(&v7);
}

void sub_23EC8B90C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(va);
  _Unwind_Resume(a1);
}

pthread_rwlock_t **ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(pthread_rwlock_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    pthread_rwlock_unlock(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t ashp::device_transport::is_memory_mapping_active(uint64_t a1, uint64_t a2)
{
  v6 = (a1 + 8);
  pthread_rwlock_rdlock((a1 + 8));
  v4 = (*(*a1 + 16))(a1, a2);
  ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(&v6);
  return v4;
}

void sub_23EC8B9CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(va);
  _Unwind_Resume(a1);
}

uint64_t ashp::device_transport::mem_read32(ashp::device_transport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((a3 & 3) != 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("device_transport.cpp", 0x53, "mem_read32", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: unaligned device memory access", "device_transport.cpp", 0x53, "mem_read32", v9);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v10 = &CONTAINING_RECORD(this, pthread_rwlock_t, __opaque)->__opaque[8];
    pthread_rwlock_rdlock((this + 8));
    if (*(this + 208))
    {
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v7 = (*(*this + 56))(this, a2, a3);
    }

    ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(&v10);
    return v7;
  }

  return result;
}

void sub_23EC8BAC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(va);
  _Unwind_Resume(a1);
}

pthread_rwlock_t **ashp::device_transport::mem_write16(ashp::device_transport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a3)
  {
    ashp::detail::control_flow::log_guard_else_failure("device_transport.cpp", 0x6F, "mem_write16", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: unaligned device memory access", "device_transport.cpp", 0x6F, "mem_write16", v9);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v10 = &CONTAINING_RECORD(this, pthread_rwlock_t, __opaque)->__opaque[8];
    pthread_rwlock_rdlock((this + 8));
    if ((*(this + 208) & 1) == 0)
    {
      (*(*this + 80))(this, a2, a3, a4);
    }

    return ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(&v10);
  }

  return result;
}

void sub_23EC8BBB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(va);
  _Unwind_Resume(a1);
}

pthread_rwlock_t **ashp::device_transport::mem_write32(ashp::device_transport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((a3 & 3) != 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("device_transport.cpp", 0x78, "mem_write32", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: unaligned device memory access", "device_transport.cpp", 0x78, "mem_write32", v9);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v10 = &CONTAINING_RECORD(this, pthread_rwlock_t, __opaque)->__opaque[8];
    pthread_rwlock_rdlock((this + 8));
    if ((*(this + 208) & 1) == 0)
    {
      (*(*this + 88))(this, a2, a3, a4);
    }

    return ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(&v10);
  }

  return result;
}

void sub_23EC8BCA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(va);
  _Unwind_Resume(a1);
}

uint64_t ashp::ring_index_pair<unsigned short>::ring_index_pair(uint64_t result, int a2, uint64_t a3, const char *a4)
{
  *result = a2;
  *(result + 2) = 0;
  if (!a2)
  {
    ashp::detail::control_flow::log_guard_else_failure("ring_index_pair.hpp", 0x25, "ring_index_pair", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ring size cannot be zero", "ring_index_pair.hpp", 0x25, "ring_index_pair", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

unsigned __int16 *ashp::ring_index_pair<unsigned short>::advance_head_index(unsigned __int16 *result, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = v5 - result[2];
  if ((v6 & 0xFFFF0000) != 0)
  {
    v7 = *result;
  }

  else
  {
    v7 = 0;
  }

  if (v4 == (v7 + v6 + 1))
  {
    ashp::detail::control_flow::log_guard_else_failure("ring_index_pair.hpp", 0x9B, "advance_head_index", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: invalid head index advance operation", "ring_index_pair.hpp", 0x9B, "advance_head_index", v11);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v8 = v5 + 1;
    v9 = v8;
    if (v8 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = *result;
    }

    result[1] = (v9 - v10) % v4;
  }

  return result;
}

uint64_t ashp::acipc::tr_ring::get_entry_at_index(ashp::acipc::tr_ring *this, unsigned int a2, uint64_t a3, const char *a4)
{
  if (*this)
  {
    if (*(this + 4) > a2)
    {
      return *this + *(this + 6) * a2;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("tr_ring.cpp", 0x5F, "get_entry_at_index", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: _memory is NULL", "tr_ring.cpp", 0x5F, "get_entry_at_index", v5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("tr_ring.cpp", 0x60, "get_entry_at_index", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: wrong index", "tr_ring.cpp", 0x60, "get_entry_at_index", v6);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::tr_ring::compute_required_memory(ashp::acipc::tr_ring *this, unsigned int a2, unsigned int a3, const char *a4)
{
  if (!a2)
  {
    if (this)
    {
      *this = 0;
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v5 = __CFADD__(a4, a3 + 16);
  if (a3 >= 0xFFFFFFF0 || v5)
  {
    v7 = 86;
  }

  else
  {
    v6 = (a4 + a3 + 16) * a2;
    if ((v6 & 0xFFFFFFFF00000000) == 0)
    {
      if (this)
      {
        *this = v6;
LABEL_12:
        *(this + 4) = 1;
        return;
      }

      goto LABEL_17;
    }

    v7 = 88;
  }

  ashp::detail::control_flow::log_guard_else_failure("tr_ring.cpp", v7, "compute_required_memory", a4);
  if (this)
  {
    *(this + 4) = 0;
    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t ashp::acipc::cr_ring::copy_descriptor(ashp::acipc::cr_ring *this, unsigned int a2, _OWORD *a3, const void **a4, const void **a5)
{
  v5 = *(this + 4);
  if (v5 <= a2)
  {
    goto LABEL_12;
  }

  v8 = *(this + 6);
  if (((a2 - v8) & 0xFFFF0000) != 0)
  {
    v9 = *(this + 4);
  }

  else
  {
    v9 = 0;
  }

  v10 = (v9 + a2 - v8);
  v11 = *(this + 5);
  v12 = v11 - v8;
  if ((v12 & 0xFFFF0000) == 0)
  {
    LOWORD(v5) = 0;
  }

  if (v10 > (v5 + v12) || v11 == a2)
  {
LABEL_12:
    ashp::detail::control_flow::log_guard_else_failure("cr_ring.cpp", 0x1F, "copy_descriptor", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: requested CD element is inactive", "cr_ring.cpp", 0x1F, "copy_descriptor", v21);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *a4 = 0;
    *a5 = 0;
    *a3 = *(ashp::acipc::cr_ring::get_entry_at_index(this, a2, a3, a4) + *(this + 4));
    *a4 = ashp::acipc::cr_ring::get_entry_at_index(this, a2, v16, v17);
    result = ashp::acipc::cr_ring::get_entry_at_index(this, a2, v18, v19);
    *a5 = (result + *(this + 4) + 16);
  }

  return result;
}

uint64_t ashp::acipc::cr_ring::get_entry_at_index(ashp::acipc::cr_ring *this, unsigned int a2, uint64_t a3, const char *a4)
{
  if (*this)
  {
    if (*(this + 4) > a2)
    {
      return *this + *(this + 6) * a2;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("cr_ring.cpp", 0x3F, "get_entry_at_index", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: _memory is NULL", "cr_ring.cpp", 0x3F, "get_entry_at_index", v5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("cr_ring.cpp", 0x40, "get_entry_at_index", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: wrong index", "cr_ring.cpp", 0x40, "get_entry_at_index", v6);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::cr_ring::compute_required_memory(ashp::acipc::cr_ring *this, unsigned int a2, unsigned int a3, const char *a4)
{
  if (!a2)
  {
    if (this)
    {
      *this = 0;
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v5 = __CFADD__(a4, a3 + 16);
  if (a3 >= 0xFFFFFFF0 || v5)
  {
    v7 = 54;
  }

  else
  {
    v6 = (a4 + a3 + 16) * a2;
    if ((v6 & 0xFFFFFFFF00000000) == 0)
    {
      if (this)
      {
        *this = v6;
LABEL_12:
        *(this + 4) = 1;
        return;
      }

      goto LABEL_17;
    }

    v7 = 56;
  }

  ashp::detail::control_flow::log_guard_else_failure("cr_ring.cpp", v7, "compute_required_memory", a4);
  if (this)
  {
    *(this + 4) = 0;
    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t ashp::acipc::tr_controller::reap(ashp::acipc::tr_controller *this)
{
  v44 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 36);
  os_unfair_lock_lock(this + 4);
  v2 = ashp::acipc::ring_controller::compute_state((this + 648));
  log_level = ashp::detail::logging::get_log_level(v2);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v4 = *(this + 104);
      v5 = *(this + 632);
      *buf = 136447490;
      v33 = "tr_controller.cpp";
      v34 = 1024;
      v35 = 708;
      v36 = 2082;
      v37 = "reap";
      v38 = 1024;
      v39 = v4;
      v40 = 1024;
      v41 = v2;
      v42 = 1024;
      v43 = v5;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) state=%u, activated=%u", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) state=%u, activated=%u", "tr_controller.cpp", 708, "reap", *(this + 104), v2, *(this + 632));
  }

  v6 = ashp::acipc::ring_controller::compute_state((this + 648));
  if ((v6 - 4) >= 3)
  {
    v7 = v6 - 2;
    v8 = (this + 16);
    if (v7 <= 1)
    {
      os_unfair_lock_unlock(v8);
      v9 = *(this + 3);
      ashp::optional<ashp::acipc::ring_manager,void>::value(&v9[1066], v10, v11, v12);
      ashp::acipc::ring_manager::close_tr(v9 + 1066, this, v13, v14, v15);
      goto LABEL_12;
    }

    os_unfair_lock_unlock(v8);
    if (*(this + 632) != 1)
    {
LABEL_25:
      os_unfair_lock_unlock(this + 36);
      ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::release(this + 1, v29, v30, v31);
      result = 1;
      goto LABEL_13;
    }

    v21 = *(this + 3);
    ashp::optional<ashp::acipc::ring_manager,void>::value(&v21[1066], v18, v19, v20);
    os_unfair_lock_lock(v21 + 1066);
    if (*(this + 115) == this)
    {
      ashp::acipc::ring_manager::check_tr_settlement_tracking_for_tr(v21 + 1066, (this + 920));
      os_unfair_lock_assert_owner(v21 + 1066);
      if (!*(this + 238) && *(this + 956) != 1)
      {
        *(this + 115) = 0;
        v26 = ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::remove(&v21[1190], this + 115, v23, v24);
        v27 = ashp::detail::logging::get_log_level(v26);
        if (v27 >= 4)
        {
          v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v27)
          {
            v28 = *(this + 508);
            *buf = 136446978;
            v33 = "ring_manager.cpp";
            v34 = 1024;
            v35 = 276;
            v36 = 2082;
            v37 = "remove_tr";
            v38 = 1024;
            v39 = v28;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] removed trid %hu", buf, 0x22u);
          }
        }

        if (!ashp::detail::logging::get_log_level(v27))
        {
          goto LABEL_24;
        }

        if (airship_platform_get_global_logger::once == -1)
        {
LABEL_23:
          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] removed trid %hu", "ring_manager.cpp", 276, "remove_tr", *(this + 508));
LABEL_24:
          os_unfair_lock_unlock(v21 + 1066);
          goto LABEL_25;
        }

LABEL_28:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        goto LABEL_23;
      }
    }

    else
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x10F, "remove_tr", v22);
      _os_crash();
      __break(1u);
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x111, "remove_tr", v25);
    _os_crash();
    __break(1u);
    goto LABEL_28;
  }

  os_unfair_lock_unlock(this + 4);
LABEL_12:
  os_unfair_lock_unlock(this + 36);
  result = 0;
LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23EC8C5A4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));
  os_unfair_lock_unlock(v1 + 36);
  _Unwind_Resume(a1);
}

uint64_t ashp::optional<ashp::acipc::ring_manager,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 608) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

atomic_ullong *ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::release(atomic_ullong *result, uint64_t a2, uint64_t a3, const char *a4)
{
  add = atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL);
  if (add == 1)
  {
    v6 = **(result - 1);

    return v6();
  }

  else if (!add)
  {
    ashp::detail::control_flow::log_guard_else_failure("refcount_mixin.hpp", 0x61, "release", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: refcount_mixin overreleased", "refcount_mixin.hpp", 0x61, "release", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::acipc::tr_controller::handle_terminate(ashp::acipc::tr_controller *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::acipc::ring_controller::terminate_monitors((this + 648), a2, a3, a4);
  os_unfair_lock_unlock(this + 4);
  ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::retain(this + 1, v5, v6, v7);
  ashp::reaper_target::attempt_reap((this + 96));

  os_unfair_lock_lock(this + 4);
}

atomic_ullong *ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::retain(atomic_ullong *result, uint64_t a2, uint64_t a3, const char *a4)
{
  add_explicit = atomic_fetch_add_explicit(result, 1uLL, memory_order_relaxed);
  if (add_explicit == -1)
  {
    ashp::detail::control_flow::log_guard_else_failure("refcount_mixin.hpp", 0x55, "retain", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: refcount_mixin retain overflow", "refcount_mixin.hpp", 0x55, "retain", v5);
    _os_crash();
    __break(1u);
    goto LABEL_5;
  }

  if (!add_explicit)
  {
LABEL_5:
    ashp::detail::control_flow::log_guard_else_failure("refcount_mixin.hpp", 0x56, "retain", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: refcount_mixin retained after release", "refcount_mixin.hpp", 0x56, "retain", v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::acipc::tr_controller::destroy(ashp::acipc::tr_controller *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (this)
  {
    *this = &unk_28515CBD8;
    v6 = (this + 96);
    *(this + 12) = &unk_28515CC00;
    if (!*(this + 170))
    {
      ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(this + 195);
      if (*(this + 1530) == 1)
      {
        *(this + 1530) = 0;
      }

      ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(this + 186);
      ashp::detail::dynamic_array::storage<ashp::acipc::cr_controller *>::~storage(this + 179, v7, v8, v9, v10);
      ashp::intrusive_list_link<ashp::acipc::doorbell_participant>::~intrusive_list_link(this + 1400, v11, v12, v13);
      ashp::unsafe_storage<ashp::acipc::transfer_queue>::storage::~storage(this + 1168);
      if (*(this + 1160) == 1)
      {
        *(this + 1160) = 0;
      }

      ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(this + 140, v14, v15, v16);
      ashp::buffer_mapping::~buffer_mapping(this + 137, v17, v18, v19);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 1072, v20, v21, v22);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 1048, v23, v24, v25);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 1024, v26, v27, v28);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 124, v29, v30, v31, v32);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 122, v33, v34, v35);
      ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>::~intrusive_list_link(this + 928, v36, v37, v38);
      ashp::monitor_target::~monitor_target((this + 872), v39, v40, v41, v42);
      ashp::monitor_target::~monitor_target((this + 824), v43, v44, v45, v46);
      ashp::monitor_target::~monitor_target((this + 776), v47, v48, v49, v50);
      ashp::acipc::ring_controller::~ring_controller((this + 648), v51, v52, v53, v54);
      if (*(this + 640) == 1)
      {
        *(this + 640) = 0;
      }

      if (*(this + 636) == 1)
      {
        *(this + 636) = 0;
      }

      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 608, v55, v56, v57);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 74, v58, v59, v60);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 568, v61, v62, v63);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 544, v64, v65, v66);
      if (*(this + 530) == 1)
      {
        *(this + 530) = 0;
      }

      ashp::acipc::tr_controller::config::~config((this + 152), v67, v68, v69, v70);
      ashp::reaper_target::~reaper_target(v6, v71, v72, v73, v74);
      ashp::driver_object::~driver_object(this, v75, v76, v77, v78);

LABEL_18:
      JUMPOUT(0x23EF204E0);
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x35, "~tr_controller", a5);
  _os_crash();
  __break(1u);
  goto LABEL_18;
}

uint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(uint64_t *a1)
{
  v2 = *a1;
  result = a1[2];
  if (v2)
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    if (result)
    {
      free(result);
      a1[2] = 0;
    }

    return a1;
  }

  return result;
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::cr_controller *>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

uint64_t ashp::intrusive_list_link<ashp::acipc::doorbell_participant>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(result + 16))
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0x105, "~intrusive_list_link", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: list element destroyed while in list", "intrusive_list.hpp", 0x105, "~intrusive_list_link", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::unsafe_storage<ashp::acipc::transfer_queue>::storage::~storage(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    *(a1 + 176) = 0;
    ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage((a1 + 144));
    ashp::detail::dynamic_array::storage<ashp::acipc::transfer_queue::transfer>::~storage((a1 + 32), v2, v3, v4, v5);
  }

  return a1;
}

atomic_ullong *ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(atomic_ullong *result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*result)
  {
    v4 = result;
    v5 = ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(result, a2, a3, a4);
    result = ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>::release(*v5, v6, v7, v8, v9);
    *v4 = 0;
  }

  return result;
}

void ashp::acipc::detail::ring_manager::tr_context::~tr_context(ashp::acipc::detail::ring_manager::tr_context *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 152, a2, a3, a4);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 128, v5, v6, v7);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 104, v8, v9, v10);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 9, v11, v12, v13, v14);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 7, v15, v16, v17);
  ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>::~intrusive_list_link(this + 8, v18, v19, v20);
}

void ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = 0;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(a1, a2, a3, a4);
  }
}

void ashp::acipc::tr_controller::config::~config(ashp::acipc::tr_controller::config *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 44, a2, a3, a4, a5);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 41, v6, v7, v8, v9);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 38, v10, v11, v12, v13);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(this + 35, v14, v15, v16, v17);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(this + 32, v18, v19, v20, v21);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::~storage(this + 29, v22, v23, v24, v25);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 192, v26, v27, v28);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 152, v29, v30, v31);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 112, v32, v33, v34);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 88, v35, v36, v37);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 4, v38, v39, v40, v41);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 2, v42, v43, v44);
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

void ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1)
  {
    v5 = ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    CFRelease(*v5);
    *a1 = 0;
  }
}

void ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_6:
      *a1 = a2;
      return;
    }

    v7 = 8 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7), a2, a3, a4);
      ++v8;
      v7 += 8;
      if (v8 >= *a1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x112, "reduce_size", a5);
  _os_crash();
  __break(1u);
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::reduce_size(unint64_t *result, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*result < a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x112, "reduce_size", a5);
    result = _os_crash();
  }

  else if (*result <= a2 || result[2])
  {
    *result = a2;
    return result;
  }

  __break(1u);
  return result;
}

void ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_6:
      *a1 = a2;
      return;
    }

    v7 = 24 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(v9 + v7, a2, a3, a4);
      ++v8;
      v7 += 24;
      if (v8 >= *a1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x112, "reduce_size", a5);
  _os_crash();
  __break(1u);
}

void ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = 0;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(a1, a2, a3, a4);
  }
}

void *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(void *result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!*result)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0x77, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0x77, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

{
  if (!*result)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0x7D, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0x7D, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(result + 16))
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0x105, "~intrusive_list_link", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: list element destroyed while in list", "intrusive_list.hpp", 0x105, "~intrusive_list_link", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

atomic_ullong *ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>::release(atomic_ullong *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  add = atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL);
  if (add == 1)
  {
    v6 = result;
    if (result)
    {
      v7 = result[2];
      if (v7)
      {
        ashp::optional<ashp::mock_hidable<ashp::devmem_mapping_manager>,void>::value(&v7[146], a2, a3, a4);
        os_unfair_lock_lock(v7 + 146);
        ashp::detail::intrusive_list::intrusive_list_impl<ashp::devmem_mapping,ashp::intrusive_list_link<ashp::devmem_mapping>,&ashp::devmem_mapping::_manager_link>::remove(&v7[150], v6, v8, v9);
        os_unfair_lock_unlock(v7 + 146);
        ashp::intrusive_list_link<ashp::devmem_mapping>::~intrusive_list_link((v6 + 5), v10, v11, v12);
        ashp::owning_wrapper<ashp::device_transport::memory_mapping *,(decltype(nullptr))0,ashp::polymorphic_deleter<ashp::device_transport::memory_mapping>>::~owning_wrapper(v6 + 4);
        ashp::refcounted_ptr<ashp::memory_descriptor,ashp::default_refcount_policy<ashp::memory_descriptor,void>::policy>::reset(v6 + 6);

LABEL_12:
        JUMPOUT(0x23EF204E0);
      }

LABEL_11:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "device_memory.cpp", 0x1B, "~devmem_mapping", a5);
      _os_crash();
      __break(1u);
      goto LABEL_12;
    }

LABEL_10:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  if (!add)
  {
    ashp::detail::control_flow::log_guard_else_failure("refcount_mixin.hpp", 0x61, "release", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: refcount_mixin overreleased", "refcount_mixin.hpp", 0x61, "release", v13);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

atomic_ullong *ashp::detail::dynamic_array::storage<ashp::acipc::transfer_queue::transfer>::~storage(atomic_ullong *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = result;
  if (*result)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = v5[2];
      if (!v8)
      {
        break;
      }

      v9 = v8 + v6;
      if (*(v8 + v6 + 56) == 1)
      {
        *(v9 + 56) = 0;
      }

      result = ashp::device_accessible_memory::release_obj((v9 + 8), a2, a3, a4, a5);
      *(v8 + v6 + 16) = 0;
      ++v7;
      v6 += 80;
      if (v7 >= *v5)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    *v5 = 0;
    v10 = v5[2];
    if (v10)
    {
      free(v10);
      v5[2] = 0;
    }

    return v5;
  }

  return result;
}

atomic_ullong *ashp::device_accessible_memory::release_obj(ashp::device_accessible_memory *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  result = *(this + 1);
  if (result)
  {
    v7 = *this;
    if (v7)
    {
      if (v7 == 1)
      {
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "device_memory.hpp", 0x107, "release_obj", a5);
        _os_crash();
        __break(1u);
      }

      else if (v7 != 2)
      {
        return result;
      }

      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "device_memory.hpp", 0x10F, "release_obj", a5);
      result = _os_crash();
      __break(1u);
      return result;
    }

    return ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>::release(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t ashp::optional<ashp::mock_hidable<ashp::reaper>,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 112) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::acipc::tr_controller::config::config(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  v7 = *(a1 + 40);
  v8 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;
  *(a2 + 40) = v7;
  *(a2 + 48) = 0;
  v9 = *(a2 + 56);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 56) = v9;
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(a1 + 88, a2 + 88, a3, a4);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(a1 + 112, a2 + 112, v10, v11);
  v12 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v12;
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(a1 + 152, a2 + 152, v13, v14);
  *(a1 + 176) = *(a2 + 176);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(a1 + 192, a2 + 192, v15, v16);
  v17 = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 216) = v17;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 232) = 0;
  v18 = *(a1 + 240);
  v19 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v19;
  *(a2 + 240) = v18;
  *(a2 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 256) = 0;
  v20 = *(a1 + 264);
  v21 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = v21;
  *(a2 + 264) = v20;
  *(a2 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = *(a2 + 280);
  *(a2 + 280) = 0;
  v22 = *(a1 + 288);
  v23 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v23;
  *(a2 + 288) = v22;
  *(a2 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 304) = 0;
  v24 = *(a1 + 312);
  v25 = *(a2 + 320);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = v25;
  *(a2 + 312) = v24;
  *(a2 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = *(a2 + 328);
  *(a2 + 328) = 0;
  v26 = *(a1 + 336);
  v27 = *(a2 + 344);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = v27;
  *(a2 + 336) = v26;
  *(a2 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 352) = 0;
  v28 = *(a1 + 360);
  v29 = *(a2 + 368);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = v29;
  *(a2 + 360) = v28;
  *(a2 + 368) = 0;
  return a1;
}

uint64_t ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (result)
  {
    v5 = result;
    *(result + 16) = 0;
    if (*(a2 + 16) == 1)
    {
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(result, a2, a3, a4);
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(v5, *a2, v6, v7);
      *(v5 + 8) = *(a2 + 8);
      *(v5 + 16) = 1;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  if (result)
  {
    v5 = result;
    *(result + 16) = 0;
    if (*(a2 + 16) == 1)
    {
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(result, a2, a3, a4);
      v6 = *a2;
      *a2 = 0;
      *v5 = v6;
      *(v5 + 8) = *(a2 + 8);
      *(v5 + 16) = 1;
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(a2, v7, v8, v9);
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ashp::acipc::tr_controller::client_overrides::operator=(uint64_t a1, __int16 *a2, uint64_t a3, const char *a4)
{
  if (*(a2 + 2) == 1)
  {
    v6 = *a2;
    *(a2 + 2) = 0;
    v7 = *(a1 + 2);
    *a1 = v6;
    if ((v7 & 1) == 0)
    {
      *(a1 + 2) = 1;
    }
  }

  else if (*(a1 + 2) == 1)
  {
    *(a1 + 2) = 0;
  }

  v8 = *(a2 + 2);
  *(a1 + 12) = *(a2 + 3);
  *(a1 + 4) = v8;
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v35, (a2 + 8), a3, a4);
  ashp::swap(a1 + 16, v35, v9, v10);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v35, v11, v12, v13);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v35, (a2 + 20), v14, v15);
  ashp::swap(a1 + 40, v35, v16, v17);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v35, v18, v19, v20);
  v21 = *(a2 + 8);
  *(a2 + 8) = 0;
  v22 = *(a1 + 64);
  *(a1 + 64) = v21;
  v34 = v22;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v34, v23, v24, v25);
  *(a1 + 72) = *(a2 + 9);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v35, (a2 + 40), v26, v27);
  ashp::swap(a1 + 80, v35, v28, v29);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v35, v30, v31, v32);
  return a1;
}

uint64_t ashp::optional<ashp::acipc::config::acipc_config,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 376) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF7, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF7, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

{
  if ((*(result + 376) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::acipc::tr_controller::validate_client_overrides(uint64_t a1, unsigned __int8 *a2, uint64_t a3, const char *a4)
{
  v110 = *(a1 + 4);
  v112 = *(a1 + 8);
  v86 = *(a1 + 32);
  if (v86 == 1)
  {
    ashp::optional<ashp::acipc::name_and_selector,void>::value(a1 + 16, a2, a3, a4);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v108, *(a1 + 16), v6, v7);
    v109 = *(a1 + 24);
    v115 = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v113, v8, v9, v10);
    v11 = v108;
    v108 = 0;
    v113 = v11;
    v114 = v109;
    v115 = 1;
  }

  else
  {
    v115 = 0;
  }

  v12 = *(a1 + 56);
  if (v12 == 1)
  {
    ashp::optional<ashp::acipc::name_and_selector,void>::value(a1 + 40, a2, a3, a4);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v106, *(a1 + 40), v13, v14);
    v107 = *(a1 + 48);
    v118 = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v116, v15, v16, v17);
    v18 = v106;
    v106 = 0;
    v116 = v18;
    v117 = v107;
    v118 = 1;
  }

  else
  {
    v118 = 0;
  }

  v19 = *(a1 + 96);
  if (v19 == 1)
  {
    ashp::optional<ashp::acipc::name_and_selector,void>::value(a1 + 80, a2, a3, a4);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v104, *(a1 + 80), v20, v21);
    v105 = *(a1 + 88);
    v121 = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v119, v22, v23, v24);
    v25 = v104;
    v104 = 0;
    v119 = v25;
    v120 = v105;
    v121 = 1;
  }

  else
  {
    v121 = 0;
  }

  LOWORD(v93) = *(a2 + 30);
  v26 = *(a2 + 19);
  HIDWORD(v93) = *(a2 + 17);
  v94 = v26;
  v27 = a2[104];
  if (v27 == 1)
  {
    ashp::optional<ashp::acipc::name_and_selector,void>::value((a2 + 88), a2, a3, a4);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v91, *(a2 + 11), v28, v29);
    v92 = *(a2 + 24);
    v97 = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v95, v30, v31, v32);
    v33 = v91;
    v91 = 0;
    v95 = v33;
    v96 = v92;
    v97 = 1;
  }

  else
  {
    v97 = 0;
  }

  v34 = a2[128];
  if (v34 == 1)
  {
    ashp::optional<ashp::acipc::name_and_selector,void>::value((a2 + 112), a2, a3, a4);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v89, *(a2 + 14), v35, v36);
    v90 = *(a2 + 30);
    v100 = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v98, v37, v38, v39);
    v40 = v89;
    v89 = 0;
    v98 = v40;
    v99 = v90;
    v100 = 1;
  }

  else
  {
    v100 = 0;
  }

  v41 = a2[208];
  if (v41 == 1)
  {
    ashp::optional<ashp::acipc::name_and_selector,void>::value((a2 + 192), a2, a3, a4);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v87, *(a2 + 24), v42, v43);
    v88 = *(a2 + 50);
    v103 = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v101, v44, v45, v46);
    v47 = v87;
    v87 = 0;
    v101 = v47;
    v102 = v88;
    v103 = 1;
  }

  else
  {
    v103 = 0;
  }

  is_satisfied_by = ashp::acipc::config::transfer_ring_spec::constraint_config::is_satisfied_by((a2 + 232), &v110, &v93);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v101, v49, v50, v51);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v98, v52, v53, v54);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v95, v55, v56, v57);
  if (v41)
  {
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v87, v58, v59, v60);
  }

  if (v34)
  {
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v89, v58, v59, v60);
  }

  if (v27)
  {
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v91, v58, v59, v60);
  }

  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v119, v58, v59, v60);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v116, v61, v62, v63);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v113, v64, v65, v66);
  if (v19)
  {
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v104, v67, v68, v69);
  }

  if (v12)
  {
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v106, v67, v68, v69);
  }

  if (v86)
  {
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v108, v67, v68, v69);
  }

  if ((is_satisfied_by & 1) == 0)
  {
    v77 = 1060;
    goto LABEL_50;
  }

  if (*(a1 + 32) == 1)
  {
    v70 = *a2;
    ashp::optional<ashp::acipc::name_and_selector,void>::value(a1 + 16, v67, v68, v69);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 16), v71, v72, v73);
    v74 = *(a1 + 16);
    if (v70 == 1)
    {
      if (!v74 || CFStringCompare(v74, @"mcr", 0))
      {
        v77 = 1066;
        goto LABEL_50;
      }

      ashp::optional<ashp::acipc::name_and_selector,void>::value(a1 + 16, v75, v76, v69);
      if (*(a1 + 24))
      {
        v77 = 1067;
LABEL_50:
        ashp::detail::control_flow::log_guard_else_failure("tr_controller.cpp", v77, "validate_client_overrides", v69);
        return 0;
      }
    }

    else if (v74 && CFStringCompare(v74, @"mcr", 0) == kCFCompareEqualTo)
    {
      v77 = 1071;
      goto LABEL_50;
    }
  }

  if (*a2 == 1 && (*(a1 + 56) & 1) != 0)
  {
    v77 = 1076;
    goto LABEL_50;
  }

  if (!*(a1 + 4))
  {
    v77 = 1079;
    goto LABEL_50;
  }

  ashp::acipc::compute_hdrftr_size_fields(&v110, *(a1 + 8), *(a3 + 144), v69);
  if ((v111 & 1) == 0)
  {
    v77 = 1081;
    goto LABEL_50;
  }

  ashp::acipc::tr_ring::compute_required_memory(&v110, *(a1 + 4), *(a2 + 16), *(a1 + 8));
  if (v112 != 1)
  {
    v77 = 1084;
    goto LABEL_50;
  }

  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 56))
    {
      v77 = 1088;
      goto LABEL_50;
    }

    if (a2[137])
    {
      v77 = 1089;
      goto LABEL_50;
    }
  }

  else
  {
    v80 = a2[137];
    if (*(a1 + 56))
    {
      if (a2[137])
      {
        v77 = 1094;
        goto LABEL_50;
      }

      if (a2[136])
      {
        v77 = 1099;
      }

      else
      {
        v77 = 1095;
      }

      if ((a2[136] & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (a2[137] & 1) != 0 && (a2[136])
    {
      v77 = 1101;
      goto LABEL_50;
    }
  }

  if (*a2 == 1)
  {
    v93 = 0;
    v81 = ashp::operator==<int,0>((a1 + 64), &v93, v78, v69);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v93, v82, v83, v84);
    if (!v81)
    {
      v77 = 1106;
      goto LABEL_50;
    }
  }

  return 1;
}

void sub_23EC8DCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void ashp::acipc::tr_controller::client_overrides::~client_overrides(ashp::acipc::tr_controller::client_overrides *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 80, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 8, v5, v6, v7);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 40, v8, v9, v10);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 16, v11, v12, v13);
  if (*(this + 2) == 1)
  {
    *(this + 2) = 0;
  }
}

{
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 80, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 8, v5, v6, v7);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 40, v8, v9, v10);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 16, v11, v12, v13);
  if (*(this + 2) == 1)
  {
    *(this + 2) = 0;
  }
}

uint64_t ashp::optional<ashp::acipc::name_and_selector,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 16) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF7, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF7, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

{
  if ((*(result + 16) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = 0;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(a1, a2, a3, a4);
  }
}

void ashp::acipc::config::transfer_ring_spec::constraint_config::overridable_config::~overridable_config(ashp::acipc::config::transfer_ring_spec::constraint_config::overridable_config *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 64, a2, a3, a4);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 40, v5, v6, v7);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 16, v8, v9, v10);
}

BOOL ashp::operator==<int,0>(void *a1, void *a2, uint64_t a3, const char *a4)
{
  v4 = (*a1 | *a2) == 0;
  if (*a1)
  {
    v5 = *a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v7 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2, v8, v9, v10);
    return v7 == *a2;
  }

  return v4;
}

void ashp::swap(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v6 = *(a2 + 16);
  if (*(a1 + 16) == 1)
  {
    if (*(a2 + 16))
    {
      v7 = *a1;
      *a1 = 0;
      v19 = v7;
      v20 = *(a1 + 8);
      ashp::acipc::name_and_selector::operator=(a1, a2, a3, a4);
      ashp::acipc::name_and_selector::operator=(a2, &v19, v8, v9);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v19, v10, v11, v12);
      return;
    }

    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(a2, a2, a3, a4);
    v18 = *a1;
    *a1 = 0;
    *a2 = v18;
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 16) = 1;
    v17 = a1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return;
    }

    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(a1, a2, a3, a4);
    v16 = *a2;
    *a2 = 0;
    *a1 = v16;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = 1;
    v17 = a2;
  }

  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v17, v13, v14, v15);
}

{
  v6 = *(a2 + 16);
  if (*(a1 + 16) == 1)
  {
    if (*(a2 + 16))
    {
      v7 = *a1;
      *a1 = 0;
      v24 = v7;
      v25 = *(a1 + 8);
      v8 = v25;
      v9 = *a2;
      *a2 = 0;
      v10 = *a1;
      *a1 = v9;
      v26 = v10;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v26, a2, a3, a4);
      *(a1 + 8) = *(a2 + 8);
      v24 = 0;
      v11 = *a2;
      *a2 = v7;
      v26 = v11;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v26, v12, v13, v14);
      *(a2 + 8) = v8;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v24, v15, v16, v17);
      return;
    }

    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(a2, a2, a3, a4);
    v23 = *a1;
    *a1 = 0;
    *a2 = v23;
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 16) = 1;
    v22 = a1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return;
    }

    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(a1, a2, a3, a4);
    v21 = *a2;
    *a2 = 0;
    *a1 = v21;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = 1;
    v22 = a2;
  }

  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v22, v18, v19, v20);
}

{
  v6 = *(a2 + 64);
  if (*(a1 + 64) == 1)
  {
    if (*(a2 + 64))
    {
      v43 = *a1;
      v44 = *(a1 + 8);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v45, a1 + 16, a3, a4);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *(a1 + 48) = 0;
      v46 = v7;
      v47 = v8;
      v48 = *(a1 + 56);
      LODWORD(v7) = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v7;
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v49, a2 + 16, v9, v10);
      ashp::swap(a1 + 16, v49, v11, v12);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v49, v13, v14, v15);
      *(a1 + 40) = *(a2 + 40);
      v16 = *(a2 + 48);
      *(a2 + 48) = 0;
      v17 = *(a1 + 48);
      *(a1 + 48) = v16;
      v49[0] = v17;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v49, v18, v19, v20);
      *(a1 + 56) = *(a2 + 56);
      *a2 = v43;
      *(a2 + 8) = v44;
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v49, v45, v21, v22);
      ashp::swap(a2 + 16, v49, v23, v24);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v49, v25, v26, v27);
      v28 = v47;
      v47 = 0;
      v29 = *(a2 + 48);
      *(a2 + 40) = v46;
      *(a2 + 48) = v28;
      v49[0] = v29;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v49, v30, v31, v32);
      *(a2 + 56) = v48;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v47, v33, v34, v35);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v45, v36, v37, v38);
      return;
    }

    ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::emplace<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>(a2, a1, a3, a4);
    v42 = a1;
  }

  else
  {
    if (!*(a2 + 64))
    {
      return;
    }

    ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::emplace<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>(a1, a2, a3, a4);
    v42 = a2;
  }

  ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(v42, v39, v40, v41);
}

{
  v6 = *(a2 + 16);
  if (*(a1 + 16) == 1)
  {
    if (*(a2 + 16))
    {
      v8 = *a1;
      v7 = *(a1 + 8);
      *a1 = 0;
      v24[0] = v8;
      v24[1] = v7;
      v9 = *a2;
      *a2 = 0;
      v10 = *a1;
      *a1 = v9;
      v25 = v10;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v25, a2, a3, a4);
      *(a1 + 8) = *(a2 + 8);
      v24[0] = 0;
      v11 = *a2;
      *a2 = v8;
      v25 = v11;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v25, v12, v13, v14);
      *(a2 + 8) = v7;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v24, v15, v16, v17);
      return;
    }

    ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(a2, a2, a3, a4);
    v23 = *a1;
    *a1 = 0;
    *a2 = v23;
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 16) = 1;
    v22 = a1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return;
    }

    ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(a1, a2, a3, a4);
    v21 = *a2;
    *a2 = 0;
    *a1 = v21;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = 1;
    v22 = a2;
  }

  ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(v22, v18, v19, v20);
}

uint64_t *ashp::acipc::name_and_selector::operator=(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  v9 = v7;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v9, a2, a3, a4);
  *(a1 + 2) = *(a2 + 8);
  return a1;
}

void ashp::acipc::tr_controller::get_client_overrides(ashp::acipc::tr_controller *this, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 4);
  ashp::acipc::tr_controller::client_overrides::client_overrides(this, &a2[132], v4, v5);

  os_unfair_lock_unlock(a2 + 4);
}

uint64_t ashp::acipc::tr_controller::client_overrides::client_overrides(uint64_t this, const ashp::acipc::tr_controller::client_overrides *a2, uint64_t a3, const char *a4)
{
  if (this)
  {
    v5 = this;
    *(this + 2) = 0;
    if (*(a2 + 2) == 1)
    {
      *this = *a2;
      *(this + 2) = 1;
    }

    v6 = *(a2 + 4);
    *(this + 12) = *(a2 + 3);
    *(this + 4) = v6;
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(this + 16, a2 + 16, a3, a4);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v5 + 40, a2 + 40, v7, v8);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v5 + 64), *(a2 + 8), v9, v10);
    *(v5 + 72) = *(a2 + 9);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v5 + 80, a2 + 80, v11, v12);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return this;
}

void sub_23EC8E2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v4 + 64), a2, a3, a4);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v4 + 40, v6, v7, v8);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v4 + 16, v9, v10, v11);
  if (*(v4 + 2) == 1)
  {
    *(v4 + 2) = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t *ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  if (a2)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    CFRetain(*a1);
  }

  return a1;
}

uint64_t ashp::acipc::tr_controller::set_client_overrides(uint64_t a1, __int16 *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 16));
  if (*(a1 + 632) == 1)
  {
    v12 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x49, "set_client_overrides", v7);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(a1 + 24);
  ashp::optional<ashp::acipc::config::acipc_config,void>::value(v8 + 3824, v4, v5, v6);
  v12 = ashp::acipc::tr_controller::validate_client_overrides(a2, (a1 + 152), v8 + 3824, v9);
  if ((v12 & 1) == 0)
  {
LABEL_12:
    ashp::detail::control_flow::log_guard_else_failure("tr_controller.cpp", 0x4C, "set_client_overrides", v11);
    ashp::acipc::tr_controller::set_client_overrides(ashp::acipc::tr_controller::client_overrides)::$_0::operator()<unsigned short>((a1 + 208));
    goto LABEL_10;
  }

  v13 = ashp::acipc::tr_controller::client_overrides::operator=(a1 + 528, a2, v10, v11);
  log_level = ashp::detail::logging::get_log_level(v13);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v15 = *(a1 + 208);
      *buf = 136446978;
      v19 = "tr_controller.cpp";
      v20 = 1024;
      v21 = 78;
      v22 = 2082;
      v23 = "set_client_overrides";
      v24 = 1024;
      v25 = v15;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) applied client overrides", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) applied client overrides", "tr_controller.cpp", 78, "set_client_overrides", *(a1 + 208));
  }

LABEL_10:
  os_unfair_lock_unlock((a1 + 16));
  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

void ashp::acipc::tr_controller::set_client_overrides(ashp::acipc::tr_controller::client_overrides)::$_0::operator()<unsigned short>(ashp::detail::logging *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v3 = *a1;
      *buf = 136446978;
      v6 = "tr_controller.cpp";
      v7 = 1024;
      v8 = 75;
      v9 = 2082;
      v10 = "set_client_overrides";
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) failed to validate client override", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) failed to validate client override", "tr_controller.cpp", 75, "set_client_overrides", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::acipc::tr_controller::activate(ashp::acipc::tr_controller *this)
{
  v145 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 36);
  os_unfair_lock_lock(this + 4);
  if (*(this + 632) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x57, "activate", v6);
    _os_crash();
    __break(1u);
    goto LABEL_34;
  }

  if (*(this + 32) != 1)
  {
    v10 = *(this + 3);
    ashp::optional<ashp::acipc::config::acipc_config,void>::value(v10 + 3824, v3, v4, v5);
    if (ashp::acipc::tr_controller::validate_client_overrides(this + 528, this + 152, v10 + 3824, v11))
    {
      v138[16] = 0;
      if (*(this + 320) == 1)
      {
        buf[16] = 0;
        *&buf[24] = 0;
        LOBYTE(v142) = 0;
        *&v143[2] = 0;
        v144 = 0;
        ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 304, v12, v13, v14);
        ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v139, *(this + 38), v16, v17);
        v140 = *(this + 78);
        v18 = resolve_named_target<ashp::acipc::config::doorbell_spec>(*(v10 + 3880), *(v10 + 3896), &v139, buf, 0);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v139, v19, v20, v21);
        if (!v18)
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x62, "activate", v25);
          _os_crash();
          __break(1u);
        }

        if (!*(v18 + 2))
        {
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(&v139, this + 304, v23, v24);
          ashp::swap(v138, &v139, v26, v27);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v139, v28, v29, v30);
        }

        v31 = *(this + 636);
        *(this + 317) = *&buf[24];
        if ((v31 & 1) == 0)
        {
          *(this + 636) = 1;
        }

        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(buf, v22, v23, v24);
      }

      if (*(this + 624) != 1)
      {
LABEL_22:
        *(this + 632) = 1;
        os_unfair_lock_unlock(this + 4);
        v55 = *(this + 3);
        ashp::optional<ashp::acipc::ring_manager,void>::value(v55 + 4264, v56, v57, v58);
        LOBYTE(v129) = *(this + 152);
        HIBYTE(v129) = v129;
        ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v130, *(this + 21), v59, v60);
        v131 = *(this + 44);
        ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::storage(&v132, this + 184, v61, v62);
        v134 = *(this + 52);
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v135, v138, v63, v64);
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v136, this + 544, v65, v66);
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v137, this + 568, v67, v68);
        os_unfair_lock_lock((v55 + 4264));
        if (!*(this + 115))
        {
          *(this + 115) = this;
          *(this + 241) = 0;
          *(this + 119) = 0;
          *(this + 960) = 0;
          *(this + 484) = v129;
          ashp::acipc::name_and_selector::operator=(this + 122, &v130, v69, v70);
          v72 = v133;
          v73 = v132;
          v132 = 0uLL;
          v133 = 0;
          v74 = *(this + 62);
          *(this + 62) = v73;
          *buf = v74;
          v75 = *(this + 126);
          *(this + 126) = v72;
          *&buf[16] = v75;
          v80 = ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(buf, v76, v77, v78, v79);
          *(this + 254) = v134;
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v80, v135, v81, v82);
          ashp::swap(this + 1024, buf, v83, v84);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(buf, v85, v86, v87);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(buf, v136, v88, v89);
          ashp::swap(this + 1048, buf, v90, v91);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(buf, v92, v93, v94);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(buf, v137, v95, v96);
          ashp::swap(this + 1072, buf, v97, v98);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(buf, v99, v100, v101);
          ashp::acipc::ring_manager::recompute_tr_availability((v55 + 4264), (this + 920));
          if (!*(this + 118))
          {
            v104 = *(v55 + 4768);
            *(this + 116) = *v104;
            *(this + 117) = v104;
            *v104 = this + 920;
            *(v55 + 4768) = this + 928;
            *(this + 118) = v55 + 4760;
            log_level = ashp::detail::logging::get_log_level(v102);
            if (log_level >= 4)
            {
              log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (log_level)
              {
                v106 = *(this + 508);
                *buf = 136446978;
                *&buf[4] = "ring_manager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 263;
                *&buf[18] = 2082;
                *&buf[20] = "add_tr";
                v142 = 1024;
                *v143 = v106;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] added trid %hu", buf, 0x22u);
              }
            }

            if (ashp::detail::logging::get_log_level(log_level))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] added trid %hu", "ring_manager.cpp", 263, "add_tr", *(this + 508));
            }

            os_unfair_lock_unlock((v55 + 4264));
            ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v137, v107, v108, v109);
            ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v136, v110, v111, v112);
            ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v135, v113, v114, v115);
            ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(&v132, v116, v117, v118, v119);
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v130, v120, v121, v122);
            os_unfair_lock_lock(this + 4);
            ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v138, v123, v124, v125);
            v9 = 0;
            goto LABEL_32;
          }

LABEL_37:
          v9 = "intrusive_list.hpp";
          ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xBA, "insert_before", v103);
          ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to insert element already in list", "intrusive_list.hpp", 0xBA, "insert_before", v128);
          _os_crash();
          __break(1u);
          goto LABEL_38;
        }

LABEL_36:
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0xFB, "add_tr", v71);
        _os_crash();
        __break(1u);
        goto LABEL_37;
      }

      v32 = *(this + 3);
      ashp::optional<ashp::interrupt_manager,void>::value(&v32[158], v12, v13, v14);
      v36 = ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 608, v33, v34, v35);
      v40 = ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v36, v37, v38, v39);
      v41 = *v40;
      ashp::optional<ashp::acipc::name_and_selector,void>::value(v40, v42, v43, v44);
      ashp::interrupt_manager::get_vector_for_interrupt(buf, v32 + 158, v41, *(this + 154), v45);
      if (buf[4] == 1)
      {
        v50 = ashp::optional<unsigned int,void>::value(buf, v46, v47, v48);
        if (*buf < 0x10000u)
        {
          ashp::optional<unsigned int,void>::value(v50, v51, v52, v53);
          v54 = *(this + 640);
          *(this + 319) = *buf;
          if ((v54 & 1) == 0)
          {
            *(this + 640) = 1;
          }

          goto LABEL_22;
        }
      }

LABEL_35:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x6D, "activate", v49);
      _os_crash();
      __break(1u);
      goto LABEL_36;
    }

LABEL_34:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x5B, "activate", v15);
    _os_crash();
    __break(1u);
    goto LABEL_35;
  }

  v7 = ashp::detail::logging::get_log_level(v2);
  if (v7 >= 1)
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      v8 = *(this + 104);
      *buf = 136446978;
      *&buf[4] = "tr_controller.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 88;
      *&buf[18] = 2082;
      *&buf[20] = "activate";
      v142 = 1024;
      *v143 = v8;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
    }
  }

  v9 = 3758097088;
  if (ashp::detail::logging::get_log_level(v7))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 88, "activate", *(this + 104));
      goto LABEL_32;
    }

LABEL_38:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

LABEL_32:
  os_unfair_lock_unlock(this + 4);
  os_unfair_lock_unlock(this + 36);
  v126 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_23EC8ED88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&a29, a2, a3, a4);
  os_unfair_lock_unlock(v29 + 4);
  os_unfair_lock_unlock(v29 + 36);
  _Unwind_Resume(a1);
}

uint64_t ashp::optional<ashp::interrupt_manager,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 3088) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::optional<unsigned int,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 4) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

{
  if ((*(result + 4) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF7, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF7, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = 0;
  ashp::detail::dynamic_array::buffer<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::buffer(a1 + 1, *a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::append(a1, *(a2 + 16), *a2, v6, v7);
  return a1;
}

void sub_23EC8EFDC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    free(v3);
    *(v1 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void ashp::acipc::detail::ring_manager::tr_context::parameters::~parameters(ashp::acipc::detail::ring_manager::tr_context::parameters *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 104, a2, a3, a4);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 80, v5, v6, v7);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 56, v8, v9, v10);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 3, v11, v12, v13, v14);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 1, v15, v16, v17);
}

uint64_t ashp::detail::dynamic_array::buffer<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (a2 >> 61)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v8);
    _os_crash();
    __break(1u);
  }

  else
  {
    v5 = malloc_type_aligned_alloc(8uLL, 8 * a2, 0x6004044C4A2DFuLL);
    a1[1] = v5;
    if (v5)
    {
      return a1;
    }
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v6);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v9);
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::append(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *result + a3;
  if (__CFADD__(*result, a3))
  {
LABEL_9:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x137, "append", a5);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  if (v5 <= result[1])
  {
    v7 = a3;
    if (!a3)
    {
LABEL_7:
      *v6 = v5;
      return result;
    }

    v9 = 0;
    while (1)
    {
      v10 = (v6[2] + 8 * *v6 + v9);
      if (!v10)
      {
        break;
      }

      result = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(v10, *(a2 + v9), a3, a4);
      v9 += 8;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x138, "append", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::tr_controller::create_state_monitor(void)::$_0::operator()<unsigned short>(ashp::detail::logging *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v3 = *a1;
      *buf = 136446978;
      v6 = "tr_controller.cpp";
      v7 = 1024;
      v8 = 152;
      v9 = 2082;
      v10 = "create_state_monitor";
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 152, "create_state_monitor", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

unint64_t ashp::acipc::tr_controller::open(ashp::acipc::tr_controller *this)
{
  v344 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 36);
  os_unfair_lock_lock(this + 4);
  if ((*(this + 632) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0xA1, "open", v5);
    _os_crash();
    __break(1u);
    goto LABEL_265;
  }

  v6 = buf;
  if (*(this + 32) == 1)
  {
    log_level = ashp::detail::logging::get_log_level(v4);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v8 = *(this + 104);
        *buf = 136446978;
        *&buf[4] = "tr_controller.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 162;
        *&buf[18] = 2082;
        *&buf[20] = "open";
        *&buf[28] = 1024;
        *&buf[30] = v8;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
      }
    }

    v1 = 3758097088;
    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_199;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 162, "open", *(this + 104));
      goto LABEL_199;
    }

LABEL_265:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

  v9 = ashp::acipc::ring_controller::compute_state((this + 648));
  v10 = v9;
  if (v9 >= 2)
  {
    v31 = ashp::detail::logging::get_log_level(v9);
    if (v31 >= 2)
    {
      v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v31)
      {
        v32 = *(this + 104);
        *buf = 136447234;
        *&buf[4] = "tr_controller.cpp";
        *&buf[14] = 165;
        *&buf[18] = 2082;
        *&buf[12] = 1024;
        *&buf[20] = "open";
        *&buf[28] = 1024;
        *&buf[30] = v32;
        *&buf[34] = 1024;
        *&buf[36] = v10;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller state 0x%02x is not ready to open", buf, 0x28u);
      }
    }

    v1 = 3758097112;
    if (ashp::detail::logging::get_log_level(v31))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller state 0x%02x is not ready to open", "tr_controller.cpp", 165, "open", *(this + 104), v10);
    }

    goto LABEL_199;
  }

  v11 = ashp::detail::logging::get_log_level(v9);
  if (v11 >= 3)
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      v12 = *(this + 104);
      *buf = 136446978;
      *&buf[4] = "tr_controller.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 167;
      *&buf[18] = 2082;
      *&buf[20] = "open";
      *&buf[28] = 1024;
      *&buf[30] = v12;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) sending open message", buf, 0x22u);
    }
  }

  if (!ashp::detail::logging::get_log_level(v11))
  {
    goto LABEL_16;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_275;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) sending open message", "tr_controller.cpp", 167, "open", *(this + 104));
LABEL_16:
    ashp::acipc::tr_ring::compute_required_memory(&v328, *(this + 266), *(this + 54), *(this + 134));
    if ((v329 & 1) == 0)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0xAA, "open", v16);
      _os_crash();
      __break(1u);
LABEL_267:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0xC0, "open", v29);
      _os_crash();
      __break(1u);
LABEL_268:
      ashp::detail::control_flow::log_guard_else_failure("tr_ring.cpp", 0x14, "tr_ring", v48);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: bad parameter - 'size'", "tr_ring.cpp", 0x14, "tr_ring", v274);
      _os_crash();
      __break(1u);
LABEL_269:
      ashp::detail::control_flow::log_guard_else_failure("tr_ring.cpp", 0x15, "tr_ring", v48);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: bad parameter - 'memory'", "tr_ring.cpp", 0x15, "tr_ring", v275);
      _os_crash();
      __break(1u);
LABEL_270:
      ashp::detail::control_flow::log_guard_else_failure("tr_ring.cpp", 0x16, "tr_ring", v48);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: bad parameter - 'header_length'", "tr_ring.cpp", 0x16, "tr_ring", v276);
      _os_crash();
      __break(1u);
      goto LABEL_271;
    }

    v17 = ashp::optional<unsigned int,void>::value(&v328, v13, v14, v15);
    v18 = ashp::detail::logging::get_log_level(v17);
    if (v18 >= 4)
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        v19 = *(this + 104);
        v20 = v328;
        *buf = 136447234;
        *(v6 + 4) = "tr_controller.cpp";
        *(v6 + 14) = 171;
        *&buf[18] = 2082;
        *&buf[12] = 1024;
        *(v6 + 20) = "open";
        *&buf[28] = 1024;
        *(v6 + 30) = v19;
        *&buf[34] = 1024;
        *&buf[36] = v20;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) computed memory is %u bytes", buf, 0x28u);
      }
    }

    v21 = ashp::detail::logging::get_log_level(v18);
    if (v21)
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) computed memory is %u bytes", "tr_controller.cpp", 171, "open", *(this + 104), v328);
    }

    v326 = this;
    v327 = 1;
    if (*(this + 152) != 1)
    {
      ashp::optional<unsigned int,void>::value(&v328, v22, v23, v24);
      ashp::mappable_buffer::create(v340, v328, 2, v33, v34);
      if (v340[8])
      {
        ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v340, v35, v36, v37);
        ashp::buffer_mapping::operator=(this + 1096, v340, v38, v39);
        v40 = *(this + 3);
        ashp::mappable_buffer::copy_descriptor(v325, this + 1096, v41, v42, v43);
        ashp::devmem_mapping::create();
      }

      ashp::detail::control_flow::log_guard_else_failure("tr_controller.cpp", 0xBA, "open", v37);
      ashp::acipc::tr_controller::open(void)::$_6::operator()<unsigned short>((this + 208));
      ashp::buffer_mapping::~buffer_mapping(v340, v280, v281, v282);
      v1 = 3758097118;
      goto LABEL_198;
    }

    v25 = ashp::detail::logging::get_log_level(v21);
    if (v25 >= 4)
    {
      v25 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v25)
      {
        v26 = *(this + 104);
        *buf = 136446978;
        *(v6 + 4) = "tr_controller.cpp";
        *&buf[12] = 1024;
        *(v6 + 14) = 180;
        *&buf[18] = 2082;
        *(v6 + 20) = "open";
        *&buf[28] = 1024;
        *(v6 + 30) = v26;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) using mtr memory", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v25))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) using mtr memory", "tr_controller.cpp", 180, "open", *(this + 104));
    }

    v30 = *(this + 20);
    if (!v30)
    {
      goto LABEL_267;
    }

    if (*(this + 1160) == 1)
    {
      *(this + 1160) = 0;
    }

    v44 = *(this + 266);
    v45 = *(this + 54);
    v46 = *(this + 134);
    *(this + 141) = v30;
    v47 = ashp::ring_index_pair<unsigned short>::ring_index_pair(this + 1136, v44, v27, v28);
    *(this + 286) = v45;
    *(this + 287) = v46;
    *(this + 288) = 0;
    if (!v44)
    {
      goto LABEL_268;
    }

    if ((v30 & 3) != 0)
    {
      goto LABEL_269;
    }

    if ((v45 & 3) != 0)
    {
      goto LABEL_270;
    }

    if ((v46 & 3) == 0)
    {
      break;
    }

LABEL_271:
    ashp::detail::control_flow::log_guard_else_failure("tr_ring.cpp", 0x17, "tr_ring", v48);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad parameter - 'footer_length'", "tr_ring.cpp", 0x17, "tr_ring", v277);
    _os_crash();
    __break(1u);
LABEL_272:
    ashp::detail::control_flow::log_guard_else_failure("tr_ring.cpp", 0x19, "tr_ring", v48);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: oversize ring", "tr_ring.cpp", 0x19, "tr_ring", v278);
    _os_crash();
    __break(1u);
LABEL_273:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x11C, "open_tr", v158);
    _os_crash();
    __break(1u);
LABEL_274:
    v2 = 4264;
    v10 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x11E, "open_tr", v161);
    _os_crash();
    __break(1u);
LABEL_275:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  v49 = __CFADD__(v46, v45 + 16);
  *(this + 288) = v46 + v45 + 16;
  if (v45 >= 0xFFFFFFF0 || v49)
  {
    goto LABEL_272;
  }

  *(this + 1160) = 1;
  v50 = ashp::detail::logging::get_log_level(v47);
  if (v50 >= 4)
  {
    v50 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v50)
    {
      v51 = *(this + 104);
      v52 = *(this + 266);
      v53 = *(this + 54);
      v54 = *(this + 134);
      *buf = 136447746;
      *(v6 + 4) = "tr_controller.cpp";
      *&buf[12] = 1024;
      *(v6 + 14) = 196;
      *&buf[18] = 2082;
      *(v6 + 20) = "open";
      *&buf[28] = 1024;
      *(v6 + 30) = v51;
      *&buf[34] = 1024;
      *&buf[36] = v52;
      *&buf[40] = 1024;
      *(v6 + 42) = v53;
      *&buf[46] = 1024;
      *&buf[48] = v54;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) created underlying ring with ring size=%hu, header size=%u, footer size=%u", buf, 0x34u);
    }
  }

  if (ashp::detail::logging::get_log_level(v50))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) created underlying ring with ring size=%hu, header size=%u, footer size=%u", "tr_controller.cpp", 196, "open", *(this + 104), *(this + 266), *(this + 54), *(this + 134));
  }

  ashp::optional<ashp::acipc::tr_ring,void>::value(this + 1128, v55, v56, v57);
  v62 = 532;
  if (*(this + 530))
  {
    v62 = 528;
  }

  v63 = *(this + v62);
  v64 = *(this + 54);
  v65 = *(this + 56);
  v66 = *(this + 134);
  v67 = *(this + 135);
  if (*(this + 1344) == 1)
  {
    *(this + 1344) = 0;
    ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(this + 164);
    ashp::detail::dynamic_array::storage<ashp::acipc::transfer_queue::transfer>::~storage(this + 150, v68, v69, v70, v71);
    v72 = *(this + 56);
    v73 = *(this + 54);
    v74 = *(this + 135);
    v75 = *(this + 134);
  }

  else
  {
    v75 = *(this + 134);
    v74 = *(this + 135);
    v73 = *(this + 54);
    v72 = *(this + 56);
  }

  if (v64 >= v65)
  {
    v76 = v73;
  }

  else
  {
    v76 = v72;
  }

  v77 = v66 >= v67;
  v78 = *(this + 288);
  if (v77)
  {
    v79 = v75;
  }

  else
  {
    v79 = v74;
  }

  *(this + 584) = *(this + 104);
  *(this + 147) = this + 1128;
  *(this + 592) = v63;
  *(this + 297) = v76;
  *(this + 298) = v79;
  *(this + 1196) = v78;
  v80 = -1;
  if (v78 == 1)
  {
    v81 = 0xFFFFFFFFFFFFFFFFLL >> __clz((v63 - 1));
    if (v63 <= 1)
    {
      v80 = 0;
    }

    else
    {
      v80 = v81;
    }
  }

  v82 = 0;
  *(this + 599) = v80;
  *(this + 150) = 0;
  *(this + 152) = 0;
  *(this + 151) = 0;
  do
  {
    v83 = this + v82;
    *(v83 + 306) = -65536;
    *(v83 + 614) = -1;
    v82 += 6;
  }

  while (v82 != 36);
  v84 = 0uLL;
  *(this + 82) = 0u;
  *(this + 81) = 0u;
  *(this + 80) = 0u;
  *(this + 79) = 0u;
  *(this + 1327) = 0u;
  buf[0] = 0;
  *(v6 + 2) = -1;
  *&buf[6] = -1;
  *(v6 + 8) = 0u;
  *&buf[24] = 0;
  memset(&buf[32], 0, 18);
  *(v6 + 52) = 0;
  *(v6 + 60) = 0u;
  v339 = 0;
  *&v330 = 0;
  *(&v330 + 1) = v63;
  v331 = 0;
  if (!v63)
  {
    v89 = 0;
    v88 = 0;
    goto LABEL_86;
  }

  v331 = malloc_type_aligned_alloc(8uLL, 80 * v63, 0x10800406215DCBAuLL);
  if (v331)
  {
    v1 = buf;
    v85 = v330;
    v65 = 80;
    v6 = v63;
    do
    {
      if (v85 >= *(&v330 + 1))
      {
        goto LABEL_243;
      }

      if (!v331)
      {
        goto LABEL_242;
      }

      v2 = v331 + 80 * v85;
      *v2 = *buf;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      ashp::device_accessible_memory::retain_obj((v2 + 8), v58, v59, v60, v61);
      v86 = *&buf[24];
      *(v2 + 34) = *&buf[34];
      *(v2 + 24) = v86;
      *(v2 + 56) = 0;
      v87 = v338;
      *(v2 + 76) = v339;
      *(v2 + 60) = v87;
      v85 = v330 + 1;
      *&v330 = v330 + 1;
      --v6;
    }

    while (v6);
    v88 = v331;
    v84 = *(this + 75);
    v89 = *(this + 152);
    v6 = buf;
LABEL_86:
    v1 = buf;
    v90 = v330;
    v330 = 0uLL;
    v331 = 0;
    *(this + 75) = v90;
    *v340 = v84;
    *(this + 152) = v88;
    v341 = v89;
    ashp::detail::dynamic_array::storage<ashp::acipc::transfer_queue::transfer>::~storage(v340, v58, v59, v60, v61);
    ashp::detail::dynamic_array::storage<ashp::acipc::transfer_queue::transfer>::~storage(&v330, v91, v92, v93, v94);
    v99 = ashp::device_accessible_memory::release_obj(&buf[8], v95, v96, v97, v98);
    v100 = ashp::detail::logging::get_log_level(v99);
    if (v100 >= 4)
    {
      v100 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v100)
      {
        v101 = *(this + 584);
        *buf = 136448002;
        *(v6 + 4) = "transfer_queue.cpp";
        *(v6 + 14) = 24;
        *&buf[18] = 2082;
        *&buf[12] = 1024;
        *(v6 + 20) = "transfer_queue";
        *&buf[28] = 1024;
        *(v6 + 30) = v101;
        *&buf[34] = 1024;
        *&buf[36] = v63;
        *&buf[40] = 1024;
        *(v6 + 42) = v76;
        *&buf[46] = 1024;
        *&buf[48] = v79;
        v337 = 1024;
        *(v6 + 54) = v78;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) create tx_queue: size %hu, hdrlen %u, ftrlen %u, out-of-order %u", buf, 0x3Au);
      }
    }

    if (ashp::detail::logging::get_log_level(v100))
    {
      if (airship_platform_get_global_logger::once == -1)
      {
        goto LABEL_91;
      }

      goto LABEL_277;
    }
  }

  else
  {
    v10 = "dynamic_array.hpp";
    v1 = "buffer";
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v60);
    v63 = "ALLOCATION FAILURE (or BUG) in Airship";
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v279);
    _os_crash();
    __break(1u);
LABEL_277:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_91:
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) create tx_queue: size %hu, hdrlen %u, ftrlen %u, out-of-order %u", "transfer_queue.cpp", 24, "transfer_queue", *(this + 584), v63, v76, v79, v78);
  }

  if (!*(this + 592))
  {
    goto LABEL_104;
  }

  v1 = 0;
  v76 = 0xFFFFLL;
  do
  {
    *ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, v1, v102, v103) = 0;
    *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, v1, v104, v105) + 72) = -1;
    if (*(this + 1196) == 1)
    {
      *buf = -1;
      if (v1)
      {
        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(buf, v1 - 1, v102, v103);
      }

      v106 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, v1, v102, v103);
      *(v106 + 2) = *buf;
      if (*(this + 592) - 1 <= v1)
      {
        *buf = -1;
      }

      else
      {
        *buf = -1;
        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(buf, v1 + 1, v107, v108);
      }

      v109 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, v1, v107, v108);
      *(v109 + 4) = *buf;
    }

    ++v1;
    v110 = *(this + 592);
  }

  while (v1 < v110);
  if (*(this + 592))
  {
    *(this + 612) = v110;
    v1 = 0xFFFFLL;
    *buf = -1;
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(buf, 0, v102, v103);
    *(this + 613) = *buf;
    v111 = *(this + 592) - 1;
    *buf = -1;
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(buf, v111, v112, v113);
    *(this + 614) = *buf;
    v114 = *(this + 592);
  }

  else
  {
LABEL_104:
    v114 = 0;
  }

  v115 = (*(this + 298) + *(this + 297)) * v114;
  v340[0] = 0;
  ashp::dynamic_array<unsigned char>::dynamic_array<int,0>(buf, v115, v340);
  v116 = *&buf[16];
  v117 = *buf;
  memset(buf, 0, 24);
  v118 = *(this + 164);
  *(this + 82) = v117;
  v119 = *(this + 166);
  *(this + 166) = v116;
  if (v118 && !v119)
  {
LABEL_242:
    __break(1u);
LABEL_243:
    v187 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v61);
    _os_crash();
    __break(1u);
LABEL_244:
    if (v76)
    {
      goto LABEL_245;
    }

LABEL_295:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x46D, "send_tr_open_message", v219);
    _os_crash();
    __break(1u);
LABEL_296:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x470, "send_tr_open_message", v219);
    _os_crash();
    __break(1u);
LABEL_297:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_209:
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] trid %hu has unmessaged lifecycle, setting open", "ring_manager.cpp", 297, "open_tr", *(this + 508));
LABEL_210:
    if (v324 != 1)
    {
      v2 = 4264;
      ashp::acipc::ring_manager::set_tr_open((v78 + v76), (this + 920));
      goto LABEL_262;
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x12A, "open_tr", v186);
    _os_crash();
    __break(1u);
    goto LABEL_286;
  }

  if (v119)
  {
    free(v119);
    v119 = *&buf[16];
    if (*buf && !*&buf[16])
    {
      goto LABEL_242;
    }

    *buf = 0;
    if (*&buf[16])
    {
      free(*&buf[16]);
    }
  }

  else
  {
    *buf = 0;
  }

  v120 = *(*(this + 147) + 8);
  if (*(this + 1196) == 1)
  {
    v121 = *(this + 592);
    v122 = v120 - 1;
  }

  else
  {
    v122 = v120 - 1;
    v121 = *(this + 592);
    v123 = v121 - v122;
    if (v121 < v122)
    {
      v123 = 0;
    }

    *(this + 668) = v123;
  }

  if (v121 <= v122)
  {
    v122 = v121;
  }

  else
  {
    v121 = v122;
  }

  if (v121 > 0x100)
  {
    v122 = 256;
  }

  *(this + 669) = v122;
  *(this + 1344) = 1;
  v124 = ashp::detail::logging::get_log_level(v119);
  if (v124 >= 4)
  {
    v124 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v124)
    {
      v125 = *(this + 104);
      *buf = 136446978;
      *(v6 + 4) = "tr_controller.cpp";
      *&buf[12] = 1024;
      *(v6 + 14) = 201;
      *&buf[18] = 2082;
      *(v6 + 20) = "open";
      *&buf[28] = 1024;
      *(v6 + 30) = v125;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) created transfer queue", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v124))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) created transfer queue", "tr_controller.cpp", 201, "open", *(this + 104));
  }

  v130 = *(this + 152);
  if ((v130 & 1) == 0)
  {
    if (!*(this + 140))
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0xCF, "open", v129);
      _os_crash();
      __break(1u);
LABEL_280:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_174:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] trid %hu cannot be opened", "ring_manager.cpp", 287, "open_tr", *(this + 508));
LABEL_175:
      v168 = 0;
      goto LABEL_176;
    }

    v131 = ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 140, v126, v127, v128);
    *v340 = ashp::devmem_mapping::get_paddr(*v131);
    if (*v340 == -1)
    {
      v1 = 3758097112;
      if (!v10)
      {
        goto LABEL_196;
      }

      v142 = ashp::detail::logging::get_log_level(0xFFFFFFFFFFFFFFFFLL);
      if (v142 >= 1)
      {
        v142 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v142)
        {
          v143 = *(this + 104);
          *buf = 136446978;
          *(v6 + 4) = "tr_controller.cpp";
          *&buf[12] = 1024;
          *(v6 + 14) = 215;
          *&buf[18] = 2082;
          *(v6 + 20) = "open";
          *&buf[28] = 1024;
          *(v6 + 30) = v143;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) no physical address for ring", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v142))
      {
        if (airship_platform_get_global_logger::once == -1)
        {
          goto LABEL_143;
        }

        goto LABEL_283;
      }

LABEL_144:
      v1 = (v1 + 6);
      goto LABEL_196;
    }

    v1 = this + 592;
    if (*(this + 74))
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 74, v132, v133, v134);
      if (ashp::boxed::data::length(*v1, v135, v136, v137) >> 32)
      {
        ashp::detail::control_flow::log_guard_else_failure("tr_controller.cpp", 0xDC, "open", v134);
        ashp::acipc::tr_controller::open(void)::$_13::operator()<unsigned short>((this + 208));
        v1 = 3758097090;
        goto LABEL_196;
      }
    }

    LODWORD(v2) = *(this + 54);
    LODWORD(v78) = *(this + 134);
    ashp::optional<unsigned long long,ashp::optional_sentinel<18446744073709551615ull,false>>::value(v340, v132, v133, v134);
    if (*(this + 636) == 1)
    {
      v141 = *(this + 317);
    }

    else
    {
      v141 = -1;
    }

    v301 = v141;
    if (*(this + 640) == 1)
    {
      v144 = *(this + 319);
    }

    else
    {
      v144 = 0xFFFF;
    }

    v300 = v144;
    *&v299 = *v340;
    v297 = *(this + 290);
    v298 = *(this + 266);
    v295 = *(this + 297);
    v296 = *(this + 296);
    v293 = *(this + 289);
    v294 = *(this + 288);
    v6 = *(this + 299);
    v291 = *(this + 73);
    v292 = *(this + 298);
    v290 = *(this + 184);
    LODWORD(v76) = *(this + 93);
    LOWORD(v79) = *(this + 168);
    v65 = *(this + 85);
    if (*(this + 74))
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 74, v138, v139, v140);
      v10 = ashp::boxed::data::bytes(*v1, v145, v146, v147);
      if (*v1)
      {
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 74, v148, v149, v150);
        LODWORD(v1) = ashp::boxed::data::length(*v1, v151, v152, v153);
        goto LABEL_154;
      }
    }

    else
    {
      v10 = 0;
    }

    LODWORD(v1) = 0;
  }

LABEL_154:
  os_unfair_lock_unlock(this + 4);
  v302 = *(this + 3);
  ashp::optional<ashp::acipc::ring_manager,void>::value(v302 + 4264, v154, v155, v156);
  v324 = 0;
  if ((v130 & 1) == 0)
  {
    v303 = v2;
    v304 = v78;
    *&v305 = v299;
    *(&v305 + 1) = -1;
    v306 = v298;
    v307 = v301;
    v308 = v297;
    v309 = v296;
    v310 = v295;
    v311 = v294;
    v312 = v293;
    v313 = v292;
    v314 = v6;
    v315 = 0;
    v316 = v291;
    v317 = v300;
    v318 = v290;
    v319 = v76;
    v320 = v79;
    v321 = v65;
    v322 = v10;
    v323 = v1;
    v324 = 1;
  }

  v78 = v302;
  v76 = 4264;
  os_unfair_lock_lock((v302 + 4264));
  if (*(this + 115) != this)
  {
    goto LABEL_273;
  }

  v159 = ashp::detail::logging::get_log_level(v157);
  v6 = buf;
  if (v159 >= 4)
  {
    v159 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v159)
    {
      v160 = *(this + 508);
      *buf = 136446978;
      *&buf[4] = "ring_manager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 285;
      *&buf[18] = 2082;
      *&buf[20] = "open_tr";
      *&buf[28] = 1024;
      *&buf[30] = v160;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] flushing settlement tracking for trid %hu", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v159))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] flushing settlement tracking for trid %hu", "ring_manager.cpp", 285, "open_tr", *(this + 508));
  }

  os_unfair_lock_assert_owner((v302 + 4264));
  if (*(this + 238) || *(this + 956) == 1)
  {
    goto LABEL_274;
  }

  os_unfair_lock_assert_owner((v302 + 4264));
  os_unfair_lock_assert_owner((v302 + 4264));
  if (*(this + 238) || (*(this + 956) & 1) != 0 || *(this + 241))
  {
    v166 = ashp::detail::logging::get_log_level(max_message_length);
    if (v166 >= 1)
    {
      v166 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v166)
      {
        v167 = *(this + 508);
        *buf = 136446978;
        *&buf[4] = "ring_manager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 287;
        *&buf[18] = 2082;
        *&buf[20] = "open_tr";
        *&buf[28] = 1024;
        *&buf[30] = v167;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] trid %hu cannot be opened", buf, 0x22u);
      }
    }

    v1 = 3758097112;
    if (ashp::detail::logging::get_log_level(v166))
    {
      if (airship_platform_get_global_logger::once == -1)
      {
        goto LABEL_174;
      }

      goto LABEL_280;
    }

    goto LABEL_175;
  }

  if (v324 == 1)
  {
    ashp::optional<ashp::acipc::ring_manager::tr_open_parameters,void>::value(&v303, v163, v164, v165);
    v182 = v323 + 52;
    if (v323 >= 0xFFFFFFCC)
    {
      v283 = 291;
    }

    else
    {
      v183 = *(v302 + 4280);
      ashp::optional<ashp::acipc::messenger,void>::value(&v183[1236], v179, v180, v181);
      max_message_length = ashp::acipc::messenger::get_max_message_length(v183 + 1236);
      if (v182 <= max_message_length)
      {
        goto LABEL_203;
      }

LABEL_287:
      v283 = 292;
    }

    ashp::detail::control_flow::log_guard_else_failure("ring_manager.cpp", v283, "open_tr", v181);
    v168 = 0;
    v1 = 3758097090;
    v78 = v302;
    goto LABEL_263;
  }

LABEL_203:
  *(this + 959) = 1;
  if (*(this + 968) == 1)
  {
    v184 = ashp::detail::logging::get_log_level(max_message_length);
    if (v184 >= 4)
    {
      v184 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v184)
      {
        v185 = *(this + 508);
        *buf = 136446978;
        *&buf[4] = "ring_manager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 297;
        *&buf[18] = 2082;
        *&buf[20] = "open_tr";
        *&buf[28] = 1024;
        *&buf[30] = v185;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] trid %hu has unmessaged lifecycle, setting open", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v184))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        goto LABEL_297;
      }

      goto LABEL_209;
    }

    goto LABEL_210;
  }

  v187 = *(this + 509);
  v2 = 4264;
  os_unfair_lock_assert_owner((v302 + 4264));
  ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v302 + 4304, v188, v189, v190);
  if (*(v302 + 4304) <= v187)
  {
LABEL_286:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x1FB, "clear_tr_indices", v194);
    _os_crash();
    __break(1u);
    goto LABEL_287;
  }

  ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v302 + 4304, v191, v192, v193);
  *(*(v302 + 4312) + 2 * v187) = 0;
  ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v302 + 4304, v195, v196, v197);
  *(*(v302 + 4320) + 2 * v187) = 0;
  __dmb(0xBu);
  *(this + 238) = 1;
  ashp::acipc::tr_controller::set_device_ring_status(this, 1);
  ashp::optional<ashp::acipc::ring_manager::tr_open_parameters,void>::value(&v303, v198, v199, v200);
  v76 = v303;
  v201 = v304;
  v299 = v305;
  v297 = v307;
  v298 = v306;
  v287 = v310;
  v288 = v309;
  v300 = v308;
  LOBYTE(v301) = v311;
  LOBYTE(v187) = v312;
  v286 = v313;
  v289 = v314;
  v290 = v315;
  LODWORD(v1) = HIBYTE(v315);
  v294 = v317;
  v295 = v316;
  v292 = v319;
  v293 = v318;
  LOWORD(v291) = v320;
  v296 = v321;
  v285 = v322;
  v284 = v323;
  os_unfair_lock_assert_owner((v302 + 4264));
  if (*(v302 + 4296) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x3F9, "send_tr_open_message", v205);
    _os_crash();
    __break(1u);
    goto LABEL_290;
  }

  if (*(this + 238) != 1)
  {
LABEL_290:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x3FA, "send_tr_open_message", v205);
    _os_crash();
    __break(1u);
    goto LABEL_291;
  }

  v206 = *(v302 + 4280);
  ashp::optional<ashp::acipc::config::acipc_config,void>::value(v206 + 3824, v202, v203, v204);
  v207 = *(v206 + 3968);
  ashp::acipc::compute_hdrftr_size_fields(v335, v76, v207, v208);
  if ((v335[2] & 1) == 0)
  {
LABEL_291:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x437, "send_tr_open_message", v210);
    _os_crash();
    __break(1u);
    goto LABEL_292;
  }

  ashp::acipc::compute_hdrftr_size_fields(v334, v201, v207, v209);
  if ((v334[2] & 1) == 0)
  {
LABEL_292:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x439, "send_tr_open_message", v214);
    _os_crash();
    __break(1u);
    goto LABEL_293;
  }

  v215 = *(this + 509);
  ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v302 + 4304, v211, v212, v213);
  if (v215 >= *(v302 + 4304))
  {
LABEL_293:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x43B, "send_tr_open_message", v219);
    _os_crash();
    __break(1u);
    goto LABEL_294;
  }

  v333 = 0;
  v76 = *(this + 1064);
  if (v76 != 1)
  {
    goto LABEL_230;
  }

  if (*(this + 1088) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x445, "send_tr_open_message", v219);
    _os_crash();
    __break(1u);
    goto LABEL_299;
  }

  if (v187)
  {
LABEL_299:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x446, "send_tr_open_message", v219);
    _os_crash();
    __break(1u);
LABEL_300:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x44F, "send_tr_open_message", v219);
    _os_crash();
    __break(1u);
LABEL_301:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x457, "send_tr_open_message", v219);
    _os_crash();
    __break(1u);
    goto LABEL_302;
  }

  *v340 = -1;
  v220 = *(v302 + 4784);
  if (!v220)
  {
    goto LABEL_300;
  }

  do
  {
    os_unfair_lock_assert_owner((v302 + 4264));
    if (*(v220 + 32))
    {
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v330, *(v220 + 56), v222, v223);
      DWORD2(v330) = *(v220 + 64);
      buf[16] = 0;
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(buf, v224, v225, v226);
      v227 = v330;
      *&v330 = 0;
      *buf = v227;
      *&buf[8] = DWORD2(v330);
      buf[16] = 1;
      v230 = ashp::operator==<int,0>(this + 1048, buf, v228, v229);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(buf, v231, v232, v233);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v330, v234, v235, v236);
      if (v230)
      {
        if (*v340 != -1)
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x44C, "send_tr_open_message", v219);
          _os_crash();
          __break(1u);
LABEL_283:
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_143:
          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) no physical address for ring", "tr_controller.cpp", 215, "open", *(this + 104));
          goto LABEL_144;
        }

        *buf = -1;
        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(buf, *(v220 + 96), v222, v223);
        *v340 = *buf;
      }
    }

    v220 = *(v220 + 8);
  }

  while (v220);
  if (*v340 == -1)
  {
    goto LABEL_300;
  }

  v78 = v302;
  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(v340, v221, v222, v223);
  v332 = *v340 << 16;
  if ((v333 & 1) == 0)
  {
    v333 = 1;
  }

LABEL_230:
  if (*(this + 1088) != 1)
  {
    if ((v187 & 1) == 0)
    {
      goto LABEL_244;
    }

    if (*(this + 1064) == 1)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x465, "send_tr_open_message", v219);
      _os_crash();
      __break(1u);
    }

    else if ((v301 & 1) == 0)
    {
      v332 = -65536;
      if (v76)
      {
        goto LABEL_245;
      }

      goto LABEL_241;
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x467, "send_tr_open_message", v219);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if ((v301 & 1) == 0)
  {
    goto LABEL_301;
  }

  if (*(this + 1064) == 1)
  {
LABEL_302:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x458, "send_tr_open_message", v219);
    _os_crash();
    __break(1u);
    goto LABEL_303;
  }

  if (v187)
  {
LABEL_303:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x459, "send_tr_open_message", v219);
    _os_crash();
    __break(1u);
LABEL_304:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x45D, "send_tr_open_message", v219);
    _os_crash();
    __break(1u);
  }

  *v340 = 0;
  v237 = *(v78 + 4280);
  ashp::optional<ashp::acipc::config::acipc_config,void>::value(v237 + 3824, v216, v217, v218);
  v241 = ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 1072, v238, v239, v240);
  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(buf, *v241, v242, v243);
  *&buf[8] = *(this + 270);
  v244 = resolve_named_target<ashp::acipc::config::completion_group_spec>(*(v237 + 4152), *(v237 + 4168), buf, v340, 0);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v245, v246, v247);
  if (!v244)
  {
    goto LABEL_304;
  }

  v332 = (*v340 << 16) | 1;
  if ((v333 & 1) == 0)
  {
LABEL_241:
    v333 = 1;
  }

LABEL_245:
  v76 = v300;
  if (v300 >= 8)
  {
LABEL_294:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x46F, "send_tr_open_message", v219);
    _os_crash();
    __break(1u);
    goto LABEL_295;
  }

  if (v1 >= 5)
  {
    goto LABEL_296;
  }

  *(v6 + 38) = 0;
  *(v6 + 30) = 0;
  *(v6 + 44) = 0;
  buf[0] = 1;
  ashp::optional<unsigned short,void>::value(v335, v216, v217, v218);
  buf[1] = v335[0];
  ashp::optional<unsigned short,void>::value(v334, v248, v249, v250);
  buf[2] = v334[0];
  ashp::optional<unsigned short,void>::value(v335, v251, v252, v253);
  v254 = v335[1];
  ashp::optional<unsigned short,void>::value(v334, v255, v256, v257);
  buf[3] = v254 & 0xF | (16 * v334[1]);
  *&buf[4] = *(this + 254);
  *(v6 + 8) = v299;
  *&buf[24] = v298;
  v261 = ashp::optional<unsigned int,void>::value(&v332, v258, v259, v260);
  *&buf[26] = HIWORD(v332);
  *&buf[28] = v297;
  v265 = ashp::optional<unsigned int,void>::value(v261, v262, v263, v264);
  *&buf[30] = ((v332 & 1) << 9) | ((8 * v288) | (16 * v287) | (32 * v301) | (v187 << 6) | (v286 << 7) | v300) | (v289 << 8) | (v290 << 10) | (v1 << 11);
  *&buf[32] = v295;
  *&buf[36] = v294;
  *&buf[38] = v293;
  *&buf[40] = v292;
  *&buf[44] = v291;
  *&buf[46] = v296;
  v266 = ashp::detail::logging::get_log_level(v265);
  if (v266 >= 4)
  {
    v266 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v266)
    {
      v267 = *(this + 508);
      *v340 = 136446978;
      *(v6 + 84) = "ring_manager.cpp";
      *&v340[12] = 1024;
      *(v6 + 94) = 1165;
      WORD1(v341) = 2082;
      *(v6 + 100) = "send_tr_open_message";
      v342 = 1024;
      *(v6 + 110) = v267;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sending open message for trid %hu", v340, 0x22u);
    }
  }

  v268 = ashp::detail::logging::get_log_level(v266);
  if (v268)
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sending open message for trid %hu", "ring_manager.cpp", 1165, "send_tr_open_message", *(this + 508));
  }

  v269 = ashp::detail::logging::get_log_level(v268);
  if (v269 >= 4)
  {
    v269 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v269)
    {
      *v340 = 136447234;
      *(v6 + 84) = "ring_manager.cpp";
      *&v340[12] = 1024;
      *(v6 + 94) = 1166;
      WORD1(v341) = 2082;
      *(v6 + 100) = "send_tr_open_message";
      v342 = 1040;
      *(v6 + 110) = 52;
      v343 = 2096;
      *(v6 + 116) = buf;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tr_open %.*P", v340, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v269))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::hexdump(airship_global_logger, buf, 0x34uLL, "[%s:%d:%s] tr_open ", "ring_manager.cpp", 1166, "send_tr_open_message");
  }

  v273 = *(v78 + 4280);
  ashp::optional<ashp::acipc::messenger,void>::value(v273 + 4944, v270, v271, v272);
  ashp::acipc::messenger::send_message(v273 + 4944, buf, 52, v285, v284, v78 + v2, this + 920, ashp::acipc::ring_manager::tr_open_message_completed);
LABEL_262:
  ashp::acipc::ring_manager::recompute_closed_ring_availability((v78 + v2));
  v1 = 0;
  v168 = 1;
LABEL_263:
  v76 = 4264;
LABEL_176:
  os_unfair_lock_unlock((v78 + v76));
  if (v324 == 1)
  {
    v324 = 0;
  }

  os_unfair_lock_lock(this + 4);
  if (v168)
  {
    if (v327 == 1)
    {
      v327 = 0;
    }

    v170 = ashp::detail::logging::get_log_level(v169);
    if (v170 >= 4)
    {
      v170 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v170)
      {
        v171 = *(this + 104);
        *buf = 136446978;
        *(v6 + 4) = "tr_controller.cpp";
        *&buf[12] = 1024;
        *(v6 + 14) = 256;
        *&buf[18] = 2082;
        *(v6 + 20) = "open";
        *&buf[28] = 1024;
        *(v6 + 30) = v171;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) enqueued open message to firmware", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v170))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) enqueued open message to firmware", "tr_controller.cpp", 256, "open", *(this + 104));
    }

    v1 = 0;
    goto LABEL_198;
  }

  v175 = ashp::detail::logging::get_log_level(v169);
  if (v175 >= 2)
  {
    v175 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v175)
    {
      v176 = *(this + 104);
      *buf = 136447234;
      *(v6 + 4) = "tr_controller.cpp";
      *(v6 + 14) = 251;
      *&buf[18] = 2082;
      *&buf[12] = 1024;
      *(v6 + 20) = "open";
      *&buf[28] = 1024;
      *(v6 + 30) = v176;
      *&buf[34] = 1024;
      *&buf[36] = v1;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) open message failed 0x%x", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(v175))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) open message failed 0x%x", "tr_controller.cpp", 251, "open", *(this + 104), v1);
  }

LABEL_196:
  ashp::unsafe_storage<ashp::acipc::transfer_queue>::reset(this + 146);
  if (*(this + 1160) == 1)
  {
    *(this + 1160) = 0;
  }

LABEL_198:
  ashp::deferred_action<ashp::acipc::tr_controller::open(void)::$_4>::~deferred_action(&v326, v172, v173, v174);
LABEL_199:
  os_unfair_lock_unlock(this + 4);
  os_unfair_lock_unlock(this + 36);
  v177 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_23EC919D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  ashp::unsafe_storage<ashp::acipc::transfer_queue>::reset((v44 + 1168));
  if (*(v44 + 1160) == 1)
  {
    *(v44 + 1160) = 0;
  }

  ashp::deferred_action<ashp::acipc::tr_controller::open(void)::$_4>::~deferred_action(&a44, v46, v47, v48);
  os_unfair_lock_unlock((v44 + 16));
  os_unfair_lock_unlock((v44 + 144));
  _Unwind_Resume(a1);
}

void ashp::acipc::tr_controller::open(void)::$_6::operator()<unsigned short>(ashp::detail::logging *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v3 = *a1;
      *buf = 136446978;
      v6 = "tr_controller.cpp";
      v7 = 1024;
      v8 = 186;
      v9 = 2082;
      v10 = "open";
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) failed to create mapped memory", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) failed to create mapped memory", "tr_controller.cpp", 186, "open", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 8) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0x77, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0x77, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void sub_23EC91F18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v4 + 146);
  ashp::intrusive_list_link<ashp::devmem_mapping>::~intrusive_list_link(v7, v9, v10, v11);
  ashp::owning_wrapper<ashp::device_transport::memory_mapping *,(decltype(nullptr))0,ashp::polymorphic_deleter<ashp::device_transport::memory_mapping>>::~owning_wrapper(v5);
  ashp::refcounted_ptr<ashp::memory_descriptor,ashp::default_refcount_policy<ashp::memory_descriptor,void>::policy>::reset(v6);
  ashp::refcounted_ptr<ashp::memory_descriptor,ashp::default_refcount_policy<ashp::memory_descriptor,void>::policy>::reset(va);
  MEMORY[0x23EF204E0](v2, v3);
  _Unwind_Resume(a1);
}

mach_port_name_t *ashp::refcounted_ptr<ashp::memory_descriptor,ashp::default_refcount_policy<ashp::memory_descriptor,void>::policy>::reset(mach_port_name_t *result)
{
  if (*result)
  {
    v1 = result;
    result = mach_port_mod_refs(*MEMORY[0x277D85F48], *result, 0, -1);
    *v1 = 0;
  }

  return result;
}

uint64_t ashp::optional<ashp::acipc::tr_ring,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 32) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::acipc::tr_controller::open(void)::$_13::operator()<unsigned short>(ashp::detail::logging *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v3 = *a1;
      *buf = 136446978;
      v6 = "tr_controller.cpp";
      v7 = 1024;
      v8 = 219;
      v9 = 2082;
      v10 = "open";
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) open client data invalid", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) open client data invalid", "tr_controller.cpp", 219, "open", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void *ashp::optional<unsigned long long,ashp::optional_sentinel<18446744073709551615ull,false>>::value(void *result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*result == -1)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0x77, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0x77, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

_BYTE *ashp::deferred_action<ashp::acipc::tr_controller::open(void)::$_4>::~deferred_action(_BYTE *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a1[8] == 1)
  {
    v5 = *a1;
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset((*a1 + 1120), a2, a3, a4);
    v12[1] = 0;
    v12[2] = 0x200000000;
    v12[0] = 0;
    ashp::buffer_mapping::operator=(v5 + 1096, v12, v6, v7);
    ashp::buffer_mapping::~buffer_mapping(v12, v8, v9, v10);
    if (a1[8] == 1)
    {
      a1[8] = 0;
    }
  }

  return a1;
}

atomic_ullong *ashp::unsafe_storage<ashp::acipc::transfer_queue>::reset(atomic_ullong *result)
{
  if (*(result + 176) == 1)
  {
    v2 = result;
    *(result + 176) = 0;
    ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(result + 18);

    return ashp::detail::dynamic_array::storage<ashp::acipc::transfer_queue::transfer>::~storage(v2 + 4, v3, v4, v5, v6);
  }

  return result;
}

uint64_t ashp::acipc::tr_controller::close(os_unfair_lock_s *this)
{
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 36);
  os_unfair_lock_lock(this + 4);
  if ((this[158]._os_unfair_lock_opaque & 1) == 0)
  {
    v6 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x109, "close", v3);
    _os_crash();
    __break(1u);
    goto LABEL_30;
  }

  if (LOBYTE(this[8]._os_unfair_lock_opaque) != 1)
  {
    v7 = ashp::acipc::ring_controller::compute_state(&this[162]);
    if (v7 <= 7)
    {
      if (((1 << v7) & 0x2C) != 0)
      {
        log_level = ashp::detail::logging::get_log_level(v7);
        if (log_level >= 4)
        {
          log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (log_level)
          {
            os_unfair_lock_opaque_low = LOWORD(this[52]._os_unfair_lock_opaque);
            *buf = 136446978;
            v23 = "tr_controller.cpp";
            v24 = 1024;
            v25 = 281;
            v26 = 2082;
            v27 = "close";
            v28 = 1024;
            v29 = os_unfair_lock_opaque_low;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) sending close message", buf, 0x22u);
          }
        }

        if (ashp::detail::logging::get_log_level(log_level))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) sending close message", "tr_controller.cpp", 281, "close", LOWORD(this[52]._os_unfair_lock_opaque));
        }

        os_unfair_lock_unlock(this + 4);
        v10 = *&this[6]._os_unfair_lock_opaque;
        ashp::optional<ashp::acipc::ring_manager,void>::value(&v10[1066], v11, v12, v13);
        ashp::acipc::ring_manager::close_tr(v10 + 1066, this, v14, v15, v16);
        os_unfair_lock_lock(this + 4);
        v18 = ashp::detail::logging::get_log_level(v17);
        if (v18 >= 3)
        {
          v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            v19 = LOWORD(this[52]._os_unfair_lock_opaque);
            *buf = 136446978;
            v23 = "tr_controller.cpp";
            v24 = 1024;
            v25 = 285;
            v26 = 2082;
            v27 = "close";
            v28 = 1024;
            v29 = v19;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) close complete", buf, 0x22u);
          }
        }

        if (ashp::detail::logging::get_log_level(v18))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) close complete", "tr_controller.cpp", 285, "close", LOWORD(this[52]._os_unfair_lock_opaque));
        }
      }

      else if (((1 << v7) & 0xD0) == 0)
      {
        goto LABEL_12;
      }

      v6 = 0;
      goto LABEL_28;
    }

LABEL_12:
    v6 = 3758097112;
    goto LABEL_28;
  }

  v4 = ashp::detail::logging::get_log_level(v2);
  if (v4 >= 2)
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v5 = LOWORD(this[52]._os_unfair_lock_opaque);
      *buf = 136446978;
      v23 = "tr_controller.cpp";
      v24 = 1024;
      v25 = 266;
      v26 = 2082;
      v27 = "close";
      v28 = 1024;
      v29 = v5;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
    }
  }

  v6 = 3758097088;
  if (ashp::detail::logging::get_log_level(v4))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 266, "close", LOWORD(this[52]._os_unfair_lock_opaque));
      goto LABEL_28;
    }

LABEL_30:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

LABEL_28:
  os_unfair_lock_unlock(this + 4);
  os_unfair_lock_unlock(this + 36);
  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_23EC926B8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 4);
  os_unfair_lock_unlock(v1 + 36);
  _Unwind_Resume(a1);
}

void ashp::acipc::tr_controller::sync(ashp::acipc::tr_controller *this, char a2)
{
  v215 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 4);
  if ((*(this + 632) & 1) == 0)
  {
LABEL_121:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x126, "sync", v6);
    _os_crash();
    __break(1u);
LABEL_122:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0xCF, "flush_queued_transfers", v48);
    _os_crash();
    __break(1u);
LABEL_123:
    ashp::detail::control_flow::log_guard_else_failure("tr_ring.cpp", 0x1F, "enqueue_transfer", v60);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: size is too big", "tr_ring.cpp", 0x1F, "enqueue_transfer", v187);
    _os_crash();
    __break(1u);
    goto LABEL_124;
  }

  if (*(this + 32) != 1)
  {
    if ((*(this + 665) & 1) == 0)
    {
      log_level = ashp::detail::logging::get_log_level(v5);
      if (log_level >= 2)
      {
        log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (log_level)
        {
          v25 = *(this + 104);
          *buf = 136446978;
          *&buf[4] = "tr_controller.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 296;
          *&buf[18] = 2082;
          *&buf[20] = "sync";
          *&buf[28] = 1024;
          *&buf[30] = v25;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is not open", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(log_level))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
LABEL_129:
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is not open", "tr_controller.cpp", 296, "sync", *(this + 104));
      }

      goto LABEL_112;
    }

    if ((a2 & 1) == 0)
    {
      goto LABEL_51;
    }

    os_unfair_lock_assert_owner(this + 4);
    if (*(this + 665) != 1 || (*(this + 660) & 1) != 0)
    {
      goto LABEL_51;
    }

    ashp::optional<ashp::acipc::tr_ring,void>::value(this + 1128, v9, v10, v11);
    v197 = *(this + 569);
    v12 = *(this + 104);
    ashp::optional<ashp::acipc::transfer_queue,void>::value(this + 1168, v13, v14, v15);
    if (*(this + 615))
    {
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(this + 616, v16, v17, v18);
      v21 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, *(this + 616), v19, v20);
      *buf = -1;
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(buf, *(v21 + 44), v22, v23);
    }

    ashp::detail::logging::ktrace_helper::ktrace_helper(&v204, 102842564);
    ashp::optional<ashp::acipc::transfer_queue,void>::value(this + 1168, v26, v27, v28);
    v29 = ashp::detail::logging::ktrace_helper::ktrace_helper(buf, 102842628);
    ashp::detail::logging::ktrace_helper::~ktrace_helper(v29);
    if (*(this + 615))
    {
      if (*(this + 670))
      {
        goto LABEL_131;
      }

      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(this + 616, v30, v31, v32);
      v33 = *(this + 616);
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(this + 617, v34, v35, v36);
      v196 = *(this + 617);
      v213[0] = -1;
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(v213, v33, v37, v38);
      v195 = v33;
      if (v213[0] != -1)
      {
        v198 = (this + 1312);
        do
        {
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(v213, v39, v40, v41);
          v44 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, v213[0], v42, v43);
          if (*v44 != 1)
          {
            goto LABEL_122;
          }

          v49 = *(this + 147);
          v50 = *(v44 + 44);
          v51 = *(v44 + 49);
          v2 = *(v44 + 48);
          v52 = *(v44 + 40);
          v53 = *(v44 + 32);
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(v213, v45, v46, v47);
          if (*v198)
          {
            __src = ashp::dynamic_array<unsigned char>::operator[](v198, (*(this + 298) + *(this + 297)) * v213[0], v55, v56);
          }

          else
          {
            __src = 0;
          }

          v57 = *(this + 297);
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(v213, v54, v55, v56);
          if (*v198)
          {
            v199 = ashp::dynamic_array<unsigned char>::operator[](v198, *(this + 297) + (*(this + 298) + *(this + 297)) * v213[0], v59, v60);
          }

          else
          {
            v199 = 0;
          }

          if (HIBYTE(v52))
          {
            goto LABEL_123;
          }

          tail_index = *(this + 298);
          v61 = *(v49 + 10);
          ashp::ring_index_pair<unsigned short>::advance_head_index((v49 + 8), v58, v59, v60);
          v67 = ashp::acipc::tr_ring::get_entry_at_index(v49, v61, v62, v63) + *(v49 + 16);
          *v67 = v51 | (v52 << 8);
          *(v67 + 4) = v53;
          *(v67 + 12) = v50 | (*(v67 + 15) << 24) | (v2 << 16);
          v68 = *(v49 + 16);
          if (v68)
          {
            if (v57 != v68)
            {
              ashp::detail::control_flow::log_guard_else_failure("tr_ring.cpp", 0x31, "enqueue_transfer", v66);
              ashp::detail::base::log_pre_crash_message("BUG in Airship: wrong header length", "tr_ring.cpp", 0x31, "enqueue_transfer", v188);
              _os_crash();
              __break(1u);
LABEL_126:
              ashp::detail::control_flow::log_guard_else_failure("tr_ring.cpp", 0x32, "enqueue_transfer", v66);
              ashp::detail::base::log_pre_crash_message("BUG in Airship: header is NULL", "tr_ring.cpp", 0x32, "enqueue_transfer", v189);
              _os_crash();
              __break(1u);
LABEL_127:
              ashp::detail::control_flow::log_guard_else_failure("tr_ring.cpp", 0x37, "enqueue_transfer", v66);
              ashp::detail::base::log_pre_crash_message("BUG in Airship: wrong footer length", "tr_ring.cpp", 0x37, "enqueue_transfer", v190);
              _os_crash();
              __break(1u);
LABEL_128:
              ashp::detail::control_flow::log_guard_else_failure("tr_ring.cpp", 0x38, "enqueue_transfer", v66);
              ashp::detail::base::log_pre_crash_message("BUG in Airship: footer is NULL", "tr_ring.cpp", 0x38, "enqueue_transfer", v191);
              _os_crash();
              __break(1u);
              goto LABEL_129;
            }

            if (!__src)
            {
              goto LABEL_126;
            }

            entry_at_index = ashp::acipc::tr_ring::get_entry_at_index(v49, v61, v65, v66);
            memcpy(entry_at_index, __src, v57);
          }

          v70 = *(v49 + 20);
          if (v70)
          {
            if (tail_index != v70)
            {
              goto LABEL_127;
            }

            if (!v199)
            {
              goto LABEL_128;
            }

            v71 = ashp::acipc::tr_ring::get_entry_at_index(v49, v61, v65, v66);
            memcpy((v71 + *(v49 + 16) + 16), v199, tail_index);
          }

          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(v213, v64, v65, v66);
          v213[0] = ashp::acipc::transfer_queue::get_next_transfer_in_queue(this + 1168, 1u, v213[0], v72);
        }

        while (v213[0] != -1);
      }

      ashp::acipc::transfer_queue::move_transfers(this + 1168, v195, v196, 1u, 2u, *(this + 620));
    }

    ashp::optional<ashp::acipc::tr_ring,void>::value(this + 1128, v30, v31, v32);
    v77 = *(this + 569);
    if (v77 == v197)
    {
LABEL_49:
      *(&v204 + 1) = *(this + 104);
      *&v205 = v77;
LABEL_50:
      ashp::detail::logging::ktrace_helper::~ktrace_helper(&v204);
LABEL_51:
      v81 = a2;
      if ((a2 & 2) == 0)
      {
LABEL_106:
        if ((v81 & 4) != 0)
        {
          os_unfair_lock_lock(this + 37);
          os_unfair_lock_lock(this + 206);
          buf[8] = 0;
          if (*(this + 864) == 1)
          {
            *buf = *(this + 107);
            buf[8] = 1;
            v166 = *buf & 0xFFFFFFFB;
          }

          else
          {
            v166 = 0;
          }

          os_unfair_lock_unlock(this + 206);
          ashp::optional<unsigned long long,void>::value(buf, v167, v168, v169);
          ashp::monitor_target::update_value(this + 206, v166);
          os_unfair_lock_unlock(this + 37);
          os_unfair_lock_assert_owner(this + 4);
          ashp::optional<ashp::acipc::transfer_queue,void>::value(this + 1168, v170, v171, v172);
          v173 = ashp::detail::logging::ktrace_helper::ktrace_helper(buf, 102842632);
          ashp::detail::logging::ktrace_helper::~ktrace_helper(v173);
          if (*(this + 624))
          {
            ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(this + 625, v174, v175, v176);
            v177 = *(this + 625);
            ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(this + 626, v178, v179, v180);
            ashp::acipc::transfer_queue::move_transfers(this + 1168, v177, *(this + 626), 4u, 5u, *(this + 629));
          }
        }

        goto LABEL_112;
      }

      os_unfair_lock_lock(this + 37);
      os_unfair_lock_lock(this + 206);
      buf[8] = 0;
      if (*(this + 864) == 1)
      {
        *buf = *(this + 107);
        buf[8] = 1;
      }

      os_unfair_lock_unlock(this + 206);
      ashp::optional<unsigned long long,void>::value(buf, v82, v83, v84);
      ashp::monitor_target::update_value(this + 206, *buf & 0xFFFFFFFD);
      os_unfair_lock_unlock(this + 37);
      v2 = (this + 208);
      v85 = *(this + 104);
      ashp::detail::logging::ktrace_helper::ktrace_helper(v203, 102842568);
      ashp::detail::logging::ktrace_helper::~ktrace_helper(v203);
      os_unfair_lock_assert_owner(this + 4);
      if ((*(this + 665) & 1) == 0)
      {
        v160 = ashp::detail::logging::get_log_level(v86);
        if (v160 >= 2)
        {
          v160 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v160)
          {
            v161 = *v2;
            *buf = 136446978;
            *&buf[4] = "tr_controller.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 812;
            *&buf[18] = 2082;
            *&buf[20] = "sync_action_process_ti_update";
            *&buf[28] = 1024;
            *&buf[30] = v161;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is not open", buf, 0x22u);
          }
        }

        if (ashp::detail::logging::get_log_level(v160))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is not open", "tr_controller.cpp", 812, "sync_action_process_ti_update", *v2);
        }

        goto LABEL_105;
      }

      if (*(this + 1456))
      {
LABEL_105:
        v81 = a2;
        goto LABEL_106;
      }

      __srca = (this + 208);
      while (1)
      {
        tail_index = ashp::acipc::ring_controller::read_tail_index((this + 648), v87, v88, v89, v90);
        ashp::optional<ashp::acipc::tr_ring,void>::value(this + 1128, v91, v92, v93);
        if (tail_index == *(this + 570))
        {
          v165 = ashp::acipc::tr_controller::compute_free_space(this);
          ashp::monitor_target::update_value(this + 218, v165);
          goto LABEL_105;
        }

        v97 = ashp::optional<ashp::acipc::tr_ring,void>::value(this + 1128, v94, v95, v96);
        v101 = *(this + 568);
        if (v101 <= tail_index)
        {
          break;
        }

        v102 = *(this + 570);
        if (((tail_index - v102) & 0xFFFF0000) != 0)
        {
          v103 = *(this + 568);
        }

        else
        {
          v103 = 0;
        }

        v104 = (v103 + tail_index - v102);
        v105 = *(this + 569) - v102;
        if ((v105 & 0xFFFF0000) == 0)
        {
          LOWORD(v101) = 0;
        }

        if (v104 > (v101 + v105))
        {
          break;
        }

        if (*(this + 289) == 1)
        {
          if (*(this + 1457))
          {
            goto LABEL_105;
          }

          __dmb(9u);
          v106 = *v2;
          v107 = ashp::detail::logging::ktrace_helper::ktrace_helper(v213, 102842572);
          ashp::detail::logging::ktrace_helper::~ktrace_helper(v107);
          os_unfair_lock_assert_owner(this + 4);
          while (1)
          {
            ashp::optional<ashp::acipc::tr_ring,void>::value(this + 1128, v108, v109, v110);
            v114 = *(this + 570);
            if (v114 == tail_index)
            {
              break;
            }

            v209 = 0;
            v210 = 0;
            ashp::optional<ashp::acipc::tr_ring,void>::value(this + 1128, v111, v112, v113);
            ashp::optional<ashp::acipc::tr_ring,void>::value(this + 1128, v115, v116, v117);
            v120 = *(this + 570);
            if (*(this + 568) <= v120 || *(this + 569) == v120)
            {
              ashp::detail::control_flow::log_guard_else_failure("tr_ring.cpp", 0x41, "get_inplace_completion", v119);
              ashp::detail::base::log_pre_crash_message("BUG in Airship: requested TD element is inactive", "tr_ring.cpp", 0x41, "get_inplace_completion", v186);
              _os_crash();
              __break(1u);
              goto LABEL_121;
            }

            v121 = (ashp::acipc::tr_ring::get_entry_at_index((this + 1128), *(this + 570), v118, v119) + *(this + 286));
            v122 = *v121;
            LOBYTE(v209) = *v121;
            v123 = v121[3];
            WORD1(v209) = v123;
            BYTE4(v209) = HIBYTE(v123);
            v124 = v122 >> 8;
            LODWORD(v210) = v122 >> 8;
            BYTE4(v210) = BYTE2(v123);
            v127 = ashp::acipc::tr_ring::get_entry_at_index((this + 1128), v120, v125, v126);
            v211 = v127;
            v212 = ashp::acipc::tr_ring::get_entry_at_index((this + 1128), v120, v128, v129) + *(this + 286) + 16;
            memset(&buf[24], 0, 24);
            buf[0] = v122;
            buf[1] = HIBYTE(v123);
            *&buf[2] = v123;
            *&buf[4] = HIBYTE(v123) & 1 | ((HIBYTE(v123) & 0xE) == 8);
            *&buf[6] = -1;
            *&buf[8] = v122 >> 8;
            *&buf[12] = 0;
            *&buf[16] = v127;
            *&buf[24] = *(this + 54);
            *&buf[32] = v212;
            *&buf[40] = *(this + 134);
            v130 = *(this + 104);
            v131 = mach_continuous_time();
            v207[0] = this;
            v207[1] = buf;
            v208 = 1;
            ashp::optional<ashp::acipc::transfer_queue,void>::value(this + 1168, v132, v133, v134);
            v204 = *buf;
            v205 = *&buf[16];
            v206 = *&buf[32];
            if ((ashp::acipc::transfer_queue::complete_transfer(this + 1168, &v204, v135, v136) & 1) == 0)
            {
              ashp::detail::control_flow::log_guard_else_failure("tr_controller.cpp", 0x38C, "process_inplace_completions", v137);
              ashp::acipc::tr_controller::process_inplace_completions(unsigned short)::$_1::operator()<unsigned short,unsigned short>(__srca, &v209 + 1);
              ashp::deferred_action<ashp::acipc::tr_controller::process_inplace_completions(unsigned short)::$_0>::~deferred_action(v207);
              break;
            }

            if (v208 == 1)
            {
              v208 = 0;
            }

            os_unfair_lock_lock(this + 384);
            if (*(this + 385))
            {
              v140 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::operator[](this + 195, *(this + 386), v138, v139);
              *v140 = v130;
              *(v140 + 2) = v123;
              *(v140 + 4) = v124;
              *(v140 + 8) = v131;
              v141 = *(this + 386);
              v142 = __CFADD__(v141, 1);
              v143 = v141 + 1;
              if (v142)
              {
                v144 = *(this + 385);
              }

              else
              {
                v144 = 0;
              }

              *(this + 386) = (v143 - v144) % *(this + 385);
            }

            os_unfair_lock_unlock(this + 384);
            ashp::optional<ashp::acipc::tr_ring,void>::value(this + 1128, v145, v146, v147);
            ashp::optional<ashp::acipc::tr_ring,void>::value(this + 1128, v148, v149, v150);
            v151 = *(this + 568);
            ashp::optional<ashp::acipc::tr_ring,void>::value(this + 1128, v152, v153, v154);
            v157 = *(this + 570) % v151;
            if (v151 != 1)
            {
              LOWORD(v157) = v157 + 1;
            }

            ashp::ring_index_pair<unsigned short>::update_tail_index(this + 568, v157 % v151, v155, v156);
            ashp::deferred_action<ashp::acipc::tr_controller::process_inplace_completions(unsigned short)::$_0>::~deferred_action(v207);
          }

          ashp::optional<ashp::acipc::transfer_queue,void>::value(this + 1168, v111, v112, v113);
          v2 = (this + 208);
          if (*(this + 624))
          {
            ashp::acipc::tr_controller::set_sync_flags(this, 4u);
          }

          if (v114 != tail_index)
          {
            v182 = ashp::optional<ashp::acipc::tr_ring,void>::value(this + 1128, v87, v88, v89);
            LODWORD(v183) = *(this + 570);
            v184 = ashp::detail::logging::get_log_level(v182);
            if (v184 >= 2)
            {
              v184 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v184)
              {
                v185 = *__srca;
                *buf = 136447234;
                *&buf[4] = "tr_controller.cpp";
                *&buf[14] = 838;
                *&buf[18] = 2082;
                *&buf[12] = 1024;
                *&buf[20] = "sync_action_process_ti_update";
                *&buf[28] = 1024;
                *&buf[30] = v185;
                *&buf[34] = 1024;
                *&buf[36] = v183;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) invalid in-place completion at idx=%hu", buf, 0x28u);
              }
            }

            if (!ashp::detail::logging::get_log_level(v184))
            {
              goto LABEL_119;
            }

            if (airship_platform_get_global_logger::once != -1)
            {
              goto LABEL_141;
            }

            goto LABEL_118;
          }
        }

        else
        {
          ashp::optional<ashp::acipc::tr_ring,void>::value(this + 1128, v98, v99, v100);
          ashp::ring_index_pair<unsigned short>::update_tail_index(this + 568, tail_index, v158, v159);
        }

        if (*(this + 744) == 1)
        {
          ashp::acipc::ring_controller::arm_index_signal((this + 648), tail_index, v88, v89, v90);
        }
      }

      v162 = ashp::detail::logging::get_log_level(v97);
      if (v162 >= 2)
      {
        v162 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v162)
        {
          v163 = *v2;
          *buf = 136447234;
          *&buf[4] = "tr_controller.cpp";
          *&buf[14] = 823;
          *&buf[18] = 2082;
          *&buf[12] = 1024;
          *&buf[20] = "sync_action_process_ti_update";
          *&buf[28] = 1024;
          *&buf[30] = v163;
          *&buf[34] = 1024;
          *&buf[36] = tail_index;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) invalid ti: %hu", buf, 0x28u);
        }
      }

      if (!ashp::detail::logging::get_log_level(v162))
      {
        goto LABEL_102;
      }

      if (airship_platform_get_global_logger::once != -1)
      {
        goto LABEL_139;
      }

      goto LABEL_101;
    }

    __dmb(0xBu);
    if (*(this + 665) == 1 && *(this + 660) != 1)
    {
      if (*(this + 738) == 1)
      {
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0xA7, "write_head_index", v76);
        _os_crash();
        __break(1u);
LABEL_139:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_101:
        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) invalid ti: %hu", "tr_controller.cpp", 823, "sync_action_process_ti_update", *v2, tail_index);
LABEL_102:
        v164 = 64;
LABEL_103:
        os_unfair_lock_assert_owner(this + 4);
        ashp::acipc::acipc_driver::raise_ipc_error(*(this + 3), v164);
        *(this + 1456) = 1;
        goto LABEL_105;
      }

      **ashp::optional<ashp::acipc::tr_ring,void>::value(this + 672, v73, v74, v75) = v77;
      *(this + 95) = mach_continuous_time();
      if (*(this + 320) == 1)
      {
        __dmb(0xBu);
        v78 = ashp::acipc::doorbell_participant::schedule_doorbell_update((this + 1352), *(this + 150), *(this + 151), v77);
        if (!ashp::detail::control_flow::check_err_with_debug(v78, "tr_controller.cpp", 0x31F, "sync_action_flush_pending_transfers", v79))
        {
          v183 = "BUG in Airship: ";
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x31F, "sync_action_flush_pending_transfers", v80);
          _os_crash();
          __break(1u);
LABEL_141:
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_118:
          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) invalid in-place completion at idx=%hu", "tr_controller.cpp", 838, "sync_action_process_ti_update", *v2, v183);
LABEL_119:
          v164 = 128;
          goto LABEL_103;
        }
      }

      goto LABEL_49;
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0xA6, "write_head_index", v76);
    _os_crash();
    __break(1u);
LABEL_131:
    ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0xC8, "flush_queued_transfers", v32);
    v193 = ashp::detail::logging::get_log_level(v192);
    if (v193 >= 2)
    {
      v193 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v193)
      {
        v194 = *(this + 104);
        *buf = 136446978;
        *&buf[4] = "tr_controller.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 786;
        *&buf[18] = 2082;
        *&buf[20] = "sync_action_flush_pending_transfers";
        *&buf[28] = 1024;
        *&buf[30] = v194;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) transfer flush failed", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v193))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) transfer flush failed", "tr_controller.cpp", 786, "sync_action_flush_pending_transfers", *(this + 104));
    }

    goto LABEL_50;
  }

  v7 = ashp::detail::logging::get_log_level(v5);
  if (v7 >= 2)
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      v8 = *(this + 104);
      *buf = 136446978;
      *&buf[4] = "tr_controller.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 295;
      *&buf[18] = 2082;
      *&buf[20] = "sync";
      *&buf[28] = 1024;
      *&buf[30] = v8;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v7))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 295, "sync", *(this + 104));
      goto LABEL_112;
    }

LABEL_124:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

LABEL_112:
  os_unfair_lock_unlock(this + 4);
  v181 = *MEMORY[0x277D85DE8];
}

void sub_23EC93890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  ashp::detail::logging::ktrace_helper::~ktrace_helper(va);
  os_unfair_lock_unlock(v17 + 4);
  _Unwind_Resume(a1);
}

uint64_t ashp::optional<unsigned long long,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 8) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

{
  if ((*(result + 8) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF7, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF7, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::optional<ashp::acipc::transfer_queue,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 176) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

{
  if ((*(result + 176) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF7, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF7, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::acipc::tr_controller::set_sync_flags(os_unfair_lock_s *this, unsigned int a2)
{
  os_unfair_lock_lock(this + 37);
  os_unfair_lock_lock(this + 206);
  v9 = 0;
  if (LOBYTE(this[216]._os_unfair_lock_opaque) == 1)
  {
    v2 = *&this[214]._os_unfair_lock_opaque;
    v8 = v2;
    v9 = 1;
  }

  os_unfair_lock_unlock(this + 206);
  ashp::optional<unsigned long long,void>::value(&v8, v5, v6, v7);
  ashp::monitor_target::update_value(this + 206, v2 | a2);
  os_unfair_lock_unlock(this + 37);
}

unsigned __int16 *ashp::ring_index_pair<unsigned short>::update_tail_index(unsigned __int16 *result, unsigned int a2, uint64_t a3, const char *a4)
{
  v4 = *result;
  if (v4 <= a2)
  {
    goto LABEL_9;
  }

  v5 = result[2];
  v6 = ((a2 - v5) & 0xFFFF0000) != 0 ? *result : 0;
  v7 = (v6 + a2 - v5);
  v8 = result[1] - v5;
  if ((v8 & 0xFFFF0000) == 0)
  {
    LOWORD(v4) = 0;
  }

  if (v7 > (v4 + v8))
  {
LABEL_9:
    ashp::detail::control_flow::log_guard_else_failure("ring_index_pair.hpp", 0x91, "update_tail_index", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: invalid tail index update operation", "ring_index_pair.hpp", 0x91, "update_tail_index", v9);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    result[2] = a2;
  }

  return result;
}

uint64_t ashp::acipc::tr_controller::compute_free_space(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 4);
  if ((this[166]._os_unfair_lock_opaque & 0x100) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x2E7, "compute_free_space", v5);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  if ((this[290]._os_unfair_lock_opaque & 1) == 0)
  {
LABEL_14:
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF7, "value", v4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF7, "value", v16);
    _os_crash();
    __break(1u);
LABEL_15:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x2E9, "compute_free_space", v12);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = HIWORD(this[284]._os_unfair_lock_opaque) - LOWORD(this[285]._os_unfair_lock_opaque);
  if ((v6 & 0xFFFF0000) != 0)
  {
    os_unfair_lock_opaque = this[284]._os_unfair_lock_opaque;
  }

  else
  {
    os_unfair_lock_opaque = 0;
  }

  v8 = (LOWORD(this[284]._os_unfair_lock_opaque) + ~(os_unfair_lock_opaque + v6));
  ashp::optional<ashp::acipc::transfer_queue,void>::value(&this[292], v2, v3, v4);
  v13 = v8 - HIWORD(this[307]._os_unfair_lock_opaque);
  if (v13 != v13)
  {
    goto LABEL_15;
  }

  ashp::optional<ashp::acipc::transfer_queue,void>::value(&this[292], v9, v10, v11);
  if (this[299]._os_unfair_lock_opaque)
  {
    v14 = 0;
  }

  else
  {
    v14 = this[334]._os_unfair_lock_opaque;
  }

  if (v13 >= (LOWORD(this[306]._os_unfair_lock_opaque) - v14))
  {
    return (LOWORD(this[306]._os_unfair_lock_opaque) - v14);
  }

  else
  {
    return v13;
  }
}

void ashp::acipc::tr_controller::process_inplace_completions(unsigned short)::$_1::operator()<unsigned short,unsigned short>(ashp::detail::logging *a1, unsigned __int16 *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v5 = *a1;
      v6 = *a2;
      *buf = 136447234;
      v9 = "tr_controller.cpp";
      v11 = 908;
      v12 = 2082;
      v10 = 1024;
      v13 = "process_inplace_completions";
      v14 = 1024;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) failed to complete transfer tag %hu", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) failed to complete transfer tag %hu", "tr_controller.cpp", 908, "process_inplace_completions", *a1, *a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

ashp::detail::logging *ashp::deferred_action<ashp::acipc::tr_controller::process_inplace_completions(unsigned short)::$_0>::~deferred_action(ashp::detail::logging *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) == 1)
  {
    v2 = *a1;
    v3 = *(*a1 + 1530);
    log_level = ashp::detail::logging::get_log_level(a1);
    if (v3 == 1)
    {
      if (log_level >= 3)
      {
        log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (log_level)
        {
          v5 = *(v2 + 208);
          *buf = 136446978;
          v30 = "tr_controller.cpp";
          v31 = 1024;
          v32 = 888;
          v33 = 2082;
          v34 = "operator()";
          v35 = 1024;
          v36 = v5;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) do not overwrite existing bad tx completion buffer", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(log_level))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) do not overwrite existing bad tx completion buffer", "tr_controller.cpp", 888, "operator()", *(v2 + 208));
      }
    }

    else
    {
      if (log_level >= 3)
      {
        log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (log_level)
        {
          v6 = *(v2 + 208);
          *buf = 136446978;
          v30 = "tr_controller.cpp";
          v31 = 1024;
          v32 = 890;
          v33 = 2082;
          v34 = "operator()";
          v35 = 1024;
          v36 = v6;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) update bad transfer completion", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(log_level))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) update bad transfer completion", "tr_controller.cpp", 890, "operator()", *(v2 + 208));
      }

      *(v2 + 1512) = 0;
      *(v2 + 1520) = 0;
      *(v2 + 1528) = 0;
      *(v2 + 1530) = 1;
      v10 = *(v2 + 208);
      ashp::optional<ashp::acipc::transfer_comp_info,void>::value(v2 + 1512, v7, v8, v9);
      *(v2 + 1512) = v10;
      ashp::optional<ashp::acipc::tr_ring,void>::value(v2 + 1128, v11, v12, v13);
      v14 = *(v2 + 1140);
      ashp::optional<ashp::acipc::transfer_comp_info,void>::value(v2 + 1512, v15, v16, v17);
      *(v2 + 1514) = v14;
      v18 = *(a1 + 1);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v18 + 1);
      v22 = *(v18 + 2);
      v23 = *(v18 + 2);
      ashp::optional<ashp::acipc::transfer_comp_info,void>::value(v2 + 1512, v24, v25, v26);
      *(v2 + 1518) = v19;
      *(v2 + 1519) = v20;
      *(v2 + 1520) = v21;
      *(v2 + 1522) = v22;
      *(v2 + 1524) = -1;
      *(v2 + 1526) = v23;
    }

    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23EC94138(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::operator[](unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1 > a2)
  {
    return a1[2] + 16 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::optional<ashp::acipc::transfer_comp_info,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 18) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::acipc::tr_controller::create_sync_monitor(ashp::acipc::tr_controller *this, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 16));
  if (*(a2 + 32) != 1)
  {
    ashp::acipc::ring_controller::create_monitor(this, (a2 + 648), *(a2 + 24), (a2 + 824));
  }

  ashp::detail::control_flow::log_guard_else_failure("tr_controller.cpp", 0x14C, "create_sync_monitor", v4);
  ashp::acipc::tr_controller::create_sync_monitor(void)::$_0::operator()<unsigned short>((a2 + 208));
  *this = 0;

  os_unfair_lock_unlock((a2 + 16));
}

void ashp::acipc::tr_controller::create_sync_monitor(void)::$_0::operator()<unsigned short>(ashp::detail::logging *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v3 = *a1;
      *buf = 136446978;
      v6 = "tr_controller.cpp";
      v7 = 1024;
      v8 = 332;
      v9 = 2082;
      v10 = "create_sync_monitor";
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 332, "create_sync_monitor", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::tr_controller::update_state_monitor_target(uint64_t a1, unsigned int a2)
{
  os_unfair_lock_assert_owner((a1 + 16));
  if (a2 == 1)
  {
    os_unfair_lock_lock((a1 + 776));
    v9 = 0;
    if (*(a1 + 816) == 1)
    {
      v8 = *(a1 + 808);
      v9 = 1;
      os_unfair_lock_unlock((a1 + 776));
      v6 = 7;
      v7 = 1;
      if ((ashp::operator==<int,0>(&v8, &v6, v4, v5) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 776));
    }

    ashp::monitor_target::update_value((a1 + 776), 0);
  }

LABEL_7:
  ashp::monitor_target::update_value((a1 + 776), a2);
}

uint64_t ashp::operator==<int,0>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 8) != 1)
  {
    return *(a2 + 8) ^ 1u;
  }

  if (!*(a2 + 8))
  {
    return 0;
  }

  v5 = *ashp::optional<unsigned long long,void>::value(a1, a2, a3, a4);
  ashp::optional<unsigned long long,void>::value(a2, v6, v7, v8);
  return v5 == *a2;
}

{
  if (*(a1 + 16) != 1)
  {
    return *(a2 + 16) ^ 1u;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  ashp::optional<ashp::acipc::name_and_selector,void>::value(a1, a2, a3, a4);
  ashp::optional<ashp::acipc::name_and_selector,void>::value(a2, v6, v7, v8);
  v9 = *a2;
  v10 = (*a1 | *a2) == 0;
  if (*a1 && v9)
  {
    v10 = CFStringCompare(*a1, v9, 0) == kCFCompareEqualTo;
  }

  return *(a1 + 8) == *(a2 + 8) && v10;
}

{
  if (*(a1 + 4) != 1)
  {
    return *(a2 + 4) ^ 1u;
  }

  if (!*(a2 + 4))
  {
    return 0;
  }

  v5 = *ashp::optional<unsigned int,void>::value(a1, a2, a3, a4);
  ashp::optional<unsigned int,void>::value(a2, v6, v7, v8);
  return v5 == *a2;
}

uint64_t ashp::acipc::tr_controller::synthesize_reset_completions(ashp::acipc::tr_controller *this)
{
  v99 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 4);
  if ((*(this + 632) & 1) == 0)
  {
    v6 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x183, "synthesize_reset_completions", v3);
    _os_crash();
    __break(1u);
    goto LABEL_71;
  }

  if (*(this + 32) == 1)
  {
    log_level = ashp::detail::logging::get_log_level(v2);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v5 = *(this + 104);
        *buf = 136446978;
        v90 = "tr_controller.cpp";
        v91 = 1024;
        v92 = 388;
        v93 = 2082;
        v94 = "synthesize_reset_completions";
        v95 = 1024;
        v96 = v5;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
      }
    }

    v6 = 3758097088;
    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once == -1)
      {
LABEL_8:
        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 388, "synthesize_reset_completions", *(this + 104));
        goto LABEL_69;
      }

LABEL_71:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      goto LABEL_8;
    }
  }

  else
  {
    v7 = ashp::acipc::ring_controller::compute_state((this + 648));
    if (v7 == 7)
    {
      *(this + 1457) = 1;
      v11 = ashp::optional<ashp::acipc::transfer_queue,void>::value(this + 1168, v8, v9, v10);
      if (*(this + 670))
      {
        --*(this + 670);
        v15 = ashp::detail::logging::get_log_level(v11);
        if (v15 >= 4)
        {
          v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v15)
          {
            v16 = *(this + 584);
            *buf = 136446978;
            v90 = "transfer_queue.cpp";
            v91 = 1024;
            v92 = 639;
            v93 = 2082;
            v94 = "synthesize_reset_completions";
            v95 = 1024;
            v96 = v16;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) completing chain", buf, 0x22u);
          }
        }

        if (ashp::detail::logging::get_log_level(v15))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) completing chain", "transfer_queue.cpp", 639, "synthesize_reset_completions", *(this + 584));
        }

        v11 = ashp::acipc::transfer_queue::finish_queued_partial_chain((this + 1168), v17, v18, v19);
      }

      if (*(this + 615))
      {
        *(this + 1342) = 1;
        v20 = ashp::detail::logging::get_log_level(v11);
        if (v20 >= 4)
        {
          v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v20)
          {
            v21 = *(this + 584);
            *buf = 136446978;
            v90 = "transfer_queue.cpp";
            v91 = 1024;
            v92 = 645;
            v93 = 2082;
            v94 = "synthesize_reset_completions";
            v95 = 1024;
            v96 = v21;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) moving queued transfers into pending state", buf, 0x22u);
          }
        }

        if (ashp::detail::logging::get_log_level(v20))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) moving queued transfers into pending state", "transfer_queue.cpp", 645, "synthesize_reset_completions", *(this + 584));
        }

        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(this + 616, v22, v23, v24);
        v25 = *(this + 616);
        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(this + 617, v26, v27, v28);
        ashp::acipc::transfer_queue::move_transfers(this + 1168, v25, *(this + 617), 1u, 2u, *(this + 620));
      }

      v88 = *(this + 619);
      if (v88 != 0xFFFF)
      {
        v29 = (this + 1312);
        do
        {
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v88, v12, v13, v14);
          v32 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, v88, v30, v31);
          v36 = ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v88, v33, v34, v35);
          v37 = ashp::detail::logging::get_log_level(v36);
          if (v37 >= 4)
          {
            v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v37)
            {
              v38 = *(this + 584);
              *buf = 136447234;
              v90 = "transfer_queue.cpp";
              v91 = 1024;
              v92 = 654;
              v93 = 2082;
              v94 = "synthesize_reset_completions";
              v95 = 1024;
              v96 = v38;
              v97 = 1024;
              v98 = v88;
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) completing transfer tag %hu", buf, 0x28u);
            }
          }

          if (ashp::detail::logging::get_log_level(v37))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) completing transfer tag %hu", "transfer_queue.cpp", 654, "synthesize_reset_completions", *(this + 584), v88);
          }

          if (*ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, *(v32 + 46), v39, v40) == 3)
          {
            v45 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, *(v32 + 46), v42, v43);
            v48 = *(v45 + 56);
            *(v45 + 52) = 4;
            if ((v48 & 1) == 0)
            {
              *(v45 + 56) = 1;
            }

            *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, *(v32 + 46), v46, v47) + 62) = -1;
            v49 = *(v32 + 46);
            ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value((v32 + 6), v50, v51, v52);
            ashp::acipc::transfer_queue::move_transfers(this + 1168, v49, *(v32 + 6), 3u, 4u, *(this + 626));
          }

          ashp::device_accessible_memory::release_obj((v32 + 8), v41, v42, v43, v44);
          *(v32 + 16) = 0;
          v56 = *(v32 + 56);
          *(v32 + 52) = 4;
          if ((v56 & 1) == 0)
          {
            *(v32 + 56) = 1;
          }

          *(v32 + 60) = -65536;
          *(v32 + 64) = 0;
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v88, v53, v54, v55);
          if (*v29)
          {
            v60 = ashp::dynamic_array<unsigned char>::operator[](this + 164, (*(this + 298) + *(this + 297)) * v88, v57, v58);
          }

          else
          {
            v60 = 0;
          }

          ashp::copy_and_zerofill(v60, *(this + 297), 0, 0, v59);
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v88, v61, v62, v63);
          if (*v29)
          {
            v67 = ashp::dynamic_array<unsigned char>::operator[](this + 164, *(this + 297) + (*(this + 298) + *(this + 297)) * v88, v64, v65);
          }

          else
          {
            v67 = 0;
          }

          ashp::copy_and_zerofill(v67, *(this + 298), 0, 0, v66);
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v88, v68, v69, v70);
          next_transfer_in_queue = ashp::acipc::transfer_queue::get_next_transfer_in_queue(this + 1168, 2u, v88, v71);
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v88, v73, v74, v75);
          v76 = v88;
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(&v88, v77, v78, v79);
          ashp::acipc::transfer_queue::move_transfers(this + 1168, v76, v88, 2u, 4u, *(this + 626));
          v88 = next_transfer_in_queue;
        }

        while (next_transfer_in_queue != 0xFFFF);
      }

      v83 = ashp::optional<ashp::acipc::transfer_queue,void>::value(this + 1168, v12, v13, v14);
      if (*(this + 624))
      {
        ashp::acipc::tr_controller::set_sync_flags(this, 4u);
      }

      v84 = ashp::detail::logging::get_log_level(v83);
      if (v84 >= 4)
      {
        v84 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v84)
        {
          v85 = *(this + 104);
          *buf = 136446978;
          v90 = "tr_controller.cpp";
          v91 = 1024;
          v92 = 398;
          v93 = 2082;
          v94 = "synthesize_reset_completions";
          v95 = 1024;
          v96 = v85;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) completions synthesized", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v84))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) completions synthesized", "tr_controller.cpp", 398, "synthesize_reset_completions", *(this + 104));
      }

      v6 = 0;
    }

    else
    {
      v80 = v7;
      v81 = ashp::detail::logging::get_log_level(v7);
      if (v81 >= 2)
      {
        v81 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v81)
        {
          v82 = *(this + 104);
          *buf = 136447234;
          v90 = "tr_controller.cpp";
          v92 = 390;
          v93 = 2082;
          v91 = 1024;
          v94 = "synthesize_reset_completions";
          v95 = 1024;
          v96 = v82;
          v97 = 1024;
          v98 = v80;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) invalid state %u", buf, 0x28u);
        }
      }

      if (ashp::detail::logging::get_log_level(v81))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) invalid state %u", "tr_controller.cpp", 390, "synthesize_reset_completions", *(this + 104), v80);
        v6 = 3758097112;
      }

      else
      {
        v6 = 3758097112;
      }
    }
  }

LABEL_69:
  os_unfair_lock_unlock(this + 4);
  v86 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t ashp::acipc::tr_controller::enqueue_transfer(uint64_t a1, unsigned __int16 *a2)
{
  v95 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 16));
  if ((*(a1 + 632) & 1) == 0)
  {
    v6 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x196, "enqueue_transfer", v5);
    _os_crash();
    __break(1u);
LABEL_78:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_8:
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 407, "enqueue_transfer", *(a1 + 208));
LABEL_76:
    os_unfair_lock_unlock((a1 + 16));
    v68 = *MEMORY[0x277D85DE8];
    return v6;
  }

  v6 = 3758097090;
  if (*(a1 + 32) == 1)
  {
    log_level = ashp::detail::logging::get_log_level(v4);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v8 = *(a1 + 208);
        *buf = 136446978;
        *&buf[4] = "tr_controller.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 407;
        v89 = 2082;
        v90 = "enqueue_transfer";
        v91 = 1024;
        v92 = v8;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
      }
    }

    v6 = 3758097088;
    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_76;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_78;
  }

  if (*(a1 + 665) != 1)
  {
    v6 = 3758097112;
    goto LABEL_76;
  }

  v9 = ashp::acipc::tr_controller::compute_free_space(a1);
  if (!v9)
  {
    v34 = ashp::detail::logging::get_log_level(v9);
    if (v34 >= 2)
    {
      v34 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v34)
      {
        v35 = *(a1 + 208);
        *buf = 136446978;
        *&buf[4] = "tr_controller.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 409;
        v89 = 2082;
        v90 = "enqueue_transfer";
        v91 = 1024;
        v92 = v35;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) no free space available", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v34))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) no free space available", "tr_controller.cpp", 409, "enqueue_transfer", *(a1 + 208));
    }

    v6 = 3758097115;
    goto LABEL_76;
  }

  ashp::optional<ashp::acipc::transfer_queue,void>::value(a1 + 1168, v10, v11, v12);
  v13 = *a2;
  v14 = *(a2 + 2);
  v79 = v14;
  v15 = *(a2 + 2);
  v80 = v15;
  ashp::device_accessible_memory::retain_obj(&v79, v16, v17, v18, v19);
  v77 = *(a2 + 3);
  v81 = v77;
  v23 = *(a2 + 4);
  v82 = v23;
  v76 = *(a2 + 10);
  v83 = v76;
  v24 = *(a2 + 6);
  v84 = v24;
  v75 = *(a2 + 14);
  v85 = v75;
  v78 = *(a2 + 1);
  v86 = v78 & 1;
  if (*(a1 + 1196) == 1)
  {
    v87 = *(a1 + 1198) & v13;
    v25 = v87;
    if (v87 >= *(a1 + 1184))
    {
      ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x50, "enqueue_transfer", v22);
      ashp::acipc::transfer_queue::enqueue_transfer(ashp::acipc::transfer_queue::enqueue_info)::$_0::operator()<unsigned short,unsigned short,unsigned short>((a1 + 1168), &v87, (a1 + 1184));
      goto LABEL_67;
    }

    if (*ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 1200), v87, v21, v22))
    {
      ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x53, "enqueue_transfer", v27);
      *buf = *ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 1200), v25, v28, v29);
      ashp::acipc::transfer_queue::enqueue_transfer(ashp::acipc::transfer_queue::enqueue_info)::$_1::operator()<unsigned short,unsigned short,unsigned int>((a1 + 1168), &v87, buf);
      goto LABEL_67;
    }
  }

  else
  {
    if (*(a1 + 1224) <= *(a1 + 1336))
    {
      ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x59, "enqueue_transfer", v22);
      ashp::acipc::transfer_queue::enqueue_transfer(ashp::acipc::transfer_queue::enqueue_info)::$_2::operator()<unsigned short,unsigned short,unsigned short>((a1 + 1168), (a1 + 1224), (a1 + 1336));
      v6 = 3758097115;
      goto LABEL_67;
    }

    if (*(a1 + 1342) == 1)
    {
      ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x5A, "enqueue_transfer", v22);
      v6 = 3758097112;
      goto LABEL_67;
    }

    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value((a1 + 1226), v20, v21, v22);
    v25 = *(a1 + 1226);
    v87 = *(a1 + 1226);
  }

  v36 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 1200), v25, v26, v27);
  v41 = v36;
  if (*v36)
  {
    v6 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x5E, "enqueue_transfer", v40);
    _os_crash();
    __break(1u);
    goto LABEL_80;
  }

  v42 = a1 + 1230;
  if (!*(a1 + 1230))
  {
    v42 = a1 + 1236;
  }

  *(v36 + 6) = *(v42 + 4);
  if (!v15)
  {
    if (HIDWORD(v77))
    {
      v70 = 107;
      goto LABEL_90;
    }

    if (v77)
    {
      v70 = 108;
      goto LABEL_90;
    }

    v43 = v76 + v75;
    *(v36 + 40) = v76 + v75;
    if (__CFADD__(v76, v75))
    {
      v70 = 109;
      goto LABEL_90;
    }

    *(v36 + 32) = -1;
    *(v36 + 24) = -1;
    goto LABEL_42;
  }

  *(v36 + 40) = HIDWORD(v77);
  switch(v14)
  {
    case 0:
      *buf = ashp::devmem_mapping::get_paddr(v15);
      if (*buf == -1)
      {
        goto LABEL_34;
      }

      *(v41 + 24) = v77;
      ashp::optional<unsigned long long,ashp::optional_sentinel<18446744073709551615ull,false>>::value(buf, v44, v45, v39);
      v46 = __CFADD__(*buf, v77);
      *(v41 + 32) = *buf + v77;
      if (v46)
      {
        v70 = 103;
        goto LABEL_90;
      }

      v43 = *(v41 + 40);
LABEL_42:
      if (!HIBYTE(v43))
      {
        *(v41 + 44) = v13;
        if ((*(a1 + 1196) & 1) == 0 && v13 != ashp::acipc::transfer_queue::get_inorder_tag_for_enqueue((a1 + 1168), v37, v38, v39, v40))
        {
          ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x79, "enqueue_transfer", v39);
          *buf = ashp::acipc::transfer_queue::get_inorder_tag_for_enqueue((a1 + 1168), v71, v72, v73, v74);
          ashp::acipc::transfer_queue::enqueue_transfer(ashp::acipc::transfer_queue::enqueue_info)::$_4::operator()<unsigned short,unsigned short,unsigned short>((a1 + 1168), (v41 + 44), buf);
          goto LABEL_67;
        }

        v47 = v25;
        if (*(a1 + 1340))
        {
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value((a1 + 1234), v37, v38, v39);
          v47 = *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 1200), *(a1 + 1234), v48, v49) + 46);
        }

        *(v41 + 46) = v47;
        if ((v78 & 1) == 0 || *(a1 + 1338) && *(a1 + 1338) - 1 > *(a1 + 1340))
        {
          *(v41 + 49) = (v15 != 0) | (2 * ((v23 | v24) != 0));
          if (*(a1 + 1312))
          {
            v50 = ashp::dynamic_array<unsigned char>::operator[]((a1 + 1312), (*(a1 + 1192) + *(a1 + 1188)) * v25, v38, v39);
          }

          else
          {
            v50 = 0;
          }

          v51 = *(a1 + 1188);
          if (v23)
          {
            ashp::copy_and_zerofill(v50, v51, v23, v76, v40);
          }

          else
          {
            ashp::copy_and_zerofill(v50, v51, 0, 0, v40);
          }

          if (*(a1 + 1312))
          {
            v55 = ashp::dynamic_array<unsigned char>::operator[]((a1 + 1312), *(a1 + 1188) + (*(a1 + 1192) + *(a1 + 1188)) * v25, v52, v53);
          }

          else
          {
            v55 = 0;
          }

          v56 = *(a1 + 1192);
          if (v24)
          {
            ashp::copy_and_zerofill(v55, v56, v24, v75, v54);
          }

          else
          {
            ashp::copy_and_zerofill(v55, v56, 0, 0, v54);
          }

          v80 = 0;
          v61 = *(v41 + 8);
          *(v41 + 8) = v14;
          *buf = v61;
          v62 = *(v41 + 16);
          *(v41 + 16) = v15;
          *&buf[8] = v62;
          ashp::device_accessible_memory::release_obj(buf, v57, v58, v59, v60);
          *&buf[8] = 0;
          ashp::acipc::transfer_queue::move_transfers(a1 + 1168, v25, v25, 0, 1u, *(a1 + 1234));
          if (v78)
          {
            v63 = (*(a1 + 1340))++ + 1;
            if ((v63 & 0x10000) == 0)
            {
LABEL_66:
              v6 = 0;
              goto LABEL_67;
            }

            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x92, "enqueue_transfer", v33);
            _os_crash();
            __break(1u);
          }

          ashp::acipc::transfer_queue::finish_queued_partial_chain((a1 + 1168), v30, v31, v32);
          goto LABEL_66;
        }

        v70 = 133;
LABEL_90:
        ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", v70, "enqueue_transfer", v39);
LABEL_67:
        v64 = ashp::device_accessible_memory::release_obj(&v79, v30, v31, v32, v33);
        v80 = 0;
        if (v6)
        {
          v65 = ashp::detail::logging::get_log_level(v64);
          if (v65 >= 2)
          {
            v65 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v65)
            {
              v66 = *(a1 + 208);
              *buf = 136447234;
              *&buf[4] = "tr_controller.cpp";
              *&buf[14] = 421;
              v89 = 2082;
              *&buf[12] = 1024;
              v90 = "enqueue_transfer";
              v91 = 1024;
              v92 = v66;
              v93 = 1024;
              v94 = v6;
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) failed to enqueue transfer %u", buf, 0x28u);
            }
          }

          if (ashp::detail::logging::get_log_level(v65))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) failed to enqueue transfer %u", "tr_controller.cpp", 421, "enqueue_transfer", *(a1 + 208), v6);
          }
        }

        else
        {
          v67 = ashp::acipc::tr_controller::compute_free_space(a1);
          ashp::monitor_target::update_value((a1 + 872), v67);
          v6 = 0;
        }

        goto LABEL_76;
      }

LABEL_80:
      ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x73, "enqueue_transfer", v39);
      ashp::acipc::transfer_queue::enqueue_transfer(ashp::acipc::transfer_queue::enqueue_info)::$_3::operator()<unsigned short,unsigned int,unsigned int>((a1 + 1168), (v41 + 40));
      goto LABEL_67;
    case 1:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "device_memory.hpp", 0xCA, "get_paddr", v40);
      _os_crash();
      __break(1u);
      break;
    case 2:
      break;
    default:
LABEL_34:
      ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x65, "enqueue_transfer", v39);
      v6 = 3758097118;
      goto LABEL_67;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "device_memory.hpp", 0xD2, "get_paddr", v40);
  result = _os_crash();
  __break(1u);
  return result;
}

atomic_ullong *ashp::device_accessible_memory::retain_obj(ashp::device_accessible_memory *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  result = *(this + 1);
  if (result)
  {
    v7 = *this;
    if (v7)
    {
      if (v7 == 1)
      {
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "device_memory.hpp", 0xED, "retain_obj", a5);
        _os_crash();
        __break(1u);
      }

      else if (v7 != 2)
      {
        return result;
      }

      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "device_memory.hpp", 0xF5, "retain_obj", a5);
      result = _os_crash();
      __break(1u);
      return result;
    }

    return ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::retain(result, a2, a3, a4);
  }

  return result;
}

uint64_t ashp::acipc::tr_controller::get_free_space(os_unfair_lock_s *this)
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 4);
  if ((this[158]._os_unfair_lock_opaque & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x1AE, "get_free_space", v3);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  if (LOBYTE(this[8]._os_unfair_lock_opaque) == 1)
  {
    log_level = ashp::detail::logging::get_log_level(v2);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        os_unfair_lock_opaque_low = LOWORD(this[52]._os_unfair_lock_opaque);
        *buf = 136446978;
        v12 = "tr_controller.cpp";
        v13 = 1024;
        v14 = 431;
        v15 = 2082;
        v16 = "get_free_space";
        v17 = 1024;
        v18 = os_unfair_lock_opaque_low;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_18;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 431, "get_free_space", LOWORD(this[52]._os_unfair_lock_opaque));
LABEL_18:
      v6 = 0;
      goto LABEL_19;
    }

LABEL_21:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

  if ((this[166]._os_unfair_lock_opaque & 0x100) == 0)
  {
    v7 = ashp::detail::logging::get_log_level(v2);
    if (v7 >= 2)
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        v8 = LOWORD(this[52]._os_unfair_lock_opaque);
        *buf = 136446978;
        v12 = "tr_controller.cpp";
        v13 = 1024;
        v14 = 432;
        v15 = 2082;
        v16 = "get_free_space";
        v17 = 1024;
        v18 = v8;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is not open", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v7))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is not open", "tr_controller.cpp", 432, "get_free_space", LOWORD(this[52]._os_unfair_lock_opaque));
    }

    goto LABEL_18;
  }

  v6 = ashp::acipc::tr_controller::compute_free_space(this);
LABEL_19:
  os_unfair_lock_unlock(this + 4);
  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void ashp::acipc::tr_controller::create_free_space_monitor(void)::$_0::operator()<unsigned short>(ashp::detail::logging *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v3 = *a1;
      *buf = 136446978;
      v6 = "tr_controller.cpp";
      v7 = 1024;
      v8 = 440;
      v9 = 2082;
      v10 = "create_free_space_monitor";
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 440, "create_free_space_monitor", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::acipc::tr_controller::get_first_free_tag(os_unfair_lock_s *this)
{
  v29 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 4);
  if ((this[158]._os_unfair_lock_opaque & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x1C0, "get_first_free_tag", v6);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  if (LOBYTE(this[8]._os_unfair_lock_opaque) == 1)
  {
    log_level = ashp::detail::logging::get_log_level(v2);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        os_unfair_lock_opaque_low = LOWORD(this[52]._os_unfair_lock_opaque);
        *buf = 136446978;
        v22 = "tr_controller.cpp";
        v23 = 1024;
        v24 = 449;
        v25 = 2082;
        v26 = "get_first_free_tag";
        v27 = 1024;
        v28 = os_unfair_lock_opaque_low;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_19;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 449, "get_first_free_tag", LOWORD(this[52]._os_unfair_lock_opaque));
LABEL_19:
      os_unfair_lock_opaque_high = 0xFFFFLL;
      goto LABEL_20;
    }

LABEL_23:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

  if ((this[166]._os_unfair_lock_opaque & 0x100) == 0)
  {
    v14 = ashp::detail::logging::get_log_level(v2);
    if (v14 >= 2)
    {
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        v15 = LOWORD(this[52]._os_unfair_lock_opaque);
        *buf = 136446978;
        v22 = "tr_controller.cpp";
        v23 = 1024;
        v24 = 450;
        v25 = 2082;
        v26 = "get_first_free_tag";
        v27 = 1024;
        v28 = v15;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is not open", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v14))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is not open", "tr_controller.cpp", 450, "get_first_free_tag", LOWORD(this[52]._os_unfair_lock_opaque));
    }

    goto LABEL_19;
  }

  ashp::optional<ashp::acipc::transfer_queue,void>::value(&this[292], v3, v4, v5);
  if (LOBYTE(this[299]._os_unfair_lock_opaque) == 1)
  {
    os_unfair_lock_opaque_high = HIWORD(this[306]._os_unfair_lock_opaque);
  }

  else
  {
    inorder_tag_for_enqueue = ashp::acipc::transfer_queue::get_inorder_tag_for_enqueue(&this[292], v9, v10, v11, v12);
    *buf = -1;
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(buf, inorder_tag_for_enqueue, v19, v20);
    os_unfair_lock_opaque_high = *buf;
  }

LABEL_20:
  os_unfair_lock_unlock(this + 4);
  v16 = *MEMORY[0x277D85DE8];
  return os_unfair_lock_opaque_high;
}

uint64_t ashp::acipc::tr_controller::get_transfer_completion(uint64_t a1, unsigned int a2, uint64_t a3, ashp *a4, unsigned int a5, ashp *a6, unsigned int a7)
{
  v97 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 16));
  if ((*(a1 + 632) & 1) == 0)
  {
    v18 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x1CB, "get_transfer_completion", v15);
    _os_crash();
    __break(1u);
    goto LABEL_43;
  }

  if (*(a1 + 32) != 1)
  {
    if ((*(a1 + 665) & 1) == 0)
    {
      log_level = ashp::detail::logging::get_log_level(v11);
      if (log_level >= 2)
      {
        log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (log_level)
        {
          v27 = *(a1 + 208);
          *buf = 136446978;
          v88 = "tr_controller.cpp";
          v89 = 1024;
          v90 = 461;
          v91 = 2082;
          v92 = "get_transfer_completion";
          v93 = 1024;
          v94 = v27;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is not open", buf, 0x22u);
        }
      }

      v18 = 3758097090;
      if (!ashp::detail::logging::get_log_level(log_level))
      {
        goto LABEL_41;
      }

      if (airship_platform_get_global_logger::once == -1)
      {
LABEL_19:
        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is not open", "tr_controller.cpp", 461, "get_transfer_completion", *(a1 + 208));
        goto LABEL_41;
      }

LABEL_45:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      goto LABEL_19;
    }

    ashp::optional<ashp::acipc::transfer_queue,void>::value(a1 + 1168, v12, v13, v14);
    if (*(a1 + 1196) == 1)
    {
      v86 = *(a1 + 1198) & a2;
      v22 = v86;
      if (v86 >= *(a1 + 1184))
      {
        ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0xF0, "get_transfer_completion", v21);
        ashp::acipc::transfer_queue::get_transfer_completion(unsigned short,airship_acipc_tr_transfer_completion *,void *,unsigned int,void *,unsigned int)const::$_0::operator()<unsigned short,unsigned short,unsigned short>((a1 + 1168), &v86, (a1 + 1184));
      }

      else
      {
        if (*ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 1200), v86, v20, v21) == 5)
        {
          LOWORD(v25) = v86;
LABEL_29:
          v42 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 1200), v22, v23, v24);
          if (*v42 == 5)
          {
            next_transfer_in_queue = ashp::acipc::transfer_queue::get_next_transfer_in_queue(a1 + 1168, 5u, v25, v40);
            *buf = next_transfer_in_queue;
            v46 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 1200), *(v42 + 46), v44, v45);
            ashp::optional<unsigned int,void>::value(v46 + 52, v47, v48, v49);
            v81 = *(v46 + 52);
            v52 = *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 1200), *(v42 + 46), v50, v51) + 62);
            v53 = *(v42 + 60);
            v54 = *(v42 + 61);
            v55 = *(v42 + 64);
            v85 = -1;
            ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(&v85, v25, v56, v57);
            v64 = ashp::operator==<int,0>(&v85, (a1 + 1258), v58, v59);
            v65 = *(v42 + 48) == 0;
            v66 = -1;
            if (next_transfer_in_queue != 0xFFFF)
            {
              ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(buf, v60, v61, v62);
              v66 = *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 1200), next_transfer_in_queue, v67, v68) + 44);
            }

            if (a3)
            {
              *a3 = v81;
              *(a3 + 4) = v52;
              *(a3 + 6) = v53;
              *(a3 + 7) = v54;
              *(a3 + 8) = v55;
              *(a3 + 16) = v64;
              *(a3 + 17) = v65;
              *(a3 + 18) = v66;
            }

            if (*(a1 + 1312))
            {
              v69 = ashp::dynamic_array<unsigned char>::operator[]((a1 + 1312), (*(a1 + 1192) + *(a1 + 1188)) * v22, v61, v62);
            }

            else
            {
              v69 = 0;
            }

            ashp::copy_and_zerofill(a4, a5, v69, *(a1 + 1188), v63);
            if (*(a1 + 1312))
            {
              v73 = ashp::dynamic_array<unsigned char>::operator[]((a1 + 1312), *(a1 + 1188) + (*(a1 + 1192) + *(a1 + 1188)) * v22, v70, v71);
            }

            else
            {
              v73 = 0;
            }

            ashp::copy_and_zerofill(a6, a7, v73, *(a1 + 1192), v72);
            v18 = 0;
            goto LABEL_41;
          }

          v18 = "BUG in Airship: ";
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x100, "get_transfer_completion", v41);
          _os_crash();
          __break(1u);
          goto LABEL_45;
        }

        ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0xF3, "get_transfer_completion", v24);
        *buf = *ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 1200), v86, v77, v78);
        ashp::acipc::transfer_queue::get_transfer_completion(unsigned short,airship_acipc_tr_transfer_completion *,void *,unsigned int,void *,unsigned int)const::$_1::operator()<unsigned short,unsigned short,unsigned int>((a1 + 1168), &v86, buf);
      }
    }

    else if (*(a1 + 1254))
    {
      ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value((a1 + 1256), v19, v20, v21);
      v28 = *(a1 + 1256);
      v29 = *(*(a1 + 1176) + 8);
      v32 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[]((a1 + 1200), *(a1 + 1256), v30, v31);
      v33 = a2 % v29 + *(v32 + 44) / v29 * v29 - *(v32 + 44);
      if ((v33 & 0xFFFF0000) != 0)
      {
        v34 = v29;
      }

      else
      {
        v34 = 0;
      }

      v35 = v34 + v33;
      *buf = v35;
      if (*(a1 + 1254) > v35)
      {
        v36 = *(a1 + 1184);
        v37 = v28 % v36 + v35 % v36;
        v38 = v37;
        if (v37 == v37)
        {
          v39 = 0;
        }

        else
        {
          v39 = *(a1 + 1184);
        }

        v25 = (v38 - v39) % v36;
        v22 = v25;
        goto LABEL_29;
      }

      ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0xFC, "get_transfer_completion", v24);
      ashp::acipc::transfer_queue::get_transfer_completion(unsigned short,airship_acipc_tr_transfer_completion *,void *,unsigned int,void *,unsigned int)const::$_2::operator()<unsigned short,unsigned short,unsigned short>((a1 + 1168), buf, (a1 + 1254));
    }

    else
    {
      ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0xF7, "get_transfer_completion", v21);
    }

    v79 = ashp::detail::logging::get_log_level(v76);
    if (v79 >= 2)
    {
      v79 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v79)
      {
        v80 = *(a1 + 208);
        *buf = 136447234;
        v88 = "tr_controller.cpp";
        v90 = 463;
        v91 = 2082;
        v89 = 1024;
        v92 = "get_transfer_completion";
        v93 = 1024;
        v94 = v80;
        v95 = 1024;
        v96 = a2;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) failed to get transfer completion for tag %hu", buf, 0x28u);
      }
    }

    v18 = 3758097090;
    if (ashp::detail::logging::get_log_level(v79))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) failed to get transfer completion for tag %hu", "tr_controller.cpp", 463, "get_transfer_completion", *(a1 + 208), a2);
    }

    goto LABEL_41;
  }

  v16 = ashp::detail::logging::get_log_level(v11);
  if (v16 >= 2)
  {
    v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      v17 = *(a1 + 208);
      *buf = 136446978;
      v88 = "tr_controller.cpp";
      v89 = 1024;
      v90 = 460;
      v91 = 2082;
      v92 = "get_transfer_completion";
      v93 = 1024;
      v94 = v17;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
    }
  }

  v18 = 3758097088;
  if (ashp::detail::logging::get_log_level(v16))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 460, "get_transfer_completion", *(a1 + 208));
      goto LABEL_41;
    }

LABEL_43:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

LABEL_41:
  os_unfair_lock_unlock((a1 + 16));
  v74 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t ashp::acipc::tr_controller::get_completed_transfer_count(os_unfair_lock_s *this)
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 4);
  if ((this[158]._os_unfair_lock_opaque & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x1D8, "get_completed_transfer_count", v2);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  os_unfair_lock_opaque_low = LOWORD(this[52]._os_unfair_lock_opaque);
  v4 = ashp::detail::logging::ktrace_helper::ktrace_helper(v15, 102842584);
  if (LOBYTE(this[8]._os_unfair_lock_opaque) == 1)
  {
    log_level = ashp::detail::logging::get_log_level(v4);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v9 = LOWORD(this[52]._os_unfair_lock_opaque);
        *buf = 136446978;
        v19 = "tr_controller.cpp";
        v20 = 1024;
        v21 = 474;
        v22 = 2082;
        v23 = "get_completed_transfer_count";
        v24 = 1024;
        v25 = v9;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_18;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 474, "get_completed_transfer_count", LOWORD(this[52]._os_unfair_lock_opaque));
LABEL_18:
      os_unfair_lock_opaque_high = 0;
      goto LABEL_19;
    }

LABEL_21:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

  if ((this[166]._os_unfair_lock_opaque & 0x100) == 0)
  {
    v11 = ashp::detail::logging::get_log_level(v4);
    if (v11 >= 2)
    {
      v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        v12 = LOWORD(this[52]._os_unfair_lock_opaque);
        *buf = 136446978;
        v19 = "tr_controller.cpp";
        v20 = 1024;
        v21 = 475;
        v22 = 2082;
        v23 = "get_completed_transfer_count";
        v24 = 1024;
        v25 = v12;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is not open", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v11))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is not open", "tr_controller.cpp", 475, "get_completed_transfer_count", LOWORD(this[52]._os_unfair_lock_opaque));
    }

    goto LABEL_18;
  }

  ashp::optional<ashp::acipc::transfer_queue,void>::value(&this[292], v5, v6, v7);
  os_unfair_lock_opaque_high = HIWORD(this[313]._os_unfair_lock_opaque);
  v16 = LOWORD(this[52]._os_unfair_lock_opaque);
  v17 = os_unfair_lock_opaque_high;
LABEL_19:
  ashp::detail::logging::ktrace_helper::~ktrace_helper(v15);
  os_unfair_lock_unlock(this + 4);
  v13 = *MEMORY[0x277D85DE8];
  return os_unfair_lock_opaque_high;
}

void sub_23EC96B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ashp::detail::logging::ktrace_helper::~ktrace_helper(va);
  os_unfair_lock_unlock(v6 + 4);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::tr_controller::get_first_completed_tag(ashp::acipc::tr_controller *this)
{
  v34 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 4);
  if ((*(this + 632) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x1E7, "get_first_completed_tag", v2);
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v3 = *(this + 104);
  v4 = ashp::detail::logging::ktrace_helper::ktrace_helper(v23, 102842588);
  if (*(this + 32) == 1)
  {
    log_level = ashp::detail::logging::get_log_level(v4);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v9 = *(this + 104);
        *buf = 136446978;
        v27 = "tr_controller.cpp";
        v28 = 1024;
        v29 = 490;
        v30 = 2082;
        v31 = "get_first_completed_tag";
        v32 = 1024;
        v33 = v9;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_19;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 490, "get_first_completed_tag", *(this + 104));
LABEL_19:
      v18 = 0xFFFFLL;
      goto LABEL_22;
    }

LABEL_24:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

  if ((*(this + 665) & 1) == 0)
  {
    v19 = ashp::detail::logging::get_log_level(v4);
    if (v19 >= 2)
    {
      v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        v20 = *(this + 104);
        *buf = 136446978;
        v27 = "tr_controller.cpp";
        v28 = 1024;
        v29 = 491;
        v30 = 2082;
        v31 = "get_first_completed_tag";
        v32 = 1024;
        v33 = v20;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is not open", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v19))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is not open", "tr_controller.cpp", 491, "get_first_completed_tag", *(this + 104));
    }

    goto LABEL_19;
  }

  ashp::optional<ashp::acipc::transfer_queue,void>::value(this + 1168, v5, v6, v7);
  if (*(this + 627))
  {
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(this + 628, v10, v11, v12);
    v15 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, *(this + 628), v13, v14);
    *buf = -1;
    ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(buf, *(v15 + 44), v16, v17);
    v18 = *buf;
  }

  else
  {
    v18 = 0xFFFFLL;
  }

  v24 = *(this + 104);
  v25 = v18;
LABEL_22:
  ashp::detail::logging::ktrace_helper::~ktrace_helper(v23);
  os_unfair_lock_unlock(this + 4);
  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_23EC96E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ashp::detail::logging::ktrace_helper::~ktrace_helper(va);
  os_unfair_lock_unlock(v6 + 4);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::tr_controller::consume_transfers(ashp::acipc::tr_controller *this, unsigned int a2, int a3)
{
  LODWORD(v3) = a3;
  v81 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 4);
  v6 = *(this + 104);
  v7 = a2;
  ashp::detail::logging::ktrace_helper::ktrace_helper(v66, 102842580);
  ashp::detail::logging::ktrace_helper::~ktrace_helper(v66);
  if ((*(this + 632) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x1F8, "consume_transfers", v12);
    _os_crash();
    __break(1u);
    goto LABEL_57;
  }

  if (*(this + 32) != 1)
  {
    if ((*(this + 665) & 1) == 0)
    {
      log_level = ashp::detail::logging::get_log_level(v8);
      if (log_level >= 2)
      {
        log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (log_level)
        {
          v32 = *(this + 104);
          *buf = 136446978;
          v70 = "tr_controller.cpp";
          v71 = 1024;
          v72 = 506;
          v73 = 2082;
          v74 = "consume_transfers";
          v75 = 1024;
          v76 = v32;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is not open", buf, 0x22u);
        }
      }

      v7 = 3758097090;
      if (ashp::detail::logging::get_log_level(log_level))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is not open", "tr_controller.cpp", 506, "consume_transfers", *(this + 104));
      }

      goto LABEL_46;
    }

    ashp::optional<ashp::acipc::transfer_queue,void>::value(this + 1168, v9, v10, v11);
    v68 = v3;
    if (!v3)
    {
      ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x118, "consume_transfers", v17);
      goto LABEL_38;
    }

    if (*(this + 1196) == 1)
    {
      v67 = *(this + 599) & a2;
      v18 = v67;
      if (v67 >= *(this + 592))
      {
        ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x11E, "consume_transfers", v17);
        ashp::acipc::transfer_queue::consume_transfers(unsigned short,unsigned short)::$_0::operator()<unsigned short,unsigned short,unsigned short>((this + 1168), &v67, this + 592);
      }

      else if (*ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, v67, v16, v17) == 5)
      {
        if (*(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, v18, v19, v20) + 46) == v18)
        {
          *buf = -1;
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(buf, v18, v21, v22);
          if (v3 != 1)
          {
            v26 = 0;
            while (1)
            {
              ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(buf, v23, v24, v25);
              *buf = *(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, *buf, v27, v28) + 4);
              if (*buf == 0xFFFF)
              {
                break;
              }

              if ((v3 - 1) <= ++v26)
              {
                goto LABEL_19;
              }
            }

            v60 = 295;
            goto LABEL_48;
          }

LABEL_19:
          ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(buf, v23, v24, v25);
          LOWORD(v30) = *buf;
          goto LABEL_33;
        }

        ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x122, "consume_transfers", v22);
        ashp::acipc::transfer_queue::consume_transfers(unsigned short,unsigned short)::$_2::operator()<unsigned short,unsigned short>((this + 1168), &v67);
      }

      else
      {
        ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x121, "consume_transfers", v20);
        *buf = *ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, v18, v64, v65);
        ashp::acipc::transfer_queue::consume_transfers(unsigned short,unsigned short)::$_1::operator()<unsigned short,unsigned short,unsigned int>((this + 1168), &v67, buf);
      }
    }

    else
    {
      if (*(this + 627) >= v3)
      {
        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(this + 628, v15, v16, v17);
        v18 = *(this + 628);
        if (*(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, v18, v33, v34) + 44) != a2)
        {
          v60 = 305;
          goto LABEL_48;
        }

        v35 = *(this + 592);
        v36 = (v18 % v35 + (v3 - 1) % *(this + 592));
        if (v36 == v18 % v35 + (v3 - 1) % v35)
        {
          v37 = 0;
        }

        else
        {
          v37 = *(this + 592);
        }

        v30 = (v36 - v37) % v35;
LABEL_33:
        if (*ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, v18, v29, v25) == 5)
        {
          if (*(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, v18, v38, v39) + 46) == v18)
          {
            if (*ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, v30, v41, v42) == 5)
            {
              if (!*(ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](this + 150, v30, v44, v45) + 48))
              {
                ashp::acipc::transfer_queue::move_transfers(this + 1168, v18, v30, 5u, 0, *(this + 614));
LABEL_38:
                v47 = ashp::acipc::tr_controller::compute_free_space(this);
                ashp::monitor_target::update_value(this + 218, v47);
                v48 = *(this + 104);
                v49 = mach_continuous_time();
                if (*(this + 189))
                {
                  v50 = v49;
                  os_unfair_lock_lock(this + 366);
                  if (*(this + 367))
                  {
                    v53 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_consumed_transfer_debug_info>::operator[](this + 186, *(this + 368), v51, v52);
                    *v53 = v48;
                    *(v53 + 2) = a2;
                    *(v53 + 4) = v3;
                    *(v53 + 6) = v50;
                    v54 = *(this + 368);
                    v55 = __CFADD__(v54, 1);
                    v56 = v54 + 1;
                    if (v55)
                    {
                      v57 = *(this + 367);
                    }

                    else
                    {
                      v57 = 0;
                    }

                    *(this + 368) = (v56 - v57) % *(this + 367);
                  }

                  os_unfair_lock_unlock(this + 366);
                }

                v7 = 0;
                goto LABEL_46;
              }

              goto LABEL_62;
            }

LABEL_61:
            v3 = "BUG in Airship: ";
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x136, "consume_transfers", v46);
            _os_crash();
            __break(1u);
LABEL_62:
            v60 = 311;
LABEL_48:
            ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", v60, "consume_transfers", v25);
            goto LABEL_49;
          }
        }

        else
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x134, "consume_transfers", v40);
          _os_crash();
          __break(1u);
        }

        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "transfer_queue.cpp", 0x135, "consume_transfers", v43);
        _os_crash();
        __break(1u);
        goto LABEL_61;
      }

      ashp::detail::control_flow::log_guard_else_failure("transfer_queue.cpp", 0x12F, "consume_transfers", v17);
      ashp::acipc::transfer_queue::consume_transfers(unsigned short,unsigned short)::$_3::operator()<unsigned short,unsigned short,unsigned short>((this + 1168), &v68, this + 627);
    }

LABEL_49:
    v62 = ashp::detail::logging::get_log_level(v61);
    if (v62 >= 2)
    {
      v62 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v62)
      {
        v63 = *(this + 104);
        *buf = 136447490;
        v70 = "tr_controller.cpp";
        v71 = 1024;
        v72 = 507;
        v73 = 2082;
        v74 = "consume_transfers";
        v75 = 1024;
        v76 = v63;
        v77 = 1024;
        v78 = v3;
        v79 = 1024;
        v80 = a2;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) failed to consume %hu transfers with start tag %hu", buf, 0x2Eu);
      }
    }

    v7 = 3758097090;
    if (ashp::detail::logging::get_log_level(v62))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) failed to consume %hu transfers with start tag %hu", "tr_controller.cpp", 507, "consume_transfers", *(this + 104), v3, a2);
    }

    goto LABEL_46;
  }

  v13 = ashp::detail::logging::get_log_level(v8);
  if (v13 >= 2)
  {
    v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      v14 = *(this + 104);
      *buf = 136446978;
      v70 = "tr_controller.cpp";
      v71 = 1024;
      v72 = 505;
      v73 = 2082;
      v74 = "consume_transfers";
      v75 = 1024;
      v76 = v14;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller is already terminated", buf, 0x22u);
    }
  }

  v7 = 3758097088;
  if (ashp::detail::logging::get_log_level(v13))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller is already terminated", "tr_controller.cpp", 505, "consume_transfers", *(this + 104));
      goto LABEL_46;
    }

LABEL_57:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

LABEL_46:
  os_unfair_lock_unlock(this + 4);
  v58 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_consumed_transfer_debug_info>::operator[](unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1 > a2)
  {
    return a1[2] + 14 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::tr_controller::set_device_ring_status(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v95 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 16));
  if ((*(a1 + 632) & 1) == 0)
  {
    v2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x22C, "set_device_ring_status", v6);
    _os_crash();
    __break(1u);
    goto LABEL_83;
  }

  v7 = ashp::acipc::ring_controller::set_device_ring_status(a1 + 648, v2, v4, v5, v6);
  log_level = ashp::detail::logging::get_log_level(v7);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v9 = *(a1 + 208);
      *buf = 136447234;
      v86 = "tr_controller.cpp";
      v88 = 558;
      v89 = 2082;
      v87 = 1024;
      v90 = "set_device_ring_status";
      v91 = 1024;
      v92 = v9;
      v93 = 1024;
      LODWORD(v94) = v2;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) new device ring status=%u", buf, 0x28u);
    }
  }

  v10 = ashp::detail::logging::get_log_level(log_level);
  if (v10)
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_7:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) new device ring status=%u", "tr_controller.cpp", 558, "set_device_ring_status", *(a1 + 208), v2);
      goto LABEL_8;
    }

LABEL_83:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_7;
  }

LABEL_8:
  if (v2)
  {
    if (v2 != 2)
    {
      goto LABEL_78;
    }

    if (!*(a1 + 1432))
    {
      if (*(a1 + 320) != 1)
      {
        goto LABEL_54;
      }

      ashp::optional<ashp::acipc::name_and_selector,void>::value(a1 + 304, v11, v12, v13);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 304), v15, v16, v17);
      CStringPtr = *(a1 + 304);
      if (CStringPtr)
      {
        CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
        if (CStringPtr)
        {
          v19 = CStringPtr;
        }

        else
        {
          v19 = "???";
        }
      }

      else
      {
        v19 = "(nil)";
      }

      v48 = ashp::detail::logging::get_log_level(CStringPtr);
      if (v48 >= 4)
      {
        v48 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v48)
        {
          v49 = *(a1 + 208);
          *buf = 136447234;
          v86 = "tr_controller.cpp";
          v87 = 1024;
          v88 = 565;
          v89 = 2082;
          v90 = "set_device_ring_status";
          v91 = 1024;
          v92 = v49;
          v93 = 2080;
          v94 = v19;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) registering with doorbell coordinator with doorbell %s", buf, 0x2Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v48))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) registering with doorbell coordinator with doorbell %s", "tr_controller.cpp", 565, "set_device_ring_status", *(a1 + 208), v19);
      }

      v53 = *(a1 + 24);
      ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(&v53[1316], v50, v51, v52);
      ashp::optional<ashp::acipc::name_and_selector,void>::value(a1 + 304, v54, v55, v56);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 304), v57, v58, v59);
      v60 = *(a1 + 304);
      ashp::optional<ashp::acipc::name_and_selector,void>::value(a1 + 304, v61, v62, v63);
      v65 = ashp::acipc::doorbell_participant::register_doorbell((a1 + 1352), v53 + 1316, v60, *(a1 + 312), v64);
      v10 = ashp::detail::control_flow::check_err_with_debug(v65, "tr_controller.cpp", 0x237, "set_device_ring_status", v66);
      if (v10)
      {
LABEL_54:
        if (*(a1 + 640) == 1)
        {
          v67 = ashp::detail::logging::get_log_level(v10);
          if (v67 >= 4)
          {
            v67 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v67)
            {
              v68 = *(a1 + 208);
              v69 = *(a1 + 210);
              *buf = 136447234;
              v86 = "tr_controller.cpp";
              v88 = 571;
              v89 = 2082;
              v87 = 1024;
              v90 = "set_device_ring_status";
              v91 = 1024;
              v92 = v68;
              v93 = 1024;
              LODWORD(v94) = v69;
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) registering interrupt and setting up index array signaler vector %hu", buf, 0x28u);
            }
          }

          if (ashp::detail::logging::get_log_level(v67))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) registering interrupt and setting up index array signaler vector %hu", "tr_controller.cpp", 571, "set_device_ring_status", *(a1 + 208), *(a1 + 210));
          }

          ashp::optional<unsigned short,void>::value(a1 + 638, v70, v71, v72);
          ashp::acipc::ring_controller::register_index_signal(a1 + 648, a1, &__block_literal_global, *(a1 + 638), v73);
          ashp::acipc::ring_controller::arm_index_signal((a1 + 648), 0, v74, v75, v76);
        }

        tail_index = ashp::acipc::ring_controller::read_tail_index((a1 + 648), v11, v12, v13, v14);
        LODWORD(v78) = tail_index;
        if (!tail_index)
        {
          goto LABEL_71;
        }

        v79 = ashp::detail::logging::get_log_level(tail_index);
        if (v79 >= 2)
        {
          v79 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v79)
          {
            v80 = *(a1 + 208);
            *buf = 136447234;
            v86 = "tr_controller.cpp";
            v88 = 584;
            v89 = 2082;
            v87 = 1024;
            v90 = "set_device_ring_status";
            v91 = 1024;
            v92 = v80;
            v93 = 1024;
            LODWORD(v94) = v78;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) invalid ti: %hu", buf, 0x28u);
          }
        }

        if (!ashp::detail::logging::get_log_level(v79))
        {
LABEL_70:
          os_unfair_lock_assert_owner((a1 + 16));
          ashp::acipc::acipc_driver::raise_ipc_error(*(a1 + 24), 64);
          *(a1 + 1456) = 1;
LABEL_71:
          v81 = ashp::detail::logging::get_log_level(tail_index);
          if (v81 >= 3)
          {
            v81 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v81)
            {
              v82 = *(a1 + 208);
              *buf = 136446978;
              v86 = "tr_controller.cpp";
              v87 = 1024;
              v88 = 587;
              v89 = 2082;
              v90 = "set_device_ring_status";
              v91 = 1024;
              v92 = v82;
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller opened", buf, 0x22u);
            }
          }

          if (ashp::detail::logging::get_log_level(v81))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller opened", "tr_controller.cpp", 587, "set_device_ring_status", *(a1 + 208));
          }

          goto LABEL_78;
        }

        if (airship_platform_get_global_logger::once == -1)
        {
LABEL_69:
          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) invalid ti: %hu", "tr_controller.cpp", 584, "set_device_ring_status", *(a1 + 208), v78);
          goto LABEL_70;
        }

LABEL_88:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        goto LABEL_69;
      }

LABEL_87:
      v78 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x237, "set_device_ring_status", v14);
      _os_crash();
      __break(1u);
      goto LABEL_88;
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x232, "set_device_ring_status", v14);
    _os_crash();
    __break(1u);
    goto LABEL_85;
  }

  ashp::acipc::ring_controller::deregister_index_signal((a1 + 648), v11, v12, v13, v14);
  if (*(a1 + 665) == 1)
  {
    if (*(a1 + 742) == 1)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0xD0, "finalize_tail_index", v23);
      _os_crash();
      __break(1u);
      goto LABEL_87;
    }

    v24 = ashp::acipc::ring_controller::read_tail_index((a1 + 648), v20, v21, v22, v23);
    v29 = *(a1 + 742);
    *(a1 + 740) = v24;
    if ((v29 & 1) == 0)
    {
      *(a1 + 742) = 1;
    }

    v30 = ashp::acipc::ring_controller::read_tail_index((a1 + 648), v25, v26, v27, v28);
    v34 = ashp::optional<ashp::acipc::tr_ring,void>::value(a1 + 1128, v31, v32, v33);
    v38 = *(a1 + 1136);
    if (v38 <= v30)
    {
      goto LABEL_27;
    }

    v39 = *(a1 + 1140);
    if (((v30 - v39) & 0xFFFF0000) != 0)
    {
      v40 = *(a1 + 1136);
    }

    else
    {
      v40 = 0;
    }

    v41 = (v40 + v30 - v39);
    v42 = *(a1 + 1138) - v39;
    if ((v42 & 0xFFFF0000) == 0)
    {
      LOWORD(v38) = 0;
    }

    if (v41 <= (v38 + v42))
    {
      ashp::optional<ashp::acipc::tr_ring,void>::value(a1 + 1128, v35, v36, v37);
      if (v30 != *(a1 + 1140) && (*(a1 + 1456) & 1) == 0)
      {
        ashp::acipc::tr_controller::set_sync_flags(a1, 2u);
      }
    }

    else
    {
LABEL_27:
      v43 = ashp::detail::logging::get_log_level(v34);
      if (v43 >= 2)
      {
        v43 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v43)
        {
          v44 = *(a1 + 208);
          *buf = 136447234;
          v86 = "tr_controller.cpp";
          v88 = 605;
          v89 = 2082;
          v87 = 1024;
          v90 = "set_device_ring_status";
          v91 = 1024;
          v92 = v44;
          v93 = 1024;
          LODWORD(v94) = v30;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) invalid ti: %hu", buf, 0x28u);
        }
      }

      if (ashp::detail::logging::get_log_level(v43))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) invalid ti: %hu", "tr_controller.cpp", 605, "set_device_ring_status", *(a1 + 208), v30);
      }

      os_unfair_lock_assert_owner((a1 + 16));
      ashp::acipc::acipc_driver::raise_ipc_error(*(a1 + 24), 64);
      *(a1 + 1456) = 1;
    }
  }

  if ((*(a1 + 289) & 1) != 0 || (v45 = ashp::optional<ashp::acipc::transfer_queue,void>::value(a1 + 1168, v20, v21, v22), !*(a1 + 1236)) || !*(a1 + 1432))
  {
    ashp::acipc::tr_controller::set_settled(a1);
  }

  v46 = ashp::detail::logging::get_log_level(v45);
  if (v46 >= 4)
  {
    v46 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v46)
    {
      v47 = *(a1 + 208);
      *buf = 136446978;
      v86 = "tr_controller.cpp";
      v87 = 1024;
      v88 = 613;
      v89 = 2082;
      v90 = "set_device_ring_status";
      v91 = 1024;
      v92 = v47;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) controller closed", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v46))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_44:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) controller closed", "tr_controller.cpp", 613, "set_device_ring_status", *(a1 + 208));
      goto LABEL_78;
    }

LABEL_85:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_44;
  }

LABEL_78:
  v83 = ashp::acipc::ring_controller::compute_state((a1 + 648));
  ashp::acipc::tr_controller::update_state_monitor_target(a1, v83);
  os_unfair_lock_unlock((a1 + 16));
  v84 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 360) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::optional<unsigned short,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 2) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

{
  if ((*(result + 2) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF7, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF7, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::acipc::tr_controller::set_settled(const os_unfair_lock *this)
{
  v3 = this;
  v33 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 4);
  if (v3[664] == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x3A0, "set_settled", v5);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  log_level = ashp::detail::logging::get_log_level(v4);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *(v3 + 104);
      *buf = 136446978;
      v26 = "tr_controller.cpp";
      v27 = 1024;
      v28 = 929;
      v29 = 2082;
      v30 = "set_settled";
      v31 = 1024;
      v32 = v7;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) TR is now settled", buf, 0x22u);
    }
  }

  v2 = 0x27E384000uLL;
  v1 = 0x27E384000uLL;
  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_8;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    ashp_log_helper::log(*(v1 + 2648), "[%s:%d:%s] (trid %hu) TR is now settled", "tr_controller.cpp", 929, "set_settled", *(v3 + 104));
LABEL_8:
    ashp::acipc::ring_controller::set_settled((v3 + 648), v8, v9, v10, v11);
    v12 = ashp::acipc::ring_controller::compute_state((v3 + 648));
    ashp::acipc::tr_controller::update_state_monitor_target(v3, v12);
    v13 = *(v3 + 3);
    ashp::optional<ashp::acipc::ring_manager,void>::value(v13 + 4264, v14, v15, v16);
    os_unfair_lock_lock((v13 + 4268));
    if (*(v3 + 115) != v3)
    {
LABEL_23:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x2D8, "tr_settled", v18);
      _os_crash();
      __break(1u);
      goto LABEL_24;
    }

    if (v3[957])
    {
      break;
    }

LABEL_24:
    v3 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x2D9, "tr_settled", v18);
    _os_crash();
    __break(1u);
LABEL_25:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  *(v3 + 957) = 0;
  v19 = ashp::detail::logging::get_log_level(v17);
  if (v19 >= 4)
  {
    v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      v20 = *(v3 + 508);
      *buf = 136446978;
      v26 = "ring_manager.cpp";
      v27 = 1024;
      v28 = 731;
      v29 = 2082;
      v30 = "tr_settled";
      v31 = 1024;
      v32 = v20;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] trid %hu is settled", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v19))
  {
    if (*(v2 + 2728) != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(*(v1 + 2648), "[%s:%d:%s] trid %hu is settled", "ring_manager.cpp", 731, "tr_settled", *(v3 + 508));
  }

  if ((*(v13 + 4864) & 1) == 0)
  {
    ashp::async_notifier::trigger((v13 + 4816), v21, v22, v23);
  }

  os_unfair_lock_unlock((v13 + 4268));
  if (v3[32] == 1)
  {
    ashp::reaper_target::request_reap((v3 + 96));
  }

  v24 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::tr_controller::completion_ring_did_flush(os_unfair_lock_s *this, ashp::acipc::cr_controller *a2)
{
  os_unfair_lock_lock(this + 4);
  if ((this[158]._os_unfair_lock_opaque & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x28A, "completion_ring_did_flush", v9);
    _os_crash();
    __break(1u);
LABEL_20:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x22B, "erase", v14);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x22B, "erase", v20);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v10 = *&this[358]._os_unfair_lock_opaque;
  if (v10)
  {
    v3 = 0;
    v2 = 0;
    p_os_unfair_lock_opaque = &this[358]._os_unfair_lock_opaque;
    while (*(*&this[362]._os_unfair_lock_opaque + 8 * v2) != a2)
    {
      ++v2;
      v3 -= 8;
      if (v10 == v2)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v24 = 0;
    ashp::detail::control_flow::log_guard_else_failure("tr_controller.cpp", 0x28C, "completion_ring_did_flush", v8);
    ashp::acipc::tr_controller::completion_ring_did_flush(ashp::acipc::cr_controller *)::$_0::operator()<unsigned short,unsigned short>(&this[52], a2 + 104);
    p_os_unfair_lock_opaque = "BUG in Airship: unexpected flush notice";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: unexpected flush notice", "tr_controller.cpp", 0x28C, "completion_ring_did_flush", v12);
    _os_crash();
    __break(1u);
  }

  v23 = v2;
  v24 = 1;
  ashp::optional<unsigned long long,void>::value(&v23, v6, v7, v8);
  v16 = v2 + 1;
  if (v2 == -1)
  {
    goto LABEL_20;
  }

  v17 = -v3;
  v18 = *p_os_unfair_lock_opaque;
  if (*p_os_unfair_lock_opaque < v16)
  {
LABEL_21:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x22C, "erase", v14);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x22C, "erase", v21);
    _os_crash();
    __break(1u);
LABEL_22:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x241, "truncate", v14);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted truncate to larger size", "dynamic_array.hpp", 0x241, "truncate", v22);
    _os_crash();
    __break(1u);
    return;
  }

  if (*p_os_unfair_lock_opaque > v16)
  {
    v19 = v18 - 1;
    do
    {
      ++v2;
      *(*&this[362]._os_unfair_lock_opaque + v17) = vextq_s8(*(*&this[362]._os_unfair_lock_opaque + v17), *(*&this[362]._os_unfair_lock_opaque + v17), 8uLL);
      v17 += 8;
    }

    while (v19 != v2);
    v18 = *p_os_unfair_lock_opaque;
  }

  if (v18 < v2)
  {
    goto LABEL_22;
  }

  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::reduce_size(p_os_unfair_lock_opaque, v2, v13, v14, v15);
  if (!this[162]._os_unfair_lock_opaque && (this[166]._os_unfair_lock_opaque & 1) == 0 && !*p_os_unfair_lock_opaque)
  {
    ashp::acipc::tr_controller::set_settled(this);
  }

  os_unfair_lock_unlock(this + 4);
}

void ashp::acipc::tr_controller::completion_ring_did_flush(ashp::acipc::cr_controller *)::$_0::operator()<unsigned short,unsigned short>(ashp::detail::logging *a1, unsigned __int16 *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v5 = *a1;
      v6 = *a2;
      *buf = 136447234;
      v9 = "tr_controller.cpp";
      v11 = 652;
      v12 = 2082;
      v10 = 1024;
      v13 = "completion_ring_did_flush";
      v14 = 1024;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) unexpected flush notice from CRID %hu", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) unexpected flush notice from CRID %hu", "tr_controller.cpp", 652, "completion_ring_did_flush", *a1, *a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::tr_controller::complete_transfer(ashp::acipc::transfer_queue::transfer_completion)::$_0::operator()<unsigned short,unsigned short,unsigned short>(ashp::detail::logging *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *a1;
      v8 = *a2;
      v9 = *a3;
      *buf = 136447490;
      v12 = "tr_controller.cpp";
      v13 = 1024;
      v14 = 678;
      v15 = 2082;
      v16 = "complete_transfer";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) failed: hi=%hu, ti=%hu", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) failed: hi=%hu, ti=%hu", "tr_controller.cpp", 678, "complete_transfer", *a1, *a2, *a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::acipc::config::transfer_ring_spec::dynamic_config::dynamic_config(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v6 = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(a1, *a2, a3, a4);
  *(v6 + 2) = *(a2 + 8);
  *(v6 + 4) = *(a2 + 16);
  *(v6 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(a1 + 24, v7, v8, v9);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((a1 + 24), *(a2 + 24), v10, v11);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = 1;
  }

  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(a1 + 48, v7, v8, v9);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((a1 + 48), *(a2 + 48), v12, v13);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = 1;
  }

  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((a1 + 72), *(a2 + 72), v8, v9);
  *(a1 + 80) = *(a2 + 80);
  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((a1 + 88), *(a2 + 88), v14, v15);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

void sub_23EC98C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset((v4 + 3), a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v4, v6, v7, v8);
  _Unwind_Resume(a1);
}

uint64_t ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 104) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (result)
  {
    v5 = result;
    *(result + 16) = 0;
    if (*(a2 + 16) == 1)
    {
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(result, a2, a3, a4);
      v6 = *a2;
      *a2 = 0;
      *v5 = v6;
      *(v5 + 8) = *(a2 + 8);
      *(v5 + 16) = 1;
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(a2, v7, v8, v9);
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  if (result)
  {
    v5 = result;
    *(result + 16) = 0;
    if (*(a2 + 16) == 1)
    {
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(result, a2, a3, a4);
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(v5, *a2, v6, v7);
      *(v5 + 8) = *(a2 + 8);
      *(v5 + 16) = 1;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ashp::acipc::config::transfer_ring_spec::dynamic_config::~dynamic_config(ashp::acipc::config::transfer_ring_spec::dynamic_config *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 11, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 9, v5, v6, v7);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 48, v8, v9, v10);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 24, v11, v12, v13);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v14, v15, v16);
}

{
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 11, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 9, v5, v6, v7);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 48, v8, v9, v10);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 24, v11, v12, v13);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v14, v15, v16);
}

ashp::acipc::config::transfer_ring_spec::constraint_config *ashp::acipc::config::transfer_ring_spec::constraint_config::constraint_config(ashp::acipc::config::transfer_ring_spec::constraint_config *this, const ashp::acipc::config::transfer_ring_spec::constraint_config *a2, uint64_t a3, const char *a4)
{
  v6 = ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::storage(this, a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::storage(v6 + 3, a2 + 24, v7, v8);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::storage(this + 6, a2 + 48, v9, v10);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::storage(this + 9, a2 + 72, v11, v12);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::storage(this + 12, a2 + 96, v13, v14);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::storage(this + 15, a2 + 120, v15, v16);
  return this;
}

void sub_23EC98E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(v5 + 12, a2, a3, a4, a5);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(v5 + 9, v7, v8, v9, v10);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(v5 + 6, v11, v12, v13, v14);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(v5 + 3, v15, v16, v17, v18);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::~storage(v5, v19, v20, v21, v22);
  _Unwind_Resume(a1);
}

void *ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::storage(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = 0;
  ashp::detail::dynamic_array::buffer<ashp::acipc::config::numeric_constraint<unsigned short>>::buffer(a1 + 1, *a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::append(a1, *(a2 + 16), *a2, v6, v7);
  return a1;
}

void sub_23EC98F08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    free(v3);
    *(v1 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void *ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::storage(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = 0;
  ashp::detail::dynamic_array::buffer<ashp::acipc::config::numeric_constraint<unsigned int>>::buffer(a1 + 1, *a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::append(a1, *(a2 + 16), *a2, v6, v7);
  return a1;
}

void sub_23EC98F68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    free(v3);
    *(v1 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = 0;
  ashp::detail::dynamic_array::buffer<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::buffer(a1 + 1, *a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::append(a1, *(a2 + 16), *a2, v6, v7);
  return a1;
}

void sub_23EC98FC8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    free(v3);
    *(v1 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t ashp::detail::dynamic_array::buffer<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x18uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 24 * a2, 0x10600407BD382EDuLL);
    a1[1] = v5;
    if (v5)
    {
      return a1;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v8);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v6);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v9);
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::append(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *result + a3;
  if (__CFADD__(*result, a3))
  {
LABEL_11:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x137, "append", a5);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  if (v5 <= result[1])
  {
    v7 = a3;
    if (!a3)
    {
LABEL_9:
      *v6 = v5;
      return result;
    }

    v8 = 0;
    v9 = a2 + 8;
    while (1)
    {
      v10 = v6[2] + 24 * *v6;
      v11 = (v10 + v8);
      if (!(v10 + v8))
      {
        break;
      }

      v12 = v10 + v8;
      *(v10 + v8 + 16) = 0;
      if (*(v9 + 8) == 1)
      {
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(v11, a2, a3, a4);
        result = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(v11, *(v9 - 8), v13, v14);
        *(v12 + 8) = *v9;
        *(v12 + 16) = 1;
      }

      v9 += 24;
      v8 += 24;
      if (!--v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x138, "append", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::detail::dynamic_array::buffer<ashp::acipc::config::numeric_constraint<unsigned int>>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (a2 >> 61)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v8);
    _os_crash();
    __break(1u);
  }

  else
  {
    v5 = malloc_type_aligned_alloc(8uLL, 8 * a2, 0x100004000313F17uLL);
    a1[1] = v5;
    if (v5)
    {
      return a1;
    }
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v6);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v9);
  result = _os_crash();
  __break(1u);
  return result;
}

void *ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::append(void *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *result + a3;
  if (__CFADD__(*result, a3))
  {
LABEL_9:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x137, "append", a5);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  if (v5 <= result[1])
  {
    if (!a3)
    {
LABEL_7:
      *result = v5;
      return result;
    }

    v6 = 0;
    while (1)
    {
      v7 = (result[2] + 8 * *result + v6);
      if (!v7)
      {
        break;
      }

      *v7 = *(a2 + v6);
      v6 += 8;
      if (!--a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x138, "append", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::detail::dynamic_array::buffer<ashp::acipc::config::numeric_constraint<unsigned short>>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (a2 >> 62)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v11);
    _os_crash();
    __break(1u);
  }

  else
  {
    v5 = 4 * a2;
    if ((v5 & 4) != 0)
    {
      v6 = 8 - (v5 & 4);
      v7 = __CFADD__(v5, v6);
      v5 += v6;
      if (v7)
      {
        goto LABEL_9;
      }
    }

    v8 = malloc_type_aligned_alloc(8uLL, v5, 0x100004052888210uLL);
    a1[1] = v8;
    if (v8)
    {
      return a1;
    }
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v9);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v12);
  _os_crash();
  __break(1u);
LABEL_9:
  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5A, "buffer", a4);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5A, "buffer", v13);
  result = _os_crash();
  __break(1u);
  return result;
}

void *ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::append(void *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *result + a3;
  if (__CFADD__(*result, a3))
  {
LABEL_9:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x137, "append", a5);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  if (v5 <= result[1])
  {
    if (!a3)
    {
LABEL_7:
      *result = v5;
      return result;
    }

    v6 = 0;
    while (1)
    {
      v7 = (result[2] + 4 * *result + v6);
      if (!v7)
      {
        break;
      }

      *v7 = *(a2 + v6);
      v6 += 4;
      if (!--a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x138, "append", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_consumed_transfer_debug_info>::get_debug_object_alloc_size(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!*(a1 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!is_mul_ok(v4, 0xEuLL) || (result = 14 * v4, (14 * v4) >> 32))
  {
    ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", a4);
    return 0;
  }

  return result;
}

BOOL debug_info_capture::validate_buffer_bounds(debug_info_capture *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!*this)
  {
    return 0;
  }

  v4 = *(this + 3) + a2;
  if (!HIDWORD(v4))
  {
    return *(this + 2) > v4;
  }

  ashp::detail::control_flow::log_guard_else_failure("debug_infra.hpp", 0x68, "validate_buffer_bounds", a4);
  return 0;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_pending_transfer_debug_info>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
    goto LABEL_11;
  }

  ashp::detail::dynamic_array::buffer<ashp::acipc::detail::driver_debug::acipc_pending_transfer_debug_info>::buffer(&v16, a2, a3, a4);
  v6 = v17;
  if (!*a1)
  {
    goto LABEL_6;
  }

  if (!v17)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = &v6[v7];
    v10 = (a1[2] + v7);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    *(v9 + 6) = *(v10 + 6);
    *(v9 + 1) = v12;
    *(v9 + 2) = v13;
    *v9 = v11;
    ++v8;
    v7 += 56;
  }

  while (v8 < *a1);
LABEL_6:
  v14 = v16;
  v16 = 0;
  v17 = 0;
  v15 = a1[2];
  a1[1] = v14;
  a1[2] = v6;
  if (v15)
  {
    free(v15);
    if (v17)
    {
      free(v17);
    }
  }
}

uint64_t ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_pending_transfer_debug_info>::operator[](unint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (a1 > a3)
  {
    return a2 + 56 * a3;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::detail::dynamic_array::buffer<ashp::acipc::detail::driver_debug::acipc_pending_transfer_debug_info>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x38uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 56 * a2, 0x100004021716A34uLL);
    a1[1] = v5;
    if (v5)
    {
      return a1;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v8);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v6);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v9);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_transfer_descr_info>::operator[](unint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (a1 > a3)
  {
    return a2 + 52 * a3;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::get_debug_object_alloc_size(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!*(a1 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  result = 16 * v4;
  v7 = v4 >> 60 == 0;
  v6 = (16 * v4) >> 32;
  v7 = v7 && v6 == 0;
  if (!v7)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", a4);
    return 0;
  }

  return result;
}

void ashp::mappable_buffer::create(const char *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (!a2)
  {
    v47 = 125;
    goto LABEL_27;
  }

  v6 = *MEMORY[0x277D85FA0];
  if (HIDWORD(*MEMORY[0x277D85FA0]))
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "mappable_buffer.cpp", 0x5D, "get_page_size", a5);
    _os_crash();
    __break(1u);
    goto LABEL_25;
  }

  if (!v6)
  {
LABEL_25:
    a1 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "mappable_buffer.cpp", 0x67, "round_up_to_page_size", a5);
    _os_crash();
    __break(1u);
    goto LABEL_26;
  }

  if (__CFADD__(a2, v6 - 1))
  {
LABEL_26:
    ashp::detail::control_flow::log_guard_else_failure("mappable_buffer.cpp", 0x68, "round_up_to_page_size", a4);
    v47 = 127;
LABEL_27:
    ashp::detail::control_flow::log_guard_else_failure("mappable_buffer.cpp", v47, "create", a4);
    if (a1)
    {
      *(a1 + 8) = 0;
      *(a1 + 2) = 0x200000000;
      return;
    }

    goto LABEL_29;
  }

  v7 = a3;
  v60 = (a2 + v6 - 1) / v6 * v6;
  v61 = 1;
  address = 0;
  v8 = MEMORY[0x277D85F48];
  v9 = *MEMORY[0x277D85F48];
  ashp::optional<unsigned int,void>::value(&v60, a2, a3, a4);
  v10 = mach_vm_allocate(v9, &address, v60, 1);
  if (!ashp::detail::control_flow::check_err_with_debug(v10, "mappable_buffer.cpp", 0x92, "create", v11))
  {
    if (a1)
    {
      *(a1 + 8) = 0;
      *(a1 + 2) = 0x200000000;
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  v57[0] = &address;
  v57[1] = &v60;
  v58 = 1;
  v15 = address;
  ashp::optional<unsigned int,void>::value(&v60, v12, v13, v14);
  bzero(v15, v60);
  v16 = *v8;
  v17 = address;
  ashp::optional<unsigned int,void>::value(&v60, v18, v19, v20);
  if (v7 - 1 >= 2)
  {
    v21 = 1;
  }

  else
  {
    v21 = 3;
  }

  v22 = mach_vm_protect(v16, v17, v60, 0, v21);
  if (!ashp::detail::control_flow::check_err_with_debug(v22, "mappable_buffer.cpp", 0x95, "create", v23) || (v27 = *v8, v28 = address, ashp::optional<unsigned int,void>::value(&v60, v24, v25, v26), v29 = mach_vm_inherit(v27, v28, v60, 2u), !ashp::detail::control_flow::check_err_with_debug(v29, "mappable_buffer.cpp", 0x96, "create", v30)))
  {
    if (a1)
    {
      *(a1 + 8) = 0;
      *(a1 + 2) = 0x200000000;
      goto LABEL_19;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (v58 == 1)
  {
    v58 = 0;
  }

  v31 = address;
  ashp::optional<unsigned int,void>::value(&v60, v24, v25, v26);
  v54 = v31;
  v49 = 0;
  v34 = __PAIR64__(v7, v60);
  v56 = 0x200000000;
  v48 = v31;
  v55 = 0;
  v50 = 0x200000000;
  v51 = v31;
  v52 = 1;
  if (!a1)
  {
    goto LABEL_29;
  }

  *(a1 + 8) = 0;
  *(a1 + 2) = 0x200000000;
  v64 = v34;
  v53 = 0x200000000;
  v62 = v31;
  v63 = 1;
  v52 = 0;
  ashp::buffer_mapping::operator=(a1, &v62, v32, v33);
  ashp::buffer_mapping::~buffer_mapping(&v62, v35, v36, v37);
  ashp::buffer_mapping::~buffer_mapping(&v51, v38, v39, v40);
  ashp::buffer_mapping::~buffer_mapping(&v48, v41, v42, v43);
  ashp::buffer_mapping::~buffer_mapping(&v54, v44, v45, v46);
LABEL_19:
  ashp::deferred_action<ashp::mappable_buffer::create(unsigned int,ashp::memory_direction)::$_0>::~deferred_action(v57, v24, v25, v26);
LABEL_20:
  if (v61)
  {
    v61 = 0;
  }
}

void sub_23EC99D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  ashp::deferred_action<ashp::mappable_buffer::create(unsigned int,ashp::memory_direction)::$_0>::~deferred_action(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void ashp::buffer_mapping::~buffer_mapping(mach_vm_address_t *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(this + 8) == 1)
  {
    v5 = *MEMORY[0x277D85F48];
    ashp::optional<unsigned long long,void>::value(this, a2, a3, a4);
    mach_vm_deallocate(v5, *this, *(this + 4));
    if (this[1])
    {
      *(this + 8) = 0;
    }
  }
}

uint64_t ashp::deferred_action<ashp::mappable_buffer::create(unsigned int,ashp::memory_direction)::$_0>::~deferred_action(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 16) == 1)
  {
    v5 = *MEMORY[0x277D85F48];
    v6 = **a1;
    v7 = ashp::optional<unsigned int,void>::value(*(a1 + 8), a2, a3, a4);
    mach_vm_deallocate(v5, v6, *v7);
    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }
  }

  return a1;
}

uint64_t ashp::buffer_mapping::operator=(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v12 = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0x200000000;
  if (*(a2 + 8) == 1)
  {
    v6 = *a2;
    v11 = *a2;
    v12 = 1;
    *(a2 + 8) = 0;
    v7 = *(a1 + 16);
    *(a1 + 16) = v5;
    v13 = v7;
    if (*(a1 + 8))
    {
      v8 = *a1;
      *a1 = v6;
      v11 = v8;
    }

    else
    {
      *a1 = v6;
      *(a1 + 8) = 1;
      v12 = 0;
    }
  }

  else
  {
    v9 = *(a1 + 16);
    *(a1 + 16) = v5;
    v13 = v9;
    if (*(a1 + 8))
    {
      v11 = *a1;
      v12 = 1;
      *(a1 + 8) = 0;
    }
  }

  ashp::buffer_mapping::~buffer_mapping(&v11, a2, a3, a4);
  return a1;
}

uint64_t *ashp::buffer_mapping::buffer_mapping(uint64_t *result, uint64_t *a2)
{
  if (result)
  {
    *(result + 8) = 0;
    result[2] = 0x200000000;
    result[2] = a2[2];
    a2[2] = 0x200000000;
    v2 = *(a2 + 8);
    if (*(result + 8) == 1)
    {
      v3 = *result;
      if (*(a2 + 8))
      {
        *result = *a2;
        *a2 = v3;
      }

      else
      {
        *a2 = v3;
        *(a2 + 8) = 1;
        if (*(result + 8) == 1)
        {
          *(result + 8) = 0;
        }
      }
    }

    else if (*(a2 + 8))
    {
      *result = *a2;
      *(result + 8) = 1;
      if (*(a2 + 8) == 1)
      {
        *(a2 + 8) = 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ashp::mappable_buffer::get_addr(ashp::mappable_buffer *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(this + 8))
  {
    return *ashp::optional<unsigned long long,void>::value(this, a2, a3, a4);
  }

  ashp::detail::control_flow::log_guard_else_failure("mappable_buffer.cpp", 0xBD, "get_addr", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: access to null buffer", "mappable_buffer.cpp", 0xBD, "get_addr", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::mappable_buffer::copy_descriptor(ashp::mappable_buffer *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*(a2 + 8))
  {
    ashp::optional<unsigned long long,void>::value(a2, a2, a3, a4);
    v7 = *a2;
    v8 = *(a2 + 20);
    size = *(a2 + 16);
    object_handle = 0;
    if ((v8 - 1) >= 2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }

    memory_entry_64 = mach_make_memory_entry_64(*MEMORY[0x277D85F48], &size, v7, v9, &object_handle, 0);
    result = ashp::detail::control_flow::check_err_with_debug(memory_entry_64, "mappable_buffer.cpp", 0xE2, "copy_descriptor", v11);
    if (result)
    {
      *this = object_handle | (*(a2 + 16) << 32);
      return result;
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "mappable_buffer.cpp", 0xDE, "copy_descriptor", a5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "mappable_buffer.cpp", 0xE2, "copy_descriptor", v13);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::boxed::BOOLean::value(ashp::boxed::BOOLean *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if (this)
  {
    return CFBooleanGetValue(this) != 0;
  }

  ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x5C, "value", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad boxed access", "boxed_types.cpp", 0x5C, "value", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::boxed::number::uint64_value(ashp::boxed::number *this, CFNumberRef *a2, uint64_t a3, const char *a4)
{
  if (!*a2)
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0xC9, "uint64_value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad boxed access", "boxed_types.cpp", 0xC9, "uint64_value", v7);
    result = _os_crash();
    goto LABEL_10;
  }

  result = CFNumberIsFloatType(*a2);
  if (result || (valuePtr = 0, result = CFNumberGetValue(*a2, kCFNumberSInt64Type, &valuePtr), !result))
  {
    if (this)
    {
      *(this + 8) = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (!this)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  *this = valuePtr;
  *(this + 8) = 1;
  return result;
}

CFIndex ashp::boxed::string::length(const __CFString *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if (this)
  {
    Length = CFStringGetLength(this);
    return Length & ~(Length >> 63);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x14E, "length", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad boxed access", "boxed_types.cpp", 0x14E, "length", v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::boxed::string::with_cstr_nocopy(ashp::boxed::string *this, const char *a2, uint64_t a3, const char *a4)
{
  if (a2)
  {
    result = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], a2, 0x8000100u, *MEMORY[0x277CBED00]);
    if (result)
    {
      *this = result;
      return result;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x175, "with_cstr_nocopy", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to create boxed string from null C string", "boxed_types.cpp", 0x175, "with_cstr_nocopy", v7);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x17B, "with_cstr_nocopy", v6);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "boxed_types.cpp", 0x17B, "with_cstr_nocopy", v8);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::boxed::string::with_format(uint64_t a1@<X2>, const char *a2@<X3>, CFStringRef *a3@<X8>, ...)
{
  va_start(va, a3);
  va_copy(v16, va);
  ashp::boxed::string::with_cstr_nocopy(&v15, "%zu", a1, a2);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v15, v6, v7, v8);
  v9 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, v15, v16);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v15, v10, v11, v12);
  if (v9)
  {
    *a3 = v9;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x19C, "with_format", v13);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "boxed_types.cpp", 0x19C, "with_format", v14);
    _os_crash();
    __break(1u);
  }
}

uint64_t *ashp::boxed::symbol::with_str(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a2)
  {

    return ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(a1, a2, a3, a4);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x1C7, "with_str", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to create boxed symbol from null string", "boxed_types.cpp", 0x1C7, "with_str", v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

const UInt8 *ashp::boxed::data::bytes(ashp::boxed::data *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if (this)
  {

    return CFDataGetBytePtr(this);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x20B, "bytes", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad boxed access", "boxed_types.cpp", 0x20B, "bytes", v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

CFIndex ashp::boxed::data::length(ashp::boxed::data *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if (this)
  {
    Length = CFDataGetLength(this);
    return Length & ~(Length >> 63);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x216, "length", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad boxed access", "boxed_types.cpp", 0x216, "length", v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::boxed::mutable_data::append_bytes(ashp::boxed::mutable_data *this, const UInt8 *a2, CFIndex a3, const char *a4)
{
  if (this)
  {
    if (a3)
    {

      CFDataAppendBytes(this, a2, a3);
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x26A, "append_bytes", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad boxed access", "boxed_types.cpp", 0x26A, "append_bytes", v5);
    _os_crash();
    __break(1u);
  }
}

uint64_t ashp::boxed::mutable_data::with_capacity(ashp::boxed::mutable_data *this, CFIndex a2)
{
  result = CFDataCreateMutable(*MEMORY[0x277CBECE8], a2);
  if (result)
  {
    *this = result;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x296, "with_capacity", v4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "boxed_types.cpp", 0x296, "with_capacity", v5);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

CFIndex ashp::boxed::array::count(ashp::boxed::array *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if (this)
  {
    Count = CFArrayGetCount(this);
    return Count & ~(Count >> 63);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x29F, "count", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad boxed access", "boxed_types.cpp", 0x29F, "count", v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

const void *ashp::boxed::array::get_value(ashp::boxed::array **this, unint64_t a2, uint64_t a3, const char *a4)
{
  v5 = *this;
  if (!v5)
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x2AA, "get_value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad boxed access", "boxed_types.cpp", 0x2AA, "get_value", v10);
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  if (ashp::boxed::array::count(v5, a2, a3, a4) <= a2)
  {
LABEL_7:
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x2AB, "get_value", v7);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: out of bounds access to boxed array", "boxed_types.cpp", 0x2AB, "get_value", v11);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v8 = *this;

  return CFArrayGetValueAtIndex(v8, a2);
}

CFIndex ashp::boxed::dictionary::count(ashp::boxed::dictionary *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if (this)
  {
    Count = CFDictionaryGetCount(this);
    return Count & ~(Count >> 63);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x30C, "count", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad boxed access", "boxed_types.cpp", 0x30C, "count", v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *ashp::boxed::dictionary::get_value(const __CFDictionary *a1, const void *a2, uint64_t a3, const char *a4)
{
  if (!a1)
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x324, "get_value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad boxed access", "boxed_types.cpp", 0x324, "get_value", v5);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a2)
  {
LABEL_8:
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x325, "get_value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to access boxed dictionary with null key", "boxed_types.cpp", 0x325, "get_value", v6);
    result = _os_crash();
    __break(1u);
    return result;
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(a1, a2, &value))
  {
    return value;
  }

  else
  {
    return 0;
  }
}

void ashp::boxed::mutable_dictionary::set_value(__CFDictionary *a1, const void *a2, const void *a3, const char *a4)
{
  if (!a1)
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x349, "set_value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad boxed access", "boxed_types.cpp", 0x349, "set_value", v4);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a2)
  {
LABEL_8:
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x34A, "set_value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to access boxed dictionary with null key", "boxed_types.cpp", 0x34A, "set_value", v5);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (!a3)
  {
LABEL_9:
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x34B, "set_value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to insert null value into boxed dictionary", "boxed_types.cpp", 0x34B, "set_value", v6);
    _os_crash();
    __break(1u);
    return;
  }

  CFDictionarySetValue(a1, a2, a3);
}

const char *airship_strerror(int a1)
{
  if (a1 > -536870187)
  {
    if (a1 <= -536870179)
    {
      switch(a1)
      {
        case -536870186:
          return "timeout";
        case -536870184:
          return "not ready";
        case -536870181:
          return "no space for data";
      }
    }

    else if (a1 > -536870166)
    {
      if (a1 == -536870165)
      {
        return "operation canceled";
      }

      if (!a1)
      {
        return "ok";
      }
    }

    else
    {
      if (a1 == -536870178)
      {
        return "unable to map memory";
      }

      if (a1 == -536870167)
      {
        return "device error";
      }
    }
  }

  else if (a1 <= -536870207)
  {
    switch(a1)
    {
      case -536870212:
        return "general error";
      case -536870208:
        return "disconnected (no device)";
      case -536870207:
        return "not privileged";
    }
  }

  else if (a1 > -536870199)
  {
    if (a1 == -536870198)
    {
      return "I/O error";
    }

    if (a1 == -536870195)
    {
      return "not open";
    }
  }

  else
  {
    if (a1 == -536870206)
    {
      return "bad argument";
    }

    if (a1 == -536870203)
    {
      return "already in use (exclusive access)";
    }
  }

  return "unknown result code";
}

const char *airship_get_ipc_error_description(const __CFString *a1, int a2)
{
  if (!a1 || CFStringCompare(a1, @"acipc", 0))
  {
    return "unknown-error";
  }

  return airship_acipc_get_ipc_error_description(a2);
}

void ashp::direct_monitor::set_criterion(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a1 + 64));
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 72), v8, v9, v10);
  ashp::monitor::set_criterion(*(a1 + 72), a2, a3, a4);

  os_unfair_lock_unlock((a1 + 64));
}

uint64_t ashp::direct_monitor::timedwait(os_unfair_lock_s *this, int a2)
{
  os_unfair_lock_lock(this + 16);
  if (this[20]._os_unfair_lock_opaque)
  {
    v5 = 3758097131;
    os_unfair_lock_unlock(this + 16);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v6, v7, v8);
    v9 = *&this[18]._os_unfair_lock_opaque;
    v14 = a2;
    os_unfair_lock_lock((v9 + 16));
    if ((*(v9 + 120) & 1) == 0)
    {
      if (*(v9 + 320))
      {
        v5 = 0;
      }

      else
      {
        *(v9 + 240) = 1;
        v13 = 0;
        v12[0] = v9;
        v12[1] = &v13;
        v12[2] = &v14;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 0x40000000;
        v16 = ___ZN4ashp12wait_context3runIZNS_7monitor9timedwaitEjE3__1EEvT__block_invoke;
        v17 = &__block_descriptor_tmp_8_1265;
        v18 = v12;
        pthread_mutex_lock((v9 + 128));
        v16(v15);
        pthread_mutex_unlock((v9 + 128));
        os_unfair_lock_lock((v9 + 16));
        if (*(v9 + 120))
        {
          v5 = 3758097131;
        }

        else
        {
          v5 = v13;
        }
      }
    }

    os_unfair_lock_unlock((v9 + 16));
    return v5;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_monitor.cpp", 0x70, "timedwait", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to await inactive monitor", "direct_monitor.cpp", 0x70, "timedwait", v11);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::direct_monitor::wait(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  if (this[20]._os_unfair_lock_opaque)
  {
    v3 = 3758097131;
    os_unfair_lock_unlock(this + 16);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v4, v5, v6);
    v7 = *&this[18]._os_unfair_lock_opaque;
    os_unfair_lock_lock((v7 + 16));
    if ((*(v7 + 120) & 1) == 0)
    {
      if (*(v7 + 320))
      {
        v3 = 0;
      }

      else
      {
        *(v7 + 240) = 1;
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 0x40000000;
        v10[2] = ___ZN4ashp12wait_context3runIZNS_7monitor4waitEvE3__1EEvT__block_invoke;
        v10[3] = &__block_descriptor_tmp_1262;
        v10[4] = &v11;
        v11 = v7;
        pthread_mutex_lock((v7 + 128));
        ___ZN4ashp12wait_context3runIZNS_7monitor4waitEvE3__1EEvT__block_invoke(v10);
        pthread_mutex_unlock((v7 + 128));
        os_unfair_lock_lock((v7 + 16));
        if (*(v7 + 120))
        {
          v3 = 3758097131;
        }

        else
        {
          v3 = 0;
        }
      }
    }

    os_unfair_lock_unlock((v7 + 16));
    return v3;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_monitor.cpp", 0x67, "wait", v2);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to await inactive monitor", "direct_monitor.cpp", 0x67, "wait", v9);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::direct_monitor::destroy(ashp::direct_monitor *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    *this = &unk_28515CC70;
    v6 = (this + 72);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 9, a2, a3, a4);
    ashp::driver_object::terminate(*v6);
    ashp::async_notifier::~async_notifier((this + 88), v7, v8, v9);
    ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(v6, v10, v11, v12);
    ashp::direct_client_object::~direct_client_object(this + 1, v13, v14, v15, v16);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

void ashp::async_notifier::~async_notifier(ashp::async_notifier *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::async_notifier::cancel(this, a2, a3, a4);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(this + 4, v5, v6, v7);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(this + 3, v8, v9, v10);
  ashp::refcounted_ptr<dispatch_source_s *,ashp::dispatch::refcount_policy>::reset(this + 2);
  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(this + 1, v11, v12, v13);
}

atomic_ullong *ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(atomic_ullong *result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*result)
  {
    v4 = result;
    v5 = ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(result, a2, a3, a4);
    if (*v5)
    {
      v9 = (*v5 + 8);
    }

    else
    {
      v9 = 0;
    }

    result = ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::release(v9, v6, v7, v8);
    *v4 = 0;
  }

  return result;
}

void ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1)
  {
    v5 = ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    _Block_release(*v5);
    *a1 = 0;
  }
}

void ashp::refcounted_ptr<dispatch_source_s *,ashp::dispatch::refcount_policy>::reset(NSObject **a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_release(v2);
    *a1 = 0;
  }
}