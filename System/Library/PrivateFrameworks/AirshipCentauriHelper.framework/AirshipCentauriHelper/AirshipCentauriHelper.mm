void airship_ch_boot::disconnect_from_service(airship_ch_boot *this, int a2)
{
  v39 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  log_level = ashp::detail::logging::get_log_level(v4);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446978;
      v32 = "boot.cpp";
      v33 = 1024;
      v34 = 212;
      v35 = 2082;
      v36 = "disconnect_from_service";
      v37 = 1024;
      v38 = a2;
      _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] force=%u", buf, 0x22u);
    }
  }

  v6 = ashp::detail::logging::get_log_level(log_level);
  if (v6)
  {
    global_logger = airship_platform_get_global_logger();
    ashp_log_helper::log(global_logger, "[%s:%d:%s] force=%u", "boot.cpp", 212, "disconnect_from_service", a2);
  }

  if (*(this + 89) == 1)
  {
    if (*(this + 4))
    {
      if (!*(this + 14))
      {
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot.cpp", 0xD9, "disconnect_from_service", v10);
        _os_crash();
        __break(1u);
      }

      v12 = ashp::detail::logging::get_log_level(v6);
      if (v12 >= 3)
      {
        v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          *buf = 136446722;
          v32 = "boot.cpp";
          v33 = 1024;
          v34 = 218;
          v35 = 2082;
          v36 = "disconnect_from_service";
          _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] invoke stop handler", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v12))
      {
        v16 = airship_platform_get_global_logger();
        ashp_log_helper::log(v16, "[%s:%d:%s] invoke stop handler", "boot.cpp", 218, "disconnect_from_service");
      }

      ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 14, v13, v14, v15);
      v17 = *(this + 14);
      ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 4, v18, v19, v20);
      dispatch_async(v17, *(this + 4));
    }

    *(this + 89) = 0;
  }

  if (*(this + 224) != 1 || (a2 & 1) != 0)
  {
    v21 = *(this + 15);
    if (v21)
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v21);
      ashp::CentauriHelper::runloop_runner::remove_source(this + 10, RunLoopSource, v23, v24);
      v25 = *(this + 15);
      if (v25)
      {
        IONotificationPortDestroy(v25);
        *(this + 15) = 0;
      }
    }

    v26 = *(this + 26);
    if (v26)
    {
      IOServiceClose(v26);
      *(this + 26) = 0;
    }

    ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(this + 25, v7, v8, v9);
    ashp::CentauriHelper::runloop_runner::stop(this + 10, v27, v28, v29);
  }

  else
  {
    *(this + 225) = 1;
  }

  v30 = *MEMORY[0x277D85DE8];
}

void *ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(void *result, uint64_t a2, uint64_t a3, const char *a4)
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

_DWORD *ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(_DWORD *result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*result)
  {
    v4 = result;
    v5 = ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(result, a2, a3, a4);
    result = IOObjectRelease(*v5);
    *v4 = 0;
  }

  return result;
}

_DWORD *ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(_DWORD *result, uint64_t a2, uint64_t a3, const char *a4)
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

uint64_t *ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::refcounted_ptr(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  if (a2)
  {
    ashp::optional<__CFString const*,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    dispatch_retain(*a1);
  }

  return a1;
}

void ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1)
  {
    v5 = ashp::optional<__CFString const*,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    dispatch_release(*v5);
    *a1 = 0;
  }
}

const void **ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(const void **a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  if (a2)
  {
    ashp::optional<__CFString const*,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    *a1 = _Block_copy(*a1);
  }

  return a1;
}

void ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1)
  {
    v5 = ashp::optional<__CFString const*,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    _Block_release(*v5);
    *a1 = 0;
  }
}

uint64_t ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 40) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

io_connect_t *ashp::owning_wrapper<unsigned int,0u,ashp::CentauriHelper::io_service_connection_closer>::~owning_wrapper(io_connect_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    IOServiceClose(v2);
    *a1 = 0;
  }

  return a1;
}

IONotificationPort **ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(IONotificationPort **a1)
{
  v2 = *a1;
  if (v2)
  {
    IONotificationPortDestroy(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t ashp::deferred_action<airship_ch_boot::open(airship_ch_boot_stage_id,unsigned int)::$_3>::~deferred_action(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    os_unfair_lock_unlock(*a1);
    if (LOBYTE(v2[54]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v2[54]._os_unfair_lock_opaque) = 0;
      ashp::CentauriHelper::stop_notifier::~stop_notifier(&v2[44]);
    }

    os_unfair_lock_lock(v2);
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }
  }

  return a1;
}

void ashp::CentauriHelper::open_request::result::~result(ashp::CentauriHelper::open_request::result *this)
{
  ashp::detail::dynamic_array::storage<unsigned long>::~storage(this + 6);
  ashp::detail::dynamic_array::storage<unsigned long long>::~storage(this + 3, v2, v3, v4, v5);
  ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(this + 2);
  ashp::owning_wrapper<unsigned int,0u,ashp::CentauriHelper::io_service_connection_closer>::~owning_wrapper(this + 2);
  ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(this + 1, v6, v7, v8);
}

uint64_t *ashp::detail::dynamic_array::storage<unsigned long>::~storage(uint64_t *a1)
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

unint64_t *ashp::detail::dynamic_array::storage<unsigned long long>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<unsigned long long>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

void ashp::CentauriHelper::open_request::~open_request(ashp::CentauriHelper::open_request *this)
{
  ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset(this + 34);
  ashp::detail::dynamic_array::storage<unsigned long>::~storage(this + 30);
  ashp::detail::dynamic_array::storage<unsigned long long>::~storage(this + 27, v2, v3, v4, v5);
  if (*(this + 208) == 1)
  {
    *(this + 208) = 0;
  }

  ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(this + 50, v6, v7, v8);
  ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(this + 24);
  ashp::owning_wrapper<unsigned int,0u,ashp::CentauriHelper::io_service_connection_closer>::~owning_wrapper(this + 46);
  ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(this + 44, v9, v10, v11);
  if (*(this + 168) == 1)
  {
    *(this + 168) = 0;
    ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(this + 40, v12, v13, v14);
    ashp::refcounted_ptr<__CFString const*,ashp::cf::refcount_policy>::reset(this + 17, v15, v16, v17);
  }

  ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(this + 16);
  if (*(this + 120) == 1)
  {
    *(this + 120) = 0;
  }

  if (*(this + 112) == 1)
  {
    *(this + 112) = 0;
  }

  ashp::detail::dynamic_array::storage<unsigned long long>::~storage(this + 9, v18, v19, v20, v21);
  ashp::refcounted_ptr<__CFString const*,ashp::cf::refcount_policy>::reset(this + 7, v22, v23, v24);
  ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset(this + 4);
  ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset(this + 3);
}

void ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }
}

void ashp::refcounted_ptr<__CFString const*,ashp::cf::refcount_policy>::reset(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1)
  {
    v5 = ashp::optional<__CFString const*,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    CFRelease(*v5);
    *a1 = 0;
  }
}

void *ashp::optional<__CFString const*,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(void *result, uint64_t a2, uint64_t a3, const char *a4)
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

unint64_t *ashp::detail::dynamic_array::storage<unsigned long long>::reduce_size(unint64_t *result, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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

void airship_ch_boot::open(airship_ch_boot_stage_id,unsigned int)::$_2::__invoke(os_unfair_lock_s *this)
{
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  airship_ch_boot::disconnect_from_service(this, 0);
  if (this)
  {

    os_unfair_lock_unlock(this);
  }
}

void sub_23ED212D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void airship_ch_boot::close(airship_ch_boot *this)
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 1);
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  if (*(this + 88) == 1)
  {
    *(this + 88) = 0;
    log_level = ashp::detail::logging::get_log_level(v2);
    if (log_level >= 3)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        v19 = "boot.cpp";
        v20 = 1024;
        v21 = 249;
        v22 = 2082;
        v23 = "close";
        _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      global_logger = airship_platform_get_global_logger();
      ashp_log_helper::log(global_logger, "[%s:%d:%s] ", "boot.cpp", 249, "close");
    }

    *(this + 89) = 0;
    v5 = *(this + 26);
    if (v5)
    {
      IOConnectCallScalarMethod(v5, 2u, 0, 0, 0, 0);
    }

    airship_ch_boot::disconnect_from_service(this, 0);
    if (*(this + 3))
    {
      if (!*(this + 14))
      {
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot.cpp", 0x102, "close", v9);
        _os_crash();
        __break(1u);
      }

      v10 = *ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 14, v6, v7, v8);
      ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 3, v11, v12, v13);
      dispatch_async(v10, *(this + 3));
    }

    *(this + 225) = 0;
    if (*(this + 96) == 1)
    {
      *(this + 96) = 0;
    }

    if (*(this + 168) == 1)
    {
      os_unfair_lock_unlock(this);
      if (*(this + 168) == 1)
      {
        *(this + 168) = 0;
        ashp::CentauriHelper::termination_notifier::~termination_notifier((this + 128), v14, v15, v16);
      }

      os_unfair_lock_lock(this);
    }

    if (*(this + 216) == 1)
    {
      os_unfair_lock_unlock(this);
      if (*(this + 216) == 1)
      {
        *(this + 216) = 0;
        ashp::CentauriHelper::stop_notifier::~stop_notifier((this + 176));
      }

      os_unfair_lock_lock(this);
    }
  }

  os_unfair_lock_unlock(this);
  os_unfair_lock_unlock(this + 1);
  v17 = *MEMORY[0x277D85DE8];
}

void sub_23ED21540(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t ashp::optional<airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::state::driver_response,void>::operator->(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 24) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::$_4::operator()<unsigned long long,unsigned int>(ashp::detail::logging *a1, _DWORD *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v5 = *a1;
      v6 = *a2;
      *buf = 136447234;
      v10 = "boot.cpp";
      v11 = 1024;
      v12 = 427;
      v13 = 2082;
      v14 = "send_image";
      v15 = 2048;
      v16 = v5;
      v17 = 1024;
      v18 = v6;
      _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sendImage: timed out status=%llu, response=%#x", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    global_logger = airship_platform_get_global_logger();
    ashp_log_helper::log(global_logger, "[%s:%d:%s] sendImage: timed out status=%llu, response=%#x", "boot.cpp", 427, "send_image", *a1, *a2);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::$_5::operator()<>(ashp::detail::logging *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v5 = "boot.cpp";
      v6 = 1024;
      v7 = 432;
      v8 = 2082;
      v9 = "send_image";
      _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sendImage: timed out", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    global_logger = airship_platform_get_global_logger();
    ashp_log_helper::log(global_logger, "[%s:%d:%s] sendImage: timed out", "boot.cpp", 432, "send_image");
  }

  v3 = *MEMORY[0x277D85DE8];
}

void airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::$_7::operator()<int>(ashp::detail::logging *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v3 = *a1;
      *buf = 136446978;
      v7 = "boot.cpp";
      v8 = 1024;
      v9 = 453;
      v10 = 2082;
      v11 = "send_image";
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] unexpected error code 0x%08x", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    global_logger = airship_platform_get_global_logger();
    ashp_log_helper::log(global_logger, "[%s:%d:%s] unexpected error code 0x%08x", "boot.cpp", 453, "send_image", *a1);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::$_8::operator()<unsigned long long,unsigned int>(ashp::detail::logging *a1, _DWORD *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v5 = *a1;
      v6 = *a2;
      *buf = 136447234;
      v10 = "boot.cpp";
      v11 = 1024;
      v12 = 460;
      v13 = 2082;
      v14 = "send_image";
      v15 = 2048;
      v16 = v5;
      v17 = 1024;
      v18 = v6;
      _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sendImage: status=%llu, response=%#x", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    global_logger = airship_platform_get_global_logger();
    ashp_log_helper::log(global_logger, "[%s:%d:%s] sendImage: status=%llu, response=%#x", "boot.cpp", 460, "send_image", *a1, *a2);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::$_9::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*(a1 + 32) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot.cpp", 0x176, "operator()", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = a2;
    *(a1 + 16) = a3;
    *(a1 + 24) = a4;
    *(a1 + 32) = 1;
    v6 = (*a1 + 40);

    ashp::CentauriHelper::runloop_runner::stop(v6, a2, a3, a4);
  }
}

void sub_23ED21B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((v4 + 32), a2, a3, a4);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((v4 + 24), v8, v9, v10);
  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(v6, v11, v12, v13);
  MEMORY[0x23EF20B10](v4, v5);
  _Unwind_Resume(a1);
}

void airship_ch_boot_destroy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1)
  {
    airship_ch_boot::close(a1);
    if (*(a1 + 216) == 1)
    {
      *(a1 + 216) = 0;
      ashp::CentauriHelper::stop_notifier::~stop_notifier((a1 + 176));
    }

    if (*(a1 + 168) == 1)
    {
      *(a1 + 168) = 0;
      ashp::CentauriHelper::termination_notifier::~termination_notifier((a1 + 128), v6, v7, v8);
    }

    ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper((a1 + 120));
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset((a1 + 112), v9, v10, v11);
    ashp::owning_wrapper<unsigned int,0u,ashp::CentauriHelper::io_service_connection_closer>::~owning_wrapper((a1 + 104));
    ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset((a1 + 100), v12, v13, v14);
    if (*(a1 + 96) == 1)
    {
      *(a1 + 96) = 0;
    }

    ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset((a1 + 56));
    ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset((a1 + 48));
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((a1 + 32), v15, v16, v17);
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((a1 + 24), v18, v19, v20);
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset((a1 + 16), v21, v22, v23);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF20B10);
}

void airship_ch_boot_disconnect(os_unfair_lock_t lock)
{
  v17 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if ((lock[2]._os_unfair_lock_opaque & 1) == 0)
  {
    LOBYTE(lock[2]._os_unfair_lock_opaque) = 1;
    log_level = ashp::detail::logging::get_log_level(lock);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        v12 = "boot.cpp";
        v13 = 1024;
        v14 = 92;
        v15 = 2082;
        v16 = "disconnect";
        _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ", buf, 0x1Cu);
      }
    }

    v3 = ashp::detail::logging::get_log_level(log_level);
    if (v3)
    {
      global_logger = airship_platform_get_global_logger();
      ashp_log_helper::log(global_logger, "[%s:%d:%s] ", "boot.cpp", 92, "disconnect");
    }

    if (*&lock[20]._os_unfair_lock_opaque)
    {
      v5 = ashp::detail::logging::get_log_level(v3);
      if (v5 >= 2)
      {
        v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v5)
        {
          *buf = 136446722;
          v12 = "boot.cpp";
          v13 = 1024;
          v14 = 95;
          v15 = 2082;
          v16 = "disconnect";
          _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] cancelling pending open", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v5))
      {
        v9 = airship_platform_get_global_logger();
        ashp_log_helper::log(v9, "[%s:%d:%s] cancelling pending open", "boot.cpp", 95, "disconnect");
      }

      ashp::CentauriHelper::open_request::cancel(*&lock[20]._os_unfair_lock_opaque, 0xE00002C0, v6, v7, v8);
    }

    airship_ch_boot::disconnect_from_service(lock, 1);
  }

  os_unfair_lock_unlock(lock);
  v10 = *MEMORY[0x277D85DE8];
}

void airship_ch_boot_set_queue(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 88) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("boot.cpp", 0x6A, "set_queue", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "boot.cpp", 0x6A, "set_queue", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v6;
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED21F98(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void airship_ch_boot_set_close_handler(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 88) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("boot.cpp", 0x73, "set_close_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "boot.cpp", 0x73, "set_close_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED22088(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void airship_ch_boot_set_stop_handler(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 88) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("boot.cpp", 0x7C, "set_stop_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "boot.cpp", 0x7C, "set_stop_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED22178(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t airship_ch_boot_open(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v55 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  v8 = 3758097088;
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*(a1 + 88) == 1)
    {
      ashp::detail::control_flow::log_guard_else_failure("boot.cpp", 0x86, "open", v7);
      ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to open already-open handle", "boot.cpp", 0x86, "open", v33);
      _os_crash();
      __break(1u);
    }

    else
    {
      v9 = (a1 + 16);
      if (*(a1 + 16) || !*(a1 + 24) && !*(a1 + 32))
      {
        log_level = ashp::detail::logging::get_log_level(v6);
        if (log_level >= 3)
        {
          log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (log_level)
          {
            *buf = 136447234;
            v45 = "boot.cpp";
            v47 = 137;
            v48 = 2082;
            v46 = 1024;
            v49 = "open";
            v50 = 1024;
            v51 = a2;
            v52 = 1024;
            v53 = a3;
            _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stage_id=%u, timeout=%u ms", buf, 0x28u);
          }
        }

        if (ashp::detail::logging::get_log_level(log_level))
        {
          global_logger = airship_platform_get_global_logger();
          ashp_log_helper::log(global_logger, "[%s:%d:%s] stage_id=%u, timeout=%u ms", "boot.cpp", 137, "open", a2, a3);
        }

        v54 = a2;
        ashp::CentauriHelper::open_request::open_request(buf, @"CentauriControl", 0, &v54, 1, 0, v11, v12, v35);
        *(a1 + 80) = buf;
        os_unfair_lock_unlock(a1);
        ashp::CentauriHelper::open_request::execute(buf, a3, v14, v15, v16);
        os_unfair_lock_lock(a1);
        ashp::CentauriHelper::open_request::consume_result(&v37, buf, v17, v18, v19);
        v8 = v37;
        if (!v37)
        {
          if (*v9)
          {
            ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 16), v20, v21, v22);
            v24 = dispatch_queue_create_with_target_V2("com.apple.airship.centauri-helper.boot", 0, *v9);
          }

          else
          {
            v24 = 0;
          }

          v36 = v24;
          ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(&v38, v20, v21, v22);
          v26 = v38;
          v27 = v39;
          if (*(a1 + 216) == 1)
          {
            *(a1 + 216) = 0;
            ashp::CentauriHelper::stop_notifier::~stop_notifier((a1 + 176));
          }

          ashp::CentauriHelper::stop_notifier::stop_notifier((a1 + 176), v26, v27, v36, airship_ch_boot::open(airship_ch_boot_stage_id,unsigned int)::$_2::__invoke, a1, v25);
        }

        if (!v42 || v43)
        {
          v42 = 0;
          if (v43)
          {
            free(v43);
            v43 = 0;
          }

          ashp::detail::dynamic_array::storage<unsigned long long>::~storage(v41, v20, v21, v22, v23);
          ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(&v40);
          ashp::owning_wrapper<unsigned int,0u,ashp::CentauriHelper::io_service_connection_closer>::~owning_wrapper(&v39);
          ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(&v38, v28, v29, v30);
          *(a1 + 80) = 0;
          ashp::CentauriHelper::open_request::~open_request(buf);
          goto LABEL_25;
        }

LABEL_28:
        __break(1u);
      }
    }

    ashp::detail::control_flow::log_guard_else_failure("boot.cpp", 0x87, "open", v7);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to open without queue", "boot.cpp", 0x87, "open", v34);
    _os_crash();
    goto LABEL_28;
  }

LABEL_25:
  os_unfair_lock_unlock(a1);
  os_unfair_lock_unlock((a1 + 4));
  v31 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23ED22760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  ashp::deferred_action<airship_ch_boot::open(airship_ch_boot_stage_id,unsigned int)::$_3>::~deferred_action(&a17);
  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(&a19, v31, v32, v33);
  ashp::CentauriHelper::open_request::result::~result(&a20);
  *(v29 + 80) = 0;
  ashp::CentauriHelper::open_request::~open_request(&a29);
  os_unfair_lock_unlock(v29);
  os_unfair_lock_unlock((v29 + 4));
  _Unwind_Resume(a1);
}

uint64_t airship_ch_boot_read_register(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, void *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  v11 = 3758097088;
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*(a1 + 88))
    {
      v12 = *(a1 + 104);
      if (v12)
      {
        input[0] = a2;
        input[1] = a3;
        input[2] = a4;
        v24 = a4;
        v16 = IOConnectCallMethod(v12, 4u, input, 3u, 0, 0, 0, 0, a5, &v24);
        if (v16)
        {
          ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value((a1 + 100), v13, v14, v15);
          v17 = *(a1 + 100);
          *buf = 0;
          State = IOServiceGetState();
          if (State)
          {
            v19 = 3758097088;
          }

          else
          {
            v19 = 3758097088;
            if ((buf[0] & 1) == 0)
            {
              v19 = 3758097090;
              if (v16 != -536870206)
              {
                log_level = ashp::detail::logging::get_log_level(State);
                if (log_level >= 2)
                {
                  log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                  if (log_level)
                  {
                    *buf = 136446978;
                    *&buf[4] = "boot.cpp";
                    v27 = 1024;
                    v28 = 307;
                    v29 = 2082;
                    v30 = "read_register";
                    v31 = 1024;
                    v32 = v16;
                    _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] unexpected error code 0x%08x", buf, 0x22u);
                  }
                }

                v19 = 3758097084;
                if (ashp::detail::logging::get_log_level(log_level))
                {
                  global_logger = airship_platform_get_global_logger();
                  ashp_log_helper::log(global_logger, "[%s:%d:%s] unexpected error code 0x%08x", "boot.cpp", 307, "read_register", v16);
                }
              }
            }
          }
        }

        else
        {
          v19 = 0;
        }

        v11 = v19;
      }
    }

    else
    {
      ashp::detail::control_flow::log_guard_else_failure("boot.cpp", 0x11C, "read_register", v10);
      v11 = 3758097101;
    }
  }

  os_unfair_lock_unlock(a1);
  os_unfair_lock_unlock((a1 + 4));
  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_23ED22A38(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t airship_ch_boot_write_register(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, const void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  v11 = 3758097088;
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*(a1 + 88))
    {
      v12 = *(a1 + 104);
      if (v12)
      {
        input[0] = a2;
        input[1] = a3;
        input[2] = a4;
        v16 = IOConnectCallMethod(v12, 5u, input, 3u, a5, a4, 0, 0, 0, 0);
        if (v16)
        {
          ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value((a1 + 100), v13, v14, v15);
          v17 = *(a1 + 100);
          *buf = 0;
          State = IOServiceGetState();
          if (State)
          {
            v19 = 3758097088;
          }

          else
          {
            v19 = 3758097088;
            if ((buf[0] & 1) == 0)
            {
              v19 = 3758097090;
              if (v16 != -536870206)
              {
                log_level = ashp::detail::logging::get_log_level(State);
                if (log_level >= 2)
                {
                  log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                  if (log_level)
                  {
                    *buf = 136446978;
                    *&buf[4] = "boot.cpp";
                    v26 = 1024;
                    v27 = 340;
                    v28 = 2082;
                    v29 = "write_register";
                    v30 = 1024;
                    v31 = v16;
                    _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] unexpected error code 0x%08x", buf, 0x22u);
                  }
                }

                v19 = 3758097084;
                if (ashp::detail::logging::get_log_level(log_level))
                {
                  global_logger = airship_platform_get_global_logger();
                  ashp_log_helper::log(global_logger, "[%s:%d:%s] unexpected error code 0x%08x", "boot.cpp", 340, "write_register", v16);
                }
              }
            }
          }
        }

        else
        {
          v19 = 0;
        }

        v11 = v19;
      }
    }

    else
    {
      ashp::detail::control_flow::log_guard_else_failure("boot.cpp", 0x13E, "write_register", v10);
      v11 = 3758097101;
    }
  }

  os_unfair_lock_unlock(a1);
  os_unfair_lock_unlock((a1 + 4));
  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_23ED22C84(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t airship_ch_boot_send_image(uint64_t a1, unsigned int *a2, unsigned int a3, unsigned int a4, unsigned int a5, int *a6)
{
  v93 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  v14 = 3758097088;
  if ((*(a1 + 8) & 1) == 0)
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      ashp::detail::control_flow::log_guard_else_failure("boot.cpp", 0x161, "send_image", v13);
      v41 = 0;
      v14 = 3758097101;
      goto LABEL_57;
    }

    if (*(a1 + 104))
    {
      log_level = ashp::detail::logging::get_log_level(v12);
      if (log_level >= 3)
      {
        log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (log_level)
        {
          *buf = 136446722;
          *&buf[4] = "boot.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 356;
          *&buf[18] = 2082;
          *&buf[20] = "send_image";
          _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(log_level))
      {
        global_logger = airship_platform_get_global_logger();
        ashp_log_helper::log(global_logger, "[%s:%d:%s] ", "boot.cpp", 356, "send_image");
      }

      v79 = a1;
      v80 = 0u;
      v81 = 0u;
      addr = ashp::mappable_buffer::get_addr(a2, v16, v17, v18);
      v21 = a2[4];
      input[0] = addr;
      input[1] = v21;
      input[2] = a3;
      input[3] = a4;
      *buf = 0;
      v83 = 0u;
      v84 = 0u;
      *&buf[8] = airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::$_9::__invoke;
      *&buf[16] = &v79;
      v22 = *(a1 + 104);
      MachPort = IONotificationPortGetMachPort(*(a1 + 120));
      v28 = IOConnectCallAsyncScalarMethod(v22, 6u, MachPort, buf, 3u, input, 4u, 0, 0);
      if (v28)
      {
        ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value((a1 + 100), v24, v25, v26);
        v29 = *(a1 + 100);
        *v86 = 0;
        State = IOServiceGetState();
        if (State || (v86[0] & 1) != 0)
        {
          v42 = ashp::detail::logging::get_log_level(State);
          if (v42 >= 2)
          {
            v42 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v42)
            {
              *v86 = 136446722;
              *&v86[4] = "boot.cpp";
              v87 = 1024;
              v88 = 398;
              v89 = 2082;
              v90 = "send_image";
              _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sendImage: service inactive", v86, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v42))
          {
            v43 = airship_platform_get_global_logger();
            ashp_log_helper::log(v43, "[%s:%d:%s] sendImage: service inactive", "boot.cpp", 398, "send_image");
          }

          goto LABEL_30;
        }
      }

      v31 = ashp::detail::control_flow::check_err_with_debug(v28, "boot.cpp", 0x191, "send_image", v27);
      v32 = 1;
      if (!v31)
      {
LABEL_55:
        v14 = 3758097084;
        goto LABEL_56;
      }

      *(a1 + 224) = 1;
      os_unfair_lock_unlock(a1);
      v33 = ashp::CentauriHelper::runloop_runner::run((a1 + 40), a5);
      os_unfair_lock_lock(a1);
      *(a1 + 224) = 0;
      if (*(a1 + 225) == 1)
      {
        airship_ch_boot::disconnect_from_service(a1, 0);
      }

      v38 = *(a1 + 104);
      if (!v38 && (BYTE8(v81) & 1) == 0)
      {
        v39 = ashp::detail::logging::get_log_level(v38);
        if (v39 >= 2)
        {
          v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v39)
          {
            *v86 = 136446722;
            *&v86[4] = "boot.cpp";
            v87 = 1024;
            v88 = 411;
            v89 = 2082;
            v90 = "send_image";
            _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sendImage: disconnected", v86, 0x1Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v39))
        {
          v40 = airship_platform_get_global_logger();
          ashp_log_helper::log(v40, "[%s:%d:%s] sendImage: disconnected", "boot.cpp", 411, "send_image");
        }

        goto LABEL_30;
      }

      if (BYTE8(v81))
      {
        v44 = ashp::optional<airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::state::driver_response,void>::operator->(&v80, v34, v35, v36);
        v45 = ashp::detail::logging::get_log_level(v44);
        if (v45 >= 3)
        {
          v45 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v45)
          {
            *v86 = 136446978;
            *&v86[4] = "boot.cpp";
            v87 = 1024;
            v88 = 439;
            v89 = 2082;
            v90 = "send_image";
            v91 = 1024;
            v92 = v80;
            _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sendImage: result=%#x", v86, 0x22u);
          }
        }

        if (ashp::detail::logging::get_log_level(v45))
        {
          v49 = airship_platform_get_global_logger();
          ashp_log_helper::log(v49, "[%s:%d:%s] sendImage: result=%#x", "boot.cpp", 439, "send_image", v80);
        }

        ashp::optional<airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::state::driver_response,void>::operator->(&v80, v46, v47, v48);
        v14 = v80;
        if ((v80 + 536870208) <= 0x1E)
        {
          v32 = 1;
          if (((1 << (v80 + 64)) & 0x41000005) != 0)
          {
            goto LABEL_56;
          }
        }

        if (v80)
        {
          ashp::optional<airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::state::driver_response,void>::operator->(&v80, v50, v51, v52);
          airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::$_7::operator()<int>(&v80);
LABEL_54:
          v32 = 1;
          goto LABEL_55;
        }

        ashp::optional<airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::state::driver_response,void>::operator->(&v80, v50, v51, v52);
        v53 = *(&v80 + 1);
        *v86 = *(&v80 + 1);
        ashp::optional<airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::state::driver_response,void>::operator->(&v80, v54, v55, v56);
        if (!DWORD1(v81))
        {
          ashp::optional<airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::state::driver_response,void>::operator->(&v80, v57, v58, v59);
          v60 = v81;
          v78 = v81;
          airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::$_8::operator()<unsigned long long,unsigned int>(v86, &v78);
          v14 = 3758097084;
          v32 = v53 > 3;
          if (v53 <= 3)
          {
            v14 = dword_23ED2EEC0[v53];
            if (a6)
            {
              *a6 = v60;
            }
          }

          goto LABEL_56;
        }

        v77 = 457;
LABEL_66:
        ashp::detail::control_flow::log_guard_else_failure("boot.cpp", v77, "send_image", v59);
        goto LABEL_54;
      }

      if (v33 == -536870186)
      {
        IOConnectCallScalarMethod(v38, 7u, 0, 0, 0, 0);
        os_unfair_lock_unlock(a1);
        ashp::CentauriHelper::runloop_runner::run((a1 + 40), 0xFFFFFFFF);
        os_unfair_lock_lock(a1);
        if (!*(a1 + 104))
        {
LABEL_30:
          v32 = 1;
LABEL_56:
          v41 = !v32;
          goto LABEL_57;
        }

        if (BYTE8(v81))
        {
          v65 = ashp::optional<airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::state::driver_response,void>::operator->(&v80, v61, v62, v63);
          if (v80)
          {
            airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::$_5::operator()<>(v65);
            v69 = -1;
            goto LABEL_51;
          }

          ashp::optional<airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::state::driver_response,void>::operator->(&v80, v66, v67, v68);
          *v86 = *(&v80 + 1);
          ashp::optional<airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::state::driver_response,void>::operator->(&v80, v70, v71, v72);
          if (!DWORD1(v81))
          {
            ashp::optional<airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::state::driver_response,void>::operator->(&v80, v73, v74, v59);
            v69 = v81;
            v78 = v81;
            airship_ch_boot::send_image(airship_ch_boot_image_buffer *,unsigned int,unsigned int,unsigned int,unsigned int *)::$_4::operator()<unsigned long long,unsigned int>(v86, &v78);
LABEL_51:
            v14 = 3758097110;
            v32 = 0;
            if (a6)
            {
              *a6 = v69;
            }

            goto LABEL_56;
          }

LABEL_64:
          v77 = 425;
          goto LABEL_66;
        }
      }

      else
      {
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot.cpp", 0x19E, "send_image", v37);
        _os_crash();
        __break(1u);
      }

      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot.cpp", 0x1A4, "send_image", v64);
      _os_crash();
      __break(1u);
      goto LABEL_64;
    }
  }

  v41 = 0;
LABEL_57:
  os_unfair_lock_unlock(a1);
  os_unfair_lock_unlock((a1 + 4));
  if (!v41 && a6)
  {
    *a6 = -1;
  }

  v75 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_23ED233B4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2);
  os_unfair_lock_unlock(v2 + 1);
  if (v1)
  {
    *v1 = -1;
  }

  _Unwind_Resume(a1);
}

