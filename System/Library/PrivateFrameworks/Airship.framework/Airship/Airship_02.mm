uint64_t airship_driver_get_exec_stage(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 63);
  os_unfair_lock_opaque = a1[65]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1 + 63);
  return os_unfair_lock_opaque;
}

void airship_driver_probe_exec_stage(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 8));
  if ((*(a1 + 13) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x15C, "probe_exec_stage", v2);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive driver", "driver.cpp", 0x15C, "probe_exec_stage", v3);
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  if (*(a1 + 14) == 1)
  {
LABEL_7:
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x15D, "probe_exec_stage", v2);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to access terminated driver", "driver.cpp", 0x15D, "probe_exec_stage", v4);
    _os_crash();
    __break(1u);
    return;
  }

  (*(*a1 + 72))(a1);

  os_unfair_lock_unlock((a1 + 8));
}

void airship_driver_set_power_target(uint64_t a1, int a2)
{
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 14) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x165, "set_power_target", v4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to access terminated driver", "driver.cpp", 0x165, "set_power_target", v5);
    _os_crash();
    __break(1u);
  }

  else
  {
    if (*(a1 + 240) != a2)
    {
      *(a1 + 240) = a2;
      (*(*a1 + 80))(a1);
    }

    os_unfair_lock_unlock((a1 + 8));
  }
}

uint64_t airship_driver_get_power_state(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 63);
  os_unfair_lock_opaque = a1[80]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1 + 63);
  return os_unfair_lock_opaque;
}

uint64_t airship_driver_get_error_state(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 63);
  os_unfair_lock_opaque = a1[84]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1 + 63);
  return os_unfair_lock_opaque;
}

uint64_t airship_driver_set_interrupt_handler(uint64_t a1, const __CFString *a2, const char *a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 8));
  if ((*(a1 + 13) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x1CB, "set_interrupt_handler", v10);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to set external interrupt handler for inactive driver", "driver.cpp", 0x1CB, "set_interrupt_handler", v38);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  if (*(a1 + 14) == 1)
  {
LABEL_17:
    v15 = "set_interrupt_handler";
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x1CC, "set_interrupt_handler", v10);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to set external interrupt handler for terminated driver", "driver.cpp", 0x1CC, "set_interrupt_handler", v39);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  ashp::optional<ashp::interrupt_manager,void>::value(a1 + 632, v8, v9, v10);
  ashp::interrupt_manager::get_vector_for_interrupt(&v40, (a1 + 632), a2, a3, v11);
  v15 = 3758097090;
  if (v41)
  {
    ashp::optional<ashp::interrupt_manager,void>::value(a1 + 632, v12, v13, v14);
    ashp::optional<unsigned int,void>::value(&v40, v16, v17, v18);
    v19 = v40;
    os_unfair_lock_lock((a1 + 632));
    log_level = ashp::detail::logging::get_log_level(v20);
    if (log_level >= 3)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        *&buf[4] = "interrupt.cpp";
        v43 = 1024;
        v44 = 174;
        v45 = 2082;
        v46 = "set_external_handler";
        v47 = 1024;
        v48 = v19;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting external interrupt handler for vector %u", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting external interrupt handler for vector %u", "interrupt.cpp", 174, "set_external_handler", v19);
    }

    if (v19 < 0x20)
    {
      v26 = ashp::static_array<ashp::optional<ashp::interrupt_manager::interrupt_context,void>,32ul>::operator[](a1 + 848, v19, v22, v23);
      if (*(v26 + 64))
      {
        pthread_rwlock_wrlock((a1 + 640));
        ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(buf, a4, v27, v28);
        ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(v26, v29, v30, v31);
        v32 = *(v26 + 56);
        *(v26 + 56) = *buf;
        *buf = v32;
        ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(buf, v33, v34, v35);
        pthread_rwlock_unlock((a1 + 640));
        *(a1 + 14 * v19 + 3284) = 1;
        ashp::interrupt_manager::recompute_source_registration_and_suspension((a1 + 632));
        v15 = 0;
LABEL_14:
        os_unfair_lock_unlock((a1 + 632));
        goto LABEL_15;
      }

LABEL_19:
      ashp::detail::control_flow::log_guard_else_failure("interrupt.cpp", 0xB2, "set_external_handler", v25);
      goto LABEL_14;
    }

LABEL_18:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0xAF, "set_external_handler", v24);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  os_unfair_lock_unlock((a1 + 8));
  v36 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_23ECAB1E8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 158);
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

uint64_t airship_driver_retrieve_state_dump(uint64_t a1, unsigned int *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 3720) != 1)
  {
    goto LABEL_14;
  }

  ashp::optional<ashp::interrupt_manager,void>::value(a1 + 632, v4, v5, v6);
  os_unfair_lock_lock((a1 + 632));
  if (!a2)
  {
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0x3C7, "append_state_dump", v7);
    _os_crash();
    __break(1u);
    goto LABEL_39;
  }

  os_unfair_lock_assert_owner((a1 + 632));
  os_unfair_lock_lock((a1 + 3224));
  debug_object_alloc_size = ashp::driver_debug_object<ashp::debug::interrupt::interrupt_debug_info>::get_debug_object_alloc_size(a1 + 3224, v8, v9, v10);
  v14 = debug_object_alloc_size + 16;
  if (debug_object_alloc_size >= 0xFFFFFFF0)
  {
LABEL_39:
    v46 = "copy_debug_info";
    v47 = 77;
    v48 = "driver_debug_object.hpp";
    goto LABEL_41;
  }

  if (debug_info_capture::validate_buffer_bounds(a2, v14, v12, v13))
  {
    v17 = (*a2 + a2[3]);
    v17->i32[0] = *(a1 + 3240);
    v17->i32[1] = ashp::driver_debug_object<ashp::debug::interrupt::interrupt_debug_info>::get_debug_object_alloc_size(a1 + 3224, v15, v16, v13);
    v17[1] = vrev64_s32(*(a1 + 3232));
    if (*(a1 + 3248))
    {
      v19 = 0;
      v20 = v17 + 2;
      v21 = 1;
      do
      {
        v22 = ashp::dynamic_array<ashp::debug::interrupt::interrupt_debug_info>::operator[]((a1 + 3248), v19, v18, v13);
        v23 = v20 + 12 * v19;
        v24 = *v22;
        *(v23 + 2) = *(v22 + 8);
        *v23 = v24;
        v19 = v21;
      }

      while (*(a1 + 3248) > v21++);
    }
  }

  v26 = a2[3] + v14;
  a2[3] = v26;
  if (!HIDWORD(v26))
  {
    goto LABEL_9;
  }

  v46 = "advance_buffer_pointer";
  v47 = 108;
  v48 = "debug_infra.hpp";
LABEL_41:
  ashp::detail::control_flow::log_guard_else_failure(v48, v47, v46, v13);
LABEL_9:
  os_unfair_lock_unlock((a1 + 3224));
  os_unfair_lock_assert_owner((a1 + 632));
  if (debug_info_capture::validate_buffer_bounds(a2, 464, v27, v28))
  {
    v30 = (*a2 + a2[3]);
    *v30 = xmmword_23ED06130;
    memcpy(v30 + 1, (a1 + 3272), 0x1C0uLL);
  }

  v31 = a2[3];
  a2[3] = v31 + 464;
  if (v31 >= 0xFFFFFE30)
  {
    ashp::detail::control_flow::log_guard_else_failure("debug_infra.hpp", 0x6C, "advance_buffer_pointer", v29);
  }

  os_unfair_lock_assert_owner((a1 + 632));
  os_unfair_lock_unlock((a1 + 632));
LABEL_14:
  v32 = *(a1 + 232);
  if (v32)
  {
    *buf = v32 + 8;
    pthread_rwlock_rdlock((v32 + 8));
    (*(*v32 + 128))(v32, a2);
    ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(buf);
  }

  os_unfair_lock_assert_owner((a1 + 8));
  v33 = (*(*a1 + 96))(a1, a2);
  if (*(a1 + 3816) == 1)
  {
    ashp::optional<ashp::acipc::tr_ring,void>::value(a1 + 3784, v34, v35, v36);
    os_unfair_lock_lock((a1 + 3784));
    v39 = *(a1 + 3792);
    if (v39)
    {
      while (1)
      {
        v40 = v39[1];
        if (!v40)
        {
          break;
        }

        (*(v40 + 16))(v40, *v39, a2);
        v39 = v39[2];
        if (!v39)
        {
          goto LABEL_28;
        }
      }

      a2 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "state_dump_manager.cpp", 0x3C, "populate_state_dump_info", v38);
      _os_crash();
      __break(1u);
      goto LABEL_37;
    }

    log_level = ashp::detail::logging::get_log_level(v37);
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        *&buf[4] = "state_dump_manager.cpp";
        v50 = 1024;
        v51 = 56;
        v52 = 2082;
        v53 = "populate_state_dump_info";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] no custom statedump handlers registered", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] no custom statedump handlers registered", "state_dump_manager.cpp", 56, "populate_state_dump_info");
    }

LABEL_28:
    os_unfair_lock_unlock((a1 + 3784));
  }

  v42 = ashp::detail::logging::get_log_level(v33);
  if (v42 >= 3)
  {
    v42 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v42)
    {
      *buf = 136446722;
      *&buf[4] = "driver.cpp";
      v50 = 1024;
      v51 = 437;
      v52 = 2082;
      v53 = "retrieve_state_dump";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] IPC driver state_dump complete", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v42))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_34:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] IPC driver state_dump complete", "driver.cpp", 437, "retrieve_state_dump");
      goto LABEL_35;
    }

LABEL_37:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_34;
  }

LABEL_35:
  v43 = a2[3];
  os_unfair_lock_unlock((a1 + 8));
  v44 = *MEMORY[0x277D85DE8];
  return v43;
}

void sub_23ECAB75C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 946);
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

uint64_t airship_driver_get_nominal_state_dump_size(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 2);
  v2 = (*(*&a1->_os_unfair_lock_opaque + 104))(a1);
  os_unfair_lock_unlock(a1 + 2);
  return v2;
}

void airship_driver_dump_debug_logs(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 2);
  (*(*&a1->_os_unfair_lock_opaque + 112))(a1, a2);

  os_unfair_lock_unlock(a1 + 2);
}

uint64_t airship_driver_set_interrupt_execution_queue(uint64_t a1, const __CFString *a2, const char *a3, uint64_t a4)
{
  v52 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 8));
  if ((*(a1 + 13) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x1D8, "set_interrupt_execution_queue", v10);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to set interrupt execution queue for inactive driver", "driver.cpp", 0x1D8, "set_interrupt_execution_queue", v41);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  if (*(a1 + 14) == 1)
  {
LABEL_17:
    v15 = "set_interrupt_execution_queue";
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x1D9, "set_interrupt_execution_queue", v10);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to set interrupt execution queue for terminated driver", "driver.cpp", 0x1D9, "set_interrupt_execution_queue", v42);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  ashp::optional<ashp::interrupt_manager,void>::value(a1 + 632, v8, v9, v10);
  ashp::interrupt_manager::get_vector_for_interrupt(&v43, (a1 + 632), a2, a3, v11);
  v15 = 3758097090;
  if (v44)
  {
    ashp::optional<ashp::interrupt_manager,void>::value(a1 + 632, v12, v13, v14);
    ashp::optional<unsigned int,void>::value(&v43, v16, v17, v18);
    v19 = v43;
    os_unfair_lock_lock((a1 + 632));
    log_level = ashp::detail::logging::get_log_level(v20);
    if (log_level >= 3)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        *&buf[4] = "interrupt.cpp";
        v46 = 1024;
        v47 = 192;
        v48 = 2082;
        v49 = "set_external_execution_queue";
        v50 = 1024;
        v51 = v19;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting external execution queue for vector %u", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting external execution queue for vector %u", "interrupt.cpp", 192, "set_external_execution_queue", v19);
    }

    if (v19 < 0x20)
    {
      v25 = ashp::static_array<ashp::optional<ashp::interrupt_manager::interrupt_context,void>,32ul>::operator[](a1 + 848, v19, v22, v23);
      v29 = v25;
      if (*(v25 + 64))
      {
        ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(v25, v26, v27, v28);
        ashp::interrupt_manager::disconnect_interrupt((a1 + 632), v29);
        ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::refcounted_ptr(buf, a4, v30, v31);
        ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(v29, v32, v33, v34);
        v35 = *(v29 + 48);
        *(v29 + 48) = *buf;
        *buf = v35;
        ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(buf, v36, v37, v38);
        ashp::interrupt_manager::recompute_source_registration_and_suspension((a1 + 632));
        v15 = 0;
LABEL_14:
        os_unfair_lock_unlock((a1 + 632));
        goto LABEL_15;
      }

LABEL_19:
      ashp::detail::control_flow::log_guard_else_failure("interrupt.cpp", 0xC4, "set_external_execution_queue", v28);
      goto LABEL_14;
    }

LABEL_18:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0xC1, "set_external_execution_queue", v24);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  os_unfair_lock_unlock((a1 + 8));
  v39 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_23ECABBC0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 158);
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

uint64_t airship_driver_register_client_statedump_handler(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 13))
  {
    if (*(a1 + 14) != 1)
    {
      ashp::optional<ashp::acipc::tr_ring,void>::value(a1 + 3784, v2, v3, v4);
      os_unfair_lock_lock((a1 + 3784));
      operator new();
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x1E5, "register_client_statedump_handler", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to register handler for inactive driver", "driver.cpp", 0x1E5, "register_client_statedump_handler", v5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x1E6, "register_client_statedump_handler", v4);
  ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to register handler for terminated driver", "driver.cpp", 0x1E6, "register_client_statedump_handler", v6);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECABDA8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 946);
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

void airship_driver_unregister_client_statedump_handler(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 8));
  if ((*(a1 + 13) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x1ED, "unregister_client_statedump_handler", v6);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to unregister handler for inactive driver", "driver.cpp", 0x1ED, "unregister_client_statedump_handler", v20);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 14) == 1)
  {
LABEL_12:
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x1EE, "unregister_client_statedump_handler", v6);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to unregister handler for terminated driver", "driver.cpp", 0x1EE, "unregister_client_statedump_handler", v21);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  ashp::optional<ashp::acipc::tr_ring,void>::value(a1 + 3784, v4, v5, v6);
  os_unfair_lock_lock((a1 + 3784));
  v11 = *(a1 + 3792);
  if (!v11)
  {
LABEL_13:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "state_dump_manager.cpp", 0x27, "unregister_statedump_collection_handler", v10);
    _os_crash();
    __break(1u);
    return;
  }

  while (*v11 != a2)
  {
    v11 = v11[2];
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(v11 + 1, v7, v8, v9);
  ashp::detail::intrusive_list::intrusive_list_impl<ashp::state_dump_client,ashp::intrusive_list_link<ashp::state_dump_client>,&ashp::state_dump_client::_state_dump_link>::remove(a1 + 3792, v11, v12, v13);
  ashp::intrusive_list_link<ashp::state_dump_client>::~intrusive_list_link((v11 + 2), v14, v15, v16);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(v11 + 1, v17, v18, v19);
  MEMORY[0x23EF204E0](v11, 0xB0C40BC0FF885);
LABEL_8:
  os_unfair_lock_unlock((a1 + 3784));

  os_unfair_lock_unlock((a1 + 8));
}

void sub_23ECABF60(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 946);
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::cr_controller::reap(ashp::acipc::cr_controller *this)
{
  v36 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 36);
  os_unfair_lock_lock(this + 4);
  v2 = ashp::acipc::ring_controller::compute_state((this + 520));
  if ((v2 - 4) >= 3)
  {
    v3 = v2 - 2;
    v4 = (this + 16);
    if (v3 <= 1)
    {
      os_unfair_lock_unlock(v4);
      v5 = *(this + 3);
      ashp::optional<ashp::acipc::ring_manager,void>::value(&v5[1066], v6, v7, v8);
      ashp::acipc::ring_manager::close_cr(v5 + 1066, this, v9, v10, v11);
      goto LABEL_5;
    }

    os_unfair_lock_unlock(v4);
    if (*(this + 505) != 1)
    {
LABEL_17:
      os_unfair_lock_unlock(this + 36);
      ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::release(this + 1, v25, v26, v27);
      result = 1;
      goto LABEL_6;
    }

    v17 = *(this + 3);
    ashp::optional<ashp::acipc::ring_manager,void>::value(&v17[1066], v14, v15, v16);
    os_unfair_lock_lock(v17 + 1066);
    if (*(this + 93) == this)
    {
      os_unfair_lock_assert_owner(v17 + 1066);
      if (!*(this + 194))
      {
        *(this + 93) = 0;
        v22 = ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::remove(&v17[1196], this + 93, v19, v20);
        log_level = ashp::detail::logging::get_log_level(v22);
        if (log_level >= 4)
        {
          log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (log_level)
          {
            v24 = *(this + 420);
            *buf = 136446978;
            v29 = "ring_manager.cpp";
            v30 = 1024;
            v31 = 400;
            v32 = 2082;
            v33 = "remove_cr";
            v34 = 1024;
            v35 = v24;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] removed crid %hu", buf, 0x22u);
          }
        }

        if (!ashp::detail::logging::get_log_level(log_level))
        {
          goto LABEL_16;
        }

        if (airship_platform_get_global_logger::once == -1)
        {
LABEL_15:
          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] removed crid %hu", "ring_manager.cpp", 400, "remove_cr", *(this + 420));
LABEL_16:
          os_unfair_lock_unlock(v17 + 1066);
          goto LABEL_17;
        }

LABEL_20:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        goto LABEL_15;
      }
    }

    else
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x18C, "remove_cr", v18);
      _os_crash();
      __break(1u);
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x18D, "remove_cr", v21);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  os_unfair_lock_unlock(this + 4);
LABEL_5:
  os_unfair_lock_unlock(this + 36);
  result = 0;
LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23ECAC224(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));
  os_unfair_lock_unlock(v1 + 36);
  _Unwind_Resume(a1);
}

void ashp::acipc::cr_controller::handle_terminate(ashp::acipc::cr_controller *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::acipc::ring_controller::terminate_monitors((this + 520), a2, a3, a4);
  ashp::acipc::cr_controller::flush_all_transfer_rings(this);
  ashp::dynamic_array<ashp::acipc::cr_controller::tr_association>::truncate(this + 145, 0, v5, v6, v7);
  os_unfair_lock_unlock(this + 4);
  ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::retain(this + 1, v8, v9, v10);
  ashp::reaper_target::attempt_reap((this + 96));

  os_unfair_lock_lock(this + 4);
}

void *ashp::acipc::cr_controller::flush_all_transfer_rings(ashp::acipc::cr_controller *this)
{
  os_unfair_lock_assert_owner(this + 4);
  v5 = *(this + 148);
  if (v5)
  {
    v6 = *(this + 150);
    v7 = 16 * v5;
    do
    {
      v8 = *v6;
      v6 += 2;
      ashp::acipc::tr_controller::completion_ring_did_flush(v8, this);
      v7 -= 16;
    }

    while (v7);
  }

  return ashp::dynamic_array<ashp::acipc::cr_controller::flush_tracker>::truncate(this + 148, 0, v2, v3, v4);
}

unint64_t *ashp::dynamic_array<ashp::acipc::cr_controller::tr_association>::truncate(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 < a2)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x241, "truncate", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted truncate to larger size", "dynamic_array.hpp", 0x241, "truncate", v7);
    result = _os_crash();
    __break(1u);
  }

  else
  {

    return ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::reduce_size(a1, a2, a3, a4, a5);
  }

  return result;
}

void *ashp::dynamic_array<ashp::acipc::cr_controller::flush_tracker>::truncate(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 < a2)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x241, "truncate", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted truncate to larger size", "dynamic_array.hpp", 0x241, "truncate", v7);
    result = _os_crash();
    __break(1u);
  }

  else
  {

    return ashp::detail::dynamic_array::storage<ashp::acipc::cr_controller::flush_tracker>::reduce_size(a1, a2, a3, a4, a5);
  }

  return result;
}

void *ashp::detail::dynamic_array::storage<ashp::acipc::cr_controller::flush_tracker>::reduce_size(void *result, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *result - a2;
  if (*result < a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x112, "reduce_size", a5);
    result = _os_crash();
  }

  else
  {
    if (*result <= a2)
    {
LABEL_8:
      *result = a2;
      return result;
    }

    v6 = result[2];
    if (v6)
    {
      v7 = (v6 + 16 * a2 + 10);
      do
      {
        if (*v7)
        {
          *v7 = 0;
        }

        v7 += 16;
        --v5;
      }

      while (v5);
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void ashp::acipc::cr_controller::destroy(ashp::acipc::cr_controller *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (this)
  {
    *this = &unk_28515CE58;
    v6 = (this + 96);
    *(this + 12) = &unk_28515CE80;
    if (!*(this + 136))
    {
      if (!*(this + 145))
      {
        if (!*(this + 148))
        {
          ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(this + 164);
          ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(this + 158);
          if (*(this + 1233) == 1)
          {
            *(this + 1233) = 0;
          }

          ashp::detail::dynamic_array::storage<ashp::acipc::cr_controller::flush_tracker>::~storage(this + 148, v7, v8, v9, v10);
          ashp::detail::dynamic_array::storage<ashp::acipc::cr_controller::tr_association>::~storage(this + 145, v11, v12, v13, v14);
          ashp::intrusive_list_link<ashp::acipc::doorbell_participant>::~intrusive_list_link(this + 1128, v15, v16, v17);
          ashp::unsafe_storage<ashp::acipc::completion_mirror>::storage::reset(this + 121);
          if (*(this + 960) == 1)
          {
            *(this + 960) = 0;
          }

          ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(this + 115, v18, v19, v20);
          ashp::buffer_mapping::~buffer_mapping(this + 112, v21, v22, v23);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 872, v24, v25, v26);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 848, v27, v28, v29);
          ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 102, v30, v31, v32, v33);
          ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 100, v34, v35, v36);
          ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::cr_context>::~intrusive_list_link(this + 752, v37, v38, v39);
          ashp::monitor_target::~monitor_target((this + 696), v40, v41, v42, v43);
          ashp::monitor_target::~monitor_target((this + 648), v44, v45, v46, v47);
          ashp::acipc::ring_controller::~ring_controller((this + 520), v48, v49, v50, v51);
          if (*(this + 512) == 1)
          {
            *(this + 512) = 0;
          }

          if (*(this + 508) == 1)
          {
            *(this + 508) = 0;
          }

          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 480, v52, v53, v54);
          ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 58, v55, v56, v57);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 432, v58, v59, v60);
          ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 50, v61, v62, v63, v64);
          ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 47, v65, v66, v67, v68);
          ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(this + 44, v69, v70, v71, v72);
          ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::~storage(this + 41, v73, v74, v75, v76);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 296, v77, v78, v79);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 256, v80, v81, v82);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 224, v83, v84, v85);
          ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 23, v86, v87, v88, v89);
          ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 21, v90, v91, v92);
          ashp::reaper_target::~reaper_target(v6, v93, v94, v95, v96);
          ashp::driver_object::~driver_object(this, v97, v98, v99, v100);

LABEL_20:
          JUMPOUT(0x23EF204E0);
        }

LABEL_19:
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x37, "~cr_controller", a5);
        _os_crash();
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x36, "~cr_controller", a5);
      _os_crash();
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x35, "~cr_controller", a5);
  _os_crash();
  __break(1u);
  goto LABEL_18;
}

void *ashp::detail::dynamic_array::storage<ashp::acipc::cr_controller::flush_tracker>::~storage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::cr_controller::flush_tracker>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::cr_controller::tr_association>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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

uint64_t *ashp::unsafe_storage<ashp::acipc::completion_mirror>::storage::reset(uint64_t *result)
{
  if (*(result + 104) == 1)
  {
    v2 = result;
    *(result + 104) = 0;
    ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(result + 9);
    ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(v2 + 6);

    return ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(v2 + 2);
  }

  return result;
}

uint64_t ashp::acipc::cr_controller::client_overrides::operator=(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = *a2;
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v25, a2 + 8, a3, a4);
  ashp::swap(a1 + 8, v25, v6, v7);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v25, v8, v9, v10);
  *(a1 + 32) = *(a2 + 32);
  v11 = *(a2 + 40);
  *(a2 + 40) = 0;
  v12 = *(a1 + 40);
  *(a1 + 40) = v11;
  v24 = v12;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v24, v13, v14, v15);
  *(a1 + 48) = *(a2 + 48);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v25, a2 + 56, v16, v17);
  ashp::swap(a1 + 56, v25, v18, v19);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v25, v20, v21, v22);
  return a1;
}

uint64_t ashp::acipc::cr_controller::validate_client_overrides(unsigned __int16 *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v73 = *a1;
  v75 = *(a1 + 1);
  v57 = *(a1 + 24);
  if (v57 == 1)
  {
    ashp::optional<ashp::acipc::name_and_selector,void>::value((a1 + 4), a2, a3, a4);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v71, *(a1 + 1), v6, v7);
    v72 = *(a1 + 4);
    v78 = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v76, v8, v9, v10);
    v11 = v71;
    v71 = 0;
    v76 = v11;
    v77 = v72;
    v78 = 1;
  }

  else
  {
    v78 = 0;
  }

  v12 = *(a1 + 72);
  if (v12 == 1)
  {
    ashp::optional<ashp::acipc::name_and_selector,void>::value((a1 + 28), a2, a3, a4);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v69, *(a1 + 7), v13, v14);
    v70 = *(a1 + 16);
    v81 = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v79, v15, v16, v17);
    v18 = v69;
    v69 = 0;
    v79 = v18;
    v80 = v70;
    v81 = 1;
  }

  else
  {
    v81 = 0;
  }

  LOWORD(v62) = *(a2 + 60);
  HIDWORD(v62) = *(a2 + 68);
  v19 = *(a2 + 88);
  if (v19 == 1)
  {
    ashp::optional<ashp::acipc::name_and_selector,void>::value(a2 + 72, a2, a3, a4);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v60, *(a2 + 72), v20, v21);
    v61 = *(a2 + 80);
    v65 = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v63, v22, v23, v24);
    v25 = v60;
    v60 = 0;
    v63 = v25;
    v64 = v61;
    v65 = 1;
  }

  else
  {
    v65 = 0;
  }

  v26 = *(a2 + 160);
  if (v26 == 1)
  {
    ashp::optional<ashp::acipc::name_and_selector,void>::value(a2 + 144, a2, a3, a4);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v58, *(a2 + 144), v27, v28);
    v59 = *(a2 + 152);
    v68 = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v66, v29, v30, v31);
    v32 = v58;
    v58 = 0;
    v66 = v32;
    v67 = v59;
    v68 = 1;
  }

  else
  {
    v68 = 0;
  }

  is_satisfied_by = ashp::acipc::config::completion_ring_spec::constraint_config::is_satisfied_by((a2 + 176), &v73, &v62);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v66, v34, v35, v36);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v63, v37, v38, v39);
  if (v26)
  {
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v58, v40, v41, v42);
  }

  if (v19)
  {
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v60, v40, v41, v42);
  }

  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v79, v40, v41, v42);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v76, v43, v44, v45);
  if (v12)
  {
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v69, v46, v47, v48);
  }

  if (v57)
  {
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v71, v46, v47, v48);
  }

  if (is_satisfied_by)
  {
    if (*a2 == 1 && (a1[12] & 1) != 0)
    {
      v55 = 977;
    }

    else if (*a1)
    {
      ashp::acipc::compute_hdrftr_size_fields(&v73, *(a1 + 1), *(a3 + 144), v48);
      if (v74)
      {
        ashp::acipc::cr_ring::compute_required_memory(&v73, *a1, *(a2 + 64), *(a1 + 1));
        if (v75 == 1)
        {
          if (*a2 != 1)
          {
            return 1;
          }

          v62 = 0;
          v50 = ashp::operator==<int,0>(a1 + 5, &v62, v49, v48);
          ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v62, v51, v52, v53);
          if (v50)
          {
            return 1;
          }

          v55 = 989;
        }

        else
        {
          v55 = 985;
        }
      }

      else
      {
        v55 = 982;
      }
    }

    else
    {
      v55 = 980;
    }
  }

  else
  {
    v55 = 973;
  }

  ashp::detail::control_flow::log_guard_else_failure("cr_controller.cpp", v55, "validate_client_overrides", v48);
  return 0;
}

