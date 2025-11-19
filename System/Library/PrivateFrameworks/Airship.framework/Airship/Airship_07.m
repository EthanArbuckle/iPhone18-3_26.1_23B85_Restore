unint64_t *ashp::detail::dynamic_array::storage<ashp::owned_ptr<ashp::driver_resource,ashp::typed_deleter<ashp::driver_resource>>>::~storage(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
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

      result = ashp::owning_wrapper<ashp::driver_resource *,(decltype(nullptr))0,ashp::typed_deleter<ashp::driver_resource>>::~owning_wrapper((v8 + v6), a2, a3, a4, a5);
      ++v7;
      v6 += 8;
      if (v7 >= *v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    *v5 = 0;
    v9 = v5[2];
    if (v9)
    {
      free(v9);
      v5[2] = 0;
    }

    return v5;
  }

  return result;
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::owned_ptr<ashp::driver_client,ashp::polymorphic_deleter<ashp::driver_client>>>::reduce_size(unint64_t *result, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*result >= a2)
  {
    v6 = result;
    if (*result <= a2)
    {
LABEL_6:
      *v6 = a2;
      return result;
    }

    v7 = 8 * a2;
    v8 = a2;
    while (1)
    {
      v9 = v6[2];
      if (!v9)
      {
        break;
      }

      result = ashp::owning_wrapper<ashp::driver_client *,(decltype(nullptr))0,ashp::polymorphic_deleter<ashp::driver_client>>::~owning_wrapper((v9 + v7));
      ++v8;
      v7 += 8;
      if (v8 >= *v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x112, "reduce_size", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

void (****ashp::owning_wrapper<ashp::driver_client *,(decltype(nullptr))0,ashp::polymorphic_deleter<ashp::driver_client>>::~owning_wrapper(void (****a1)(void)))(void)
{
  v2 = *a1;
  if (v2)
  {
    (**v2)(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t ashp::driver::get_queue(uint64_t a1, const __CFString *a2)
{
  os_unfair_lock_lock((a1 + 3752));
  if ((*(a1 + 3756) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x138, "get_queue", v6);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive driver", "driver.cpp", 0x138, "get_queue", v28);
    _os_crash();
    __break(1u);
    goto LABEL_26;
  }

  if (!*(a1 + 3760))
  {
LABEL_17:
    v30 = 0;
    goto LABEL_18;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = *(a1 + 3776);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v9 + v7), v4, v5, v6);
    v10 = *(v9 + v7);
    if (!v10 || a2 == 0)
    {
      break;
    }

    if (CFStringCompare(v10, a2, 0) == kCFCompareEqualTo)
    {
      goto LABEL_23;
    }

LABEL_16:
    ++v8;
    v7 += 16;
    if (v8 >= *(a1 + 3760))
    {
      goto LABEL_17;
    }
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0;
  }

  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_23:
  v29 = v8;
  v30 = 1;
  ashp::optional<unsigned long long,void>::value(&v29, v4, v5, v6);
  if (!*(ashp::dynamic_array<ashp::driver::execution_context>::operator[]((a1 + 3760), v8, v17, v18) + 8))
  {
LABEL_18:
    if (airship_platform_get_fallback_queue::once == -1)
    {
LABEL_19:
      v14 = &airship_platform_fallback_queue;
      goto LABEL_20;
    }

LABEL_26:
    dispatch_once(&airship_platform_get_fallback_queue::once, &__block_literal_global_9);
    goto LABEL_19;
  }

  ashp::optional<unsigned long long,void>::value(&v29, v19, v20, v21);
  v24 = ashp::dynamic_array<ashp::driver::execution_context>::operator[]((a1 + 3760), v29, v22, v23);
  v14 = ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v24 + 8), v25, v26, v27);
LABEL_20:
  v15 = *v14;
  if (v30 == 1)
  {
    v30 = 0;
  }

  os_unfair_lock_unlock((a1 + 3752));
  return v15;
}

uint64_t ashp::dynamic_array<ashp::driver::execution_context>::operator[](unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1 > a2)
  {
    return a1[2] + 16 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x1A2, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x1A2, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

pthread_rwlock_t **ashp::driver::with_device_transport(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 32);
  pthread_rwlock_rdlock((a1 + 32));
  (*(a2 + 16))(a2, *(a1 + 232));
  return ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(&v5);
}

void sub_23ECFF7F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(va);
  _Unwind_Resume(a1);
}

void ashp::driver::update_exec_stage(os_unfair_lock_s *this, uint32_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 62);
  os_unfair_lock_lock(this + 63);
  if (this[65]._os_unfair_lock_opaque == a2)
  {
    os_unfair_lock_unlock(this + 63);
  }

  else
  {
    log_level = ashp::detail::logging::get_log_level(v4);
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        os_unfair_lock_opaque = this[65]._os_unfair_lock_opaque;
        *buf = 136447234;
        v12 = "driver.cpp";
        v14 = 334;
        v15 = 2082;
        v13 = 1024;
        v16 = "update_exec_stage";
        v17 = 1024;
        v18 = a2;
        v19 = 1024;
        v20 = os_unfair_lock_opaque;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] updated exec stage: %u, current %u", buf, 0x28u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] updated exec stage: %u, current %u", "driver.cpp", 334, "update_exec_stage", a2, this[65]._os_unfair_lock_opaque);
    }

    this[65]._os_unfair_lock_opaque = a2;
    ashp::monitor_target::update_value(this + 66, a2);
    os_unfair_lock_unlock(this + 63);
    if (LOBYTE(this[64]._os_unfair_lock_opaque) == 1 && *&this[78]._os_unfair_lock_opaque)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[78]._os_unfair_lock_opaque, v7, v8, v9);
      (*(*&this[78]._os_unfair_lock_opaque + 16))();
    }
  }

  os_unfair_lock_unlock(this + 62);
  v10 = *MEMORY[0x277D85DE8];
}

void ashp::driver::update_power_state(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 248));
  os_unfair_lock_lock((a1 + 252));
  if (*(a1 + 320) == a2)
  {
    os_unfair_lock_unlock((a1 + 252));
  }

  else
  {
    log_level = ashp::detail::logging::get_log_level(v4);
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v6 = *(a1 + 320);
        *buf = 136447234;
        v12 = "driver.cpp";
        v14 = 376;
        v15 = 2082;
        v13 = 1024;
        v16 = "update_power_state";
        v17 = 1024;
        v18 = a2;
        v19 = 1024;
        v20 = v6;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] updated power state: %u, current %u", buf, 0x28u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] updated power state: %u, current %u", "driver.cpp", 376, "update_power_state", a2, *(a1 + 320));
    }

    *(a1 + 320) = a2;
    os_unfair_lock_unlock((a1 + 252));
    if (*(a1 + 256) == 1 && *(a1 + 328))
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 328), v7, v8, v9);
      (*(*(a1 + 328) + 16))();
    }
  }

  os_unfair_lock_unlock((a1 + 248));
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::direct_cr_controller::consume_mirror_elements(ashp::direct_cr_controller *this, unsigned int a2)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 168))
  {
    if (*(this + 120))
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v4, v5, v6);
      v7 = ashp::acipc::cr_controller::consume_mirror_elements(*(this + 10), a2);
      os_unfair_lock_unlock(this + 16);
      return v7;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0xF9, "consume_mirror_elements", v6);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive CR", "direct_cr_controller.cpp", 0xF9, "consume_mirror_elements", v9);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0xFA, "consume_mirror_elements", v6);
  ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive mirror", "direct_cr_controller.cpp", 0xFA, "consume_mirror_elements", v10);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::direct_cr_controller::get_mirror_count(ashp::direct_cr_controller *this)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 168))
  {
    if (*(this + 120))
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
      mirror_count = ashp::acipc::cr_controller::get_mirror_count(*(this + 10));
      os_unfair_lock_unlock(this + 16);
      return mirror_count;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0xE6, "get_mirror_count", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive CR", "direct_cr_controller.cpp", 0xE6, "get_mirror_count", v7);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0xE7, "get_mirror_count", v4);
  ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive mirror", "direct_cr_controller.cpp", 0xE7, "get_mirror_count", v8);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::direct_cr_controller::get_mirror_element(uint64_t a1, unsigned int a2, uint64_t a3, char *a4, const char *a5, char *a6, const char *a7)
{
  os_unfair_lock_lock((a1 + 64));
  if (*(a1 + 168))
  {
    if (*(a1 + 120))
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 80), v14, v15, v16);
      mirror_element = ashp::acipc::cr_controller::get_mirror_element(*(a1 + 80), a2, a3, a4, a5, a6, a7);
      os_unfair_lock_unlock((a1 + 64));
      return mirror_element;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0xF0, "get_mirror_element", v16);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive CR", "direct_cr_controller.cpp", 0xF0, "get_mirror_element", v19);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0xF1, "get_mirror_element", v16);
  ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive mirror", "direct_cr_controller.cpp", 0xF1, "get_mirror_element", v20);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::direct_cr_controller::sync(ashp::direct_cr_controller *this, char a2)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 168))
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v4, v5, v6);
    ashp::acipc::cr_controller::sync(*(this + 10), a2);

    os_unfair_lock_unlock(this + 16);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0xCD, "sync", v6);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive CR", "direct_cr_controller.cpp", 0xCD, "sync", v7);
    _os_crash();
    __break(1u);
  }
}