uint64_t airship_ch_boot_image_buffer_create(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = a1;
  v25 = *MEMORY[0x277D85DE8];
  ashp::mappable_buffer::create(&v15, a1, a3, a4, a5);
  if (v16)
  {
    log_level = ashp::detail::logging::get_log_level(v6);
    if (log_level >= 3)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        v18 = "boot.cpp";
        v19 = 1024;
        v20 = 555;
        v21 = 2082;
        v22 = "airship_ch_boot_image_buffer_create";
        v23 = 1024;
        v24 = v5;
        _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] creating mappable buffer of size %u", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      global_logger = airship_platform_get_global_logger();
      ashp_log_helper::log(global_logger, "[%s:%d:%s] creating mappable buffer of size %u", "boot.cpp", 555, "airship_ch_boot_image_buffer_create", v5);
    }

    operator new();
  }

  ashp::detail::control_flow::log_guard_else_failure("boot.cpp", 0x22A, "airship_ch_boot_image_buffer_create", v7);
  ashp::buffer_mapping::~buffer_mapping(&v15, v10, v11, v12);
  v13 = *MEMORY[0x277D85DE8];
  return 0;
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

{
  if ((*(result + 8) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0x7D, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0x7D, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void airship_ch_boot_image_buffer_destroy(mach_vm_address_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    ashp::buffer_mapping::~buffer_mapping(a1, a2, a3, a4);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF20B10);
}

void airship_ch_interface::disconnect_from_service(airship_ch_interface *this)
{
  v46 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  log_level = ashp::detail::logging::get_log_level(v2);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v41 = "interface.cpp";
      v42 = 1024;
      v43 = 653;
      v44 = 2082;
      v45 = "disconnect_from_service";
      _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ", buf, 0x1Cu);
    }
  }

  v4 = ashp::detail::logging::get_log_level(log_level);
  if (v4)
  {
    global_logger = airship_platform_get_global_logger();
    ashp_log_helper::log(global_logger, "[%s:%d:%s] ", "interface.cpp", 653, "disconnect_from_service");
  }

  if (*(this + 185) == 1)
  {
    if (*(this + 5))
    {
      if (!*(this + 26))
      {
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x293, "disconnect_from_service", v8);
        _os_crash();
        __break(1u);
      }

      v10 = ashp::detail::logging::get_log_level(v4);
      if (v10 >= 3)
      {
        v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          *buf = 136446722;
          v41 = "interface.cpp";
          v42 = 1024;
          v43 = 660;
          v44 = 2082;
          v45 = "disconnect_from_service";
          _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] invoke stop_handler", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v10))
      {
        v14 = airship_platform_get_global_logger();
        ashp_log_helper::log(v14, "[%s:%d:%s] invoke stop_handler", "interface.cpp", 660, "disconnect_from_service");
      }

      ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 26, v11, v12, v13);
      v15 = *(this + 26);
      ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 5, v16, v17, v18);
      dispatch_async(v15, *(this + 5));
    }

    *(this + 185) = 0;
  }

  v19 = *(this + 27);
  if (v19)
  {
    if (*(this + 104) != 1 || (ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(this + 64, v5, v6, v7), RunLoopSource = IONotificationPortGetRunLoopSource(*(this + 27)), ashp::CentauriHelper::runloop_runner::remove_source(this + 16, RunLoopSource, v21, v22), (v19 = *(this + 27)) != 0))
    {
      IONotificationPortDestroy(v19);
      *(this + 27) = 0;
    }
  }

  v23 = *(this + 28);
  if (v23)
  {
    if (*(this + 152) != 1 || (ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(this + 112, v5, v6, v7), v24 = IONotificationPortGetRunLoopSource(*(this + 28)), ashp::CentauriHelper::runloop_runner::remove_source(this + 28, v24, v25, v26), (v23 = *(this + 28)) != 0))
    {
      IONotificationPortDestroy(v23);
      *(this + 28) = 0;
    }
  }

  v27 = *(this + 50);
  if (v27)
  {
    IOServiceClose(v27);
    *(this + 50) = 0;
  }

  ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(this + 49, v5, v6, v7);
  if (*(this + 472) == 1)
  {
    v31 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(this + 432, v28, v29, v30);
    if (!*v31)
    {
      ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v31, v28, v29, v30);
      *(this + 108) = -536870208;
      airship_ch_interface::fetch_rx(this);
    }
  }

  if (*(this + 536) == 1)
  {
    v32 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(this + 496, v28, v29, v30);
    if (!*v32)
    {
      *ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v32, v28, v29, v30) = -536870208;
    }
  }

  if (*(this + 104) == 1)
  {
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(this + 64, v28, v29, v30);
    ashp::CentauriHelper::runloop_runner::stop(this + 16, v33, v34, v35);
  }

  if (*(this + 152) == 1)
  {
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(this + 112, v28, v29, v30);
    ashp::CentauriHelper::runloop_runner::stop(this + 28, v36, v37, v38);
  }

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t airship_ch_interface::fetch_rx(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this);
  if ((this[118]._os_unfair_lock_opaque & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x3BF, "fetch_rx", v6);
    _os_crash();
    __break(1u);
LABEL_21:
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x3C2, "fetch_rx", v16);
    return 3758097084;
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v3, v4, v5);
  LOWORD(v1) = atomic_load_explicit((*&this[112]._os_unfair_lock_opaque + 6), memory_order_acquire);
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v7, v8, v9);
  v10 = **&this[112]._os_unfair_lock_opaque;
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v11, v12, v13);
  os_unfair_lock_opaque_low = LOWORD(this[109]._os_unfair_lock_opaque);
  if (os_unfair_lock_opaque_low <= v1)
  {
    goto LABEL_21;
  }

  os_unfair_lock_opaque_high = HIWORD(this[109]._os_unfair_lock_opaque);
  v19 = ((v1 - os_unfair_lock_opaque_high) & 0xFFFF0000) != 0 ? LOWORD(this[109]._os_unfair_lock_opaque) : 0;
  v20 = (v19 + v1 - os_unfair_lock_opaque_high);
  v21 = os_unfair_lock_opaque_high - LOWORD(this[110]._os_unfair_lock_opaque);
  v22 = (v21 & 0xFFFF0000) != 0 ? LOWORD(this[109]._os_unfair_lock_opaque) : 0;
  if (v20 > (os_unfair_lock_opaque_low + ~(v22 + v21)))
  {
    goto LABEL_21;
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v14, v15, v16);
  v24 = LOWORD(this[109]._os_unfair_lock_opaque);
  if (v24 > v1)
  {
    v25 = HIWORD(this[109]._os_unfair_lock_opaque);
    v26 = ((v1 - v25) & 0xFFFF0000) != 0 ? LOWORD(this[109]._os_unfair_lock_opaque) : 0;
    v27 = (v26 + v1 - v25);
    v28 = v25 - LOWORD(this[110]._os_unfair_lock_opaque);
    v29 = (v28 & 0xFFFF0000) != 0 ? LOWORD(this[109]._os_unfair_lock_opaque) : 0;
    if (v27 <= (v24 + ~(v29 + v28)))
    {
      HIWORD(this[109]._os_unfair_lock_opaque) = v1;
      return v10;
    }
  }

  ashp::detail::control_flow::log_guard_else_failure("ring_index_pair.hpp", 0x87, "update_head_index", v23);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: invalid head index update operation", "ring_index_pair.hpp", 0x87, "update_head_index", v31);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 52) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::dynamic_array<unsigned long>::operator[](unint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (a1 > a3)
  {
    return a2 + 8 * a3;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t airship_ch_interface::open(airship_ch_interface_id,unsigned int)::$_5::operator()(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = a2;
  if (a2 == -536870208)
  {
    ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value((a1 + 4), a2, a3, a4);
    v6 = *(a1 + 4);
    if (IOServiceGetState())
    {
      return 0;
    }
  }

  return v4;
}

uint64_t airship_ch_interface::start_tx(const os_unfair_lock *this, mach_port_t a2, unsigned int a3, IONotificationPort *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  reference[0] = 0;
  v15 = 0u;
  v16 = 0u;
  reference[1] = airship_ch_interface::start_tx(unsigned int,unsigned int,IONotificationPort *)::$_0::__invoke;
  v14 = this;
  MachPort = IONotificationPortGetMachPort(a4);
  v9 = IOConnectCallAsyncScalarMethod(a2, 6u, MachPort, reference, 3u, 0, 0, 0, 0);
  if (!v9 || (State = IOServiceGetState(), result = 3758097088, !State))
  {
    if (ashp::detail::control_flow::check_err_with_debug(v9, "interface.cpp", 0x285, "start_tx", v8))
    {
      result = 0;
    }

    else
    {
      result = 3758097084;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
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

void ashp::optional<ashp::CentauriHelper::termination_notifier,void>::emplace<unsigned int,dispatch_queue_s *,airship_ch_interface::open(airship_ch_interface_id,unsigned int)::$_2 const&,airship_ch_interface*,0>(ashp::CentauriHelper::termination_notifier *a1, unsigned int *a2, dispatch_queue_s **a3, const char *a4)
{
  if (*(a1 + 40) == 1)
  {
    *(a1 + 40) = 0;
    ashp::CentauriHelper::termination_notifier::~termination_notifier(a1, a2, a3, a4);
  }

  ashp::CentauriHelper::termination_notifier::termination_notifier(a1, *a2, *a3, airship_ch_interface::open(airship_ch_interface_id,unsigned int)::$_2::__invoke, *a4);
}

void airship_ch_interface::open(airship_ch_interface_id,unsigned int)::$_4::operator()<>(ashp::detail::logging *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v5 = "interface.cpp";
      v6 = 1024;
      v7 = 528;
      v8 = 2082;
      v9 = "open";
      _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] complete", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    global_logger = airship_platform_get_global_logger();
    ashp_log_helper::log(global_logger, "[%s:%d:%s] complete", "interface.cpp", 528, "open");
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::deferred_action<airship_ch_interface::open(airship_ch_interface_id,unsigned int)::$_3>::~deferred_action(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    os_unfair_lock_unlock(*a1);
    if (LOBYTE(v2[80]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v2[80]._os_unfair_lock_opaque) = 0;
      ashp::CentauriHelper::stop_notifier::~stop_notifier(&v2[70]);
    }

    os_unfair_lock_lock(v2);
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }
  }

  return a1;
}

void ashp::unsafe_storage<ashp::CentauriHelper::runloop_runner>::storage::reset(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    *(a1 + 40) = 0;
    ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset((a1 + 16));
    ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset((a1 + 8));
  }
}

void airship_ch_interface::start_tx(unsigned int,unsigned int,IONotificationPort *)::$_0::__invoke(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  v32 = 0;
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (LOBYTE(lock[46]._os_unfair_lock_opaque) == 1 && (v5 = lock + 124, ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&lock[124], a2, a3, a4), !lock[124]._os_unfair_lock_opaque))
  {
    v9 = airship_ch_interface::consume_tx(lock);
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&lock[124], v10, v11, v12);
    v5->_os_unfair_lock_opaque = v9;
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&lock[124], v13, v14, v15);
    if (v5->_os_unfair_lock_opaque || ((ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&lock[124], v16, v17, v18), v19 = HIWORD(lock[125]._os_unfair_lock_opaque) - LOWORD(lock[126]._os_unfair_lock_opaque), (v19 & 0xFFFF0000) == 0) ? (os_unfair_lock_opaque = 0) : (os_unfair_lock_opaque = lock[125]._os_unfair_lock_opaque), LOWORD(lock[125]._os_unfair_lock_opaque) != (v19 + os_unfair_lock_opaque + 1)))
    {
      ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v31, *&lock[14]._os_unfair_lock_opaque, v17, v18);
      v21 = v31;
      v31 = v32;
      v32 = v21;
      ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v31, v22, v23, v24);
      if (LOBYTE(lock[38]._os_unfair_lock_opaque) == 1)
      {
        ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&lock[28], v25, v26, v27);
        ashp::CentauriHelper::runloop_runner::stop(lock + 28, v28, v29, v30);
      }
    }

    os_unfair_lock_unlock(lock);
    if (v32)
    {
      ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v32, v6, v7, v8);
      v32[2]();
    }
  }

  else
  {
    os_unfair_lock_unlock(lock);
  }

  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v32, v6, v7, v8);
}

void sub_23ED241DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

uint64_t airship_ch_interface::consume_tx(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this);
  if ((this[134]._os_unfair_lock_opaque & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x4E4, "consume_tx", v6);
    _os_crash();
    __break(1u);
LABEL_19:
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x4E7, "consume_tx", v16);
    return 3758097084;
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v3, v4, v5);
  LOWORD(v1) = atomic_load_explicit((*&this[128]._os_unfair_lock_opaque + 8), memory_order_acquire);
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v7, v8, v9);
  v10 = **&this[128]._os_unfair_lock_opaque;
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v11, v12, v13);
  os_unfair_lock_opaque_low = LOWORD(this[125]._os_unfair_lock_opaque);
  if (os_unfair_lock_opaque_low <= v1)
  {
    goto LABEL_19;
  }

  v18 = LOWORD(this[126]._os_unfair_lock_opaque);
  if (((v1 - v18) & 0xFFFF0000) != 0)
  {
    os_unfair_lock_opaque = this[125]._os_unfair_lock_opaque;
  }

  else
  {
    os_unfair_lock_opaque = 0;
  }

  v20 = (os_unfair_lock_opaque + v1 - v18);
  v21 = HIWORD(this[125]._os_unfair_lock_opaque) - v18;
  if ((v21 & 0xFFFF0000) == 0)
  {
    LOWORD(os_unfair_lock_opaque_low) = 0;
  }

  if (v20 > (os_unfair_lock_opaque_low + v21))
  {
    goto LABEL_19;
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v14, v15, v16);
  v23 = LOWORD(this[125]._os_unfair_lock_opaque);
  if (v23 > v1)
  {
    v24 = LOWORD(this[126]._os_unfair_lock_opaque);
    v25 = ((v1 - v24) & 0xFFFF0000) != 0 ? LOWORD(this[125]._os_unfair_lock_opaque) : 0;
    v26 = (v25 + v1 - v24);
    v27 = HIWORD(this[125]._os_unfair_lock_opaque) - v24;
    if ((v27 & 0xFFFF0000) == 0)
    {
      LOWORD(v23) = 0;
    }

    if (v26 <= (v23 + v27))
    {
      LOWORD(this[126]._os_unfair_lock_opaque) = v1;
      return v10;
    }
  }

  ashp::detail::control_flow::log_guard_else_failure("ring_index_pair.hpp", 0x91, "update_tail_index", v22);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: invalid tail index update operation", "ring_index_pair.hpp", 0x91, "update_tail_index", v29);
  result = _os_crash();
  __break(1u);
  return result;
}