void sub_23ECACC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_completion_descr_info>::set_debug_object_capacity_and_type(os_unfair_lock_t lock, uint32_t a2, uint32_t a3)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  lock[1]._os_unfair_lock_opaque = a2;
  lock[4]._os_unfair_lock_opaque = a3;
  if (((36 * a2) & 4) != 0)
  {
    v6 = ((36 * a2) & 0x1FFFFFFFF8) + 8;
  }

  else
  {
    v6 = 36 * a2;
  }

  v7 = malloc_type_aligned_alloc(8uLL, v6, 0x10000408AA14F5FuLL);
  v10 = v7;
  if (!v7)
  {
LABEL_18:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v8);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v16);
    _os_crash();
LABEL_19:
    __break(1u);
    return;
  }

  v11 = a2;
  *&v12 = 0;
  *(&v12 + 1) = a2;
  do
  {
    if (v12 >= a2)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v9);
      _os_crash();
      __break(1u);
      goto LABEL_18;
    }

    v13 = &v7[36 * v12];
    *(v13 + 8) = 0;
    *v13 = 0uLL;
    *(v13 + 1) = 0uLL;
    *&v12 = v12 + 1;
    --v11;
  }

  while (v11);
  v14 = *&lock[6]._os_unfair_lock_opaque;
  *&lock[6]._os_unfair_lock_opaque = v12;
  v15 = *&lock[10]._os_unfair_lock_opaque;
  *&lock[10]._os_unfair_lock_opaque = v10;
  if (v14 && !v15)
  {
    goto LABEL_19;
  }

  if (v15)
  {
    free(v15);
  }

  lock[2]._os_unfair_lock_opaque = 0;

  os_unfair_lock_unlock(lock);
}

void ashp::acipc::detail::ring_manager::cr_context::~cr_context(ashp::acipc::detail::ring_manager::cr_context *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 128, a2, a3, a4);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 104, v5, v6, v7);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 9, v8, v9, v10, v11);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 7, v12, v13, v14);
  ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::cr_context>::~intrusive_list_link(this + 8, v15, v16, v17);
}

void ashp::acipc::cr_controller::config::~config(ashp::acipc::cr_controller::config *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 31, a2, a3, a4, a5);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 28, v6, v7, v8, v9);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(this + 25, v10, v11, v12, v13);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::~storage(this + 22, v14, v15, v16, v17);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 144, v18, v19, v20);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 104, v21, v22, v23);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 72, v24, v25, v26);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 4, v27, v28, v29, v30);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 2, v31, v32, v33);
}

{
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 31, a2, a3, a4, a5);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 28, v6, v7, v8, v9);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(this + 25, v10, v11, v12, v13);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::~storage(this + 22, v14, v15, v16, v17);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 144, v18, v19, v20);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 104, v21, v22, v23);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 72, v24, v25, v26);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 4, v27, v28, v29, v30);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 2, v31, v32, v33);
}

void ashp::acipc::cr_controller::get_client_overrides(ashp::acipc::cr_controller *this, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 16));
  *this = *(a2 + 424);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(this + 8, a2 + 432, v4, v5);
  *(this + 32) = *(a2 + 456);
  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(this + 5, *(a2 + 464), v6, v7);
  *(this + 6) = *(a2 + 472);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(this + 56, a2 + 480, v8, v9);

  os_unfair_lock_unlock((a2 + 16));
}

void sub_23ECAD01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v6 + 40), a2, a3, a4);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v5, v8, v9, v10);
  os_unfair_lock_unlock(v4 + 4);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::cr_controller::set_client_overrides(uint64_t a1, unsigned __int16 *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 16));
  if (*(a1 + 505) == 1)
  {
    v12 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x4B, "set_client_overrides", v7);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(a1 + 24);
  ashp::optional<ashp::acipc::config::acipc_config,void>::value(v8 + 3824, v4, v5, v6);
  v12 = ashp::acipc::cr_controller::validate_client_overrides(a2, a1 + 152, v8 + 3824, v9);
  if ((v12 & 1) == 0)
  {
LABEL_12:
    ashp::detail::control_flow::log_guard_else_failure("cr_controller.cpp", 0x4E, "set_client_overrides", v11);
    ashp::acipc::cr_controller::set_client_overrides(ashp::acipc::cr_controller::client_overrides)::$_0::operator()<unsigned short>((a1 + 208));
    goto LABEL_10;
  }

  v13 = ashp::acipc::cr_controller::client_overrides::operator=(a1 + 424, a2, v10, v11);
  log_level = ashp::detail::logging::get_log_level(v13);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v15 = *(a1 + 208);
      *buf = 136446978;
      v19 = "cr_controller.cpp";
      v20 = 1024;
      v21 = 80;
      v22 = 2082;
      v23 = "set_client_overrides";
      v24 = 1024;
      v25 = v15;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) applied client overrides", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) applied client overrides", "cr_controller.cpp", 80, "set_client_overrides", *(a1 + 208));
  }

LABEL_10:
  os_unfair_lock_unlock((a1 + 16));
  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

void ashp::acipc::cr_controller::set_client_overrides(ashp::acipc::cr_controller::client_overrides)::$_0::operator()<unsigned short>(ashp::detail::logging *a1)
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
      v6 = "cr_controller.cpp";
      v7 = 1024;
      v8 = 77;
      v9 = 2082;
      v10 = "set_client_overrides";
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) failed to validate client override", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) failed to validate client override", "cr_controller.cpp", 77, "set_client_overrides", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::acipc::cr_controller::activate(ashp::acipc::cr_controller *this)
{
  v130 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 36);
  os_unfair_lock_lock(this + 4);
  if (*(this + 505) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x59, "activate", v6);
    _os_crash();
    __break(1u);
    goto LABEL_34;
  }

  if (*(this + 32) != 1)
  {
    v10 = *(this + 3);
    ashp::optional<ashp::acipc::config::acipc_config,void>::value(v10 + 3824, v3, v4, v5);
    if (ashp::acipc::cr_controller::validate_client_overrides(this + 212, this + 152, v10 + 3824, v11))
    {
      v123[16] = 0;
      if (*(this + 272) == 1)
      {
        buf[16] = 0;
        *&buf[24] = 0;
        LOBYTE(v127) = 0;
        *&v128[2] = 0;
        v129 = 0;
        ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 256, v12, v13, v14);
        ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v124, *(this + 32), v16, v17);
        v125 = *(this + 66);
        v18 = resolve_named_target<ashp::acipc::config::doorbell_spec>(*(v10 + 3880), *(v10 + 3896), &v124, buf, 0);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v124, v19, v20, v21);
        if (!v18)
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x64, "activate", v25);
          _os_crash();
          __break(1u);
        }

        if (!*(v18 + 2))
        {
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(&v124, this + 256, v23, v24);
          ashp::swap(v123, &v124, v26, v27);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v124, v28, v29, v30);
        }

        v31 = *(this + 508);
        *(this + 253) = *&buf[24];
        if ((v31 & 1) == 0)
        {
          *(this + 508) = 1;
        }

        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(buf, v22, v23, v24);
      }

      if (*(this + 496) != 1)
      {
LABEL_22:
        *(this + 505) = 1;
        os_unfair_lock_unlock(this + 4);
        v53 = *(this + 3);
        ashp::optional<ashp::acipc::ring_manager,void>::value(v53 + 4264, v54, v55, v56);
        LOBYTE(v115) = *(this + 152);
        HIBYTE(v115) = v115;
        ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v116, *(this + 21), v57, v58);
        v117 = *(this + 44);
        ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::storage(&v118, this + 184, v59, v60);
        v120 = *(this + 52);
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v121, v123, v61, v62);
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v122, this + 432, v63, v64);
        os_unfair_lock_lock((v53 + 4264));
        if (!*(this + 93))
        {
          *(this + 93) = this;
          *(this + 194) = 0;
          *(this + 390) = 0;
          *(this + 196) = 0;
          *(this + 396) = v115;
          ashp::acipc::name_and_selector::operator=(this + 100, &v116, v65, v66);
          v68 = v119;
          v69 = v118;
          v118 = 0uLL;
          v119 = 0;
          v70 = *(this + 51);
          *(this + 51) = v69;
          *buf = v70;
          v71 = *(this + 104);
          *(this + 104) = v68;
          *&buf[16] = v71;
          v76 = ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(buf, v72, v73, v74, v75);
          *(this + 210) = v120;
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(v76, v121, v77, v78);
          ashp::swap(this + 848, buf, v79, v80);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(buf, v81, v82, v83);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::storage(buf, v122, v84, v85);
          ashp::swap(this + 872, buf, v86, v87);
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(buf, v88, v89, v90);
          if (!*(this + 96))
          {
            v92 = *(v53 + 4792);
            *(this + 94) = *v92;
            *(this + 95) = v92;
            *v92 = this + 744;
            *(v53 + 4792) = this + 752;
            *(this + 96) = v53 + 4784;
            ashp::acipc::ring_manager::recompute_cr_availability((v53 + 4264), (this + 744));
            log_level = ashp::detail::logging::get_log_level(v93);
            if (log_level >= 4)
            {
              log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (log_level)
              {
                v95 = *(this + 420);
                *buf = 136446978;
                *&buf[4] = "ring_manager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 388;
                *&buf[18] = 2082;
                *&buf[20] = "add_cr";
                v127 = 1024;
                *v128 = v95;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] added crid %hu", buf, 0x22u);
              }
            }

            if (ashp::detail::logging::get_log_level(log_level))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] added crid %hu", "ring_manager.cpp", 388, "add_cr", *(this + 420));
            }

            os_unfair_lock_unlock((v53 + 4264));
            ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v122, v96, v97, v98);
            ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v121, v99, v100, v101);
            ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(&v118, v102, v103, v104, v105);
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v116, v106, v107, v108);
            os_unfair_lock_lock(this + 4);
            ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v123, v109, v110, v111);
            v9 = 0;
            goto LABEL_32;
          }

LABEL_37:
          v9 = "intrusive_list.hpp";
          ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xBA, "insert_before", v91);
          ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to insert element already in list", "intrusive_list.hpp", 0xBA, "insert_before", v114);
          _os_crash();
          __break(1u);
          goto LABEL_38;
        }

LABEL_36:
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x17B, "add_cr", v67);
        _os_crash();
        __break(1u);
        goto LABEL_37;
      }

      v32 = *(this + 3);
      ashp::optional<ashp::interrupt_manager,void>::value(&v32[158], v12, v13, v14);
      ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 480, v33, v34, v35);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 60, v36, v37, v38);
      v39 = *(this + 60);
      ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 480, v40, v41, v42);
      ashp::interrupt_manager::get_vector_for_interrupt(buf, v32 + 158, v39, *(this + 122), v43);
      if (buf[4] == 1)
      {
        v48 = ashp::optional<unsigned int,void>::value(buf, v44, v45, v46);
        if (*buf < 0x10000u)
        {
          ashp::optional<unsigned int,void>::value(v48, v49, v50, v51);
          v52 = *(this + 512);
          *(this + 255) = *buf;
          if ((v52 & 1) == 0)
          {
            *(this + 512) = 1;
          }

          goto LABEL_22;
        }
      }

LABEL_35:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x6F, "activate", v47);
      _os_crash();
      __break(1u);
      goto LABEL_36;
    }

LABEL_34:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x5D, "activate", v15);
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
      *&buf[4] = "cr_controller.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 90;
      *&buf[18] = 2082;
      *&buf[20] = "activate";
      v127 = 1024;
      *v128 = v8;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is already terminated", buf, 0x22u);
    }
  }

  v9 = 3758097088;
  if (ashp::detail::logging::get_log_level(v7))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is already terminated", "cr_controller.cpp", 90, "activate", *(this + 104));
      goto LABEL_32;
    }

LABEL_38:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

LABEL_32:
  os_unfair_lock_unlock(this + 4);
  os_unfair_lock_unlock(this + 36);
  v112 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_23ECADA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&a27, a2, a3, a4);
  os_unfair_lock_unlock(v27 + 4);
  os_unfair_lock_unlock(v27 + 36);
  _Unwind_Resume(a1);
}

void ashp::acipc::detail::ring_manager::cr_context::parameters::~parameters(ashp::acipc::detail::ring_manager::cr_context::parameters *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 80, a2, a3, a4);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 56, v5, v6, v7);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 3, v8, v9, v10, v11);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 1, v12, v13, v14);
}

void ashp::acipc::cr_controller::create_state_monitor(void)::$_0::operator()<unsigned short>(ashp::detail::logging *a1)
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
      v6 = "cr_controller.cpp";
      v7 = 1024;
      v8 = 154;
      v9 = 2082;
      v10 = "create_state_monitor";
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is already terminated", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is already terminated", "cr_controller.cpp", 154, "create_state_monitor", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::acipc::cr_controller::open(ashp::acipc::cr_controller *this)
{
  v289 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 36);
  os_unfair_lock_lock(this + 4);
  if ((*(this + 505) & 1) == 0)
  {
    goto LABEL_223;
  }

  v8 = buf;
  if (*(this + 32) == 1)
  {
    log_level = ashp::detail::logging::get_log_level(v6);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v10 = *(this + 104);
        *buf = 136446978;
        *&buf[4] = "cr_controller.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 164;
        *&buf[18] = 2082;
        *&buf[20] = "open";
        *&buf[28] = 1024;
        *&buf[30] = v10;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is already terminated", buf, 0x22u);
      }
    }

    v1 = 3758097088;
    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        goto LABEL_224;
      }

      goto LABEL_8;
    }

    goto LABEL_175;
  }

  v11 = ashp::acipc::ring_controller::compute_state((this + 520));
  LODWORD(v12) = v11;
  if (v11 >= 2)
  {
    v32 = ashp::detail::logging::get_log_level(v11);
    if (v32 >= 2)
    {
      v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v32)
      {
        v33 = *(this + 104);
        *buf = 136447234;
        *&buf[4] = "cr_controller.cpp";
        *&buf[14] = 167;
        *&buf[18] = 2082;
        *&buf[12] = 1024;
        *&buf[20] = "open";
        *&buf[28] = 1024;
        *&buf[30] = v33;
        v285 = 1024;
        LODWORD(p_paddr) = v12;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller state %u is not ready to open", buf, 0x28u);
      }
    }

    v1 = 3758097112;
    if (ashp::detail::logging::get_log_level(v32))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller state %u is not ready to open", "cr_controller.cpp", 167, "open", *(this + 104), v12);
    }

    goto LABEL_175;
  }

  v13 = ashp::detail::logging::get_log_level(v11);
  if (v13 >= 3)
  {
    v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      v14 = *(this + 104);
      *buf = 136446978;
      *&buf[4] = "cr_controller.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 169;
      *&buf[18] = 2082;
      *&buf[20] = "open";
      *&buf[28] = 1024;
      *&buf[30] = v14;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) sending open message", buf, 0x22u);
    }
  }

  if (!ashp::detail::logging::get_log_level(v13))
  {
    goto LABEL_16;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_235;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) sending open message", "cr_controller.cpp", 169, "open", *(this + 104));
LABEL_16:
    ashp::acipc::cr_ring::compute_required_memory(&v267, *(this + 212), *(this + 54), *(this + 107));
    if ((v268 & 1) == 0)
    {
      goto LABEL_226;
    }

    v19 = ashp::optional<unsigned int,void>::value(&v267, v15, v16, v17);
    v20 = ashp::detail::logging::get_log_level(v19);
    if (v20 >= 4)
    {
      v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        v21 = *(this + 104);
        v22 = v267;
        *buf = 136447234;
        *(v8 + 4) = "cr_controller.cpp";
        *(v8 + 14) = 173;
        *&buf[18] = 2082;
        *&buf[12] = 1024;
        *(v8 + 20) = "open";
        *&buf[28] = 1024;
        *(v8 + 30) = v21;
        v285 = 1024;
        LODWORD(p_paddr) = v22;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) computed memory is %u bytes", buf, 0x28u);
      }
    }

    v23 = ashp::detail::logging::get_log_level(v20);
    if (v23)
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) computed memory is %u bytes", "cr_controller.cpp", 173, "open", *(this + 104), v267);
    }

    v265 = this;
    v266 = 1;
    if (*(this + 152) != 1)
    {
      ashp::optional<unsigned int,void>::value(&v267, v24, v25, v26);
      ashp::mappable_buffer::create(&paddr, v267, 2, v34, v35);
      if (v270)
      {
        ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&paddr, v36, v37, v38);
        ashp::buffer_mapping::operator=(this + 896, &paddr, v39, v40);
        v41 = *(this + 3);
        ashp::mappable_buffer::copy_descriptor(v264, this + 896, v42, v43, v44);
        ashp::devmem_mapping::create();
      }

      ashp::detail::control_flow::log_guard_else_failure("cr_controller.cpp", 0xBC, "open", v38);
      ashp::acipc::cr_controller::open(void)::$_6::operator()<unsigned short>((this + 208));
      ashp::buffer_mapping::~buffer_mapping(&paddr, v225, v226, v227);
      v1 = 3758097118;
      goto LABEL_174;
    }

    v27 = ashp::detail::logging::get_log_level(v23);
    if (v27 >= 4)
    {
      v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        v28 = *(this + 104);
        *buf = 136446978;
        *(v8 + 4) = "cr_controller.cpp";
        *&buf[12] = 1024;
        *(v8 + 14) = 182;
        *&buf[18] = 2082;
        *(v8 + 20) = "open";
        *&buf[28] = 1024;
        *(v8 + 30) = v28;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) using mcr memory", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v27))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) using mcr memory", "cr_controller.cpp", 182, "open", *(this + 104));
    }

    v1 = *(this + 20);
    if (!v1)
    {
      goto LABEL_227;
    }

    if (*(this + 960) == 1)
    {
      *(this + 960) = 0;
    }

    v45 = *(this + 212);
    v46 = *(this + 54);
    v47 = *(this + 107);
    *(this + 116) = v1;
    v48 = ashp::ring_index_pair<unsigned short>::ring_index_pair(this + 936, v45, v29, v30);
    *(this + 236) = v46;
    *(this + 948) = v47;
    if (!v45)
    {
      goto LABEL_228;
    }

    if ((v1 & 3) != 0)
    {
      goto LABEL_229;
    }

    if ((v46 & 3) != 0)
    {
      goto LABEL_230;
    }

    if ((v47 & 3) != 0)
    {
      goto LABEL_231;
    }

    v50 = __CFADD__(v47, v46 + 16);
    *(this + 238) = v47 + v46 + 16;
    if (v46 >= 0xFFFFFFF0 || v50)
    {
      goto LABEL_232;
    }

    *(this + 960) = 1;
    v51 = ashp::detail::logging::get_log_level(v48);
    if (v51 >= 4)
    {
      v51 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v51)
      {
        v52 = *(this + 104);
        v53 = *(this + 212);
        v54 = *(this + 54);
        v55 = *(this + 107);
        *buf = 136447746;
        *(v8 + 4) = "cr_controller.cpp";
        *&buf[12] = 1024;
        *(v8 + 14) = 198;
        *&buf[18] = 2082;
        *(v8 + 20) = "open";
        *&buf[28] = 1024;
        *(v8 + 30) = v52;
        v285 = 1024;
        LODWORD(p_paddr) = v53;
        WORD2(p_paddr) = 1024;
        *(v8 + 42) = v54;
        v287 = 1024;
        v288 = v55;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) created underlying ring with ring size=%hu, header size=%u, footer size=%u", buf, 0x34u);
      }
    }

    v56 = ashp::detail::logging::get_log_level(v51);
    if (v56)
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) created underlying ring with ring size=%hu, header size=%u, footer size=%u", "cr_controller.cpp", 198, "open", *(this + 104), *(this + 212), *(this + 54), *(this + 107));
    }

    if (*(this + 456) == 1)
    {
      break;
    }

LABEL_106:
    v91 = *(this + 152);
    if (v91)
    {
      goto LABEL_132;
    }

    if (!*(this + 115))
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0xD2, "open", v60);
      _os_crash();
      __break(1u);
LABEL_238:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_150:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] crid %hu cannot be opened", "ring_manager.cpp", 411, "open_cr", *(this + 420));
LABEL_151:
      v129 = 0;
      goto LABEL_152;
    }

    v92 = ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 115, v57, v58, v59);
    paddr = ashp::devmem_mapping::get_paddr(*v92);
    if (paddr == -1)
    {
      v1 = 3758097112;
      if (v12)
      {
        v103 = ashp::detail::logging::get_log_level(0xFFFFFFFFFFFFFFFFLL);
        if (v103 >= 1)
        {
          v103 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v103)
          {
            v104 = *(this + 104);
            *buf = 136446978;
            *(v8 + 4) = "cr_controller.cpp";
            *&buf[12] = 1024;
            *(v8 + 14) = 218;
            *&buf[18] = 2082;
            *(v8 + 20) = "open";
            *&buf[28] = 1024;
            *(v8 + 30) = v104;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) no physical address for ring", buf, 0x22u);
          }
        }

        if (ashp::detail::logging::get_log_level(v103))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) no physical address for ring", "cr_controller.cpp", 218, "open", *(this + 104));
        }

        v1 = 3758097118;
      }

LABEL_172:
      ashp::unsafe_storage<ashp::acipc::completion_mirror>::storage::reset(this + 121);
      if (*(this + 960) == 1)
      {
        *(this + 960) = 0;
      }

      goto LABEL_174;
    }

    if (*(this + 58))
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 58, v93, v94, v95);
      if (ashp::boxed::data::length(*(this + 58), v96, v97, v98) >> 32)
      {
        ashp::detail::control_flow::log_guard_else_failure("cr_controller.cpp", 0xDF, "open", v95);
        ashp::acipc::cr_controller::open(void)::$_13::operator()<unsigned short>((this + 208));
        v1 = 3758097090;
        goto LABEL_172;
      }
    }

    v4 = *(this + 54);
    v8 = *(this + 107);
    ashp::optional<unsigned long long,ashp::optional_sentinel<18446744073709551615ull,false>>::value(&paddr, v93, v94, v95);
    if (*(this + 508) == 1)
    {
      v102 = *(this + 253);
    }

    else
    {
      v102 = -1;
    }

    v247 = v102;
    if (*(this + 512) == 1)
    {
      v105 = *(this + 255);
    }

    else
    {
      v105 = -1;
    }

    v46 = paddr;
    LOWORD(v2) = *(this + 212);
    LOBYTE(v12) = *(this + 248);
    LODWORD(v1) = *(this + 63);
    v238 = *(this + 144);
    v240 = *(this + 81);
    v234 = v105;
    v236 = *(this + 73);
    v242 = *(this + 160);
    v244 = v8;
    if (*(this + 58))
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 58, v99, v100, v101);
      v232 = ashp::boxed::data::bytes(*(this + 58), v106, v107, v108);
      if (*(this + 58))
      {
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 58, v109, v110, v111);
        v3 = ashp::boxed::data::length(*(this + 58), v112, v113, v114);
        LOWORD(v47) = v247;
        goto LABEL_132;
      }

      LOWORD(v47) = v247;
    }

    else
    {
      LOWORD(v47) = v102;
      v232 = 0;
    }

    v3 = 0;
LABEL_132:
    os_unfair_lock_unlock(this + 4);
    v248 = *(this + 3);
    ashp::optional<ashp::acipc::ring_manager,void>::value(v248 + 4264, v115, v116, v117);
    v263 = 0;
    if ((v91 & 1) == 0)
    {
      v249 = v4;
      v250 = v244;
      v251 = v46;
      v252 = v2;
      v253 = v47;
      v254 = v12;
      v255 = v1;
      v256 = v234;
      v257 = v242;
      v258 = v240;
      v259 = v238;
      v260 = v236;
      v261 = v232;
      v262 = v3;
      v263 = 1;
    }

    v47 = 4264;
    v2 = v248;
    os_unfair_lock_lock((v248 + 4264));
    if (*(this + 93) != this)
    {
      goto LABEL_233;
    }

    v120 = ashp::detail::logging::get_log_level(v118);
    v3 = buf;
    if (v120 >= 4)
    {
      v120 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v120)
      {
        v121 = *(this + 420);
        *buf = 136446978;
        *&buf[4] = "ring_manager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 409;
        *&buf[18] = 2082;
        *&buf[20] = "open_cr";
        *&buf[28] = 1024;
        *&buf[30] = v121;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] flushing settlement tracking for crid %hu", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v120))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] flushing settlement tracking for crid %hu", "ring_manager.cpp", 409, "open_cr", *(this + 420));
    }

    os_unfair_lock_assert_owner((v248 + 4264));
    if (!*(this + 194))
    {
      os_unfair_lock_assert_owner((v248 + 4264));
      os_unfair_lock_assert_owner((v248 + 4264));
      if (*(this + 194) || *(this + 196))
      {
        v127 = ashp::detail::logging::get_log_level(max_message_length);
        if (v127 >= 1)
        {
          v127 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v127)
          {
            v128 = *(this + 420);
            *buf = 136446978;
            *&buf[4] = "ring_manager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 411;
            *&buf[18] = 2082;
            *&buf[20] = "open_cr";
            *&buf[28] = 1024;
            *&buf[30] = v128;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] crid %hu cannot be opened", buf, 0x22u);
          }
        }

        v1 = 3758097112;
        if (ashp::detail::logging::get_log_level(v127))
        {
          if (airship_platform_get_global_logger::once == -1)
          {
            goto LABEL_150;
          }

          goto LABEL_238;
        }

        goto LABEL_151;
      }

      if (v263 == 1)
      {
        ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(&v249, v124, v125, v126);
        v143 = v262 + 44;
        if (v262 >= 0xFFFFFFD4)
        {
          v229 = 415;
        }

        else
        {
          v144 = *(v248 + 4280);
          ashp::optional<ashp::acipc::messenger,void>::value(&v144[1236], v140, v141, v142);
          max_message_length = ashp::acipc::messenger::get_max_message_length(v144 + 1236);
          if (v143 <= max_message_length)
          {
            goto LABEL_179;
          }

LABEL_245:
          v229 = 416;
        }

        ashp::detail::control_flow::log_guard_else_failure("ring_manager.cpp", v229, "open_cr", v142);
        v129 = 0;
        v1 = 3758097090;
        v47 = 4264;
        v2 = v248;
LABEL_152:
        os_unfair_lock_unlock((v2 + v47));
        if (v263 == 1)
        {
          v263 = 0;
        }

        os_unfair_lock_lock(this + 4);
        if ((v129 & 1) == 0)
        {
          v136 = ashp::detail::logging::get_log_level(v130);
          if (v136 >= 2)
          {
            v136 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v136)
            {
              v137 = *(this + 104);
              *buf = 136447234;
              *(v3 + 4) = "cr_controller.cpp";
              *(v3 + 14) = 245;
              *&buf[18] = 2082;
              *&buf[12] = 1024;
              *(v3 + 20) = "open";
              *&buf[28] = 1024;
              *(v3 + 30) = v137;
              v285 = 1024;
              LODWORD(p_paddr) = v1;
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) open message failed 0x%x", buf, 0x28u);
            }
          }

          if (ashp::detail::logging::get_log_level(v136))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) open message failed 0x%x", "cr_controller.cpp", 245, "open", *(this + 104), v1);
          }

          goto LABEL_172;
        }

        if (v266 == 1)
        {
          v266 = 0;
        }

        v131 = ashp::detail::logging::get_log_level(v130);
        if (v131 >= 4)
        {
          v131 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v131)
          {
            v132 = *(this + 104);
            *buf = 136446978;
            *(v3 + 4) = "cr_controller.cpp";
            *&buf[12] = 1024;
            *(v3 + 14) = 250;
            *&buf[18] = 2082;
            *(v3 + 20) = "open";
            *&buf[28] = 1024;
            *(v3 + 30) = v132;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) enqueued open message to firmware", buf, 0x22u);
          }
        }

        if (ashp::detail::logging::get_log_level(v131))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) enqueued open message to firmware", "cr_controller.cpp", 250, "open", *(this + 104));
        }

        v1 = 0;