uint64_t ashp::direct_cr_controller::reset(os_unfair_lock_s *this)
{
  v42 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  if ((this[42]._os_unfair_lock_opaque & 1) == 0)
  {
    v5 = "direct_cr_controller.cpp";
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0xDE, "reset", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive CR", "direct_cr_controller.cpp", 0xDE, "reset", v36);
    _os_crash();
    __break(1u);
    goto LABEL_34;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[20]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[20]._os_unfair_lock_opaque;
  os_unfair_lock_lock(v5 + 36);
  os_unfair_lock_lock(v5 + 4);
  if ((v5[505] & 1) == 0)
  {
LABEL_34:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x145, "reset", v7);
    _os_crash();
    __break(1u);
    goto LABEL_35;
  }

  if (*(v5 + 136))
  {
LABEL_35:
    v10 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x146, "reset", v7);
    _os_crash();
    __break(1u);
    goto LABEL_36;
  }

  if (v5[32] == 1)
  {
    log_level = ashp::detail::logging::get_log_level(v6);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v9 = *(v5 + 104);
        *buf = 136446978;
        *&buf[4] = "cr_controller.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 327;
        *&buf[18] = 2082;
        *&buf[20] = "reset";
        v38 = 1024;
        v39 = v9;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is already terminated", buf, 0x22u);
      }
    }

    v10 = 3758097088;
    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once == -1)
      {
LABEL_10:
        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is already terminated", "cr_controller.cpp", 327, "reset", *(v5 + 104));
        goto LABEL_32;
      }

LABEL_36:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      goto LABEL_10;
    }
  }

  else
  {
    v11 = ashp::acipc::ring_controller::compute_state((v5 + 520));
    if (v11 == 7)
    {
      ashp::acipc::cr_controller::flush_all_transfer_rings(v5);
      ashp::dynamic_array<ashp::acipc::cr_controller::tr_association>::truncate(v5 + 145, 0, v12, v13, v14);
      ashp::acipc::ring_controller::reset((v5 + 520), v15, v16, v17, v18);
      ashp::unsafe_storage<ashp::acipc::completion_mirror>::storage::reset(v5 + 121);
      if (v5[960] == 1)
      {
        v5[960] = 0;
      }

      ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(v5 + 115, v19, v20, v21);
      *&buf[8] = 0;
      *&buf[16] = 0x200000000;
      *buf = 0;
      ashp::buffer_mapping::operator=((v5 + 896), buf, v22, v23);
      ashp::buffer_mapping::~buffer_mapping(buf, v24, v25, v26);
      v5[1208] = 0;
      if (v5[1233] == 1)
      {
        v5[1233] = 0;
      }

      os_unfair_lock_lock(v5 + 37);
      ashp::monitor_target::update_value(v5 + 174, 0);
      os_unfair_lock_unlock(v5 + 37);
      v27 = ashp::acipc::ring_controller::compute_state((v5 + 520));
      ashp::acipc::cr_controller::update_state_monitor_target(v5, v27);
      v29 = ashp::detail::logging::get_log_level(v28);
      if (v29 >= 4)
      {
        v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v29)
        {
          v30 = *(v5 + 104);
          *buf = 136446978;
          *&buf[4] = "cr_controller.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 347;
          *&buf[18] = 2082;
          *&buf[20] = "reset";
          v38 = 1024;
          v39 = v30;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller reset", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v29))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller reset", "cr_controller.cpp", 347, "reset", *(v5 + 104));
      }

      v10 = 0;
    }

    else
    {
      v31 = v11;
      v32 = ashp::detail::logging::get_log_level(v11);
      if (v32 >= 2)
      {
        v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v32)
        {
          v33 = *(v5 + 104);
          *buf = 136447234;
          *&buf[4] = "cr_controller.cpp";
          *&buf[14] = 329;
          *&buf[18] = 2082;
          *&buf[12] = 1024;
          *&buf[20] = "reset";
          v38 = 1024;
          v39 = v33;
          v40 = 1024;
          v41 = v31;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) invalid state %u", buf, 0x28u);
        }
      }

      if (ashp::detail::logging::get_log_level(v32))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) invalid state %u", "cr_controller.cpp", 329, "reset", *(v5 + 104), v31);
        v10 = 3758097112;
      }

      else
      {
        v10 = 3758097112;
      }
    }
  }

LABEL_32:
  os_unfair_lock_unlock(v5 + 4);
  os_unfair_lock_unlock(v5 + 36);
  os_unfair_lock_unlock(this + 16);
  v34 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_23ED00528(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  os_unfair_lock_unlock(v2 + 36);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_cr_controller::close(ashp::direct_cr_controller *this)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 168))
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
    v5 = ashp::acipc::cr_controller::close(*(this + 10));
    os_unfair_lock_unlock(this + 16);
    return v5;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0xC5, "close", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive CR", "direct_cr_controller.cpp", 0xC5, "close", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::direct_cr_controller::open(ashp::direct_cr_controller *this)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 168))
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
    v5 = ashp::acipc::cr_controller::open(*(this + 10));
    os_unfair_lock_unlock(this + 16);
    return v5;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0xBD, "open", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive CR", "direct_cr_controller.cpp", 0xBD, "open", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::direct_cr_controller::get_state(os_unfair_lock_s *this, unsigned int *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  if ((this[42]._os_unfair_lock_opaque & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0xAC, "get_state", v7);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive CR", "direct_cr_controller.cpp", 0xAC, "get_state", v19);
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[20]._os_unfair_lock_opaque, v5, v6, v7);
  v2 = *&this[20]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v2 + 16));
  if ((*(v2 + 505) & 1) == 0)
  {
LABEL_24:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x87, "get_state", v9);
    _os_crash();
    __break(1u);
    goto LABEL_25;
  }

  if (*(v2 + 32) == 1)
  {
    if (a2)
    {
      *a2 = 0;
    }

    log_level = ashp::detail::logging::get_log_level(v8);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v11 = *(v2 + 208);
        *buf = 136446978;
        v21 = "cr_controller.cpp";
        v22 = 1024;
        v23 = 139;
        v24 = 2082;
        v25 = "get_state";
        v26 = 1024;
        v27 = v11;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is already terminated", buf, 0x22u);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_12;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_11:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is already terminated", "cr_controller.cpp", 139, "get_state", *(v2 + 208));
LABEL_12:
      v12 = 8;
      goto LABEL_22;
    }

LABEL_25:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_11;
  }

  v12 = ashp::acipc::ring_controller::compute_state((v2 + 520));
  v13 = ashp::acipc::ring_controller::compute_state_detail((v2 + 520));
  v14 = v13;
  if (a2)
  {
    *a2 = v13;
  }

  v15 = ashp::detail::logging::get_log_level(v13);
  if (v15 >= 4)
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      v16 = *(v2 + 208);
      *buf = 136447490;
      v21 = "cr_controller.cpp";
      v22 = 1024;
      v23 = 145;
      v24 = 2082;
      v25 = "get_state";
      v26 = 1024;
      v27 = v16;
      v28 = 1024;
      v29 = v12;
      v30 = 1024;
      v31 = v14;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller state=%u, detail=%u", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(v15))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller state=%u, detail=%u", "cr_controller.cpp", 145, "get_state", *(v2 + 208), v12, v14);
  }

LABEL_22:
  os_unfair_lock_unlock((v2 + 16));
  os_unfair_lock_unlock(this + 16);
  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_23ED00A20(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_cr_controller::activate(ashp::direct_cr_controller *this)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 168) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0xA0, "activate", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to activate already-active CR", "direct_cr_controller.cpp", 0xA0, "activate", v31);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
    v8 = *(this + 10);
    v32 = *(this + 11);
    v35 = 0;
    if (*(this + 112) == 1)
    {
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v33, v5, v6, v7);
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v33, *(this + 12), v9, v10);
      v34 = *(this + 26);
      v35 = 1;
    }

    v36 = *(this + 120);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(v37, *(this + 16), v6, v7);
    v37[1] = *(this + 17);
    v40 = 0;
    if (*(this + 160) == 1)
    {
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v38, v11, v12, v13);
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v38, *(this + 18), v14, v15);
      v39 = *(this + 38);
      v40 = 1;
    }

    v16 = ashp::acipc::cr_controller::set_client_overrides(v8, &v32);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v38, v17, v18, v19);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v37, v20, v21, v22);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v33, v23, v24, v25);
    if (v16)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v26, v27, v28);
      v29 = ashp::acipc::cr_controller::activate(*(this + 10));
      if (!v29)
      {
        *(this + 168) = 1;
      }
    }

    else
    {
      v29 = 3758097090;
    }

    os_unfair_lock_unlock(this + 16);
    return v29;
  }

  return result;
}

void sub_23ED00BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v5 + 40), a2, a3, a4);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v5 + 8, v7, v8, v9);
  os_unfair_lock_unlock(v4 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_cr_controller::create_sync_monitor(ashp::direct_cr_controller *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
  ashp::acipc::cr_controller::create_sync_monitor(&v19, *(this + 10));
  v18 = 0;
  v7 = ashp::operator==<int,0>(&v19, &v18, v5, v6);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v18, v8, v9, v10);
  if (!v7)
  {
    v14 = *(this + 1);
    v15 = v19;
    v19 = 0;
    v17 = v15;
    ashp::direct_monitor::create();
  }

  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v19, v11, v12, v13);
  os_unfair_lock_unlock(this + 16);
  return 0;
}

void sub_23ED00CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va, a2, a3, a4);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va1, v7, v8, v9);
  os_unfair_lock_unlock(v5 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_cr_controller::create_state_monitor(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[20]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[20]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v5 + 16));
  if (*(v5 + 32) != 1)
  {
    ashp::acipc::ring_controller::create_monitor(&v21, (v5 + 520), *(v5 + 24), (v5 + 648));
  }

  ashp::detail::control_flow::log_guard_else_failure("cr_controller.cpp", 0x9A, "create_state_monitor", v6);
  ashp::acipc::cr_controller::create_state_monitor(void)::$_0::operator()<unsigned short>((v5 + 208));
  v21 = 0;
  os_unfair_lock_unlock((v5 + 16));
  v20 = 0;
  v9 = ashp::operator==<int,0>(&v21, &v20, v7, v8);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v20, v10, v11, v12);
  if (!v9)
  {
    v16 = *&this[2]._os_unfair_lock_opaque;
    v17 = v21;
    v21 = 0;
    v19 = v17;
    ashp::direct_monitor::create();
  }

  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v21, v13, v14, v15);
  os_unfair_lock_unlock(this + 16);
  return 0;
}