void airship_ch_interface::start_rx(unsigned int,unsigned int,IONotificationPort *)::$_0::__invoke(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  v31 = 0;
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (LOBYTE(lock[46]._os_unfair_lock_opaque) == 1 && (v5 = lock + 108, ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&lock[108], a2, a3, a4), !lock[108]._os_unfair_lock_opaque))
  {
    rx = airship_ch_interface::fetch_rx(lock);
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&lock[108], v10, v11, v12);
    v5->_os_unfair_lock_opaque = rx;
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&lock[108], v13, v14, v15);
    if (v5->_os_unfair_lock_opaque)
    {
      goto LABEL_11;
    }

    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&lock[108], v16, v17, v18);
    os_unfair_lock_opaque = lock[109]._os_unfair_lock_opaque;
    if (((HIWORD(lock[109]._os_unfair_lock_opaque) - LOWORD(lock[110]._os_unfair_lock_opaque)) & 0xFFFF0000) == 0)
    {
      os_unfair_lock_opaque = 0;
    }

    if (os_unfair_lock_opaque != (LOWORD(lock[110]._os_unfair_lock_opaque) - HIWORD(lock[109]._os_unfair_lock_opaque)))
    {
LABEL_11:
      ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v30, *&lock[12]._os_unfair_lock_opaque, v17, v18);
      v20 = v30;
      v30 = v31;
      v31 = v20;
      ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v30, v21, v22, v23);
      if (LOBYTE(lock[26]._os_unfair_lock_opaque) == 1)
      {
        ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&lock[16], v24, v25, v26);
        ashp::CentauriHelper::runloop_runner::stop(lock + 16, v27, v28, v29);
      }
    }

    os_unfair_lock_unlock(lock);
    if (v31)
    {
      ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v31, v6, v7, v8);
      v31[2]();
    }
  }

  else
  {
    os_unfair_lock_unlock(lock);
  }

  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v31, v6, v7, v8);
}

void sub_23ED244C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void airship_ch_interface::open(airship_ch_interface_id,unsigned int)::$_2::__invoke(os_unfair_lock_s *this)
{
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  airship_ch_interface::disconnect_from_service(this);
  if (this)
  {

    os_unfair_lock_unlock(this);
  }
}

void sub_23ED245B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void airship_ch_interface::close(airship_ch_interface *this)
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 1);
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  if (*(this + 184) == 1)
  {
    *(this + 184) = 0;
    log_level = ashp::detail::logging::get_log_level(v2);
    if (log_level >= 3)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        v22 = "interface.cpp";
        v23 = 1024;
        v24 = 712;
        v25 = 2082;
        v26 = "close";
        _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      global_logger = airship_platform_get_global_logger();
      ashp_log_helper::log(global_logger, "[%s:%d:%s] ", "interface.cpp", 712, "close");
    }

    *(this + 185) = 0;
    v5 = *(this + 50);
    if (v5)
    {
      IOConnectCallScalarMethod(v5, 2u, 0, 0, 0, 0);
    }

    airship_ch_interface::disconnect_from_service(this);
    if (*(this + 4))
    {
      if (!*(this + 26))
      {
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x2D4, "close", v9);
        _os_crash();
        __break(1u);
      }

      v10 = *ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 26, v6, v7, v8);
      ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 4, v11, v12, v13);
      dispatch_async(v10, *(this + 4));
    }

    if (*(this + 472) == 1)
    {
      *(this + 472) = 0;
    }

    if (*(this + 484) == 1)
    {
      *(this + 484) = 0;
    }

    *(this + 61) = 0;
    if (*(this + 536) == 1)
    {
      *(this + 536) = 0;
    }

    if (*(this + 548) == 1)
    {
      *(this + 548) = 0;
    }

    *(this + 138) = 0;
    if (*(this + 428) == 1)
    {
      *(this + 428) = 0;
    }

    ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::reset(this + 328, v6, v7, v8);
    ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::reset(this + 352, v14, v15, v16);
    if (*(this + 192) == 1)
    {
      *(this + 192) = 0;
    }

    if (*(this + 272) == 1)
    {
      os_unfair_lock_unlock(this);
      if (*(this + 272) == 1)
      {
        *(this + 272) = 0;
        ashp::CentauriHelper::termination_notifier::~termination_notifier((this + 232), v17, v18, v19);
      }

      os_unfair_lock_lock(this);
    }

    if (*(this + 320) == 1)
    {
      os_unfair_lock_unlock(this);
      if (*(this + 320) == 1)
      {
        *(this + 320) = 0;
        ashp::CentauriHelper::stop_notifier::~stop_notifier((this + 280));
      }

      os_unfair_lock_lock(this);
    }

    os_unfair_lock_unlock(this);
    os_unfair_lock_lock(this + 2);
    os_unfair_lock_unlock(this + 2);
    os_unfair_lock_lock(this + 3);
    os_unfair_lock_unlock(this + 3);
    os_unfair_lock_lock(this);
  }

  os_unfair_lock_unlock(this);
  os_unfair_lock_unlock(this + 1);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_23ED248B0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::reset(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = 0;
  v9 = 0x200000000;
  ashp::buffer_mapping::operator=(a1, &v7, a3, a4);
  ashp::buffer_mapping::~buffer_mapping(&v7, v4, v5, v6);
}

void airship_ch_interface::impl_consume_read(const os_unfair_lock *this, unsigned int a2, char a3)
{
  v5 = this;
  os_unfair_lock_assert_owner(this + 2);
  os_unfair_lock_assert_owner(v5);
  if (v5[484] != 1)
  {
LABEL_15:
    if (!a2)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value((v5 + 480), v6, v7, v8);
  v14 = *(v5 + 123);
  if (*(v5 + 120) - v14 < a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x39E, "impl_consume_read", v13);
    _os_crash();
    __break(1u);
LABEL_44:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x3AA, "impl_consume_read", v9);
    _os_crash();
    __break(1u);
LABEL_45:
    ashp::detail::control_flow::log_guard_else_failure("ring_index_pair.hpp", 0xA5, "advance_tail_index", v8);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: invalid tail index advance operation", "ring_index_pair.hpp", 0xA5, "advance_tail_index", v70);
    _os_crash();
    __break(1u);
    goto LABEL_46;
  }

  a2 += v14;
  *(v5 + 123) = a2;
  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value((v5 + 480), v10, v11, v12);
  if (a2 == *(v5 + 120))
  {
    if (v5[484] == 1)
    {
      *(v5 + 484) = 0;
    }

    *(v5 + 123) = 0;
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 432), v6, v7, v8);
    v16 = *(v5 + 220);
    if (((*(v5 + 219) - v16) & 0xFFFF0000) != 0)
    {
      v17 = *(v5 + 218);
    }

    else
    {
      v17 = 0;
    }

    if (v17 == (v16 - *(v5 + 219)))
    {
      goto LABEL_45;
    }

    v18 = v16 + 1;
    v19 = v18;
    v20 = v18 == v18 ? 0 : *(v5 + 218);
    *(v5 + 220) = (v19 - v20) % *(v5 + 218);
    v21 = *(v5 + 122) + 1;
    *(v5 + 122) = v21;
    if (v21 != v21 << 31 >> 31)
    {
      v5 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x3A5, "impl_consume_read", v15);
      _os_crash();
      __break(1u);
      goto LABEL_15;
    }
  }

LABEL_16:
  if ((a3 & 1) == 0)
  {
    return;
  }

  if (!*(v5 + 122))
  {
    return;
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 432), v6, v7, v8);
  if (*(v5 + 108))
  {
    return;
  }

  os_unfair_lock_assert_owner(v5);
  if ((v5[472] & 1) == 0)
  {
LABEL_46:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x3DC, "refill_rx", v25);
    _os_crash();
    __break(1u);
    return;
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 432), v22, v23, v24);
  v26 = *(*(v5 + 56) + 8);
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 432), v27, v28, v29);
  v30 = *(v5 + 220);
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 432), v31, v32, v33);
  atomic_fetch_add_explicit((*(v5 + 56) + 4), 1u, memory_order_relaxed);
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 432), v34, v35, v36);
  atomic_store(v30, (*(v5 + 56) + 8));
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 432), v37, v38, v39);
  add = atomic_fetch_add((*(v5 + 56) + 4), 0xFFu);
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 432), v41, v42, v43);
  v44 = *(*(v5 + 56) + 6);
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 432), v45, v46, v47);
  v51 = *(v5 + 218);
  v52 = v44 % v51 + v26 / v51 * v51 - v26;
  if ((v52 & 0xFFFF0000) == 0)
  {
    LOWORD(v51) = 0;
  }

  v53 = v51 + v52;
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 432), v48, v49, v50);
  v57 = *(v5 + 218);
  v58 = v44 % v57 + v30 / v57 * v57 - v30;
  if ((v58 & 0xFFFF0000) == 0)
  {
    LOWORD(v57) = 0;
  }

  v59 = (v57 + v58);
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 432), v54, v55, v56);
  if (v59 <= v53)
  {
    v64 = *(v5 + 218);
    ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value((v5 + 376), v60, v61, v62);
    v65 = *(v5 + 50);
    if (v65)
    {
      v63 = 0;
    }

    else
    {
      v63 = -536870208;
    }

    if (v65 && *(v5 + 192) - 1 > (v64 + ~v53) && add <= 1)
    {
      if (IOConnectCallScalarMethod(v65, 7u, 0, 0, 0, 0) && (ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(v5 + 49, v60, v61, v62), v66 = *(v5 + 49), IOServiceGetState()))
      {
        v63 = -536870208;
      }

      else
      {
        v63 = 0;
      }
    }
  }

  else if (*(v5 + 50))
  {
    v63 = 0;
  }

  else
  {
    v63 = -536870208;
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 432), v60, v61, v62);
  *(v5 + 108) = v63;
  *(v5 + 122) = 0;
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 432), v67, v68, v69);
  if (*(v5 + 108))
  {

    airship_ch_interface::fetch_rx(v5);
  }
}

uint64_t airship_ch_interface::impl_wait_for_read_DROPS_LOCK(os_unfair_lock *this, unsigned int a2)
{
  os_unfair_lock_assert_owner(this + 2);
  os_unfair_lock_assert_owner(this);
  v4 = this + 108;
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v5, v6, v7);
  os_unfair_lock_opaque = this[109]._os_unfair_lock_opaque;
  if (((HIWORD(this[109]._os_unfair_lock_opaque) - LOWORD(this[110]._os_unfair_lock_opaque)) & 0xFFFF0000) == 0)
  {
    os_unfair_lock_opaque = 0;
  }

  if (os_unfair_lock_opaque != (LOWORD(this[110]._os_unfair_lock_opaque) - HIWORD(this[109]._os_unfair_lock_opaque)))
  {
    goto LABEL_48;
  }

  if (*&this[12]._os_unfair_lock_opaque)
  {
    if (!a2)
    {
      rx = airship_ch_interface::fetch_rx(this);
      v14 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v11, v12, v13);
      this[108]._os_unfair_lock_opaque = rx;
      ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v14, v15, v16, v17);
      if (this[108]._os_unfair_lock_opaque)
      {
        ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v18, v19, v20);
        v21 = this[109]._os_unfair_lock_opaque;
        if (((HIWORD(this[109]._os_unfair_lock_opaque) - LOWORD(this[110]._os_unfair_lock_opaque)) & 0xFFFF0000) == 0)
        {
          v21 = 0;
        }

        if (v21 == (LOWORD(this[110]._os_unfair_lock_opaque) - HIWORD(this[109]._os_unfair_lock_opaque)))
        {
          ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v18, v19, v20);
          return v4->_os_unfair_lock_opaque;
        }
      }

      ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v18, v19, v20);
      v23 = this[109]._os_unfair_lock_opaque;
      if (((HIWORD(this[109]._os_unfair_lock_opaque) - LOWORD(this[110]._os_unfair_lock_opaque)) & 0xFFFF0000) == 0)
      {
        v23 = 0;
      }

      if (v23 == (LOWORD(this[110]._os_unfair_lock_opaque) - HIWORD(this[109]._os_unfair_lock_opaque)))
      {
        return 3758097110;
      }

      goto LABEL_48;
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x345, "impl_wait_for_read_DROPS_LOCK", v8);
    _os_crash();
    __break(1u);
    goto LABEL_56;
  }

  os_unfair_lock_assert_owner(this);
  if ((this[118]._os_unfair_lock_opaque & 1) == 0)
  {
LABEL_56:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x3FD, "wait_for_rx_DROPS_LOCK", v27);
    _os_crash();
    __break(1u);
    goto LABEL_57;
  }

  if ((this[26]._os_unfair_lock_opaque & 1) == 0)
  {
LABEL_57:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x3FE, "wait_for_rx_DROPS_LOCK", v27);
    _os_crash();
    __break(1u);
LABEL_58:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x358, "impl_wait_for_read_DROPS_LOCK", v66);
    _os_crash();
    __break(1u);
LABEL_59:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x41D, "wait_for_rx_DROPS_LOCK", v63);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v22 = 3758097088;
  v28 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v24, v25, v26);
  v29 = v4->_os_unfair_lock_opaque;
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v28, v30, v31, v32);
  if (v29)
  {
    goto LABEL_18;
  }

  v37 = this[109]._os_unfair_lock_opaque;
  if (((HIWORD(this[109]._os_unfair_lock_opaque) - LOWORD(this[110]._os_unfair_lock_opaque)) & 0xFFFF0000) == 0)
  {
    v37 = 0;
  }

  if (v37 != (LOWORD(this[110]._os_unfair_lock_opaque) - HIWORD(this[109]._os_unfair_lock_opaque)))
  {
LABEL_38:
    v36 = 0;
    goto LABEL_39;
  }

  v38 = airship_ch_interface::fetch_rx(this);
  v42 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v39, v40, v41);
  this[108]._os_unfair_lock_opaque = v38;
  v46 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v42, v43, v44, v45);
  v47 = this[108]._os_unfair_lock_opaque;
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v46, v48, v49, v50);
  if (v47)
  {
LABEL_18:
    v36 = v4->_os_unfair_lock_opaque;
    goto LABEL_39;
  }

  v51 = this[109]._os_unfair_lock_opaque;
  if (((HIWORD(this[109]._os_unfair_lock_opaque) - LOWORD(this[110]._os_unfair_lock_opaque)) & 0xFFFF0000) == 0)
  {
    v51 = 0;
  }

  if (v51 == (LOWORD(this[110]._os_unfair_lock_opaque) - HIWORD(this[109]._os_unfair_lock_opaque)))
  {
    os_unfair_lock_unlock(this);
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[16], v52, v53, v54);
    v55 = ashp::CentauriHelper::runloop_runner::run(this + 16, a2);
    os_unfair_lock_lock(this);
    v36 = 3758097088;
    if (this[4]._os_unfair_lock_opaque)
    {
      goto LABEL_39;
    }

    if (LOBYTE(this[46]._os_unfair_lock_opaque) == 1)
    {
      v36 = v55;
      if (v55)
      {
        goto LABEL_39;
      }

      ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v33, v34, v35);
      if (v4->_os_unfair_lock_opaque)
      {
LABEL_30:
        ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v56, v57, v58);
        goto LABEL_18;
      }

LABEL_35:
      ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v56, v57, v58);
      v64 = this[109]._os_unfair_lock_opaque;
      if (((HIWORD(this[109]._os_unfair_lock_opaque) - LOWORD(this[110]._os_unfair_lock_opaque)) & 0xFFFF0000) == 0)
      {
        v64 = 0;
      }

      if (v64 == (LOWORD(this[110]._os_unfair_lock_opaque) - HIWORD(this[109]._os_unfair_lock_opaque)))
      {
        goto LABEL_59;
      }

      goto LABEL_38;
    }

LABEL_53:
    v36 = 3758097101;
  }

  else
  {
    while (1)
    {
      os_unfair_lock_unlock(this);
      ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[16], v59, v60, v61);
      v62 = ashp::CentauriHelper::runloop_runner::run(this + 16, 0);
      os_unfair_lock_lock(this);
      if (this[4]._os_unfair_lock_opaque)
      {
        break;
      }

      if (LOBYTE(this[46]._os_unfair_lock_opaque) != 1)
      {
        goto LABEL_53;
      }

      ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v33, v34, v35);
      if (v4->_os_unfair_lock_opaque)
      {
        goto LABEL_30;
      }

      if (v62 == -536870186)
      {
        goto LABEL_35;
      }
    }

    v36 = 3758097088;
  }

LABEL_39:
  if (this[4]._os_unfair_lock_opaque)
  {
    return v22;
  }

  if (LOBYTE(this[46]._os_unfair_lock_opaque) != 1)
  {
    return 3758097101;
  }

  if (v36)
  {
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v33, v34, v35);
    v65 = this[109]._os_unfair_lock_opaque;
    if (((HIWORD(this[109]._os_unfair_lock_opaque) - LOWORD(this[110]._os_unfair_lock_opaque)) & 0xFFFF0000) == 0)
    {
      v65 = 0;
    }

    v22 = v36;
    if (v65 == (LOWORD(this[110]._os_unfair_lock_opaque) - HIWORD(this[109]._os_unfair_lock_opaque)))
    {
      return v22;
    }
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v33, v34, v35);
  v67 = this[109]._os_unfair_lock_opaque;
  if (((HIWORD(this[109]._os_unfair_lock_opaque) - LOWORD(this[110]._os_unfair_lock_opaque)) & 0xFFFF0000) == 0)
  {
    v67 = 0;
  }

  if (v67 == (LOWORD(this[110]._os_unfair_lock_opaque) - HIWORD(this[109]._os_unfair_lock_opaque)))
  {
    goto LABEL_58;
  }

LABEL_48:

  return airship_ch_interface::stage_rx_meta(this);
}

uint64_t airship_ch_interface::impl_peek_read(const os_unfair_lock *this, const void **a2, unsigned int *a3)
{
  os_unfair_lock_assert_owner(this + 2);
  os_unfair_lock_assert_owner(this);
  airship_ch_interface::stage_rx_meta(this);
  os_unfair_lock_opaque_low = LOBYTE(this[121]._os_unfair_lock_opaque);
  if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (!a3)
    {
      return os_unfair_lock_opaque_low;
    }

    v29 = 0;
LABEL_11:
    *a3 = v29;
    return os_unfair_lock_opaque_low;
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v6, v7, v8);
  v10 = LOWORD(this[110]._os_unfair_lock_opaque);
  os_unfair_lock_opaque = this[123]._os_unfair_lock_opaque;
  v15 = ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(&this[120], v12, v13, v14);
  if (os_unfair_lock_opaque <= *v15)
  {
    ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(v15, v16, v17, v18);
    v20 = this[120]._os_unfair_lock_opaque;
    v21 = this[123]._os_unfair_lock_opaque;
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v22, v23, v24);
    v25 = *&this[116]._os_unfair_lock_opaque;
    ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value(&this[94], v26, v27, v28);
    v29 = v20 - v21;
    if (a2)
    {
      *a2 = (v25 + this[123]._os_unfair_lock_opaque + this[95]._os_unfair_lock_opaque * v10);
    }

    if (!a3)
    {
      return os_unfair_lock_opaque_low;
    }

    goto LABEL_11;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x379, "impl_peek_read", v19);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ED252D0(_Unwind_Exception *a1)
{
  if (v2)
  {
    *v2 = 0;
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t airship_ch_interface::stage_rx_meta(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this);
  if ((this[118]._os_unfair_lock_opaque & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x3CB, "stage_rx_meta", v5);
    _os_crash();
    __break(1u);
LABEL_12:
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x3D1, "stage_rx_meta", v18);
    return 3758097084;
  }

  if (this[121]._os_unfair_lock_opaque)
  {
    return 0;
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v2, v3, v4);
  os_unfair_lock_opaque = this[109]._os_unfair_lock_opaque;
  if (((HIWORD(this[109]._os_unfair_lock_opaque) - LOWORD(this[110]._os_unfair_lock_opaque)) & 0xFFFF0000) == 0)
  {
    os_unfair_lock_opaque = 0;
  }

  if (os_unfair_lock_opaque == (LOWORD(this[110]._os_unfair_lock_opaque) - HIWORD(this[109]._os_unfair_lock_opaque)))
  {
    return 0;
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v6, v7, v8);
  os_unfair_lock_opaque_low = LOWORD(this[110]._os_unfair_lock_opaque);
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[108], v11, v12, v13);
  v14 = *(*&this[114]._os_unfair_lock_opaque + 4 * os_unfair_lock_opaque_low);
  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value(&this[94], v15, v16, v17);
  if (v14 > this[95]._os_unfair_lock_opaque)
  {
    goto LABEL_12;
  }

  v20 = this[121]._os_unfair_lock_opaque;
  this[120]._os_unfair_lock_opaque = v14;
  if ((v20 & 1) == 0)
  {
    LOBYTE(this[121]._os_unfair_lock_opaque) = 1;
  }

  if (!this[123]._os_unfair_lock_opaque)
  {
    return 0;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x3D3, "stage_rx_meta", v19);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
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

uint64_t airship_ch_interface::write(os_unfair_lock_s *this, char *a2, unsigned int a3, unsigned int a4, unsigned int *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v35 = 0;
  os_unfair_lock_lock(this + 3);
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  if (LOBYTE(this[4]._os_unfair_lock_opaque) == 1)
  {
    log_level = ashp::detail::logging::get_log_level(v10);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        *&buf[4] = "interface.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1066;
        v37 = 2082;
        v38 = "write";
        _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] interface disconnected", buf, 0x1Cu);
      }
    }

    os_unfair_lock_opaque = 3758097088;
    if (ashp::detail::logging::get_log_level(log_level))
    {
      global_logger = airship_platform_get_global_logger();
      ashp_log_helper::log(global_logger, "[%s:%d:%s] interface disconnected", "interface.cpp", 1066, "write");
    }
  }

  else if (this[46]._os_unfair_lock_opaque)
  {
    if (this[134]._os_unfair_lock_opaque)
    {
      if (a4 && *&this[14]._os_unfair_lock_opaque)
      {
        ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x42F, "write", v13);
        ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted blocking write with handler active", "interface.cpp", 0x42F, "write", v32);
        _os_crash();
        __break(1u);
      }

      ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v11, v12, v13);
      if (this[124]._os_unfair_lock_opaque)
      {
        ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v17, v18, v19);
        os_unfair_lock_opaque = this[124]._os_unfair_lock_opaque;
      }

      else
      {
        if (a3)
        {
          *buf = &v35;
          *&buf[8] = this;
          buf[16] = 1;
          if (v35 < a3)
          {
            do
            {
              ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v17, v18, v19);
              v23 = HIWORD(this[125]._os_unfair_lock_opaque) - LOWORD(this[126]._os_unfair_lock_opaque);
              if ((v23 & 0xFFFF0000) != 0)
              {
                v24 = this[125]._os_unfair_lock_opaque;
              }

              else
              {
                v24 = 0;
              }

              if (LOWORD(this[125]._os_unfair_lock_opaque) == (v23 + v24 + 1))
              {
                v25 = this[138]._os_unfair_lock_opaque;
                ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v20, v21, v22);
                if (v25 == LOWORD(this[125]._os_unfair_lock_opaque) - 1)
                {
                  airship_ch_interface::impl_commit_write(this, 0, 1);
                }
              }

              os_unfair_lock_opaque = airship_ch_interface::impl_wait_for_write_DROPS_LOCK(this, a4);
              if (os_unfair_lock_opaque)
              {
                ashp::deferred_action<airship_ch_interface::write(void const*,unsigned int,unsigned int,unsigned int *)::$_3>::~deferred_action(buf);
                goto LABEL_36;
              }

              __dst = 0;
              v33 = 0;
              if ((airship_ch_interface::impl_prepare_write(this, &__dst, &v33) & 1) == 0)
              {
                ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x44E, "write", v26);
                _os_crash();
                __break(1u);
                goto LABEL_41;
              }

              if (v33 >= a3 - v35)
              {
                v27 = a3 - v35;
              }

              else
              {
                v27 = v33;
              }

              memcpy(__dst, &a2[v35], v27);
              v35 += v27;
              if (v35 == a3)
              {
                v28 = 3;
              }

              else
              {
                v28 = 0;
              }

              airship_ch_interface::impl_commit_write(this, v27, v28);
            }

            while (v35 < a3);
            if ((buf[16] & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          buf[16] = 0;
LABEL_34:
          ashp::deferred_action<airship_ch_interface::write(void const*,unsigned int,unsigned int,unsigned int *)::$_3>::~deferred_action(buf);
        }

        os_unfair_lock_opaque = 0;
      }
    }

    else
    {
      ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x42C, "write", v13);
      os_unfair_lock_opaque = 3758097090;
    }
  }

  else
  {
LABEL_41:
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x42B, "write", v13);
    airship_ch_interface::write(void const*,unsigned int,unsigned int,unsigned int *)::$_2::operator()<>(v31);
    os_unfair_lock_opaque = 3758097101;
  }