LABEL_174:
        ashp::deferred_action<ashp::acipc::cr_controller::open(void)::$_4>::~deferred_action(&v265, v133, v134, v135);
        goto LABEL_175;
      }

LABEL_179:
      *(this + 781) = 1;
      v145 = *(this + 792);
      v146 = ashp::detail::logging::get_log_level(max_message_length);
      if (v145 == 1)
      {
        if (v146 >= 4)
        {
          v146 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v146)
          {
            v147 = *(this + 420);
            *buf = 136446978;
            *&buf[4] = "ring_manager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 421;
            *&buf[18] = 2082;
            *&buf[20] = "open_cr";
            *&buf[28] = 1024;
            *&buf[30] = v147;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] crid %hu has unmessaged lifecycle, setting open", buf, 0x22u);
          }
        }

        if (ashp::detail::logging::get_log_level(v146))
        {
          if (airship_platform_get_global_logger::once == -1)
          {
            goto LABEL_185;
          }

          goto LABEL_253;
        }

        goto LABEL_186;
      }

      if (v146 >= 4)
      {
        v146 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v146)
        {
          v149 = *(this + 420);
          *buf = 136446978;
          *&buf[4] = "ring_manager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 428;
          *&buf[18] = 2082;
          *&buf[20] = "open_cr";
          *&buf[28] = 1024;
          *&buf[30] = v149;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] crid %hu has unmessaged lifecycle, setting open", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v146))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] crid %hu has unmessaged lifecycle, setting open", "ring_manager.cpp", 428, "open_cr", *(this + 420));
      }

      v150 = *(this + 421);
      os_unfair_lock_assert_owner((v248 + 4264));
      ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v248 + 4528, v151, v152, v153);
      if (*(v248 + 4528) <= v150)
      {
        goto LABEL_244;
      }

      ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v248 + 4528, v154, v155, v156);
      *(*(v248 + 4536) + 2 * v150) = 0;
      ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v248 + 4528, v158, v159, v160);
      *(*(v248 + 4544) + 2 * v150) = 0;
      __dmb(0xBu);
      *(this + 194) = 1;
      ashp::acipc::cr_controller::set_device_ring_status(this, 1);
      ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(&v249, v161, v162, v163);
      v47 = v249;
      v164 = v250;
      v165 = v251;
      v233 = v252;
      v166 = v254;
      v243 = v255;
      v245 = v253;
      v239 = v257;
      v241 = v256;
      v235 = v259;
      v237 = v258;
      v167 = v260;
      v231 = v261;
      v230 = v262;
      os_unfair_lock_assert_owner((v248 + 4264));
      if (*(v248 + 4296) == 1)
      {
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x4B0, "send_cr_open_message", v171);
        _os_crash();
        __break(1u);
      }

      else if (*(this + 194) == 1)
      {
        v172 = *(v248 + 4280);
        ashp::optional<ashp::acipc::config::acipc_config,void>::value(v172 + 3824, v168, v169, v170);
        v173 = *(v172 + 3968);
        ashp::acipc::compute_hdrftr_size_fields(v283, v47, v173, v174);
        if (v283[2])
        {
          ashp::acipc::compute_hdrftr_size_fields(v282, v164, v173, v175);
          if (v282[2])
          {
            v181 = *(this + 421);
            ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v248 + 4528, v177, v178, v179);
            if (v181 < *(v248 + 4528))
            {
              if (*(this + 888) == 1)
              {
                LOWORD(paddr) = 0;
                v186 = *(v248 + 4280);
                ashp::optional<ashp::acipc::config::acipc_config,void>::value(v186 + 3824, v182, v183, v184);
                v190 = ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 872, v187, v188, v189);
                ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(buf, *v190, v191, v192);
                *&buf[8] = *(this + 220);
                v193 = resolve_named_target<ashp::acipc::config::completion_group_spec>(*(v186 + 4152), *(v186 + 4168), buf, &paddr, 0);
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v194, v195, v196);
                if (!v193)
                {
                  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x4E8, "send_cr_open_message", v199);
                  _os_crash();
                  __break(1u);
                }

                *buf = -1;
                ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(buf, paddr, v197, v198);
                v200 = *buf;
              }

              else
              {
                v200 = -1;
              }

              if (v166 < 8)
              {
                LOBYTE(paddr) = 2;
                ashp::optional<unsigned short,void>::value(v283, v182, v183, v184);
                BYTE1(paddr) = v283[0];
                ashp::optional<unsigned short,void>::value(v282, v201, v202, v203);
                BYTE2(paddr) = v282[0];
                ashp::optional<unsigned short,void>::value(v283, v204, v205, v206);
                v207 = v283[1];
                v211 = ashp::optional<unsigned short,void>::value(v282, v208, v209, v210);
                BYTE3(paddr) = v207 & 0xF | (16 * v282[1]);
                HIDWORD(paddr) = *(this + 210);
                v270 = v165;
                v271 = v233;
                v272 = v200;
                v273 = v245;
                v274 = v166;
                v275 = v243;
                v276 = v241;
                v277 = v239;
                v278 = v237;
                v279 = v235;
                v280 = v167;
                v281 = 0;
                v212 = ashp::detail::logging::get_log_level(v211);
                if (v212 >= 4)
                {
                  v212 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                  if (v212)
                  {
                    v213 = *(this + 420);
                    *buf = 136446978;
                    *&buf[4] = "ring_manager.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1284;
                    *&buf[18] = 2082;
                    *&buf[20] = "send_cr_open_message";
                    *&buf[28] = 1024;
                    *&buf[30] = v213;
                    _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sending open message for crid %hu", buf, 0x22u);
                  }
                }

                v214 = ashp::detail::logging::get_log_level(v212);
                if (v214)
                {
                  if (airship_platform_get_global_logger::once != -1)
                  {
                    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                  }

                  ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sending open message for crid %hu", "ring_manager.cpp", 1284, "send_cr_open_message", *(this + 420));
                }

                v215 = ashp::detail::logging::get_log_level(v214);
                if (v215 >= 4)
                {
                  v215 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                  if (v215)
                  {
                    *buf = 136447234;
                    *&buf[4] = "ring_manager.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1285;
                    *&buf[18] = 2082;
                    *&buf[20] = "send_cr_open_message";
                    *&buf[28] = 1040;
                    *&buf[30] = 44;
                    v285 = 2096;
                    p_paddr = &paddr;
                    _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] cr_open %.*P", buf, 0x2Cu);
                  }
                }

                if (ashp::detail::logging::get_log_level(v215))
                {
                  if (airship_platform_get_global_logger::once != -1)
                  {
                    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                  }

                  ashp_log_helper::hexdump(airship_global_logger, &paddr, 0x2CuLL, "[%s:%d:%s] cr_open ", "ring_manager.cpp", 1285, "send_cr_open_message");
                }

                v219 = *(v248 + 4280);
                ashp::optional<ashp::acipc::messenger,void>::value(v219 + 4944, v216, v217, v218);
                ashp::acipc::messenger::send_message(v219 + 4944, &paddr, 44, v231, v230, v248 + 4264, this + 744, ashp::acipc::ring_manager::cr_open_message_completed);
                goto LABEL_221;
              }

LABEL_252:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x4EC, "send_cr_open_message", v185);
              _os_crash();
              __break(1u);
LABEL_253:
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_185:
              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] crid %hu has unmessaged lifecycle, setting open", "ring_manager.cpp", 421, "open_cr", *(this + 420));
LABEL_186:
              if (v263 != 1)
              {
                ashp::acipc::ring_manager::set_cr_open((v248 + v47), (this + 744));
                ashp::acipc::ring_manager::check_all_cr_close_requests((v248 + 4264));
LABEL_221:
                ashp::acipc::ring_manager::recompute_closed_ring_availability((v248 + 4264));
                v1 = 0;
                v129 = 1;
                v47 = 4264;
                goto LABEL_152;
              }

              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x1A6, "open_cr", v148);
              _os_crash();
              __break(1u);
LABEL_244:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x235, "clear_cr_indices", v157);
              _os_crash();
              __break(1u);
              goto LABEL_245;
            }

LABEL_251:
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x4E1, "send_cr_open_message", v185);
            _os_crash();
            __break(1u);
            goto LABEL_252;
          }

LABEL_250:
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x4DF, "send_cr_open_message", v180);
          _os_crash();
          __break(1u);
          goto LABEL_251;
        }

LABEL_249:
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x4DD, "send_cr_open_message", v176);
        _os_crash();
        __break(1u);
        goto LABEL_250;
      }

      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x4B1, "send_cr_open_message", v171);
      _os_crash();
      __break(1u);
      goto LABEL_249;
    }

LABEL_234:
    v12 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x19A, "open_cr", v122);
    _os_crash();
    __break(1u);
LABEL_235:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  v61 = ashp::detail::logging::get_log_level(v56);
  if (v61 >= 4)
  {
    v61 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v61)
    {
      v62 = *(this + 104);
      *buf = 136446978;
      *(v8 + 4) = "cr_controller.cpp";
      *&buf[12] = 1024;
      *(v8 + 14) = 202;
      *&buf[18] = 2082;
      *(v8 + 20) = "open";
      *&buf[28] = 1024;
      *(v8 + 30) = v62;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) created completion mirror", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v61))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) created completion mirror", "cr_controller.cpp", 202, "open", *(this + 104));
  }

  ashp::unsafe_storage<ashp::acipc::completion_mirror>::storage::reset(this + 121);
  v63 = *(this + 212);
  v64 = *(this + 54);
  v65 = *(this + 107);
  *(this + 242) = 0;
  ashp::ring_index_pair<unsigned short>::ring_index_pair(this + 972, v63, v66, v67);
  v1 = this + 984;
  *(this + 123) = 0;
  *(this + 124) = 0;
  *(this + 504) = 0;
  *(this + 125) = 0;
  *(this + 267) = 0;
  *(this + 1012) = 0u;
  *(this + 1028) = 0u;
  *(this + 1044) = 0u;
  *(this + 1058) = 0;
  ashp::acipc::detail::completion_mirror::buffer_array::buffer_array(buf, *(this + 486), v64, v68);
  v70 = *&buf[16];
  v71 = *v8;
  memset(buf, 0, 24);
  v72 = *(this + 123);
  *(this + 984) = v71;
  v73 = *(this + 125);
  *(this + 125) = v70;
  if (v72 && !v73)
  {
    goto LABEL_225;
  }

  if (v73)
  {
    free(v73);
    v74 = *buf;
    v75 = *&buf[16];
    *(this + 126) = *&buf[24];
    if (v74 && !v75)
    {
      goto LABEL_225;
    }

    *buf = 0;
    if (v75)
    {
      free(v75);
    }
  }

  else
  {
    *(this + 126) = *&buf[24];
    *buf = 0;
  }

  ashp::acipc::detail::completion_mirror::buffer_array::buffer_array(buf, *(this + 486), v65, v69);
  v76 = *&buf[16];
  v77 = *v8;
  memset(buf, 0, 24);
  v78 = *(this + 130);
  *(this + 65) = v77;
  v79 = *(this + 132);
  *(this + 132) = v76;
  if (v78 && !v79)
  {
    goto LABEL_225;
  }

  if (v79)
  {
    free(v79);
    v80 = *buf;
    v81 = *&buf[16];
    *(this + 133) = *&buf[24];
    if (v80 && !v81)
    {
      goto LABEL_225;
    }

    *buf = 0;
    if (v81)
    {
      free(v81);
    }
  }

  else
  {
    *(this + 133) = *&buf[24];
    *buf = 0;
  }

  v47 = *(this + 486);
  *&v82 = 0;
  *(&v82 + 1) = v47;
  if (!*(this + 486))
  {
    v86 = 0;
LABEL_95:
    v88 = *(this + 127);
    *(this + 1016) = v82;
    v89 = *(this + 129);
    *(this + 129) = v86;
    if (v88 && !v89)
    {
LABEL_225:
      __break(1u);
LABEL_226:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0xAC, "open", v18);
      _os_crash();
      __break(1u);
LABEL_227:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0xC2, "open", v31);
      _os_crash();
      __break(1u);
LABEL_228:
      ashp::detail::control_flow::log_guard_else_failure("cr_ring.cpp", 0x13, "cr_ring", v49);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: bad parameter - 'size'", "cr_ring.cpp", 0x13, "cr_ring", v220);
      _os_crash();
      __break(1u);
LABEL_229:
      ashp::detail::control_flow::log_guard_else_failure("cr_ring.cpp", 0x14, "cr_ring", v49);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: bad parameter - 'memory'", "cr_ring.cpp", 0x14, "cr_ring", v221);
      _os_crash();
      __break(1u);
LABEL_230:
      ashp::detail::control_flow::log_guard_else_failure("cr_ring.cpp", 0x15, "cr_ring", v49);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: bad parameter - 'header_length'", "cr_ring.cpp", 0x15, "cr_ring", v222);
      _os_crash();
      __break(1u);
LABEL_231:
      ashp::detail::control_flow::log_guard_else_failure("cr_ring.cpp", 0x16, "cr_ring", v49);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: bad parameter - 'footer_length'", "cr_ring.cpp", 0x16, "cr_ring", v223);
      _os_crash();
      __break(1u);
LABEL_232:
      ashp::detail::control_flow::log_guard_else_failure("cr_ring.cpp", 0x18, "cr_ring", v49);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: oversize ring", "cr_ring.cpp", 0x18, "cr_ring", v224);
      _os_crash();
      __break(1u);
LABEL_233:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x198, "open_cr", v119);
      _os_crash();
      __break(1u);
      goto LABEL_234;
    }

    if (v89)
    {
      free(v89);
    }

    v90 = ashp::detail::logging::get_log_level(v89);
    if (v90 >= 4)
    {
      v90 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v90)
      {
        *buf = 136446722;
        *(v8 + 4) = "completion_mirror.cpp";
        *&buf[12] = 1024;
        *(v8 + 14) = 69;
        *&buf[18] = 2082;
        *(v8 + 20) = "completion_mirror";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] created completion mirror object", buf, 0x1Cu);
      }
    }

    if (!ashp::detail::logging::get_log_level(v90))
    {
      goto LABEL_105;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_104:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] created completion mirror object", "completion_mirror.cpp", 69, "completion_mirror");
LABEL_105:
      *(this + 1072) = 1;
      goto LABEL_106;
    }

LABEL_240:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_104;
  }

  v246 = v82;
  if (((20 * v47) & 4) != 0)
  {
    v83 = ((20 * v47) & 0x1FFFF8) + 8;
  }

  else
  {
    v83 = 20 * v47;
  }

  v84 = malloc_type_aligned_alloc(8uLL, v83, 0x1000040A86A77D5uLL);
  v86 = v84;
  if (!v84)
  {
    v12 = "dynamic_array.hpp";
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v85);
    v47 = "ALLOCATION FAILURE (or BUG) in Airship";
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v228);
    _os_crash();
    __break(1u);
    goto LABEL_240;
  }

  v82 = v246;
  while (v82 < *(&v246 + 1))
  {
    v87 = &v84[20 * v82];
    *v87 = 0;
    *(v87 + 1) = 0;
    *(v87 + 4) = 0;
    *&v82 = v82 + 1;
    if (!--v47)
    {
      goto LABEL_95;
    }
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v18);
  _os_crash();
  __break(1u);
LABEL_223:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0xA3, "open", v7);
  _os_crash();
  __break(1u);
LABEL_224:
  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_8:
  ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is already terminated", "cr_controller.cpp", 164, "open", *(this + 104));
LABEL_175:
  os_unfair_lock_unlock(this + 4);
  os_unfair_lock_unlock(this + 36);
  v138 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_23ECAFD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  ashp::unsafe_storage<ashp::acipc::completion_mirror>::storage::reset((v37 + 968));
  if (*(v37 + 960) == 1)
  {
    *(v37 + 960) = 0;
  }

  ashp::deferred_action<ashp::acipc::cr_controller::open(void)::$_4>::~deferred_action(&a37, v39, v40, v41);
  os_unfair_lock_unlock((v37 + 16));
  os_unfair_lock_unlock((v37 + 144));
  _Unwind_Resume(a1);
}

void ashp::acipc::cr_controller::open(void)::$_6::operator()<unsigned short>(ashp::detail::logging *a1)
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
      v6 = "cr_controller.cpp";
      v7 = 1024;
      v8 = 188;
      v9 = 2082;
      v10 = "open";
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) failed to create mapped memory", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) failed to create mapped memory", "cr_controller.cpp", 188, "open", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::cr_controller::open(void)::$_13::operator()<unsigned short>(ashp::detail::logging *a1)
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
      v6 = "cr_controller.cpp";
      v7 = 1024;
      v8 = 222;
      v9 = 2082;
      v10 = "open";
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) open client data invalid", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) open client data invalid", "cr_controller.cpp", 222, "open", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

_BYTE *ashp::deferred_action<ashp::acipc::cr_controller::open(void)::$_4>::~deferred_action(_BYTE *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a1[8] == 1)
  {
    v5 = *a1;
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset((*a1 + 920), a2, a3, a4);
    v12[1] = 0;
    v12[2] = 0x200000000;
    v12[0] = 0;
    ashp::buffer_mapping::operator=(v5 + 896, v12, v6, v7);
    ashp::buffer_mapping::~buffer_mapping(v12, v8, v9, v10);
    if (a1[8] == 1)
    {
      a1[8] = 0;
    }
  }

  return a1;
}

uint64_t ashp::acipc::cr_controller::close(os_unfair_lock_s *this)
{
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 36);
  os_unfair_lock_lock(this + 4);
  if ((this[126]._os_unfair_lock_opaque & 0x100) == 0)
  {
    v6 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x103, "close", v3);
    _os_crash();
    __break(1u);
    goto LABEL_30;
  }

  if (LOBYTE(this[8]._os_unfair_lock_opaque) != 1)
  {
    v7 = ashp::acipc::ring_controller::compute_state(&this[130]);
    if (v7 <= 7)
    {
      if (((1 << v7) & 0x2C) != 0)
      {
        log_level = ashp::detail::logging::get_log_level(v7);
        if (log_level >= 3)
        {
          log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (log_level)
          {
            os_unfair_lock_opaque_low = LOWORD(this[52]._os_unfair_lock_opaque);
            *buf = 136446978;
            v23 = "cr_controller.cpp";
            v24 = 1024;
            v25 = 275;
            v26 = 2082;
            v27 = "close";
            v28 = 1024;
            v29 = os_unfair_lock_opaque_low;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) sending close message", buf, 0x22u);
          }
        }

        if (ashp::detail::logging::get_log_level(log_level))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) sending close message", "cr_controller.cpp", 275, "close", LOWORD(this[52]._os_unfair_lock_opaque));
        }

        os_unfair_lock_unlock(this + 4);
        v10 = *&this[6]._os_unfair_lock_opaque;
        ashp::optional<ashp::acipc::ring_manager,void>::value(&v10[1066], v11, v12, v13);
        ashp::acipc::ring_manager::close_cr(v10 + 1066, this, v14, v15, v16);
        os_unfair_lock_lock(this + 4);
        v18 = ashp::detail::logging::get_log_level(v17);
        if (v18 >= 3)
        {
          v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            v19 = LOWORD(this[52]._os_unfair_lock_opaque);
            *buf = 136446978;
            v23 = "cr_controller.cpp";
            v24 = 1024;
            v25 = 279;
            v26 = 2082;
            v27 = "close";
            v28 = 1024;
            v29 = v19;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) close complete", buf, 0x22u);
          }
        }

        if (ashp::detail::logging::get_log_level(v18))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) close complete", "cr_controller.cpp", 279, "close", LOWORD(this[52]._os_unfair_lock_opaque));
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
  if (v4 >= 1)
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v5 = LOWORD(this[52]._os_unfair_lock_opaque);
      *buf = 136446978;
      v23 = "cr_controller.cpp";
      v24 = 1024;
      v25 = 260;
      v26 = 2082;
      v27 = "close";
      v28 = 1024;
      v29 = v5;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is already terminated", buf, 0x22u);
    }
  }

  v6 = 3758097088;
  if (ashp::detail::logging::get_log_level(v4))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is already terminated", "cr_controller.cpp", 260, "close", LOWORD(this[52]._os_unfair_lock_opaque));
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

void sub_23ECB05F8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 4);
  os_unfair_lock_unlock(v1 + 36);
  _Unwind_Resume(a1);
}

void ashp::acipc::cr_controller::sync(ashp::acipc::cr_controller *this, char a2)
{
  v205 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 4);
  if ((*(this + 505) & 1) == 0)
  {
LABEL_159:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x120, "sync", v5);
    _os_crash();
    __break(1u);
LABEL_160:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_8:
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is already terminated", "cr_controller.cpp", 289, "sync", *(this + 104));
    goto LABEL_157;
  }

  if (*(this + 32) == 1)
  {
    log_level = ashp::detail::logging::get_log_level(v4);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v7 = *(this + 104);
        *buf = 136446978;
        *&buf[4] = "cr_controller.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 289;
        *&buf[18] = 2082;
        *&buf[20] = "sync";
        *v202 = 1024;
        *&v202[2] = v7;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is already terminated", buf, 0x22u);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_157;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_160;
  }

  if ((*(this + 537) & 1) == 0)
  {
    v136 = ashp::detail::logging::get_log_level(v4);
    if (v136 >= 2)
    {
      v136 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v136)
      {
        v137 = *(this + 104);
        *buf = 136446978;
        *&buf[4] = "cr_controller.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 290;
        *&buf[18] = 2082;
        *&buf[20] = "sync";
        *v202 = 1024;
        *&v202[2] = v137;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is not open", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v136))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
LABEL_164:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is not open", "cr_controller.cpp", 290, "sync", *(this + 104));
    }

    goto LABEL_157;
  }

  if ((a2 & 1) == 0)
  {
LABEL_157:
    os_unfair_lock_unlock(this + 4);
    v176 = *MEMORY[0x277D85DE8];
    return;
  }

  os_unfair_lock_lock(this + 37);
  os_unfair_lock_lock(this + 174);
  buf[8] = 0;
  if (*(this + 736) == 1)
  {
    *buf = *(this + 91);
    buf[8] = 1;
  }

  os_unfair_lock_unlock(this + 174);
  ashp::optional<unsigned long long,void>::value(buf, v8, v9, v10);
  ashp::monitor_target::update_value(this + 174, *buf & 0xFFFFFFFE);
  os_unfair_lock_unlock(this + 37);
  v11 = *(this + 104);
  v181 = (this + 208);
  ashp::detail::logging::ktrace_helper::ktrace_helper(v189, 102842496);
  os_unfair_lock_assert_owner(this + 4);
  if ((*(this + 537) & 1) == 0)
  {
    v138 = ashp::detail::logging::get_log_level(v12);
    if (v138 >= 2)
    {
      v138 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v138)
      {
        v139 = *v181;
        *buf = 136446978;
        *&buf[4] = "cr_controller.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 710;
        *&buf[18] = 2082;
        *&buf[20] = "sync_action_process_hi_update";
        *v202 = 1024;
        *&v202[2] = v139;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is not open", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v138))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is not open", "cr_controller.cpp", 710, "sync_action_process_hi_update", *v181);
    }

    goto LABEL_156;
  }

  if (*(this + 1208))
  {
LABEL_156:
    ashp::detail::logging::ktrace_helper::~ktrace_helper(v189);
    goto LABEL_157;
  }

  ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v13, v14, v15);
  v180 = *(this + 470);
  v16 = *(this + 104);
  head_index = ashp::acipc::ring_controller::read_head_index((this + 520), v17, v18, v19, v20);
  v22 = mach_continuous_time();
  os_unfair_lock_lock(this + 322);
  if (*(this + 323))
  {
    v25 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::operator[](this + 164, *(this + 324), v23, v24);
    *v25 = v16;
    *(v25 + 2) = head_index;
    *(v25 + 4) = v180;
    *(v25 + 6) = -1;
    *(v25 + 8) = v22;
    v26 = *(this + 324);
    v27 = __CFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      v29 = *(this + 323);
    }

    else
    {
      v29 = 0;
    }

    *(this + 324) = (v28 - v29) % *(this + 323);
  }

  os_unfair_lock_unlock(this + 322);
  while (1)
  {
    v34 = ashp::acipc::ring_controller::read_head_index((this + 520), v30, v31, v32, v33);
    ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v35, v36, v37);
    if (v34 == *(this + 469))
    {
      break;
    }

    v41 = ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v38, v39, v40);
    v45 = *(this + 468);
    if (v45 <= v34 || ((v46 = *(this + 469), ((v34 - v46) & 0xFFFF0000) == 0) ? (v47 = 0) : (v47 = *(this + 468)), (v48 = (v47 + v34 - v46), v49 = v46 - *(this + 470), (v49 & 0xFFFF0000) == 0) ? (v50 = 0) : (v50 = *(this + 468)), v48 > (v45 + ~(v50 + v49))))
    {
      v140 = ashp::detail::logging::get_log_level(v41);
      if (v140 >= 2)
      {
        v140 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v140)
        {
          v141 = *v181;
          *buf = 136447234;
          *&buf[4] = "cr_controller.cpp";
          *&buf[14] = 732;
          *&buf[18] = 2082;
          *&buf[12] = 1024;
          *&buf[20] = "sync_action_process_hi_update";
          *v202 = 1024;
          *&v202[2] = v141;
          *&v202[6] = 1024;
          *&v202[8] = v34;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) invalid hi: %hu", buf, 0x28u);
        }
      }

      if (ashp::detail::logging::get_log_level(v140))
      {
        if (airship_platform_get_global_logger::once == -1)
        {
          goto LABEL_127;
        }

        goto LABEL_166;
      }

      goto LABEL_128;
    }

    ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v42, v43, v44);
    v52 = *(this + 468);
    if (v52 <= v34 || ((v53 = *(this + 469), ((v34 - v53) & 0xFFFF0000) == 0) ? (v54 = 0) : (v54 = *(this + 468)), (v55 = (v54 + v34 - v53), v56 = v53 - *(this + 470), (v56 & 0xFFFF0000) == 0) ? (v57 = 0) : (v57 = *(this + 468)), v55 > (v52 + ~(v57 + v56))))
    {
LABEL_163:
      ashp::detail::control_flow::log_guard_else_failure("ring_index_pair.hpp", 0x87, "update_head_index", v51);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: invalid head index update operation", "ring_index_pair.hpp", 0x87, "update_head_index", v178);
      _os_crash();
      __break(1u);
      goto LABEL_164;
    }

    *(this + 469) = v34;
    __dmb(9u);
    os_unfair_lock_assert_owner(this + 4);
    lock = 0;
    v199 = 0;
    v182 = v34;
    while (1)
    {
      ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v58, v59, v60);
      v61 = *(this + 468);
      if (((*(this + 469) - *(this + 470)) & 0xFFFF0000) == 0)
      {
        v61 = 0;
      }

      if (v61 == (*(this + 470) - *(this + 469)))
      {
        break;
      }

      if (*(this + 456) == 1)
      {
        ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(this + 968, v30, v31, v32);
        v62 = *(this + 487) - *(this + 488);
        v63 = (v62 & 0xFFFF0000) != 0 ? *(this + 486) : 0;
        if (*(this + 486) == (v62 + v63 + 1))
        {
          break;
        }
      }

      v195 = 0;
      v196 = 0;
      ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v30, v31, v32);
      ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v64, v65, v66);
      ashp::acipc::cr_ring::copy_descriptor((this + 928), *(this + 470), &v197, &v196, &v195);
      v193[0] = this;
      v193[1] = &v197;
      v194 = 1;
      if ((v197 & 0xC) != 0 || (v70 = WORD1(v197), !WORD1(v197)) && (*(this + 152) & 1) == 0 && *(this + 504) == 1)
      {
        if (*(this + 456) == 1)
        {
          v204 = v197;
          ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(this + 968, v67, v68, v69);
          *buf = 1;
          *&buf[4] = v204;
          ashp::acipc::completion_mirror::append_element(this + 242, buf, v196, v195);
        }
      }

      else
      {
        if (v199 != 1 || (ashp::optional<ashp::acipc::name_and_selector,void>::value(&v198, v67, v68, v69), WORD4(v198) != v70))
        {
          if (lock)
          {
            os_unfair_lock_unlock(lock);
          }

          if (v199 == 1)
          {
            v199 = 0;
          }

          v71 = *(this + 145);
          if (!v71)
          {
LABEL_93:
            ashp::detail::control_flow::log_guard_else_failure("cr_controller.cpp", 0x343, "process_completion_descriptors", v69);
            v133 = ashp::detail::logging::get_log_level(v132);
            if (v133 >= 1)
            {
              v133 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v133)
              {
                v134 = *v181;
                *buf = 136447234;
                *&buf[4] = "cr_controller.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 835;
                *&buf[18] = 2082;
                *&buf[20] = "process_completion_descriptors";
                *v202 = 1024;
                *&v202[2] = v134;
                *&v202[6] = 1024;
                *&v202[8] = v70;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) trid %hu does not accept completions from this cr", buf, 0x28u);
              }
            }

            if (ashp::detail::logging::get_log_level(v133))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) trid %hu does not accept completions from this cr", "cr_controller.cpp", 835, "process_completion_descriptors", *v181, v70);
            }

            lock = 0;
            goto LABEL_101;
          }

          v72 = *(this + 147);
          v73 = 16 * v71;
          while (*(v72 + 4) != v70)
          {
            ++v72;
            v73 -= 16;
            if (!v73)
            {
              goto LABEL_93;
            }
          }

          v198 = *v72;
          v199 = 1;
          ashp::optional<ashp::acipc::name_and_selector,void>::value(&v198, v67, v68, v69);
          lock = (v198 + 16);
          os_unfair_lock_lock((v198 + 16));
        }

        v74 = v197;
        v75 = BYTE1(v197);
        v183 = *(this + 104);
        v184 = WORD2(v197);
        v76 = WORD3(v197);
        v78 = DWORD2(v197);
        v77 = HIDWORD(v197);
        v186 = v195;
        v187 = v196;
        v79 = *(this + 54);
        v185 = *(this + 107);
        ashp::optional<ashp::acipc::name_and_selector,void>::value(&v198, v67, v68, v69);
        v80 = v198;
        os_unfair_lock_assert_owner((v198 + 16));
        v81 = *(v80 + 208);
        v82 = ashp::detail::logging::ktrace_helper::ktrace_helper(&v204, 102842576);
        ashp::detail::logging::ktrace_helper::~ktrace_helper(v82);
        if ((*(v80 + 632) & 1) == 0)
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x2A0, "complete_transfer", v86);
          _os_crash();
          __break(1u);