void sub_23ED00E24(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

void ashp::direct_cr_controller::set_interrupt(os_unfair_lock_s *this, const __CFString *a2, int a3)
{
  LODWORD(v3) = a3;
  v63 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[42]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0x96, "set_interrupt", v7);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempt to reconfigure active CR", "direct_cr_controller.cpp", 0x96, "set_interrupt", v43);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (!a2)
  {
LABEL_16:
    v3 = "direct_cr_controller.cpp";
    a2 = "set_interrupt";
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0x97, "set_interrupt", v7);
    v40 = "BUG in client of Airship: interrupt cannot be NULL";
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: interrupt cannot be NULL", "direct_cr_controller.cpp", 0x97, "set_interrupt", v44);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  ashp::boxed::symbol::with_str(&v45, a2, v6, v7);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v45, v8, v9, v10);
  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v46, v45, v11, v12);
  v47 = v3;
  v50 = 0;
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v48, v13, v14, v15);
  v16 = v46;
  v46 = 0;
  v48 = v16;
  v49 = v47;
  v50 = 1;
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(buf, &v48, v17, v18);
  ashp::swap(&this[36], buf, v19, v20);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(buf, v21, v22, v23);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v48, v24, v25, v26);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v46, v27, v28, v29);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v45, v30, v31, v32);
  LODWORD(a2) = (*(*&this->_os_unfair_lock_opaque + 80))(this);
  ashp::optional<ashp::acipc::name_and_selector,void>::value(&this[36], v33, v34, v35);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[36]._os_unfair_lock_opaque, v36, v37, v38);
  CStringPtr = *&this[36]._os_unfair_lock_opaque;
  if (CStringPtr)
  {
    CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
    if (CStringPtr)
    {
      v40 = CStringPtr;
    }

    else
    {
      v40 = "???";
    }
  }

  else
  {
    v40 = "(nil)";
  }

  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447490;
      v52 = "direct_cr_controller.cpp";
      v53 = 1024;
      v54 = 153;
      v55 = 2082;
      v56 = "set_interrupt";
      v57 = 1024;
      v58 = a2;
      v59 = 2080;
      v60 = v40;
      v61 = 1024;
      v62 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) new interrupt %s[%u]", buf, 0x32u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_13:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) new interrupt %s[%u]", "direct_cr_controller.cpp", 153, "set_interrupt", a2, v40, v3);
      goto LABEL_14;
    }

LABEL_17:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_13;
  }

LABEL_14:
  os_unfair_lock_unlock(this + 16);
  v42 = *MEMORY[0x277D85DE8];
}

void ashp::direct_cr_controller::set_doorbell_moderation(os_unfair_lock_s *this, int a2, int a3)
{
  LODWORD(v3) = a3;
  LODWORD(v4) = a2;
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[42]._os_unfair_lock_opaque) == 1)
  {
    v3 = "direct_cr_controller.cpp";
    v4 = "set_doorbell_moderation";
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0x8C, "set_doorbell_moderation", v6);
    v7 = "BUG in client of Airship: attempt to reconfigure active CR";
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempt to reconfigure active CR", "direct_cr_controller.cpp", 0x8C, "set_doorbell_moderation", v10);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v7 = (*(*&this->_os_unfair_lock_opaque + 80))(this);
  log_level = ashp::detail::logging::get_log_level(v7);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447490;
      v12 = "direct_cr_controller.cpp";
      v13 = 1024;
      v14 = 141;
      v15 = 2082;
      v16 = "set_doorbell_moderation";
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v4;
      v21 = 1024;
      v22 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) new doorbell interval (%u us), new leeway (%u us)", buf, 0x2Eu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_7:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) new doorbell interval (%u us), new leeway (%u us)", "direct_cr_controller.cpp", 141, "set_doorbell_moderation", v7, v4, v3);
      goto LABEL_8;
    }

LABEL_10:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_7;
  }

LABEL_8:
  this[34]._os_unfair_lock_opaque = v4;
  this[35]._os_unfair_lock_opaque = v3;
  os_unfair_lock_unlock(this + 16);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::direct_cr_controller::get_name(ashp::direct_cr_controller *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v16, *(*(this + 10) + 168), v5, v6);
  v7 = v16;
  v15 = v16;
  v16 = 0;
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v15, v8, v9, v10);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v16, v11, v12, v13);
  return v7;
}

void sub_23ED0147C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void ashp::direct_cr_controller::set_open_clientdata(os_unfair_lock_s *this, ashp::boxed::mutable_data *a2, unsigned int a3)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[42]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0x6B, "set_open_clientdata", v8);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active CR", "direct_cr_controller.cpp", 0x6B, "set_open_clientdata", v24);
    _os_crash();
    __break(1u);
  }

  else
  {
    v28 = 0;
    if (a2)
    {
      ashp::boxed::mutable_data::with_capacity(&v27, a3);
      v9 = v27;
      v27 = v28;
      v28 = v9;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v27, v10, v11, v12);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v28, v13, v14, v15);
      ashp::boxed::mutable_data::append_bytes(v28, a2, a3, v16);
      a2 = v28;
      v28 = 0;
      v25 = a2;
      if (a2)
      {
        v25 = 0;
        v29 = a2;
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v29, v6, v7, v8);
      }
    }

    else
    {
      v28 = 0;
      v25 = 0;
    }

    v17 = *&this[32]._os_unfair_lock_opaque;
    *&this[32]._os_unfair_lock_opaque = a2;
    v26 = v17;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v26, v6, v7, v8);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v25, v18, v19, v20);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v28, v21, v22, v23);
    os_unfair_lock_unlock(this + 16);
  }
}

void sub_23ED015F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va1, v7, v8, v9);
  os_unfair_lock_unlock(v5 + 16);
  _Unwind_Resume(a1);
}

void ashp::direct_cr_controller::set_mirror_enabled(os_unfair_lock_s *this, char a2)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[42]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0x63, "set_mirror_enabled", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active CR", "direct_cr_controller.cpp", 0x63, "set_mirror_enabled", v5);
    _os_crash();
    __break(1u);
  }

  else
  {
    LOBYTE(this[30]._os_unfair_lock_opaque) = a2;

    os_unfair_lock_unlock(this + 16);
  }
}

uint64_t ashp::direct_cr_controller::get_mirror_enabled(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  os_unfair_lock_opaque_low = LOBYTE(this[30]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(this + 16);
  return os_unfair_lock_opaque_low;
}

void ashp::direct_cr_controller::set_completion_group(os_unfair_lock_s *this, const __CFString *a2, int a3)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[42]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0x54, "set_completion_group", v7);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active CR", "direct_cr_controller.cpp", 0x54, "set_completion_group", v33);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::boxed::symbol::with_str(&v34, a2, v6, v7);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v34, v8, v9, v10);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v35, v34, v11, v12);
    v36 = a3;
    v39 = 0;
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v37, v13, v14, v15);
    v16 = v35;
    v35 = 0;
    v37 = v16;
    v38 = v36;
    v39 = 1;
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v40, &v37, v17, v18);
    ashp::swap(&this[24], v40, v19, v20);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v40, v21, v22, v23);
    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v37, v24, v25, v26);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v35, v27, v28, v29);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v34, v30, v31, v32);
    os_unfair_lock_unlock(this + 16);
  }
}

uint64_t ashp::direct_cr_controller::get_completion_group(ashp::direct_cr_controller *this, unsigned int *a2)
{
  os_unfair_lock_lock(this + 16);
  if (*(this + 112) == 1)
  {
    ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 96, v4, v5, v6);
    if (a2)
    {
      *a2 = *(this + 26);
    }

    ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 96, v7, v8, v9);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v23, *(this + 12), v10, v11);
    v15 = v23;
    if (v23)
    {
      v23 = 0;
      v25 = v15;
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v25, v12, v13, v14);
    }

    v24 = v15;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v23, v12, v13, v14);
    v24 = 0;
    v25 = v15;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v25, v16, v17, v18);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v24, v19, v20, v21);
  }

  else
  {
    v15 = 0;
    if (a2)
    {
      *a2 = 0xFFFF;
    }
  }

  os_unfair_lock_unlock(this + 16);
  return v15;
}

void sub_23ED01948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  os_unfair_lock_unlock(v5 + 16);
  _Unwind_Resume(a1);
}

void ashp::direct_cr_controller::set_footer_size(os_unfair_lock_s *this, uint32_t a2)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[42]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0x3B, "set_footer_size", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active CR", "direct_cr_controller.cpp", 0x3B, "set_footer_size", v5);
    _os_crash();
    __break(1u);
  }

  else
  {
    this[23]._os_unfair_lock_opaque = a2;

    os_unfair_lock_unlock(this + 16);
  }
}

uint64_t ashp::direct_cr_controller::get_footer_size(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  os_unfair_lock_opaque = this[23]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 16);
  return os_unfair_lock_opaque;
}

void ashp::direct_cr_controller::set_backing_ring_size(os_unfair_lock_s *this, __int16 a2)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[42]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_cr_controller.cpp", 0x2C, "set_backing_ring_size", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active CR", "direct_cr_controller.cpp", 0x2C, "set_backing_ring_size", v5);
    _os_crash();
    __break(1u);
  }

  else
  {
    LOWORD(this[22]._os_unfair_lock_opaque) = a2;

    os_unfair_lock_unlock(this + 16);
  }
}