LABEL_36:
  os_unfair_lock_unlock(this);
  os_unfair_lock_unlock(this + 3);
  if (a5)
  {
    *a5 = v35;
  }

  v29 = *MEMORY[0x277D85DE8];
  return os_unfair_lock_opaque;
}

void sub_23ED25850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, char a16)
{
  os_unfair_lock_unlock(v17);
  os_unfair_lock_unlock(v17 + 3);
  if (v16)
  {
    *v16 = a15;
  }

  _Unwind_Resume(a1);
}

void airship_ch_interface::write(void const*,unsigned int,unsigned int,unsigned int *)::$_2::operator()<>(ashp::detail::logging *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 2)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v5 = "interface.cpp";
      v6 = 1024;
      v7 = 1067;
      v8 = 2082;
      v9 = "write";
      _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] interface not open", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    global_logger = airship_platform_get_global_logger();
    ashp_log_helper::log(global_logger, "[%s:%d:%s] interface not open", "interface.cpp", 1067, "write");
  }

  v3 = *MEMORY[0x277D85DE8];
}

void airship_ch_interface::impl_commit_write(const os_unfair_lock *this, int a2, char a3)
{
  LODWORD(v4) = a2;
  v5 = this;
  os_unfair_lock_assert_owner(this + 3);
  os_unfair_lock_assert_owner(v5);
  if (v5[548] != 1)
  {
LABEL_16:
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value((v5 + 376), v6, v7, v8);
  v10 = *(v5 + 97);
  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value((v5 + 544), v11, v12, v13);
  if (v10 - *(v5 + 136) < v4)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x4C6, "impl_commit_write", v17);
    _os_crash();
    __break(1u);
LABEL_42:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x4D3, "impl_commit_write", v9);
    _os_crash();
    __break(1u);
LABEL_43:
    ashp::detail::control_flow::log_guard_else_failure("ring_index_pair.hpp", 0x9B, "advance_head_index", v8);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: invalid head index advance operation", "ring_index_pair.hpp", 0x9B, "advance_head_index", v84);
    _os_crash();
    __break(1u);
    goto LABEL_44;
  }

  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value((v5 + 544), v14, v15, v16);
  *(v5 + 136) += v4;
  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value((v5 + 544), v18, v19, v20);
  v21 = *(v5 + 136);
  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value((v5 + 376), v22, v23, v24);
  if ((a3 & 2) != 0 || v21 == *(v5 + 97))
  {
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 496), v6, v7, v8);
    v4 = *(v5 + 251);
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 496), v25, v26, v27);
    v28 = *(v5 + 65);
    ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value((v5 + 544), v29, v30, v31);
    *(v28 + 4 * v4) = *(v5 + 136);
    if (v5[548] == 1)
    {
      *(v5 + 548) = 0;
    }

    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 496), v32, v33, v34);
    v36 = *(v5 + 250);
    v37 = *(v5 + 251);
    v38 = v37 - *(v5 + 252);
    if ((v38 & 0xFFFF0000) != 0)
    {
      v39 = *(v5 + 250);
    }

    else
    {
      v39 = 0;
    }

    if (v36 == (v39 + v38 + 1))
    {
      goto LABEL_43;
    }

    v40 = v37 + 1;
    v41 = v40;
    v42 = v40 == v40 ? 0 : *(v5 + 250);
    *(v5 + 251) = (v41 - v42) % v36;
    v43 = *(v5 + 138) + 1;
    *(v5 + 138) = v43;
    if (v43 != v43 << 31 >> 31)
    {
      v5 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x4CE, "impl_commit_write", v35);
      _os_crash();
      __break(1u);
      goto LABEL_16;
    }
  }

LABEL_17:
  if ((a3 & 1) == 0)
  {
    return;
  }

  if (!*(v5 + 138))
  {
    return;
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 496), v6, v7, v8);
  if (*(v5 + 124))
  {
    return;
  }

  os_unfair_lock_assert_owner(v5);
  if ((v5[536] & 1) == 0)
  {
LABEL_44:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x4FD, "flush_tx", v47);
    _os_crash();
    __break(1u);
    return;
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 496), v44, v45, v46);
  v48 = *(*(v5 + 64) + 6);
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 496), v49, v50, v51);
  v52 = *(v5 + 251);
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 496), v53, v54, v55);
  atomic_fetch_add_explicit((*(v5 + 64) + 4), 1u, memory_order_relaxed);
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 496), v56, v57, v58);
  atomic_store(v52, (*(v5 + 64) + 6));
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 496), v59, v60, v61);
  add = atomic_fetch_add((*(v5 + 64) + 4), 0xFFu);
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 496), v63, v64, v65);
  v66 = *(*(v5 + 64) + 8);
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 496), v67, v68, v69);
  v73 = *(v5 + 250);
  v74 = v48 % v73 + v66 / v73 * v73 - v66;
  if ((v74 & 0xFFFF0000) == 0)
  {
    LOWORD(v73) = 0;
  }

  v75 = v73 + v74;
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 496), v70, v71, v72);
  v79 = *(v5 + 250);
  v80 = v52 % v79 + v66 / v79 * v79 - v66;
  if ((v80 & 0xFFFF0000) == 0)
  {
    LOWORD(v79) = 0;
  }

  if ((v79 + v80) >= v75)
  {
    ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value((v5 + 376), v76, v77, v78);
    v82 = *(v5 + 50);
    if (v82)
    {
      v81 = 0;
    }

    else
    {
      v81 = -536870208;
    }

    if (v82 && *(v5 + 196) - 1 > v75 && add <= 1)
    {
      if (IOConnectCallScalarMethod(v82, 8u, 0, 0, 0, 0) && (ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(v5 + 49, v76, v77, v78), v83 = *(v5 + 49), IOServiceGetState()))
      {
        v81 = -536870208;
      }

      else
      {
        v81 = 0;
      }
    }
  }

  else if (*(v5 + 50))
  {
    v81 = 0;
  }

  else
  {
    v81 = -536870208;
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value((v5 + 496), v76, v77, v78);
  *(v5 + 124) = v81;
  *(v5 + 138) = 0;
}

uint64_t airship_ch_interface::impl_wait_for_write_DROPS_LOCK(os_unfair_lock_s *this, unsigned int a2)
{
  os_unfair_lock_assert_owner(this + 3);
  os_unfair_lock_assert_owner(this);
  v4 = this + 124;
  v8 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v5, v6, v7);
  os_unfair_lock_opaque = this[124]._os_unfair_lock_opaque;
  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v8, v10, v11, v12);
  if (os_unfair_lock_opaque)
  {
    return v4->_os_unfair_lock_opaque;
  }

  v15 = HIWORD(this[125]._os_unfair_lock_opaque) - LOWORD(this[126]._os_unfair_lock_opaque);
  if ((v15 & 0xFFFF0000) != 0)
  {
    v16 = this[125]._os_unfair_lock_opaque;
  }

  else
  {
    v16 = 0;
  }

  if (LOWORD(this[125]._os_unfair_lock_opaque) != (v15 + v16 + 1))
  {
    goto LABEL_49;
  }

  if (*&this[14]._os_unfair_lock_opaque)
  {
    if (!a2)
    {
      v17 = airship_ch_interface::consume_tx(this);
      v21 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v18, v19, v20);
      this[124]._os_unfair_lock_opaque = v17;
      v25 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v21, v22, v23, v24);
      v26 = this[124]._os_unfair_lock_opaque;
      ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v25, v27, v28, v29);
      if (v26)
      {
        return v4->_os_unfair_lock_opaque;
      }

      v30 = HIWORD(this[125]._os_unfair_lock_opaque) - LOWORD(this[126]._os_unfair_lock_opaque);
      if ((v30 & 0xFFFF0000) != 0)
      {
        v31 = this[125]._os_unfair_lock_opaque;
      }

      else
      {
        v31 = 0;
      }

      if (LOWORD(this[125]._os_unfair_lock_opaque) == (v30 + v31 + 1))
      {
        return 3758097110;
      }

LABEL_49:
      airship_ch_interface::stage_tx_meta(this);
      return 0;
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x476, "impl_wait_for_write_DROPS_LOCK", v13);
    _os_crash();
    __break(1u);
    goto LABEL_55;
  }

  os_unfair_lock_assert_owner(this);
  if ((this[134]._os_unfair_lock_opaque & 1) == 0)
  {
LABEL_55:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x51D, "wait_for_tx_DROPS_LOCK", v35);
    _os_crash();
    __break(1u);
    goto LABEL_56;
  }

  if (this[38]._os_unfair_lock_opaque)
  {
    v14 = 3758097088;
    v36 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v32, v33, v34);
    v37 = v4->_os_unfair_lock_opaque;
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v36, v38, v39, v40);
    if (v37)
    {
LABEL_18:
      v44 = v4->_os_unfair_lock_opaque;
      goto LABEL_42;
    }

    v45 = HIWORD(this[125]._os_unfair_lock_opaque) - LOWORD(this[126]._os_unfair_lock_opaque);
    if ((v45 & 0xFFFF0000) != 0)
    {
      v46 = this[125]._os_unfair_lock_opaque;
    }

    else
    {
      v46 = 0;
    }

    if (LOWORD(this[125]._os_unfair_lock_opaque) == (v45 + v46 + 1))
    {
      v47 = airship_ch_interface::consume_tx(this);
      v51 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v48, v49, v50);
      this[124]._os_unfair_lock_opaque = v47;
      v55 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v51, v52, v53, v54);
      v56 = this[124]._os_unfair_lock_opaque;
      ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v55, v57, v58, v59);
      if (v56)
      {
        goto LABEL_18;
      }

      v60 = HIWORD(this[125]._os_unfair_lock_opaque) - LOWORD(this[126]._os_unfair_lock_opaque);
      if ((v60 & 0xFFFF0000) != 0)
      {
        v61 = this[125]._os_unfair_lock_opaque;
      }

      else
      {
        v61 = 0;
      }

      if (LOWORD(this[125]._os_unfair_lock_opaque) != (v60 + v61 + 1))
      {
        while (1)
        {
          os_unfair_lock_unlock(this);
          ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[28], v69, v70, v71);
          v72 = ashp::CentauriHelper::runloop_runner::run(this + 28, 0);
          os_unfair_lock_lock(this);
          if (this[4]._os_unfair_lock_opaque)
          {
            break;
          }

          if (LOBYTE(this[46]._os_unfair_lock_opaque) != 1)
          {
            goto LABEL_52;
          }

          ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v41, v42, v43);
          if (v4->_os_unfair_lock_opaque)
          {
            goto LABEL_32;
          }

          if (v72 == -536870186)
          {
            goto LABEL_37;
          }
        }

        v44 = 3758097088;
        goto LABEL_42;
      }

      os_unfair_lock_unlock(this);
      ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[28], v62, v63, v64);
      v65 = ashp::CentauriHelper::runloop_runner::run(this + 28, a2);
      os_unfair_lock_lock(this);
      v44 = 3758097088;
      if (this[4]._os_unfair_lock_opaque)
      {
        goto LABEL_42;
      }

      if (LOBYTE(this[46]._os_unfair_lock_opaque) != 1)
      {
LABEL_52:
        v44 = 3758097101;
        goto LABEL_42;
      }

      v44 = v65;
      if (v65)
      {
LABEL_42:
        if (this[4]._os_unfair_lock_opaque)
        {
          return v14;
        }

        if (LOBYTE(this[46]._os_unfair_lock_opaque) != 1)
        {
          return 3758097101;
        }

        v14 = v44;
        if (v44)
        {
          return v14;
        }

        ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v41, v42, v43);
        v77 = HIWORD(this[125]._os_unfair_lock_opaque) - LOWORD(this[126]._os_unfair_lock_opaque);
        if ((v77 & 0xFFFF0000) != 0)
        {
          v78 = this[125]._os_unfair_lock_opaque;
        }

        else
        {
          v78 = 0;
        }

        if (LOWORD(this[125]._os_unfair_lock_opaque) != (v77 + v78 + 1))
        {
          goto LABEL_49;
        }

        goto LABEL_57;
      }

      ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v41, v42, v43);
      if (v4->_os_unfair_lock_opaque)
      {
LABEL_32:
        ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v66, v67, v68);
        goto LABEL_18;
      }

LABEL_37:
      ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v66, v67, v68);
      v74 = HIWORD(this[125]._os_unfair_lock_opaque) - LOWORD(this[126]._os_unfair_lock_opaque);
      if ((v74 & 0xFFFF0000) != 0)
      {
        v75 = this[125]._os_unfair_lock_opaque;
      }

      else
      {
        v75 = 0;
      }

      if (LOWORD(this[125]._os_unfair_lock_opaque) == (v74 + v75 + 1))
      {
        goto LABEL_58;
      }
    }

    v44 = 0;
    goto LABEL_42;
  }

LABEL_56:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x51E, "wait_for_tx_DROPS_LOCK", v35);
  _os_crash();
  __break(1u);
LABEL_57:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x481, "impl_wait_for_write_DROPS_LOCK", v76);
  _os_crash();
  __break(1u);
LABEL_58:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x53D, "wait_for_tx_DROPS_LOCK", v73);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t airship_ch_interface::impl_prepare_write(const os_unfair_lock *this, void **a2, unsigned int *a3)
{
  os_unfair_lock_assert_owner(this + 3);
  os_unfair_lock_assert_owner(this);
  airship_ch_interface::stage_tx_meta(this);
  os_unfair_lock_opaque_low = LOBYTE(this[137]._os_unfair_lock_opaque);
  if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (!a3)
    {
      return os_unfair_lock_opaque_low;
    }

    v39 = 0;
LABEL_11:
    *a3 = v39;
    return os_unfair_lock_opaque_low;
  }

  ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v6, v7, v8);
  v10 = this + 136;
  os_unfair_lock_opaque_high = HIWORD(this[125]._os_unfair_lock_opaque);
  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(&this[136], v12, v13, v14);
  os_unfair_lock_opaque = this[136]._os_unfair_lock_opaque;
  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value(&this[94], v16, v17, v18);
  if (os_unfair_lock_opaque <= this[97]._os_unfair_lock_opaque)
  {
    ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value(&this[94], v19, v20, v21);
    v23 = this[97]._os_unfair_lock_opaque;
    ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(&this[136], v24, v25, v26);
    v27 = v10->_os_unfair_lock_opaque;
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v28, v29, v30);
    v31 = *&this[132]._os_unfair_lock_opaque;
    ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value(&this[94], v32, v33, v34);
    v35 = this[97]._os_unfair_lock_opaque;
    ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(v10, v36, v37, v38);
    v39 = v23 - v27;
    if (a2)
    {
      *a2 = (v31 + v10->_os_unfair_lock_opaque + v35 * os_unfair_lock_opaque_high);
    }

    if (!a3)
    {
      return os_unfair_lock_opaque_low;
    }

    goto LABEL_11;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x4A1, "impl_prepare_write", v22);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ED26310(_Unwind_Exception *a1)
{
  if (v2)
  {
    *v2 = 0;
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t ashp::deferred_action<airship_ch_interface::write(void const*,unsigned int,unsigned int,unsigned int *)::$_3>::~deferred_action(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    if (!**a1 || (airship_ch_interface::impl_commit_write(*(a1 + 8), 0, 1), (*(a1 + 16) & 1) != 0))
    {
      *(a1 + 16) = 0;
    }
  }

  return a1;
}

void airship_ch_interface::stage_tx_meta(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this);
  if (this[134]._os_unfair_lock_opaque)
  {
    if ((this[137]._os_unfair_lock_opaque & 1) == 0)
    {
      ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(&this[124], v2, v3, v4);
      v6 = HIWORD(this[125]._os_unfair_lock_opaque) - LOWORD(this[126]._os_unfair_lock_opaque);
      if ((v6 & 0xFFFF0000) != 0)
      {
        os_unfair_lock_opaque = this[125]._os_unfair_lock_opaque;
      }

      else
      {
        os_unfair_lock_opaque = 0;
      }

      if (LOWORD(this[125]._os_unfair_lock_opaque) != (v6 + os_unfair_lock_opaque + 1))
      {
        v8 = this[137]._os_unfair_lock_opaque;
        this[136]._os_unfair_lock_opaque = 0;
        if ((v8 & 1) == 0)
        {
          LOBYTE(this[137]._os_unfair_lock_opaque) = 1;
        }
      }
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x4F0, "stage_tx_meta", v5);
    _os_crash();
    __break(1u);
  }
}

void airship_ch_interface_create(ashp::detail::logging *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v4 = "interface.cpp";
      v5 = 1024;
      v6 = 1349;
      v7 = 2082;
      v8 = "airship_ch_interface_create";
      _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    global_logger = airship_platform_get_global_logger();
    ashp_log_helper::log(global_logger, "[%s:%d:%s] ", "interface.cpp", 1349, "airship_ch_interface_create");
  }

  operator new();
}

uint64_t airship_ch_interface_destroy(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v38 = "interface.cpp";
      v39 = 1024;
      v40 = 1356;
      v41 = 2082;
      v42 = "airship_ch_interface_destroy";
      _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    global_logger = airship_platform_get_global_logger();
    ashp_log_helper::log(global_logger, "[%s:%d:%s] ", "interface.cpp", 1356, "airship_ch_interface_destroy");
  }

  if (!a1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", v3);
    _os_crash();
    __break(1u);
  }

  airship_ch_interface::close(a1);
  if (*(a1 + 548) == 1)
  {
    *(a1 + 548) = 0;
  }

  if (*(a1 + 536) == 1)
  {
    *(a1 + 536) = 0;
  }

  if (*(a1 + 484) == 1)
  {
    *(a1 + 484) = 0;
  }

  if (*(a1 + 472) == 1)
  {
    *(a1 + 472) = 0;
  }

  if (*(a1 + 428) == 1)
  {
    *(a1 + 428) = 0;
  }

  ashp::buffer_mapping::~buffer_mapping((a1 + 352), v5, v6, v7);
  ashp::buffer_mapping::~buffer_mapping((a1 + 328), v8, v9, v10);
  if (*(a1 + 320) == 1)
  {
    *(a1 + 320) = 0;
    ashp::CentauriHelper::stop_notifier::~stop_notifier((a1 + 280));
  }

  if (*(a1 + 272) == 1)
  {
    *(a1 + 272) = 0;
    ashp::CentauriHelper::termination_notifier::~termination_notifier((a1 + 232), v11, v12, v13);
  }

  ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper((a1 + 224));
  ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper((a1 + 216));
  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset((a1 + 208), v14, v15, v16);
  ashp::owning_wrapper<unsigned int,0u,ashp::CentauriHelper::io_service_connection_closer>::~owning_wrapper((a1 + 200));
  ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset((a1 + 196), v17, v18, v19);
  if (*(a1 + 192) == 1)
  {
    *(a1 + 192) = 0;
  }

  ashp::unsafe_storage<ashp::CentauriHelper::runloop_runner>::storage::reset(a1 + 112);
  ashp::unsafe_storage<ashp::CentauriHelper::runloop_runner>::storage::reset(a1 + 64);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((a1 + 56), v20, v21, v22);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((a1 + 48), v23, v24, v25);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((a1 + 40), v26, v27, v28);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((a1 + 32), v29, v30, v31);
  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset((a1 + 24), v32, v33, v34);
  result = MEMORY[0x23EF20B10](a1, 0x10A0C401F5BAB27);
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23ED267E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void airship_ch_interface_disconnect(os_unfair_lock_t lock)
{
  v17 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if ((lock[4]._os_unfair_lock_opaque & 1) == 0)
  {
    LOBYTE(lock[4]._os_unfair_lock_opaque) = 1;
    log_level = ashp::detail::logging::get_log_level(lock);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        v12 = "interface.cpp";
        v13 = 1024;
        v14 = 162;
        v15 = 2082;
        v16 = "disconnect";
        _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ", buf, 0x1Cu);
      }
    }

    v3 = ashp::detail::logging::get_log_level(log_level);
    if (v3)
    {
      global_logger = airship_platform_get_global_logger();
      ashp_log_helper::log(global_logger, "[%s:%d:%s] ", "interface.cpp", 162, "disconnect");
    }

    if (*&lock[44]._os_unfair_lock_opaque)
    {
      v5 = ashp::detail::logging::get_log_level(v3);
      if (v5 >= 2)
      {
        v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v5)
        {
          *buf = 136446722;
          v12 = "interface.cpp";
          v13 = 1024;
          v14 = 165;
          v15 = 2082;
          v16 = "disconnect";
          _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] cancelling pending open", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v5))
      {
        v9 = airship_platform_get_global_logger();
        ashp_log_helper::log(v9, "[%s:%d:%s] cancelling pending open", "interface.cpp", 165, "disconnect");
      }

      ashp::CentauriHelper::open_request::cancel(*&lock[44]._os_unfair_lock_opaque, 0xE00002C0, v6, v7, v8);
    }

    airship_ch_interface::disconnect_from_service(lock);
  }

  os_unfair_lock_unlock(lock);
  v10 = *MEMORY[0x277D85DE8];
}

void airship_ch_interface_set_queue(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 184) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0xB0, "set_queue", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "interface.cpp", 0xB0, "set_queue", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED26AF4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void airship_ch_interface_set_close_handler(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 184) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0xB9, "set_close_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "interface.cpp", 0xB9, "set_close_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED26BE4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void airship_ch_interface_set_stop_handler(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 184) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0xC2, "set_stop_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "interface.cpp", 0xC2, "set_stop_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED26CD4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void airship_ch_interface_set_read_handler(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 184) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0xCB, "set_read_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "interface.cpp", 0xCB, "set_read_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 48);
    *(a1 + 48) = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED26DC4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void airship_ch_interface_set_write_handler(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 184) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0xD4, "set_write_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "interface.cpp", 0xD4, "set_write_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 56);
    *(a1 + 56) = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED26EB4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void airship_ch_interface_set_ring_sizes(os_unfair_lock_t lock, int a2, uint32_t a3, const char *a4, uint32_t a5)
{
  v6 = a4;
  v28 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (LOBYTE(lock[46]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0xDC, "set_ring_sizes", a4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "interface.cpp", 0xDC, "set_ring_sizes", v13);
    _os_crash();
    __break(1u);
  }

  log_level = ashp::detail::logging::get_log_level(lock);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447746;
      v15 = "interface.cpp";
      v16 = 1024;
      v17 = 221;
      v18 = 2082;
      v19 = "set_ring_sizes";
      v20 = 1024;
      v21 = a2;
      v22 = 1024;
      v23 = a3;
      v24 = 1024;
      v25 = v6;
      v26 = 1024;
      v27 = a5;
      _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] read: count=%u, size=%u, write count=%u, size=%u", buf, 0x34u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    global_logger = airship_platform_get_global_logger();
    ashp_log_helper::log(global_logger, "[%s:%d:%s] read: count=%u, size=%u, write count=%u, size=%u", "interface.cpp", 221, "set_ring_sizes", a2, a3, v6, a5);
  }

  LOWORD(lock[40]._os_unfair_lock_opaque) = a2;
  lock[41]._os_unfair_lock_opaque = a3;
  LOWORD(lock[42]._os_unfair_lock_opaque) = v6;
  lock[43]._os_unfair_lock_opaque = a5;
  os_unfair_lock_unlock(lock);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t airship_ch_interface_get_ring_sizes(os_unfair_lock_t lock, _WORD *a2, os_unfair_lock_s *a3, char *a4, os_unfair_lock_s *a5)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  v10 = 3758097088;
  if ((lock[4]._os_unfair_lock_opaque & 1) == 0)
  {
    if (lock[46]._os_unfair_lock_opaque)
    {
      ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value(&lock[94], a2, a3, a4);
      if (a2)
      {
        *a2 = lock[94]._os_unfair_lock_opaque;
      }

      ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value(&lock[94], v11, v12, v13);
      if (a3)
      {
        a3->_os_unfair_lock_opaque = lock[95]._os_unfair_lock_opaque;
      }

      ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value(&lock[94], v14, v15, v16);
      if (a4)
      {
        *a4 = HIWORD(lock[96]._os_unfair_lock_opaque);
      }

      ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value(&lock[94], v17, v18, v19);
      v10 = 0;
      if (a5)
      {
        a5->_os_unfair_lock_opaque = lock[97]._os_unfair_lock_opaque;
      }
    }

    else
    {
      ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0xE9, "get_ring_sizes", a4);
      v10 = 3758097101;
    }
  }

  os_unfair_lock_unlock(lock);
  return v10;
}