LABEL_162:
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x2A1, "complete_transfer", v86);
          _os_crash();
          __break(1u);
          goto LABEL_163;
        }

        if (*(v80 + 1457) == 1)
        {
          goto LABEL_162;
        }

        ashp::optional<ashp::acipc::transfer_queue,void>::value(v80 + 1168, v83, v84, v85);
        buf[0] = v74;
        buf[1] = v75;
        *&buf[2] = v184;
        *&buf[4] = v78 >> 8;
        *&buf[6] = v183;
        *&buf[8] = v76 & 0xFF00FFFF | (v78 << 16);
        *&buf[12] = v77;
        *&buf[16] = v187;
        *&buf[24] = v79;
        *v202 = 0;
        *&v202[4] = v186;
        v203 = v185;
        v92 = ashp::acipc::transfer_queue::complete_transfer(v80 + 1168, buf, v87, v88);
        if ((v92 & 1) == 0)
        {
          ashp::optional<ashp::acipc::tr_ring,void>::value(v80 + 1128, v89, v90, v91);
          *buf = *(v80 + 1138);
          ashp::optional<ashp::acipc::tr_ring,void>::value(v80 + 1128, v126, v127, v128);
          v200 = *(v80 + 1140);
          ashp::acipc::tr_controller::complete_transfer(ashp::acipc::transfer_queue::transfer_completion)::$_0::operator()<unsigned short,unsigned short,unsigned short>((v80 + 208), buf, &v200);
          ashp::optional<ashp::acipc::transfer_queue,void>::value(v80 + 1168, v129, v130, v131);
          ashp::acipc::transfer_queue::print_queue_stats((v80 + 1168));
        }

        v93 = ashp::optional<ashp::acipc::transfer_queue,void>::value(v80 + 1168, v89, v90, v91);
        if (*(v80 + 1248))
        {
          ashp::acipc::tr_controller::set_sync_flags(v80, 4u);
        }

        if (*(v80 + 648) == 0 && (v92 & 1) != 0)
        {
          v93 = ashp::optional<ashp::acipc::transfer_queue,void>::value(v80 + 1168, v67, v68, v69);
          if (!*(v80 + 1236))
          {
            ashp::acipc::tr_controller::set_settled(v80);
          }
        }

        v34 = v182;
        if ((v92 & 1) == 0)
        {
          ashp::detail::control_flow::log_guard_else_failure("cr_controller.cpp", 0x355, "process_completion_descriptors", v69);
          ashp::acipc::cr_controller::process_completion_descriptors(void)::$_2::operator()<unsigned short>(v181);
LABEL_101:
          ashp::deferred_action<ashp::acipc::cr_controller::process_completion_descriptors(void)::$_0>::~deferred_action(v193);
          v135 = 0;
          goto LABEL_103;
        }

        if (*(this + 456) == 1)
        {
          v94 = v197;
          v95 = ashp::detail::logging::get_log_level(v93);
          if (v95 >= 4)
          {
            v95 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v95)
            {
              v96 = *v181;
              *buf = 136447490;
              *&buf[4] = "cr_controller.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 865;
              *&buf[18] = 2082;
              *&buf[20] = "process_completion_descriptors";
              *v202 = 1024;
              *&v202[2] = v96;
              *&v202[6] = 1024;
              *&v202[8] = v70;
              LOWORD(v203) = 1024;
              *(&v203 + 2) = WORD2(v92);
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) inserting completion with trid %hu and first tag %hu", buf, 0x2Eu);
            }
          }

          if (ashp::detail::logging::get_log_level(v95))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) inserting completion with trid %hu and first tag %hu", "cr_controller.cpp", 865, "process_completion_descriptors", *v181, v70, WORD2(v92));
          }

          ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(this + 968, v97, v98, v99);
          *buf = 0;
          buf[4] = v94;
          *&buf[6] = v70;
          *&buf[8] = WORD1(v92);
          *&buf[10] = WORD2(v92);
          *&buf[12] = 0;
          ashp::acipc::completion_mirror::append_element(this + 242, buf, v187, v186);
        }
      }

      if (v194 == 1)
      {
        v194 = 0;
      }

      ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v67, v68, v69);
      ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v100, v101, v102);
      v105 = *(this + 470);
      if (*(this + 468) <= v105 || *(this + 469) == v105)
      {
        ashp::detail::control_flow::log_guard_else_failure("cr_ring.cpp", 0x2D, "scribble_descriptor", v104);
        ashp::detail::base::log_pre_crash_message("BUG in Airship: requested CD element is inactive", "cr_ring.cpp", 0x2D, "scribble_descriptor", v177);
        _os_crash();
        __break(1u);
        goto LABEL_159;
      }

      entry_at_index = ashp::acipc::cr_ring::get_entry_at_index((this + 928), v105, v103, v104);
      bzero(entry_at_index, *(this + 238));
      *v202 = 0;
      *&buf[20] = 0;
      *buf = *(this + 104);
      *&buf[4] = v197;
      ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v107, v108, v109);
      v112 = *(this + 474);
      if (v112 >= 0x10)
      {
        LOWORD(v112) = 16;
      }

      *&buf[2] = v112;
      ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_completion_descr_info>::append_record(this + 310, buf, v110, v111);
      ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v113, v114, v115);
      ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v116, v117, v118);
      v119 = *(this + 468);
      ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v120, v121, v122);
      v125 = *(this + 470) % v119;
      if (v119 != 1)
      {
        LOWORD(v125) = v125 + 1;
      }

      ashp::ring_index_pair<unsigned short>::update_tail_index(this + 468, v125 % v119, v123, v124);
      ashp::deferred_action<ashp::acipc::cr_controller::process_completion_descriptors(void)::$_0>::~deferred_action(v193);
    }

    v135 = 1;
LABEL_103:
    if (lock)
    {
      os_unfair_lock_unlock(lock);
    }

    if ((v135 & 1) == 0)
    {
      v166 = ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v30, v31, v32);
      v167 = *(this + 470);
      v168 = ashp::detail::logging::get_log_level(v166);
      if (v168 >= 2)
      {
        v168 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v168)
        {
          v169 = *v181;
          *buf = 136447234;
          *&buf[4] = "cr_controller.cpp";
          *&buf[14] = 740;
          *&buf[18] = 2082;
          *&buf[12] = 1024;
          *&buf[20] = "sync_action_process_hi_update";
          *v202 = 1024;
          *&v202[2] = v169;
          *&v202[6] = 1024;
          *&v202[8] = v167;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) invalid completion descriptor at idx=%hu", buf, 0x28u);
        }
      }

      if (ashp::detail::logging::get_log_level(v168))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) invalid completion descriptor at idx=%hu", "cr_controller.cpp", 740, "sync_action_process_hi_update", *v181, v167);
      }

      v142 = 512;
      goto LABEL_150;
    }

    if (*(this + 616) == 1)
    {
      ashp::acipc::ring_controller::arm_index_signal((this + 520), v34, v31, v32, v33);
    }
  }

  ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v38, v39, v40);
  v143 = *(this + 470);
  if (v143 == v180)
  {
    goto LABEL_155;
  }

  os_unfair_lock_assert_owner(this + 4);
  v148 = (this + 1184);
  v149 = *(this + 148);
  if (v149)
  {
    v150 = 0;
    v151 = 0;
    while (v149 > v151)
    {
      v152 = *(this + 150) + v150;
      if (*(v152 + 10) == 1)
      {
        ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v144, v145, v146);
        v153 = *(this + 468);
        ashp::optional<unsigned short,void>::value(v152 + 8, v154, v155, v156);
        v157 = *(v152 + 8);
        ashp::optional<ashp::acipc::tr_ring,void>::value(this + 928, v158, v159, v160);
        v161 = v157 % v153 + v180 / v153 * v153 - v180;
        if ((v161 & 0xFFFF0000) != 0)
        {
          v162 = v153;
        }

        else
        {
          v162 = 0;
        }

        v163 = (v162 + v161);
        v164 = *(this + 468);
        v165 = v143 % v164 + v180 / v164 * v164 - v180;
        if ((v165 & 0xFFFF0000) == 0)
        {
          LOWORD(v164) = 0;
        }

        if (v163 <= (v164 + v165))
        {
          ashp::acipc::tr_controller::completion_ring_did_flush(*v152, this);
          ++v151;
          v149 = *v148;
          v150 += 16;
          if (v151 < *v148)
          {
            continue;
          }
        }
      }

      goto LABEL_152;
    }

    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", v146);
    v34 = "BUG in Airship: bad array access";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v179);
    _os_crash();
    __break(1u);
LABEL_166:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_127:
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) invalid hi: %hu", "cr_controller.cpp", 732, "sync_action_process_hi_update", *v181, v34);
LABEL_128:
    v142 = 256;
LABEL_150:
    ashp::acipc::cr_controller::raise_error(this, v142);
    goto LABEL_156;
  }

  v151 = 0;
LABEL_152:
  ashp::dynamic_array<ashp::acipc::cr_controller::flush_tracker>::erase<int,0>(this + 148, 0, v151, v146, v147);
  if ((*(this + 532) & 1) != 0 || (__dmb(0xBu), ashp::acipc::ring_controller::write_tail_index((this + 520), v143, v170, v171, v172), *(this + 272) != 1) || (__dmb(0xBu), v173 = ashp::acipc::doorbell_participant::schedule_doorbell_update((this + 1080), *(this + 118), *(this + 119), v143), ashp::detail::control_flow::check_err_with_debug(v173, "cr_controller.cpp", 0x2F9, "sync_action_process_hi_update", v174)))
  {
LABEL_155:
    v190 = *v181;
    v191 = v180;
    v192 = v143;
    goto LABEL_156;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x2F9, "sync_action_process_hi_update", v175);
  _os_crash();
  __break(1u);
}

void sub_23ECB17EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, os_unfair_lock_t lock, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  ashp::deferred_action<ashp::acipc::cr_controller::process_completion_descriptors(void)::$_0>::~deferred_action(&a32);
  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }

  ashp::detail::logging::ktrace_helper::~ktrace_helper(&a27);
  os_unfair_lock_unlock(v32 + 4);
  _Unwind_Resume(a1);
}

void ashp::acipc::cr_controller::raise_error(uint64_t a1, int a2)
{
  os_unfair_lock_assert_owner((a1 + 16));
  ashp::acipc::cr_controller::flush_all_transfer_rings(a1);
  ashp::acipc::acipc_driver::raise_ipc_error(*(a1 + 24), a2);
  *(a1 + 1208) = 1;
}

unint64_t *ashp::dynamic_array<ashp::acipc::cr_controller::flush_tracker>::erase<int,0>(unint64_t *result, unint64_t a2, unint64_t a3, unint64_t a4, const char *a5)
{
  if (a2 > a3)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x22B, "erase", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x22B, "erase", v20);
    _os_crash();
    __break(1u);
    goto LABEL_26;
  }

  v5 = *result;
  if (*result < a3)
  {
LABEL_26:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x22C, "erase", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x22C, "erase", v21);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (a2 < a3)
  {
    v6 = v5 - a3;
    if (v5 > a3)
    {
      v7 = result[2];
      v8 = 16 * a3;
      v9 = 16 * a2;
      a2 = v5 + a2 - a3;
      v10 = v7;
      do
      {
        v11 = v10 + v9;
        v12 = *(v10 + v9);
        if ((*(v10 + v9 + 10) & 1) == 0)
        {
          v17 = v10 + v8;
          *v11 = *(v10 + v8);
          if ((*(v10 + v8 + 10) & 1) != 0 && (a4 = *(v17 + 8), *(v17 + 10) = 0, a5 = *(v11 + 10), *(v10 + v9 + 8) = a4, (a5 & 1) == 0))
          {
            *(v11 + 10) = 1;
            v19 = *(v17 + 10);
            *(v10 + v8) = v12;
            if (v19)
            {
              *(v17 + 10) = 0;
            }
          }

          else
          {
            *(v10 + v8) = v12;
          }

          goto LABEL_15;
        }

        v13 = *(v11 + 8);
        *(v11 + 10) = 0;
        a4 = v10 + v8;
        *v11 = *(v10 + v8);
        v14 = (v7 + 16 * a3 + 10);
        a5 = *(v10 + v8 + 10);
        if (a5)
        {
          a5 = (v10 + v9);
          v15 = *(a4 + 8);
          *(a4 + 10) = 0;
          a4 = *(v11 + 10);
          *(v10 + v9 + 8) = v15;
          if (a4)
          {
            v16 = v10 + v8;
            *v16 = v12;
            *(v16 + 8) = v13;
          }

          else
          {
            v18 = v10 + v8;
            *(v11 + 10) = 1;
            *v18 = v12;
            *(v18 + 8) = v13;
            v14 = (v10 + v8 + 10);
            if (*v14)
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
          *(v10 + v8) = v12;
          *(a4 + 8) = v13;
        }

        *v14 = 1;
LABEL_15:
        v10 += 16;
        ++a3;
        --v6;
      }

      while (v6);
    }

    return ashp::dynamic_array<ashp::acipc::cr_controller::flush_tracker>::truncate(result, a2, a3, a4, a5);
  }

  return result;
}

void ashp::acipc::cr_controller::process_completion_descriptors(void)::$_2::operator()<unsigned short>(ashp::detail::logging *a1)
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
      v6 = "cr_controller.cpp";
      v7 = 1024;
      v8 = 853;
      v9 = 2082;
      v10 = "process_completion_descriptors";
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) failed to complete transfer", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) failed to complete transfer", "cr_controller.cpp", 853, "process_completion_descriptors", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

ashp::detail::logging *ashp::deferred_action<ashp::acipc::cr_controller::process_completion_descriptors(void)::$_0>::~deferred_action(ashp::detail::logging *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) == 1)
  {
    v2 = *a1;
    v3 = *(*a1 + 1233);
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
          v24 = "cr_controller.cpp";
          v25 = 1024;
          v26 = 801;
          v27 = 2082;
          v28 = "operator()";
          v29 = 1024;
          v30 = v5;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) do not overwrite existing bad_cd buffer", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(log_level))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) do not overwrite existing bad_cd buffer", "cr_controller.cpp", 801, "operator()", *(v2 + 208));
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
          v24 = "cr_controller.cpp";
          v25 = 1024;
          v26 = 803;
          v27 = 2082;
          v28 = "operator()";
          v29 = 1024;
          v30 = v6;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) update bad cd", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(log_level))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) update bad cd", "cr_controller.cpp", 803, "operator()", *(v2 + 208));
      }

      *(v2 + 1209) = 0;
      *(v2 + 1217) = 0;
      *(v2 + 1225) = 0;
      *(v2 + 1233) = 1;
      v10 = *(v2 + 208);
      ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v2 + 1209, v7, v8, v9);
      *(v2 + 1209) = v10;
      ashp::optional<ashp::acipc::tr_ring,void>::value(v2 + 928, v11, v12, v13);
      v14 = *(v2 + 940);
      ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v2 + 1209, v15, v16, v17);
      *(v2 + 1211) = v14;
      ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v2 + 1209, v18, v19, v20);
      *(v2 + 1217) = **(a1 + 1);
    }

    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23ECB1F68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_completion_descr_info>::append_record(os_unfair_lock_t lock, __int128 *a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (lock[1]._os_unfair_lock_opaque)
  {
    v6 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_completion_descr_info>::operator[](&lock[6]._os_unfair_lock_opaque, lock[2]._os_unfair_lock_opaque, a3, a4);
    v7 = *a2;
    v8 = a2[1];
    *(v6 + 32) = *(a2 + 8);
    *v6 = v7;
    *(v6 + 16) = v8;
    os_unfair_lock_opaque = lock[2]._os_unfair_lock_opaque;
    v10 = __CFADD__(os_unfair_lock_opaque, 1);
    v11 = os_unfair_lock_opaque + 1;
    if (v10)
    {
      v12 = lock[1]._os_unfair_lock_opaque;
    }

    else
    {
      v12 = 0;
    }

    lock[2]._os_unfair_lock_opaque = (v11 - v12) % lock[1]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(lock);
}

uint64_t ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_completion_descr_info>::operator[](unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1 > a2)
  {
    return a1[2] + 36 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::cr_controller::create_sync_monitor(ashp::acipc::cr_controller *this, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 16));
  if (*(a2 + 32) != 1)
  {
    ashp::acipc::ring_controller::create_monitor(this, (a2 + 520), *(a2 + 24), (a2 + 696));
  }

  ashp::detail::control_flow::log_guard_else_failure("cr_controller.cpp", 0x13C, "create_sync_monitor", v4);
  ashp::acipc::cr_controller::create_sync_monitor(void)::$_0::operator()<unsigned short>((a2 + 208));
  *this = 0;

  os_unfair_lock_unlock((a2 + 16));
}

void ashp::acipc::cr_controller::create_sync_monitor(void)::$_0::operator()<unsigned short>(ashp::detail::logging *a1)
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
      v6 = "cr_controller.cpp";
      v7 = 1024;
      v8 = 316;
      v9 = 2082;
      v10 = "create_sync_monitor";
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is already terminated", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is already terminated", "cr_controller.cpp", 316, "create_sync_monitor", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::cr_controller::update_state_monitor_target(uint64_t a1, unsigned int a2)
{
  os_unfair_lock_assert_owner((a1 + 16));
  if (a2 == 1)
  {
    os_unfair_lock_lock((a1 + 648));
    v9 = 0;
    if (*(a1 + 688) == 1)
    {
      v8 = *(a1 + 680);
      v9 = 1;
      os_unfair_lock_unlock((a1 + 648));
      v6 = 7;
      v7 = 1;
      if ((ashp::operator==<int,0>(&v8, &v6, v4, v5) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 648));
    }

    ashp::monitor_target::update_value((a1 + 648), 0);
  }

LABEL_7:
  ashp::monitor_target::update_value((a1 + 648), a2);
}

uint64_t ashp::acipc::cr_controller::get_mirror_count(os_unfair_lock_s *this)
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 4);
  if ((this[126]._os_unfair_lock_opaque & 0x100) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x164, "get_mirror_count", v6);
    _os_crash();
    __break(1u);
    goto LABEL_17;
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
        v15 = "cr_controller.cpp";
        v16 = 1024;
        v17 = 357;
        v18 = 2082;
        v19 = "get_mirror_count";
        v20 = 1024;
        v21 = os_unfair_lock_opaque_low;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is already terminated", buf, 0x22u);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_14;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  if ((this[114]._os_unfair_lock_opaque & 1) == 0)
  {
LABEL_17:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x166, "get_mirror_count", v6);
    _os_crash();
    __break(1u);
LABEL_18:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_8:
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is already terminated", "cr_controller.cpp", 357, "get_mirror_count", LOWORD(this[52]._os_unfair_lock_opaque));
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (BYTE1(this[134]._os_unfair_lock_opaque) != 1)
  {
    goto LABEL_14;
  }

  ashp::optional<ashp::acipc::completion_mirror,void>::value(&this[242], v3, v4, v5);
  os_unfair_lock_opaque = this[243]._os_unfair_lock_opaque;
  v10 = HIWORD(this[243]._os_unfair_lock_opaque) - LOWORD(this[244]._os_unfair_lock_opaque);
  if ((v10 & 0xFFFF0000) == 0)
  {
    os_unfair_lock_opaque = 0;
  }

  v11 = os_unfair_lock_opaque + v10;
LABEL_15:
  os_unfair_lock_unlock(this + 4);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t ashp::optional<ashp::acipc::completion_mirror,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 104) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF7, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF7, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::acipc::cr_controller::get_mirror_element(uint64_t a1, unsigned int a2, uint64_t a3, char *a4, const char *a5, char *a6, const char *a7)
{
  v53 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 16));
  if ((*(a1 + 505) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x170, "get_mirror_element", v18);
    _os_crash();
    __break(1u);
    goto LABEL_35;
  }

  if (*(a1 + 32) == 1)
  {
    log_level = ashp::detail::logging::get_log_level(v14);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v20 = *(a1 + 208);
        *buf = 136446978;
        v46 = "cr_controller.cpp";
        v47 = 1024;
        v48 = 369;
        v49 = 2082;
        v50 = "get_mirror_element";
        v51 = 1024;
        v52 = v20;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is already terminated", buf, 0x22u);
      }
    }

    v21 = 3758097088;
    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once == -1)
      {
LABEL_8:
        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is already terminated", "cr_controller.cpp", 369, "get_mirror_element", *(a1 + 208));
        goto LABEL_33;
      }

LABEL_36:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      goto LABEL_8;
    }

    goto LABEL_33;
  }

  if ((*(a1 + 456) & 1) == 0)
  {
LABEL_35:
    v21 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x172, "get_mirror_element", v18);
    _os_crash();
    __break(1u);
    goto LABEL_36;
  }

  if (*(a1 + 537))
  {
    ashp::optional<ashp::acipc::completion_mirror,void>::value(a1 + 968, v15, v16, v17);
    v25 = *(a1 + 972);
    v26 = *(a1 + 974) - *(a1 + 976);
    if ((v26 & 0xFFFF0000) == 0)
    {
      v25 = 0;
    }

    if (a2 >= (v25 + v26))
    {
      v21 = 3758097090;
      goto LABEL_33;
    }

    ashp::optional<ashp::acipc::completion_mirror,void>::value(a1 + 968, v22, v23, v24);
    os_unfair_lock_lock((a1 + 968));
    v28 = *(a1 + 972);
    v29 = *(a1 + 976);
    v30 = *(a1 + 974) - v29;
    if ((v30 & 0xFFFF0000) != 0)
    {
      v31 = *(a1 + 972);
    }

    else
    {
      v31 = 0;
    }

    if (a2 > (v31 + v30))
    {
      ashp::detail::control_flow::log_guard_else_failure("completion_mirror.cpp", 0x5C, "get_element", v27);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: index out of range", "completion_mirror.cpp", 0x5C, "get_element", v43);
      _os_crash();
      __break(1u);
    }

    else
    {
      v32 = v29 % v28 + a2 % v28;
      v33 = v32;
      if (v32 == v32)
      {
        v34 = 0;
      }

      else
      {
        v34 = *(a1 + 972);
      }

      v35 = (v33 - v34) % v28;
      ashp::acipc::detail::completion_mirror::buffer_array::copy_from((a1 + 984), v35, a4, a5);
      ashp::acipc::detail::completion_mirror::buffer_array::copy_from((a1 + 1040), v35, a6, a7);
      if (*(a1 + 1016) > v35)
      {
        if (a3)
        {
          v37 = *(a1 + 1032) + 20 * v35;
          v38 = *v37;
          *(a3 + 16) = *(v37 + 16);
          *a3 = v38;
        }

        os_unfair_lock_unlock((a1 + 968));
        v21 = 0;
        goto LABEL_33;
      }
    }

    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x1A2, "operator[]", v36);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x1A2, "operator[]", v44);
    _os_crash();
    __break(1u);
  }

  v39 = ashp::detail::logging::get_log_level(v14);
  if (v39 >= 2)
  {
    v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v39)
    {
      v40 = *(a1 + 208);
      *buf = 136446978;
      v46 = "cr_controller.cpp";
      v47 = 1024;
      v48 = 371;
      v49 = 2082;
      v50 = "get_mirror_element";
      v51 = 1024;
      v52 = v40;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is not open", buf, 0x22u);
    }
  }

  v21 = 3758097090;
  if (ashp::detail::logging::get_log_level(v39))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is not open", "cr_controller.cpp", 371, "get_mirror_element", *(a1 + 208));
  }