uint64_t ashp::direct_cr_controller::get_backing_ring_size(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  os_unfair_lock_opaque_low = LOWORD(this[22]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(this + 16);
  return os_unfair_lock_opaque_low;
}

void ashp::direct_cr_controller::destroy(ashp::direct_cr_controller *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v7 = this;
    *this = &unk_28515D870;
    v5 = (this + 80);
    v8 = ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, a2, a3, a4);
    v6 = *(*v5 + 208);
    log_level = ashp::detail::logging::get_log_level(v8);
    if (log_level >= 3)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        v37 = "direct_cr_controller.cpp";
        v38 = 1024;
        v39 = 28;
        v40 = 2082;
        v41 = "~direct_cr_controller";
        v42 = 1024;
        v43 = v6;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] crid: %u", buf, 0x22u);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
LABEL_8:
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v5, v10, v11, v12);
      ashp::driver_object::terminate(*v5);
      ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(v5, v13, v14, v15);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset((v7 + 144), v16, v17, v18);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v7 + 16, v19, v20, v21);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset((v7 + 96), v22, v23, v24);
      ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(v5, v25, v26, v27);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v7 + 9, v28, v29, v30);
      ashp::direct_client_object::~direct_client_object(v7 + 1, v31, v32, v33, v34);
      v35 = *MEMORY[0x277D85DE8];

      JUMPOUT(0x23EF204E0);
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_7:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] crid: %u", "direct_cr_controller.cpp", 28, "~direct_cr_controller", v6);
      goto LABEL_8;
    }
  }

  else
  {
    v7 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  goto LABEL_7;
}

void sub_23ED01D80(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN4ashp5acipc20index_array_signalerC2EPNS0_12acipc_driverEPtt_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    os_unfair_lock_lock((v5 + 4));
    os_unfair_lock_assert_owner((v5 + 4));
    if (*(v5 + 8))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = ashp::dynamic_array<ashp::acipc::index_array_signaler::element>::operator[]((v5 + 8), v9, v7, v8);
        if (*(v11 + 20) == a2 && *(v11 + 16) == 1)
        {
          v12 = *(*(v5 + 32) + 2 * v9);
          if (v12 != *(v11 + 24))
          {
            *(v11 + 24) = v12;
            *(v11 + 16) = 0;
            v13 = *(v11 + 8);
            if (!v13)
            {
              ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0x7D, "value", v8);
              ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0x7D, "value", v14);
              _os_crash();
              __break(1u);
              goto LABEL_14;
            }

            (*(v13 + 16))(*(v11 + 8), *v11);
          }
        }

        v9 = ++v10;
      }

      while (*(v5 + 8) > v10);
    }

    os_unfair_lock_unlock((v5 + 4));
  }

  else
  {
LABEL_14:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "index_array_signaler.cpp", 0x15, "index_array_signaler_block_invoke", a5);
    _os_crash();
    __break(1u);
  }
}

void ashp::detail::dynamic_array::storage<ashp::acipc::index_array_signaler::element>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1)
  {
    v5 = 0;
    v6 = 8;
    while (1)
    {
      v7 = a1[2];
      if (!v7)
      {
        break;
      }

      ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((v7 + v6), a2, a3, a4);
      ++v5;
      v6 += 32;
      if (v5 >= *a1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    *a1 = 0;
    v8 = a1[2];
    if (v8)
    {
      free(v8);
      a1[2] = 0;
    }
  }
}

uint64_t ashp::dynamic_array<ashp::acipc::index_array_signaler::element>::operator[](unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1 > a2)
  {
    return a1[2] + 32 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::index_array_signaler::~index_array_signaler(ashp::acipc::index_array_signaler *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::optional<ashp::interrupt,void>::value(this + 48, a2, a3, a4);
  v5 = *(this + 6);
  ashp::optional<ashp::interrupt_manager,void>::value(&v5[158], v6, v7, v8);
  ashp::interrupt_manager::suspend_handler(v5 + 158, this + 48);
  if (*(this + 104) == 1)
  {
    *(this + 104) = 0;
    ashp::interrupt::~interrupt(this + 6, v9, v10, v11, v12);
    if (*(this + 104))
    {
      *(this + 104) = 0;
      ashp::interrupt::~interrupt(this + 6, v9, v10, v11, v13);
    }
  }

  ashp::detail::dynamic_array::storage<ashp::acipc::index_array_signaler::element>::~storage(this + 1, v9, v10, v11);
}

uint64_t ashp::acipc::memregion_controller::reap(ashp::acipc::memregion_controller *this)
{
  v44 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 36);
  os_unfair_lock_lock(this + 4);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 19, v2, v3, v4);
  CStringPtr = *(this + 19);
  if (CStringPtr)
  {
    CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
    if (CStringPtr)
    {
      v6 = CStringPtr;
    }

    else
    {
      v6 = "???";
    }
  }

  else
  {
    v6 = "(nil)";
  }

  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v8 = *(this + 40);
      *buf = 136447234;
      v35 = "memregion_controller.cpp";
      v36 = 1024;
      v37 = 262;
      v38 = 2082;
      v39 = "reap";
      v40 = 2080;
      v41 = v6;
      v42 = 1024;
      v43 = v8;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reaping %s[%u]", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reaping %s[%u]", "memregion_controller.cpp", 262, "reap", v6, *(this + 40));
  }

  v9 = ashp::acipc::memregion_controller::compute_state(this);
  if ((v9 - 4) >= 3)
  {
    v10 = v9 - 2;
    v11 = (this + 16);
    if (v10 <= 1)
    {
      os_unfair_lock_unlock(v11);
      v12 = *(this + 3);
      ashp::optional<ashp::interrupt,void>::value(&v12[1220], v13, v14, v15);
      ashp::acipc::memregion_manager::unmap_region(v12 + 1220, this, v16, v17, v18);
      goto LABEL_17;
    }

    os_unfair_lock_unlock(v11);
    v21 = *(this + 3);
    ashp::optional<ashp::interrupt,void>::value(&v21[1220], v22, v23, v24);
    os_unfair_lock_lock(v21 + 1220);
    if (*(this + 35) == this)
    {
      if (!*(this + 78))
      {
        *(this + 35) = 0;
        v27 = ashp::detail::logging::get_log_level(v25);
        if (v27 >= 4)
        {
          v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v27)
          {
            v28 = *(this + 188);
            *buf = 136446978;
            v35 = "memregion_manager.cpp";
            v36 = 1024;
            v37 = 145;
            v38 = 2082;
            v39 = "remove_region";
            v40 = 1024;
            LODWORD(v41) = v28;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] region id %hu removing memregion_controller", buf, 0x22u);
          }
        }

        if (!ashp::detail::logging::get_log_level(v27))
        {
          goto LABEL_27;
        }

        if (airship_platform_get_global_logger::once == -1)
        {
LABEL_26:
          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] region id %hu removing memregion_controller", "memregion_manager.cpp", 145, "remove_region", *(this + 188));
LABEL_27:
          ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::remove(&v21[1228], this + 35, v29, v30);
          os_unfair_lock_unlock(v21 + 1220);
          os_unfair_lock_unlock(this + 36);
          ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::release(this + 1, v31, v32, v33);
          result = 1;
          goto LABEL_18;
        }

LABEL_30:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        goto LABEL_26;
      }
    }

    else
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x8E, "remove_region", v26);
      _os_crash();
      __break(1u);
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x8F, "remove_region", v26);
    _os_crash();
    __break(1u);
    goto LABEL_30;
  }

  os_unfair_lock_unlock(this + 4);
LABEL_17:
  os_unfair_lock_unlock(this + 36);
  result = 0;
LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23ED02444(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));
  os_unfair_lock_unlock(v1 + 36);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::memregion_controller::compute_state(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 4);
  os_unfair_lock_opaque = this[96]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque > 2)
  {
    if (os_unfair_lock_opaque == 4)
    {
      v4 = 5;
    }

    else
    {
      v4 = 2;
    }

    if (os_unfair_lock_opaque == 3)
    {
      return 4;
    }

    else
    {
      return v4;
    }
  }

  else if (os_unfair_lock_opaque)
  {
    if (os_unfair_lock_opaque == 2)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (LOBYTE(this[99]._os_unfair_lock_opaque) == 1)
  {
    if (LOBYTE(this[100]._os_unfair_lock_opaque))
    {
      return 7;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    return this[97]._os_unfair_lock_opaque == 0;
  }
}

void ashp::acipc::memregion_controller::handle_terminate(ashp::acipc::memregion_controller *this)
{
  os_unfair_lock_assert_owner(this + 4);
  v5 = *(this + 51);
  if (v5)
  {
    v6 = *(this + 53);
    v7 = 8 * v5;
    do
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v6, v2, v3, v4);
      v8 = *v6++;
      ashp::driver_object::terminate(v8);
      v7 -= 8;
    }

    while (v7);
  }

  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>>::reduce_size(this + 51, v2, v3, v4);
  os_unfair_lock_unlock(this + 4);
  ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::retain(this + 1, v9, v10, v11);
  ashp::reaper_target::attempt_reap((this + 96));

  os_unfair_lock_lock(this + 4);
}

void ashp::acipc::memregion_controller::destroy(ashp::acipc::memregion_controller *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    *this = &unk_28515DA90;
    v6 = (this + 96);
    *(this + 12) = &unk_28515DAB8;
    ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>>::~storage(this + 51, a2, a3, a4);
    if (*(this + 396) == 1)
    {
      *(this + 396) = 0;
    }

    ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 44, v7, v8, v9, v10);
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 328, v11, v12, v13);
    ashp::intrusive_list_link<ashp::acipc::detail::memregion_manager::region_context>::~intrusive_list_link(this + 288, v14, v15, v16);
    ashp::monitor_target::~monitor_target((this + 232), v17, v18, v19, v20);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 27, v21, v22, v23);
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(this + 25, v24, v25, v26);
    ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 21, v27, v28, v29, v30);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 19, v31, v32, v33);
    ashp::reaper_target::~reaper_target(v6, v34, v35, v36, v37);
    ashp::driver_object::~driver_object(this, v38, v39, v40, v41);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