uint64_t airship_ch_interface_open(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v151 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 16))
  {
    v9 = 3758097088;
    goto LABEL_102;
  }

  if (*(a1 + 184) == 1)
  {
    goto LABEL_104;
  }

  v10 = (a1 + 24);
  if (!*(a1 + 24) && (*(a1 + 32) || *(a1 + 40) || *(a1 + 48) || *(a1 + 56)))
  {
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0xF8, "open", v8);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to open without queue", "interface.cpp", 0xF8, "open", v104);
    _os_crash();
    __break(1u);
LABEL_104:
    v9 = "interface.cpp";
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0xF7, "open", v8);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to open already-open handle", "interface.cpp", 0xF7, "open", v105);
    _os_crash();
    __break(1u);
    goto LABEL_105;
  }

  v3 = &v131;
  log_level = ashp::detail::logging::get_log_level(v7);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447234;
      v140 = "interface.cpp";
      v142 = 250;
      v143 = 2082;
      v141 = 1024;
      v144 = "open";
      v145 = 1024;
      v146 = a2;
      v147 = 1024;
      v148 = a3;
      _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] interface_id=%u, timeout=%u ms", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    global_logger = airship_platform_get_global_logger();
    ashp_log_helper::log(global_logger, "[%s:%d:%s] interface_id=%u, timeout=%u ms", "interface.cpp", 250, "open", a2, a3);
  }

  if (a2 - 64 >= 0xB)
  {
    if (a2 >= 6)
    {
      if (a2 - 32 >= 4)
      {
        ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x11A, "open", v12);
        v9 = 3758097090;
        goto LABEL_102;
      }

      v16 = @"CentauriAlpha";
    }

    else
    {
      v16 = @"CentauriControl";
    }
  }

  else
  {
    v16 = @"CentauriBeta";
  }

  v17 = *(a1 + 160);
  v149[0] = a2;
  v149[1] = v17;
  v18 = *(a1 + 168);
  v149[2] = *(a1 + 164);
  v149[3] = v18;
  v149[4] = *(a1 + 172);
  ashp::CentauriHelper::open_request::open_request(buf, v16, 1, v149, 5, 14, v13, v14, outputCnt);
  *(a1 + 176) = buf;
  os_unfair_lock_unlock(a1);
  ashp::CentauriHelper::open_request::execute(buf, a3, v19, v20, v21);
  os_unfair_lock_lock(a1);
  ashp::CentauriHelper::open_request::consume_result(&v131, buf, v22, v23, v24);
  v9 = v131;
  if (v131)
  {
    goto LABEL_97;
  }

  v9 = 3758097084;
  if (v136 != 14)
  {
    goto LABEL_107;
  }

  if (*ashp::dynamic_array<unsigned long>::operator[](0xEuLL, v137, 0, v27) >= 0x10000uLL)
  {
    v51 = 303;
    goto LABEL_134;
  }

  v29 = *ashp::dynamic_array<unsigned long>::operator[](v136, v137, 0, v27);
  if (*(ashp::dynamic_array<unsigned long>::operator[](v136, v137, 1uLL, v30) + 4))
  {
    v51 = 305;
    goto LABEL_134;
  }

  v31 = *ashp::dynamic_array<unsigned long>::operator[](v136, v137, 1uLL, v27);
  if (*ashp::dynamic_array<unsigned long>::operator[](v136, v137, 2uLL, v32) >= 0x10000uLL)
  {
    v51 = 307;
    goto LABEL_134;
  }

  v115 = *ashp::dynamic_array<unsigned long>::operator[](v136, v137, 2uLL, v27);
  if (*ashp::dynamic_array<unsigned long>::operator[](v136, v137, 3uLL, v33) >= 0x10000uLL)
  {
    v51 = 309;
    goto LABEL_134;
  }

  v121 = *ashp::dynamic_array<unsigned long>::operator[](v136, v137, 3uLL, v27);
  if (*(ashp::dynamic_array<unsigned long>::operator[](v136, v137, 4uLL, v34) + 4))
  {
    v51 = 311;
    goto LABEL_134;
  }

  v35 = *ashp::dynamic_array<unsigned long>::operator[](v136, v137, 4uLL, v27);
  if (*ashp::dynamic_array<unsigned long>::operator[](v136, v137, 5uLL, v36) >= 0x10000uLL)
  {
    v51 = 313;
    goto LABEL_134;
  }

  v114 = *ashp::dynamic_array<unsigned long>::operator[](v136, v137, 5uLL, v27);
  if (*(ashp::dynamic_array<unsigned long>::operator[](v136, v137, 6uLL, v37) + 4))
  {
    v51 = 315;
    goto LABEL_134;
  }

  v38 = *ashp::dynamic_array<unsigned long>::operator[](v136, v137, 6uLL, v27);
  v120 = v35;
  if (*(ashp::dynamic_array<unsigned long>::operator[](v136, v137, 7uLL, v39) + 4))
  {
    v51 = 317;
    goto LABEL_134;
  }

  v40 = *ashp::dynamic_array<unsigned long>::operator[](v136, v137, 7uLL, v27);
  if (*(ashp::dynamic_array<unsigned long>::operator[](v136, v137, 8uLL, v41) + 4))
  {
    v51 = 319;
    goto LABEL_134;
  }

  v113 = *ashp::dynamic_array<unsigned long>::operator[](v136, v137, 8uLL, v27);
  if (*(ashp::dynamic_array<unsigned long>::operator[](v136, v137, 9uLL, v42) + 4))
  {
    v51 = 321;
    goto LABEL_134;
  }

  v112 = *ashp::dynamic_array<unsigned long>::operator[](v136, v137, 9uLL, v27);
  if (*(ashp::dynamic_array<unsigned long>::operator[](v136, v137, 0xAuLL, v43) + 4))
  {
    v51 = 323;
    goto LABEL_134;
  }

  v119 = *ashp::dynamic_array<unsigned long>::operator[](v136, v137, 0xAuLL, v27);
  if (*(ashp::dynamic_array<unsigned long>::operator[](v136, v137, 0xBuLL, v44) + 4))
  {
    v51 = 325;
    goto LABEL_134;
  }

  v117 = *ashp::dynamic_array<unsigned long>::operator[](v136, v137, 0xBuLL, v27);
  if (*(ashp::dynamic_array<unsigned long>::operator[](v136, v137, 0xCuLL, v45) + 4))
  {
    v51 = 327;
    goto LABEL_134;
  }

  v118 = *ashp::dynamic_array<unsigned long>::operator[](v136, v137, 0xCuLL, v27);
  if (*(ashp::dynamic_array<unsigned long>::operator[](v136, v137, 0xDuLL, v46) + 4))
  {
    v51 = 329;
    goto LABEL_134;
  }

  v116 = *ashp::dynamic_array<unsigned long>::operator[](v136, v137, 0xDuLL, v27);
  if (v29)
  {
    if (*(a1 + 160) != v29 && *(a1 + 160))
    {
      v51 = 337;
      goto LABEL_134;
    }

    if (!v31 || (v49 = *(a1 + 164), v49 < v31) && v49)
    {
      v51 = 338;
      goto LABEL_134;
    }

    v50 = v121;
    if (!v115)
    {
      v51 = 339;
      goto LABEL_134;
    }
  }

  else
  {
    if (v31)
    {
LABEL_128:
      v51 = 344;
      goto LABEL_134;
    }

    v50 = v121;
    if (v115)
    {
      v51 = 345;
      goto LABEL_134;
    }
  }

  v122 = v50;
  if (v50)
  {
    if (*(a1 + 168) != v50 && *(a1 + 168))
    {
      v51 = 350;
      goto LABEL_134;
    }

    if (!v120 || (v52 = *(a1 + 172), v52 < v120) && v52)
    {
      v51 = 351;
      goto LABEL_134;
    }

    if (!v114)
    {
      v51 = 352;
      goto LABEL_134;
    }
  }

  else
  {
    if (v120)
    {
      v51 = 357;
      goto LABEL_134;
    }

    if (v114)
    {
      v51 = 358;
      goto LABEL_134;
    }
  }

  if (v113 > 0xFFFFFFF3 || (v40 ? (v53 = v40) : (v53 = v38), v113 + 12 > v53))
  {
LABEL_105:
    v51 = 362;
    goto LABEL_134;
  }

  v51 = 364;
  if (v112 <= 0xFFFFFFF3 && v112 + 12 <= v53)
  {
    v54 = 4 * v29;
    v51 = 367;
    v55 = __CFADD__(v119, v54);
    v56 = v119 + v54;
    if (!v55 && v56 <= v53)
    {
      v57 = v29 * v31;
      v58 = (v57 & 0xFFFFFFFF00000000) != 0;
      v55 = __CFADD__(v118, v57);
      v59 = v118 + v57;
      v60 = v55;
      v51 = 368;
      if (!v58 && !v60 && v59 <= v38)
      {
        v61 = 4 * v121;
        v51 = 371;
        v55 = __CFADD__(v117, v61);
        v62 = v117 + v61;
        if (!v55 && v62 <= v53)
        {
          v63 = v122 * v120;
          v64 = (v63 & 0xFFFFFFFF00000000) != 0;
          v55 = __CFADD__(v116, v63);
          v65 = v116 + v63;
          v66 = v55;
          v51 = 372;
          if (!v64 && !v66 && v65 <= v38)
          {
            ashp::mappable_buffer::create(&v129, v38, v47, v27, v48);
            if (v130)
            {
              ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v129, v67, v68, v69);
              ashp::mappable_buffer::get_addr(&v129, v70, v71, v72);
              v127 = 0;
              v128 = 0x200000000;
              if (!v40)
              {
                goto LABEL_85;
              }

              ashp::mappable_buffer::create(&v150, v40, v74, v75, v76);
              ashp::buffer_mapping::operator=(&v126, &v150, v77, v78);
              ashp::buffer_mapping::~buffer_mapping(&v150, v79, v80, v81);
              if (v127)
              {
                ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v126, v82, v83, v84);
                ashp::mappable_buffer::get_addr(&v126, v85, v86, v87);
LABEL_85:
                v88 = MEMORY[0x277CD2898];
                if (v29 && (v89 = IONotificationPortCreate(*MEMORY[0x277CD2898]), input[0] = 0, v125 = v89, v150 = 0, ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(&v150), ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(input), !v125))
                {
                  ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x187, "open", v75);
                  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "interface.cpp", 0x187, "open", v109);
                  _os_crash();
                  __break(1u);
                }

                else if (!v122 || (v90 = IONotificationPortCreate(*v88), input[0] = 0, v124 = v90, v150 = 0, ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(&v150), ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(input), v124))
                {
                  if (*v10)
                  {
                    ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 24), v73, v74, v75);
                    v91 = dispatch_queue_create_with_target_V2("com.apple.airship.centauri-helper.interface", 0, *v10);
                  }

                  else
                  {
                    v91 = 0;
                  }

                  v123 = v91;
                  ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(&v132, v73, v74, v75);
                  v93 = v132;
                  v94 = v133;
                  if (*(a1 + 320) == 1)
                  {
                    *(a1 + 320) = 0;
                    ashp::CentauriHelper::stop_notifier::~stop_notifier((a1 + 280));
                  }

                  ashp::CentauriHelper::stop_notifier::stop_notifier((a1 + 280), v93, v94, v123, airship_ch_interface::open(airship_ch_interface_id,unsigned int)::$_2::__invoke, a1, v92);
                }

                v9 = "interface.cpp";
                ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x18D, "open", v75);
                ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "interface.cpp", 0x18D, "open", v110);
                _os_crash();
                __break(1u);
                goto LABEL_128;
              }

              ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x17F, "open", v84);
              ashp::buffer_mapping::~buffer_mapping(&v126, v95, v96, v97);
            }

            else
            {
              ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x177, "open", v69);
            }

            ashp::buffer_mapping::~buffer_mapping(&v129, v106, v107, v108);
            goto LABEL_97;
          }
        }
      }
    }
  }

LABEL_134:
  while (1)
  {
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", v51, "open", v27);
LABEL_97:
    v98 = *(v3 + 8);
    if (!*(v3 + 6) || v98)
    {
      break;
    }

    __break(1u);
LABEL_107:
    v51 = 301;
  }

  *(v3 + 6) = 0;
  if (v98)
  {
    free(v98);
    *(v3 + 8) = 0;
  }

  ashp::detail::dynamic_array::storage<unsigned long long>::~storage(v135, v25, v26, v27, v28);
  ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(&v134);
  ashp::owning_wrapper<unsigned int,0u,ashp::CentauriHelper::io_service_connection_closer>::~owning_wrapper(&v133);
  ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(&v132, v99, v100, v101);
  *(a1 + 176) = 0;
  ashp::CentauriHelper::open_request::~open_request(buf);
LABEL_102:
  os_unfair_lock_unlock(a1);
  os_unfair_lock_unlock((a1 + 4));
  v102 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_23ED284F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, IONotificationPort *a35, IONotificationPort *a36, mach_vm_address_t a37, uint64_t a38, uint64_t a39, mach_vm_address_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  ashp::deferred_action<airship_ch_interface::open(airship_ch_interface_id,unsigned int)::$_3>::~deferred_action(&a32);
  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(&a34, v59, v60, v61);
  ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(&a35);
  ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(&a36);
  ashp::buffer_mapping::~buffer_mapping(&a37, v62, v63, v64);
  ashp::buffer_mapping::~buffer_mapping(&a40, v65, v66, v67);
  ashp::CentauriHelper::open_request::result::~result(&a43);
  *(v57 + 176) = 0;
  ashp::CentauriHelper::open_request::~open_request(&a57);
  os_unfair_lock_unlock(v57);
  os_unfair_lock_unlock((v57 + 4));
  _Unwind_Resume(a1);
}

uint64_t airship_ch_interface_read(uint64_t a1, void *a2, int a3, unsigned int a4, _DWORD *a5)
{
  LODWORD(v7) = a3;
  os_unfair_lock_lock((a1 + 8));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  DROPS_LOCK = 3758097088;
  if (*(a1 + 16))
  {
    goto LABEL_15;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x302, "read", v12);
    LODWORD(v7) = 0;
    DROPS_LOCK = 3758097101;
    goto LABEL_28;
  }

  if ((*(a1 + 472) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x303, "read", v12);
    LODWORD(v7) = 0;
    DROPS_LOCK = 3758097090;
    goto LABEL_28;
  }

  if (a4 && *(a1 + 48))
  {
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x306, "read", v12);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted blocking read with handler active", "interface.cpp", 0x306, "read", v32);
    _os_crash();
    __break(1u);
    goto LABEL_34;
  }

  v14 = a1 + 432;
  if (!v7)
  {
    v21 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v14, v10, v11, v12);
    if (*v21)
    {
      v25 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v21, v22, v23, v24);
      v29 = *(a1 + 436);
      if (((*(a1 + 438) - *(a1 + 440)) & 0xFFFF0000) == 0)
      {
        v29 = 0;
      }

      if (v29 == (*(a1 + 440) - *(a1 + 438)))
      {
        LODWORD(v7) = 0;
        DROPS_LOCK = *ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v25, v26, v27, v28);
        goto LABEL_28;
      }
    }

    LODWORD(v7) = 0;
LABEL_27:
    DROPS_LOCK = 0;
    goto LABEL_28;
  }

  v15 = ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v14, v10, v11, v12);
  v19 = *(a1 + 436);
  if (((*(a1 + 438) - *(a1 + 440)) & 0xFFFF0000) == 0)
  {
    v19 = 0;
  }

  if (v19 == (*(a1 + 440) - *(a1 + 438)))
  {
    v20 = *(a1 + 488);
    ashp::optional<ashp::CentauriHelper::stop_notifier,void>::value(v15, v16, v17, v18);
    if (v20 == *(a1 + 436) - 1)
    {
      airship_ch_interface::impl_consume_read(a1, 0, 1);
    }
  }

  DROPS_LOCK = airship_ch_interface::impl_wait_for_read_DROPS_LOCK(a1, a4);
  if (!DROPS_LOCK)
  {
    __src = 0;
    v33 = 0;
    if (airship_ch_interface::impl_peek_read(a1, &__src, &v33))
    {
      if (v33 >= v7)
      {
        v7 = v7;
      }

      else
      {
        v7 = v33;
      }

      memcpy(a2, __src, v7);
      airship_ch_interface::impl_consume_read(a1, v7, 1);
      goto LABEL_27;
    }

LABEL_34:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interface.cpp", 0x323, "read", v30);
    result = _os_crash();
    __break(1u);
    return result;
  }

LABEL_15:
  LODWORD(v7) = 0;
LABEL_28:
  os_unfair_lock_unlock(a1);
  os_unfair_lock_unlock((a1 + 8));
  if (a5)
  {
    *a5 = v7;
  }

  return DROPS_LOCK;
}

void sub_23ED288A0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2);
  os_unfair_lock_unlock(v2 + 2);
  if (v1)
  {
    *v1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t airship_ch_interface_wait_for_read(uint64_t a1, unsigned int a2)
{
  os_unfair_lock_lock((a1 + 8));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  DROPS_LOCK = 3758097088;
  if (*(a1 + 16))
  {
    goto LABEL_9;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    DROPS_LOCK = 3758097101;
    v7 = 819;
LABEL_12:
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", v7, "wait_for_read", v4);
    goto LABEL_9;
  }

  if (*(a1 + 472) != 1)
  {
    DROPS_LOCK = 3758097090;
    v7 = 820;
    goto LABEL_12;
  }

  if (!a2 || !*(a1 + 48))
  {
    DROPS_LOCK = airship_ch_interface::impl_wait_for_read_DROPS_LOCK(a1, a2);
LABEL_9:
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 8));
    return DROPS_LOCK;
  }

  ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x337, "wait_for_read", v4);
  ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted blocking read with handler active", "interface.cpp", 0x337, "wait_for_read", v8);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ED289E0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

uint64_t airship_ch_interface_peek_read(uint64_t a1, const void **a2, unsigned int *a3)
{
  os_unfair_lock_lock((a1 + 8));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    if (*(a1 + 184))
    {
      if (*(a1 + 472))
      {
        v7 = airship_ch_interface::impl_peek_read(a1, a2, a3);
        goto LABEL_8;
      }

      v9 = 871;
    }

    else
    {
      v9 = 870;
    }

    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", v9, "peek_read", v6);
  }

  v7 = 0;
LABEL_8:
  os_unfair_lock_unlock(a1);
  os_unfair_lock_unlock((a1 + 8));
  return v7;
}

void sub_23ED28AAC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

uint64_t airship_ch_interface_consume_read(uint64_t a1, unsigned int a2, char a3)
{
  os_unfair_lock_lock((a1 + 8));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  v9 = 3758097088;
  if (*(a1 + 16))
  {
    goto LABEL_10;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    v9 = 3758097101;
    v12 = 905;
LABEL_13:
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", v12, "consume_read", v8);
    goto LABEL_10;
  }

  if (*(a1 + 472) != 1)
  {
    v9 = 3758097090;
    v12 = 906;
    goto LABEL_13;
  }

  if (!a2)
  {
LABEL_9:
    airship_ch_interface::impl_consume_read(a1, a2, a3);
    v9 = 0;
LABEL_10:
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 8));
    return v9;
  }

  if (*(a1 + 484))
  {
    ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(a1 + 480, v6, v7, v8);
    if (*(a1 + 480) - *(a1 + 492) >= a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x38D, "consume_read", v8);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted consume_read without preceeding peek_read", "interface.cpp", 0x38D, "consume_read", v13);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x38F, "consume_read", v10);
  ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted oversize consume_read", "interface.cpp", 0x38F, "consume_read", v14);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ED28C3C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

uint64_t airship_ch_interface_wait_for_write(uint64_t a1, unsigned int a2)
{
  os_unfair_lock_lock((a1 + 12));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  v5 = 3758097088;
  if (*(a1 + 16))
  {
    goto LABEL_9;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    v5 = 3758097101;
    v7 = 1123;
LABEL_12:
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", v7, "wait_for_write", v4);
    goto LABEL_9;
  }

  if (*(a1 + 536) != 1)
  {
    v5 = 3758097090;
    v7 = 1124;
    goto LABEL_12;
  }

  if (!a2 || !*(a1 + 56))
  {
    v5 = airship_ch_interface::impl_wait_for_write_DROPS_LOCK(a1, a2);
LABEL_9:
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 12));
    return v5;
  }

  ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x467, "wait_for_write", v4);
  ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted blocking write with handler active", "interface.cpp", 0x467, "wait_for_write", v8);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ED28D70(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 3);
  _Unwind_Resume(a1);
}

uint64_t airship_ch_interface_prepare_write(uint64_t a1, void **a2, unsigned int *a3)
{
  os_unfair_lock_lock((a1 + 12));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    if (*(a1 + 184))
    {
      if (*(a1 + 536))
      {
        v7 = airship_ch_interface::impl_prepare_write(a1, a2, a3);
        goto LABEL_8;
      }

      v9 = 1167;
    }

    else
    {
      v9 = 1166;
    }

    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", v9, "prepare_write", v6);
  }

  v7 = 0;
LABEL_8:
  os_unfair_lock_unlock(a1);
  os_unfair_lock_unlock((a1 + 12));
  return v7;
}

void sub_23ED28E3C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 3);
  _Unwind_Resume(a1);
}

uint64_t airship_ch_interface_commit_write(uint64_t a1, unsigned int a2, char a3)
{
  os_unfair_lock_lock((a1 + 12));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  v9 = 3758097088;
  if (*(a1 + 16))
  {
    goto LABEL_10;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    v9 = 3758097101;
    v16 = 1201;
LABEL_13:
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", v16, "commit_write", v8);
    goto LABEL_10;
  }

  if (*(a1 + 536) != 1)
  {
    v9 = 3758097090;
    v16 = 1202;
    goto LABEL_13;
  }

  if (!a2)
  {
LABEL_9:
    airship_ch_interface::impl_commit_write(a1, a2, a3);
    v9 = 0;
LABEL_10:
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 12));
    return v9;
  }

  if (*(a1 + 548))
  {
    ashp::optional<ashp::CentauriHelper::InterfaceUserClient::bufferProperties,void>::value(a1 + 376, v6, v7, v8);
    v10 = *(a1 + 388);
    if (v10 - *ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(a1 + 544, v11, v12, v13) >= a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x4B5, "commit_write", v8);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted commit_write without preceeding prepare_write", "interface.cpp", 0x4B5, "commit_write", v17);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("interface.cpp", 0x4B7, "commit_write", v14);
  ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted oversize commit_write", "interface.cpp", 0x4B7, "commit_write", v18);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ED28FD4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 3);
  _Unwind_Resume(a1);
}