LABEL_33:
  os_unfair_lock_unlock((a1 + 16));
  v41 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t ashp::acipc::cr_controller::consume_mirror_elements(ashp::acipc::cr_controller *this, unsigned int a2)
{
  v33 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 4);
  if ((*(this + 505) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x17D, "consume_mirror_elements", v8);
    _os_crash();
    __break(1u);
    goto LABEL_32;
  }

  if (*(this + 32) != 1)
  {
    if (*(this + 456))
    {
      if (*(this + 537))
      {
        ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(this + 968, v5, v6, v7);
        v15 = *(this + 486);
        v16 = *(this + 487) - *(this + 488);
        if ((v16 & 0xFFFF0000) == 0)
        {
          v15 = 0;
        }

        if (a2 <= (v15 + v16))
        {
          ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(this + 968, v12, v13, v14);
          os_unfair_lock_lock(this + 242);
          v21 = ashp::ring_index_pair<unsigned short>::advance_tail_index(this + 486, a2, v19, v20);
          log_level = ashp::detail::logging::get_log_level(v21);
          if (log_level >= 4)
          {
            log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (log_level)
            {
              *buf = 136446978;
              v26 = "completion_mirror.cpp";
              v27 = 1024;
              v28 = 109;
              v29 = 2082;
              v30 = "consume_elements";
              v31 = 1024;
              v32 = a2;
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] deleted %hu items from mirror", buf, 0x22u);
            }
          }

          if (ashp::detail::logging::get_log_level(log_level))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] deleted %hu items from mirror", "completion_mirror.cpp", 109, "consume_elements", a2);
          }

          os_unfair_lock_unlock(this + 242);
          v11 = 0;
        }

        else
        {
          v11 = 3758097090;
        }
      }

      else
      {
        v17 = ashp::detail::logging::get_log_level(v4);
        if (v17 >= 2)
        {
          v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v17)
          {
            v18 = *(this + 104);
            *buf = 136446978;
            v26 = "cr_controller.cpp";
            v27 = 1024;
            v28 = 384;
            v29 = 2082;
            v30 = "consume_mirror_elements";
            v31 = 1024;
            v32 = v18;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is not open", buf, 0x22u);
          }
        }

        v11 = 3758097090;
        if (ashp::detail::logging::get_log_level(v17))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is not open", "cr_controller.cpp", 384, "consume_mirror_elements", *(this + 104));
        }
      }

      goto LABEL_30;
    }

LABEL_32:
    v11 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x17F, "consume_mirror_elements", v8);
    _os_crash();
    __break(1u);
    goto LABEL_33;
  }

  v9 = ashp::detail::logging::get_log_level(v4);
  if (v9 >= 2)
  {
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      v10 = *(this + 104);
      *buf = 136446978;
      v26 = "cr_controller.cpp";
      v27 = 1024;
      v28 = 382;
      v29 = 2082;
      v30 = "consume_mirror_elements";
      v31 = 1024;
      v32 = v10;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller is already terminated", buf, 0x22u);
    }
  }

  v11 = 3758097088;
  if (ashp::detail::logging::get_log_level(v9))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller is already terminated", "cr_controller.cpp", 382, "consume_mirror_elements", *(this + 104));
      goto LABEL_30;
    }

LABEL_33:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

LABEL_30:
  os_unfair_lock_unlock(this + 4);
  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_23ECB2ED0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 242);
  os_unfair_lock_unlock(v1 + 4);
  _Unwind_Resume(a1);
}

void ashp::acipc::cr_controller::set_device_ring_status(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v117 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 16));
  if ((*(a1 + 505) & 1) == 0)
  {
    goto LABEL_105;
  }

  v7 = ashp::acipc::ring_controller::set_device_ring_status(a1 + 520, v2, v4, v5, v6);
  log_level = ashp::detail::logging::get_log_level(v7);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v9 = *(a1 + 208);
      *buf = 136447234;
      v108 = "cr_controller.cpp";
      v110 = 422;
      v111 = 2082;
      v109 = 1024;
      v112 = "set_device_ring_status";
      v113 = 1024;
      v114 = v9;
      v115 = 1024;
      LODWORD(v116) = v2;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) new device ring status=%u", buf, 0x28u);
    }
  }

  v10 = ashp::detail::logging::get_log_level(log_level);
  if (!v10)
  {
    goto LABEL_8;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) new device ring status=%u", "cr_controller.cpp", 422, "set_device_ring_status", *(a1 + 208), v2);
LABEL_8:
    if (!v2)
    {
      ashp::acipc::ring_controller::deregister_index_signal((a1 + 520), v11, v12, v13, v14);
      if (*(a1 + 537) == 1)
      {
        if (*(a1 + 610) == 1)
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0xB0, "finalize_head_index", v24);
          _os_crash();
          __break(1u);
LABEL_108:
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x1AE, "set_device_ring_status", v14);
          _os_crash();
          __break(1u);
LABEL_109:
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_98:
          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) reaping cr", "cr_controller.cpp", 505, "set_device_ring_status", *(a1 + 208));
LABEL_99:
          ashp::reaper_target::request_reap((a1 + 96));
          goto LABEL_100;
        }

        head_index = ashp::acipc::ring_controller::read_head_index((a1 + 520), v21, v22, v23, v24);
        v30 = *(a1 + 610);
        *(a1 + 608) = head_index;
        if ((v30 & 1) == 0)
        {
          *(a1 + 610) = 1;
        }

        v31 = ashp::acipc::ring_controller::read_head_index((a1 + 520), v26, v27, v28, v29);
        v35 = ashp::optional<ashp::acipc::tr_ring,void>::value(a1 + 928, v32, v33, v34);
        v39 = *(a1 + 936);
        if (v39 > v31 && ((v40 = *(a1 + 938), ((v31 - v40) & 0xFFFF0000) == 0) ? (v41 = 0) : (v41 = *(a1 + 936)), (v42 = (v41 + v31 - v40), v43 = v40 - *(a1 + 940), (v43 & 0xFFFF0000) == 0) ? (v44 = 0) : (v44 = *(a1 + 936)), v42 <= (v39 + ~(v44 + v43))))
        {
          v20 = ashp::optional<ashp::acipc::tr_ring,void>::value(a1 + 928, v36, v37, v38);
          if (v31 != *(a1 + 938) && (*(a1 + 1208) & 1) == 0)
          {
            ashp::acipc::cr_controller::set_sync_flags(a1);
          }
        }

        else
        {
          v45 = ashp::detail::logging::get_log_level(v35);
          if (v45 >= 2)
          {
            v45 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v45)
            {
              v46 = *(a1 + 208);
              *buf = 136447234;
              v108 = "cr_controller.cpp";
              v110 = 484;
              v111 = 2082;
              v109 = 1024;
              v112 = "set_device_ring_status";
              v113 = 1024;
              v114 = v46;
              v115 = 1024;
              LODWORD(v116) = v31;
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) invalid hi: %hu", buf, 0x28u);
            }
          }

          if (ashp::detail::logging::get_log_level(v45))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) invalid hi: %hu", "cr_controller.cpp", 484, "set_device_ring_status", *(a1 + 208), v31);
          }

          ashp::acipc::cr_controller::raise_error(a1, 256);
        }
      }

      if ((*(a1 + 537) & 1) == 0)
      {
        v20 = ashp::acipc::cr_controller::flush_all_transfer_rings(a1);
      }

      v47 = ashp::detail::logging::get_log_level(v20);
      if (v47 >= 4)
      {
        v47 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v47)
        {
          v48 = *(a1 + 208);
          *buf = 136446978;
          v108 = "cr_controller.cpp";
          v109 = 1024;
          v110 = 492;
          v111 = 2082;
          v112 = "set_device_ring_status";
          v113 = 1024;
          v114 = v48;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller closed", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v47))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller closed", "cr_controller.cpp", 492, "set_device_ring_status", *(a1 + 208));
      }

      goto LABEL_91;
    }

    if (v2 != 2)
    {
      goto LABEL_91;
    }

    if (*(a1 + 272) == 1)
    {
      ashp::optional<ashp::acipc::name_and_selector,void>::value(a1 + 256, v11, v12, v13);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 256), v15, v16, v17);
      CStringPtr = *(a1 + 256);
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

      v49 = ashp::detail::logging::get_log_level(CStringPtr);
      if (v49 >= 4)
      {
        v49 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v49)
        {
          v50 = *(a1 + 208);
          *buf = 136447234;
          v108 = "cr_controller.cpp";
          v109 = 1024;
          v110 = 428;
          v111 = 2082;
          v112 = "set_device_ring_status";
          v113 = 1024;
          v114 = v50;
          v115 = 2080;
          v116 = v19;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) registering with doorbell coordinator with doorbell %s", buf, 0x2Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v49))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) registering with doorbell coordinator with doorbell %s", "cr_controller.cpp", 428, "set_device_ring_status", *(a1 + 208), v19);
      }

      v54 = *(a1 + 24);
      ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(&v54[1316], v51, v52, v53);
      ashp::optional<ashp::acipc::name_and_selector,void>::value(a1 + 256, v55, v56, v57);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 256), v58, v59, v60);
      v61 = *(a1 + 256);
      ashp::optional<ashp::acipc::name_and_selector,void>::value(a1 + 256, v62, v63, v64);
      v66 = ashp::acipc::doorbell_participant::register_doorbell((a1 + 1080), v54 + 1316, v61, *(a1 + 264), v65);
      v10 = ashp::detail::control_flow::check_err_with_debug(v66, "cr_controller.cpp", 0x1AE, "set_device_ring_status", v67);
      if ((v10 & 1) == 0)
      {
        goto LABEL_108;
      }
    }

    if (*(a1 + 512) == 1)
    {
      v68 = ashp::detail::logging::get_log_level(v10);
      if (v68 >= 4)
      {
        v68 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v68)
        {
          v69 = *(a1 + 208);
          v70 = *(a1 + 210);
          *buf = 136447234;
          v108 = "cr_controller.cpp";
          v110 = 434;
          v111 = 2082;
          v109 = 1024;
          v112 = "set_device_ring_status";
          v113 = 1024;
          v114 = v69;
          v115 = 1024;
          LODWORD(v116) = v70;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) registering interrupt and setting up index array signaler vector %hu", buf, 0x28u);
        }
      }

      if (ashp::detail::logging::get_log_level(v68))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) registering interrupt and setting up index array signaler vector %hu", "cr_controller.cpp", 434, "set_device_ring_status", *(a1 + 208), *(a1 + 210));
      }

      ashp::optional<unsigned short,void>::value(a1 + 510, v71, v72, v73);
      ashp::acipc::ring_controller::register_index_signal(a1 + 520, a1, &__block_literal_global_544, *(a1 + 510), v74);
      ashp::acipc::ring_controller::arm_index_signal((a1 + 520), 0, v75, v76, v77);
    }

    v78 = ashp::acipc::ring_controller::read_head_index((a1 + 520), v11, v12, v13, v14);
    if (!v78)
    {
      v82 = ashp::acipc::cr_controller::flush_all_transfer_rings(a1);
      goto LABEL_84;
    }

    ashp::acipc::cr_controller::set_sync_flags(a1);
    v82 = ashp::optional<ashp::acipc::tr_ring,void>::value(a1 + 928, v79, v80, v81);
    v84 = *(a1 + 936);
    if (v84 <= v78)
    {
      break;
    }

    v85 = *(a1 + 938);
    v86 = ((v78 - v85) & 0xFFFF0000) != 0 ? *(a1 + 936) : 0;
    v87 = (v86 + v78 - v85);
    v88 = v85 - *(a1 + 940);
    v89 = (v88 & 0xFFFF0000) != 0 ? *(a1 + 936) : 0;
    if (v87 > (v84 + ~(v89 + v88)))
    {
      break;
    }

    v92 = *(a1 + 1184);
    if (!v92)
    {
      goto LABEL_84;
    }

    v93 = 16 * v92;
    v94 = (*(a1 + 1200) + 10);
    while (*v94 != 1)
    {
      *(v94 - 1) = v78;
      *v94 = 1;
      v94 += 16;
      v93 -= 16;
      if (!v93)
      {
        goto LABEL_84;
      }
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x1C8, "set_device_ring_status", v83);
    _os_crash();
    __break(1u);
LABEL_105:
    v2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x1A4, "set_device_ring_status", v6);
    _os_crash();
    __break(1u);
LABEL_106:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  v90 = ashp::detail::logging::get_log_level(v82);
  if (v90 >= 2)
  {
    v90 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v90)
    {
      v91 = *(a1 + 208);
      *buf = 136447234;
      v108 = "cr_controller.cpp";
      v110 = 462;
      v111 = 2082;
      v109 = 1024;
      v112 = "set_device_ring_status";
      v113 = 1024;
      v114 = v91;
      v115 = 1024;
      LODWORD(v116) = v78;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) invalid hi: %hu", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(v90))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) invalid hi: %hu", "cr_controller.cpp", 462, "set_device_ring_status", *(a1 + 208), v78);
  }

  ashp::acipc::cr_controller::raise_error(a1, 256);
LABEL_84:
  v95 = ashp::detail::logging::get_log_level(v82);
  if (v95 >= 3)
  {
    v95 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v95)
    {
      v96 = *(a1 + 208);
      *buf = 136446978;
      v108 = "cr_controller.cpp";
      v109 = 1024;
      v110 = 466;
      v111 = 2082;
      v112 = "set_device_ring_status";
      v113 = 1024;
      v114 = v96;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) controller opened", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v95))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) controller opened", "cr_controller.cpp", 466, "set_device_ring_status", *(a1 + 208));
  }

LABEL_91:
  v97 = ashp::acipc::ring_controller::compute_state((a1 + 520));
  ashp::acipc::cr_controller::update_state_monitor_target(a1, v97);
  if (!v2)
  {
    ashp::acipc::ring_controller::set_settled(a1 + 520, v98, v99, v100, v101);
    v102 = ashp::acipc::ring_controller::compute_state((a1 + 520));
    ashp::acipc::cr_controller::update_state_monitor_target(a1, v102);
    if (*(a1 + 32) == 1)
    {
      v104 = ashp::detail::logging::get_log_level(v103);
      if (v104 >= 4)
      {
        v104 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v104)
        {
          v105 = *(a1 + 208);
          *buf = 136446978;
          v108 = "cr_controller.cpp";
          v109 = 1024;
          v110 = 505;
          v111 = 2082;
          v112 = "set_device_ring_status";
          v113 = 1024;
          v114 = v105;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) reaping cr", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v104))
      {
        if (airship_platform_get_global_logger::once == -1)
        {
          goto LABEL_98;
        }

        goto LABEL_109;
      }

      goto LABEL_99;
    }
  }

LABEL_100:
  os_unfair_lock_unlock((a1 + 16));
  v106 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::cr_controller::set_sync_flags(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 37);
  os_unfair_lock_lock(this + 174);
  v7 = 0;
  if (LOBYTE(this[184]._os_unfair_lock_opaque) == 1)
  {
    v6 = *&this[182]._os_unfair_lock_opaque;
    v7 = 1;
    v2 = v6 | 1;
  }

  else
  {
    v2 = -1;
  }

  os_unfair_lock_unlock(this + 174);
  ashp::optional<unsigned long long,void>::value(&v6, v3, v4, v5);
  ashp::monitor_target::update_value(this + 174, v2);
  os_unfair_lock_unlock(this + 37);
}

void ashp::acipc::cr_controller::transfer_ring_opened(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  if ((*(a1 + 505) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x213, "transfer_ring_opened", v5);
    _os_crash();
    __break(1u);
    goto LABEL_30;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v6 = *(a1 + 1160);
    v7 = v6 + 1;
    if (v6 != -1)
    {
      v8 = *(a2 + 208);
      v9 = *(a1 + 1168);
      if (v7 > v9)
      {
        if (v9 <= 8)
        {
          v10 = 8;
        }

        else
        {
          v10 = *(a1 + 1168);
        }

        if (v7 >= 9)
        {
          do
          {
            if (is_mul_ok(v10, 3uLL))
            {
              v10 = (3 * v10) >> 1;
            }

            else
            {
              v10 = v6 + 1;
            }
          }

          while (v10 < v7);
        }

        if (v9 < v10)
        {
          if (v6 >= v10)
          {
LABEL_33:
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", v5);
            _os_crash();
            __break(1u);
            goto LABEL_34;
          }

          if (v10 >> 60)
          {
LABEL_34:
            ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", v4);
            ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v19);
            _os_crash();
            __break(1u);
            goto LABEL_35;
          }

          v11 = malloc_type_aligned_alloc(8uLL, 16 * v10, 0x1020040FFEA222EuLL);
          if (!v11)
          {
LABEL_35:
            ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v12);
            ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v20);
            _os_crash();
            __break(1u);
            return;
          }

          if (*(a1 + 1160))
          {
            v13 = 0;
            v14 = 0;
            do
            {
              *&v11[v13] = *(*(a1 + 1176) + v13);
              ++v14;
              v13 += 16;
            }

            while (v14 < *(a1 + 1160));
          }

          *(a1 + 1168) = v10;
          v15 = *(a1 + 1176);
          *(a1 + 1176) = v11;
          if (v15)
          {
            free(v15);
          }

          v6 = *(a1 + 1160);
          v9 = *(a1 + 1168);
        }
      }

      if (v6 < v9)
      {
        v16 = *(a1 + 1176);
        if (v16)
        {
          v17 = v16 + 16 * v6;
          *v17 = a2;
          *(v17 + 8) = v8;
          ++*(a1 + 1160);
          goto LABEL_26;
        }

        goto LABEL_32;
      }

LABEL_31:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v5);
      _os_crash();
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_30:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v18);
    _os_crash();
    __break(1u);
    goto LABEL_31;
  }

LABEL_26:

  os_unfair_lock_unlock((a1 + 16));
}

uint64_t ashp::deferred_action<ashp::acipc::cr_controller::notify_transfer_ring_when_flushed(ashp::acipc::tr_controller *)::$_0>::~deferred_action(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    ashp::acipc::tr_controller::completion_ring_did_flush(**a1, *(a1 + 8));
    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }
  }

  return a1;
}

uint64_t ashp::acipc::config::completion_ring_spec::dynamic_config::dynamic_config(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
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
  return a1;
}

void sub_23ECB3FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset((v4 + 3), a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v4, v6, v7, v8);
  _Unwind_Resume(a1);
}

uint64_t ashp::optional<ashp::acipc::config::completion_ring_spec::dynamic_config,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 88) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::optional<ashp::acipc::config::completion_ring_spec::dynamic_config,void>::~optional(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((a1 + 72), a2, a3, a4);
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(a1 + 48, v5, v6, v7);
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(a1 + 24, v8, v9, v10);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(a1, v11, v12, v13);
  }

  return a1;
}

void ashp::acipc::config::completion_ring_spec::dynamic_config::~dynamic_config(ashp::acipc::config::completion_ring_spec::dynamic_config *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 9, a2, a3, a4);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 48, v5, v6, v7);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 24, v8, v9, v10);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v11, v12, v13);
}

{
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 9, a2, a3, a4);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 48, v5, v6, v7);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 24, v8, v9, v10);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v11, v12, v13);
}

uint64_t ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 64) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF7, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF7, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_completion_descr_info>::copy_debug_info(os_unfair_lock_t lock, unsigned int *a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  debug_object_alloc_size = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_completion_descr_info>::get_debug_object_alloc_size(lock, a2, a3, a4);
  v9 = debug_object_alloc_size + 16;
  if (debug_object_alloc_size >= 0xFFFFFFF0)
  {
    v24 = "copy_debug_info";
    v25 = 77;
    v26 = "driver_debug_object.hpp";
    goto LABEL_15;
  }

  if (debug_info_capture::validate_buffer_bounds(a2, v9, v7, v8))
  {
    v12 = *a2 + a2[3];
    *v12 = lock[4];
    *(v12 + 4) = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_completion_descr_info>::get_debug_object_alloc_size(lock, v10, v11, v8);
    v14 = *&lock[6]._os_unfair_lock_opaque;
    *(v12 + 8) = vrev64_s32(*&lock[2]._os_unfair_lock_opaque);
    if (v14)
    {
      v15 = 0;
      v16 = v12 + 16;
      v17 = 1;
      do
      {
        v18 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_completion_descr_info>::operator[](&lock[6]._os_unfair_lock_opaque, v15, v13, v8);
        v19 = v16 + 36 * v15;
        v20 = *v18;
        v21 = *(v18 + 16);
        *(v19 + 32) = *(v18 + 32);
        *v19 = v20;
        *(v19 + 16) = v21;
        v15 = v17;
      }

      while (*&lock[6]._os_unfair_lock_opaque > v17++);
    }
  }

  v23 = a2[3] + v9;
  a2[3] = v23;
  if (HIDWORD(v23))
  {
    v24 = "advance_buffer_pointer";
    v25 = 108;
    v26 = "debug_infra.hpp";
LABEL_15:
    ashp::detail::control_flow::log_guard_else_failure(v26, v25, v24, v8);
    if (!lock)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!lock)
  {
    return;
  }

LABEL_10:

  os_unfair_lock_unlock(lock);
}

void sub_23ECB42E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_completion_descr_info>::get_debug_object_alloc_size(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!*(a1 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!is_mul_ok(v4, 0x24uLL) || (result = 36 * v4, (36 * v4) >> 32))
  {
    ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", a4);
    return 0;
  }

  return result;
}

uint64_t ashp::acipc::acipc_driver_client::acipc_get_health_status(os_unfair_lock_s *this, unsigned int *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 2);
  log_level = ashp::detail::logging::get_log_level(v4);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v29 = "acipc_driver_client.cpp";
      v30 = 1024;
      v31 = 128;
      v32 = 2082;
      v33 = "acipc_get_health_status";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] performing health check.", buf, 0x1Cu);
    }
  }

  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_7;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] performing health check.", "acipc_driver_client.cpp", 128, "acipc_get_health_status");
LABEL_7:
    v6 = *&this[4]._os_unfair_lock_opaque;
    os_unfair_lock_lock((v6 + 8));
    if (*(v6 + 13))
    {
      break;
    }

    a2 = "acipc_driver.cpp";
    ashp::detail::control_flow::log_guard_else_failure("acipc_driver.cpp", 0x3E1, "get_health_status", v9);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive driver", "acipc_driver.cpp", 0x3E1, "get_health_status", v27);
    _os_crash();
    __break(1u);
LABEL_43:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  if (*(v6 + 5624) != 1)
  {
    v23 = 0;
    if (!a2)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(v6 + 5264, v7, v8, v9);
  os_unfair_lock_lock((v6 + 5264));
  v10 = mach_continuous_time();
  if (v10 > *(v6 + 5480) && *(v6 + 5512) == 2)
  {
    v11 = ashp::detail::logging::get_log_level(v10);
    if (v11 >= 1)
    {
      v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        *buf = 136446722;
        v29 = "doorbell_coordinator.cpp";
        v30 = 1024;
        v31 = 535;
        v32 = 2082;
        v33 = "is_healthy";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] timer deadline missed!!", buf, 0x1Cu);
      }
    }

    v12 = ashp::detail::logging::get_log_level(v11);
    if (v12)
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] timer deadline missed!!", "doorbell_coordinator.cpp", 535, "is_healthy");
    }

    v13 = *(v6 + 5416);
    v14 = *(v6 + 5440);
    v15 = ashp::detail::logging::get_log_level(v12);
    if (v15 >= 1)
    {
      v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        v16 = *(v6 + 5496);
        *buf = 136447490;
        v29 = "doorbell_coordinator.cpp";
        v30 = 1024;
        v31 = 536;
        v32 = 2082;
        v33 = "is_healthy";
        v34 = 2048;
        v35 = v13;
        v36 = 2048;
        v37 = v14;
        v38 = 1024;
        LODWORD(v39) = v16;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] dbs : total %lu, active %lu, pending %d", buf, 0x36u);
      }
    }

    v17 = ashp::detail::logging::get_log_level(v15);
    if (v17)
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] dbs : total %lu, active %lu, pending %d", "doorbell_coordinator.cpp", 536, "is_healthy", v13, v14, *(v6 + 5496));
    }

    v18 = ashp::detail::logging::get_log_level(v17);
    if (v18 >= 1)
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        v19 = *(v6 + 5488);
        v20 = *(v6 + 5472);
        v21 = *(v6 + 5480);
        *buf = 136447490;
        v29 = "doorbell_coordinator.cpp";
        v30 = 1024;
        v31 = 537;
        v32 = 2082;
        v33 = "is_healthy";
        v34 = 2048;
        v35 = v19;
        v36 = 2048;
        v37 = v20;
        v38 = 2048;
        v39 = v21;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ts: last_write %llx, schedule %llx, deadline %llx, ", buf, 0x3Au);
      }
    }

    if (ashp::detail::logging::get_log_level(v18))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      v22 = *(v6 + 5472);
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ts: last_write %llx, schedule %llx, deadline %llx, ", "doorbell_coordinator.cpp", 537, "is_healthy", *(v6 + 5488), v22, *(v6 + 5480));
    }

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  os_unfair_lock_unlock((v6 + 5264));
  if (a2)
  {
LABEL_34:
    *a2 = v23 ^ 1;
  }

LABEL_35:
  os_unfair_lock_unlock((v6 + 8));
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = 3758097084;
  }

  os_unfair_lock_unlock(this + 2);
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

void sub_23ECB4874(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v3 + v2));
  os_unfair_lock_unlock(v3 + 2);
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

void ashp::acipc::acipc_driver_client::acipc_create_doorbell_controller(uint64_t a1@<X0>, const __CFString *a2@<X1>, const char *a3@<X2>, const char *a4@<X8>)
{
  v97 = *MEMORY[0x277D85DE8];
  v73 = a3;
  os_unfair_lock_lock((a1 + 8));
  if (a2)
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    if (CStringPtr)
    {
      owned_resource = CStringPtr;
    }

    else
    {
      owned_resource = "???";
    }
  }

  else
  {
    owned_resource = "(nil)";
  }

  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447234;
      *&buf[4] = "acipc_driver_client.cpp";
      v88 = 1024;
      v89 = 103;
      v90 = 2082;
      v91 = "acipc_create_doorbell_controller";
      v92 = 2080;
      v93 = owned_resource;
      v94 = 1024;
      v95 = a3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] creating doorbell controller for %s[%u]", buf, 0x2Cu);
    }
  }

  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_12;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] creating doorbell controller for %s[%u]", "acipc_driver_client.cpp", 103, "acipc_create_doorbell_controller", owned_resource, a3);
LABEL_12:
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v14 = *(a1 + 16);
    ashp::optional<ashp::acipc::config::acipc_config,void>::value(v14 + 3824, v11, v12, v13);
    ashp::boxed::symbol::with_str(buf, a2, v15, v16);
    *&buf[8] = a3;
    v17 = resolve_named_target<ashp::acipc::config::doorbell_spec>(*(v14 + 3880), *(v14 + 3896), buf, &v66, 0);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v18, v19, v20);
    if (!v17)
    {
      break;
    }

    if (*(v17 + 2))
    {
      owned_resource = 0;
    }

    else
    {
      if ((v68 & 1) == 0)
      {
        ashp::detail::control_flow::log_guard_else_failure("acipc_driver_client.cpp", 0x6F, "acipc_create_doorbell_controller", v23);
        goto LABEL_40;
      }

      ashp::optional<ashp::acipc::name_and_selector,void>::value(&v66, v21, v22, v23);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v66, v24, v25, v26);
      v27 = v66;
      ashp::optional<ashp::acipc::name_and_selector,void>::value(&v66, v28, v29, v30);
      owned_resource = ashp::driver_client::get_owned_resource(a1, v27, v67);
      if (!owned_resource)
      {
        ashp::detail::control_flow::log_guard_else_failure("acipc_driver_client.cpp", 0x71, "acipc_create_doorbell_controller", v23);
        if (a2)
        {
          v64 = CFStringGetCStringPtr(a2, 0x8000100u);
          v65 = "???";
          if (v64)
          {
            v65 = v64;
          }
        }

        else
        {
          v65 = "(nil)";
        }

        *buf = v65;
        ashp::acipc::acipc_driver_client::acipc_create_doorbell_controller(ashp::boxed::string,unsigned int)::$_2::operator()<char const*,unsigned int>(buf, &v73);
        goto LABEL_40;
      }
    }

    a2 = *(a1 + 16);
    v84 = 0;
    if (*(v17 + 64) == 1)
    {
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v82, v21, v22, v23);
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v82, v17[6], v31, v32);
      v83 = *(v17 + 14);
      v84 = 1;
    }

    v85[0] = v17[9];
    *(v85 + 5) = *(v17 + 77);
    ashp::acipc::config::doorbell_spec::multi_config::resolve(buf, (v17 + 11), &v82, a3);
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v82, v33, v34, v35);
    if (v96)
    {
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v81, *v17, v36, v37);
      v42 = v81;
      if (v81)
      {
        v81 = 0;
        v86 = v42;
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v86, v39, v40, v41);
        v42 = v86;
      }

      v74 = v42;
      v75 = a3;
      v76 = *(ashp::optional<ashp::acipc::config::doorbell_spec::dynamic_config,void>::value(buf, v39, v40, v41) + 32);
      v77 = *(ashp::optional<ashp::acipc::config::doorbell_spec::dynamic_config,void>::value(buf, v43, v44, v45) + 24);
      v78 = *(ashp::optional<ashp::acipc::config::doorbell_spec::dynamic_config,void>::value(buf, v46, v47, v48) + 28);
      v79 = *(ashp::optional<ashp::acipc::config::doorbell_spec::dynamic_config,void>::value(buf, v49, v50, v51) + 36);
      v80 = *(v17 + 2);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v81, v52, v53, v54);
      if (v96 == 1)
      {
        v96 = 0;
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&buf[8], v55, v56, v57);
      }

      operator new();
    }

    a4 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_controller.cpp", 0x5A, "config_from_doorbell_spec", v38);
    _os_crash();
    __break(1u);