uint64_t ashp::acipc::memregion_controller::validate_client_overrides(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!*a1)
  {
    return 1;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = v4 + v5;
  if (__CFADD__(v4, v5))
  {
    v12 = 427;
  }

  else
  {
    v7 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    ashp::optional<ashp::memory_descriptor,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v7 + 24), v8, v9, v10);
    if (v6 <= *(v7 + 28))
    {
      return 1;
    }

    v12 = 428;
  }

  ashp::detail::control_flow::log_guard_else_failure("memregion_controller.cpp", v12, "validate_client_overrides", a4);
  return 0;
}

void ashp::acipc::detail::memregion_manager::region_context::~region_context(ashp::acipc::detail::memregion_manager::region_context *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 9, a2, a3, a4, a5);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 48, v6, v7, v8);
  ashp::intrusive_list_link<ashp::acipc::detail::memregion_manager::region_context>::~intrusive_list_link(this + 8, v9, v10, v11);
}

void ashp::acipc::memregion_controller::set_client_overrides(ashp::acipc::memregion_controller::client_overrides)::$_0::operator()<char const*,unsigned int>(ashp::detail::logging *a1, _DWORD *a2)
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
      v9 = "memregion_controller.cpp";
      v10 = 1024;
      v11 = 43;
      v12 = 2082;
      v13 = "set_client_overrides";
      v14 = 2080;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to set client overrides for %s[%u]", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to set client overrides for %s[%u]", "memregion_controller.cpp", 43, "set_client_overrides", *a1, *a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::memregion_controller::update_state_monitor_target(uint64_t a1, unsigned int a2)
{
  os_unfair_lock_assert_owner((a1 + 16));
  if (a2 == 1)
  {
    os_unfair_lock_lock((a1 + 232));
    v9 = 0;
    if (*(a1 + 272) == 1)
    {
      v8 = *(a1 + 264);
      v9 = 1;
      os_unfair_lock_unlock((a1 + 232));
      v6 = 7;
      v7 = 1;
      if ((ashp::operator==<int,0>(&v8, &v6, v4, v5) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 232));
    }

    ashp::monitor_target::update_value((a1 + 232), 0);
  }

LABEL_7:
  ashp::monitor_target::update_value((a1 + 232), a2);
}

void ashp::acipc::memregion_controller::set_device_region_status(uint64_t a1, int a2)
{
  LODWORD(v4) = a2;
  v32 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 16));
  if ((*(a1 + 224) & 1) == 0)
  {
    v4 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0xCE, "set_device_region_status", v9);
    _os_crash();
    __break(1u);
    goto LABEL_34;
  }

  v2 = *(a1 + 384);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 152), v6, v7, v8);
  CStringPtr = *(a1 + 152);
  if (CStringPtr)
  {
    CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
    if (CStringPtr)
    {
      v3 = CStringPtr;
    }

    else
    {
      v3 = "???";
    }
  }

  else
  {
    v3 = "(nil)";
  }

  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v12 = *(a1 + 160);
      *buf = 136447746;
      v19 = "memregion_controller.cpp";
      v20 = 1024;
      v21 = 210;
      v22 = 2082;
      v23 = "set_device_region_status";
      v24 = 2080;
      v25 = v3;
      v26 = 1024;
      v27 = v12;
      v28 = 1024;
      v29 = v2;
      v30 = 1024;
      v31 = v4;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] %s[%u] old status %u, new status %u", buf, 0x38u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_12:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] %s[%u] old status %u, new status %u", "memregion_controller.cpp", 210, "set_device_region_status", v3, *(a1 + 160), v2, v4);
      goto LABEL_13;
    }

LABEL_34:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_12;
  }

LABEL_13:
  *(a1 + 384) = v4;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
LABEL_23:
      if (v2 < 2)
      {
        goto LABEL_28;
      }

      v4 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0xDA, "set_device_region_status", v13);
      _os_crash();
      __break(1u);
      goto LABEL_25;
    }

    if (v4 != 3)
    {
LABEL_25:
      if (v2 == 3)
      {
        goto LABEL_28;
      }

      v4 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0xE0, "set_device_region_status", v13);
      _os_crash();
      __break(1u);
      goto LABEL_27;
    }

    if (v2 - 1 < 2)
    {
      goto LABEL_28;
    }

    v4 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0xDD, "set_device_region_status", v13);
    _os_crash();
    __break(1u);
  }

  if (v4)
  {
LABEL_27:
    if (v2)
    {
LABEL_36:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0xD7, "set_device_region_status", v13);
      _os_crash();
      __break(1u);
LABEL_37:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0xE5, "set_device_region_status", v13);
      _os_crash();
      __break(1u);
    }

LABEL_28:
    v14 = ashp::acipc::memregion_controller::compute_state(a1);
    ashp::acipc::memregion_controller::update_state_monitor_target(a1, v14);
    if (v4)
    {
LABEL_32:
      os_unfair_lock_unlock((a1 + 16));
      v17 = *MEMORY[0x277D85DE8];
      return;
    }

    if (*(a1 + 400) != 1)
    {
      *(a1 + 400) = 1;
      v16 = ashp::acipc::memregion_controller::compute_state(a1);
      ashp::acipc::memregion_controller::update_state_monitor_target(a1, v16);
      if (*(a1 + 32) == 1)
      {
        ashp::reaper_target::request_reap((a1 + 96));
      }

      goto LABEL_32;
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0xED, "set_device_region_status", v15);
    _os_crash();
    __break(1u);
    goto LABEL_36;
  }

  if (v2 - 1 < 4)
  {
    if ((*(a1 + 396) & 1) == 0)
    {
      goto LABEL_37;
    }

    if (*(a1 + 400) != 1)
    {
      goto LABEL_28;
    }

    v4 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0xE6, "set_device_region_status", v13);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0xE4, "set_device_region_status", v13);
  _os_crash();
  __break(1u);
}

uint64_t ashp::acipc::direct_boot::reset(os_unfair_lock_s *this)
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v5 + 192));
  os_unfair_lock_lock((v5 + 16));
  if (*(v5 + 456) != 1 || (os_unfair_lock_assert_owner((v5 + 16)), *(v5 + 472) == 1))
  {
    ashp::detail::control_flow::log_guard_else_failure("boot_controller.cpp", 0x1AE, "reset", v6);
    v12 = 3758097112;
  }

  else
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 200), v7, v8, v6);
    CStringPtr = *(v5 + 200);
    if (CStringPtr)
    {
      CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
      if (CStringPtr)
      {
        v10 = CStringPtr;
      }

      else
      {
        v10 = "???";
      }
    }

    else
    {
      v10 = "(nil)";
    }

    log_level = ashp::detail::logging::get_log_level(CStringPtr);
    if (log_level >= 3)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        v16 = "boot_controller.cpp";
        v17 = 1024;
        v18 = 431;
        v19 = 2082;
        v20 = "reset";
        v21 = 2080;
        v22 = v10;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) reseting boot controller", buf, 0x26u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) reseting boot controller", "boot_controller.cpp", 431, "reset", v10);
    }

    *(v5 + 456) = 0;
    if (*(v5 + 464) == 1)
    {
      *(v5 + 464) = 0;
    }

    *(v5 + 472) = 0;
    ashp::acipc::boot_controller::release_image_transfer_resources(v5);
    if (*(v5 + 620) == 1)
    {
      *(v5 + 620) = 0;
    }

    *(v5 + 624) = 0;
    ashp::acipc::boot_controller::recompute_state(v5);
    v12 = 0;
  }

  os_unfair_lock_unlock((v5 + 16));
  os_unfair_lock_unlock((v5 + 192));
  os_unfair_lock_unlock(this + 16);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void ashp::acipc::direct_boot::probe_image_response(ashp::acipc::direct_boot *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 9, v2, v3, v4);
  ashp::acipc::boot_controller::probe_image_response(*(this + 9));

  os_unfair_lock_unlock(this + 16);
}

uint64_t ashp::acipc::direct_boot::get_image_response(os_unfair_lock_s *this, unsigned int *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v4, v5, v6);
  v7 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v7 + 16));
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v7 + 200), v8, v9, v10);
  CStringPtr = *(v7 + 200);
  if (CStringPtr)
  {
    CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
    if (CStringPtr)
    {
      v12 = CStringPtr;
    }

    else
    {
      v12 = "???";
    }
  }

  else
  {
    v12 = "(nil)";
  }

  v13 = *(v7 + 624);
  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447234;
      v39 = "boot_controller.cpp";
      v40 = 1024;
      v41 = 326;
      v42 = 2082;
      v43 = "get_image_response";
      v44 = 2080;
      v45 = v12;
      v46 = 1024;
      v47 = v13;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) image response code=%u", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) image response code=%u", "boot_controller.cpp", 326, "get_image_response", v12, v13);
  }

  if ((*(v7 + 624) - 1) < 3)
  {
    if (*(v7 + 620))
    {
      v19 = (v7 + 616);
      ashp::optional<unsigned int,void>::value(v7 + 616, v15, v16, v17);
      if (a2)
      {
        *a2 = *v19;
      }

      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v7 + 200), v20, v21, v22);
      v26 = *(v7 + 200);
      if (v26)
      {
        v27 = CFStringGetCStringPtr(v26, 0x8000100u);
        if (v27)
        {
          v28 = v27;
        }

        else
        {
          v28 = "???";
        }
      }

      else
      {
        v28 = "(nil)";
      }

      v32 = ashp::optional<unsigned int,void>::value(v7 + 616, v23, v24, v25);
      v33 = ashp::detail::logging::get_log_level(v32);
      if (v33 >= 4)
      {
        v33 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v33)
        {
          v34 = *v19;
          *buf = 136447234;
          v39 = "boot_controller.cpp";
          v40 = 1024;
          v41 = 334;
          v42 = 2082;
          v43 = "get_image_response";
          v44 = 2080;
          v45 = v28;
          v46 = 1024;
          v47 = v34;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) out code=%u", buf, 0x2Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v33))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) out code=%u", "boot_controller.cpp", 334, "get_image_response", v28, *v19);
      }

      goto LABEL_42;
    }

    v30 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x14C, "get_image_response", v18);
    _os_crash();
    __break(1u);
    goto LABEL_44;
  }

  if (a2)
  {
    *a2 = -1;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v7 + 200), v15, v16, v17);
  v29 = *(v7 + 200);
  if (v29)
  {
    v29 = CFStringGetCStringPtr(v29, 0x8000100u);
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = "???";
    }
  }

  else
  {
    v30 = "(nil)";
  }

  v31 = ashp::detail::logging::get_log_level(v29);
  if (v31 >= 4)
  {
    v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      *buf = 136447234;
      v39 = "boot_controller.cpp";
      v40 = 1024;
      v41 = 338;
      v42 = 2082;
      v43 = "get_image_response";
      v44 = 2080;
      v45 = v30;
      v46 = 1024;
      v47 = -1;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) out code=%u", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v31))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_33:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) out code=%u", "boot_controller.cpp", 338, "get_image_response", v30, -1);
      goto LABEL_42;
    }