_DWORD *airship_ch_timesync::disconnect_from_service(airship_ch_timesync *this)
{
  os_unfair_lock_assert_owner(this);
  if (*(this + 57) == 1)
  {
    if (*(this + 4))
    {
      ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 10, v2, v3, v4);
      v5 = *(this + 10);
      ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 4, v6, v7, v8);
      dispatch_async(v5, *(this + 4));
    }

    *(this + 57) = 0;
  }

  v9 = *(this + 18);
  if (v9)
  {
    IOServiceClose(v9);
    *(this + 18) = 0;
  }

  return ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(this + 17, v2, v3, v4);
}

os_unfair_lock_t **ashp::deferred_action<airship_ch_timesync::open(airship_ch_timesync_source_id,unsigned int)::$_4>::~deferred_action(os_unfair_lock_t **a1)
{
  if (*(a1 + 16) == 1)
  {
    os_unfair_lock_lock(**a1);
    v2 = *a1;
    *&(**a1)[2]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(*v2);
    v3 = **a1;
    v7 = *ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1[1], v4, v5, v6);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZZN19airship_ch_timesync4openE29airship_ch_timesync_source_idjENK3__4clEv_block_invoke;
    block[3] = &__block_descriptor_tmp_13;
    block[4] = v3;
    dispatch_async(v7, block);
    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }
  }

  return a1;
}

uint64_t ashp::deferred_action<airship_ch_timesync::open(airship_ch_timesync_source_id,unsigned int)::$_1>::~deferred_action(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 8) == 1)
  {
    v5 = ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(*a1, a2, a3, a4);
    dispatch_resume(*v5);
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }
  }

  return a1;
}

void ___ZZN19airship_ch_timesync4openE29airship_ch_timesync_source_idjENK3__4clEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 32))
  {
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF20B10);
}

void airship_ch_timesync::start(unsigned int,unsigned int,IONotificationPort *,airship_ch_timesync::async_context *)::$_0::__invoke(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  v5 = *&lock[2]._os_unfair_lock_opaque;
  if (v5)
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v9, *(v5 + 40), a3, a4);
    os_unfair_lock_unlock(lock);
    if (v9)
    {
      v9[2]();
    }

    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v9, v6, v7, v8);
  }

  else
  {

    os_unfair_lock_unlock(lock);
  }
}

void sub_23ED292B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void airship_ch_timesync::open(airship_ch_timesync_source_id,unsigned int)::$_2::__invoke(os_unfair_lock_s *this)
{
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  airship_ch_timesync::disconnect_from_service(this);
  if (this)
  {

    os_unfair_lock_unlock(this);
  }
}

void sub_23ED29338(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void airship_ch_timesync::close(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 1);
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  if (LOBYTE(this[14]._os_unfair_lock_opaque) == 1)
  {
    LOWORD(this[14]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_opaque = this[18]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque)
    {
      IOConnectCallScalarMethod(os_unfair_lock_opaque, 2u, 0, 0, 0, 0);
    }

    v3 = *&this[22]._os_unfair_lock_opaque;
    if (v3)
    {
      IONotificationPortDestroy(v3);
      *&this[22]._os_unfair_lock_opaque = 0;
    }

    v4 = *&this[24]._os_unfair_lock_opaque;
    *&this[24]._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(v4);
    *(v4 + 8) = 0;
    os_unfair_lock_unlock(v4);
    airship_ch_timesync::disconnect_from_service(this);
    v5 = *&this[6]._os_unfair_lock_opaque;
    ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[20]._os_unfair_lock_opaque, v6, v7, v8);
    v9 = *&this[20]._os_unfair_lock_opaque;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = ___ZN19airship_ch_timesync5closeEv_block_invoke;
    v13[3] = &unk_278C6FA40;
    v13[4] = v5;
    v13[5] = v4;
    dispatch_async(v9, v13);
    if (LOBYTE(this[16]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(this[16]._os_unfair_lock_opaque) = 0;
    }

    if (LOBYTE(this[36]._os_unfair_lock_opaque) == 1)
    {
      os_unfair_lock_unlock(this);
      if (LOBYTE(this[36]._os_unfair_lock_opaque) == 1)
      {
        LOBYTE(this[36]._os_unfair_lock_opaque) = 0;
        ashp::CentauriHelper::termination_notifier::~termination_notifier(&this[26], v10, v11, v12);
      }

      os_unfair_lock_lock(this);
    }

    if (LOBYTE(this[48]._os_unfair_lock_opaque) == 1)
    {
      os_unfair_lock_unlock(this);
      if (LOBYTE(this[48]._os_unfair_lock_opaque) == 1)
      {
        LOBYTE(this[48]._os_unfair_lock_opaque) = 0;
        ashp::CentauriHelper::stop_notifier::~stop_notifier(&this[38]);
      }

      os_unfair_lock_lock(this);
    }
  }

  os_unfair_lock_unlock(this);
  os_unfair_lock_unlock(this + 1);
}

void sub_23ED294E0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void ___ZN19airship_ch_timesync5closeEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }

  if (*(a1 + 40))
  {
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF20B10);
}

void airship_ch_timesync_destroy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1)
  {
    airship_ch_timesync::close(a1);
    if (*(a1 + 192) == 1)
    {
      *(a1 + 192) = 0;
      ashp::CentauriHelper::stop_notifier::~stop_notifier((a1 + 152));
    }

    if (*(a1 + 144) == 1)
    {
      *(a1 + 144) = 0;
      ashp::CentauriHelper::termination_notifier::~termination_notifier((a1 + 104), v6, v7, v8);
    }

    v9 = *(a1 + 96);
    if (v9)
    {
      MEMORY[0x23EF20B10](v9, 0x1020C40D5A9D86FLL);
      *(a1 + 96) = 0;
    }

    ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper((a1 + 88));
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset((a1 + 80), v10, v11, v12);
    ashp::owning_wrapper<unsigned int,0u,ashp::CentauriHelper::io_service_connection_closer>::~owning_wrapper((a1 + 72));
    ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset((a1 + 68), v13, v14, v15);
    if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }

    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((a1 + 40), v16, v17, v18);
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((a1 + 32), v19, v20, v21);
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((a1 + 24), v22, v23, v24);
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset((a1 + 16), v25, v26, v27);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF20B10);
}

void airship_ch_timesync_disconnect(os_unfair_lock_s *this)
{
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  if ((this[2]._os_unfair_lock_opaque & 1) == 0)
  {
    LOBYTE(this[2]._os_unfair_lock_opaque) = 1;
    airship_ch_timesync::disconnect_from_service(this);
  }

  os_unfair_lock_unlock(this);
}

void airship_ch_timesync_set_queue(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 56) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("timesync.cpp", 0x58, "set_queue", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "timesync.cpp", 0x58, "set_queue", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v6;
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED29854(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void airship_ch_timesync_set_close_handler(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 56) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("timesync.cpp", 0x61, "set_close_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "timesync.cpp", 0x61, "set_close_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED29944(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void airship_ch_timesync_set_stop_handler(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 56) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("timesync.cpp", 0x6A, "set_stop_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "timesync.cpp", 0x6A, "set_stop_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED29A34(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void airship_ch_timesync_set_event_handler(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 56) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("timesync.cpp", 0x73, "set_event_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "timesync.cpp", 0x73, "set_event_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED29B24(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t airship_ch_timesync_open(uint64_t a1, int a2, unsigned int a3)
{
  v51[10] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 8))
  {
    v9 = 3758097088;
    goto LABEL_17;
  }

  if (*(a1 + 56) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("timesync.cpp", 0x7D, "open", v6);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to open already-open handle", "timesync.cpp", 0x7D, "open", v38);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  if (!*(a1 + 16))
  {
LABEL_19:
    ashp::detail::control_flow::log_guard_else_failure("timesync.cpp", 0x7E, "open", v6);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to open without queue", "timesync.cpp", 0x7E, "open", v39);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  if (a2)
  {
LABEL_20:
    ashp::detail::control_flow::log_guard_else_failure("timesync.cpp", 0x87, "open", v6);
    v9 = 3758097090;
    goto LABEL_17;
  }

  v51[0] = 0;
  ashp::CentauriHelper::open_request::open_request(v50, @"CentauriBeta", 3, v51, 1, 0, v7, v8, outputCnt);
  *(a1 + 48) = v50;
  os_unfair_lock_unlock(a1);
  ashp::CentauriHelper::open_request::execute(v50, a3, v10, v11, v12);
  os_unfair_lock_lock(a1);
  ashp::CentauriHelper::open_request::consume_result(&v43, v50, v13, v14, v15);
  v9 = v43;
  if (!v43)
  {
    ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 16), v16, v17, v18);
    object = dispatch_queue_create_with_target_V2("com.apple.airship.centauri-helper.timesync", 0, *(a1 + 16));
    ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&object, v20, v21, v22);
    dispatch_suspend(object);
    ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(&v44, v23, v24, v25);
    v26 = v44;
    v27 = v45;
    ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&object, v28, v29, v30);
    v32 = object;
    if (*(a1 + 192) == 1)
    {
      *(a1 + 192) = 0;
      ashp::CentauriHelper::stop_notifier::~stop_notifier((a1 + 152));
    }

    ashp::CentauriHelper::stop_notifier::stop_notifier((a1 + 152), v26, v27, v32, airship_ch_timesync::open(airship_ch_timesync_source_id,unsigned int)::$_2::__invoke, a1, v31);
  }

  if (v48 && !v49)
  {
    __break(1u);
    ashp::detail::control_flow::log_guard_else_failure("timesync.cpp", 0xB6, "open", v18);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "timesync.cpp", 0xB6, "open", v40);
    _os_crash();
    __break(1u);
  }

  v48 = 0;
  if (v49)
  {
    free(v49);
    v49 = 0;
  }

  ashp::detail::dynamic_array::storage<unsigned long long>::~storage(v47, v16, v17, v18, v19);
  ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(&v46);
  ashp::owning_wrapper<unsigned int,0u,ashp::CentauriHelper::io_service_connection_closer>::~owning_wrapper(&v45);
  ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(&v44, v33, v34, v35);
  *(a1 + 48) = 0;
  ashp::CentauriHelper::open_request::~open_request(v50);
LABEL_17:
  os_unfair_lock_unlock(a1);
  os_unfair_lock_unlock((a1 + 4));
  v36 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_23ED2A1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, os_unfair_lock_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, IONotificationPort *a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  ashp::deferred_action<airship_ch_timesync::open(airship_ch_timesync_source_id,unsigned int)::$_4>::~deferred_action(&a11);
  ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(&a15);
  ashp::deferred_action<airship_ch_timesync::open(airship_ch_timesync_source_id,unsigned int)::$_1>::~deferred_action(&a16, v30, v31, v32);
  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(&a18, v33, v34, v35);
  ashp::CentauriHelper::open_request::result::~result(&a19);
  *(v28 + 48) = 0;
  ashp::CentauriHelper::open_request::~open_request(&a28);
  os_unfair_lock_unlock(v28);
  os_unfair_lock_unlock((v28 + 4));
  _Unwind_Resume(a1);
}

void ashp::detail::base::log_pre_crash_message(ashp::detail::base *this, const char *a2, const char *a3, uint64_t a4, const char *a5)
{
  v6 = a3;
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446978;
    v11 = a2;
    v12 = 1024;
    v13 = v6;
    v14 = 2082;
    v15 = a4;
    v16 = 2082;
    v17 = this;
    _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] %{public}s", &v10, 0x26u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void ashp_log_helper::log(os_unfair_lock_t lock, const char *a2, ...)
{
  va_start(va, a2);
  v19 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  *&v17[0] = mach_continuous_time();
  if (vsnprintf(v17 + 8, 0x80uLL, a2, va) < 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "logging.cpp", 0x2C, "log", v4);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  os_unfair_lock_lock(lock + 2);
  if (!lock[3]._os_unfair_lock_opaque)
  {
    goto LABEL_10;
  }

  os_unfair_lock_opaque = lock[4]._os_unfair_lock_opaque;
  if (*&lock[8]._os_unfair_lock_opaque <= os_unfair_lock_opaque)
  {
LABEL_12:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", v5);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v16);
    _os_crash();
    __break(1u);
  }

  v7 = *&lock[12]._os_unfair_lock_opaque + 136 * os_unfair_lock_opaque;
  v8 = v17[7];
  *(v7 + 96) = v17[6];
  *(v7 + 112) = v8;
  *(v7 + 128) = v18;
  v9 = v17[3];
  *(v7 + 32) = v17[2];
  *(v7 + 48) = v9;
  v10 = v17[5];
  *(v7 + 64) = v17[4];
  *(v7 + 80) = v10;
  v11 = v17[1];
  *v7 = v17[0];
  *(v7 + 16) = v11;
  LODWORD(v7) = lock[4];
  v12 = __CFADD__(v7, 1);
  v13 = v7 + 1;
  if (v12)
  {
    v14 = lock[3]._os_unfair_lock_opaque;
  }

  else
  {
    v14 = 0;
  }

  lock[4]._os_unfair_lock_opaque = (v13 - v14) % lock[3]._os_unfair_lock_opaque;
LABEL_10:
  os_unfair_lock_unlock(lock + 2);
  os_unfair_lock_unlock(lock);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_23ED2A528(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ashp::detail::logging::get_log_level(ashp::detail::logging *this)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN4ashp6detail7logging13get_log_levelEv_block_invoke;
  block[3] = &__block_descriptor_tmp_100;
  if (ashp::detail::logging::get_log_level(void)::once != -1)
  {
    dispatch_once(&ashp::detail::logging::get_log_level(void)::once, block);
  }

  return airship_log_level;
}

uint64_t ___ZN4ashp6detail7logging13get_log_levelEv_block_invoke()
{
  result = os_parse_boot_arg_int();
  if (result)
  {
    v1 = 0;
  }

  else
  {
    v1 = 3;
  }

  airship_log_level = v1;
  return result;
}

BOOL ashp::detail::control_flow::check_err_with_debug(ashp::detail::control_flow *this, uint64_t a2, const char *a3, uint64_t a4, const char *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v9 = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446978;
      v12 = a2;
      v13 = 1024;
      v14 = v9;
      v15 = 2082;
      v16 = a4;
      v17 = 2048;
      v18 = this;
      _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%u:%{public}s] unexpected nonzero error code 0x%llx", &v11, 0x26u);
    }
  }

  result = this == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void ashp::detail::control_flow::log_guard_else_failure(ashp::detail::control_flow *this, const char *a2, uint64_t a3, const char *a4)
{
  v5 = a2;
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446722;
    v9 = this;
    v10 = 1024;
    v11 = v5;
    v12 = 2082;
    v13 = a3;
    _os_log_impl(&dword_23ED20000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] unexpected GUARD_ELSE failure", &v8, 0x1Cu);
  }

  v7 = *MEMORY[0x277D85DE8];
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

_DWORD *airship_ch_memregion::disconnect_from_service(airship_ch_memregion *this)
{
  os_unfair_lock_assert_owner(this);
  if (*(this + 49) == 1)
  {
    if (*(this + 4))
    {
      if (!*(this + 11))
      {
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion.cpp", 0xCC, "disconnect_from_service", v5);
        result = _os_crash();
        __break(1u);
        return result;
      }

      v6 = *ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 11, v2, v3, v4);
      ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 4, v7, v8, v9);
      dispatch_async(v6, *(this + 4));
    }

    *(this + 49) = 0;
  }

  v10 = *(this + 21);
  if (v10)
  {
    IOServiceClose(v10);
    *(this + 21) = 0;
  }

  return ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(this + 20, v2, v3, v4);
}

uint64_t ashp::deferred_action<airship_ch_memregion::open(airship_ch_memregion_id,airship_ch_memregion_buffer *,unsigned int,unsigned int,unsigned int)::$_2>::~deferred_action(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    os_unfair_lock_unlock(*a1);
    if (LOBYTE(v2[46]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v2[46]._os_unfair_lock_opaque) = 0;
      ashp::CentauriHelper::stop_notifier::~stop_notifier(&v2[36]);
    }

    os_unfair_lock_lock(v2);
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }
  }

  return a1;
}

void airship_ch_memregion::open(airship_ch_memregion_id,airship_ch_memregion_buffer *,unsigned int,unsigned int,unsigned int)::$_1::__invoke(os_unfair_lock_s *this)
{
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  airship_ch_memregion::disconnect_from_service(this);
  if (this)
  {

    os_unfair_lock_unlock(this);
  }
}

void sub_23ED2A9D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void airship_ch_memregion::close(airship_ch_memregion *this)
{
  os_unfair_lock_lock(this + 1);
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  if (*(this + 48) == 1)
  {
    *(this + 24) = 0;
    v2 = *(this + 21);
    if (v2)
    {
      IOConnectCallScalarMethod(v2, 2u, 0, 0, 0, 0);
    }

    airship_ch_memregion::disconnect_from_service(this);
    if (*(this + 3))
    {
      if (!*(this + 11))
      {
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion.cpp", 0xE6, "close", v6);
        _os_crash();
        __break(1u);
        return;
      }

      v7 = *ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 11, v3, v4, v5);
      ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 3, v8, v9, v10);
      dispatch_async(v7, *(this + 3));
    }

    if (*(this + 76) == 1)
    {
      *(this + 76) = 0;
      if (*(this + 72) == 1)
      {
        *(this + 72) = 0;
      }

      if (*(this + 64) == 1)
      {
        *(this + 64) = 0;
      }
    }

    if (*(this + 136) == 1)
    {
      os_unfair_lock_unlock(this);
      if (*(this + 136) == 1)
      {
        *(this + 136) = 0;
        ashp::CentauriHelper::termination_notifier::~termination_notifier((this + 96), v11, v12, v13);
      }

      os_unfair_lock_lock(this);
    }

    if (*(this + 184) == 1)
    {
      os_unfair_lock_unlock(this);
      if (*(this + 184) == 1)
      {
        *(this + 184) = 0;
        ashp::CentauriHelper::stop_notifier::~stop_notifier((this + 144));
      }

      os_unfair_lock_lock(this);
    }
  }

  os_unfair_lock_unlock(this);

  os_unfair_lock_unlock(this + 1);
}

void sub_23ED2AB74(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void airship_ch_memregion_destroy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1)
  {
    airship_ch_memregion::close(a1);
    if (*(a1 + 184) == 1)
    {
      *(a1 + 184) = 0;
      ashp::CentauriHelper::stop_notifier::~stop_notifier((a1 + 144));
    }

    if (*(a1 + 136) == 1)
    {
      *(a1 + 136) = 0;
      ashp::CentauriHelper::termination_notifier::~termination_notifier((a1 + 96), v6, v7, v8);
    }

    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset((a1 + 88), v6, v7, v8);
    ashp::owning_wrapper<unsigned int,0u,ashp::CentauriHelper::io_service_connection_closer>::~owning_wrapper((a1 + 84));
    ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset((a1 + 80), v9, v10, v11);
    if (*(a1 + 76) == 1)
    {
      *(a1 + 76) = 0;
      if (*(a1 + 72) == 1)
      {
        *(a1 + 72) = 0;
      }

      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }

    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((a1 + 32), v12, v13, v14);
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((a1 + 24), v15, v16, v17);
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset((a1 + 16), v18, v19, v20);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF20B10);
}

void airship_ch_memregion_disconnect(os_unfair_lock_s *this)
{
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  if ((this[2]._os_unfair_lock_opaque & 1) == 0)
  {
    LOBYTE(this[2]._os_unfair_lock_opaque) = 1;
    airship_ch_memregion::disconnect_from_service(this);
  }

  os_unfair_lock_unlock(this);
}

void airship_ch_memregion_set_queue(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 48) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("memregion.cpp", 0x53, "set_queue", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "memregion.cpp", 0x53, "set_queue", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 16);
    *(a1 + 16) = v11;
    v11 = v6;
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED2AE3C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void airship_ch_memregion_set_close_handler(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 48) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("memregion.cpp", 0x5C, "set_close_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "memregion.cpp", 0x5C, "set_close_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED2AF2C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void airship_ch_memregion_set_stop_handler(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if (*(a1 + 48) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("memregion.cpp", 0x65, "set_stop_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure open handle", "memregion.cpp", 0x65, "set_stop_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(a1);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void sub_23ED2B01C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t airship_ch_memregion_open(uint64_t a1, int a2, unsigned int *a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v52[5] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  v15 = 3758097088;
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*(a1 + 48) == 1)
    {
      ashp::detail::control_flow::log_guard_else_failure("memregion.cpp", 0x6F, "open", v14);
      ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to open already-open handle", "memregion.cpp", 0x6F, "open", v40);
      _os_crash();
      __break(1u);
    }

    else
    {
      v16 = (a1 + 16);
      if (!*(a1 + 16) && (*(a1 + 24) || *(a1 + 32)))
      {
        ashp::detail::control_flow::log_guard_else_failure("memregion.cpp", 0x70, "open", v14);
        ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to open without queue", "memregion.cpp", 0x70, "open", v41);
        _os_crash();
        goto LABEL_25;
      }

      if (!a2)
      {
        v52[0] = 0;
        addr = ashp::mappable_buffer::get_addr(a3, v12, v13, v14);
        v18 = a3[4];
        v52[1] = addr;
        v52[2] = v18;
        v52[3] = a4;
        v52[4] = a5;
        ashp::CentauriHelper::open_request::open_request(v51, @"CentauriAlpha", 2, v52, 5, 0, v19, v20, v42);
        *(a1 + 40) = v51;
        os_unfair_lock_unlock(a1);
        ashp::CentauriHelper::open_request::execute(v51, a6, v21, v22, v23);
        os_unfair_lock_lock(a1);
        ashp::CentauriHelper::open_request::consume_result(&v44, v51, v24, v25, v26);
        v15 = v44;
        if (!v44)
        {
          if (*v16)
          {
            ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 16), v27, v28, v29);
            v31 = dispatch_queue_create_with_target_V2("com.apple.airship.centauri-helper.memregion", 0, *v16);
          }

          else
          {
            v31 = 0;
          }

          v43 = v31;
          ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(&v45, v27, v28, v29);
          v33 = v45;
          v34 = v46;
          if (*(a1 + 184) == 1)
          {
            *(a1 + 184) = 0;
            ashp::CentauriHelper::stop_notifier::~stop_notifier((a1 + 144));
          }

          ashp::CentauriHelper::stop_notifier::stop_notifier((a1 + 144), v33, v34, v43, airship_ch_memregion::open(airship_ch_memregion_id,airship_ch_memregion_buffer *,unsigned int,unsigned int,unsigned int)::$_1::__invoke, a1, v32);
        }

        if (!v49 || v50)
        {
          v49 = 0;
          if (v50)
          {
            free(v50);
            v50 = 0;
          }

          ashp::detail::dynamic_array::storage<unsigned long long>::~storage(v48, v27, v28, v29, v30);
          ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(&v47);
          ashp::owning_wrapper<unsigned int,0u,ashp::CentauriHelper::io_service_connection_closer>::~owning_wrapper(&v46);
          ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(&v45, v35, v36, v37);
          *(a1 + 40) = 0;
          ashp::CentauriHelper::open_request::~open_request(v51);
          goto LABEL_21;
        }

LABEL_25:
        __break(1u);
      }
    }

    ashp::detail::control_flow::log_guard_else_failure("memregion.cpp", 0x79, "open", v14);
    v15 = 3758097090;
  }