LABEL_30:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  ashp::detail::control_flow::log_guard_else_failure("acipc_driver_client.cpp", 0x6B, "acipc_create_doorbell_controller", v23);
  if (a2)
  {
    v59 = CFStringGetCStringPtr(a2, 0x8000100u);
    v60 = "???";
    if (v59)
    {
      v60 = v59;
    }
  }

  else
  {
    v60 = "(nil)";
  }

  *buf = v60;
  ashp::acipc::acipc_driver_client::acipc_create_doorbell_controller(ashp::boxed::string,unsigned int)::$_1::operator()<char const*,unsigned int>(buf, &v73);
LABEL_40:
  *a4 = 0;
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v66, v61, v62, v63);
  os_unfair_lock_unlock((a1 + 8));
  v58 = *MEMORY[0x277D85DE8];
}

void sub_23ECB4DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(va, a2, a3, a4);
  os_unfair_lock_unlock(v10 + 2);
  _Unwind_Resume(a1);
}

void ashp::acipc::acipc_driver_client::acipc_create_doorbell_controller(ashp::boxed::string,unsigned int)::$_1::operator()<char const*,unsigned int>(ashp::detail::logging *a1, _DWORD *a2)
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
      v9 = "acipc_driver_client.cpp";
      v10 = 1024;
      v11 = 107;
      v12 = 2082;
      v13 = "acipc_create_doorbell_controller";
      v14 = 2080;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to look up configuration for %s[%u]", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to look up configuration for %s[%u]", "acipc_driver_client.cpp", 107, "acipc_create_doorbell_controller", *a1, *a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver_client::acipc_create_doorbell_controller(ashp::boxed::string,unsigned int)::$_2::operator()<char const*,unsigned int>(ashp::detail::logging *a1, _DWORD *a2)
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
      v9 = "acipc_driver_client.cpp";
      v10 = 1024;
      v11 = 113;
      v12 = 2082;
      v13 = "acipc_create_doorbell_controller";
      v14 = 2080;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to aquire resource for %s[%u]", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to aquire resource for %s[%u]", "acipc_driver_client.cpp", 113, "acipc_create_doorbell_controller", *a1, *a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver_client::acipc_create_memregion_controller(uint64_t a1@<X0>, const __CFString *a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  v103 = *MEMORY[0x277D85DE8];
  v80 = a3;
  os_unfair_lock_lock((a1 + 8));
  if (a2)
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    if (CStringPtr)
    {
      v9 = CStringPtr;
    }

    else
    {
      v9 = "???";
    }
  }

  else
  {
    v9 = "(nil)";
  }

  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447234;
      *&buf[4] = "acipc_driver_client.cpp";
      v95 = 1024;
      v96 = 85;
      v97 = 2082;
      v98 = "acipc_create_memregion_controller";
      v99 = 2080;
      v100 = v9;
      v101 = 1024;
      LODWORD(v102) = a3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] creating memregion controller for %s[%u]", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] creating memregion controller for %s[%u]", "acipc_driver_client.cpp", 85, "acipc_create_memregion_controller", v9, a3);
  }

  v77 = 0;
  v78 = 0;
  v79 = 0;
  v14 = *(a1 + 16);
  ashp::optional<ashp::acipc::config::acipc_config,void>::value(v14 + 3824, v11, v12, v13);
  ashp::boxed::symbol::with_str(&v88, a2, v15, v16);
  v89 = a3;
  v20 = *(v14 + 4176);
  if (!v20)
  {
LABEL_24:
    v21 = 0;
    goto LABEL_29;
  }

  v21 = *(v14 + 4192);
  v22 = 72 * v20;
  while (1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v88, v17, v18, v19);
    v23 = v88;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v21, v24, v25, v26);
    v17 = *v21;
    if (v23 && v17 != 0)
    {
      break;
    }

    if (!(v23 | v17))
    {
      goto LABEL_25;
    }

LABEL_23:
    v21 += 72;
    v22 -= 72;
    if (!v22)
    {
      goto LABEL_24;
    }
  }

  if (CFStringCompare(v23, v17, 0))
  {
    goto LABEL_23;
  }

LABEL_25:
  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v82, *(v21 + 40), v18, v19);
  v83 = *(v21 + 48);
  LOWORD(v84) = *(v21 + 56);
  ashp::acipc::config::memory_region_spec::multi_config::resolve(buf, v21 + 64, &v82, v89);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v82, v29, v30, v31);
  if (BYTE4(v98))
  {
    ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(buf, v32, v33, v34);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v91, *buf, v35, v36);
    v92 = *&buf[8];
    v93 = HIWORD(v96);
    v37 = v91;
    v91 = 0;
    v38 = v77;
    v77 = v37;
    v81 = v38;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v81, v39, v40, v41);
    v78 = v92;
    v79 = v93;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v91, v42, v43, v44);
  }

  else
  {
    v21 = 0;
  }

  ashp::unsafe_storage<ashp::acipc::config::memory_region_spec::dynamic_config>::storage::reset(buf, v32, v33, v34);
LABEL_29:
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v88, v17, v18, v19);
  if (v21)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v77, v45, v46, v47);
    if (ashp::driver_client::get_owned_resource(a1, v77, v78))
    {
      v50 = *(a1 + 16);
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v88, *(v21 + 40), v48, v49);
      v89 = *(v21 + 48);
      v90 = *(v21 + 56);
      ashp::acipc::config::memory_region_spec::multi_config::resolve(buf, v21 + 64, &v88, a3);
      v54 = ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(buf, v51, v52, v53);
      v55 = *buf;
      *buf = 0;
      v91 = v55;
      v92 = *&buf[8];
      v93 = HIWORD(v96);
      ashp::unsafe_storage<ashp::acipc::config::memory_region_spec::dynamic_config>::storage::reset(v54, v56, v57, v58);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v88, v59, v60, v61);
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v82, *v21, v62, v63);
      v83 = a3;
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::storage(&v84, v21 + 8, v64, v65);
      v85 = v93;
      v86 = *(v21 + 32);
      v87 = *(v21 + 36);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v91, v66, v67, v68);
      operator new();
    }

    ashp::detail::control_flow::log_guard_else_failure("acipc_driver_client.cpp", 0x5C, "acipc_create_memregion_controller", v49);
    if (a2)
    {
      v72 = CFStringGetCStringPtr(a2, 0x8000100u);
      v73 = "???";
      if (v72)
      {
        v73 = v72;
      }
    }

    else
    {
      v73 = "(nil)";
    }

    *buf = v73;
    ashp::acipc::acipc_driver_client::acipc_create_memregion_controller(ashp::boxed::string,unsigned int)::$_2::operator()<char const*,unsigned int>(buf, &v80);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("acipc_driver_client.cpp", 0x5A, "acipc_create_memregion_controller", v47);
    if (a2)
    {
      v70 = CFStringGetCStringPtr(a2, 0x8000100u);
      v71 = "???";
      if (v70)
      {
        v71 = v70;
      }
    }

    else
    {
      v71 = "(nil)";
    }

    *buf = v71;
    ashp::acipc::acipc_driver_client::acipc_create_memregion_controller(ashp::boxed::string,unsigned int)::$_1::operator()<char const*,unsigned int>(buf, &v80);
  }

  *a4 = 0;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v77, v74, v75, v76);
  os_unfair_lock_unlock((a1 + 8));
  v69 = *MEMORY[0x277D85DE8];
}

void sub_23ECB5824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  os_unfair_lock_unlock(v9 + 2);
  _Unwind_Resume(a1);
}

void ashp::acipc::acipc_driver_client::acipc_create_memregion_controller(ashp::boxed::string,unsigned int)::$_1::operator()<char const*,unsigned int>(ashp::detail::logging *a1, _DWORD *a2)
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
      v9 = "acipc_driver_client.cpp";
      v10 = 1024;
      v11 = 90;
      v12 = 2082;
      v13 = "acipc_create_memregion_controller";
      v14 = 2080;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to look up configuration for %s[%u]", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to look up configuration for %s[%u]", "acipc_driver_client.cpp", 90, "acipc_create_memregion_controller", *a1, *a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver_client::acipc_create_memregion_controller(ashp::boxed::string,unsigned int)::$_2::operator()<char const*,unsigned int>(ashp::detail::logging *a1, _DWORD *a2)
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
      v9 = "acipc_driver_client.cpp";
      v10 = 1024;
      v11 = 92;
      v12 = 2082;
      v13 = "acipc_create_memregion_controller";
      v14 = 2080;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to aquire resource for %s[%u]", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to aquire resource for %s[%u]", "acipc_driver_client.cpp", 92, "acipc_create_memregion_controller", *a1, *a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::memregion_controller::config::~config(ashp::acipc::memregion_controller::config *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 2, a2, a3, a4, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v6, v7, v8);
}

{
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 2, a2, a3, a4, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v6, v7, v8);
}

atomic_ullong *ashp::acipc::acipc_driver_client::create_cr_controller@<X0>(uint64_t a1@<X0>, const __CFString *a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  v187[4] = *MEMORY[0x277D85DE8];
  v137 = a3;
  v136 = 0;
  os_unfair_lock_lock((a1 + 8));
  if (a2)
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    if (CStringPtr)
    {
      v9 = CStringPtr;
    }

    else
    {
      v9 = "???";
    }
  }

  else
  {
    v9 = "(nil)";
  }

  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447234;
      *&buf[4] = "acipc_driver_client.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 67;
      *&buf[18] = 2082;
      v160 = "create_cr_controller";
      v161 = 2080;
      v162 = v9;
      v163 = 1024;
      v164 = a3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] creating cr controller for %s[%u]", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] creating cr controller for %s[%u]", "acipc_driver_client.cpp", 67, "create_cr_controller", v9, a3);
  }

  v129 = 0;
  v130 = 0;
  v131 = 0;
  v132[16] = 0;
  v133[16] = 0;
  v134 = 0;
  v135 = 0;
  v14 = *(a1 + 16);
  ashp::optional<ashp::acipc::config::acipc_config,void>::value(v14 + 3824, v11, v12, v13);
  ashp::boxed::symbol::with_str(buf, a2, v15, v16);
  *&buf[8] = a3;
  v17 = resolve_named_target<ashp::acipc::config::completion_ring_spec>(*(v14 + 4128), *(v14 + 4144), buf, &v129, 0);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v18, v19, v20);
  if (v17)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v129, v21, v22, v23);
    if (ashp::driver_client::get_owned_resource(a1, v129, v130))
    {
      v26 = *(a1 + 16);
      ashp::acipc::config::completion_ring_spec::dynamic_config::dynamic_config(v144, (v17 + 10), v24, v25);
      ashp::acipc::config::completion_ring_spec::multi_config::resolve(buf, (v17 + 21), v144, a3);
      ashp::optional<ashp::acipc::config::completion_ring_spec::dynamic_config,void>::value(buf, v27, v28, v29);
      v30 = *buf;
      *buf = 0;
      v148 = v30;
      v149 = *&buf[8];
      v150 = *&buf[16];
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v151, &v160 + 4, v31, v32);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v154, v165, v33, v34);
      v38 = v168;
      v168 = 0;
      v157 = v38;
      v158 = v169;
      if (v170 == 1)
      {
        v170 = 0;
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v168, v35, v36, v37);
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v165, v39, v40, v41);
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v160 + 4, v42, v43, v44);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v45, v46, v47);
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v147, v35, v36, v37);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v146, v48, v49, v50);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v145, v51, v52, v53);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v144, v54, v55, v56);
      buf[0] = 0;
      *&buf[8] = 0;
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v17, v57, v58, v59);
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&buf[16], *v17, v60, v61);
      HIDWORD(v160) = a3;
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::storage((&v162 + 2), (v17 + 1), v62, v63);
      v165[2] = v150;
      v166 = *(v17 + 16);
      v167 = *(v17 + 36);
      v67 = v153;
      if (v153 == 1)
      {
        ashp::optional<ashp::acipc::name_and_selector,void>::value(&v151, v64, v65, v66);
        ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v142, v151, v68, v69);
        v143 = v152;
        v170 = 0;
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v168, v70, v71, v72);
        v73 = v142;
        v142 = 0;
        v168 = v73;
        v169 = v143;
        v170 = 1;
      }

      else
      {
        v170 = 0;
      }

      v171 = *(v17 + 44);
      v172 = *(v17 + 12);
      v74 = v156;
      if (v156 == 1)
      {
        ashp::optional<ashp::acipc::name_and_selector,void>::value(&v154, v64, v65, v66);
        ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v140, v154, v75, v76);
        v141 = v155;
        v175 = 0;
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v173, v77, v78, v79);
        v80 = v140;
        v140 = 0;
        v173 = v80;
        v174 = v141;
        v175 = 1;
      }

      else
      {
        v175 = 0;
      }

      v176 = *(v17 + 52);
      v177 = *(v17 + 34);
      v178 = *(v17 + 18);
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v138, v157, v65, v66);
      v139 = v158;
      v181 = 0;
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v179, v81, v82, v83);
      v84 = v138;
      v138 = 0;
      v179 = v84;
      v180 = v139;
      v181 = 1;
      v182 = *(v17 + 30);
      v183 = *(v17 + 16);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::storage(v184, (v17 + 22), v85, v86);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::storage(v185, (v17 + 25), v87, v88);
      ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::storage(v186, (v17 + 28), v89, v90);
      ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::storage(v187, (v17 + 31), v91, v92);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v138, v93, v94, v95);
      if (v74)
      {
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v140, v96, v97, v98);
      }

      if (v67)
      {
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v142, v96, v97, v98);
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v157, v96, v97, v98);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v154, v99, v100, v101);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v151, v102, v103, v104);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v148, v105, v106, v107);
      ashp::acipc::cr_controller::create_with_config();
    }

    ashp::detail::control_flow::log_guard_else_failure("acipc_driver_client.cpp", 0x4A, "create_cr_controller", v25);
    if (a2)
    {
      v124 = CFStringGetCStringPtr(a2, 0x8000100u);
      v125 = "???";
      if (v124)
      {
        v125 = v124;
      }
    }

    else
    {
      v125 = "(nil)";
    }

    *buf = v125;
    ashp::acipc::acipc_driver_client::create_cr_controller(ashp::boxed::string,unsigned int)::$_2::operator()<char const*,unsigned int>(buf, &v137);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("acipc_driver_client.cpp", 0x48, "create_cr_controller", v23);
    if (a2)
    {
      v122 = CFStringGetCStringPtr(a2, 0x8000100u);
      v123 = "???";
      if (v122)
      {
        v123 = v122;
      }
    }

    else
    {
      v123 = "(nil)";
    }

    *buf = v123;
    ashp::acipc::acipc_driver_client::create_cr_controller(ashp::boxed::string,unsigned int)::$_1::operator()<char const*,unsigned int>(buf, &v137);
  }

  *a4 = 0;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v134, v126, v127, v128);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v133, v108, v109, v110);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v132, v111, v112, v113);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v129, v114, v115, v116);
  os_unfair_lock_unlock((a1 + 8));
  result = ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v136, v117, v118, v119);
  v121 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23ECB6340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_unfair_lock_s *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, atomic_ullong a27)
{
  ashp::acipc::config::completion_ring_spec::dynamic_config::~dynamic_config(&a16, a2, a3, a4);
  os_unfair_lock_unlock(a15 + 2);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&a27, v28, v29, v30);
  _Unwind_Resume(a1);
}

void ashp::acipc::acipc_driver_client::create_cr_controller(ashp::boxed::string,unsigned int)::$_1::operator()<char const*,unsigned int>(ashp::detail::logging *a1, _DWORD *a2)
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
      v9 = "acipc_driver_client.cpp";
      v10 = 1024;
      v11 = 72;
      v12 = 2082;
      v13 = "create_cr_controller";
      v14 = 2080;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to look up configuration for %s[%u]", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to look up configuration for %s[%u]", "acipc_driver_client.cpp", 72, "create_cr_controller", *a1, *a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver_client::create_cr_controller(ashp::boxed::string,unsigned int)::$_2::operator()<char const*,unsigned int>(ashp::detail::logging *a1, _DWORD *a2)
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
      v9 = "acipc_driver_client.cpp";
      v10 = 1024;
      v11 = 74;
      v12 = 2082;
      v13 = "create_cr_controller";
      v14 = 2080;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to aquire resource for %s[%u]", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to aquire resource for %s[%u]", "acipc_driver_client.cpp", 74, "create_cr_controller", *a1, *a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_23ECB6F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage((v9 + 1312));
  ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage((v9 + 1264));
  if (*(v9 + 1233) == 1)
  {
    *(v9 + 1233) = 0;
  }

  ashp::detail::dynamic_array::storage<ashp::acipc::cr_controller::flush_tracker>::~storage((v9 + 1184), v15, v16, v17, v18);
  ashp::detail::dynamic_array::storage<ashp::acipc::cr_controller::tr_association>::~storage((v9 + 1160), v19, v20, v21, v22);
  ashp::intrusive_list_link<ashp::acipc::doorbell_participant>::~intrusive_list_link(v13, v23, v24, v25);
  ashp::unsafe_storage<ashp::acipc::completion_mirror>::storage::reset((v9 + 968));
  if (*(v9 + 960) == 1)
  {
    *(v9 + 960) = 0;
  }

  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset((v9 + 920), v26, v27, v28);
  ashp::buffer_mapping::~buffer_mapping((v9 + 896), v29, v30, v31);
  ashp::acipc::detail::ring_manager::cr_context::~cr_context(v12, v32, v33, v34);
  ashp::monitor_target::~monitor_target((v9 + 696), v35, v36, v37, v38);
  ashp::monitor_target::~monitor_target((v9 + 648), v39, v40, v41, v42);
  ashp::acipc::ring_controller::~ring_controller((v9 + 520), v43, v44, v45, v46);
  if (*(v9 + 512) == 1)
  {
    *(v9 + 512) = 0;
  }

  if (*(v9 + 508) == 1)
  {
    *(v9 + 508) = 0;
  }

  ashp::acipc::cr_controller::client_overrides::~client_overrides((v9 + 424), v47, v48, v49);
  ashp::acipc::cr_controller::config::~config((v9 + 152), v50, v51, v52, v53);
  ashp::reaper_target::~reaper_target(v11, v54, v55, v56, v57);
  ashp::driver_object::~driver_object(v9, v58, v59, v60, v61);
  ashp::acipc::cr_controller::config::~config(&a9, v62, v63, v64, v65);
  MEMORY[0x23EF204E0](v9, v10);
  _Unwind_Resume(a1);
}

atomic_ullong *ashp::acipc::acipc_driver_client::create_tr_controller@<X0>(uint64_t a1@<X0>, const __CFString *a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  v299[18] = *MEMORY[0x277D85DE8];
  v235 = a3;
  v234 = 0;
  os_unfair_lock_lock((a1 + 8));
  if (a2)
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    if (CStringPtr)
    {
      v9 = CStringPtr;
    }

    else
    {
      v9 = "???";
    }
  }

  else
  {
    v9 = "(nil)";
  }

  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447234;
      *&buf[4] = "acipc_driver_client.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 48;
      *&buf[18] = 2082;
      v267 = "create_tr_controller";
      v268 = 2080;
      v269 = v9;
      v270 = 1024;
      v271 = a3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] creating tr controller for %s[%u]", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] creating tr controller for %s[%u]", "acipc_driver_client.cpp", 48, "create_tr_controller", v9, a3);
  }

  v225 = 0;
  v226 = 0;
  v227 = 0;
  v228[16] = 0;
  v229[16] = 0;
  v230 = 0;
  v231 = 0;
  v232 = 0;
  v233 = 0;
  v14 = *(a1 + 16);
  ashp::optional<ashp::acipc::config::acipc_config,void>::value(v14 + 3824, v11, v12, v13);
  ashp::boxed::symbol::with_str(&v242, a2, v15, v16);
  v243 = a3;
  v20 = *(v14 + 4104);
  if (!v20)
  {
    goto LABEL_28;
  }

  v21 = *(v14 + 4120);
  v22 = 368 * v20;
  while (1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v242, v17, v18, v19);
    v23 = v242;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v21, v24, v25, v26);
    v17 = *v21;
    if (v23 && v17 != 0)
    {
      break;
    }

    if (!(v23 | v17))
    {
      goto LABEL_25;
    }

LABEL_23:
    v21 += 46;
    v22 -= 368;
    if (!v22)
    {
      goto LABEL_28;
    }
  }

  if (CFStringCompare(v23, v17, 0))
  {
    goto LABEL_23;
  }

LABEL_25:
  ashp::acipc::config::transfer_ring_spec::dynamic_config::dynamic_config(&v253, (v21 + 13), v18, v19);
  ashp::acipc::config::transfer_ring_spec::multi_config::resolve(buf, (v21 + 26), &v253, v243);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v264, v29, v30, v31);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v262, v32, v33, v34);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v259, v35, v36, v37);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v256, v38, v39, v40);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v253, v41, v42, v43);
  if ((v278 & 1) == 0)
  {
LABEL_28:
    v21 = 0;
    goto LABEL_29;
  }

  ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(buf, v17, v18, v19);
  ashp::acipc::config::transfer_ring_spec::dynamic_config::dynamic_config(&v244, buf, v44, v45);
  v46 = v244;
  v244 = 0;
  v47 = v225;
  v225 = v46;
  v236 = v47;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v236, v48, v49, v50);
  v226 = v245;
  v227 = v246;
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v236, v247, v51, v52);
  ashp::swap(v228, &v236, v53, v54);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v236, v55, v56, v57);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v236, v248, v58, v59);
  ashp::swap(v229, &v236, v60, v61);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v236, v62, v63, v64);
  v65 = v249;
  v249 = 0;
  v66 = v230;
  v230 = v65;
  v236 = v66;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v236, v67, v68, v69);
  v231 = v250;
  v70 = v251;
  v251 = 0;
  v71 = v232;
  v232 = v70;
  v236 = v71;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v236, v72, v73, v74);
  v233 = v252;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v251, v75, v76, v77);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v249, v78, v79, v80);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v248, v81, v82, v83);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v247, v84, v85, v86);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v244, v87, v88, v89);
  if (v278)
  {
    v278 = 0;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v276, v17, v18, v19);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v274 + 1, v90, v91, v92);
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v272, v93, v94, v95);
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v267 + 4, v96, v97, v98);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v99, v100, v101);
  }

LABEL_29:
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v242, v17, v18, v19);
  if (v21)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v225, v102, v103, v104);
    if (ashp::driver_client::get_owned_resource(a1, v225, v226))
    {
      v107 = *(a1 + 16);
      ashp::acipc::config::transfer_ring_spec::dynamic_config::dynamic_config(&v244, (v21 + 13), v105, v106);
      ashp::acipc::config::transfer_ring_spec::multi_config::resolve(buf, (v21 + 26), &v244, a3);
      ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(buf, v108, v109, v110);
      v111 = *buf;
      *buf = 0;
      v253 = v111;
      v254 = *&buf[8];
      v255 = *&buf[16];
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v256, &v267 + 4, v112, v113);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v259, v272, v114, v115);
      v262 = *(&v274 + 1);
      v263 = v275;
      v119 = v276;
      *(&v274 + 1) = 0;
      v276 = 0;
      v264 = v119;
      v265 = v277;
      if (v278 == 1)
      {
        v278 = 0;
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v276, v116, v117, v118);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v274 + 1, v120, v121, v122);
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v272, v123, v124, v125);
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v267 + 4, v126, v127, v128);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v129, v130, v131);
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v251, v116, v117, v118);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v249, v132, v133, v134);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v248, v135, v136, v137);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v247, v138, v139, v140);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v244, v141, v142, v143);
      buf[0] = 0;
      *&buf[8] = 0;
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v21, v144, v145, v146);
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&buf[16], *v21, v147, v148);
      HIDWORD(v267) = a3;
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::storage((&v269 + 2), (v21 + 1), v149, v150);
      v272[2] = v255;
      v273 = *(v21 + 16);
      v274 = *(v21 + 36);
      v275 = *(v21 + 13);
      v154 = v258;
      if (v258 == 1)
      {
        ashp::optional<ashp::acipc::name_and_selector,void>::value(&v256, v151, v152, v153);
        ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v236, v256, v155, v156);
        v237 = v257;
        v278 = 0;
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v276, v157, v158, v159);
        v160 = v236;
        v236 = 0;
        v276 = v160;
        v277 = v237;
        v278 = 1;
      }

      else
      {
        v278 = 0;
      }

      v161 = v261;
      if (v261 == 1)
      {
        ashp::optional<ashp::acipc::name_and_selector,void>::value(&v259, v151, v152, v153);
        ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v242, v259, v162, v163);
        v243 = v260;
        v281 = 0;
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v279, v164, v165, v166);
        v167 = v242;
        v242 = 0;
        v279 = v167;
        v280 = v243;
        v281 = 1;
      }

      else
      {
        v281 = 0;
      }

      v282 = *(v21 + 56);
      v283 = *(v21 + 57);
      v284 = *(v21 + 15);
      v285 = *(v21 + 16);
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v240, v262, v152, v153);
      v241 = v263;
      v288 = 0;
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v286, v168, v169, v170);
      v171 = v240;
      v240 = 0;
      v286 = v171;
      v287 = v241;
      v288 = 1;
      v289 = *(v21 + 68);
      v290 = *(v21 + 42);
      v291 = *(v21 + 22);
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v238, v264, v172, v173);
      v239 = v265;
      v294 = 0;
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v292, v174, v175, v176);
      v177 = v238;
      v238 = 0;
      v292 = v177;
      v293 = v239;
      v294 = 1;
      v295 = *(v21 + 38);
      v296 = *(v21 + 20);
      v297 = *(v21 + 92);
      v298 = *(v21 + 47);
      ashp::acipc::config::transfer_ring_spec::constraint_config::constraint_config(v299, (v21 + 28), v178, v179);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v238, v180, v181, v182);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v240, v183, v184, v185);
      if (v161)
      {
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v242, v186, v187, v188);
      }

      if (v154)
      {
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v236, v186, v187, v188);
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v264, v186, v187, v188);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v262, v189, v190, v191);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v259, v192, v193, v194);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v256, v195, v196, v197);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v253, v198, v199, v200);
      ashp::acipc::tr_controller::create_with_config();
    }

    ashp::detail::control_flow::log_guard_else_failure("acipc_driver_client.cpp", 0x37, "create_tr_controller", v106);
    if (a2)
    {
      v220 = CFStringGetCStringPtr(a2, 0x8000100u);
      v221 = "???";
      if (v220)
      {
        v221 = v220;
      }
    }

    else
    {
      v221 = "(nil)";
    }

    *buf = v221;
    ashp::acipc::acipc_driver_client::create_tr_controller(ashp::boxed::string,unsigned int)::$_2::operator()<char const*,unsigned int>(buf, &v235);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("acipc_driver_client.cpp", 0x35, "create_tr_controller", v104);
    if (a2)
    {
      v218 = CFStringGetCStringPtr(a2, 0x8000100u);
      v219 = "???";
      if (v218)
      {
        v219 = v218;
      }
    }

    else
    {
      v219 = "(nil)";
    }

    *buf = v219;
    ashp::acipc::acipc_driver_client::create_tr_controller(ashp::boxed::string,unsigned int)::$_1::operator()<char const*,unsigned int>(buf, &v235);
  }

  *a4 = 0;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v232, v222, v223, v224);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v230, v201, v202, v203);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v229, v204, v205, v206);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v228, v207, v208, v209);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v225, v210, v211, v212);
  os_unfair_lock_unlock((a1 + 8));
  result = ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v234, v213, v214, v215);
  v217 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23ECB7968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_unfair_lock_s *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, atomic_ullong a28)
{
  ashp::acipc::config::transfer_ring_spec::dynamic_config::~dynamic_config(&a15, a2, a3, a4);
  os_unfair_lock_unlock(a14 + 2);
  ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&a28, v29, v30, v31);
  _Unwind_Resume(a1);
}