LABEL_44:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_33;
  }

LABEL_42:
  v35 = *(v7 + 624);
  os_unfair_lock_unlock((v7 + 16));
  os_unfair_lock_unlock(this + 16);
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

void sub_23ED035FC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::direct_boot::send_image(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v122 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 64));
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 72), v8, v9, v10);
  v11 = *(a1 + 72);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a2 + 64), v12, v13, v14);
  v15 = *(a2 + 64);
  v16 = a3;
  ashp::detail::logging::ktrace_helper::ktrace_helper(v117, 102842440);
  os_unfair_lock_lock((v11 + 192));
  os_unfair_lock_lock((v11 + 16));
  if (*(v11 + 456) == 1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v11 + 200), v17, v18, v19);
    CStringPtr = *(v11 + 200);
    if (CStringPtr)
    {
      CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
      if (CStringPtr)
      {
        v21 = CStringPtr;
      }

      else
      {
        v21 = "???";
      }
    }

    else
    {
      v21 = "(nil)";
    }

    log_level = ashp::detail::logging::get_log_level(CStringPtr);
    if (log_level >= 1)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        *&buf[4] = "boot_controller.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 225;
        *&buf[18] = 2082;
        *&buf[20] = "send_image";
        *&buf[28] = 2080;
        *&buf[30] = v21;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) controller is dead", buf, 0x26u);
      }
    }

    v32 = 3758097112;
    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) controller is dead", "boot_controller.cpp", 225, "send_image", v21);
    }

    goto LABEL_111;
  }

  if (*(v11 + 472))
  {
    v32 = 3758097112;
    ashp::detail::control_flow::log_guard_else_failure("boot_controller.cpp", 0xE2, "send_image", v19);
    goto LABEL_111;
  }

  if (*(v11 + 468))
  {
    v22 = __CFADD__(a3, a4);
    v23 = a3 + a4;
    if (v22)
    {
      v104 = 230;
    }

    else
    {
      ashp::optional<ashp::memory_descriptor,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v15[6]._os_unfair_lock_opaque, v17, v18, v19);
      if (v23 <= v15[7]._os_unfair_lock_opaque)
      {
        paddr = ashp::devmem_mapping::get_paddr(v15);
        if (paddr == -1)
        {
          ashp::detail::control_flow::log_guard_else_failure("boot_controller.cpp", 0xEA, "send_image", v26);
          v32 = 3758097118;
          goto LABEL_111;
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v11 + 200), v24, v25, v26);
        v27 = *(v11 + 200);
        if (v27)
        {
          v27 = CFStringGetCStringPtr(v27, 0x8000100u);
          if (v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = "???";
          }
        }

        else
        {
          v28 = "(nil)";
        }

        v34 = ashp::detail::logging::get_log_level(v27);
        if (v34 >= 3)
        {
          v34 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v34)
          {
            *buf = 136446978;
            *&buf[4] = "boot_controller.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 235;
            *&buf[18] = 2082;
            *&buf[20] = "send_image";
            *&buf[28] = 2080;
            *&buf[30] = v28;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) sending image", buf, 0x26u);
          }
        }

        if (ashp::detail::logging::get_log_level(v34))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) sending image", "boot_controller.cpp", 235, "send_image", v28);
        }

        v115 = 0;
        v114 = 0;
        v113 = 0;
        if (*(v11 + 376) == 1)
        {
          ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v11 + 200), v35, v36, v37);
          v38 = *(v11 + 200);
          if (v38)
          {
            v38 = CFStringGetCStringPtr(v38, 0x8000100u);
            if (v38)
            {
              v39 = v38;
            }

            else
            {
              v39 = "???";
            }
          }

          else
          {
            v39 = "(nil)";
          }

          v40 = ashp::detail::logging::get_log_level(v38);
          if (v40 >= 4)
          {
            v40 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v40)
            {
              *buf = 136446978;
              *&buf[4] = "boot_controller.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 242;
              *&buf[18] = 2082;
              *&buf[20] = "send_image";
              *&buf[28] = 2080;
              *&buf[30] = v39;
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) computing image table", buf, 0x26u);
            }
          }

          if (ashp::detail::logging::get_log_level(v40))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) computing image table", "boot_controller.cpp", 242, "send_image", v39);
          }

          ashp::mappable_buffer::create(buf, 32, 2, v41, v42);
          if (buf[8])
          {
            v46 = *(v11 + 24);
            ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v43, v44, v45);
            ashp::mappable_buffer::copy_descriptor(v112, buf, v47, v48, v49);
            ashp::devmem_mapping::create();
          }

          ashp::detail::control_flow::log_guard_else_failure("boot_controller.cpp", 0xF5, "send_image", v45);
          ashp::buffer_mapping::~buffer_mapping(buf, v105, v106, v107);
          v32 = 3758097084;
          goto LABEL_110;
        }

        ashp::optional<unsigned long long,ashp::optional_sentinel<18446744073709551615ull,false>>::value(&paddr, v35, v36, v37);
        v115 = paddr + v16;
        v114 = a4;
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v11 + 200), v50, v51, v52);
        v53 = *(v11 + 200);
        if (v53)
        {
          v53 = CFStringGetCStringPtr(v53, 0x8000100u);
          if (v53)
          {
            v54 = v53;
          }

          else
          {
            v54 = "???";
          }
        }

        else
        {
          v54 = "(nil)";
        }

        v55 = ashp::detail::logging::get_log_level(v53);
        if (v55 >= 4)
        {
          v55 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v55)
          {
            *buf = 136447490;
            *&buf[4] = "boot_controller.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 276;
            *&buf[18] = 2082;
            *&buf[20] = "send_image";
            *&buf[28] = 2080;
            *&buf[30] = v54;
            *&buf[38] = 2048;
            v119 = v115;
            v120 = 1024;
            v121 = v114;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) image address 0x%llx, length 0x%x", buf, 0x36u);
          }
        }

        if (ashp::detail::logging::get_log_level(v55))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) image address 0x%llx, length 0x%x", "boot_controller.cpp", 276, "send_image", v54, v115, v114);
        }

        ashp::optional<ashp::interrupt,void>::value(v11 + 536, v56, v57, v58);
        v59 = *(v11 + 536);
        ashp::optional<ashp::interrupt_manager,void>::value(&v59[158], v60, v61, v62);
        ashp::interrupt_manager::resume_handler(v59 + 158, v11 + 536);
        v110 = v11;
        v111 = 1;
        os_unfair_lock_unlock((v11 + 16));
        v63 = *(v11 + 24);
        ashp::optional<ashp::acipc::boot_manager,void>::value(v63 + 4208, v64, v65, v66);
        os_unfair_lock_lock((v63 + 4208));
        if (*(v11 + 144) == v11)
        {
          v72 = *(v63 + 4224);
          if (v72 == 1)
          {
            v73 = ashp::detail::logging::get_log_level(v67);
            if (v73 >= 2)
            {
              v73 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v73)
              {
                *buf = 136446722;
                *&buf[4] = "boot_manager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 114;
                *&buf[18] = 2082;
                *&buf[20] = "set_image_sent";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] image has already been sent", buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v73))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] image has already been sent", "boot_manager.cpp", 114, "set_image_sent");
            }
          }

          else
          {
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v11 + 184), v68, v69, v70);
            v74 = *(v11 + 184);
            if (v74)
            {
              v74 = CFStringGetCStringPtr(v74, 0x8000100u);
              if (v74)
              {
                v75 = v74;
              }

              else
              {
                v75 = "???";
              }
            }

            else
            {
              v75 = "(nil)";
            }

            v76 = ashp::detail::logging::get_log_level(v74);
            if (v76 >= 3)
            {
              v76 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v76)
              {
                *buf = 136446978;
                *&buf[4] = "boot_manager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 115;
                *&buf[18] = 2082;
                *&buf[20] = "set_image_sent";
                *&buf[28] = 2080;
                *&buf[30] = v75;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] image sent for ipc stage %s", buf, 0x26u);
              }
            }

            if (ashp::detail::logging::get_log_level(v76))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] image sent for ipc stage %s", "boot_manager.cpp", 115, "set_image_sent", v75);
            }

            *(v63 + 4224) = 1;
            *(v11 + 176) = 1;
          }

          os_unfair_lock_unlock((v63 + 4208));
          os_unfair_lock_lock((v11 + 16));
          if (!v72)
          {
            v78 = *(v11 + 24);
            v109[0] = v11;
            v109[1] = &v115;
            v109[2] = &v114;
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZNK4ashp6driver21with_device_transportIZNS_5acipc15boot_controller10send_imageEPNS_14devmem_mappingEjjE3__7EEvT__block_invoke;
            *&buf[24] = &__block_descriptor_tmp_43;
            *&buf[32] = v109;
            ashp::driver::with_device_transport(v78, buf);
            if (v111 == 1)
            {
              v111 = 0;
            }

            *(v11 + 472) = 1;
            ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::refcounted_ptr(v109, v15, v79, v80);
            v81 = *(v11 + 600);
            *(v11 + 600) = v109[0];
            v109[0] = v81;
            ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(v109, v82, v83, v84);
            v85 = v113;
            v113 = 0;
            v86 = *(v11 + 608);
            *(v11 + 608) = v85;
            v108 = v86;
            ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(&v108, v87, v88, v89);
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v11 + 200), v90, v91, v92);
            v93 = *(v11 + 200);
            if (v93)
            {
              v93 = CFStringGetCStringPtr(v93, 0x8000100u);
              if (v93)
              {
                v94 = v93;
              }

              else
              {
                v94 = "???";
              }
            }

            else
            {
              v94 = "(nil)";
            }

            v95 = ashp::detail::logging::get_log_level(v93);
            if (v95 >= 3)
            {
              v95 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v95)
              {
                *buf = 136446978;
                *&buf[4] = "boot_controller.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 307;
                *&buf[18] = 2082;
                *&buf[20] = "send_image";
                *&buf[28] = 2080;
                *&buf[30] = v94;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) image sent, recomputing state", buf, 0x26u);
              }
            }

            if (ashp::detail::logging::get_log_level(v95))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) image sent, recomputing state", "boot_controller.cpp", 307, "send_image", v94);
            }

            ashp::acipc::boot_controller::recompute_state(v11);
            v32 = 0;
            goto LABEL_109;
          }
        }

        else
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_manager.cpp", 0x71, "set_image_sent", v71);
          _os_crash();
          __break(1u);
        }

        v32 = 3758097112;
        ashp::detail::control_flow::log_guard_else_failure("boot_controller.cpp", 0x11C, "send_image", v77);