LABEL_21:
  os_unfair_lock_unlock(a1);
  os_unfair_lock_unlock((a1 + 4));
  v38 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_23ED2B4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v13 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  v21 = va_arg(va3, void);
  v22 = va_arg(va3, void);
  ashp::deferred_action<airship_ch_memregion::open(airship_ch_memregion_id,airship_ch_memregion_buffer *,unsigned int,unsigned int,unsigned int)::$_2>::~deferred_action(va);
  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(va1, v5, v6, v7);
  ashp::CentauriHelper::open_request::result::~result(va2);
  *(v3 + 40) = 0;
  ashp::CentauriHelper::open_request::~open_request(va3);
  os_unfair_lock_unlock(v3);
  os_unfair_lock_unlock((v3 + 4));
  _Unwind_Resume(a1);
}

uint64_t airship_ch_memregion_buffer_create(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::mappable_buffer::create(&v10, a1, a3, a4, a5);
  if (v11)
  {
    operator new();
  }

  ashp::detail::control_flow::log_guard_else_failure("memregion.cpp", 0x12E, "airship_ch_memregion_buffer_create", v5);
  ashp::buffer_mapping::~buffer_mapping(&v10, v6, v7, v8);
  return 0;
}

void sub_23ED2B634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::buffer_mapping::~buffer_mapping(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void airship_ch_memregion_buffer_destroy(mach_vm_address_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    ashp::buffer_mapping::~buffer_mapping(a1, a2, a3, a4);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF20B10);
}

void ashp::mappable_buffer::create(const char *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (!a2)
  {
    v44 = 125;
    goto LABEL_22;
  }

  v6 = *MEMORY[0x277D85FA0];
  if (HIDWORD(*MEMORY[0x277D85FA0]))
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "mappable_buffer.cpp", 0x5D, "get_page_size", a5);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  if (!v6)
  {
LABEL_20:
    a1 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "mappable_buffer.cpp", 0x67, "round_up_to_page_size", a5);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  if (__CFADD__(a2, v6 - 1))
  {
LABEL_21:
    ashp::detail::control_flow::log_guard_else_failure("mappable_buffer.cpp", 0x68, "round_up_to_page_size", a4);
    v44 = 127;
LABEL_22:
    ashp::detail::control_flow::log_guard_else_failure("mappable_buffer.cpp", v44, "create", a4);
    if (a1)
    {
      *(a1 + 8) = 0;
      *(a1 + 2) = 0x200000000;
      return;
    }

    goto LABEL_24;
  }

  v57 = (a2 + v6 - 1) / v6 * v6;
  v58 = 1;
  address = 0;
  v7 = MEMORY[0x277D85F48];
  v8 = *MEMORY[0x277D85F48];
  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(&v57, a2, a3, a4);
  v9 = mach_vm_allocate(v8, &address, v57, 1);
  if (!ashp::detail::control_flow::check_err_with_debug(v9, "mappable_buffer.cpp", 0x92, "create", v10))
  {
    if (a1)
    {
      *(a1 + 8) = 0;
      *(a1 + 2) = 0x200000000;
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  v54[0] = &address;
  v54[1] = &v57;
  v55 = 1;
  v14 = address;
  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(&v57, v11, v12, v13);
  bzero(v14, v57);
  LODWORD(v14) = *v7;
  v15 = address;
  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(&v57, v16, v17, v18);
  v19 = mach_vm_protect(v14, v15, v57, 0, 3);
  if (!ashp::detail::control_flow::check_err_with_debug(v19, "mappable_buffer.cpp", 0x95, "create", v20) || (v24 = *v7, v25 = address, ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(&v57, v21, v22, v23), v26 = mach_vm_inherit(v24, v25, v57, 2u), !ashp::detail::control_flow::check_err_with_debug(v26, "mappable_buffer.cpp", 0x96, "create", v27)))
  {
    if (a1)
    {
      *(a1 + 8) = 0;
      *(a1 + 2) = 0x200000000;
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    return;
  }

  v55 = !v55;
  v28 = address;
  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(&v57, v21, v22, v23);
  v51 = v28;
  v46 = 0;
  v31 = v57 | 0x200000000;
  v53 = 0x200000000;
  v45 = v28;
  v52 = 0;
  v47 = 0x200000000;
  v48 = v28;
  v49 = 1;
  if (!a1)
  {
    goto LABEL_24;
  }

  *(a1 + 8) = 0;
  *(a1 + 2) = 0x200000000;
  v61 = v31;
  v50 = 0x200000000;
  v59 = v28;
  v60 = 1;
  v49 = 0;
  ashp::buffer_mapping::operator=(a1, &v59, v29, v30);
  ashp::buffer_mapping::~buffer_mapping(&v59, v32, v33, v34);
  ashp::buffer_mapping::~buffer_mapping(&v48, v35, v36, v37);
  ashp::buffer_mapping::~buffer_mapping(&v45, v38, v39, v40);
  ashp::buffer_mapping::~buffer_mapping(&v51, v41, v42, v43);
LABEL_14:
  ashp::deferred_action<ashp::mappable_buffer::create(unsigned int,ashp::memory_direction)::$_0>::~deferred_action(v54, v21, v22, v23);
LABEL_15:
  if (v58)
  {
    v58 = 0;
  }
}

void sub_23ED2B9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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
    v7 = ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(*(a1 + 8), a2, a3, a4);
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

uint64_t ashp::mappable_buffer::get_addr(ashp::mappable_buffer *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(this + 8))
  {
    return *this;
  }

  ashp::detail::control_flow::log_guard_else_failure("mappable_buffer.cpp", 0xBD, "get_addr", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: access to null buffer", "mappable_buffer.cpp", 0xBD, "get_addr", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

ashp::CentauriHelper::runloop_runner *ashp::CentauriHelper::runloop_runner::runloop_runner(ashp::CentauriHelper::runloop_runner *this)
{
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  v3 = (this + 16);
  *this = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  memset(&context, 0, sizeof(context));
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &context);
  v6 = *v2;
  *v2 = v5;
  v15 = v6;
  ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset(&v15);
  if (*v2)
  {
    Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
    v9 = *v3;
    *v3 = Mutable;
    v14 = v9;
    ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset(&v14);
    if (*v3)
    {
      return this;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("common.cpp", 0x27, "runloop_runner", v7);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "common.cpp", 0x27, "runloop_runner", v12);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("common.cpp", 0x29, "runloop_runner", v10);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "common.cpp", 0x29, "runloop_runner", v13);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ED2BD70(_Unwind_Exception *a1)
{
  ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset(v2);
  ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset(v1);
  _Unwind_Resume(a1);
}

uint64_t ashp::CentauriHelper::runloop_runner::run(os_unfair_lock_t lock, unsigned int a2)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  Current = CFRunLoopGetCurrent();
  v9 = Current;
  v44 = Current;
  if (!Current)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x32, "run", v8);
    _os_crash();
    __break(1u);
LABEL_22:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x33, "run", v8);
    _os_crash();
    __break(1u);
LABEL_23:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x5C, "run", v32);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (*&lock[6]._os_unfair_lock_opaque)
  {
    goto LABEL_22;
  }

  *&lock[6]._os_unfair_lock_opaque = Current;
  LOBYTE(lock[8]._os_unfair_lock_opaque) = 0;
  ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[2]._os_unfair_lock_opaque, v5, v6, v7);
  CFRunLoopAddSource(v9, *&lock[2]._os_unfair_lock_opaque, @"com.apple.airship.centauri-helper");
  v42[0] = &v44;
  v42[1] = lock;
  v43 = 1;
  ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, v10, v11, v12);
  v13 = *&lock[4]._os_unfair_lock_opaque;
  ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, v14, v15, v16);
  v45.length = CFArrayGetCount(*&lock[4]._os_unfair_lock_opaque);
  v45.location = 0;
  CFArrayApplyFunction(v13, v45, ashp::CentauriHelper::runloop_runner::run::$_3::__invoke, v44);
  v40[0] = lock;
  v40[1] = &v44;
  v41 = 1;
  v39 = 0;
  if (a2 != -1)
  {
    v17 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v18 = 1000000 * a2;
    v19 = __CFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      v20 = -1;
    }

    v38 = v20;
    v39 = 1;
  }

  while (1)
  {
    os_unfair_lock_unlock(lock);
    if (v39 == 1)
    {
      ashp::optional<unsigned long long,void>::value(&v38, v21, v22, v23);
      v24 = v38;
      v25 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      v26 = v24 - v25;
      if (v24 < v25)
      {
        v26 = 0;
      }

      v27 = v26 / 1000000000.0;
    }

    else
    {
      v27 = INFINITY;
    }

    v28 = CFRunLoopRunInMode(@"com.apple.airship.centauri-helper", v27, 1u);
    os_unfair_lock_lock(lock);
    if (v28 == kCFRunLoopRunTimedOut)
    {
      break;
    }

    if ((v28 - 1) < 2)
    {
      goto LABEL_23;
    }

    if (LOBYTE(lock[8]._os_unfair_lock_opaque) == 1)
    {
      v33 = 0;
      goto LABEL_20;
    }
  }

  v33 = 3758097110;
LABEL_20:
  ashp::deferred_action<ashp::CentauriHelper::runloop_runner::run::$_2>::~deferred_action(v40, v29, v30, v31);
  ashp::deferred_action<ashp::CentauriHelper::runloop_runner::run::$_1>::~deferred_action(v42, v34, v35, v36);
  *&lock[6]._os_unfair_lock_opaque = 0;
  os_unfair_lock_unlock(lock);
  return v33;
}

void sub_23ED2BFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  ashp::deferred_action<ashp::CentauriHelper::runloop_runner::run::$_2>::~deferred_action(va, a2, a3, a4);
  ashp::deferred_action<ashp::CentauriHelper::runloop_runner::run::$_1>::~deferred_action(va1, v9, v10, v11);
  *(v7 + 24) = 0;
  os_unfair_lock_unlock(v7);
  _Unwind_Resume(a1);
}

uint64_t *ashp::deferred_action<ashp::CentauriHelper::runloop_runner::run(unsigned int)::$_2>::~deferred_action(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 16) == 1)
  {
    v5 = *a1;
    ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((*a1 + 16), a2, a3, a4);
    v6 = *(v5 + 16);
    ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 16), v7, v8, v9);
    v11.length = CFArrayGetCount(*(v5 + 16));
    v11.location = 0;
    CFArrayApplyFunction(v6, v11, ashp::CentauriHelper::runloop_runner::run::$_2::operator() const(void)::{lambda(void const*,void *)#1}::__invoke, *a1[1]);
    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }
  }

  return a1;
}

uint64_t ashp::deferred_action<ashp::CentauriHelper::runloop_runner::run(unsigned int)::$_1>::~deferred_action(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 16) == 1)
  {
    v5 = *(a1 + 8);
    v6 = **a1;
    ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 8), a2, a3, a4);
    CFRunLoopRemoveSource(v6, *(v5 + 8), @"com.apple.airship.centauri-helper");
    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }
  }

  return a1;
}

void ashp::CentauriHelper::runloop_runner::stop(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (*&lock[6]._os_unfair_lock_opaque)
  {
    LOBYTE(lock[8]._os_unfair_lock_opaque) = 1;
    ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[2]._os_unfair_lock_opaque, a2, a3, a4);
    CFRunLoopSourceSignal(*&lock[2]._os_unfair_lock_opaque);
    CFRunLoopWakeUp(*&lock[6]._os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(lock);
}

void ashp::CentauriHelper::runloop_runner::add_source(os_unfair_lock_t lock, __CFRunLoopSource *a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, a2, a3, a4);
  CFArrayAppendValue(*&lock[4]._os_unfair_lock_opaque, a2);
  v6 = *&lock[6]._os_unfair_lock_opaque;
  if (v6)
  {
    CFRunLoopAddSource(v6, a2, @"com.apple.airship.centauri-helper");
    CFRunLoopWakeUp(*&lock[6]._os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(lock);
}

void ashp::CentauriHelper::runloop_runner::remove_source(os_unfair_lock_t lock, __CFRunLoopSource *a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, a2, a3, a4);
  v6 = *&lock[4]._os_unfair_lock_opaque;
  ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, v7, v8, v9);
  v16.length = CFArrayGetCount(*&lock[4]._os_unfair_lock_opaque);
  v16.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v16, a2);
  if (FirstIndexOfValue != -1)
  {
    ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, v10, v11, v12);
    CFArrayRemoveValueAtIndex(*&lock[4]._os_unfair_lock_opaque, FirstIndexOfValue);
    v14 = *&lock[6]._os_unfair_lock_opaque;
    if (v14)
    {
      CFRunLoopRemoveSource(v14, a2, @"com.apple.airship.centauri-helper");
    }
  }

  os_unfair_lock_unlock(lock);
}

uint64_t *ashp::refcounted_ptr<__CFString const*,ashp::cf::refcount_policy>::refcounted_ptr(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  if (a2)
  {
    ashp::optional<__CFString const*,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    CFRetain(*a1);
  }

  return a1;
}

uint64_t ashp::dynamic_array<unsigned long long>::dynamic_array<int,0>(unint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = a2;
  a1[2] = 0;
  if (!a2)
  {
    return a1;
  }

  v3 = a2;
  v4 = malloc_type_aligned_alloc(8uLL, 8 * a2, 0x100004000313F17uLL);
  a1[2] = v4;
  if (v4)
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = v7 >= *a1;
    v10 = v7 - *a1;
    if (!v9)
    {
      v10 = 0;
    }

    v11 = &v4[8 * v8];
    v12 = v8 + 1;
    while (v10)
    {
      *v11 = 0;
      v11 += 8;
      *a1 = v12++;
      --v10;
      if (!--v3)
      {
        return a1;
      }
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v6);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v5);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v14);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::unsafe_storage<ashp::CentauriHelper::service_matcher>::storage::reset(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 32) == 1)
  {
    *(a1 + 32) = 0;
    ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset((a1 + 24), a2, a3, a4);
    ashp::refcounted_ptr<__CFString const*,ashp::cf::refcount_policy>::reset(a1, v5, v6, v7);
  }
}

ashp::CentauriHelper::open_request *ashp::CentauriHelper::open_request::open_request(ashp::CentauriHelper::open_request *this, const __CFString *a2, int a3, uint64_t a4, unint64_t *a5, int a6, unsigned int a7, unsigned int a8, unsigned int a9)
{
  v10 = a5;
  *(this + 8) = 0;
  *this = 0;
  ashp::CentauriHelper::runloop_runner::runloop_runner((this + 16));
  ashp::refcounted_ptr<__CFString const*,ashp::cf::refcount_policy>::refcounted_ptr(this + 7, a2, v15, v16);
  *(this + 16) = a3;
  *(this + 17) = 0;
  ashp::dynamic_array<unsigned long long>::dynamic_array<int,0>(this + 9, v10);
  v18 = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 25) = a6;
  *(this + 26) = 1;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 168) = 0;
  *(this + 44) = 0;
  *(this + 180) = 0;
  *(this + 46) = 0;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 208) = 0;
  *(this + 216) = 0u;
  *(this + 34) = 0;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0;
  v19 = *(this + 9);
  while (v19 != v18)
  {
    *(*(this + 11) + 8 * v18) = *(a4 + 8 * v18);
    if (v10 == ++v18)
    {
      return this;
    }
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", v17);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v21);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ED2C6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::refcounted_ptr<__CFString const*,ashp::cf::refcount_policy>::reset((v4 + 56), a2, a3, a4);
  ashp::CentauriHelper::runloop_runner::~runloop_runner((v4 + 16));
  _Unwind_Resume(a1);
}

void ashp::CentauriHelper::open_request::execute(os_unfair_lock_s *this, unsigned int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  if (this[1]._os_unfair_lock_opaque)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0xBC, "execute", a5);
    _os_crash();
    __break(1u);
LABEL_12:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0xC7, "execute", v10);
    _os_crash();
    __break(1u);
    return;
  }

  ashp::CentauriHelper::open_request::state_machine(this);
  if (this[1]._os_unfair_lock_opaque != 8)
  {
    os_unfair_lock_unlock(this);
    if (ashp::CentauriHelper::runloop_runner::run(this + 4, a2) == -536870186)
    {
      ashp::CentauriHelper::open_request::cancel(this, 0xE00002D6, v7, v8, v9);
    }

    os_unfair_lock_lock(this);
    if (this[1]._os_unfair_lock_opaque != 8)
    {
      goto LABEL_12;
    }
  }

  os_unfair_lock_unlock(this);
}

void ashp::CentauriHelper::open_request::state_machine(ashp::CentauriHelper::open_request *this)
{
  v176 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  v6 = *(this + 1);
  if (v6 == 8)
  {
    goto LABEL_142;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = *MEMORY[0x277CD2898];
  while (1)
  {
    v9 = 0;
    if (v6 > 3)
    {
      break;
    }

    if (v6 <= 1)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          if (*(this + 16))
          {
            goto LABEL_125;
          }

          v17 = IONotificationPortCreate(v8);
          theDict[0] = 0;
          v18 = *(this + 16);
          *(this + 16) = v17;
          context.version = v18;
          ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(&context);
          ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(theDict);
          v20 = *(this + 16);
          if (!v20)
          {
            goto LABEL_129;
          }

          RunLoopSource = IONotificationPortGetRunLoopSource(v20);
          ashp::CentauriHelper::runloop_runner::add_source(this + 4, RunLoopSource, v22, v23);
          if (*(this + 168) == 1)
          {
            goto LABEL_131;
          }

          ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 7, v24, v25, v26);
          v28 = *(this + 7);
          v29 = *(this + 16);
          ashp::unsafe_storage<ashp::CentauriHelper::service_matcher>::storage::reset(this + 136, v30, v31, v32);
          ashp::refcounted_ptr<__CFString const*,ashp::cf::refcount_policy>::refcounted_ptr(this + 17, v28, v33, v34);
          *(this + 18) = ashp::CentauriHelper::open_request::exec_set_up_matcher(void)::$_0::__invoke;
          *(this + 19) = this;
          *(this + 40) = 0;
          context.version = IOServiceMatching("IOUserService");
          if (!context.version)
          {
            goto LABEL_133;
          }

          theDict[0] = CFDictionaryCreateMutable(v7, 6, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!theDict[0])
          {
            goto LABEL_134;
          }

          ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(theDict, v36, v37, v38);
          CFDictionarySetValue(theDict[0], @"IOUserClass", @"AirshipDriverDK");
          ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(theDict, v39, v40, v41);
          CFDictionarySetValue(theDict[0], @"Vendor", @"Centauri");
          ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(theDict, v42, v43, v44);
          v45 = theDict[0];
          ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 17, v46, v47, v48);
          CFDictionarySetValue(v45, @"Role", *(this + 17));
          ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&context, v49, v50, v51);
          version = context.version;
          ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(theDict, v53, v54, v55);
          CFDictionarySetValue(version, @"IOPropertyMatch", theDict[0]);
          notification[0] = 0;
          ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&context, v56, v57, v58);
          CFRetain(context.version);
          ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&context, v59, v60, v61);
          v62 = IOServiceAddMatchingNotification(v29, "IOServiceFirstMatch", context.version, ashp::CentauriHelper::service_matcher::service_matcher(__CFString const*,IONotificationPort *,void (*)(void *),void *)::$_0::__invoke, this + 136, notification);
          if (!ashp::detail::control_flow::check_err_with_debug(v62, "common.cpp", 0x9D, "service_matcher", v63))
          {
            goto LABEL_135;
          }

          if (!notification[0])
          {
            goto LABEL_136;
          }

          v68 = *(this + 40);
          *(this + 40) = notification[0];
          connect = v68;
          ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(&connect, v64, v65, v66);
          ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset(theDict);
          ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset(&context);
          *(this + 168) = 1;
          v9 = 2;
        }
      }

      else
      {
        v9 = 1;
      }

      goto LABEL_116;
    }

    if (v6 == 2)
    {
      if (*(this + 44))
      {
        goto LABEL_126;
      }

      if (*(this + 46))
      {
        goto LABEL_128;
      }

      if (*(this + 24))
      {
        goto LABEL_130;
      }

      if (*(this + 50))
      {
        goto LABEL_132;
      }

      if (*(this + 120) == 1)
      {
LABEL_51:
        v88 = *(this + 112);
        *(this + 27) = *(this + 29);
        if ((v88 & 1) == 0)
        {
          *(this + 112) = 1;
        }

        v9 = 8;
      }

      else
      {
        if ((*(this + 168) & 1) == 0)
        {
          goto LABEL_137;
        }

        ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(this + 40, v2, v3, v4);
        v89 = IOIteratorNext(*(this + 40));
        LODWORD(context.version) = v89;
        if (v89)
        {
          ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::refcounted_ptr(theDict, v89, v91, v92);
          v93 = *(this + 44);
          *(this + 44) = theDict[0];
          LODWORD(theDict[0]) = v93;
          ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(theDict, v94, v95, v96);
          v9 = 3;
        }

        else
        {
          v9 = 9;
        }

        ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(&context, v90, v91, v92);
      }

LABEL_94:
      if (v9 == 9)
      {
LABEL_117:
        v151 = *MEMORY[0x277D85DE8];
        return;
      }

      goto LABEL_116;
    }

    connect = 0;
    ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(this + 44, v2, v3, v4);
    if (IOServiceOpen(*(this + 44), *MEMORY[0x277D85F48], *(this + 16), &connect))
    {
      ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(this + 44, v71, v72, v73);
      v75 = *(this + 44);
      context.version = 0;
      v9 = 6;
      if (!IOServiceGetState() && (context.version & 1) == 0)
      {
        v76 = *(this + 112);
        goto LABEL_75;
      }
    }

    else
    {
      if (!connect)
      {
        goto LABEL_138;
      }

      v169 = connect;
      v97 = IONotificationPortCreate(v8);
      *notification = v97;
      if (!v97)
      {
        goto LABEL_139;
      }

      v99 = IONotificationPortGetRunLoopSource(v97);
      ashp::CentauriHelper::runloop_runner::add_source(this + 4, v99, v100, v101);
      context.version = this;
      context.info = notification;
      LOBYTE(context.retain) = 1;
      v168 = 0;
      v102 = *notification;
      ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(this + 44, v103, v104, v105);
      v110 = IOServiceAddInterestNotification(v102, *(this + 44), "IOGeneralInterest", ashp::CentauriHelper::open_request::exec_open_service(void)::$_1::__invoke, this, &v168);
      if (!v110 || (ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(this + 44, v106, v107, v108), v111 = *(this + 44), theDict[0] = 0, v9 = 6, !IOServiceGetState()) && (theDict[0] & 1) == 0)
      {
        if (ashp::detail::control_flow::check_err_with_debug(v110, "common.cpp", 0x163, "exec_open_service", v109))
        {
          v113 = v168;
          if (!v168)
          {
            goto LABEL_141;
          }

          if (LOBYTE(context.retain) == 1)
          {
            LOBYTE(context.retain) = 0;
          }

          v114 = v169;
          v169 = 0;
          v115 = *(this + 46);
          *(this + 46) = v114;
          LODWORD(theDict[0]) = v115;
          ashp::owning_wrapper<unsigned int,0u,ashp::CentauriHelper::io_service_connection_closer>::~owning_wrapper(theDict);
          v116 = *notification;
          *notification = 0;
          v117 = *(this + 24);
          *(this + 24) = v116;
          theDict[0] = v117;
          ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(theDict);
          LODWORD(theDict[0]) = 0;
          v118 = *(this + 50);
          *(this + 50) = v113;
          v167 = v118;
          ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(&v167, v119, v120, v121);
          ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(theDict, v122, v123, v124);
          v9 = 4;
        }

        else
        {
          v150 = *(this + 112);
          *(this + 27) = -536870212;
          if ((v150 & 1) == 0)
          {
            *(this + 112) = 1;
          }

          v9 = 8;
        }
      }

      ashp::deferred_action<ashp::CentauriHelper::open_request::exec_open_service(void)::$_0>::~deferred_action(&context);
      ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(notification);
      ashp::owning_wrapper<unsigned int,0u,ashp::CentauriHelper::io_service_connection_closer>::~owning_wrapper(&v169);
    }