void ashp::acipc::acipc_driver_client::create_tr_controller(ashp::boxed::string,unsigned int)::$_1::operator()<char const*,unsigned int>(ashp::detail::logging *a1, _DWORD *a2)
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
      v9 = "acipc_driver_client.cpp";
      v10 = 1024;
      v11 = 53;
      v12 = 2082;
      v13 = "create_tr_controller";
      v14 = 2080;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to look up configuration for %s[%u]", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to look up configuration for %s[%u]", "acipc_driver_client.cpp", 53, "create_tr_controller", *a1, *a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver_client::create_tr_controller(ashp::boxed::string,unsigned int)::$_2::operator()<char const*,unsigned int>(ashp::detail::logging *a1, _DWORD *a2)
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
      v9 = "acipc_driver_client.cpp";
      v10 = 1024;
      v11 = 55;
      v12 = 2082;
      v13 = "create_tr_controller";
      v14 = 2080;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to aquire resource for %s[%u]", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to aquire resource for %s[%u]", "acipc_driver_client.cpp", 55, "create_tr_controller", *a1, *a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_23ECB84F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(v7);
  if (*(v2 + 1530) == 1)
  {
    *(v2 + 1530) = 0;
  }

  ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage((v2 + 1488));
  ashp::detail::dynamic_array::storage<ashp::acipc::cr_controller *>::~storage((v2 + 1432), v9, v10, v11, v12);
  ashp::intrusive_list_link<ashp::acipc::doorbell_participant>::~intrusive_list_link(v6, v13, v14, v15);
  ashp::unsafe_storage<ashp::acipc::transfer_queue>::storage::~storage(v2 + 1168);
  if (*(v2 + 1160) == 1)
  {
    *(v2 + 1160) = 0;
  }

  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset((v2 + 1120), v16, v17, v18);
  ashp::buffer_mapping::~buffer_mapping((v2 + 1096), v19, v20, v21);
  ashp::acipc::detail::ring_manager::tr_context::~tr_context(v5, v22, v23, v24);
  ashp::monitor_target::~monitor_target((v2 + 872), v25, v26, v27, v28);
  ashp::monitor_target::~monitor_target((v2 + 824), v29, v30, v31, v32);
  ashp::monitor_target::~monitor_target((v2 + 776), v33, v34, v35, v36);
  ashp::acipc::ring_controller::~ring_controller((v2 + 648), v37, v38, v39, v40);
  if (*(v2 + 640) == 1)
  {
    *(v2 + 640) = 0;
  }

  if (*(v2 + 636) == 1)
  {
    *(v2 + 636) = 0;
  }

  ashp::acipc::tr_controller::client_overrides::~client_overrides((v2 + 528), v41, v42, v43);
  ashp::acipc::tr_controller::config::~config((v2 + 152), v44, v45, v46, v47);
  ashp::reaper_target::~reaper_target(v4, v48, v49, v50, v51);
  ashp::driver_object::~driver_object(v2, v52, v53, v54, v55);
  ashp::acipc::tr_controller::config::~config(va, v56, v57, v58, v59);
  MEMORY[0x23EF204E0](v2, v3);
  _Unwind_Resume(a1);
}

void ashp::acipc::acipc_driver_client::acipc_create_boot_controller(uint64_t a1@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 8));
  if (a2)
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    if (CStringPtr)
    {
      v7 = CStringPtr;
    }

    else
    {
      v7 = "???";
    }
  }

  else
  {
    v7 = "(nil)";
  }

  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446978;
      *&buf[4] = "acipc_driver_client.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 31;
      v29 = 2082;
      v30 = "acipc_create_boot_controller";
      v31 = 2080;
      v32 = v7;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] creating boot controller for %s", buf, 0x26u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] creating boot controller for %s", "acipc_driver_client.cpp", 31, "acipc_create_boot_controller", v7);
  }

  v12 = *(a1 + 16);
  ashp::optional<ashp::acipc::config::acipc_config,void>::value(v12 + 3824, v9, v10, v11);
  v14 = ashp::acipc::config::boot_ipc_stage_spec::lookup(*(v12 + 4056), *(v12 + 4072), a2, v13);
  v18 = v14;
  if (v14)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v14 + 1, v15, v16, v17);
    if (ashp::driver_client::get_owned_resource(a1, *(v18 + 8), *(v18 + 16)))
    {
      v21 = *(a1 + 16);
      ashp::acipc::config::boot_ipc_stage_spec::boot_ipc_stage_spec(&v27, v18, v19, v20);
      operator new();
    }

    ashp::detail::control_flow::log_guard_else_failure("acipc_driver_client.cpp", 0x24, "acipc_create_boot_controller", v20);
    if (a2)
    {
      v25 = CFStringGetCStringPtr(a2, 0x8000100u);
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

    *buf = v26;
    ashp::acipc::acipc_driver_client::acipc_create_boot_controller(ashp::boxed::string)::$_2::operator()<char const*>(buf);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("acipc_driver_client.cpp", 0x22, "acipc_create_boot_controller", v17);
    if (a2)
    {
      v23 = CFStringGetCStringPtr(a2, 0x8000100u);
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

    *buf = v24;
    ashp::acipc::acipc_driver_client::acipc_create_boot_controller(ashp::boxed::string)::$_1::operator()<char const*>(buf);
  }

  *a3 = 0;
  os_unfair_lock_unlock((a1 + 8));
  v22 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver_client::acipc_create_boot_controller(ashp::boxed::string)::$_1::operator()<char const*>(ashp::detail::logging *a1)
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
      v6 = "acipc_driver_client.cpp";
      v7 = 1024;
      v8 = 34;
      v9 = 2082;
      v10 = "acipc_create_boot_controller";
      v11 = 2080;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to look up configuration for %s", buf, 0x26u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to look up configuration for %s", "acipc_driver_client.cpp", 34, "acipc_create_boot_controller", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver_client::acipc_create_boot_controller(ashp::boxed::string)::$_2::operator()<char const*>(ashp::detail::logging *a1)
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
      v6 = "acipc_driver_client.cpp";
      v7 = 1024;
      v8 = 36;
      v9 = 2082;
      v10 = "acipc_create_boot_controller";
      v11 = 2080;
      v12 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to aquire resource for %s", buf, 0x26u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to aquire resource for %s", "acipc_driver_client.cpp", 36, "acipc_create_boot_controller", *a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::acipc::config::boot_ipc_stage_spec::boot_ipc_stage_spec(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v6 = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(a1, *a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(v6 + 1, *(a2 + 8), v7, v8);
  *(a1 + 16) = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 56) = v11;
  *(a1 + 40) = v10;
  *(a1 + 24) = v9;
  ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::storage((a1 + 88), a2 + 88, v12, v13);
  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((a1 + 112), *(a2 + 112), v14, v15);
  *(a1 + 120) = *(a2 + 120);
  ashp::detail::dynamic_array::storage<unsigned int>::storage((a1 + 128), a2 + 128, v16, v17);
  ashp::detail::dynamic_array::storage<unsigned int>::storage((a1 + 152), a2 + 152, v18, v19);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

void sub_23ECB960C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<unsigned int>::~storage(v5 + 16, a2, a3, a4, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v5 + 14, v7, v8, v9);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::~storage(v5 + 11, v10, v11, v12, v13);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v5 + 1, v14, v15, v16);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v5, v17, v18, v19);
  _Unwind_Resume(a1);
}

unint64_t *ashp::detail::dynamic_array::storage<unsigned int>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

void ashp::acipc::config::boot_ipc_stage_spec::~boot_ipc_stage_spec(ashp::acipc::config::boot_ipc_stage_spec *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<unsigned int>::~storage(this + 19, a2, a3, a4, a5);
  ashp::detail::dynamic_array::storage<unsigned int>::~storage(this + 16, v6, v7, v8, v9);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 14, v10, v11, v12);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::~storage(this + 11, v13, v14, v15, v16);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 1, v17, v18, v19);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v20, v21, v22);
}

{
  ashp::detail::dynamic_array::storage<unsigned int>::~storage(this + 19, a2, a3, a4, a5);
  ashp::detail::dynamic_array::storage<unsigned int>::~storage(this + 16, v6, v7, v8, v9);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 14, v10, v11, v12);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::~storage(this + 11, v13, v14, v15, v16);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 1, v17, v18, v19);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v20, v21, v22);
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
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

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7), a2, a3, a4);
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

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = 0;
  ashp::detail::dynamic_array::buffer<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::buffer(a1 + 1, *a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::append(a1, *(a2 + 16), *a2, v6, v7);
  return a1;
}

void sub_23ECB9838(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    free(v3);
    *(v1 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void *ashp::detail::dynamic_array::storage<unsigned int>::storage(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = 0;
  ashp::detail::dynamic_array::buffer<ashp::acipc::config::numeric_constraint<unsigned short>>::buffer(a1 + 1, *a2, a3, a4);
  ashp::detail::dynamic_array::storage<unsigned int>::append(a1, *(a2 + 16), *a2, v6, v7);
  return a1;
}

void sub_23ECB9898(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    free(v3);
    *(v1 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void *ashp::detail::dynamic_array::storage<unsigned int>::append(void *result, int *a2, uint64_t a3, uint64_t a4, const char *a5)
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

    v6 = (result[2] + 4 * *result);
    while (v6)
    {
      v7 = *a2++;
      *v6++ = v7;
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

uint64_t ashp::detail::dynamic_array::buffer<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x18uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 24 * a2, 0x1060040E61082B6uLL);
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

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::append(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
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

    v8 = 0;
    v9 = (a2 + 8);
    while (1)
    {
      v10 = v6[2] + 24 * *v6;
      if (!(v10 + v8))
      {
        break;
      }

      result = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v10 + v8), *(v9 - 1), a3, a4);
      v11 = v10 + v8;
      v12 = *v9;
      *(v11 + 16) = *(v9 + 2);
      *(v11 + 8) = v12;
      v9 += 3;
      v8 += 24;
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

void ashp::acipc::acipc_driver_client::destroy(os_unfair_lock_s *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (this)
  {
    *&this->_os_unfair_lock_opaque = &unk_28515CEF0;
    ashp::driver_client::terminate(this);
    ashp::driver_client::~driver_client(this, v6, v7, v8, v9);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

void set_error(uint64_t a1, const char *a2, const char *a3, const char *a4, const char *a5)
{
  if (a1)
  {
    if (*a1 == 1)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x21, "set_error", a5);
      _os_crash();
      __break(1u);
    }

    else
    {
      *a1 = 1;
      ashp::boxed::string::with_cstr_nocopy(&v24, a2, a3, a4);
      v7 = *(a1 + 8);
      *(a1 + 8) = v24;
      v24 = v7;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v24, v8, v9, v10);
      if (a3)
      {
        ashp::boxed::string::with_cstr_nocopy(&v23, a3, v11, v12);
        ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::string,ashp::cf::refcount_policy>>::ensure_free_space((a1 + 16), v13, v14, v15, v16);
        ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::string,ashp::cf::refcount_policy>>::emplace_back<ashp::refcounted_ptr<ashp::boxed::string,ashp::cf::refcount_policy>>((a1 + 16), &v23, v17, v18, v19);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v23, v20, v21, v22);
      }
    }
  }
}

uint64_t parse_number<unsigned char>(_BYTE *a1, CFTypeRef cf, uint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      if (v8 == CFNumberGetTypeID())
      {
        v16 = cf;
        ashp::boxed::number::uint64_value(&v17, &v16, v9, a4);
        if (v18 == 1)
        {
          ashp::optional<unsigned long long,void>::value(&v17, v10, v11, a4);
          if (v17 < 0x100)
          {
            ashp::optional<unsigned long long,void>::value(&v17, v12, v13, a4);
            *a1 = v17;
            return 1;
          }
        }

        v15 = "value out of bounds";
      }

      else
      {
        v15 = "unexpected object type";
      }
    }

    else
    {
      v15 = "missing object";
    }

    set_error(a3, v15, 0, a4, a5);
    return 0;
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xA1, "parse_number", a5);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t parse_field_with_default<&(BOOL parse_number<unsigned char>(unsigned char *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned char>(_BYTE *a1, char a2, const __CFDictionary *a3, const void *a4, uint64_t a5, void *a6)
{
  value = ashp::boxed::dictionary::get_value(a3, a4, a3, a4);
  if (value)
  {
    if ((parse_number<unsigned char>(a1, value, a5, v12, v13) & 1) == 0)
    {
      set_error_location(a5, a4, v14, v15);
      return 0;
    }
  }

  else
  {
    *a1 = a2;
    ++*a6;
  }

  return 1;
}

void set_error_location(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a1)
  {
    if (*a1 == 1)
    {
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v15, a2, a3, a4);
      ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::string,ashp::cf::refcount_policy>>::ensure_free_space((a1 + 16), v5, v6, v7, v8);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::string,ashp::cf::refcount_policy>>::emplace_back<ashp::refcounted_ptr<ashp::boxed::string,ashp::cf::refcount_policy>>((a1 + 16), &v15, v9, v10, v11);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v15, v12, v13, v14);
    }
  }
}

void sub_23ECB9EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::string,ashp::cf::refcount_policy>>::ensure_free_space(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *a1 + 1;
  if (*a1 == -1)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v16);
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v7 = a1[1];
  if (v5 > v7)
  {
    if (v7 <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = a1[1];
    }

    v9 = (*a1 - 8) < 0;
    if (v5 >= 9)
    {
      do
      {
        if (is_mul_ok(v8, 3uLL))
        {
          v8 = (3 * v8) >> 1;
        }

        else
        {
          v8 = *a1 + 1;
        }
      }

      while (v8 < v5);
    }

    if (v7 < v8)
    {
      if (*a1 < v8)
      {
        if (!(v8 >> 61))
        {
          v10 = malloc_type_aligned_alloc(8uLL, 8 * v8, 0x6004044C4A2DFuLL);
          if (v10)
          {
            if (*a1)
            {
              v12 = 0;
              do
              {
                v13 = a1[2];
                v14 = *(v13 + 8 * v12);
                *(v13 + 8 * v12) = 0;
                v10[v12++] = v14;
              }

              while (v12 < *a1);
            }

            v15 = a1[2];
            a1[1] = v8;
            a1[2] = v10;
            if (v15)
            {

              free(v15);
            }

            return;
          }

LABEL_26:
          ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v11);
          ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v18);
          _os_crash();
          __break(1u);
          return;
        }

LABEL_25:
        ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
        ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v17);
        _os_crash();
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
      _os_crash();
      __break(1u);
      goto LABEL_25;
    }
  }
}

uint64_t *ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::string,ashp::cf::refcount_policy>>::emplace_back<ashp::refcounted_ptr<ashp::boxed::string,ashp::cf::refcount_policy>>(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *result;
  if (*result >= result[1])
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", a5);
    result = _os_crash();
  }

  else
  {
    v6 = result[2];
    if (v6)
    {
      v7 = *a2;
      *a2 = 0;
      *(v6 + 8 * v5) = v7;
      ++*result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(_WORD *a1, const __CFDictionary *a2, const void *a3, const char *a4)
{
  value = ashp::boxed::dictionary::get_value(a2, a3, a3, a4);
  v12 = parse_number<unsigned short>(a1, value, a4, v8, v9);
  if ((v12 & 1) == 0)
  {
    set_error_location(a4, a3, v10, v11);
  }

  return v12;
}

uint64_t _Z24parse_field_with_defaultIXadL_Z14parse_optionalIXadL_ZL12parse_symbolPN4ashp14refcounted_ptrINS1_5boxed6symbolENS1_2cf15refcount_policyEEENS3_6objectEPNS1_5acipc6config13error_contextEEES7_EbPNS1_8optionalIT0_NS1_15optional_traitsISF_vE16default_sentinelEEES9_SD_EENSE_IS7_NS1_17optional_sentinelIXtlNS1_9nullopt_tEEELb1EEEEEEbPSF_NSt3__113type_identityISF_E4typeENS3_10dictionaryES4_SD_Pm(uint64_t *a1, uint64_t *a2, const __CFDictionary *a3, const void *a4, uint64_t a5, void *a6)
{
  value = ashp::boxed::dictionary::get_value(a3, a4, a3, a4);
  if (value)
  {
    if (!a1 || (v16 = value, _ZNK4ashp8optionalINS_14refcounted_ptrINS_5boxed6symbolENS_2cf15refcount_policyEEENS_17optional_sentinelIXtlNS_9nullopt_tEEELb1EEEE9has_valueEv(a1, v12, v13, v14)))
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xD8, "parse_optional", v15);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v17 = CFGetTypeID(v16);
    if (v17 != CFBooleanGetTypeID() || (ashp::boxed::BOOLean::value(v16, v18, v19, v20) & 1) != 0)
    {
      v46 = 0;
      v25 = parse_symbol(&v46, v16, a5, v20, v21);
      if (v25)
      {
        v26 = v46;
        v46 = 0;
        v44 = 0;
        v47 = 0;
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v47, v22, v23, v24);
        v45 = 0;
        v27 = *a1;
        *a1 = v26;
        v47 = v27;
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v47, v28, v29, v30);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v45, v31, v32, v33);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v44, v34, v35, v36);
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v46, v22, v23, v24);
      if ((v25 & 1) == 0)
      {
        set_error_location(a5, a4, v37, v38);
        return 0;
      }
    }
  }

  else
  {
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v47, *a2, v13, v14);
    v40 = *a1;
    *a1 = v47;
    v47 = v40;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v47, v41, v42, v43);
    ++*a6;
  }

  return 1;
}

void sub_23ECBA368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

BOOL _ZNK4ashp8optionalINS_14refcounted_ptrINS_5boxed6symbolENS_2cf15refcount_policyEEENS_17optional_sentinelIXtlNS_9nullopt_tEEELb1EEEE9has_valueEv(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v6 = 0;
  v4 = *a1;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v6, a2, a3, a4);
  return v4 != 0;
}

uint64_t parse_symbol(uint64_t *a1, CFTypeRef cf, uint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      if (v8 == CFStringGetTypeID())
      {
        ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v24, cf, v9, v10);
        v11 = *a1;
        *a1 = v24;
        v24 = v11;
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v24, v12, v13, v14);
        return 1;
      }

      v16 = CFGetTypeID(cf);
      if (v16 == CFStringGetTypeID())
      {
        ashp::boxed::symbol::with_str(&v23, cf, v17, a4);
        v18 = *a1;
        *a1 = v23;
        v23 = v18;
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v23, v19, v20, v21);
        return 1;
      }

      v15 = "unexpected object type";
    }

    else
    {
      v15 = "missing object";
    }

    set_error(a3, v15, 0, a4, a5);
    return 0;
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xB5, "parse_symbol", a5);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(_DWORD *a1, const __CFDictionary *a2, const void *a3, const char *a4)
{
  value = ashp::boxed::dictionary::get_value(a2, a3, a3, a4);
  v12 = parse_number<unsigned int>(a1, value, a4, v8, v9);
  if ((v12 & 1) == 0)
  {
    set_error_location(a4, a3, v10, v11);
  }

  return v12;
}

uint64_t parse_number<unsigned int>(_DWORD *a1, CFTypeRef cf, uint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      if (v8 == CFNumberGetTypeID())
      {
        v23 = cf;
        ashp::boxed::number::uint64_value(v24, &v23, v9, a4);
        if (v25 == 1)
        {
          ashp::optional<unsigned long long,void>::value(v24, v10, v11, a4);
          if (!v24[1])
          {
            ashp::optional<unsigned long long,void>::value(v24, v12, v13, a4);
            v14 = v24[0];
            v21 = v24[0];
            v15 = 1;
            v22 = 1;
            ashp::optional<unsigned int,void>::value(&v21, v16, v17, v18);
            *a1 = v14;
            return v15;
          }
        }

        v22 = 0;
        v19 = "value out of bounds";
      }

      else
      {
        v19 = "unexpected object type";
      }
    }

    else
    {
      v19 = "missing object";
    }

    set_error(a3, v19, 0, a4, a5);
    return 0;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xA1, "parse_number", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t parse_number<unsigned short>(_WORD *a1, CFTypeRef cf, uint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      if (v8 == CFNumberGetTypeID())
      {
        v23 = cf;
        ashp::boxed::number::uint64_value(&v24, &v23, v9, a4);
        if (v25 == 1)
        {
          ashp::optional<unsigned long long,void>::value(&v24, v10, v11, a4);
          if (v24 < 0x10000)
          {
            ashp::optional<unsigned long long,void>::value(&v24, v12, v13, a4);
            v14 = v24;
            v21 = v24;
            v15 = 1;
            v22 = 1;
            ashp::optional<unsigned short,void>::value(&v21, v16, v17, v18);
            *a1 = v14;
            return v15;
          }
        }

        v22 = 0;
        v19 = "value out of bounds";
      }

      else
      {
        v19 = "unexpected object type";
      }
    }

    else
    {
      v19 = "missing object";
    }

    set_error(a3, v19, 0, a4, a5);
    return 0;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xA1, "parse_number", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t parse_field_with_default<&(BOOL parse_optional<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(ashp::optional<unsigned int,ashp::optional_traits<unsigned int,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<unsigned int,void>>(uint64_t a1, int *a2, const __CFDictionary *a3, const void *a4, uint64_t a5, void *a6)
{
  value = ashp::boxed::dictionary::get_value(a3, a4, a3, a4);
  if (value)
  {
    if (!a1 || *(a1 + 4) == 1)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xD8, "parse_optional", v12);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v13 = value;
    v14 = CFGetTypeID(value);
    if (v14 != CFBooleanGetTypeID() || ashp::boxed::BOOLean::value(v13, v15, v16, v17))
    {
      v25 = 0;
      if (!parse_number<unsigned int>(&v25, v13, a5, v17, v18))
      {
        set_error_location(a5, a4, v19, v20);
        return 0;
      }

      v21 = *(a1 + 4);
      *a1 = v25;
      if ((v21 & 1) == 0)
      {
        *(a1 + 4) = 1;
      }
    }
  }

  else
  {
    v22 = *(a2 + 4);
    v23 = *a2;
    if (*(a1 + 4) == 1)
    {
      if (*(a2 + 4))
      {
        *a1 = v23;
      }

      else
      {
        *(a1 + 4) = 0;
      }
    }

    else if (*(a2 + 4))
    {
      *a1 = v23;
      *(a1 + 4) = 1;
    }

    ++*a6;
  }

  return 1;
}

uint64_t parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(_DWORD *a1, int a2, const __CFDictionary *a3, const void *a4, uint64_t a5, void *a6)
{
  value = ashp::boxed::dictionary::get_value(a3, a4, a3, a4);
  if (value)
  {
    if ((parse_number<unsigned int>(a1, value, a5, v12, v13) & 1) == 0)
    {
      set_error_location(a5, a4, v14, v15);
      return 0;
    }
  }

  else
  {
    *a1 = a2;
    ++*a6;
  }

  return 1;
}

uint64_t parse_field_with_default<&(BOOL parse_array_or_singleton<&(parse_symbol(ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>(ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>>(unint64_t *a1, unint64_t *a2, const __CFDictionary *a3, const void *a4, uint64_t a5, void *a6)
{
  value = ashp::boxed::dictionary::get_value(a3, a4, a3, a4);
  if (!value)
  {
    ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::operator=(a1, a2, v12, v13, v14);
    ++*a6;
    return 1;
  }

  if (!a1 || *a1)
  {
LABEL_34:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x120, "parse_array_or_singleton", v14);
    _os_crash();
    __break(1u);
LABEL_35:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xF5, "parse_array", v20);
    _os_crash();
    goto LABEL_36;
  }

  v15 = value;
  v16 = CFGetTypeID(value);
  if (v16 == CFArrayGetTypeID())
  {
    if (!*a1)
    {
      v21 = CFGetTypeID(v15);
      if (v21 == CFArrayGetTypeID())
      {
        v26 = v15;
      }

      else
      {
        v26 = 0;
      }

      v65 = v26;
      if (v26)
      {
        v27 = ashp::boxed::array::count(v26, v22, v23, v24);
        v31 = v27;
        if (a1[1] < v27)
        {
          ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::set_capacity(a1, v27, v28, v29, v30);
          goto LABEL_19;
        }

        if (v27)
        {
LABEL_19:
          v36 = 0;
          v37 = v31 - 1;
          do
          {
            v64 = 0;
            v38 = ashp::boxed::array::get_value(&v65, v36, v28, v29);
            v45 = parse_symbol(&v64, v38, a5, v39, v40);
            if (v45)
            {
              ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::ensure_free_space(a1, v41, v42, v43, v44);
              v49 = *a1;
              if (*a1 >= a1[1])
              {
                ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v33);
                _os_crash();
                __break(1u);
                goto LABEL_34;
              }

              v50 = a1[2];
              if (!v50)
              {
                goto LABEL_36;
              }

              v51 = v64;
              v64 = 0;
              *(v50 + 8 * v49) = v51;
              ++*a1;
            }

            else
            {
              ashp::boxed::string::with_format(v42, v43, &v63, v36);
              ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v63, v52, v53, v54);
              set_error_location(a5, v63, v55, v56);
              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v63, v57, v58, v59);
            }

            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v64, v46, v47, v48);
            if (v37 == v36++)
            {
              v61 = 0;
            }

            else
            {
              v61 = v45;
            }
          }

          while ((v61 & 1) != 0);
          if ((v45 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        return 1;
      }

      set_error(a5, "unexpected object type", 0, v24, v25);
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::ensure_free_space(a1, v17, v18, v19, v20);
  v34 = *a1;
  if (*a1 >= a1[1])
  {
LABEL_37:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v33);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v35 = a1[2];
  if (!v35)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v35[v34] = 0;
  *a1 = v34 + 1;
  if (parse_symbol(v35, v15, a5, v32, v33))
  {
    return 1;
  }

LABEL_31:
  set_error_location(a5, a4, v28, v29);
  return 0;
}

void sub_23ECBAC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

uint64_t parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(ashp::optional<ashp::acipc::config::named_target_spec,ashp::optional_traits<ashp::acipc::config::named_target_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::named_target_spec,void>>(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const void *a4, const char *a5, void *a6)
{
  value = ashp::boxed::dictionary::get_value(a3, a4, a3, a4);
  if (value)
  {
    if (!a1 || *(a1 + 16) == 1)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xD8, "parse_optional", v14);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v15 = value;
    v16 = CFGetTypeID(value);
    if (v16 != CFBooleanGetTypeID() || (ashp::boxed::BOOLean::value(v15, v17, v18, v19) & 1) != 0)
    {
      v53 = 0;
      v54 = 0;
      v24 = ashp::acipc::config::named_target_spec::parse(&v53, v15, a5, v19, v20);
      if (v24)
      {
        v25 = v53;
        v53 = 0;
        v26 = v54;
        v49 = v54;
        v52 = 0;
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v50, v21, v22, v23);
        v48 = 0;
        v50 = v25;
        v51 = v26;
        v52 = 1;
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v55, &v50, v27, v28);
        ashp::swap(a1, v55, v29, v30);
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v55, v31, v32, v33);
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v50, v34, v35, v36);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v48, v37, v38, v39);
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v53, v21, v22, v23);
      if ((v24 & 1) == 0)
      {
        set_error_location(a5, a4, v40, v41);
        return 0;
      }
    }
  }

  else
  {
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v55, a2, v12, v13);
    ashp::swap(a1, v55, v43, v44);
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v55, v45, v46, v47);
    ++*a6;
  }

  return 1;
}