LABEL_109:
        ashp::deferred_action<ashp::acipc::boot_controller::send_image(ashp::devmem_mapping *,unsigned int,unsigned int)::$_5>::~deferred_action(&v110, v96, v97, v98);
LABEL_110:
        ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(&v113, v99, v100, v101);
        goto LABEL_111;
      }

      v104 = 231;
    }

    ashp::detail::control_flow::log_guard_else_failure("boot_controller.cpp", v104, "send_image", v19);
    v32 = 3758097090;
    goto LABEL_111;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v11 + 200), v17, v18, v19);
  v29 = *(v11 + 200);
  if (v29)
  {
    v29 = CFStringGetCStringPtr(v29, 0x8000100u);
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = "???";
    }
  }

  else
  {
    v30 = "(nil)";
  }

  v33 = ashp::detail::logging::get_log_level(v29);
  if (v33 >= 1)
  {
    v33 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v33)
    {
      *buf = 136446978;
      *&buf[4] = "boot_controller.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 227;
      *&buf[18] = 2082;
      *&buf[20] = "send_image";
      *&buf[28] = 2080;
      *&buf[30] = v30;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) controller unavailable", buf, 0x26u);
    }
  }

  v32 = 3758097112;
  if (ashp::detail::logging::get_log_level(v33))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) controller unavailable", "boot_controller.cpp", 227, "send_image", v30);
  }

LABEL_111:
  os_unfair_lock_unlock((v11 + 16));
  os_unfair_lock_unlock((v11 + 192));
  ashp::detail::logging::ktrace_helper::~ktrace_helper(v117);
  os_unfair_lock_unlock((a1 + 64));
  v102 = *MEMORY[0x277D85DE8];
  return v32;
}

void sub_23ED0444C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, atomic_ullong a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  os_unfair_lock_unlock((v30 + v31));
  ashp::deferred_action<ashp::acipc::boot_controller::send_image(ashp::devmem_mapping *,unsigned int,unsigned int)::$_5>::~deferred_action(&a20, v33, v34, v35);
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(&a24, v36, v37, v38);
  os_unfair_lock_unlock(v29 + 4);
  os_unfair_lock_unlock(v29 + 48);
  ashp::detail::logging::ktrace_helper::~ktrace_helper(&a28);
  os_unfair_lock_unlock(v28 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::direct_boot::write_register(os_unfair_lock_s *this, const __CFString *a2, int a3, int a4, unsigned int *a5)
{
  v41 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v10, v11, v12);
  v13 = *&this[18]._os_unfair_lock_opaque;
  v39 = a4;
  v38 = a5;
  v14 = *a5;
  ashp::detail::logging::ktrace_helper::ktrace_helper(v36, 102842436);
  os_unfair_lock_lock((v13 + 16));
  if (*(v13 + 456) == 1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v13 + 200), v15, v16, v17);
    CStringPtr = *(v13 + 200);
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

    log_level = ashp::detail::logging::get_log_level(CStringPtr);
    if (log_level >= 1)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        *&buf[4] = "boot_controller.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 188;
        *&buf[18] = 2082;
        *&buf[20] = "write_register";
        *&buf[28] = 2080;
        *&buf[30] = v19;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) controller is dead", buf, 0x26u);
      }
    }

    v25 = 3758097112;
    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) controller is dead", "boot_controller.cpp", 188, "write_register", v19);
    }

    goto LABEL_35;
  }

  if (*(v13 + 472))
  {
    v25 = 3758097112;
    ashp::detail::control_flow::log_guard_else_failure("boot_controller.cpp", 0xBD, "write_register", v17);
    goto LABEL_35;
  }

  if (*(v13 + 468))
  {
    client_register = ashp::acipc::boot_controller::find_client_register(v13, a2);
    v35 = client_register;
    if (client_register)
    {
      if (__CFADD__(a3, a4))
      {
        v32 = 196;
      }

      else
      {
        if ((a3 + a4) <= *(client_register + 4))
        {
          if (a4)
          {
            v23 = *(client_register + 3);
            v34 = v23 + a3;
            if (__CFADD__(v23, a3))
            {
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0xCD, "write_register", v22);
              _os_crash();
              __break(1u);
            }

            v24 = *(v13 + 24);
            v33[0] = &v38;
            v33[1] = &v35;
            v33[2] = &v34;
            v33[3] = &v39;
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZNK4ashp6driver21with_device_transportIZNS_5acipc15boot_controller14write_registerENS_5boxed6stringEjjPKvE3__2EEvT__block_invoke;
            *&buf[24] = &__block_descriptor_tmp_42;
            *&buf[32] = v33;
            ashp::driver::with_device_transport(v24, buf);
            v25 = 0;
            v37 = v34;
          }

          else
          {
            v25 = 0;
          }

          goto LABEL_35;
        }

        v32 = 197;
      }
    }

    else
    {
      v32 = 193;
    }

    ashp::detail::control_flow::log_guard_else_failure("boot_controller.cpp", v32, "write_register", v21);
    v25 = 3758097090;
    goto LABEL_35;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v13 + 200), v15, v16, v17);
  v26 = *(v13 + 200);
  if (v26)
  {
    v26 = CFStringGetCStringPtr(v26, 0x8000100u);
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = "???";
    }
  }

  else
  {
    v27 = "(nil)";
  }

  v29 = ashp::detail::logging::get_log_level(v26);
  if (v29 >= 1)
  {
    v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v29)
    {
      *buf = 136446978;
      *&buf[4] = "boot_controller.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 190;
      *&buf[18] = 2082;
      *&buf[20] = "write_register";
      *&buf[28] = 2080;
      *&buf[30] = v27;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) controller unavailable", buf, 0x26u);
    }
  }

  v25 = 3758097112;
  if (ashp::detail::logging::get_log_level(v29))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) controller unavailable", "boot_controller.cpp", 190, "write_register", v27);
  }

LABEL_35:
  os_unfair_lock_unlock((v13 + 16));
  ashp::detail::logging::ktrace_helper::~ktrace_helper(v36);
  os_unfair_lock_unlock(this + 16);
  v30 = *MEMORY[0x277D85DE8];
  return v25;
}