LABEL_116:
    *(this + 1) = v9;
    v6 = v9;
  }

  if (v6 < 6)
  {
    if (v6 != 4)
    {
      if (*(this + 120) == 1)
      {
        IOConnectCallScalarMethod(*(this + 46), *(this + 26), 0, 0, 0, 0);
        v69 = *(this + 120);
        v70 = *(this + 29);
        if (*(this + 112) == 1)
        {
          if (*(this + 120))
          {
            *(this + 27) = v70;
          }

          else
          {
            *(this + 112) = 0;
          }

          goto LABEL_108;
        }

        if (*(this + 120))
        {
          *(this + 27) = v70;
          goto LABEL_77;
        }
      }

      else
      {
        if (*(this + 180))
        {
          v9 = 6;
          goto LABEL_116;
        }

        if (*(this + 208) != 1)
        {
          goto LABEL_117;
        }

        v125 = *(this + 51);
        v76 = *(this + 112);
        if (!v125)
        {
          *(this + 27) = 0;
          if (v76)
          {
            goto LABEL_108;
          }

          goto LABEL_77;
        }

        if (v125 == -536870167)
        {
          v126 = -536870167;
        }

        else
        {
LABEL_75:
          v126 = -536870212;
        }

        *(this + 27) = v126;
        if ((v76 & 1) == 0)
        {
LABEL_77:
          *(this + 112) = 1;
        }
      }

LABEL_108:
      v9 = 8;
      goto LABEL_116;
    }

    v86 = *(this + 25);
    v87 = ashp::CentauriHelper::open_request::exec_invoke_driver_open(void)::$_1::__invoke;
    if (v86)
    {
      if (v86 == 2)
      {
        v87 = ashp::CentauriHelper::open_request::exec_invoke_driver_open(void)::$_3::__invoke;
      }

      else if (v86 == 1)
      {
        v87 = ashp::CentauriHelper::open_request::exec_invoke_driver_open(void)::$_2::__invoke;
      }

      else
      {
        v87 = ashp::CentauriHelper::open_request::exec_invoke_driver_open(void)::$_0::__invoke;
      }
    }

    if (v87 == -1)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x19C, "exec_invoke_driver_open", v5);
      _os_crash();
      __break(1u);
LABEL_125:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x121, "exec_set_up_matcher", v5);
      _os_crash();
      __break(1u);
LABEL_126:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x135, "exec_await_service", v5);
      _os_crash();
      __break(1u);
LABEL_127:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x1A1, "exec_invoke_driver_open", v5);
      _os_crash();
      __break(1u);
LABEL_128:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x136, "exec_await_service", v5);
      _os_crash();
      __break(1u);
LABEL_129:
      ashp::detail::control_flow::log_guard_else_failure("common.cpp", 0x123, "exec_set_up_matcher", v19);
      ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "common.cpp", 0x123, "exec_set_up_matcher", v161);
      _os_crash();
      __break(1u);
LABEL_130:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x137, "exec_await_service", v5);
      _os_crash();
      __break(1u);
LABEL_131:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x126, "exec_set_up_matcher", v27);
      _os_crash();
      __break(1u);
LABEL_132:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x138, "exec_await_service", v5);
      _os_crash();
      __break(1u);
LABEL_133:
      ashp::detail::control_flow::log_guard_else_failure("common.cpp", 0x8D, "service_matcher", v35);
      ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "common.cpp", 0x8D, "service_matcher", v162);
      _os_crash();
      __break(1u);
LABEL_134:
      ashp::detail::control_flow::log_guard_else_failure("common.cpp", 0x90, "service_matcher", v38);
      ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "common.cpp", 0x90, "service_matcher", v163);
      _os_crash();
      __break(1u);
LABEL_135:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x9D, "service_matcher", v67);
      _os_crash();
      __break(1u);
LABEL_136:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x9E, "service_matcher", v67);
      _os_crash();
      __break(1u);
LABEL_137:
      ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", v4);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v164);
      _os_crash();
      __break(1u);
LABEL_138:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x14D, "exec_open_service", v74);
      _os_crash();
      __break(1u);
LABEL_139:
      ashp::detail::control_flow::log_guard_else_failure("common.cpp", 0x151, "exec_open_service", v98);
      ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "common.cpp", 0x151, "exec_open_service", v165);
      _os_crash();
      __break(1u);
LABEL_140:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x1BF, "exec_invoke_driver_open", v133);
      _os_crash();
      __break(1u);
LABEL_141:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x164, "exec_open_service", v112);
      _os_crash();
      __break(1u);
LABEL_142:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0xF4, "state_machine", v5);
      _os_crash();
      __break(1u);
LABEL_143:
      ashp::detail::control_flow::log_guard_else_failure("common.cpp", 0x210, "exec_await_retry_flush", v14);
      ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "common.cpp", 0x210, "exec_await_retry_flush", v166);
      _os_crash();
      __break(1u);
LABEL_144:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x21D, "exec_done", v5);
      _os_crash();
      __break(1u);
LABEL_145:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x117, "state_machine", v5);
      _os_crash();
      __break(1u);
    }

    context.version = 0;
    memset(&context.release, 0, 40);
    context.info = v87;
    context.retain = this;
    if (*(this + 19))
    {
      goto LABEL_127;
    }

    connect = *(this + 24);
    ashp::dynamic_array<unsigned long long>::dynamic_array<int,0>(notification, connect);
    v127 = *(this + 46);
    v128 = *(this + 17);
    MachPort = IONotificationPortGetMachPort(*(this + 24));
    v134 = IOConnectCallAsyncScalarMethod(v127, v128, MachPort, &context, 3u, *(this + 11), *(this + 18), output, &connect);
    if (!v134)
    {
      if (*notification < connect)
      {
        goto LABEL_140;
      }

      ashp::detail::dynamic_array::storage<unsigned long long>::reduce_size(notification, connect, v131, v132, v133);
      v142 = output;
      v143 = *notification;
      memset(notification, 0, sizeof(notification));
      output = 0;
      v144 = *(this + 216);
      *(this + 216) = v143;
      *theDict = v144;
      v145 = *(this + 29);
      *(this + 29) = v142;
      v174 = v145;
      ashp::detail::dynamic_array::storage<unsigned long long>::~storage(theDict, v146, v147, v148, v149);
      v9 = 5;
      goto LABEL_115;
    }

    ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(this + 44, v130, v131, v132);
    v135 = *(this + 44);
    theDict[0] = 0;
    v9 = 6;
    if (IOServiceGetState() || (theDict[0] & 1) != 0)
    {
LABEL_115:
      ashp::detail::dynamic_array::storage<unsigned long long>::~storage(notification, v136, v137, v138, v139);
      goto LABEL_116;
    }

    v140 = *(this + 112);
    if (v134 > -536870179)
    {
      if (v134 == -536870178)
      {
        v141 = -536870178;
        goto LABEL_112;
      }

      if (v134 == -536870167)
      {
        v141 = -536870167;
        goto LABEL_112;
      }
    }

    else
    {
      if (v134 == -536870207)
      {
        v141 = -536870207;
        goto LABEL_112;
      }

      if (v134 == -536870206)
      {
        v141 = -536870206;
LABEL_112:
        *(this + 27) = v141;
        if ((v140 & 1) == 0)
        {
          *(this + 112) = 1;
        }

        v9 = 8;
        goto LABEL_115;
      }
    }

    v141 = -536870212;
    goto LABEL_112;
  }

  if (v6 <= 6)
  {
    ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(this + 50, v2, v3, v4);
    v80 = *(this + 24);
    if (v80)
    {
      v81 = IONotificationPortGetRunLoopSource(v80);
      ashp::CentauriHelper::runloop_runner::remove_source(this + 4, v81, v82, v83);
      v84 = *(this + 24);
      if (v84)
      {
        IONotificationPortDestroy(v84);
        *(this + 24) = 0;
      }

      *(this + 264) = 1;
    }

    v85 = *(this + 46);
    if (v85)
    {
      IOServiceClose(v85);
      *(this + 46) = 0;
    }

    ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(this + 44, v77, v78, v79);
    *(this + 180) = 0;
    v9 = 7;
    goto LABEL_116;
  }

  if (v6 == 7)
  {
    if (*(this + 120) == 1)
    {
      goto LABEL_51;
    }

    if (*(this + 264) == 1)
    {
      if (!*(this + 34))
      {
        context.version = 0;
        memset(&context.retain, 0, 56);
        context.info = this;
        context.perform = ashp::CentauriHelper::open_request::exec_await_retry_flush(void)::$_0::__invoke;
        v10 = CFRunLoopSourceCreate(v7, 0, &context);
        v11 = *(this + 34);
        *(this + 34) = v10;
        theDict[0] = v11;
        ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset(theDict);
        if (!*(this + 34))
        {
          goto LABEL_143;
        }

        ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 34, v12, v13, v14);
        ashp::CentauriHelper::runloop_runner::add_source(this + 4, *(this + 34), v15, v16);
      }

      ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 34, v2, v3, v4);
      CFRunLoopSourceSignal(*(this + 34));
      v9 = 9;
    }

    else
    {
      v9 = 2;
    }

    goto LABEL_94;
  }

  if (v6 != 8)
  {
    if (v6 == 9)
    {
      goto LABEL_145;
    }

    goto LABEL_116;
  }

  if ((*(this + 112) & 1) == 0)
  {
    goto LABEL_144;
  }

  if (*(this + 34))
  {
    ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 34, v2, v3, v4);
    ashp::CentauriHelper::runloop_runner::remove_source(this + 4, *(this + 34), v152, v153);
    ashp::refcounted_ptr<__CFRunLoopSource *,ashp::cf::refcount_policy>::reset(this + 34);
  }

  v154 = IONotificationPortGetRunLoopSource(*(this + 16));
  ashp::CentauriHelper::runloop_runner::remove_source(this + 4, v154, v155, v156);
  v160 = *MEMORY[0x277D85DE8];

  ashp::CentauriHelper::runloop_runner::stop(this + 4, v157, v158, v159);
}

void sub_23ED2D718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ashp::CentauriHelper::open_request::cancel(os_unfair_lock_s *this, uint32_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  if (LOBYTE(this[2]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0xE5, "cancel", a5);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  if (this[30]._os_unfair_lock_opaque)
  {
    goto LABEL_15;
  }

  this[29]._os_unfair_lock_opaque = a2;
  LOBYTE(this[30]._os_unfair_lock_opaque) = 1;
  if (this[1]._os_unfair_lock_opaque == 8)
  {
    v7 = this + 28;
    v8 = this + 27;
    if ((this[28]._os_unfair_lock_opaque & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  ashp::CentauriHelper::open_request::state_machine(this);
  if (this[1]._os_unfair_lock_opaque != 8)
  {
LABEL_19:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0xEB, "cancel", v9);
    _os_crash();
    __break(1u);
    return;
  }

  v7 = this + 28;
  os_unfair_lock_opaque = this[30]._os_unfair_lock_opaque;
  a2 = this[29]._os_unfair_lock_opaque;
  v8 = this + 27;
  if (this[28]._os_unfair_lock_opaque)
  {
    if ((this[30]._os_unfair_lock_opaque & 1) == 0)
    {
      LOBYTE(v7->_os_unfair_lock_opaque) = 0;
      goto LABEL_15;
    }

LABEL_11:
    v8->_os_unfair_lock_opaque = a2;
    goto LABEL_15;
  }

  if (this[30]._os_unfair_lock_opaque)
  {
LABEL_13:
    v8->_os_unfair_lock_opaque = a2;
    LOBYTE(v7->_os_unfair_lock_opaque) = 1;
  }

LABEL_15:

  os_unfair_lock_unlock(this);
}

void ashp::CentauriHelper::open_request::exec_await_retry_flush(void)::$_0::__invoke(os_unfair_lock_s *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  os_unfair_lock_opaque = this[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque != 8)
  {
    if (os_unfair_lock_opaque != 7)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x206, "operator()", a5);
      _os_crash();
      __break(1u);
      return;
    }

    LOBYTE(this[66]._os_unfair_lock_opaque) = 0;
    ashp::CentauriHelper::open_request::state_machine(this);
  }

  os_unfair_lock_unlock(this);
}

void ashp::CentauriHelper::open_request::exec_invoke_driver_open(void)::$_0::__invoke(os_unfair_lock_t lock, uint32_t a2, uint64_t a3, unsigned int a4, const char *a5)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  os_unfair_lock_opaque = lock[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque - 7 < 2)
  {
    goto LABEL_21;
  }

  if (os_unfair_lock_opaque != 5)
  {
LABEL_25:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0x176, "operator()", a5);
    _os_crash();
    __break(1u);
    goto LABEL_26;
  }

  v10 = a4;
  *&v11 = 0;
  *(&v11 + 1) = a4;
  if (!a4)
  {
    v15 = 0;
    goto LABEL_14;
  }

  v25 = v11;
  v12 = malloc_type_aligned_alloc(8uLL, 8 * a4, 0x100004000313F17uLL);
  v15 = v12;
  if (!v12)
  {
LABEL_26:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v13);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v24);
    _os_crash();
LABEL_27:
    __break(1u);
    return;
  }

  v16 = v10;
  v17 = v25;
  do
  {
    if (v17 >= *(&v25 + 1))
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v14);
      _os_crash();
      __break(1u);
      goto LABEL_25;
    }

    v12[v17] = 0;
    v18 = v17 + 1;
    *&v17 = v17 + 1;
    --v16;
  }

  while (v16);
  v26 = v17;
  v19 = 0;
  do
  {
    v20 = *(a3 + 8 * v19);
    *ashp::dynamic_array<unsigned long>::operator[](v18, v15, v19++, v13) = v20;
  }

  while (v10 != v19);
  v11 = v26;
LABEL_14:
  v21 = lock[52]._os_unfair_lock_opaque;
  lock[51]._os_unfair_lock_opaque = a2;
  if ((v21 & 1) == 0)
  {
    LOBYTE(lock[52]._os_unfair_lock_opaque) = 1;
  }

  v22 = *&lock[60]._os_unfair_lock_opaque;
  *&lock[60]._os_unfair_lock_opaque = v11;
  v23 = *&lock[64]._os_unfair_lock_opaque;
  *&lock[64]._os_unfair_lock_opaque = v15;
  if (v22 && !v23)
  {
    goto LABEL_27;
  }

  if (v23)
  {
    free(v23);
  }

  ashp::CentauriHelper::open_request::state_machine(lock);
LABEL_21:

  os_unfair_lock_unlock(lock);
}

void ashp::CentauriHelper::open_request::exec_invoke_driver_open(void)::$_3::__invoke(os_unfair_lock_s *a1, uint32_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a3;
  v6[1] = a4;
  ashp::CentauriHelper::open_request::exec_invoke_driver_open(void)::$_0::__invoke(a1, a2, v6, 2u, a5);
  v5 = *MEMORY[0x277D85DE8];
}

void ashp::CentauriHelper::open_request::exec_invoke_driver_open(void)::$_2::__invoke(os_unfair_lock_s *a1, uint32_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = a3;
  ashp::CentauriHelper::open_request::exec_invoke_driver_open(void)::$_0::__invoke(a1, a2, v6, 1u, a5);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::deferred_action<ashp::CentauriHelper::open_request::exec_open_service(void)::$_0>::~deferred_action(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *a1;
    RunLoopSource = IONotificationPortGetRunLoopSource(**(a1 + 8));
    ashp::CentauriHelper::runloop_runner::remove_source(v2 + 4, RunLoopSource, v4, v5);
    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }
  }

  return a1;
}

void ashp::CentauriHelper::open_request::exec_open_service(void)::$_1::__invoke(os_unfair_lock_s *this, uint64_t a2, int a3)
{
  if (a3 == -536870896)
  {
    if (this)
    {
      os_unfair_lock_lock(this);
    }

    if (this[1]._os_unfair_lock_opaque != 8)
    {
      LOBYTE(this[45]._os_unfair_lock_opaque) = 1;
      ashp::CentauriHelper::open_request::state_machine(this);
    }

    os_unfair_lock_unlock(this);
  }
}

io_object_t *ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::refcounted_ptr(io_object_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  if (a2)
  {
    ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(a1, a2, a3, a4);
    IOObjectRetain(*a1);
  }

  return a1;
}

void ashp::CentauriHelper::open_request::exec_set_up_matcher(void)::$_0::__invoke(os_unfair_lock_s *this)
{
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  if (this[1]._os_unfair_lock_opaque == 2)
  {
    ashp::CentauriHelper::open_request::state_machine(this);
  }

  os_unfair_lock_unlock(this);
}

void ashp::CentauriHelper::open_request::consume_result(ashp::CentauriHelper::open_request *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (a2)
  {
    os_unfair_lock_lock(a2);
  }

  if (*(a2 + 4) != 8)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0xCF, "consume_result", a5);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (*(a2 + 8) == 1)
  {
LABEL_9:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "common.cpp", 0xD0, "consume_result", a5);
    _os_crash();
    __break(1u);
    return;
  }

  *(a2 + 8) = 1;
  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(a2 + 108, a2, a3, a4);
  v7 = *(a2 + 108);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = v7;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  ashp::optional<ashp::CentauriHelper::InterfaceUserClient::rxMetadata,void>::value(a2 + 108, v8, v9, v10);
  if (!*(a2 + 108))
  {
    v14 = *(a2 + 176);
    *(a2 + 176) = 0;
    *(this + 1) = v14;
    v25 = 0;
    ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(&v25, v11, v12, v13);
    v15 = *(a2 + 184);
    *(a2 + 184) = 0;
    *(this + 2) = v15;
    LODWORD(v26) = 0;
    ashp::owning_wrapper<unsigned int,0u,ashp::CentauriHelper::io_service_connection_closer>::~owning_wrapper(&v26);
    v16 = *(a2 + 192);
    *(a2 + 192) = 0;
    *(this + 2) = v16;
    *&v26 = 0;
    ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(&v26);
    v17 = *(a2 + 232);
    *(a2 + 232) = 0;
    v18 = *(a2 + 216);
    *(a2 + 216) = 0u;
    *(this + 24) = v18;
    v26 = 0u;
    *(this + 5) = v17;
    v27 = 0;
    ashp::detail::dynamic_array::storage<unsigned long long>::~storage(&v26, v19, v20, v21, v22);
    v23 = *(a2 + 256);
    *(a2 + 256) = 0;
    v24 = *(a2 + 240);
    *(a2 + 240) = 0u;
    *(this + 3) = v24;
    *(this + 8) = v23;
  }

  os_unfair_lock_unlock(a2);
}

void sub_23ED2E008(_Unwind_Exception *a1)
{
  v4 = v2;
  v5 = a1;
  ashp::CentauriHelper::open_request::result::~result(v4);
  os_unfair_lock_unlock(v1);
  _Unwind_Resume(v5);
}

void ___ZN4ashp14CentauriHelper20termination_notifier11shared_port3getEv_block_invoke()
{
  fallback_queue = airship_platform_get_fallback_queue();
  v1 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  ashp::CentauriHelper::termination_notifier::shared_port::instance = fallback_queue;
  qword_27E384AF8 = v1;

  IONotificationPortSetDispatchQueue(v1, fallback_queue);
}

void ashp::CentauriHelper::termination_notifier::message_handler(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4, void *a5)
{
  if (a3 == -536870896)
  {
    if (lock)
    {
      os_unfair_lock_lock(lock);
    }

    if ((lock[1]._os_unfair_lock_opaque & 1) == 0)
    {
      v7 = *&lock[2]._os_unfair_lock_opaque;
      v6 = *&lock[4]._os_unfair_lock_opaque;
      ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(&lock[6]._os_unfair_lock_opaque, a2, a3, a4);
      v7(v6, lock[6]._os_unfair_lock_opaque);
    }

    os_unfair_lock_unlock(lock);
  }
}

void ashp::CentauriHelper::termination_notifier::termination_notifier(ashp::CentauriHelper::termination_notifier *this, unsigned int a2, dispatch_queue_s *a3, void (*a4)(void *, unsigned int), void *a5)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  operator new();
}

void sub_23ED2E3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(v6, a2, a3, a4);
  ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(v5);
  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(v4, v8, v9, v10);
  _Unwind_Resume(a1);
}

void ___ZN4ashp14CentauriHelper20termination_notifier6cancelEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset((v5 + 24), a2, a3, a4);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF20B10);
}

void ashp::CentauriHelper::termination_notifier::~termination_notifier(ashp::CentauriHelper::termination_notifier *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*this & 1) == 0)
  {
    *this = 1;
    ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(this + 8, a2, a3, a4);
    v5 = *(this + 1);
    *(this + 1) = 0;
    os_unfair_lock_lock(v5);
    *(v5 + 4) = 1;
    os_unfair_lock_unlock(v5);
    if (*(this + 2))
    {
      v9 = ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 2, v6, v7, v8);
    }

    else
    {
      if (ashp::CentauriHelper::termination_notifier::shared_port::get(void)::once != -1)
      {
        dispatch_once(&ashp::CentauriHelper::termination_notifier::shared_port::get(void)::once, &__block_literal_global);
      }

      v9 = &ashp::CentauriHelper::termination_notifier::shared_port::instance;
    }

    v10 = *v9;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN4ashp14CentauriHelper20termination_notifier6cancelEv_block_invoke;
    block[3] = &__block_descriptor_tmp_26;
    block[4] = v5;
    dispatch_async(v10, block);
  }

  ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset(this + 8, a2, a3, a4);
  ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(this + 3);
  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(this + 2, v11, v12, v13);
}

void ashp::CentauriHelper::stop_notifier::completion_handler(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if ((lock[1]._os_unfair_lock_opaque & 1) == 0)
  {
    v6 = *&lock[2]._os_unfair_lock_opaque;
    v5 = *&lock[4]._os_unfair_lock_opaque;
    ashp::optional<unsigned int,ashp::optional_sentinel<0u,true>>::value(&lock[6]._os_unfair_lock_opaque, a2, a3, a4);
    v6(v5, lock[6]._os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(lock);
}

void ashp::CentauriHelper::stop_notifier::stop_notifier(ashp::CentauriHelper::stop_notifier *this, unsigned int a2, unsigned int a3, unsigned int a4, dispatch_queue_s *a5, void (*a6)(void *, unsigned int), void *a7)
{
  v7 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  operator new();
}

void sub_23ED2E880(_Unwind_Exception *a1)
{
  ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(v2);
  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(v1, v4, v5, v6);
  _Unwind_Resume(a1);
}

void ___ZN4ashp14CentauriHelper13stop_notifier6cancelEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    ashp::refcounted_ptr<unsigned int,ashp::io::refcount_policy>::reset((v5 + 24), a2, a3, a4);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF20B10);
}

void ashp::CentauriHelper::stop_notifier::~stop_notifier(ashp::CentauriHelper::stop_notifier *this)
{
  if ((*this & 1) == 0)
  {
    *this = 1;
    v2 = *(this + 3);
    if (v2)
    {
      IONotificationPortDestroy(v2);
      *(this + 3) = 0;
    }

    v3 = *(this + 1);
    *(this + 1) = 0;
    os_unfair_lock_lock(v3);
    *(v3 + 4) = 1;
    os_unfair_lock_unlock(v3);
    ashp::optional<dispatch_queue_s *,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 2, v4, v5, v6);
    v7 = *(this + 2);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN4ashp14CentauriHelper13stop_notifier6cancelEv_block_invoke;
    block[3] = &__block_descriptor_tmp_27;
    block[4] = v3;
    dispatch_async(v7, block);
  }

  ashp::owning_wrapper<IONotificationPort *,(decltype(nullptr))0,ashp::CentauriHelper::io_notification_port_deleter>::~owning_wrapper(this + 3);
  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(this + 2, v8, v9, v10);
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