void sub_23ECBADD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

uint64_t parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(uint64_t a1, const __CFDictionary *a2, const void *a3, const char *a4)
{
  value = ashp::boxed::dictionary::get_value(a2, a3, a3, a4);
  v12 = ashp::acipc::config::device_register_spec::parse(a1, value, a4, v8, v9);
  if ((v12 & 1) == 0)
  {
    set_error_location(a4, a3, v10, v11);
  }

  return v12;
}

uint64_t parse_field_with_default<&(ashp::acipc::config::doorbell_spec::multi_config::parse(ashp::acipc::config::doorbell_spec::multi_config*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_spec::multi_config>(uint64_t a1, const __CFDictionary *a2, const char *a3, const char *a4)
{
  value = ashp::boxed::dictionary::get_value(a2, @"multi", a3, a4);
  if (!value)
  {
    *(a1 + 4) = 0;
    result = 1;
    *a1 = 1;
    ++*a4;
    return result;
  }

  if (!a1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x448, "parse", v8);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = value;
  v10 = CFGetTypeID(value);
  if (v10 == CFDictionaryGetTypeID())
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v20 = 0;
    if (!parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(a1, v13, @"count", a3) || !parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>((a1 + 4), 0, v13, @"resource_stride", a3, &v20))
    {
      goto LABEL_14;
    }

    v17 = ashp::boxed::dictionary::count(v13, v16, v14, v15);
    if (v20 + v17 == 2)
    {
      return 1;
    }

    v19 = "unknown keys present";
  }

  else
  {
    v19 = "unexpected object type";
  }

  set_error(a3, v19, 0, v11, v12);
LABEL_14:
  set_error_location(a3, @"multi", v14, v15);
  return 0;
}

uint64_t parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(_BYTE *a1, char a2, const __CFDictionary *a3, const void *a4, uint64_t a5, void *a6)
{
  value = ashp::boxed::dictionary::get_value(a3, a4, a3, a4);
  if (value)
  {
    if ((parse_BOOL(a1, value, a5, v12, v13) & 1) == 0)
    {
      set_error_location(a5, a4, v14, v15);
      return 0;
    }
  }

  else
  {
    *a1 = a2;
    ++*a6;
  }

  return 1;
}

uint64_t parse_BOOL(_BYTE *a1, void *cf, uint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      if (v8 == CFBooleanGetTypeID())
      {
        *a1 = ashp::boxed::BOOLean::value(cf, v9, v10, a4);
        return 1;
      }

      v12 = "unexpected object type";
    }

    else
    {
      v12 = "missing object";
    }

    set_error(a3, v12, 0, a4, a5);
    return 0;
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x5F, "parse_BOOL", a5);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::acipc::config::device_register_spec::parse(uint64_t a1, const __CFDictionary *cf, const char *a3, const char *a4, const char *a5)
{
  if (!a1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x280, "parse", a5);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = cf;
  if (!cf)
  {
    v14 = "missing object";
LABEL_13:
    set_error(a3, v14, 0, a4, a5);
    return 0;
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFDictionaryGetTypeID())
  {
    v6 = 0;
  }

  if (!v6)
  {
    v14 = "unexpected object type";
    goto LABEL_13;
  }

  v15 = 0;
  result = parse_field<&(BOOL parse_number<unsigned char>(unsigned char *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned char>(a1, v6, @"bank", a3);
  if (result)
  {
    result = parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>((a1 + 4), v6, @"offset", a3);
    if (result)
    {
      result = parse_field_with_default<&(BOOL parse_number<unsigned char>(unsigned char *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned char>((a1 + 8), 4, v6, @"width", a3, &v15);
      if (result)
      {
        v13 = ashp::boxed::dictionary::count(v6, v10, v11, v12);
        if (v15 + v13 == 3)
        {
          return 1;
        }

        v14 = "unknown keys present";
        goto LABEL_13;
      }
    }
  }

  return result;
}

uint64_t parse_field<&(BOOL parse_number<unsigned char>(unsigned char *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned char>(_BYTE *a1, const __CFDictionary *a2, const void *a3, const char *a4)
{
  value = ashp::boxed::dictionary::get_value(a2, a3, a3, a4);
  v12 = parse_number<unsigned char>(a1, value, a4, v8, v9);
  if ((v12 & 1) == 0)
  {
    set_error_location(a4, a3, v10, v11);
  }

  return v12;
}

uint64_t ashp::acipc::config::named_target_spec::parse(uint64_t a1, CFTypeRef cf, const char *a3, const char *a4, const char *a5)
{
  if (!a1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x29F, "parse", a5);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = cf;
  if (!cf)
  {
    v12 = "missing object";
    goto LABEL_16;
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFStringGetTypeID())
  {
    v13 = CFGetTypeID(v6);
    if (v13 != CFDictionaryGetTypeID())
    {
      v6 = 0;
    }

    if (v6)
    {
      v18 = 0;
      result = parse_field<&(parse_symbol(ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>(a1, v6, @"name", a3);
      if (!result)
      {
        return result;
      }

      result = parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>((a1 + 8), 0, v6, @"selector", a3, &v18);
      if (!result)
      {
        return result;
      }

      v17 = ashp::boxed::dictionary::count(v6, v14, v15, v16);
      if (v18 + v17 == 2)
      {
        return 1;
      }

      v12 = "unknown keys present";
    }

    else
    {
      v12 = "unexpected object type";
    }

LABEL_16:
    set_error(a3, v12, 0, a4, a5);
    return 0;
  }

  result = parse_symbol(a1, v6, a3, v9, v10);
  if (result)
  {
    *(a1 + 8) = 0;
    return 1;
  }

  return result;
}

uint64_t parse_field<&(parse_symbol(ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>(uint64_t *a1, const __CFDictionary *a2, const void *a3, const char *a4)
{
  value = ashp::boxed::dictionary::get_value(a2, a3, a3, a4);
  v12 = parse_symbol(a1, value, a4, v8, v9);
  if ((v12 & 1) == 0)
  {
    set_error_location(a4, a3, v10, v11);
  }

  return v12;
}

uint64_t ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::operator=(unint64_t *a1, unint64_t *a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a2 > a1[1])
  {
    ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::storage(&v25, a2, a3, a4);
    v7 = *a1;
    *a1 = v25;
    v25 = v7;
    v8 = a1[2];
    a1[2] = v26;
    v26 = v8;
    ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(&v25, v9, v10, v11, v12);
    return a1;
  }

  if (*a2 >= *a1)
  {
    v13 = *a1;
  }

  else
  {
    v13 = *a2;
  }

  if (a1[2])
  {
    if (a2[2])
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == 0;
    }

    if (!v14)
    {
      goto LABEL_19;
    }

    if (v13)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v27, *(a2[2] + v15), a3, a4);
        v17 = a1[2];
        v18 = *(v17 + v15);
        *(v17 + v15) = v27;
        v27 = v18;
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v27, v19, v20, v21);
        v15 += 8;
        --v16;
      }

      while (v16);
    }

LABEL_17:
    ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::reduce_size(a1, v13, a3, a4, a5);
    ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::append(a1, a2[2] + 8 * v13, *a2 - v13, v22, v23);
    return a1;
  }

  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_19:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
LABEL_11:
    __break(1u);
    return;
  }

  ashp::detail::dynamic_array::buffer<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::buffer(&v13, a2, a3, a4);
  if (*a1)
  {
    v6 = 0;
    do
    {
      v7 = v14;
      if (!v14)
      {
        goto LABEL_11;
      }

      v8 = a1[2];
      v9 = *(v8 + 8 * v6);
      *(v8 + 8 * v6) = 0;
      v7[v6++] = v9;
    }

    while (v6 < *a1);
  }

  v10 = v13;
  v11 = v14;
  v13 = 0;
  v14 = 0;
  v12 = a1[2];
  a1[1] = v10;
  a1[2] = v11;
  if (v12)
  {
    free(v12);
    if (v14)
    {
      free(v14);
    }
  }
}

void ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::ensure_free_space(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v6 = *a1 + 1;
  if (*a1 == -1)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = a1[1];
    if (v6 > v7)
    {
      if (v7 <= 8)
      {
        v8 = 8;
      }

      else
      {
        v8 = a1[1];
      }

      v9 = (*a1 - 8) < 0;
      if (v6 >= 9)
      {
        do
        {
          if (is_mul_ok(v8, 3uLL))
          {
            v8 = (3 * v8) >> 1;
          }

          else
          {
            v8 = *a1 + 1;
          }
        }

        while (v8 < v6);
      }

      if (v7 < v8)
      {

        ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::set_capacity(a1, v8, a3, a4, a5);
      }
    }
  }
}

uint64_t parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(uint64_t a1, const __CFDictionary *a2, const void *a3, const char *a4)
{
  value = ashp::boxed::dictionary::get_value(a2, a3, a3, a4);
  v12 = ashp::acipc::config::named_target_spec::parse(a1, value, a4, v8, v9);
  if ((v12 & 1) == 0)
  {
    set_error_location(a4, a3, v10, v11);
  }

  return v12;
}

uint64_t parse_field_with_default<&(BOOL parse_array_or_singleton<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(ashp::dynamic_array<unsigned int> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<unsigned int>>(unint64_t *a1, unint64_t *a2, const __CFDictionary *a3, const void *a4, uint64_t a5, void *a6)
{
  value = ashp::boxed::dictionary::get_value(a3, a4, a3, a4);
  if (!value)
  {
    ashp::detail::dynamic_array::storage<unsigned int>::operator=(a1, a2, v12, v13, v14);
    ++*a6;
    return 1;
  }

  if (!a1 || *a1)
  {
    goto LABEL_30;
  }

  v15 = value;
  v16 = CFGetTypeID(value);
  if (v16 == CFArrayGetTypeID())
  {
    if (*a1)
    {
LABEL_31:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xF5, "parse_array", v20);
      _os_crash();
      __break(1u);
      goto LABEL_32;
    }

    v21 = CFGetTypeID(v15);
    if (v21 == CFArrayGetTypeID())
    {
      v26 = v15;
    }

    else
    {
      v26 = 0;
    }

    v58 = v26;
    if (v26)
    {
      v27 = ashp::boxed::array::count(v26, v22, v23, v24);
      v31 = v27;
      if (a1[1] < v27)
      {
        ashp::detail::dynamic_array::storage<unsigned int>::set_capacity(a1, v27, v28, v29, v30);
        goto LABEL_19;
      }

      if (v27)
      {
LABEL_19:
        v37 = 0;
        while (1)
        {
          v57 = 0;
          v38 = ashp::boxed::array::get_value(&v58, v37, v28, v29);
          if ((parse_number<unsigned int>(&v57, v38, a5, v39, v40) & 1) == 0)
          {
            ashp::boxed::string::with_format(v42, v43, &v56, v37);
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v56, v48, v49, v50);
            set_error_location(a5, v56, v51, v52);
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v56, v53, v54, v55);
            goto LABEL_26;
          }

          ashp::dynamic_array<unsigned int>::ensure_free_space(a1, v41, v42, v43, v44);
          v45 = *a1;
          if (*a1 >= a1[1])
          {
            break;
          }

          v46 = a1[2];
          if (!v46)
          {
            goto LABEL_29;
          }

          *(v46 + 4 * v45) = v57;
          *a1 = v45 + 1;
          if (v31 == ++v37)
          {
            return 1;
          }
        }

        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v14);
        _os_crash();
LABEL_29:
        __break(1u);
LABEL_30:
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x120, "parse_array_or_singleton", v14);
        _os_crash();
        __break(1u);
        goto LABEL_31;
      }

      return 1;
    }

    set_error(a5, "unexpected object type", 0, v24, v25);
  }

  else
  {
    ashp::dynamic_array<unsigned int>::ensure_free_space(a1, v17, v18, v19, v20);
    v33 = *a1;
    if (*a1 >= a1[1])
    {
LABEL_32:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v14);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v34 = a1[2];
    if (!v34)
    {
      goto LABEL_29;
    }

    v34[v33] = 0;
    *a1 = v33 + 1;
    if (parse_number<unsigned int>(v34, v15, a5, v32, v14))
    {
      return 1;
    }
  }

LABEL_26:
  set_error_location(a5, a4, v35, v36);
  return 0;
}

void sub_23ECBBBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

uint64_t ashp::detail::dynamic_array::storage<unsigned int>::operator=(unint64_t *a1, unint64_t *a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a2 > a1[1])
  {
    ashp::detail::dynamic_array::storage<unsigned int>::storage(&v22, a2, a3, a4);
    v7 = *a1;
    *a1 = v22;
    v22 = v7;
    v8 = a1[2];
    a1[2] = v23;
    v23 = v8;
    ashp::detail::dynamic_array::storage<unsigned int>::~storage(&v22, v9, v10, v11, v12);
    return a1;
  }

  if (*a2 >= *a1)
  {
    v13 = *a1;
  }

  else
  {
    v13 = *a2;
  }

  v14 = a1[2];
  if (v14)
  {
    v15 = a2[2];
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = v13 == 0;
    }

    if (!v16)
    {
      goto LABEL_19;
    }

    if (v13)
    {
      v17 = v13;
      do
      {
        v18 = *v15++;
        *v14++ = v18;
        --v17;
      }

      while (v17);
    }

LABEL_17:
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::reduce_size(a1, v13, a3, a4, a5);
    ashp::detail::dynamic_array::storage<unsigned int>::append(a1, (a2[2] + 4 * v13), *a2 - v13, v19, v20);
    return a1;
  }

  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_19:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::detail::dynamic_array::storage<unsigned int>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
    goto LABEL_12;
  }

  ashp::detail::dynamic_array::buffer<ashp::acipc::config::numeric_constraint<unsigned short>>::buffer(&v12, a2, a3, a4);
  v6 = *a1;
  v7 = v13;
  if (!*a1)
  {
    v9 = a1[2];
    v11 = v12;
    v12 = 0;
    v13 = 0;
    a1[1] = v11;
    a1[2] = v7;
    if (!v9)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v13)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v8 = 0;
  v9 = a1[2];
  do
  {
    v7[v8] = v9[v8];
    ++v8;
  }

  while (v6 != v8);
  v10 = v12;
  v12 = 0;
  v13 = 0;
  a1[1] = v10;
  a1[2] = v7;
LABEL_8:
  free(v9);
  if (v13)
  {
    free(v13);
  }
}

void ashp::dynamic_array<unsigned int>::ensure_free_space(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v6 = *a1 + 1;
  if (*a1 == -1)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = a1[1];
    if (v6 > v7)
    {
      if (v7 <= 8)
      {
        v8 = 8;
      }

      else
      {
        v8 = a1[1];
      }

      v9 = (*a1 - 8) < 0;
      if (v6 >= 9)
      {
        do
        {
          if (is_mul_ok(v8, 3uLL))
          {
            v8 = (3 * v8) >> 1;
          }

          else
          {
            v8 = *a1 + 1;
          }
        }

        while (v8 < v6);
      }

      if (v7 < v8)
      {

        ashp::detail::dynamic_array::storage<unsigned int>::set_capacity(a1, v8, a3, a4, a5);
      }
    }
  }
}

uint64_t ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::operator=(unint64_t *a1, unint64_t *a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a2 > a1[1])
  {
    ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::storage(&v28, a2, a3, a4);
    v7 = *a1;
    *a1 = v28;
    v28 = v7;
    v8 = a1[2];
    a1[2] = v29;
    v29 = v8;
    ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::~storage(&v28, v9, v10, v11, v12);
    return a1;
  }

  if (*a2 >= *a1)
  {
    v13 = *a1;
  }

  else
  {
    v13 = *a2;
  }

  if (a1[2])
  {
    if (a2[2])
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == 0;
    }

    if (!v14)
    {
      goto LABEL_19;
    }

    if (v13)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        v17 = a2[2];
        v18 = a1[2];
        ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v28, *(v17 + v15), a3, a4);
        v19 = *(v18 + v15);
        *(v18 + v15) = v28;
        *&v28 = v19;
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v28, v20, v21, v22);
        v23 = v18 + v15;
        v24 = *(v17 + v15 + 8);
        *(v23 + 16) = *(v17 + v15 + 16);
        *(v23 + 8) = v24;
        v15 += 24;
        --v16;
      }

      while (v16);
    }

LABEL_17:
    ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::reduce_size(a1, v13, a3, a4, a5);
    ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::append(a1, a2[2] + 24 * v13, *a2 - v13, v25, v26);
    return a1;
  }

  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_19:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
LABEL_11:
    __break(1u);
    return;
  }

  ashp::detail::dynamic_array::buffer<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::buffer(&v15, a2, a3, a4);
  if (*a1)
  {
    v6 = 0;
    v7 = 0;
    while (v16)
    {
      v8 = v16 + v6;
      v9 = (a1[2] + v6);
      v10 = *v9;
      *v9 = 0;
      *v8 = v10;
      v11 = v9[1];
      *(v8 + 4) = *(v9 + 4);
      *(v8 + 1) = v11;
      ++v7;
      v6 += 24;
      if (v7 >= *a1)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v12 = v15;
  v13 = v16;
  v15 = 0;
  v16 = 0;
  v14 = a1[2];
  a1[1] = v12;
  a1[2] = v13;
  if (v14)
  {
    free(v14);
    if (v16)
    {
      free(v16);
    }
  }
}

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::boot_ipc_stage_spec::client_register_spec::parse(ashp::acipc::config::boot_ipc_stage_spec::client_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>(ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::boot_ipc_stage_spec::client_register_spec::parse(ashp::acipc::config::boot_ipc_stage_spec::client_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>(ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    v35 = 0;
    LOBYTE(v36) = 0;
    HIDWORD(v36) = 0;
    v37 = 0;
    v9 = **(a3 + 8);
    if (a2)
    {
      v10 = CFGetTypeID(a2);
      if (v10 != CFDictionaryGetTypeID())
      {
        a2 = 0;
      }

      if (a2)
      {
        if (!parse_field<&(BOOL parse_number<unsigned char>(unsigned char *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned char>(&v36, a2, @"bank", v9) || !parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v36 + 1, a2, @"offset", v9) || !parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v37, a2, @"length", v9))
        {
          goto LABEL_31;
        }

        if (ashp::boxed::dictionary::count(a2, v13, v11, v12) == 3)
        {
          ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v34, cf, v14, a4);
          v15 = v34;
          v34 = v35;
          v35 = v15;
          ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v34, v16, v17, v18);
          v23 = **(a3 + 16);
          v24 = *v23;
          v25 = *v23 + 1;
          if (*v23 == -1)
          {
            ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v21);
            ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v33);
            _os_crash();
            __break(1u);
          }

          else
          {
            v26 = v23[1];
            if (v25 > v26)
            {
              if (v26 <= 8)
              {
                v19 = 8;
              }

              else
              {
                v19 = v23[1];
              }

              v27 = (*v23 - 8) < 0;
              if (v25 >= 9)
              {
                do
                {
                  if (is_mul_ok(v19, 3uLL))
                  {
                    v19 = (3 * v19) >> 1;
                  }

                  else
                  {
                    v19 = *v23 + 1;
                  }
                }

                while (v19 < v25);
              }

              if (v26 < v19)
              {
                ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::set_capacity(v23, v19, v20, v21, v22);
                v24 = *v23;
                v26 = v23[1];
              }
            }

            if (v24 < v26)
            {
              v28 = v23[2];
              if (v28)
              {
                v29 = v28 + 24 * v24;
                v30 = v35;
                v35 = 0;
                *v29 = v30;
                v31 = v36;
                *(v29 + 16) = v37;
                *(v29 + 8) = v31;
                ++*v23;
LABEL_32:
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v35, v19, v20, v21);
                return;
              }

LABEL_37:
              __break(1u);
              return;
            }
          }

          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v22);
          _os_crash();
          goto LABEL_37;
        }

        v32 = "unknown keys present";
      }

      else
      {
        v32 = "unexpected object type";
      }
    }

    else
    {
      v32 = "missing object";
    }

    set_error(v9, v32, 0, a4, a5);
LABEL_31:
    set_error_location(**(a3 + 8), cf, v11, v12);
    **a3 = 1;
    goto LABEL_32;
  }
}

void sub_23ECBC390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

uint64_t parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::main_ipc_stage_spec::mcr_spec::parse(ashp::acipc::config::main_ipc_stage_spec::mcr_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::main_ipc_stage_spec::mcr_spec>(ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,ashp::optional_traits<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>>(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const char *a4, void *a5)
{
  value = ashp::boxed::dictionary::get_value(a3, @"mcr", a3, a4);
  if (!value)
  {
    v74[64] = 0;
    if (*(a2 + 64) == 1)
    {
      ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::emplace<ashp::acipc::config::main_ipc_stage_spec::mcr_spec const&>(v74, a2, v10, v11);
    }

    ashp::swap(a1, v74, v10, v11);
    ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(v74, v52, v53, v54);
    ++*a5;
    return 1;
  }

  if (!a1 || *(a1 + 64) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xD8, "parse_optional", v12);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v13 = value;
  v14 = CFGetTypeID(value);
  if (v14 == CFBooleanGetTypeID() && (ashp::boxed::BOOLean::value(v13, v15, v16, v17) & 1) == 0)
  {
    return 1;
  }

  LOWORD(v68) = 0;
  HIDWORD(v68) = 0;
  v69 = 0;
  v70[16] = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v18 = CFGetTypeID(v13);
  if (v18 != CFDictionaryGetTypeID())
  {
    v13 = 0;
  }

  if (!v13)
  {
    set_error(a4, "unexpected object type", 0, v19, v20);
LABEL_21:
    v51 = 0;
    goto LABEL_22;
  }

  *v66 = 0;
  if (!parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v68, v13, @"ring_size", a4))
  {
    goto LABEL_21;
  }

  if (!parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v68 + 1, 0, v13, @"header_size", a4, v66))
  {
    goto LABEL_21;
  }

  if (!parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v69, 0, v13, @"footer_size", a4, v66))
  {
    goto LABEL_21;
  }

  v74[16] = 0;
  v24 = parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(ashp::optional<ashp::acipc::config::named_target_spec,ashp::optional_traits<ashp::acipc::config::named_target_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::named_target_spec,void>>(v70, v74, v13, @"doorbell", a4, v66);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v74, v25, v26, v27);
  if ((v24 & 1) == 0 || !parse_field_with_default<&(ashp::acipc::config::doorbell_moderation_spec::parse(ashp::acipc::config::doorbell_moderation_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_moderation_spec>(&v71, v13, a4, v66) || !parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v72, v13, @"interrupt", a4))
  {
    goto LABEL_21;
  }

  v28 = ashp::boxed::dictionary::count(v13, v21, v22, v23);
  if (*v66 + v28 != 6)
  {
    set_error(a4, "unknown keys present", 0, v30, v31);
    goto LABEL_21;
  }

  v61 = v68;
  v62 = v69;
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v63, v70, v29, v30);
  v32 = v72;
  v72 = 0;
  v63[3] = v71;
  v64 = v32;
  v65 = v73;
  v67 = 0;
  ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::emplace<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>(v66, &v61, v33, v34);
  ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::storage(v74, v66, v35, v36);
  ashp::swap(a1, v74, v37, v38);
  ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(v74, v39, v40, v41);
  ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(v66, v42, v43, v44);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v64, v45, v46, v47);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v63, v48, v49, v50);
  v51 = 1;
LABEL_22:
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v72, v21, v22, v23);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v70, v55, v56, v57);
  if (v51)
  {
    return 1;
  }

  set_error_location(a4, @"mcr", v58, v59);
  return 0;
}

void sub_23ECBC6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v26 - 136, a2, a3, a4);
  ashp::acipc::config::main_ipc_stage_spec::mcr_spec::~mcr_spec(&a26, v28, v29, v30);
  _Unwind_Resume(a1);
}

void ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 64) == 1)
  {
    *(a1 + 64) = 0;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((a1 + 48), a2, a3, a4);

    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(a1 + 16, v5, v6, v7);
  }
}

void ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::emplace<ashp::acipc::config::main_ipc_stage_spec::mcr_spec const&>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(a1, a2, a3, a4);
  if (a1)
  {
    v8 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v8;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(a1 + 16, a2 + 16, v6, v7);
    *(a1 + 40) = *(a2 + 40);
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((a1 + 48), *(a2 + 48), v9, v10);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = 1;
  }

  else
  {
    __break(1u);
  }
}

void ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::emplace<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(a1, a2, a3, a4);
  if (a1)
  {
    v8 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v8;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(a1 + 16, a2 + 16, v6, v7);
    *(a1 + 40) = *(a2 + 40);
    v9 = *(a2 + 48);
    *(a2 + 48) = 0;
    *(a1 + 48) = v9;
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::storage(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (result)
  {
    v5 = result;
    *(result + 64) = 0;
    if (*(a2 + 64) == 1)
    {
      ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::emplace<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>(result, a2, a3, a4);
      ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(a2, v6, v7, v8);
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t parse_field_with_default<&(ashp::acipc::config::doorbell_moderation_spec::parse(ashp::acipc::config::doorbell_moderation_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_moderation_spec>(_DWORD *a1, const __CFDictionary *a2, const char *a3, const char *a4)
{
  value = ashp::boxed::dictionary::get_value(a2, @"doorbell_moderation", a3, a4);
  if (!value)
  {
    *a1 = 0;
    ++*a4;
    return 1;
  }

  if (a1)
  {
    v9 = value;
    v10 = CFGetTypeID(value);
    if (v10 != CFDictionaryGetTypeID())
    {
      v9 = 0;
    }

    if (!v9)
    {
      v16 = "unexpected object type";
      goto LABEL_13;
    }

    if (!parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(a1, v9, @"interval_usec", a3) || !parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(a1 + 1, v9, @"leeway_usec", a3))
    {
      goto LABEL_14;
    }

    if (ashp::boxed::dictionary::count(v9, v15, v13, v14) != 2)
    {
      v16 = "unknown keys present";
LABEL_13:
      set_error(a3, v16, 0, v11, v12);
LABEL_14:
      set_error_location(a3, @"doorbell_moderation", v13, v14);
      return 0;
    }

    return 1;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x2FE, "parse", v8);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t parse_field_with_default<&(ashp::acipc::config::tr_debug_spec::parse(ashp::acipc::config::tr_debug_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::tr_debug_spec>(uint64_t a1, const __CFDictionary *a2, uint64_t a3, const char *a4)
{
  value = ashp::boxed::dictionary::get_value(a2, @"debug", a3, a4);
  if (!value)
  {
    *a1 = 0;
    ++*a4;
    return 1;
  }

  if (!a1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x58A, "parse", v8);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = value;
  v10 = CFGetTypeID(value);
  if (v10 != CFDictionaryGetTypeID())
  {
    v9 = 0;
  }

  if (!v9)
  {
    v17 = "unexpected object type";
    goto LABEL_13;
  }

  v19 = 0;
  if (!parse_field_with_default<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>((a1 + 2), 0, v9, @"completed_transfer_log_depth", a3, &v19) || !parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(a1, 0, v9, @"dump_pending_transfer_stats", a3, &v19))
  {
    goto LABEL_14;
  }

  v16 = ashp::boxed::dictionary::count(v9, v15, v13, v14);
  if (v19 + v16 == 2)
  {
    return 1;
  }

  v17 = "unknown keys present";
LABEL_13:
  set_error(a3, v17, 0, v11, v12);
LABEL_14:
  set_error_location(a3, @"debug", v13, v14);
  return 0;
}