void sub_23ED049EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  os_unfair_lock_unlock(v13 + 4);
  ashp::detail::logging::ktrace_helper::~ktrace_helper(va);
  os_unfair_lock_unlock(v12 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::direct_boot::read_register(os_unfair_lock_s *this, const __CFString *a2, int a3, int a4, unsigned int *a5)
{
  v41 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v10, v11, v12);
  v13 = *&this[18]._os_unfair_lock_opaque;
  v39 = a4;
  v38 = a5;
  ashp::detail::logging::ktrace_helper::ktrace_helper(v35, 102842432);
  os_unfair_lock_lock((v13 + 16));
  if (*(v13 + 456) == 1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v13 + 200), v14, v15, v16);
    CStringPtr = *(v13 + 200);
    if (CStringPtr)
    {
      CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
      if (CStringPtr)
      {
        v18 = CStringPtr;
      }

      else
      {
        v18 = "???";
      }
    }

    else
    {
      v18 = "(nil)";
    }

    log_level = ashp::detail::logging::get_log_level(CStringPtr);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        *&buf[4] = "boot_controller.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 147;
        *&buf[18] = 2082;
        *&buf[20] = "read_register";
        *&buf[28] = 2080;
        *&buf[30] = v18;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) controller is dead", buf, 0x26u);
      }
    }

    v24 = 3758097112;
    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) controller is dead", "boot_controller.cpp", 147, "read_register", v18);
    }

    goto LABEL_35;
  }

  if (*(v13 + 472))
  {
    v24 = 3758097112;
    ashp::detail::control_flow::log_guard_else_failure("boot_controller.cpp", 0x94, "read_register", v16);
    goto LABEL_35;
  }

  if (*(v13 + 468))
  {
    client_register = ashp::acipc::boot_controller::find_client_register(v13, a2);
    v34 = client_register;
    if (client_register)
    {
      if (__CFADD__(a3, a4))
      {
        v31 = 155;
      }

      else
      {
        if ((a3 + a4) <= *(client_register + 4))
        {
          if (a4)
          {
            v22 = *(client_register + 3);
            v33 = v22 + a3;
            if (__CFADD__(v22, a3))
            {
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0xA4, "read_register", v21);
              _os_crash();
              __break(1u);
            }

            v23 = *(v13 + 24);
            v32[0] = &v38;
            v32[1] = &v34;
            v32[2] = &v33;
            v32[3] = &v39;
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZNK4ashp6driver21with_device_transportIZNS_5acipc15boot_controller13read_registerENS_5boxed6stringEjjPvE3__2EEvT__block_invoke;
            *&buf[24] = &__block_descriptor_tmp_41;
            *&buf[32] = v32;
            ashp::driver::with_device_transport(v23, buf);
            v24 = 0;
            v36 = v33;
            v37 = *v38;
          }

          else
          {
            v24 = 0;
          }

          goto LABEL_35;
        }

        v31 = 156;
      }
    }

    else
    {
      v31 = 152;
    }

    ashp::detail::control_flow::log_guard_else_failure("boot_controller.cpp", v31, "read_register", v20);
    v24 = 3758097090;
    goto LABEL_35;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v13 + 200), v14, v15, v16);
  v25 = *(v13 + 200);
  if (v25)
  {
    v25 = CFStringGetCStringPtr(v25, 0x8000100u);
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = "???";
    }
  }

  else
  {
    v26 = "(nil)";
  }

  v28 = ashp::detail::logging::get_log_level(v25);
  if (v28 >= 2)
  {
    v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      *buf = 136446978;
      *&buf[4] = "boot_controller.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 149;
      *&buf[18] = 2082;
      *&buf[20] = "read_register";
      *&buf[28] = 2080;
      *&buf[30] = v26;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) controller unavailable", buf, 0x26u);
    }
  }

  v24 = 3758097112;
  if (ashp::detail::logging::get_log_level(v28))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) controller unavailable", "boot_controller.cpp", 149, "read_register", v26);
  }

LABEL_35:
  os_unfair_lock_unlock((v13 + 16));
  ashp::detail::logging::ktrace_helper::~ktrace_helper(v35);
  os_unfair_lock_unlock(this + 16);
  v29 = *MEMORY[0x277D85DE8];
  return v24;
}

void sub_23ED04EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  os_unfair_lock_unlock(v13 + 4);
  ashp::detail::logging::ktrace_helper::~ktrace_helper(va);
  os_unfair_lock_unlock(v12 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::direct_boot::create_state_monitor(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v5 + 16));
  if (*(v5 + 32) != 1)
  {
    ashp::monitor::create(&v20, *(v5 + 24), (v5 + 408));
  }

  ashp::detail::control_flow::log_guard_else_failure("boot_controller.cpp", 0x7C, "create_state_monitor", v6);
  ashp::acipc::boot_controller::create_state_monitor(void)::$_0::operator()<>(v18);
  v20 = 0;
  os_unfair_lock_unlock((v5 + 16));
  v21 = 0;
  v9 = ashp::operator==<int,0>(&v20, &v21, v7, v8);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v21, v10, v11, v12);
  if (!v9)
  {
    v16 = *&this[2]._os_unfair_lock_opaque;
    v19 = v20;
    v20 = 0;
    operator new();
  }

  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v20, v13, v14, v15);
  os_unfair_lock_unlock(this + 16);
  return 0;
}

void sub_23ED050A0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

const char *ashp::acipc::direct_boot::get_state(os_unfair_lock_s *this, char *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v4, v5, v6);
  v7 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v7 + 16));
  os_unfair_lock_lock((v7 + 408));
  buf[8] = 0;
  if (*(v7 + 448) == 1)
  {
    *buf = *(v7 + 440);
    buf[8] = 1;
  }

  os_unfair_lock_unlock((v7 + 408));
  ashp::optional<unsigned long long,void>::value(buf, v8, v9, v10);
  v11 = *buf;
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v7 + 200), v12, v13, v14);
  CStringPtr = *(v7 + 200);
  if (CStringPtr)
  {
    CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
    if (CStringPtr)
    {
      v16 = CStringPtr;
    }

    else
    {
      v16 = "???";
    }
  }

  else
  {
    v16 = "(nil)";
  }

  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447234;
      *&buf[4] = "boot_controller.cpp";
      v37 = 1024;
      v38 = 79;
      v39 = 2082;
      v40 = "get_state";
      v41 = 2080;
      v42 = v16;
      v43 = 2048;
      v44 = v11;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) controller state=0x%llx", buf, 0x30u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) controller state=0x%llx", "boot_controller.cpp", 79, "get_state", v16, v11);
  }

  if ((v11 - 1) < 3)
  {
    if (a2)
    {
      *a2 = 0;
    }

    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v7 + 200), v18, v19, v20);
    v25 = *(v7 + 200);
    if (v25)
    {
      v25 = CFStringGetCStringPtr(v25, 0x8000100u);
      if (v25)
      {
        a2 = v25;
      }

      else
      {
        a2 = "???";
      }
    }

    else
    {
      a2 = "(nil)";
    }

    v26 = ashp::detail::logging::get_log_level(v25);
    if (v26 >= 4)
    {
      v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v26)
      {
        *buf = 136446978;
        *&buf[4] = "boot_controller.cpp";
        v37 = 1024;
        v38 = 94;
        v39 = 2082;
        v40 = "get_state";
        v41 = 2080;
        v42 = a2;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) detail=0", buf, 0x26u);
      }
    }

    if (!ashp::detail::logging::get_log_level(v26))
    {
      goto LABEL_76;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

  if ((v11 - 4) < 2)
  {
    if (*(v7 + 464))
    {
      v22 = *(v7 + 460);
      if (v22 == 1)
      {
        if (a2)
        {
          *a2 = 4;
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v7 + 200), v18, v19, v20);
        v29 = *(v7 + 200);
        if (v29)
        {
          v29 = CFStringGetCStringPtr(v29, 0x8000100u);
          if (v29)
          {
            v30 = v29;
          }

          else
          {
            v30 = "???";
          }
        }

        else
        {
          v30 = "(nil)";
        }

        v33 = ashp::detail::logging::get_log_level(v29);
        if (v33 >= 4)
        {
          v33 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v33)
          {
            *buf = 136447234;
            *&buf[4] = "boot_controller.cpp";
            v37 = 1024;
            v38 = 109;
            v39 = 2082;
            v40 = "get_state";
            v41 = 2080;
            v42 = v30;
            v43 = 1024;
            LODWORD(v44) = 4;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) detail=%u", buf, 0x2Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v33))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) detail=%u", "boot_controller.cpp", 109, "get_state", v30, 4);
        }
      }

      else if (!v22)
      {
        if (a2)
        {
          *a2 = 2;
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v7 + 200), v18, v19, v20);
        v23 = *(v7 + 200);
        if (v23)
        {
          v23 = CFStringGetCStringPtr(v23, 0x8000100u);
          if (v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = "???";
          }
        }

        else
        {
          v24 = "(nil)";
        }

        v32 = ashp::detail::logging::get_log_level(v23);
        if (v32 >= 4)
        {
          v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v32)
          {
            *buf = 136447234;
            *&buf[4] = "boot_controller.cpp";
            v37 = 1024;
            v38 = 104;
            v39 = 2082;
            v40 = "get_state";
            v41 = 2080;
            v42 = v24;
            v43 = 1024;
            LODWORD(v44) = 2;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) detail=%u", buf, 0x2Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v32))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) detail=%u", "boot_controller.cpp", 104, "get_state", v24, 2);
        }
      }

      goto LABEL_76;
    }

    v11 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x62, "get_state", v21);
    _os_crash();
    __break(1u);
LABEL_78:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_38:
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) detail=0", "boot_controller.cpp", 94, "get_state", a2);
LABEL_76:
    os_unfair_lock_unlock((v7 + 16));
    os_unfair_lock_unlock(this + 16);
    v34 = *MEMORY[0x277D85DE8];
    return v11;
  }

  if (!v11)
  {
    if (a2)
    {
      *a2 = 1;
    }

    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v7 + 200), v18, v19, v20);
    v27 = *(v7 + 200);
    if (v27)
    {
      v27 = CFStringGetCStringPtr(v27, 0x8000100u);
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = "???";
      }
    }

    else
    {
      v28 = "(nil)";
    }

    v31 = ashp::detail::logging::get_log_level(v27);
    if (v31 >= 3)
    {
      v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v31)
      {
        *buf = 136447234;
        *&buf[4] = "boot_controller.cpp";
        v37 = 1024;
        v38 = 87;
        v39 = 2082;
        v40 = "get_state";
        v41 = 2080;
        v42 = v28;
        v43 = 1024;
        LODWORD(v44) = 1;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) detail=%u", buf, 0x2Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v31))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) detail=%u", "boot_controller.cpp", 87, "get_state", v28, 1);
    }

    goto LABEL_76;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x72, "get_state", v21);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ED05900(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

void ashp::acipc::direct_boot::destroy(ashp::acipc::direct_boot *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    *this = &unk_28515DB50;
    v6 = (this + 72);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 9, a2, a3, a4);
    ashp::driver_object::terminate(*v6);
    ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(v6, v7, v8, v9);
    ashp::direct_client_object::~direct_client_object(this + 1, v10, v11, v12, v13);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}