uint64_t ashp::acipc::acipc_driver::will_set_transport(ashp::acipc::acipc_driver *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *(this + 24);
  v6 = *(this + 715);
  if (v6)
  {
    v7 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v6, a2, a3, a4);
    if (v7)
    {
      CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
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
  }

  else
  {
    v9 = "<nil>";
  }

  v10 = *(this + 716);
  if (v10)
  {
    v10 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v10, a2, a3, a4);
    if (v10)
    {
      v10 = CFStringGetCStringPtr(v10, 0x8000100u);
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = "???";
      }
    }

    else
    {
      v11 = "(nil)";
    }
  }

  else
  {
    v11 = "<nil>";
  }

  log_level = ashp::detail::logging::get_log_level(v10);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447490;
      v20 = "acipc_driver.cpp";
      v21 = 1024;
      v22 = 221;
      v23 = 2082;
      v24 = "will_set_transport";
      v25 = 1024;
      *v26 = v5;
      *&v26[4] = 2080;
      *&v26[6] = v9;
      v27 = 2080;
      v28 = v11;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reset=%u, boot_state=%s, ipc_state=%s", buf, 0x36u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reset=%u, boot_state=%s, ipc_state=%s", "acipc_driver.cpp", 221, "will_set_transport", v5, v9, v11);
  }

  os_unfair_lock_assert_owner(this + 2);
  if (*(this + 24))
  {
    goto LABEL_23;
  }

  exec_stage_register = ashp::acipc::acipc_driver::read_exec_stage_register(this);
  v15 = ashp::acipc::acipc_driver::exec_stage_would_cause_ipc_teardown(this, exec_stage_register);
  if (v15)
  {
    ashp::acipc::acipc_driver::teardown_current_ipc_stage(this);
    *(this + 714) = 0;
    ashp::driver::update_exec_stage(this, 0xFFFFFFFF);
  }

  if (*(this + 715))
  {
    v16 = "boot";
  }

  else
  {
    if (!*(this + 716))
    {
LABEL_23:
      result = 0;
      goto LABEL_38;
    }

    v16 = "main";
  }

  v17 = ashp::detail::logging::get_log_level(v15);
  if (v17 >= 1)
  {
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      *buf = 136446978;
      v20 = "acipc_driver.cpp";
      v21 = 1024;
      v22 = 236;
      v23 = 2082;
      v24 = "will_set_transport";
      v25 = 2080;
      *v26 = v16;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] cannot set transport, %s ipc stage is not null", buf, 0x26u);
    }
  }

  if (ashp::detail::logging::get_log_level(v17))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] cannot set transport, %s ipc stage is not null", "acipc_driver.cpp", 236, "will_set_transport", v16);
  }

  ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
  result = 3758097112;
LABEL_38:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void *ashp::acipc::acipc_driver::exec_stage_would_cause_ipc_teardown(const os_unfair_lock *this, int a2)
{
  os_unfair_lock_assert_owner(this + 2);
  v4 = *&this[1428]._os_unfair_lock_opaque;
  if (!v4 || *(v4 + 8) == a2)
  {
    return 0;
  }

  result = ashp::acipc::acipc_driver::find_exec_stage_with_value(this, a2);
  if (result)
  {
    v9 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(result, v6, v7, v8);
    current_ipc_stage_name = ashp::acipc::acipc_driver::get_current_ipc_stage_name(this);
    v11 = (v9 | current_ipc_stage_name) == 0;
    if (v9)
    {
      if (current_ipc_stage_name)
      {
        v11 = CFStringCompare(v9, current_ipc_stage_name, 0) == kCFCompareEqualTo;
      }
    }

    return !v11;
  }

  return result;
}

void ashp::acipc::acipc_driver::handle_exit_reset(const os_unfair_lock *this)
{
  v11 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  log_level = ashp::detail::logging::get_log_level(v2);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v6 = "acipc_driver.cpp";
      v7 = 1024;
      v8 = 212;
      v9 = 2082;
      v10 = "handle_exit_reset";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] probing exec stage register", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] probing exec stage register", "acipc_driver.cpp", 212, "handle_exit_reset");
  }

  ashp::acipc::acipc_driver::probe_exec_stage_register_if_ready(this);
  v4 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver::handle_enter_reset(os_unfair_lock_s *this)
{
  v11 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  log_level = ashp::detail::logging::get_log_level(v2);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v6 = "acipc_driver.cpp";
      v7 = 1024;
      v8 = 202;
      v9 = 2082;
      v10 = "handle_enter_reset";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tearing down current ipc stage", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] tearing down current ipc stage", "acipc_driver.cpp", 202, "handle_enter_reset");
  }

  ashp::acipc::acipc_driver::teardown_current_ipc_stage(this);
  *&this[1428]._os_unfair_lock_opaque = 0;
  ashp::driver::update_exec_stage(this, 0xFFFFFFFF);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::acipc::acipc_driver::handle_activate(const os_unfair_lock *this)
{
  v2 = this;
  v344 = *MEMORY[0x277D85DE8];
  theString = 0;
  v256 = 0;
  os_unfair_lock_assert_owner(this + 2);
  v4 = (v2 + 16);
  v5 = *(v2 + 16);
  if (v5)
  {
    p_theString = &theString;
    v259[0] = 0;
    v6 = v259;
    memset(&v259[8], 0, 32);
    v257[0] = &p_theString;
    v257[1] = v259;
    v258 = 1;
    *(&v322 + 1) = 0;
    v323 = 0;
    v326 = 0;
    v329 = 0;
    LOBYTE(v330) = 0;
    HIDWORD(v330) = 0;
    LOBYTE(v331) = 0;
    v334 = 0;
    v335 = 0;
    v336 = 0;
    v7 = &v337;
    memset(buf, 0, sizeof(buf));
    memset(v319, 0, sizeof(v319));
    v320 = 0u;
    memset(v321, 0, sizeof(v321));
    memset(v342, 0, sizeof(v342));
    v341 = 0u;
    v339 = 0u;
    memset(v340, 0, sizeof(v340));
    memset(v338, 0, sizeof(v338));
    v337 = 0u;
    v8 = CFGetTypeID(v5);
    if (v8 != CFDictionaryGetTypeID())
    {
      v5 = 0;
    }

    if (!v5)
    {
      set_error(v259, "unexpected object type", 0, v9, v10);
      goto LABEL_12;
    }

    v275 = 0;
    if (!parse_field<&(parse_symbol(ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>(buf, v5, @"protocol", v259) || !parse_field<&(parse_symbol(ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>(&buf[8], v5, @"vendor", v259) || !parse_field<&(parse_symbol(ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>(&buf[16], v5, @"chipset", v259))
    {
      goto LABEL_12;
    }

    v274 = 0;
    value = ashp::boxed::dictionary::get_value(v5, @"role", v12, v13);
    if (!value)
    {
      goto LABEL_68;
    }

    if (parse_symbol(&buf[24], value, v259, v17, v18))
    {
      v1 = 1;
      v22 = 1;
    }

    else
    {
      set_error_location(v259, @"role", v20, v21);
      v22 = 0;
      v1 = 1;
    }

    while (1)
    {
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v274, v19, v20, v21);
      if ((v22 & 1) == 0)
      {
        goto LABEL_12;
      }

      v272[0] = 0;
      v272[1] = 0;
      v273 = 0;
      v80 = ashp::boxed::dictionary::get_value(v5, @"interrupts", v12, v13);
      v84 = v80;
      v47 = &buf[32];
      if (v80)
      {
        v278 = &buf[32];
        v277 = v259;
        if (*&buf[32])
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x15B, "parse_dict", v83);
          _os_crash();
          __break(1u);
LABEL_126:
          v2 = "BUG in Airship: ";
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", v83);
          _os_crash();
          __break(1u);
LABEL_127:
          set_error(v259, "missing object", "driver_ioservice_params", v175, v176);
          goto LABEL_12;
        }

        v1 = CFGetTypeID(v80);
        if (v1 != CFDictionaryGetTypeID())
        {
          v84 = 0;
        }

        if (!v84)
        {
          set_error(v259, "unexpected object type", 0, v87, v88);
LABEL_83:
          set_error_location(v259, @"interrupts", v94, v95);
          ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::~storage(v272, v106, v107, v108, v109);
          goto LABEL_12;
        }

        v276 = 0;
        v89 = ashp::boxed::dictionary::count(v84, v85, v86, v87);
        if (*&buf[40] < v89)
        {
          ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::set_capacity(&buf[32], v89, v90, v91, v92);
        }

        *&context = &v276;
        *(&context + 1) = &v277;
        *&v280 = &v278;
        CFDictionaryApplyFunction(v84, iterate_dict<BOOL parse_dict<&(ashp::acipc::config::interrupt_spec::parse(ashp::acipc::config::interrupt_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::interrupt_spec>(ashp::dynamic_array<ashp::acipc::config::interrupt_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::interrupt_spec::parse(ashp::acipc::config::interrupt_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::interrupt_spec>(ashp::dynamic_array<ashp::acipc::config::interrupt_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke, &context);
        if (v276 == 1)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v97 = v272[0];
        if (v272[0] <= *&buf[40])
        {
LABEL_85:
          v253 = v47;
          v110 = *&buf[32];
          if (v97 < *&buf[32])
          {
            v110 = v97;
          }

          v254 = v110;
          if (v319[0])
          {
            if (!v273 && v110)
            {
              goto LABEL_126;
            }

            if (v110)
            {
              v111 = 0;
              v112 = v110;
              do
              {
                v113 = v273;
                v114 = v319[0];
                ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&context, *(v273 + v111), v81, v82);
                v115 = *(v114 + v111);
                *(v114 + v111) = context;
                *&context = v115;
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&context, v116, v117, v118);
                ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v278, *(v113 + v111 + 8), v119, v120);
                v121 = v114 + v111;
                v122 = *(v121 + 8);
                *(v121 + 8) = v278;
                v278 = v122;
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v278, v123, v124, v125);
                *(v121 + 16) = *(v113 + v111 + 16);
                v111 += 24;
                --v112;
              }

              while (v112);
            }
          }

          else if (v110)
          {
            goto LABEL_126;
          }

          ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::reduce_size(v253, v254, v81, v82, v83);
          ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::append(v253, v273 + 24 * v254, v272[0] - v254, v126, v127);
        }

        else
        {
          *&context = 0;
          ashp::detail::dynamic_array::buffer<ashp::acipc::config::interrupt_spec>::buffer(&context + 1, v272[0], v81, v82);
          ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::append(&context, v273, v272[0], v98, v99);
          v100 = *&buf[32];
          *&buf[32] = context;
          context = v100;
          v101 = v319[0];
          v319[0] = v280;
          *&v280 = v101;
          ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::~storage(&context, v102, v103, v104, v105);
        }

        v275 = v1;
      }

      ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::~storage(v272, v93, v94, v95, v96);
      memset(v271, 0, sizeof(v271));
      v128 = parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::doorbell_spec::parse(ashp::acipc::config::doorbell_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_spec>(ashp::dynamic_array<ashp::acipc::config::doorbell_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::doorbell_spec>>(&v319[1], v271, v5, v259, &v275);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::~storage(v271, v129, v130, v131, v132);
      if ((v128 & 1) == 0)
      {
        goto LABEL_12;
      }

      memset(v270, 0, sizeof(v270));
      v133 = parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::exec_stage_spec::parse(ashp::acipc::config::exec_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::exec_stage_spec>(ashp::dynamic_array<ashp::acipc::config::exec_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::exec_stage_spec>>(&v320, v270, v5, v259, &v275);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::~storage(v270, v134, v135, v136, v137);
      if ((v133 & 1) == 0)
      {
        goto LABEL_12;
      }

      memset(v269, 0, sizeof(v269));
      v138 = parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::resource_spec::parse(ashp::acipc::config::resource_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::resource_spec>(ashp::dynamic_array<ashp::acipc::config::resource_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::resource_spec>>(&v321[1], v269, v5, v259, &v275);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::~storage(v269, v139, v140, v141, v142);
      if ((v138 & 1) == 0)
      {
        goto LABEL_12;
      }

      if (!parse_field<&(ashp::acipc::config::limit_spec::parse(ashp::acipc::config::limit_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::limit_spec>(&v322, v5, v259, v13))
      {
        goto LABEL_12;
      }

      LOBYTE(v280) = 0;
      v268 = 0;
      if ((parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::errata_spec::parse(ashp::acipc::config::errata_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::errata_spec>(ashp::optional<ashp::acipc::config::errata_spec,ashp::optional_traits<ashp::acipc::config::errata_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::errata_spec,void>>(&context, &v267, v5, v259, &v275) & 1) == 0)
      {
        goto LABEL_12;
      }

      v143 = v280 ? context : -1;
      v144 = v280 ? WORD4(context) : 0;
      *(&v322 + 1) = v143;
      v323 = v144;
      v1 = buf;
      if (!parse_field<&(ashp::acipc::config::device_info_spec::parse(ashp::acipc::config::device_info_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_info_spec>(&v324, v5, v259, v13))
      {
        goto LABEL_12;
      }

      memset(v266, 0, sizeof(v266));
      v7 = parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::boot_ipc_stage_spec::parse(ashp::acipc::config::boot_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::boot_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec>>(v7, v266, v5, v259, &v275);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::~storage(v266, v145, v146, v147, v148);
      if ((v7 & 1) == 0)
      {
        goto LABEL_12;
      }

      memset(v265, 0, sizeof(v265));
      v7 = parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::main_ipc_stage_spec::parse(ashp::acipc::config::main_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::main_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::main_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::main_ipc_stage_spec>>(&v338[1], v265, v5, v259, &v275);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::~storage(v265, v149, v150, v151, v152);
      if ((v7 & 1) == 0)
      {
        goto LABEL_12;
      }

      v7 = &v339;
      memset(v264, 0, sizeof(v264));
      v153 = parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::transfer_ring_spec::parse(ashp::acipc::config::transfer_ring_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::transfer_ring_spec>(ashp::dynamic_array<ashp::acipc::config::transfer_ring_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::transfer_ring_spec>>(&v339, v264, v5, v259, &v275);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::~storage(v264, v154, v155, v156, v157);
      if ((v153 & 1) == 0)
      {
        goto LABEL_12;
      }

      memset(v263, 0, sizeof(v263));
      v158 = parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::completion_ring_spec::parse(ashp::acipc::config::completion_ring_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_ring_spec>(ashp::dynamic_array<ashp::acipc::config::completion_ring_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::completion_ring_spec>>(&v340[1], v263, v5, v259, &v275);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::~storage(v263, v159, v160, v161, v162);
      if ((v158 & 1) == 0)
      {
        goto LABEL_12;
      }

      memset(v262, 0, sizeof(v262));
      v163 = parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::completion_group_spec::parse(ashp::acipc::config::completion_group_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_group_spec>(ashp::dynamic_array<ashp::acipc::config::completion_group_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::completion_group_spec>>(&v341, v262, v5, v259, &v275);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_group_spec>::~storage(v262, v164, v165, v166, v167);
      if ((v163 & 1) == 0)
      {
        goto LABEL_12;
      }

      memset(v261, 0, sizeof(v261));
      v168 = parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::memory_region_spec::parse(ashp::acipc::config::memory_region_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::memory_region_spec>(ashp::dynamic_array<ashp::acipc::config::memory_region_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::memory_region_spec>>(&v342[1], v261, v5, v259, &v275);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::memory_region_spec>::~storage(v261, v169, v170, v171, v172);
      if ((v168 & 1) == 0)
      {
        goto LABEL_12;
      }

      if (!ashp::boxed::dictionary::get_value(v5, @"driver_ioservice_params", v12, v13))
      {
        goto LABEL_127;
      }

      v177 = ashp::boxed::dictionary::count(v5, v173, v174, v175);
      if (v275 + v177 != 18)
      {
        set_error(v259, "unknown keys present", 0, v180, v181);
        goto LABEL_12;
      }

      if (!*buf || (ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v178, v179, v180), !*buf) || CFStringCompare(*buf, @"acipc", 0))
      {
        set_error(v259, "invalid value", 0, v180, v181);
        v184 = "protocol";
        goto LABEL_121;
      }

      if (*&buf[32])
      {
        v188 = v319[0];
        v189 = 24 * *&buf[32];
        while (ashp::acipc::config::interrupt_spec::validate(v188, buf, v259, v180, v181))
        {
          v188 += 3;
          v189 -= 24;
          if (!v189)
          {
            goto LABEL_133;
          }
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v188, v190, v191, v180);
        set_error_location(v259, *v188, v232, v233);
        v184 = "interrupts";
LABEL_121:
        set_error_location(v259, v184, v182, v183);
LABEL_12:
        v317 = 0;
        goto LABEL_13;
      }

LABEL_133:
      if (v319[1])
      {
        v192 = v319[3];
        v193 = 96 * v319[1];
        while (ashp::acipc::config::doorbell_spec::validate(v192, buf, v259, v180, v181))
        {
          v192 += 12;
          v193 -= 96;
          if (!v193)
          {
            goto LABEL_137;
          }
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v192, v194, v195, v180);
        set_error_location(v259, *v192, v234, v235);
        v184 = "doorbells";
        goto LABEL_121;
      }

LABEL_137:
      if (v320)
      {
        v196 = v321[0];
        v197 = 24 * v320;
        while (ashp::acipc::config::exec_stage_spec::validate(v196, buf, v259, v180, v181))
        {
          v196 += 3;
          v197 -= 24;
          if (!v197)
          {
            goto LABEL_141;
          }
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v196, v198, v199, v180);
        set_error_location(v259, *v196, v236, v237);
        v184 = "exec_stages";
        goto LABEL_121;
      }

LABEL_141:
      if (v321[1])
      {
        v200 = v321[3];
        v201 = 16 * v321[1];
        while (ashp::acipc::config::resource_spec::validate(v200, buf, v259, v180, v181))
        {
          v200 += 2;
          v201 -= 16;
          if (!v201)
          {
            goto LABEL_145;
          }
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v200, v202, v203, v180);
        set_error_location(v259, *v200, v238, v239);
        v184 = "resources";
        goto LABEL_121;
      }

LABEL_145:
      if (!ashp::acipc::config::device_info_spec::validate(&v324, buf, v259, v180, v181))
      {
        v184 = "device_info";
        goto LABEL_121;
      }

      if (v337)
      {
        v205 = v338[0];
        v206 = 184 * v337;
        while (ashp::acipc::config::boot_ipc_stage_spec::validate(v205, buf, v259, v183, v204))
        {
          v205 += 23;
          v206 -= 184;
          if (!v206)
          {
            goto LABEL_150;
          }
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v205, v207, v182, v183);
        set_error_location(v259, *v205, v240, v241);
        v184 = "boot_ipc_stages";
        goto LABEL_121;
      }

LABEL_150:
      if (v338[1])
      {
        v208 = v338[3];
        v209 = 304 * v338[1];
        while (ashp::acipc::config::main_ipc_stage_spec::validate(v208, buf, v259, v183, v204))
        {
          v208 += 38;
          v209 -= 304;
          if (!v209)
          {
            goto LABEL_154;
          }
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v208, v210, v182, v183);
        set_error_location(v259, *v208, v242, v243);
        v184 = "main_ipc_stages";
        goto LABEL_121;
      }

LABEL_154:
      if (v339)
      {
        v211 = v340[0];
        v212 = 368 * v339;
        while (ashp::acipc::config::transfer_ring_spec::validate(v211, buf, v259, v183))
        {
          v211 += 46;
          v212 -= 368;
          if (!v212)
          {
            goto LABEL_158;
          }
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v211, v213, v182, v183);
        set_error_location(v259, *v211, v244, v245);
        v184 = "transfer_rings";
        goto LABEL_121;
      }

LABEL_158:
      if (v340[1])
      {
        v214 = v340[3];
        v215 = 272 * v340[1];
        while (ashp::acipc::config::completion_ring_spec::validate(v214, buf, v259, v183))
        {
          v214 += 34;
          v215 -= 272;
          if (!v215)
          {
            goto LABEL_162;
          }
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v214, v216, v182, v183);
        set_error_location(v259, *v214, v246, v247);
        v184 = "completion_rings";
        goto LABEL_121;
      }

LABEL_162:
      if (v341)
      {
        v217 = v342[0];
        v218 = 40 * v341;
        while (ashp::acipc::config::completion_group_spec::validate(v217, buf, v259, v183, v204))
        {
          v217 += 5;
          v218 -= 40;
          if (!v218)
          {
            goto LABEL_166;
          }
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v217, v219, v182, v183);
        set_error_location(v259, *v217, v248, v249);
        v184 = "completion_groups";
        goto LABEL_121;
      }

LABEL_166:
      if (v342[1])
      {
        v220 = v342[3];
        v221 = 72 * v342[1];
        while ((ashp::acipc::config::memory_region_spec::validate(v220, buf, v259, v183, v204) & 1) != 0)
        {
          v220 += 9;
          v221 -= 72;
          if (!v221)
          {
            goto LABEL_170;
          }
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v220, v222, v182, v183);
        set_error_location(v259, *v220, v250, v251);
        v184 = "memory_regions";
        goto LABEL_121;
      }

LABEL_170:
      v223 = *buf;
      v224 = *&buf[16];
      memset(buf, 0, sizeof(buf));
      context = v223;
      v280 = v224;
      v281 = *&buf[32];
      v283 = *&v319[1];
      v282 = v319[0];
      v284 = v319[3];
      memset(v319, 0, sizeof(v319));
      v285 = v320;
      v320 = 0u;
      v287 = *&v321[1];
      v286 = v321[0];
      v288 = v321[3];
      memset(v321, 0, sizeof(v321));
      v290 = v323;
      v289 = v322;
      v293 = 0;
      if (v326 == 1)
      {
        v291 = v324;
        v292 = v325;
        v293 = 1;
        v326 = 0;
      }

      v296 = 0;
      if (v329 == 1)
      {
        v294 = v327;
        v295 = v328;
        v296 = 1;
        v329 = 0;
      }

      v297 = v330;
      v298 = v331;
      v301 = 0;
      if (v334 == 1)
      {
        v299 = v332;
        v300 = v333;
        v301 = 1;
        v334 = 0;
      }

      v302 = v335;
      v303 = v336;
      v304 = v337;
      v337 = 0u;
      v225 = v338[0];
      v335 = 0;
      memset(v338, 0, sizeof(v338));
      v306 = *&v338[1];
      v305 = v225;
      v307 = v338[3];
      v308 = v339;
      v339 = 0u;
      v226 = v340[0];
      memset(v340, 0, sizeof(v340));
      v310 = *&v340[1];
      v309 = v226;
      v311 = v340[3];
      v312 = v341;
      v341 = 0u;
      v227 = v342[0];
      memset(v342, 0, sizeof(v342));
      v314 = *&v342[1];
      v313 = v227;
      v315 = v342[3];
      v317 = 0;
      ashp::unsafe_storage<ashp::acipc::config::acipc_config>::storage::emplace<ashp::acipc::config::acipc_config>(&v316, &context, v182, v183, v204);
      ashp::acipc::config::acipc_config::~acipc_config(&context, v228, v229, v230, v231);
LABEL_13:
      ashp::acipc::config::acipc_config::~acipc_config(buf, v11, v12, v13, v14);
      ashp::deferred_action<ashp::acipc::config::acipc_config::parse(ashp::boxed::object,ashp::acipc::config::acipc_config::error_detail *)::$_0>::~deferred_action(v257, v23, v24, v25);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::string,ashp::cf::refcount_policy>>::~storage(&v259[16], v26, v27, v28);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v6 + 1, v29, v30, v31);
      v343 = 0;
      if (v317 == 1)
      {
        ashp::unsafe_storage<ashp::acipc::config::acipc_config>::storage::emplace<ashp::acipc::config::acipc_config>(buf, &v316, v33, v34, v35);
        if (v317 == 1)
        {
          v317 = 0;
          ashp::acipc::config::acipc_config::~acipc_config(&v316, v32, v33, v34, v35);
        }
      }

      if (v4[4184] == 1)
      {
        if (v343)
        {
          ashp::acipc::config::acipc_config::acipc_config(&context, (v2 + 3824));
          ashp::acipc::config::acipc_config::operator=((v2 + 3824), buf, v36, v37);
          ashp::acipc::config::acipc_config::operator=(buf, &context, v38, v39);
          p_context = &context;
        }

        else
        {
          ashp::unsafe_storage<ashp::acipc::config::acipc_config>::storage::emplace<ashp::acipc::config::acipc_config>(buf, (v2 + 3824), v33, v34, v35);
          if (v4[4184] != 1)
          {
            goto LABEL_25;
          }

          v4[4184] = 0;
          p_context = (v2 + 3824);
        }

        goto LABEL_24;
      }

      if (v343)
      {
        ashp::unsafe_storage<ashp::acipc::config::acipc_config>::storage::emplace<ashp::acipc::config::acipc_config>((v2 + 3824), buf, v33, v34, v35);
        if (v343 == 1)
        {
          v343 = 0;
          p_context = buf;
LABEL_24:
          ashp::acipc::config::acipc_config::~acipc_config(p_context, v32, v33, v34, v35);
        }
      }

LABEL_25:
      if (v343 == 1)
      {
        v343 = 0;
        ashp::acipc::config::acipc_config::~acipc_config(buf, v32, v33, v34, v35);
      }

      if (v317 == 1)
      {
        v317 = 0;
        ashp::acipc::config::acipc_config::~acipc_config(&v316, v32, v33, v34, v35);
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v4, v32, v33, v34);
      if ((v4[4184] & 1) == 0)
      {
        if (theString)
        {
          ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&theString, v42, v43, v44);
          CStringPtr = theString;
          if (theString)
          {
            CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
            if (CStringPtr)
            {
              v61 = CStringPtr;
            }

            else
            {
              v61 = "???";
            }
          }

          else
          {
            v61 = "(nil)";
          }
        }

        else
        {
          v61 = "unknown";
        }

        if (v256)
        {
          ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v256, v42, v43, v44);
          CStringPtr = v256;
          if (v256)
          {
            CStringPtr = CFStringGetCStringPtr(v256, 0x8000100u);
            if (CStringPtr)
            {
              v62 = CStringPtr;
            }

            else
            {
              v62 = "???";
            }
          }

          else
          {
            v62 = "(nil)";
          }
        }

        else
        {
          v62 = "unknown";
        }

        log_level = ashp::detail::logging::get_log_level(CStringPtr);
        if (log_level >= 1)
        {
          log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (log_level)
          {
            *buf = 136447234;
            *&buf[4] = "acipc_driver.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 117;
            *&buf[18] = 2082;
            *&buf[20] = "handle_activate";
            *&buf[28] = 2080;
            *&buf[30] = v61;
            *&buf[38] = 2080;
            *&buf[40] = v62;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] invalid configuration: %s at %s", buf, 0x30u);
          }
        }

        v2 = 3758097084;
        if (ashp::detail::logging::get_log_level(log_level))
        {
          if (airship_platform_get_global_logger::once == -1)
          {
            goto LABEL_65;
          }

          goto LABEL_124;
        }

        goto LABEL_66;
      }

      queue = ashp::driver::get_queue(v2, @"main");
      ashp::driver::get_queue(v2, @"doorbell");
      *buf = 0;
      v45 = os_parse_boot_arg_int();
      if (*buf)
      {
        v46 = v45;
      }

      else
      {
        v46 = 0;
      }

      v6 = v4 + 4080;
      v4[6156] = v46;
      v47 = 6072;
      os_unfair_lock_lock((v2 + 6072));
      *(v2 + 6076) = 32;
      *(v2 + 6088) = 256;
      v48 = malloc_type_aligned_alloc(8uLL, 0x300uLL, 0x1000040504FFAC1uLL);
      v5 = v48;
      if (!v48)
      {
        goto LABEL_123;
      }

      v51 = xmmword_23ED06170;
      v52 = 32;
      do
      {
        if (v51 >= 0x20)
        {
          v4 = "BUG in Airship: ";
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v50);
          _os_crash();
          __break(1u);
          goto LABEL_85;
        }

        v53 = &v48[24 * v51];
        *v53 = 0;
        *(v53 + 1) = 0;
        *(v53 + 2) = 0;
        *&v51 = v51 + 1;
        --v52;
      }

      while (v52);
      v54 = *(v2 + 6096);
      *(v2 + 6096) = v51;
      v55 = *(v2 + 6112);
      *(v2 + 6112) = v5;
      if (!v54 || v55)
      {
        if (v55)
        {
          free(v55);
        }

        *(v2 + 6080) = 0;
        os_unfair_lock_unlock((v2 + 6072));
        v60 = (v2 + 4208);
        if (v4[4240] == 1)
        {
          v4[4240] = 0;
          ashp::acipc::boot_manager::~boot_manager(v60, v56, v57, v58, v59);
        }

        *v60 = 0;
        *(v60 + 1) = 0;
        *(v60 + 2) = 0;
        v4[4196] = 1;
        *(v2 + 4232) = 0;
        *(v2 + 4248) = 0;
        *(v2 + 4240) = v2 + 4232;
        v4[4240] = 1;
        if (v4[4856] == 1)
        {
          v4[4856] = 0;
          ashp::acipc::ring_manager::~ring_manager((v2 + 4264), v56, v57, v58, v59);
        }

        *(v2 + 4264) = 0;
        *(v2 + 4272) = 0;
        *(v2 + 4280) = v2;
        ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::refcounted_ptr((v2 + 4288), queue, v57, v58);
        v4[4280] = 1;
        v4[4312] = 0;
        v4[4504] = 0;
        v4[4536] = 0;
        v4[4728] = 0;
        *(v2 + 4768) = 0u;
        *(v2 + 4752) = 0u;
        *(v2 + 4768) = v2 + 4760;
        *(v2 + 4784) = 0;
        *(v2 + 4808) = 0;
        *(v2 + 4800) = 0;
        *(v2 + 4792) = v2 + 4784;
        *(v2 + 4816) = 0;
        *(v2 + 4824) = 0u;
        *(v2 + 4840) = 0u;
        *(v2 + 4855) = 0;
        v4[4848] = 0;
        operator new();
      }

      __break(1u);
      ashp::detail::control_flow::log_guard_else_failure("driver_resource.cpp", 0x4D, "add", v49);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to add duplicate resource", "driver_resource.cpp", 0x4D, "add", v72);
      _os_crash();
      __break(1u);
      v5 = "ensure_free_space";
      ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v73);
      v7 = "ALLOCATION FAILURE (or BUG) in Airship";
      ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v74);
      _os_crash();
      __break(1u);
      v4 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v75);
      _os_crash();
      __break(1u);
LABEL_68:
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&context, v274, v16, v17);
      v76 = *&buf[24];
      *&buf[24] = context;
      *&context = v76;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&context, v77, v78, v79);
      v22 = 1;
      v275 = 1;
      v1 = 2;
    }
  }

  v2 = "optional.hpp";
  ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0x7D, "value", v3);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0x7D, "value", v185);
  _os_crash();
  __break(1u);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0x32, "doorbell_coordinator", v186);
  _os_crash();
  __break(1u);
LABEL_123:
  v61 = "dynamic_array.hpp";
  v62 = "buffer";
  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v49);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v187);
  _os_crash();
  __break(1u);
LABEL_124:
  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_65:
  ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] invalid configuration: %s at %s", "acipc_driver.cpp", 117, "handle_activate", v61, v62);
LABEL_66:
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v256, v64, v65, v66);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&theString, v67, v68, v69);
  v70 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_23ECDD008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_unfair_lock_t lock, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31)
{
  ashp::acipc::config::acipc_config::~acipc_config(&STACK[0x510], a2, a3, a4, a5);
  ashp::deferred_action<ashp::acipc::config::acipc_config::parse(ashp::boxed::object,ashp::acipc::config::acipc_config::error_detail *)::$_0>::~deferred_action(&a28, v32, v33, v34);
  ashp::acipc::config::error_context::~error_context(&a31, v35, v36, v37);
  ashp::acipc::config::acipc_config::error_detail::~error_detail(&a26, v38, v39, v40);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::acipc_driver::setup_interrupt(ashp::acipc::acipc_driver *a1, uint64_t a2, dispatch_queue_s *a3, void (*a4)(ashp::acipc::acipc_driver *), const char *a5)
{
  if (*(a2 + 56) != 1)
  {
    *(a2 + 72) = a5;
    ashp::acipc::acipc_driver::setup_notifier(a1, a3, a4);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x4E8, "setup_interrupt", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::acipc::acipc_driver::handle_activate(void)::$_8::__invoke(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 6152));
  v6 = *(a1 + 6144);
  if (!v6)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x413, "peripheral_info_update_filter", v5);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if ((*(a1 + 6168) & 1) == 0)
  {
LABEL_9:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x414, "peripheral_info_update_filter", v5);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  ashp::optional<ashp::acipc::acipc_driver::peripheral_info_filter_cache,void>::value(a1 + 6156, v2, v3, v4);
  if (v7 == *(a1 + 6156) && (ashp::optional<ashp::acipc::acipc_driver::peripheral_info_filter_cache,void>::value(a1 + 6156, v10, v11, v12), v8 == *(a1 + 6160)))
  {
    ashp::optional<ashp::acipc::acipc_driver::peripheral_info_filter_cache,void>::value(a1 + 6156, v13, v14, v15);
    v16 = v9 != *(a1 + 6164);
  }

  else
  {
    v16 = 1;
  }

  os_unfair_lock_unlock((a1 + 6152));
  return v16;
}

uint64_t ashp::optional<ashp::acipc::acipc_driver::peripheral_info_filter_cache,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 12) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::acipc::acipc_driver::handle_activate(void)::$_7::__invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 5728))
  {
    *buf = 4;
    LOBYTE(v17) = 1;
    if (ashp::operator==<int,0>(a1 + 5736, buf, v3, v4))
    {
      os_unfair_lock_lock((a1 + 6152));
      v5 = *(a1 + 6144);
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      v9 = *(a1 + 6168);
      *(a1 + 6156) = v6 | (v7 << 32);
      *(a1 + 6164) = v8;
      if ((v9 & 1) == 0)
      {
        *(a1 + 6168) = 1;
      }

      os_unfair_lock_unlock((a1 + 6152));
      v10 = *(a1 + 5712);
      if (v10 && v6 == *(v10 + 8) || (v11 = ashp::acipc::acipc_driver::exec_stage_would_cause_ipc_teardown(a1, v6), ashp::acipc::acipc_driver::change_to_exec_stage(a1, v6), (v11 & 1) == 0))
      {
        v12 = *(a1 + 5756);
        *(a1 + 5752) = v7;
        if ((v12 & 1) == 0)
        {
          *(a1 + 5756) = 1;
        }

        v13 = *(a1 + 5764);
        *(a1 + 5760) = v8;
        if ((v13 & 1) == 0)
        {
          *(a1 + 5764) = 1;
        }

        ashp::acipc::acipc_driver::main_ipc_state_machine(a1);
        ashp::acipc::acipc_driver::sleep_state_machine(a1);
      }
    }
  }

  else
  {
    log_level = ashp::detail::logging::get_log_level(v2);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        v17 = "acipc_driver.cpp";
        v18 = 1024;
        v19 = 1057;
        v20 = 2082;
        v21 = "peripheral_info_interrupt_occurred";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] not ready for peripheral info interrupt", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] not ready for peripheral info interrupt", "acipc_driver.cpp", 1057, "peripheral_info_interrupt_occurred");
    }
  }

  os_unfair_lock_unlock((a1 + 8));
  v15 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver::handle_activate(void)::$_6::__invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 5728) && *(a1 + 232))
  {
    *buf = 4;
    LOBYTE(v20) = 1;
    if ((ashp::operator==<int,0>(a1 + 5736, buf, v3, v4) & 1) == 0)
    {
      v17 = 5;
      v18 = 1;
      if ((ashp::operator==<int,0>(a1 + 5736, &v17, v5, v6) & 1) == 0)
      {
        ipc_status_register = ashp::acipc::acipc_driver::read_ipc_status_register(a1);
        v11 = *(a1 + 5756);
        *(a1 + 5752) = ipc_status_register;
        if ((v11 & 1) == 0)
        {
          *(a1 + 5756) = 1;
        }

        v12 = ashp::optional<unsigned int,void>::value(a1 + 5752, v8, v9, v10);
        log_level = ashp::detail::logging::get_log_level(v12);
        if (log_level >= 3)
        {
          log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (log_level)
          {
            v14 = *(a1 + 5752);
            *buf = 136446978;
            v20 = "acipc_driver.cpp";
            v21 = 1024;
            v22 = 1034;
            v23 = 2082;
            v24 = "ipc_status_interrupt_occurred";
            v25 = 1024;
            v26 = v14;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] new ipc status=%u", buf, 0x22u);
          }
        }

        if (ashp::detail::logging::get_log_level(log_level))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] new ipc status=%u", "acipc_driver.cpp", 1034, "ipc_status_interrupt_occurred", *(a1 + 5752));
        }

        ashp::acipc::acipc_driver::main_ipc_state_machine(a1);
      }
    }
  }

  else
  {
    v15 = ashp::detail::logging::get_log_level(v2);
    if (v15 >= 2)
    {
      v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        *buf = 136446722;
        v20 = "acipc_driver.cpp";
        v21 = 1024;
        v22 = 1028;
        v23 = 2082;
        v24 = "ipc_status_interrupt_occurred";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] not ready for ipc status interrupt", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v15))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] not ready for ipc status interrupt", "acipc_driver.cpp", 1028, "ipc_status_interrupt_occurred");
    }
  }

  os_unfair_lock_unlock((a1 + 8));
  v16 = *MEMORY[0x277D85DE8];
}

void ___ZN4ashp5acipc12acipc_driver15setup_interruptEPNS1_17interrupt_contextEP16dispatch_queue_sPFvPS1_EPFbS6_E_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = *(a1 + 32);
  if (!*(v4 + 72))
  {
LABEL_5:
    v9 = (*(v4 + 64) + 16);

    ashp::async_notifier::trigger(v9, a2, a3, a4);
    return;
  }

  v6 = *(v4 + 64);
  os_unfair_lock_lock(v6);
  v7 = *(a1 + 32);
  if (*(*(v7 + 64) + 8))
  {
    v8 = (*(v7 + 72))();
    os_unfair_lock_unlock(v6);
    if (!v8)
    {
      return;
    }

    v4 = *(a1 + 32);
    goto LABEL_5;
  }

  os_unfair_lock_unlock(v6);
}

void ashp::acipc::acipc_driver::handle_activate(void)::$_5::__invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 8));
  if ((*(a1 + 24) & 1) != 0 || !*(a1 + 232))
  {
    log_level = ashp::detail::logging::get_log_level(v2);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        v10 = "acipc_driver.cpp";
        v11 = 1024;
        v12 = 1014;
        v13 = 2082;
        v14 = "exec_stage_interrupt_occurred";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] not ready for exec stage interrupt", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] not ready for exec stage interrupt", "acipc_driver.cpp", 1014, "exec_stage_interrupt_occurred");
    }
  }

  else
  {
    *buf = 4;
    LOBYTE(v10) = 1;
    if ((ashp::operator==<int,0>(a1 + 5736, buf, v3, v4) & 1) == 0)
    {
      exec_stage_register = ashp::acipc::acipc_driver::read_exec_stage_register(a1);
      v6 = ashp::detail::logging::get_log_level(exec_stage_register);
      if (v6 >= 3)
      {
        v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          *buf = 136446978;
          v10 = "acipc_driver.cpp";
          v11 = 1024;
          v12 = 1020;
          v13 = 2082;
          v14 = "exec_stage_interrupt_occurred";
          v15 = 1024;
          v16 = exec_stage_register;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] exec stage interrupt occurred: value %u", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v6))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] exec stage interrupt occurred: value %u", "acipc_driver.cpp", 1020, "exec_stage_interrupt_occurred", exec_stage_register);
      }

      ashp::acipc::acipc_driver::change_to_exec_stage(a1, exec_stage_register);
    }
  }

  os_unfair_lock_unlock((a1 + 8));
  v8 = *MEMORY[0x277D85DE8];
}

void ___ZN4ashp5acipc12acipc_driver11setup_timerEP16dispatch_queue_sPFvPS1_E_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2);
  v3 = *(a1 + 32);
  if (*(v3 + 8))
  {
    (*(v3 + 152))();
  }

  os_unfair_lock_unlock(v2);
}

void ___ZN4ashp5acipc12acipc_driver11setup_timerEP16dispatch_queue_sPFvPS1_E_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    ashp::timer::~timer((v5 + 16), a2, a3, a4);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

void ashp::timer::~timer(ashp::timer *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::timer::cancel(this, a2, a3, a4);
  if (*(this + 120) == 1)
  {
    *(this + 120) = 0;
    ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(this + 12);
  }

  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(this + 6, v5, v6, v7);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(this + 5, v8, v9, v10);
  ashp::refcounted_ptr<dispatch_source_s *,ashp::dispatch::refcount_policy>::reset(this + 2);
  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(this + 1, v11, v12, v13);
}

void ashp::acipc::acipc_driver::handle_activate(void)::$_4::__invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 6128) == 1)
  {
    v2 = mach_continuous_time();
    v6 = ashp::optional<unsigned long long,void>::value(a1 + 6120, v3, v4, v5);
    if (v2 >= *(a1 + 6120))
    {
      log_level = ashp::detail::logging::get_log_level(v6);
      if (log_level >= 1)
      {
        log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (log_level)
        {
          *buf = 136446722;
          v10 = "acipc_driver.cpp";
          v11 = 1024;
          v12 = 1373;
          v13 = 2082;
          v14 = "ipc_handshake_timeout_occurred";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] IPC handshake timer expired", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(log_level))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] IPC handshake timer expired", "acipc_driver.cpp", 1373, "ipc_handshake_timeout_occurred");
      }

      ashp::acipc::acipc_driver::raise_ipc_error(a1, 32);
    }
  }

  os_unfair_lock_unlock((a1 + 8));
  v8 = *MEMORY[0x277D85DE8];
}

void ___ZN4ashp5acipc12acipc_driver14setup_notifierEP16dispatch_queue_sPFvPS1_E_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2);
  v3 = *(a1 + 32);
  if (*(v3 + 8))
  {
    (*(v3 + 64))();
  }

  os_unfair_lock_unlock(v2);
}

void ___ZN4ashp5acipc12acipc_driver14setup_notifierEP16dispatch_queue_sPFvPS1_E_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    ashp::async_notifier::~async_notifier((v5 + 16), a2, a3, a4);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

void ashp::acipc::acipc_driver::handle_activate(void)::$_3::__invoke(const os_unfair_lock *a1)
{
  os_unfair_lock_lock(&a1[2]);
  ashp::acipc::acipc_driver::sleep_state_machine(a1);

  os_unfair_lock_unlock(&a1[2]);
}

uint64_t *ashp::acipc::config::acipc_config::operator=(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  v117 = v7;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v117, a2, a3, a4);
  v8 = *(a2 + 8);
  *(a2 + 8) = 0;
  v9 = a1[1];
  a1[1] = v8;
  v116 = v9;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v116, v10, v11, v12);
  v13 = *(a2 + 16);
  *(a2 + 16) = 0;
  v14 = a1[2];
  a1[2] = v13;
  v115 = v14;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v115, v15, v16, v17);
  v18 = *(a2 + 24);
  *(a2 + 24) = 0;
  v19 = a1[3];
  a1[3] = v18;
  v114 = v19;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v114, v20, v21, v22);
  v23 = *(a2 + 48);
  *(a2 + 48) = 0;
  v24 = *(a2 + 32);
  *(a2 + 32) = 0u;
  v25 = *(a1 + 2);
  *(a1 + 2) = v24;
  v118 = v25;
  v26 = a1[6];
  a1[6] = v23;
  v119 = v26;
  ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::~storage(&v118, v27, v28, v29, v30);
  v31 = *(a2 + 72);
  *(a2 + 72) = 0;
  v32 = *(a2 + 56);
  *(a2 + 56) = 0u;
  v33 = *(a1 + 7);
  *(a1 + 7) = v32;
  v118 = v33;
  v34 = a1[9];
  a1[9] = v31;
  v119 = v34;
  ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::~storage(&v118, v35, v36, v37, v38);
  v39 = *(a2 + 96);
  *(a2 + 96) = 0;
  v40 = *(a2 + 80);
  *(a2 + 80) = 0u;
  v41 = *(a1 + 5);
  *(a1 + 5) = v40;
  v118 = v41;
  v42 = a1[12];
  a1[12] = v39;
  v119 = v42;
  ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::~storage(&v118, v43, v44, v45, v46);
  v47 = *(a2 + 120);
  *(a2 + 120) = 0;
  v48 = *(a2 + 104);
  *(a2 + 104) = 0u;
  v49 = *(a1 + 13);
  *(a1 + 13) = v48;
  v118 = v49;
  v50 = a1[15];
  a1[15] = v47;
  v119 = v50;
  ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::~storage(&v118, v51, v52, v53, v54);
  v58 = *(a2 + 128);
  *(a1 + 72) = *(a2 + 144);
  *(a1 + 8) = v58;
  if (*(a2 + 164) == 1)
  {
    *(a2 + 164) = 0;
    v59 = *(a2 + 152);
    if (*(a1 + 164))
    {
      *(a1 + 160) = *(a2 + 160);
      a1[19] = v59;
    }

    else
    {
      *(a1 + 40) = *(a2 + 160);
      a1[19] = v59;
      *(a1 + 164) = 1;
    }
  }

  else if (*(a1 + 164))
  {
    *(a1 + 164) = 0;
  }

  if (*(a2 + 180) == 1)
  {
    *(a2 + 180) = 0;
    v60 = *(a2 + 168);
    if (*(a1 + 180))
    {
      *(a1 + 176) = *(a2 + 176);
      a1[21] = v60;
    }

    else
    {
      *(a1 + 44) = *(a2 + 176);
      a1[21] = v60;
      *(a1 + 180) = 1;
    }
  }

  else if (*(a1 + 180))
  {
    *(a1 + 180) = 0;
  }

  v61 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  a1[23] = v61;
  if (*(a2 + 208) == 1)
  {
    *(a2 + 208) = 0;
    v62 = *(a2 + 196);
    if (a1[26])
    {
      *(a1 + 204) = *(a2 + 204);
      *(a1 + 196) = v62;
    }

    else
    {
      *(a1 + 51) = *(a2 + 204);
      *(a1 + 196) = v62;
      *(a1 + 208) = 1;
    }
  }

  else if (a1[26])
  {
    *(a1 + 208) = 0;
  }

  v63 = *(a2 + 216);
  *(a2 + 216) = 0;
  v64 = a1[27];
  a1[27] = v63;
  *&v118 = v64;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v118, v55, v56, v57);
  *(a1 + 56) = *(a2 + 224);
  v65 = *(a2 + 248);
  *(a2 + 248) = 0;
  v66 = *(a2 + 232);
  *(a2 + 232) = 0u;
  v67 = *(a1 + 29);
  *(a1 + 29) = v66;
  v118 = v67;
  v68 = a1[31];
  a1[31] = v65;
  v119 = v68;
  ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::~storage(&v118, v69, v70, v71, v72);
  v73 = *(a2 + 272);
  *(a2 + 272) = 0;
  v74 = *(a2 + 256);
  *(a2 + 256) = 0u;
  v75 = *(a1 + 16);
  *(a1 + 16) = v74;
  v118 = v75;
  v76 = a1[34];
  a1[34] = v73;
  v119 = v76;
  ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::~storage(&v118, v77, v78, v79, v80);
  v81 = *(a2 + 296);
  *(a2 + 296) = 0;
  v82 = *(a2 + 280);
  *(a2 + 280) = 0u;
  v83 = *(a1 + 35);
  *(a1 + 35) = v82;
  v118 = v83;
  v84 = a1[37];
  a1[37] = v81;
  v119 = v84;
  ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::~storage(&v118, v85, v86, v87, v88);
  v89 = *(a2 + 320);
  *(a2 + 320) = 0;
  v90 = *(a2 + 304);
  *(a2 + 304) = 0u;
  v91 = *(a1 + 19);
  *(a1 + 19) = v90;
  v118 = v91;
  v92 = a1[40];
  a1[40] = v89;
  v119 = v92;
  ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::~storage(&v118, v93, v94, v95, v96);
  v97 = *(a2 + 344);
  *(a2 + 344) = 0;
  v98 = *(a2 + 328);
  *(a2 + 328) = 0u;
  v99 = *(a1 + 41);
  *(a1 + 41) = v98;
  v118 = v99;
  v100 = a1[43];
  a1[43] = v97;
  v119 = v100;
  ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_group_spec>::~storage(&v118, v101, v102, v103, v104);
  v105 = *(a2 + 368);
  *(a2 + 368) = 0;
  v106 = *(a2 + 352);
  *(a2 + 352) = 0u;
  v107 = *(a1 + 22);
  *(a1 + 22) = v106;
  v118 = v107;
  v108 = a1[46];
  a1[46] = v105;
  v119 = v108;
  ashp::detail::dynamic_array::storage<ashp::acipc::config::memory_region_spec>::~storage(&v118, v109, v110, v111, v112);
  return a1;
}

CFTypeRef ashp::acipc::acipc_driver::get_reaper_queue_role@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, const char *a3@<X3>, void *a4@<X8>)
{
  *a4 = @"main";
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a4, a1, a2, a3);

  return CFRetain(@"main");
}

void ashp::acipc::acipc_driver::handle_terminate(ashp::acipc::acipc_driver *this)
{
  os_unfair_lock_assert_owner(this + 2);
  ashp::acipc::acipc_driver::teardown_current_ipc_stage(this);
  *(this + 714) = 0;
  ashp::driver::update_exec_stage(this, 0xFFFFFFFF);
  os_unfair_lock_unlock(this + 2);
  ashp::acipc::acipc_driver::teardown_notifier(this, *(this + 722));
  *(this + 722) = 0;
  ashp::acipc::acipc_driver::teardown_interrupt(this, this + 5632, v2, v3, v4);
  ashp::acipc::acipc_driver::teardown_interrupt(this, this + 5784, v5, v6, v7);
  ashp::acipc::acipc_driver::teardown_interrupt(this, this + 5864, v8, v9, v10);
  v14 = *(this + 767);
  if (v14)
  {
    os_unfair_lock_assert_not_owner(this + 2);
    os_unfair_lock_lock(v14);
    *(v14 + 8) = 0;
    os_unfair_lock_unlock(v14);
    ashp::timer::cancel((v14 + 16), v15, v16, v17);
  }

  *(this + 767) = 0;
  if (*(this + 12) == 1)
  {
    ashp::optional<ashp::mock_hidable<ashp::reaper>,void>::value(this + 424, v11, v12, v13);
    ashp::reaper::run(this + 106);
  }

  os_unfair_lock_lock(this + 2);
}

void ashp::acipc::acipc_driver::teardown_notifier(const os_unfair_lock *a1, uint64_t a2)
{
  if (a2)
  {
    os_unfair_lock_assert_not_owner(a1 + 2);
    os_unfair_lock_lock(a2);
    *(a2 + 8) = 0;
    os_unfair_lock_unlock(a2);

    ashp::async_notifier::cancel((a2 + 16), v3, v4, v5);
  }
}

void ashp::acipc::acipc_driver::teardown_interrupt(const os_unfair_lock *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*(a2 + 56) == 1)
  {
    *(a2 + 56) = 0;
    ashp::interrupt::~interrupt(a2, a2, a3, a4, a5);
    ashp::acipc::acipc_driver::teardown_notifier(a1, *(a2 + 64));
    *(a2 + 64) = 0;
  }
}

void ashp::acipc::acipc_driver::destroy(ashp::acipc::acipc_driver *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    v6 = this + 4096;
    *this = &unk_28515D7E8;
    if (*(this + 5688) == 1)
    {
LABEL_47:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x63, "~acipc_driver", a5);
      _os_crash();
      __break(1u);
      goto LABEL_48;
    }

    if (*(this + 722))
    {
LABEL_48:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x64, "~acipc_driver", a5);
      _os_crash();
      __break(1u);
      goto LABEL_49;
    }

    if (*(this + 5840) == 1)
    {
LABEL_49:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x65, "~acipc_driver", a5);
      _os_crash();
      __break(1u);
      goto LABEL_50;
    }

    if (*(this + 5920) == 1)
    {
LABEL_50:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x66, "~acipc_driver", a5);
      _os_crash();
      __break(1u);
      goto LABEL_51;
    }

    if (*(this + 6168) == 1)
    {
      *(this + 6168) = 0;
    }

    if (*(this + 6128) == 1)
    {
      *(this + 6128) = 0;
    }

    v7 = *(this + 762);
    v8 = *(this + 764);
    if (!v7 || v8)
    {
      *(this + 762) = 0;
      if (v8)
      {
        free(v8);
        *(this + 764) = 0;
      }

      ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(this + 758, a2, a3, a4);
      ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(this + 757, v9, v10, v11);
      if (v6[1952] == 1)
      {
        v6[1952] = 0;
      }

      ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset(this + 5952, v12, v13, v14);
      if (v6[1824] == 1)
      {
        v6[1824] = 0;
        ashp::interrupt::~interrupt(this + 733, v15, v16, v17, v18);
      }

      if (v6[1744] == 1)
      {
        v6[1744] = 0;
        ashp::interrupt::~interrupt(this + 723, v15, v16, v17, v18);
      }

      if (v6[1668] == 1)
      {
        v6[1668] = 0;
      }

      if (v6[1660] == 1)
      {
        v6[1660] = 0;
      }

      if (v6[1652] == 1)
      {
        v6[1652] = 0;
      }

      if (v6[1644] == 1)
      {
        v6[1644] = 0;
      }

      if (v6[1592] == 1)
      {
        v6[1592] = 0;
        ashp::interrupt::~interrupt(this + 704, v15, v16, v17, v18);
      }

      if (v6[1528] == 1)
      {
        v6[1528] = 0;
        ashp::acipc::doorbell_coordinator::~doorbell_coordinator((this + 5264), v15, v16, v17);
      }

      if (v6[1160] == 1)
      {
        v6[1160] = 0;
        ashp::acipc::messenger::~messenger((this + 4944), v15, v16, v17, v18);
      }

      if (v6[840] == 1)
      {
        v6[840] = 0;
        ashp::acipc::memregion_manager::~memregion_manager((this + 4880), v15, v16, v17, v18);
      }

      if (v6[776] == 1)
      {
        v6[776] = 0;
        ashp::acipc::ring_manager::~ring_manager((this + 4264), v15, v16, v17, v18);
      }

      if (v6[160] == 1)
      {
        v6[160] = 0;
        ashp::acipc::boot_manager::~boot_manager((this + 4208), v15, v16, v17, v18);
      }

      if (v6[104] == 1)
      {
        v6[104] = 0;
        ashp::acipc::config::acipc_config::~acipc_config((this + 3824), v15, v16, v17, v18);
      }

      ashp::driver::~driver(this, v15, v16, v17, v18);

LABEL_51:
      JUMPOUT(0x23EF204E0);
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
  }

  __break(1u);
  goto LABEL_47;
}

uint64_t ashp::direct_client_object::direct_client_object(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  *a1 = a2;
  a1[1] = 0;
  v6 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  *(a1 + 8) = a3;
  a1[5] = a4;
  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(a1 + 6, a5, a3, a4);
  v8 = *a1;
  if (*a1)
  {
    os_unfair_lock_lock((v8 + 32));
    if (!a1[3])
    {
      v10 = *(v8 + 48);
      a1[1] = *v10;
      a1[2] = v10;
      *v10 = a1;
      *(v8 + 48) = v6;
      a1[3] = v8 + 40;
      os_unfair_lock_unlock((v8 + 32));
      return a1;
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "direct_client_object.cpp", 0x15, "direct_client_object", v7);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xBA, "insert_before", v9);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to insert element already in list", "intrusive_list.hpp", 0xBA, "insert_before", v12);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::intrusive_list_link<ashp::direct_client_object>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
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

void ashp::direct_client_object::~direct_client_object(os_unfair_lock_s **this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *this;
  if (*this)
  {
    os_unfair_lock_lock(v5 + 8);
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::remove(&v5[10], this, v7, v8);
    os_unfair_lock_unlock(v5 + 8);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 6, v9, v10, v11);
    ashp::intrusive_list_link<ashp::direct_client_object>::~intrusive_list_link((this + 1), v12, v13, v14);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "direct_client_object.cpp", 0x1B, "~direct_client_object", a5);
    _os_crash();
    __break(1u);
  }
}

void ashp::direct_client_object_manager::~direct_client_object_manager(ashp::direct_client_object_manager *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v6 = *(this + 1);
  v5 = this + 8;
  if (v6)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "direct_client_object.cpp", 0x27, "~direct_client_object_manager", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::intrusive_list_link<ashp::direct_client_object>::~intrusive_list_link(v5, a2, a3, a4);
  }
}

void ashp::direct_client_object_manager::dump_list(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  v6 = *&lock[2]._os_unfair_lock_opaque;
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = v7 + 1;
      if (v8 << 31 >> 31 != v8)
      {
        break;
      }

      v6 = *(v6 + 8);
      ++v7;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "intrusive_list.hpp", 0xE7, "size", a5);
    _os_crash();
    __break(1u);
    goto LABEL_36;
  }

  LODWORD(v8) = 0;
LABEL_9:
  log_level = ashp::detail::logging::get_log_level(lock);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446978;
      v22 = "direct_client_object.cpp";
      v23 = 1024;
      v24 = 54;
      v25 = 2082;
      v26 = "dump_list";
      v27 = 1024;
      v28 = v8;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] num of objects pending deletion %u", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_14:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] num of objects pending deletion %u", "direct_client_object.cpp", 54, "dump_list", v8);
      goto LABEL_15;
    }

LABEL_36:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_14;
  }

LABEL_15:
  v13 = *&lock[2]._os_unfair_lock_opaque;
  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = MEMORY[0x277D86220];
  do
  {
    CStringPtr = (v13 + 48);
    if (*(v13 + 48))
    {
      CStringPtr = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(CStringPtr, v10, v11, v12);
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
    }

    else
    {
      v16 = "nil";
    }

    v17 = ashp::detail::logging::get_log_level(CStringPtr);
    if (v17 >= 3)
    {
      v17 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        v18 = *(v13 + 32);
        v19 = *(v13 + 40);
        *buf = 136447490;
        v22 = "direct_client_object.cpp";
        v23 = 1024;
        v24 = 34;
        v25 = 2082;
        v26 = "dump_object_info";
        v27 = 1024;
        v28 = v18;
        v29 = 2048;
        v30 = v19;
        v31 = 2080;
        v32 = v16;
        _os_log_impl(&dword_23EC8B000, v14, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] type=%u, debug meta-data=0x%llx, name=%s", buf, 0x36u);
      }
    }

    if (ashp::detail::logging::get_log_level(v17))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] type=%u, debug meta-data=0x%llx, name=%s", "direct_client_object.cpp", 34, "dump_object_info", *(v13 + 32), *(v13 + 40), v16);
    }

    v13 = *(v13 + 8);
  }

  while (v13);
  if (lock)
  {
LABEL_33:
    os_unfair_lock_unlock(lock);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_23ECDF588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_unfair_lock_t lock)
{
  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }

  _Unwind_Resume(exception_object);
}

void ashp::debug::timer::debug_context::record_event(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  *&v17 = mach_continuous_time();
  *(&v17 + 1) = a3;
  *v18 = a4;
  v18[24] = a2;
  strncpy(&v18[8], a1, 0x10uLL);
  os_unfair_lock_lock((a1 + 16));
  if (*(a1 + 20))
  {
    v10 = ashp::dynamic_array<ashp::debug::timer::timer_debug_info>::operator[]((a1 + 40), *(a1 + 24), v8, v9);
    v11 = *v18;
    *(v10 + 25) = *&v18[9];
    *v10 = v17;
    v10[1] = v11;
    v12 = *(a1 + 24);
    v13 = __CFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      v15 = *(a1 + 20);
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 24) = (v14 - v15) % *(a1 + 20);
  }

  os_unfair_lock_unlock((a1 + 16));
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::dynamic_array<ashp::debug::timer::timer_debug_info>::operator[](unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1 > a2)
  {
    return a1[2] + 41 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::timer::set_queue(os_unfair_lock_t lock, dispatch_queue_s *a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (LOBYTE(lock[32]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("timer.cpp", 0x32, "set_queue", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to reconfigure active object", "timer.cpp", 0x32, "set_queue", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::refcounted_ptr(&v11, a2, a3, a4);
    v6 = *&lock[2]._os_unfair_lock_opaque;
    *&lock[2]._os_unfair_lock_opaque = v11;
    v11 = v6;
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(lock);
  }
}

void ashp::timer::set_event_handler(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (LOBYTE(lock[32]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("timer.cpp", 0x3A, "set_event_handler", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to reconfigure active object", "timer.cpp", 0x3A, "set_event_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, a3, a4);
    v6 = *&lock[10]._os_unfair_lock_opaque;
    *&lock[10]._os_unfair_lock_opaque = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(lock);
  }
}

const void **ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(const void **a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  if (a2)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    *a1 = _Block_copy(*a1);
  }

  return a1;
}

void ashp::timer::set_cancel_handler(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (LOBYTE(lock[32]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("timer.cpp", 0x42, "set_cancel_handler", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to reconfigure active object", "timer.cpp", 0x42, "set_cancel_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, a3, a4);
    v6 = *&lock[12]._os_unfair_lock_opaque;
    *&lock[12]._os_unfair_lock_opaque = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(lock);
  }
}

uint64_t ashp::timer::activate(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (LOBYTE(lock[32]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("timer.cpp", 0x53, "activate", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to activate active object", "timer.cpp", 0x53, "activate", v8);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (BYTE1(lock[32]._os_unfair_lock_opaque) == 1)
  {
LABEL_9:
    ashp::detail::control_flow::log_guard_else_failure("timer.cpp", 0x54, "activate", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to activate canceled object", "timer.cpp", 0x54, "activate", v9);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  if (!*&lock[2]._os_unfair_lock_opaque)
  {
LABEL_10:
    ashp::detail::control_flow::log_guard_else_failure("timer.cpp", 0x55, "activate", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to activate object without required configuration", "timer.cpp", 0x55, "activate", v10);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(lock[32]._os_unfair_lock_opaque) = 1;
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[2]._os_unfair_lock_opaque, a2, a3, a4);
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 2uLL, 0, *&lock[2]._os_unfair_lock_opaque);
  v6 = *&lock[4]._os_unfair_lock_opaque;
  *&lock[4]._os_unfair_lock_opaque = v5;
  v13 = v6;
  ashp::refcounted_ptr<dispatch_source_s *,ashp::dispatch::refcount_policy>::reset(&v13);
  if (*&lock[4]._os_unfair_lock_opaque)
  {
    operator new();
  }

LABEL_11:
  ashp::detail::control_flow::log_guard_else_failure("timer.cpp", 0x8C, "activate", v7);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "timer.cpp", 0x8C, "activate", v11);
  result = _os_crash();
  __break(1u);
  return result;
}

void *___ZN4ashp5timer8activateEv_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(*(a1 + 32));
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    ashp::debug::timer::debug_context::record_event(*(v2 + 24), 2, -1, -1);
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock(v2);
  v6 = *(a1 + 32);
  v8 = *(v6 + 8);
  result = (v6 + 8);
  if (v8)
  {
    v9 = *(*ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(result, v3, v4, v5) + 16);

    return v9();
  }

  return result;
}

void ___ZN4ashp5timer8activateEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = *(a1 + 32);
  if (*(v5 + 16) && (v6 = ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 16), a2, a3, a4), (*(*v6 + 16))(), (v5 = *(a1 + 32)) == 0))
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", v7);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((v5 + 16), a2, a3, a4);
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((v5 + 8), v8, v9, v10);
  }

  JUMPOUT(0x23EF204E0);
}

void ashp::timer::cancel(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if ((lock[32]._os_unfair_lock_opaque & 0x100) == 0)
  {
    BYTE1(lock[32]._os_unfair_lock_opaque) = 1;
    if (LOBYTE(lock[32]._os_unfair_lock_opaque) == 1)
    {
      if (LOBYTE(lock[30]._os_unfair_lock_opaque) == 1)
      {
        ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(&lock[14], a2, a3, a4);
        ashp::debug::timer::debug_context::record_event(&lock[14], 3, -1, -1);
      }

      os_unfair_lock_lock(*&lock[6]._os_unfair_lock_opaque);
      v5 = *&lock[6]._os_unfair_lock_opaque;
      *(v5 + 24) = 0;
      os_unfair_lock_unlock(v5);
      *&lock[6]._os_unfair_lock_opaque = 0;
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, v6, v7, v8);
      dispatch_source_cancel(*&lock[4]._os_unfair_lock_opaque);
      if (LOBYTE(lock[8]._os_unfair_lock_opaque) == 1)
      {
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, v9, v10, v11);
        dispatch_resume(*&lock[4]._os_unfair_lock_opaque);
      }
    }
  }

  os_unfair_lock_unlock(lock);
}

void ashp::timer::start(os_unfair_lock_t lock, unint64_t a2, uint64_t a3, const char *a4)
{
  v5 = a2;
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (lock[32]._os_unfair_lock_opaque)
  {
    if ((lock[32]._os_unfair_lock_opaque & 0x100) == 0 && *&lock[10]._os_unfair_lock_opaque)
    {
      if (LOBYTE(lock[30]._os_unfair_lock_opaque) == 1)
      {
        ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(&lock[14], a2, a3, a4);
        ashp::debug::timer::debug_context::record_event(&lock[14], 0, v5, a3);
      }

      if (v5 != -1)
      {
        mach_timebase_info(&info);
        if (!is_mul_ok(v5, info.numer) || (a2 = v5 * info.numer / HIDWORD(*&info), a2 == -1))
        {
          v5 = -1;
        }

        else
        {
          v5 = dispatch_time_from_nsec();
        }
      }

      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, a2, a3, a4);
      dispatch_source_set_timer(*&lock[4]._os_unfair_lock_opaque, v5, 0xFFFFFFFFFFFFFFFFLL, a3);
      if (LOBYTE(lock[8]._os_unfair_lock_opaque) == 1)
      {
        LOBYTE(lock[8]._os_unfair_lock_opaque) = 0;
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, v7, v8, v9);
        dispatch_resume(*&lock[4]._os_unfair_lock_opaque);
      }
    }

    os_unfair_lock_unlock(lock);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("timer.cpp", 0x179, "start", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to use inactive object", "timer.cpp", 0x179, "start", v10);
    _os_crash();
    __break(1u);
  }
}

void ashp::timer::stop(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (lock[32]._os_unfair_lock_opaque)
  {
    if ((lock[32]._os_unfair_lock_opaque & 0x100) == 0)
    {
      if (LOBYTE(lock[30]._os_unfair_lock_opaque) == 1)
      {
        ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(&lock[14], a2, a3, a4);
        ashp::debug::timer::debug_context::record_event(&lock[14], 1, -1, -1);
      }

      if ((lock[8]._os_unfair_lock_opaque & 1) == 0)
      {
        LOBYTE(lock[8]._os_unfair_lock_opaque) = 1;
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, a2, a3, a4);
        dispatch_suspend(*&lock[4]._os_unfair_lock_opaque);
      }
    }

    os_unfair_lock_unlock(lock);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("timer.cpp", 0x1A9, "stop", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to use inactive object", "timer.cpp", 0x1A9, "stop", v5);
    _os_crash();
    __break(1u);
  }
}

uint64_t ashp::driver_debug_object<ashp::debug::timer::timer_debug_info>::get_debug_object_alloc_size(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!*(a1 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!is_mul_ok(v4, 0x29uLL) || (result = 41 * v4, (41 * v4) >> 32))
  {
    ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", a4);
    return 0;
  }

  return result;
}

void *ashp::async_accelerator::acquire(unint64_t this, dispatch_queue_s *a2, uint64_t a3, const char *a4, const char *a5)
{
  if (ashp::async_accelerator::get_registry(void)::once != -1)
  {
    dispatch_once(&ashp::async_accelerator::get_registry(void)::once, &__block_literal_global_909);
  }

  v6 = ashp::async_accelerator::_registry;
  if (ashp::async_accelerator::_registry)
  {
    os_unfair_lock_lock(ashp::async_accelerator::_registry);
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
LABEL_15:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    v19 = this;
    v20 = v8;
    if (v8)
    {
      v9 = this == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (!(v8 | this))
      {
        break;
      }

      goto LABEL_14;
    }

    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v20, a2, a3, a4);
    v10 = v20;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v19, v11, v12, v13);
    if (v10 == v19)
    {
      break;
    }

LABEL_14:
    v7 = v7[7];
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v14 = v7[10];
  v15 = __CFADD__(v14, 1);
  v16 = v14 + 1;
  v17 = v15;
  v7[10] = v16;
  if (v17 << 63 >> 63 != v17)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "async_accelerator_private.cpp", 0x8F, "acquire", a5);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    if (v6)
    {
      os_unfair_lock_unlock(v6);
    }

    return v7;
  }

  return result;
}

void sub_23ECE0458(_Unwind_Exception *a1)
{
  MEMORY[0x23EF204E0](v2, 0x10A0C40026FC381);
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(a1);
}

void ashp::async_accelerator::release(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (ashp::async_accelerator::get_registry(void)::once != -1)
  {
    dispatch_once(&ashp::async_accelerator::get_registry(void)::once, &__block_literal_global_909);
  }

  v6 = ashp::async_accelerator::_registry;
  if (ashp::async_accelerator::_registry)
  {
    os_unfair_lock_lock(ashp::async_accelerator::_registry);
  }

  v7 = *&lock[20]._os_unfair_lock_opaque;
  *&lock[20]._os_unfair_lock_opaque = v7 - 1;
  if (!v7)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "async_accelerator_private.cpp", 0x9D, "release", a5);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 1)
  {
    v8 = v6 + 2;
    if (*&lock[18]._os_unfair_lock_opaque != &v6[2])
    {
LABEL_24:
      ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xCB, "remove", a4);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to remove element not in list", "intrusive_list.hpp", 0xCB, "remove", v17);
      _os_crash();
      __break(1u);
      goto LABEL_25;
    }

    v9 = *&lock[14]._os_unfair_lock_opaque;
    v10 = *&lock[16]._os_unfair_lock_opaque;
    *v10 = v9;
    if (v9)
    {
      v8 = v9 + 14;
    }

    *&v8[2]._os_unfair_lock_opaque = v10;
    *&lock[14]._os_unfair_lock_opaque = 0;
    *&lock[16]._os_unfair_lock_opaque = 0;
    *&lock[18]._os_unfair_lock_opaque = 0;
    if (v6)
    {
      os_unfair_lock_unlock(v6);
    }

    os_unfair_lock_lock(lock);
    if (HIBYTE(lock[12]._os_unfair_lock_opaque) != 1)
    {
      HIBYTE(lock[12]._os_unfair_lock_opaque) = 1;
      v12 = BYTE1(lock[12]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(lock);
      if (v12)
      {
        return;
      }

      ashp::async_accelerator::~async_accelerator(lock, v13, v14, v15, v16);

LABEL_25:
      JUMPOUT(0x23EF204E0);
    }

LABEL_23:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "async_accelerator_private.cpp", 0xA6, "release", v11);
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  if (v6)
  {

    os_unfair_lock_unlock(v6);
  }
}

void sub_23ECE0680(_Unwind_Exception *a1)
{
  v2 = v1;
  os_unfair_lock_unlock(v2);
  _Unwind_Resume(a1);
}

void ashp::async_accelerator::~async_accelerator(ashp::async_accelerator *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v7 = *(this + 2);
  v6 = this + 16;
  if (v7)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "async_accelerator_private.cpp", 0xD1, "~async_accelerator", a5);
    _os_crash();
    __break(1u);
  }

  else if (!*(this + 9))
  {
    ashp::intrusive_list_link<ashp::async_accelerator::work_item>::~intrusive_list_link(v6, a2, a3, a4);
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(this + 1, v8, v9, v10);
    return;
  }

  ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0x105, "~intrusive_list_link", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: list element destroyed while in list", "intrusive_list.hpp", 0x105, "~intrusive_list_link", v11);
  _os_crash();
  __break(1u);
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::async_accelerator::work_item,ashp::intrusive_list_link<ashp::async_accelerator::work_item>,&ashp::async_accelerator::work_item::link>::remove(uint64_t result, void *a2, uint64_t a3, const char *a4)
{
  if (a2 && a2[4] == result)
  {
    v4 = a2[2];
    v5 = a2[3];
    *v5 = v4;
    if (v4)
    {
      v6 = v4 + 16;
    }

    else
    {
      v6 = result;
    }

    *(v6 + 8) = v5;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xCB, "remove", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to remove element not in list", "intrusive_list.hpp", 0xCB, "remove", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::intrusive_list_link<ashp::async_accelerator::work_item>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
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

void ashp::async_accelerator::trigger_async(os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this);
  if (BYTE1(this[12]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "async_accelerator_private.cpp", 0x104, "trigger_async", v5);
    _os_crash();
    __break(1u);
  }

  else
  {
    BYTE1(this[12]._os_unfair_lock_opaque) = 1;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[2]._os_unfair_lock_opaque, v2, v3, v4);
    v6 = *&this[2]._os_unfair_lock_opaque;

    dispatch_async_f(v6, this, ashp::async_accelerator::trigger_async(void)::$_0::__invoke);
  }
}

void ashp::async_accelerator::trigger_async(void)::$_0::__invoke(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 4));
  if (a1)
  {
    os_unfair_lock_lock(a1);
  }

  if ((*(a1 + 49) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "async_accelerator_private.cpp", 0x114, "async_callback", v2);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  *(a1 + 48) = *(a1 + 40) != 0;
  *(a1 + 50) = 1;
  ashp::async_accelerator::flush_DROPS_LOCK(a1);
  if (*(a1 + 16))
  {
LABEL_11:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "async_accelerator_private.cpp", 0x118, "async_callback", v3);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  *(a1 + 49) = 0;
  v4 = *(a1 + 51);
  os_unfair_lock_unlock(a1);
  os_unfair_lock_unlock((a1 + 4));
  if (v4 == 1)
  {
    ashp::async_accelerator::~async_accelerator(a1, v5, v6, v7, v8);

LABEL_12:
    JUMPOUT(0x23EF204E0);
  }
}

void sub_23ECE0A28(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void ashp::async_accelerator::flush_DROPS_LOCK(ashp::async_accelerator *this)
{
  os_unfair_lock_assert_owner(this);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 1, v2, v3, v4);
  dispatch_assert_queue_V2(*(this + 1));
  if (*(this + 50) == 1)
  {
    for (i = *(this + 2); i; i = *(this + 2))
    {
      ashp::detail::intrusive_list::intrusive_list_impl<ashp::async_accelerator::work_item,ashp::intrusive_list_link<ashp::async_accelerator::work_item>,&ashp::async_accelerator::work_item::link>::remove(this + 16, i, v5, v6);
      os_unfair_lock_unlock(this);
      (i[1])(*i);
      ashp::intrusive_list_link<ashp::async_accelerator::work_item>::~intrusive_list_link((i + 2), v9, v10, v11);
      MEMORY[0x23EF204E0](i, 0xA0C40F6FDF006);
      os_unfair_lock_lock(this);
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "async_accelerator_private.cpp", 0x156, "flush_DROPS_LOCK", v7);
    _os_crash();
    __break(1u);
  }
}

void ashp::async_accelerator::async_f(os_unfair_lock_t lock, void *a2, void (__cdecl *a3)(void *), const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (*&lock[10]._os_unfair_lock_opaque || (lock[12]._os_unfair_lock_opaque & 0x100) != 0)
  {
    operator new();
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[2]._os_unfair_lock_opaque, a2, a3, a4);
  dispatch_async_f(*&lock[2]._os_unfair_lock_opaque, a2, a3);

  os_unfair_lock_unlock(lock);
}

void ashp::async_accelerator::async(void({block_pointer})(void))::$_0::__invoke(void (**a1)(void))
{
  a1[2]();

  _Block_release(a1);
}

void airship_accelerated_async(os_unfair_lock_s *a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);

  ashp::async_accelerator::async_f(a1, v3, ashp::async_accelerator::async(void({block_pointer})(void))::$_0::__invoke, v4);
}

uint64_t airship_async_flusher_create(unint64_t a1, dispatch_queue_s *a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = ashp::async_accelerator::acquire(a1, a2, a3, a4, a5);
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  os_unfair_lock_lock(v5);
  v8 = *&v6[10]._os_unfair_lock_opaque;
  v9 = __CFADD__(v8, 1);
  v10 = v8 + 1;
  v11 = v9;
  *&v6[10]._os_unfair_lock_opaque = v10;
  if (v11 << 63 >> 63 == v11)
  {
    if (v10 == 1 && (v6[12]._os_unfair_lock_opaque & 0x100) == 0)
    {
      ashp::async_accelerator::trigger_async(v6);
    }

    os_unfair_lock_unlock(v6);
    return v6;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "async_accelerator_private.cpp", 0xB5, "add_flusher", v7);
  result = _os_crash();
  __break(1u);
  return result;
}

void airship_async_flusher_destroy(os_unfair_lock_s *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (this)
  {
    os_unfair_lock_lock(this);
  }

  v6 = *&this[10]._os_unfair_lock_opaque;
  *&this[10]._os_unfair_lock_opaque = v6 - 1;
  if (v6)
  {
    if (v6 == 1 && (this[12]._os_unfair_lock_opaque & 0x100) == 0)
    {
      ashp::async_accelerator::trigger_async(this);
    }

    os_unfair_lock_unlock(this);

    ashp::async_accelerator::release(this, v7, v8, v9, v10);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "async_accelerator_private.cpp", 0xC0, "remove_flusher", a5);
    _os_crash();
    __break(1u);
  }
}

void airship_async_flush_with_action(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 8), a2, a3, a4);
  dispatch_assert_queue_V2(*(a1 + 8));
  os_unfair_lock_lock((a1 + 4));
  os_unfair_lock_lock(a1);
  if (*(a1 + 48) != 1 || !*(a1 + 40))
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "async_accelerator_private.cpp", 0x13F, "flush_with_action", v6);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  *(a1 + 50) = 1;
  os_unfair_lock_unlock(a1);
  (*(a2 + 16))(a2);
  os_unfair_lock_lock(a1);
  ashp::async_accelerator::flush_DROPS_LOCK(a1);
  if (*(a1 + 16))
  {
LABEL_8:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "async_accelerator_private.cpp", 0x145, "flush_with_action", v7);
    _os_crash();
    __break(1u);
    return;
  }

  *(a1 + 50) = 0;
  os_unfair_lock_unlock(a1);

  os_unfair_lock_unlock((a1 + 4));
}

void sub_23ECE0F14(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1);
  os_unfair_lock_unlock(v1 + 1);
  _Unwind_Resume(a1);
}

atomic_ullong *ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>>::~storage(atomic_ullong *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>>::reduce_size(a1, a2, a3, a4);
  v5 = a1[2];
  if (v5)
  {
    free(v5);
    a1[2] = 0;
  }

  return a1;
}

atomic_ullong *ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>>::reduce_size(atomic_ullong *result, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = result;
  if (*result)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = v4[2];
      if (!v7)
      {
        break;
      }

      result = ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset((v7 + v5), a2, a3, a4);
      ++v6;
      v5 += 8;
      if (v6 >= *v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    *v4 = 0;
  }

  return result;
}

void ashp::acipc::ring_controller::~ring_controller(ashp::acipc::ring_controller *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*(this + 96) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x11, "~ring_controller", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    if (*(this + 94) == 1)
    {
      *(this + 94) = 0;
    }

    if (*(this + 90) == 1)
    {
      *(this + 90) = 0;
    }

    ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>>::~storage(this + 8, a2, a3, a4);
    if (*(this + 56) == 1)
    {
      *(this + 56) = 0;
    }

    if (*(this + 12) == 1)
    {
      *(this + 12) = 0;
    }
  }
}

uint64_t ashp::acipc::ring_controller::compute_state(ashp::acipc::ring_controller *this)
{
  v1 = *this;
  if (*this > 2)
  {
    if (v1 == 4)
    {
      v3 = 5;
    }

    else
    {
      v3 = 2;
    }

    if (v1 == 3)
    {
      return 4;
    }

    else
    {
      return v3;
    }
  }

  else if (v1)
  {
    if (v1 == 2)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (*(this + 12) == 1)
  {
    if (*(this + 16))
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
    return *(this + 1) == 0;
  }
}

uint64_t ashp::acipc::ring_controller::compute_state_detail(ashp::acipc::ring_controller *this)
{
  v2 = ashp::acipc::ring_controller::compute_state(this);
  if ((v2 - 4) >= 4)
  {
    if (!v2)
    {
      return *(this + 1) & 7;
    }

    return 0;
  }

  if (*(this + 12))
  {
    v4 = *(this + 2);
    if (v4 <= 3)
    {
      return dword_23ED06190[v4];
    }

    return 0;
  }

  ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF7, "value", v3);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF7, "value", v6);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::acipc::ring_controller::reset(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(this + 96) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x7A, "reset", a5);
    this = _os_crash();
    __break(1u);
  }

  else
  {
    *(this + 16) = 0;
    if (*(this + 12) == 1)
    {
      *(this + 12) = 0;
    }

    if (*(this + 90) == 1)
    {
      *(this + 90) = 0;
    }

    if (*(this + 94) == 1)
    {
      *(this + 94) = 0;
    }
  }

  return this;
}

void ashp::dynamic_array<ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>>::ensure_free_space(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *a1 + 1;
  if (*a1 == -1)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v17);
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
          v10 = malloc_type_aligned_alloc(8uLL, 8 * v8, 0x2004093837F09uLL);
          if (v10)
          {
            v12 = *a1;
            if (*a1)
            {
              v13 = 0;
              do
              {
                v14 = a1[2];
                v15 = *(v14 + v13);
                *(v14 + v13) = 0;
                *&v10[v13] = v15;
                v13 += 8;
                --v12;
              }

              while (v12);
            }

            v16 = a1[2];
            a1[1] = v8;
            a1[2] = v10;
            if (v16)
            {

              free(v16);
            }

            return;
          }

LABEL_26:
          ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v11);
          ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v19);
          _os_crash();
          __break(1u);
          return;
        }

LABEL_25:
        ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
        ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v18);
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

uint64_t *ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>>::emplace_back<ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>> const&>(uint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *result;
  if (*result >= result[1])
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", a5);
    result = _os_crash();
    goto LABEL_10;
  }

  v6 = result;
  v7 = result[2];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  result = (v7 + 8 * v5);
  *result = a2;
  if (a2)
  {
    v8 = ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(result, a2, a3, a4);
    if (*v8)
    {
      v12 = (*v8 + 8);
    }

    else
    {
      v12 = 0;
    }

    result = ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::retain(v12, v9, v10, v11);
    v5 = *v6;
  }

  *v6 = v5 + 1;
  return result;
}

atomic_ullong *ashp::acipc::ring_controller::terminate_monitors(ashp::acipc::ring_controller *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = (this + 64);
  v4 = *(this + 8);
  if (v4)
  {
    v6 = *(this + 10);
    v7 = 8 * v4;
    do
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v6, a2, a3, a4);
      v8 = *v6++;
      ashp::driver_object::terminate(v8);
      v7 -= 8;
    }

    while (v7);
  }

  return ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>>::reduce_size(v5, a2, a3, a4);
}

uint64_t ashp::acipc::ring_controller::read_head_index(ashp::acipc::ring_controller *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(this + 17))
  {
    *(this + 14) = mach_continuous_time();
    if (*(this + 90) == 1)
    {
      ashp::optional<unsigned short,void>::value(this + 88, v6, v7, v8);
      return *(this + 44);
    }

    else
    {
      ashp::optional<ashp::acipc::tr_ring,void>::value(this + 24, v6, v7, v8);
      return **(this + 3);
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x97, "read_head_index", a5);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::acipc::ring_controller::read_tail_index(ashp::acipc::ring_controller *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(this + 17))
  {
    *(this + 15) = mach_continuous_time();
    if (*(this + 94) == 1)
    {
      ashp::optional<unsigned short,void>::value(this + 92, v6, v7, v8);
      return *(this + 46);
    }

    else
    {
      ashp::optional<ashp::acipc::tr_ring,void>::value(this + 24, v6, v7, v8);
      return **(this + 4);
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0xB7, "read_tail_index", a5);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::acipc::ring_controller::write_tail_index(ashp::acipc::ring_controller *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*(this + 17) != 1 || *(this + 12) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0xC6, "write_tail_index", a5);
    _os_crash();
    __break(1u);
  }

  else if (*(this + 94) != 1)
  {
    v6 = a2;
    ashp::optional<ashp::acipc::tr_ring,void>::value(this + 24, a2, a3, a4);
    **(this + 4) = v6;
    result = mach_continuous_time();
    *(this + 15) = result;
    return result;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0xC7, "write_tail_index", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::ring_controller::register_index_signal(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v54 = *MEMORY[0x277D85DE8];
  if (*(a1 + 96) == 1)
  {
    goto LABEL_19;
  }

  v5 = a1;
  *(a1 + 96) = 1;
  *(a1 + 104) = a2;
  if ((*(a1 + 56) & 1) == 0)
  {
LABEL_20:
    v9 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0xDA, "register_index_signal", a5);
    _os_crash();
    __break(1u);
LABEL_21:
    v8 = "register_handler";
    ashp::detail::control_flow::log_guard_else_failure("index_array_signaler.cpp", 0x3C, "register_handler", v14);
    v15 = "BUG in Airship: vector value out of range";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: vector value out of range", "index_array_signaler.cpp", 0x3C, "register_handler", v45);
    _os_crash();
    __break(1u);
    goto LABEL_22;
  }

  LODWORD(v7) = a4;
  v8 = a3;
  ashp::optional<ashp::acipc::tr_ring,void>::value(a1 + 24, a2, a3, a4);
  v9 = *(v5 + 5);
  ashp::optional<ashp::acipc::tr_ring,void>::value((v5 + 24), v10, v11, v12);
  v15 = *(v5 + 24);
  v6 = *(v5 + 13);
  if (v9)
  {
    os_unfair_lock_lock(v9);
  }

  v5 = v9 + 8;
  if (*(v9 + 1) <= v15)
  {
    goto LABEL_21;
  }

  if (!v8 || !v6)
  {
    ashp::detail::control_flow::log_guard_else_failure("index_array_signaler.cpp", 0x3D, "register_handler", v14);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: cannot accept null parameters", "index_array_signaler.cpp", 0x3D, "register_handler", v44);
    _os_crash();
    __break(1u);
LABEL_19:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0xD7, "register_index_signal", a5);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  v16 = ashp::dynamic_array<ashp::acipc::index_array_signaler::element>::operator[](v9 + 1, v15, v13, v14);
  if (*v16)
  {
LABEL_22:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "index_array_signaler.cpp", 0x3E, "register_handler", v17);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  log_level = ashp::detail::logging::get_log_level(v16);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447490;
      *&buf[4] = "index_array_signaler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 63;
      *&buf[18] = 2082;
      *&buf[20] = "register_handler";
      v48 = 2048;
      v49 = v9;
      v50 = 2048;
      v51 = v6;
      v52 = 1024;
      v53 = v15;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] 0x%llx registering handler for 0x%llx at vector %hu", buf, 0x36u);
    }
  }

  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_15;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] 0x%llx registering handler for 0x%llx at vector %hu", "index_array_signaler.cpp", 63, "register_handler", v9, v6, v15);
LABEL_15:
    os_unfair_lock_lock(v9 + 1);
    *buf = v6;
    v6 = buf;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&buf[8], v8, v19, v20);
    buf[16] = 0;
    *&buf[20] = v7;
    *&buf[24] = 0;
    v8 = ashp::dynamic_array<ashp::acipc::index_array_signaler::element>::operator[](v5, v15, v21, v22);
    *v8 = *buf;
    v23 = *&buf[8];
    *&buf[8] = 0;
    v24 = *(v8 + 1);
    *(v8 + 1) = v23;
    v46 = v24;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v46, v25, v26, v27);
    v28 = *&buf[16];
    *(v8 + 12) = *&buf[24];
    *(v8 + 2) = v28;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&buf[8], v29, v30, v31);
    os_unfair_lock_unlock(v9 + 1);
    os_unfair_lock_assert_owner(v9);
    os_unfair_lock_assert_not_owner(v9 + 1);
    if (v7 >= 0x20)
    {
LABEL_23:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "index_array_signaler.cpp", 0x7A, "enable_interrupt_vector", v35);
      _os_crash();
      __break(1u);
      goto LABEL_24;
    }

    v36 = &v9[2 * v7];
    v37 = (*(v36 + 56))++ + 1;
    if ((v37 & 0x10000) == 0)
    {
      break;
    }

LABEL_24:
    v7 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "index_array_signaler.cpp", 0x7B, "enable_interrupt_vector", v35);
    _os_crash();
    __break(1u);
LABEL_25:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  *(v9 + 44) |= 1 << v7;
  ashp::optional<ashp::interrupt,void>::value((v9 + 48), v32, v33, v34);
  v38 = *(v9 + 44);
  v39 = *(v9 + 6);
  ashp::optional<ashp::interrupt_manager,void>::value(&v39[158], v40, v41, v42);
  ashp::interrupt_manager::set_handler_mask(v39 + 158, (v9 + 48), v38);
  os_unfair_lock_unlock(v9);
  v43 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::ring_controller::deregister_index_signal(ashp::acipc::ring_controller *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v51 = *MEMORY[0x277D85DE8];
  if (*(this + 96) != 1)
  {
    goto LABEL_19;
  }

  *(this + 96) = 0;
  if ((*(this + 56) & 1) == 0)
  {
    goto LABEL_21;
  }

  ashp::optional<ashp::acipc::tr_ring,void>::value(this + 24, a2, a3, a4);
  v6 = *(this + 5);
  ashp::optional<ashp::acipc::tr_ring,void>::value(this + 24, v7, v8, v9);
  v12 = *(this + 24);
  v13 = *(this + 13);
  if (v6)
  {
    os_unfair_lock_lock(v6);
  }

  if (*(v6 + 1) <= v12)
  {
    goto LABEL_22;
  }

  v14 = ashp::dynamic_array<ashp::acipc::index_array_signaler::element>::operator[](v6 + 1, v12, v10, v11);
  if (!v13 || (v16 = v14, *v14 != v13))
  {
    ashp::detail::control_flow::log_guard_else_failure("index_array_signaler.cpp", 0x52, "deregister_handler", v15);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: registered owner does not match", "index_array_signaler.cpp", 0x52, "deregister_handler", v41);
    _os_crash();
    __break(1u);
LABEL_21:
    v6 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0xE3, "deregister_index_signal", a5);
    _os_crash();
    __break(1u);
LABEL_22:
    v12 = "deregister_handler";
    ashp::detail::control_flow::log_guard_else_failure("index_array_signaler.cpp", 0x50, "deregister_handler", v11);
    v13 = "BUG in Airship: vector value out of range";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: vector value out of range", "index_array_signaler.cpp", 0x50, "deregister_handler", v42);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  log_level = ashp::detail::logging::get_log_level(v14);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447490;
      *&buf[4] = "index_array_signaler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 83;
      *&buf[18] = 2082;
      *&buf[20] = "deregister_handler";
      v45 = 2048;
      v46 = v6;
      v47 = 2048;
      v48 = v13;
      v49 = 1024;
      v50 = v12;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] 0x%llx deregistering handler for 0x%llx at vector %hu", buf, 0x36u);
    }
  }

  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_14;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] 0x%llx deregistering handler for 0x%llx at vector %hu", "index_array_signaler.cpp", 83, "deregister_handler", v6, v13, v12);
LABEL_14:
    v12 = *(v16 + 5);
    os_unfair_lock_assert_owner(v6);
    os_unfair_lock_assert_not_owner(v6 + 1);
    if (v12 >= 0x20)
    {
LABEL_23:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "index_array_signaler.cpp", 0x85, "disable_interrupt_vector", v21);
      _os_crash();
      __break(1u);
      goto LABEL_24;
    }

    v22 = &v6[2 * v12];
    v23 = (*(v22 + 56))-- - 1;
    if (v23 < 0x10000)
    {
      break;
    }

LABEL_24:
    v16 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "index_array_signaler.cpp", 0x86, "disable_interrupt_vector", v21);
    _os_crash();
    __break(1u);
LABEL_25:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  if (!v23)
  {
    *(v6 + 44) &= ~(1 << v12);
    ashp::optional<ashp::interrupt,void>::value((v6 + 48), v18, v19, v20);
    v24 = *(v6 + 44);
    v25 = *(v6 + 6);
    ashp::optional<ashp::interrupt_manager,void>::value(&v25[158], v26, v27, v28);
    ashp::interrupt_manager::set_handler_mask(v25 + 158, (v6 + 48), v24);
  }

  os_unfair_lock_lock(v6 + 1);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(v16 + 1, v29, v30, v31);
  *&buf[20] = 0;
  *&buf[24] = 0;
  *buf = 0;
  buf[16] = 0;
  *v16 = 0;
  *&buf[8] = 0;
  v32 = *(v16 + 1);
  *(v16 + 1) = 0;
  v43 = v32;
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v43, v33, v34, v35);
  v36 = *&buf[16];
  *(v16 + 12) = *&buf[24];
  *(v16 + 2) = v36;
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&buf[8], v37, v38, v39);
  os_unfair_lock_unlock(v6 + 1);
  os_unfair_lock_unlock(v6);
LABEL_19:
  v40 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::ring_controller::arm_index_signal(ashp::acipc::ring_controller *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((*(this + 96) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0xF0, "arm_index_signal", a5);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if ((*(this + 56) & 1) == 0)
  {
LABEL_12:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0xF1, "arm_index_signal", a5);
    _os_crash();
    __break(1u);
LABEL_13:
    ashp::detail::control_flow::log_guard_else_failure("index_array_signaler.cpp", 0x65, "arm", v12);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: vector value out of range", "index_array_signaler.cpp", 0x65, "arm", v17);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v6 = a2;
  ashp::optional<ashp::acipc::tr_ring,void>::value(this + 24, a2, a3, a4);
  v7 = *(this + 5);
  ashp::optional<ashp::acipc::tr_ring,void>::value(this + 24, v8, v9, v10);
  v13 = *(this + 24);
  v14 = *(this + 13);
  if (v7)
  {
    os_unfair_lock_lock(v7);
  }

  if (*(v7 + 8) <= v13)
  {
    goto LABEL_13;
  }

  if (!v14)
  {
LABEL_14:
    ashp::detail::control_flow::log_guard_else_failure("index_array_signaler.cpp", 0x66, "arm", v12);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: registered owner is nullptr", "index_array_signaler.cpp", 0x66, "arm", v18);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  v16 = ashp::dynamic_array<ashp::acipc::index_array_signaler::element>::operator[]((v7 + 8), v13, v11, v12);
  if (*v16 != v14)
  {
LABEL_15:
    ashp::detail::control_flow::log_guard_else_failure("index_array_signaler.cpp", 0x68, "arm", v15);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: registered owner does not match", "index_array_signaler.cpp", 0x68, "arm", v19);
    _os_crash();
    __break(1u);
    return;
  }

  os_unfair_lock_lock((v7 + 4));
  *(v16 + 16) = 1;
  *(v16 + 24) = v6;
  os_unfair_lock_unlock((v7 + 4));

  os_unfair_lock_unlock(v7);
}

uint64_t ashp::acipc::ring_controller::stop(uint64_t result, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(result + 12) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0xF8, "stop", a5);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result + 8) = a2;
    *(result + 12) = 1;
  }

  return result;
}

uint64_t ashp::acipc::ring_controller::set_device_ring_status(uint64_t result, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *result;
  *result = a2;
  if (a2 <= 1)
  {
LABEL_6:
    if (a2)
    {
      goto LABEL_16;
    }

    if (v5 - 1 >= 4)
    {
LABEL_21:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x119, "set_device_ring_status", a5);
      result = _os_crash();
      __break(1u);
      return result;
    }

    if ((*(result + 12) & 1) == 0)
    {
      goto LABEL_19;
    }

    if (*(result + 16) != 1)
    {
      return result;
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x11B, "set_device_ring_status", a5);
    result = _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  if (a2 == 2)
  {
LABEL_11:
    if (v5 >= 2)
    {
LABEL_20:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x10D, "set_device_ring_status", a5);
      _os_crash();
      __break(1u);
      goto LABEL_21;
    }

    *(result + 17) = 1;
    if (*(result + 56))
    {
      return result;
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x10F, "set_device_ring_status", a5);
    result = _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  if (a2 == 3)
  {
    if (v5 - 1 < 2)
    {
      return result;
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x112, "set_device_ring_status", a5);
    result = _os_crash();
    __break(1u);
    goto LABEL_6;
  }

LABEL_14:
  if (v5 == 3)
  {
    return result;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x115, "set_device_ring_status", a5);
  result = _os_crash();
  __break(1u);
LABEL_16:
  if (v5)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x10A, "set_device_ring_status", a5);
    _os_crash();
    __break(1u);
LABEL_19:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x11A, "set_device_ring_status", a5);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t ashp::acipc::ring_controller::set_indices(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*result >= 2u)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x123, "set_indices", a5);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v5 = *(result + 56);
    *(result + 24) = a2;
    *(result + 32) = a3;
    *(result + 40) = a4;
    *(result + 48) = a5;
    if ((v5 & 1) == 0)
    {
      *(result + 56) = 1;
    }
  }

  return result;
}

uint64_t ashp::acipc::ring_controller::clear_indices(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*this)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x12F, "clear_indices", a5);
    _os_crash();
    __break(1u);
LABEL_6:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x132, "clear_indices", a5);
    this = _os_crash();
    __break(1u);
    return this;
  }

  if (*(this + 56) == 1)
  {
    *(this + 56) = 0;
    if (*(this + 96) == 1)
    {
      goto LABEL_6;
    }
  }

  return this;
}

uint64_t ashp::acipc::ring_controller::set_settled(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*this)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x138, "set_settled", a5);
    _os_crash();
    __break(1u);
  }

  else if (*(this + 16) != 1)
  {
    *(this + 16) = 1;
    return this;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_controller.cpp", 0x139, "set_settled", a5);
  this = _os_crash();
  __break(1u);
  return this;
}

uint64_t ashp::intrusive_list_link<ashp::acipc::detail::memregion_manager::region_context>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
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

void ashp::acipc::memregion_manager::~memregion_manager(ashp::acipc::memregion_manager *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v7 = *(this + 4);
  v6 = this + 32;
  if (v7)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x18, "~memregion_manager", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::intrusive_list_link<ashp::acipc::detail::memregion_manager::region_context>::~intrusive_list_link(v6, a2, a3, a4);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 3, v8, v9, v10);
  }
}

void ashp::acipc::memregion_manager::recompute_region_availability(const os_unfair_lock *this, ashp::acipc::detail::memregion_manager::region_context *a2)
{
  v3 = this;
  v55 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  if (v3[16])
  {
    v5 = 1;
  }

  else
  {
    is_region_supported_in_current_exec_stage = ashp::acipc::memregion_manager::is_region_supported_in_current_exec_stage(v3, a2);
    v5 = !is_region_supported_in_current_exec_stage;
  }

  log_level = ashp::detail::logging::get_log_level(is_region_supported_in_current_exec_stage);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *(a2 + 48);
      *buf = 136447234;
      v45 = "memregion_manager.cpp";
      v47 = 108;
      v48 = 2082;
      v46 = 1024;
      v49 = "recompute_region_availability";
      v50 = 1024;
      *v51 = v7;
      *&v51[4] = 1024;
      *&v51[6] = v5;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] region id %hu exec stage mismatch %u", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
LABEL_63:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] region id %hu exec stage mismatch %u", "memregion_manager.cpp", 108, "recompute_region_availability", *(a2 + 48), v5);
  }

  if (v5)
  {
    v8 = 1;
    goto LABEL_60;
  }

  os_unfair_lock_assert_owner(v3);
  v12 = *(v3 + 4);
  if (!v12)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if (v12 == a2 || !*(v12 + 32))
    {
      goto LABEL_17;
    }

    v9 = ashp::operator==<int,0>(a2 + 48, v12 + 48, v10, v11);
    if (v9)
    {
      break;
    }

    if (*(a2 + 48) == *(v12 + 96))
    {
      ashp::optional<ashp::acipc::name_and_selector,void>::value(a2 + 48, v13, v10, v11);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2 + 6, v19, v20, v21);
      v25 = *(a2 + 6);
      if (v25)
      {
        CStringPtr = CFStringGetCStringPtr(v25, 0x8000100u);
        if (CStringPtr)
        {
          v27 = CStringPtr;
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

      ashp::optional<ashp::acipc::name_and_selector,void>::value(v12 + 48, v22, v23, v24);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v12 + 48), v31, v32, v33);
      v34 = *(v12 + 48);
      if (v34)
      {
        v34 = CFStringGetCStringPtr(v34, 0x8000100u);
        if (v34)
        {
          v35 = v34;
        }

        else
        {
          v35 = "???";
        }
      }

      else
      {
        v35 = "(nil)";
      }

      v36 = ashp::detail::logging::get_log_level(v34);
      if (v36 >= 4)
      {
        v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v36)
        {
          v37 = *(a2 + 48);
          *buf = 136447490;
          v45 = "memregion_manager.cpp";
          v46 = 1024;
          v47 = 254;
          v48 = 2082;
          v49 = "does_region_conflict_with_any_mapped_region";
          v50 = 2080;
          *v51 = v27;
          *&v51[8] = 1024;
          v52 = v37;
          v53 = 2080;
          v54 = v35;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] region %s (id=%hu) cannot be used due to id conflict with name %s", buf, 0x36u);
        }
      }

      v9 = ashp::detail::logging::get_log_level(v36);
      if (v9)
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] region %s (id=%hu) cannot be used due to id conflict with name %s", "memregion_manager.cpp", 254, "does_region_conflict_with_any_mapped_region", v27, *(a2 + 48), v35);
      }

      goto LABEL_48;
    }

LABEL_17:
    v12 = *(v12 + 8);
    if (!v12)
    {
      goto LABEL_49;
    }
  }

  ashp::optional<ashp::acipc::name_and_selector,void>::value(a2 + 48, v13, v10, v11);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2 + 6, v14, v15, v16);
  v17 = *(a2 + 6);
  if (v17)
  {
    v17 = CFStringGetCStringPtr(v17, 0x8000100u);
    if (v17)
    {
      v18 = v17;
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

  v28 = ashp::detail::logging::get_log_level(v17);
  if (v28 >= 4)
  {
    v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      v29 = *(a2 + 48);
      v30 = *(v12 + 96);
      *buf = 136447490;
      v45 = "memregion_manager.cpp";
      v46 = 1024;
      v47 = 248;
      v48 = 2082;
      v49 = "does_region_conflict_with_any_mapped_region";
      v50 = 2080;
      *v51 = v18;
      *&v51[8] = 1024;
      v52 = v29;
      v53 = 1024;
      LODWORD(v54) = v30;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] region %s (id=%hu) cannot be used due to name conflict with id %hu", buf, 0x32u);
    }
  }

  v9 = ashp::detail::logging::get_log_level(v28);
  if (v9)
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] region %s (id=%hu) cannot be used due to name conflict with id %hu", "memregion_manager.cpp", 248, "does_region_conflict_with_any_mapped_region", v18, *(a2 + 48), *(v12 + 96));
  }

LABEL_48:
  LODWORD(v12) = 1;
LABEL_49:
  v38 = ashp::detail::logging::get_log_level(v9);
  if (v38 >= 4)
  {
    v38 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v38)
    {
      v39 = *(a2 + 48);
      *buf = 136447234;
      v45 = "memregion_manager.cpp";
      v47 = 113;
      v48 = 2082;
      v46 = 1024;
      v49 = "recompute_region_availability";
      v50 = 1024;
      *v51 = v39;
      *&v51[4] = 1024;
      *&v51[6] = v12;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] region id %hu conflict %u", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(v38))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] region id %hu conflict %u", "memregion_manager.cpp", 113, "recompute_region_availability", *(a2 + 48), v12);
  }

  if (v12)
  {
    v40 = 2;
  }

  else
  {
    v40 = 0;
  }

  v8 = v40 | v5;
LABEL_60:
  *(a2 + 10) = v8;
  a2 = *a2;
  os_unfair_lock_lock(a2 + 4);
  if ((*(a2 + 224) & 1) == 0)
  {
    v3 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0xC5, "set_availability_blockers", v41);
    _os_crash();
    __break(1u);
    goto LABEL_63;
  }

  *(a2 + 97) = v8;
  v42 = ashp::acipc::memregion_controller::compute_state(a2);
  ashp::acipc::memregion_controller::update_state_monitor_target(a2, v42);
  os_unfair_lock_unlock(a2 + 4);
  v43 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::memregion_manager::stop_region(const os_unfair_lock *a1, uint64_t *a2, int a3)
{
  LODWORD(v4) = a3;
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(a1);
  if ((*(a2 + 37) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0xD9, "stop_region", v6);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  *(a2 + 37) = 0;
  a2 = *a2;
  os_unfair_lock_lock(a2 + 4);
  if ((a2[28] & 1) == 0)
  {
LABEL_19:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0xBB, "stop", v10);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  if (*(a2 + 396) == 1)
  {
LABEL_20:
    v4 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0xBC, "stop", v10);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2 + 19, v7, v8, v9);
  CStringPtr = a2[19];
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
      v13 = *(a2 + 40);
      *buf = 136447234;
      v17 = "memregion_controller.cpp";
      v18 = 1024;
      v19 = 189;
      v20 = 2082;
      v21 = "stop";
      v22 = 2080;
      v23 = v3;
      v24 = 1024;
      v25 = v13;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] %s[%u] stopped", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_14:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] %s[%u] stopped", "memregion_controller.cpp", 189, "stop", v3, *(a2 + 40));
      goto LABEL_15;
    }

LABEL_21:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_14;
  }

LABEL_15:
  v14 = *(a2 + 396);
  *(a2 + 98) = v4;
  if ((v14 & 1) == 0)
  {
    *(a2 + 396) = 1;
  }

  os_unfair_lock_unlock(a2 + 4);
  v15 = *MEMORY[0x277D85DE8];
}

BOOL ashp::acipc::memregion_manager::is_region_supported_in_current_exec_stage(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(a1);
  v8 = *(a1 + 24);
  v7 = (a1 + 24);
  if (!v8)
  {
    return 0;
  }

  v9 = *(a2 + 72);
  if (!v9)
  {
    return 0;
  }

  v10 = *(a2 + 88);
  v11 = 8 * v9 - 8;
  do
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v10, v4, v5, v6);
    v12 = *v10;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v7, v13, v14, v15);
    v4 = *v7;
    result = (v12 | *v7) == 0;
    if (v12)
    {
      v17 = v4 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      result = CFStringCompare(v12, v4, 0) == kCFCompareEqualTo;
    }

    if (result)
    {
      break;
    }

    ++v10;
    v18 = v11;
    v11 -= 8;
  }

  while (v18);
  return result;
}

void ashp::acipc::memregion_manager::recompute_unmapped_region_availability(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this);
  for (i = *&this[8]._os_unfair_lock_opaque; i; i = *(i + 8))
  {
    if (!*(i + 32))
    {
      ashp::acipc::memregion_manager::recompute_region_availability(this, i);
    }
  }
}

void ashp::acipc::memregion_manager::request_region_unmap(const os_unfair_lock *a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(a1);
  v7 = *(a2 + 32);
  switch(v7)
  {
    case 1:
      if ((*(a2 + 36) & 1) == 0)
      {
        *(a2 + 36) = 1;
        log_level = ashp::detail::logging::get_log_level(v6);
        if (log_level >= 4)
        {
          log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (log_level)
          {
            v14 = *(a2 + 96);
            *buf = 136446978;
            v17 = "memregion_manager.cpp";
            v18 = 1024;
            v19 = 195;
            v20 = 2082;
            v21 = "request_region_unmap";
            v22 = 1024;
            v23 = v14;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] region id %hu deferring unmap message", buf, 0x22u);
          }
        }

        if (ashp::detail::logging::get_log_level(log_level))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] region id %hu deferring unmap message", "memregion_manager.cpp", 195, "request_region_unmap", *(a2 + 96));
        }

        ashp::acipc::memregion_manager::stop_region(a1, a2, a3);
      }

      break;
    case 4:
      v11 = ashp::detail::logging::get_log_level(v6);
      if (v11 >= 4)
      {
        v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          v12 = *(a2 + 96);
          *buf = 136446978;
          v17 = "memregion_manager.cpp";
          v18 = 1024;
          v19 = 199;
          v20 = 2082;
          v21 = "request_region_unmap";
          v22 = 1024;
          v23 = v12;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] region id %hu is in limbo, attempting to unmap", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v11))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] region id %hu is in limbo, attempting to unmap", "memregion_manager.cpp", 199, "request_region_unmap", *(a2 + 96));
      }

      if (a3 == 1)
      {
        *(a2 + 32) = 3;
        ashp::acipc::memregion_controller::set_device_region_status(*a2, 3);
LABEL_20:
        ashp::acipc::memregion_manager::send_memory_unmap_message(a1, a2);
      }

      break;
    case 2:
      ashp::acipc::memregion_manager::stop_region(a1, a2, a3);
      *(a2 + 32) = 3;
      ashp::acipc::memregion_controller::set_device_region_status(*a2, 3);
      v9 = ashp::detail::logging::get_log_level(v8);
      if (v9 >= 4)
      {
        v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v9)
        {
          v10 = *(a2 + 96);
          *buf = 136446978;
          v17 = "memregion_manager.cpp";
          v18 = 1024;
          v19 = 189;
          v20 = 2082;
          v21 = "request_region_unmap";
          v22 = 1024;
          v23 = v10;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] region id %hu sending unmap message", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v9))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] region id %hu sending unmap message", "memregion_manager.cpp", 189, "request_region_unmap", *(a2 + 96));
      }

      goto LABEL_20;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::memregion_manager::send_memory_unmap_message(const os_unfair_lock *this, ashp::acipc::detail::memregion_manager::region_context *a2)
{
  os_unfair_lock_assert_owner(this);
  if (LOBYTE(this[4]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x133, "send_memory_unmap_message", v7);
    _os_crash();
    __break(1u);
  }

  else if (*(a2 + 8) == 3)
  {
    v9 = 9;
    HIWORD(v9) = *(a2 + 48);
    v8 = *&this[2]._os_unfair_lock_opaque;
    ashp::optional<ashp::acipc::messenger,void>::value(v8 + 4944, v4, v5, v6);
    ashp::acipc::messenger::send_message(v8 + 4944, &v9, 4, 0, 0, this, a2, ashp::acipc::memregion_manager::memory_unmap_message_completed);
    return;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x134, "send_memory_unmap_message", v7);
  _os_crash();
  __break(1u);
}

void ashp::acipc::memregion_manager::memory_unmap_message_completed(os_unfair_lock_t lock, const char *a2, int a3, uint64_t a4, const char *a5)
{
  v7 = lock;
  v21 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if ((v7[4]._os_unfair_lock_opaque & 1) == 0)
  {
    if (*(a2 + 8) != 3)
    {
      a2 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x17A, "memory_unmap_message_completed", a5);
      _os_crash();
      __break(1u);
      goto LABEL_26;
    }

    if (a3)
    {
      if (a3 == 1)
      {
LABEL_9:
        log_level = ashp::detail::logging::get_log_level(lock);
        if (log_level >= 4)
        {
          log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (log_level)
          {
            v9 = *(a2 + 48);
            *buf = 136446978;
            v14 = "memregion_manager.cpp";
            v15 = 1024;
            v16 = 388;
            v17 = 2082;
            v18 = "memory_unmap_message_completed";
            v19 = 1024;
            v20 = v9;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] message failed, setting state for region id %hu", buf, 0x22u);
          }
        }

        if (!ashp::detail::logging::get_log_level(log_level))
        {
          goto LABEL_15;
        }

        if (airship_platform_get_global_logger::once == -1)
        {
LABEL_14:
          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] message failed, setting state for region id %hu", "memregion_manager.cpp", 388, "memory_unmap_message_completed", *(a2 + 48));
LABEL_15:
          *(a2 + 8) = 4;
          ashp::acipc::memregion_controller::set_device_region_status(*a2, 4);
          goto LABEL_24;
        }

LABEL_26:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        goto LABEL_14;
      }

      if (a3 == 2)
      {
        a2 = "BUG in Airship: ";
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x18A, "memory_unmap_message_completed", a5);
        lock = _os_crash();
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {
      v10 = ashp::detail::logging::get_log_level(lock);
      if (v10 >= 4)
      {
        v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          v11 = *(a2 + 48);
          *buf = 136446978;
          v14 = "memregion_manager.cpp";
          v15 = 1024;
          v16 = 382;
          v17 = 2082;
          v18 = "memory_unmap_message_completed";
          v19 = 1024;
          v20 = v11;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] message success, setting state for region id %hu", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v10))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] message success, setting state for region id %hu", "memregion_manager.cpp", 382, "memory_unmap_message_completed", *(a2 + 48));
      }

      *(a2 + 8) = 0;
      ashp::acipc::memregion_controller::set_device_region_status(*a2, 0);
      ashp::acipc::memregion_manager::recompute_unmapped_region_availability(v7);
    }
  }

LABEL_24:
  os_unfair_lock_unlock(v7);
  v12 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::memregion_manager::memory_map_message_completed(os_unfair_lock_t lock, char *a2, int a3, uint64_t a4, const char *a5)
{
  v7 = lock;
  v21 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if ((v7[4]._os_unfair_lock_opaque & 1) == 0)
  {
    if (*(a2 + 8) != 1)
    {
      a2 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x14F, "memory_map_message_completed", a5);
      _os_crash();
      __break(1u);
      goto LABEL_30;
    }

    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          goto LABEL_28;
        }

        a2 = "BUG in Airship: ";
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x16E, "memory_map_message_completed", a5);
        lock = _os_crash();
        __break(1u);
      }

      log_level = ashp::detail::logging::get_log_level(lock);
      if (log_level >= 4)
      {
        log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (log_level)
        {
          v9 = *(a2 + 48);
          *buf = 136446978;
          v14 = "memregion_manager.cpp";
          v15 = 1024;
          v16 = 354;
          v17 = 2082;
          v18 = "memory_map_message_completed";
          v19 = 1024;
          v20 = v9;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] message failed, setting state for region id %hu", buf, 0x22u);
        }
      }

      if (!ashp::detail::logging::get_log_level(log_level))
      {
        goto LABEL_15;
      }

      if (airship_platform_get_global_logger::once == -1)
      {
LABEL_14:
        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] message failed, setting state for region id %hu", "memregion_manager.cpp", 354, "memory_map_message_completed", *(a2 + 48));
LABEL_15:
        if (a2[37] == 1)
        {
          ashp::acipc::memregion_manager::stop_region(v7, a2, 0);
        }

        a2[36] = 0;
        *(a2 + 8) = 0;
        ashp::acipc::memregion_controller::set_device_region_status(*a2, 0);
        ashp::acipc::memregion_manager::recompute_unmapped_region_availability(v7);
        goto LABEL_28;
      }

LABEL_30:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      goto LABEL_14;
    }

    v10 = ashp::detail::logging::get_log_level(lock);
    if (v10 >= 4)
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        v11 = *(a2 + 48);
        *buf = 136446978;
        v14 = "memregion_manager.cpp";
        v15 = 1024;
        v16 = 339;
        v17 = 2082;
        v18 = "memory_map_message_completed";
        v19 = 1024;
        v20 = v11;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] message success, setting state for region id %hu", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v10))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] message success, setting state for region id %hu", "memregion_manager.cpp", 339, "memory_map_message_completed", *(a2 + 48));
    }

    if (a2[36] == 1)
    {
      a2[36] = 0;
      *(a2 + 8) = 3;
      ashp::acipc::memregion_controller::set_device_region_status(*a2, 3);
      ashp::acipc::memregion_manager::send_memory_unmap_message(v7, a2);
    }

    else
    {
      *(a2 + 8) = 2;
      ashp::acipc::memregion_controller::set_device_region_status(*a2, 2);
    }
  }

LABEL_28:
  os_unfair_lock_unlock(v7);
  v12 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::memregion_manager::unmap_region(os_unfair_lock_t lock, ashp::acipc::memregion_controller **a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (a2[35] == a2)
  {
    ashp::acipc::memregion_manager::request_region_unmap(lock, (a2 + 35), 1);
    if (lock)
    {

      os_unfair_lock_unlock(lock);
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0xAF, "unmap_region", a5);
    _os_crash();
    __break(1u);
  }
}

void sub_23ECE3D20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ashp::get_proxima_platform(ashp *this)
{
  v5 = *MEMORY[0x277D85DE8];
  *buf = 0;
  if (os_parse_boot_arg_int())
  {
    v1 = *buf;
  }

  else
  {
    v1 = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

ashp::driver_object *ashp::driver_object::driver_object(ashp::driver_object *this, os_unfair_lock_s *a2, uint64_t a3, const char *a4, const char *a5)
{
  *this = &unk_28515CFA0;
  *(this + 1) = 1;
  *(this + 4) = 0;
  *(this + 3) = a2;
  *(this + 32) = 0;
  *(this + 40) = 0u;
  v6 = this + 40;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  if (a2)
  {
    ashp::optional<ashp::acipc::tr_ring,void>::value(&a2[88], a2, a3, a4);
    os_unfair_lock_lock(a2 + 88);
    if (!*(this + 7))
    {
      v9 = *&a2[92]._os_unfair_lock_opaque;
      *(this + 5) = *v9;
      *(this + 6) = v9;
      *v9 = this;
      *&a2[92]._os_unfair_lock_opaque = v6;
      *(this + 7) = a2 + 90;
      os_unfair_lock_unlock(a2 + 88);
      return this;
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver_object.cpp", 0x19, "driver_object", a5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xBA, "insert_before", v8);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to insert element already in list", "intrusive_list.hpp", 0xBA, "insert_before", v11);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECE3FE4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3 + 88);
  ashp::intrusive_list_link<ashp::driver_object>::~intrusive_list_link(v1 + 72, v5, v6, v7);
  ashp::intrusive_list_link<ashp::driver_object>::~intrusive_list_link(v2, v8, v9, v10);
  _Unwind_Resume(a1);
}

uint64_t ashp::intrusive_list_link<ashp::driver_object>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
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

void ashp::driver_object::destroy(ashp::driver_object *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    ashp::driver_object::~driver_object(this, a2, a3, a4, a5);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

void ashp::driver_object::~driver_object(ashp::driver_object *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  *this = &unk_28515CFA0;
  v5 = *(this + 3);
  if (v5)
  {
    if (*(this + 32))
    {
      ashp::optional<ashp::acipc::tr_ring,void>::value(&v5[88], a2, a3, a4);
      os_unfair_lock_lock(v5 + 88);
      ashp::detail::intrusive_list::intrusive_list_impl<ashp::driver_object,ashp::intrusive_list_link<ashp::driver_object>,&ashp::driver_object::_manager_link>::remove(&v5[90], this, v7, v8);
      os_unfair_lock_unlock(v5 + 88);
      ashp::intrusive_list_link<ashp::driver_object>::~intrusive_list_link(this + 72, v9, v10, v11);
      ashp::intrusive_list_link<ashp::driver_object>::~intrusive_list_link(this + 40, v12, v13, v14);
      return;
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver_object.cpp", 0x1F, "~driver_object", a5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver_object.cpp", 0x20, "~driver_object", a5);
  _os_crash();
  __break(1u);
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::driver_object,ashp::intrusive_list_link<ashp::driver_object>,&ashp::driver_object::_manager_link>::remove(uint64_t result, void *a2, uint64_t a3, const char *a4)
{
  if (a2 && a2[7] == result)
  {
    v4 = a2[5];
    v5 = a2[6];
    *v5 = v4;
    if (v4)
    {
      v6 = v4 + 40;
    }

    else
    {
      v6 = result;
    }

    *(v6 + 8) = v5;
    a2[5] = 0;
    a2[6] = 0;
    a2[7] = 0;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xCB, "remove", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to remove element not in list", "intrusive_list.hpp", 0xCB, "remove", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::driver_object::terminate(ashp::driver_object *this)
{
  os_unfair_lock_lock(this + 4);
  if ((*(this + 32) & 1) == 0)
  {
    *(this + 32) = 1;
    (*(*this + 8))(this);
    v2 = *(this + 8);
    if (v2)
    {
      os_unfair_lock_lock(*(this + 8));
      ashp::detail::intrusive_list::intrusive_list_impl<ashp::driver_object,ashp::intrusive_list_link<ashp::driver_object>,&ashp::driver_object::_termination_list_link>::remove(&v2[2], this, v3, v4);
      os_unfair_lock_unlock(v2);
      ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::release(this + 1, v5, v6, v7);
    }
  }

  os_unfair_lock_unlock(this + 4);
}

void sub_23ECE4338(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2);
  os_unfair_lock_unlock(v1 + 4);
  _Unwind_Resume(a1);
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::driver_object,ashp::intrusive_list_link<ashp::driver_object>,&ashp::driver_object::_termination_list_link>::remove(uint64_t result, void *a2, uint64_t a3, const char *a4)
{
  if (a2 && a2[11] == result)
  {
    v4 = a2[9];
    v5 = a2[10];
    *v5 = v4;
    if (v4)
    {
      v6 = v4 + 72;
    }

    else
    {
      v6 = result;
    }

    *(v6 + 8) = v5;
    a2[9] = 0;
    a2[10] = 0;
    a2[11] = 0;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xCB, "remove", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to remove element not in list", "intrusive_list.hpp", 0xCB, "remove", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::driver_object_manager::~driver_object_manager(ashp::driver_object_manager *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v6 = *(this + 1);
  v5 = this + 8;
  if (v6)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver_object.cpp", 0x3D, "~driver_object_manager", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::intrusive_list_link<ashp::driver_object>::~intrusive_list_link(v5, a2, a3, a4);
  }
}

void ashp::driver_object_termination_list::~driver_object_termination_list(ashp::driver_object_termination_list *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v6 = *(this + 1);
  v5 = this + 8;
  if (v6)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver_object.cpp", 0x57, "~driver_object_termination_list", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::intrusive_list_link<ashp::driver_object>::~intrusive_list_link(v5, a2, a3, a4);
  }
}

void ashp::driver_object_termination_list::terminate_all(os_unfair_lock_s *this)
{
  for (i = this; ; this = i)
  {
    os_unfair_lock_lock(this);
    v5 = **(*&i[4]._os_unfair_lock_opaque + 8);
    if (!v5)
    {
      break;
    }

    ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::retain(v5 + 1, v2, v3, v4);
    os_unfair_lock_unlock(i);
    ashp::driver_object::terminate(v5);
    ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::release(v5 + 1, v6, v7, v8);
  }

  os_unfair_lock_unlock(i);
}

void ashp::driver_object_termination_list::insert(os_unfair_lock_s *this, ashp::driver_object *a2)
{
  os_unfair_lock_lock(a2 + 4);
  if ((*(a2 + 32) & 1) == 0)
  {
    if (this)
    {
      os_unfair_lock_lock(this);
    }

    if (*(a2 + 8))
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver_object.cpp", 0x78, "insert", v7);
      _os_crash();
      __break(1u);
    }

    else
    {
      *(a2 + 8) = this;
      if (!*(a2 + 11))
      {
        v8 = *&this[4]._os_unfair_lock_opaque;
        *(a2 + 9) = *v8;
        *v8 = a2;
        *(a2 + 10) = v8;
        *&this[4]._os_unfair_lock_opaque = a2 + 72;
        *(a2 + 11) = this + 2;
        ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::retain(a2 + 1, v4, v5, v6);
        os_unfair_lock_unlock(this);
        goto LABEL_7;
      }
    }

    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xBA, "insert_before", v6);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to insert element already in list", "intrusive_list.hpp", 0xBA, "insert_before", v9);
    _os_crash();
    __break(1u);
    return;
  }

LABEL_7:

  os_unfair_lock_unlock(a2 + 4);
}

void sub_23ECE4648(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2);
  os_unfair_lock_unlock(v1 + 4);
  _Unwind_Resume(a1);
}

uint64_t airship_acipc_set_mcr_event_handler(uint64_t a1, int a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 8));
  if ((*(a1 + 13) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("acipc_driver.cpp", 0x3ED, "set_mcr_event_handler", v8);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive driver", "acipc_driver.cpp", 0x3ED, "set_mcr_event_handler", v37);
    _os_crash();
    __break(1u);
LABEL_32:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v16);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v38);
    _os_crash();
    __break(1u);
    goto LABEL_33;
  }

  ashp::optional<ashp::acipc::messenger,void>::value(a1 + 4944, v6, v7, v8);
  os_unfair_lock_lock((a1 + 4944));
  v11 = *(a1 + 5184);
  if (v11)
  {
    v12 = *(a1 + 5200);
    v13 = 16 * v11;
    while (*v12 != a2)
    {
      v12 += 16;
      v13 -= 16;
      if (!v13)
      {
        goto LABEL_6;
      }
    }

    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v41, a3, v9, v10);
    v32 = *(v12 + 1);
    *(v12 + 1) = v41;
    v41 = v32;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v41, v33, v34, v35);
    goto LABEL_30;
  }

LABEL_6:
  LOBYTE(v41) = a2;
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v42, a3, v9, v10);
  v18 = *(a1 + 5184);
  v19 = v18 + 1;
  if (v18 == -1)
  {
    goto LABEL_32;
  }

  v20 = *(a1 + 5192);
  if (v19 <= v20)
  {
    goto LABEL_26;
  }

  if (v20 <= 8)
  {
    v21 = 8;
  }

  else
  {
    v21 = *(a1 + 5192);
  }

  if (v19 >= 9)
  {
    do
    {
      if (is_mul_ok(v21, 3uLL))
      {
        v21 = (3 * v21) >> 1;
      }

      else
      {
        v21 = v18 + 1;
      }
    }

    while (v21 < v19);
  }

  if (v20 >= v21)
  {
LABEL_26:
    if (v18 < v20)
    {
      v29 = *(a1 + 5200);
      if (v29)
      {
        v30 = v29 + 16 * v18;
        *v30 = v41;
        v31 = v42;
        v42 = 0;
        *(v30 + 8) = v31;
        ++*(a1 + 5184);
        ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v42, v14, v15, v16);
LABEL_30:
        os_unfair_lock_unlock((a1 + 4944));
        os_unfair_lock_unlock((a1 + 8));
        return 0;
      }

      goto LABEL_34;
    }

LABEL_33:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v17);
    _os_crash();
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v18 >= v21)
  {
LABEL_35:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", v17);
    _os_crash();
    __break(1u);
    goto LABEL_36;
  }

  if (v21 >> 60)
  {
LABEL_36:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", v16);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v39);
    _os_crash();
    __break(1u);
    goto LABEL_37;
  }

  v22 = malloc_type_aligned_alloc(8uLL, 16 * v21, 0x10800403DA8C3A5uLL);
  if (v22)
  {
    if (*(a1 + 5184))
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = &v22[v23];
        v26 = (*(a1 + 5200) + v23);
        *v25 = *v26;
        v27 = *(v26 + 1);
        *(v26 + 1) = 0;
        *(v25 + 1) = v27;
        ++v24;
        v23 += 16;
      }

      while (v24 < *(a1 + 5184));
    }

    *(a1 + 5192) = v21;
    v28 = *(a1 + 5200);
    *(a1 + 5200) = v22;
    if (v28)
    {
      free(v28);
    }

    v18 = *(a1 + 5184);
    v20 = *(a1 + 5192);
    goto LABEL_26;
  }

LABEL_37:
  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v16);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v40);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECE49F4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v1 + v2));
  os_unfair_lock_unlock(v1 + 2);
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
    _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] %{public}s", &v10, 0x26u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void ashp::copy_and_zerofill(ashp *this, void *a2, void *__src, const void *a4, const char *a5)
{
  v5 = a2;
  if (!this && a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "base.cpp", 0x119, "copy_and_zerofill", a5);
    _os_crash();
    __break(1u);
LABEL_12:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "base.cpp", 0x11A, "copy_and_zerofill", a5);
    _os_crash();
    __break(1u);
    return;
  }

  if (!__src && a4)
  {
    goto LABEL_12;
  }

  if (a2 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a2;
  }

  memcpy(this, __src, v7);

  bzero(this + v7, (v5 - v7));
}

ashp::acipc::detail::completion_mirror::buffer_array *ashp::acipc::detail::completion_mirror::buffer_array::buffer_array(ashp::acipc::detail::completion_mirror::buffer_array *this, unsigned int a2, unsigned int a3, const char *a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 12) = a2;
  *(this + 7) = a3;
  v5 = a2 * a3;
  if ((v5 & 0xFFFFFFFF00000000) != 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("completion_mirror.cpp", 0xF, "buffer_array", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: flat array size multiplication overflow", "completion_mirror.cpp", 0xF, "buffer_array", v10);
    result = _os_crash();
  }

  else
  {
    v11 = 0;
    ashp::dynamic_array<unsigned char>::dynamic_array<int,0>(&v12, v5, &v11);
    v6 = v13;
    v7 = v12;
    v12 = 0uLL;
    v13 = 0;
    v8 = *this;
    *this = v7;
    result = *(this + 2);
    *(this + 2) = v6;
    if (!v8 || result)
    {
      if (!result)
      {
        *&v12 = 0;
        return this;
      }

      free(result);
      result = v13;
      if (!v12 || v13)
      {
        *&v12 = 0;
        if (v13)
        {
          free(v13);
        }

        return this;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ashp::dynamic_array<unsigned char>::dynamic_array<int,0>(unint64_t *a1, unint64_t a2, _BYTE *a3)
{
  *a1 = 0;
  a1[1] = a2;
  a1[2] = 0;
  if (!a2)
  {
    return a1;
  }

  v5 = a2;
  result = malloc_type_aligned_alloc(8uLL, (a2 + 7) & 0xFFFFFFFFFFFFFFF8, 0x100004077774924uLL);
  a1[2] = result;
  if (result)
  {
    v9 = *a1;
    while (v9 < a1[1])
    {
      v10 = a1[2];
      if (!v10)
      {
        goto LABEL_10;
      }

      *(v10 + v9) = *a3;
      v9 = *a1 + 1;
      *a1 = v9;
      if (!--v5)
      {
        return a1;
      }
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v8);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v7);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v11);
  result = _os_crash();
LABEL_10:
  __break(1u);
  return result;
}

void ashp::acipc::detail::completion_mirror::buffer_array::copy_from(ashp::acipc::detail::completion_mirror::buffer_array *this, unsigned int a2, char *a3, const char *a4)
{
  if (*(this + 12) <= a2)
  {
    ashp::detail::control_flow::log_guard_else_failure("completion_mirror.cpp", 0x16, "copy_from", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: index out of range", "completion_mirror.cpp", 0x16, "copy_from", v9);
    _os_crash();
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = *(this + 7);
    if (v6 >= a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = v6;
    }

    if (v6)
    {
      v8 = ashp::dynamic_array<unsigned char>::operator[](this, v6 * a2, a3, a4);
      if (v4)
      {
        memcpy(a3, v8, v7);
      }
    }

    if (v6 < v4)
    {

      bzero(&a3[v7], v4 - v7);
    }
  }
}

uint64_t ashp::dynamic_array<unsigned char>::operator[](unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1 > a2)
  {
    return a1[2] + a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x1A2, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x1A2, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::detail::completion_mirror::buffer_array::copy_to(ashp::acipc::detail::completion_mirror::buffer_array *this, unsigned int a2, const void *__src, const char *a4)
{
  if (*(this + 12) <= a2)
  {
    ashp::detail::control_flow::log_guard_else_failure("completion_mirror.cpp", 0x28, "copy_to", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: index out of range", "completion_mirror.cpp", 0x28, "copy_to", v10);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  v5 = *(this + 7);
  if (v5 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = v5;
  }

  if (!v5)
  {
    return;
  }

  v7 = v5 * a2;
  if (*this <= v7)
  {
LABEL_15:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v11);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = *(this + 2);
  v9 = v8 + v7;
  if (a4)
  {
    memcpy((v8 + v7), __src, v6);
    v5 = *(this + 7);
  }

  if (v5 > v6)
  {

    bzero((v9 + v6), v5 - v6);
  }
}

void ashp::acipc::completion_mirror::append_element(os_unfair_lock_t lock, uint64_t a2, const void *a3, const char *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  os_unfair_lock_opaque_high = HIWORD(lock[1]._os_unfair_lock_opaque);
  ashp::ring_index_pair<unsigned short>::advance_head_index(&lock[1], a2, a3, a4);
  ashp::acipc::detail::completion_mirror::buffer_array::copy_to(&lock[4], os_unfair_lock_opaque_high, a3, lock[11]._os_unfair_lock_opaque);
  ashp::acipc::detail::completion_mirror::buffer_array::copy_to(&lock[18], os_unfair_lock_opaque_high, a4, lock[25]._os_unfair_lock_opaque);
  if (*&lock[12]._os_unfair_lock_opaque <= os_unfair_lock_opaque_high)
  {
    os_unfair_lock_opaque_high = "dynamic_array.hpp";
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", v10);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v15);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v11 = *&lock[16]._os_unfair_lock_opaque + 20 * os_unfair_lock_opaque_high;
  v12 = *a2;
  *(v11 + 16) = *(a2 + 16);
  *v11 = v12;
  log_level = ashp::detail::logging::get_log_level(v9);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446978;
      v17 = "completion_mirror.cpp";
      v18 = 1024;
      v19 = 84;
      v20 = 2082;
      v21 = "append_element";
      v22 = 1024;
      v23 = os_unfair_lock_opaque_high;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] new item at index %hu", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_9:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] new item at index %hu", "completion_mirror.cpp", 84, "append_element", os_unfair_lock_opaque_high);
      goto LABEL_10;
    }

LABEL_12:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_9;
  }

LABEL_10:
  os_unfair_lock_unlock(lock);
  v14 = *MEMORY[0x277D85DE8];
}

unsigned __int16 *ashp::ring_index_pair<unsigned short>::advance_tail_index(unsigned __int16 *result, unsigned int a2, uint64_t a3, const char *a4)
{
  v4 = result[2];
  v5 = result[1] - v4;
  if ((v5 & 0xFFFF0000) != 0)
  {
    v6 = *result;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > (v6 + v5))
  {
    ashp::detail::control_flow::log_guard_else_failure("ring_index_pair.hpp", 0xA5, "advance_tail_index", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: invalid tail index advance operation", "ring_index_pair.hpp", 0xA5, "advance_tail_index", v10);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v7 = v4 + a2;
    v8 = v7;
    if (v7 == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = *result;
    }

    result[2] = (v8 - v9) % *result;
  }

  return result;
}

void ashp::direct_interrupt::cancel(ashp::direct_interrupt *this)
{
  os_unfair_lock_lock(this + 16);
  if ((*(this + 81) & 1) == 0)
  {
    *(this + 81) = 1;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 9, v2, v3, v4);
    ashp::client_interrupt::cancel(*(this + 9));
    ashp::async_notifier::cancel(this + 22, v5, v6, v7);
  }

  os_unfair_lock_unlock(this + 16);
}

void ashp::direct_interrupt::resume(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::async_notifier::resume(this + 22, v2, v3, v4);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v5, v6, v7);
  v8 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v8 + 16));
  if (*(v8 + 185) == 1)
  {
    *(v8 + 185) = 0;
    if (*(v8 + 168) == 1)
    {
      ashp::optional<ashp::interrupt,void>::value(v8 + 112, v9, v10, v11);
      v12 = *(v8 + 112);
      ashp::optional<ashp::interrupt_manager,void>::value(&v12[158], v13, v14, v15);
      ashp::interrupt_manager::resume_handler(v12 + 158, v8 + 112);
    }
  }

  os_unfair_lock_unlock((v8 + 16));

  os_unfair_lock_unlock(this + 16);
}

void sub_23ECE5480(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock(v3 + 4);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

void ashp::direct_interrupt::suspend(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v5 + 16));
  if ((*(v5 + 185) & 1) == 0)
  {
    *(v5 + 185) = 1;
    if (*(v5 + 168) == 1)
    {
      ashp::optional<ashp::interrupt,void>::value(v5 + 112, v6, v7, v8);
      v9 = *(v5 + 112);
      ashp::optional<ashp::interrupt_manager,void>::value(&v9[158], v10, v11, v12);
      ashp::interrupt_manager::suspend_handler(v9 + 158, v5 + 112);
    }
  }

  os_unfair_lock_unlock((v5 + 16));
  ashp::async_notifier::suspend(this + 22, v13, v14, v15);

  os_unfair_lock_unlock(this + 16);
}

void sub_23ECE554C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock(v3 + 4);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

void ashp::direct_interrupt::activate(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[20]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_interrupt.cpp", 0x40, "activate", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to activate active interrupt", "direct_interrupt.cpp", 0x40, "activate", v35);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  if (BYTE1(this[20]._os_unfair_lock_opaque) == 1)
  {
LABEL_15:
    ashp::detail::control_flow::log_guard_else_failure("direct_interrupt.cpp", 0x41, "activate", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to activate canceled interrupt", "direct_interrupt.cpp", 0x41, "activate", v36);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  LOBYTE(this[20]._os_unfair_lock_opaque) = 1;
  if ((this[34]._os_unfair_lock_opaque & 0x100) != 0 || BYTE2(this[34]._os_unfair_lock_opaque) == 1)
  {
    if (this[34]._os_unfair_lock_opaque)
    {
      ashp::async_notifier::activate(this + 22, v2, v3, v4);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v5, v6, v7);
      v8 = *&this[18]._os_unfair_lock_opaque;
      os_unfair_lock_lock((v8 + 16));
      os_unfair_lock_lock((v8 + 100));
      *(v8 + 176) = this + 22;
      os_unfair_lock_unlock((v8 + 100));
      os_unfair_lock_unlock((v8 + 16));
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v9, v10, v11);
      v12 = *&this[18]._os_unfair_lock_opaque;
      os_unfair_lock_lock((v12 + 16));
      if (*(v12 + 184) != 1)
      {
        if (*(v12 + 168) != 1)
        {
          ashp::unsafe_storage<ashp::interrupt>::storage::emplace<ashp::driver *&>(v12 + 112, (v12 + 24), v13, v14, v15);
          ashp::optional<ashp::interrupt,void>::value(v12 + 112, v16, v17, v18);
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 0x40000000;
          v38[2] = ___ZN4ashp16client_interrupt8activateEv_block_invoke;
          v38[3] = &__block_descriptor_tmp_1408;
          v38[4] = v12;
          v19 = *(v12 + 112);
          ashp::optional<ashp::interrupt_manager,void>::value(&v19[158], v20, v21, v22);
          ashp::interrupt_manager::set_handler_callback(v19 + 158, v12 + 112, v38);
          if (*(v12 + 185) == 1)
          {
            ashp::optional<ashp::interrupt,void>::value(v12 + 112, v23, v24, v25);
            v26 = *(v12 + 112);
            ashp::optional<ashp::interrupt_manager,void>::value(&v26[158], v27, v28, v29);
            ashp::interrupt_manager::suspend_handler(v26 + 158, v12 + 112);
          }

          ashp::optional<ashp::interrupt,void>::value(v12 + 112, v23, v24, v25);
          v30 = *(v12 + 104);
          v31 = *(v12 + 112);
          ashp::optional<ashp::interrupt_manager,void>::value(&v31[158], v32, v33, v34);
          ashp::interrupt_manager::set_handler_mask(v31 + 158, v12 + 112, 1 << v30);
          os_unfair_lock_unlock((v12 + 16));
          goto LABEL_11;
        }

LABEL_18:
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0x44B, "activate", v15);
        _os_crash();
        __break(1u);
        return;
      }

LABEL_17:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0x44A, "activate", v15);
      _os_crash();
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    ashp::detail::control_flow::log_guard_else_failure("direct_interrupt.cpp", 0x45, "activate", v4);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to activate interrupt with event handlers but without queue", "direct_interrupt.cpp", 0x45, "activate", v37);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

LABEL_11:

  os_unfair_lock_unlock(this + 16);
}

void sub_23ECE5874(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::direct_interrupt::get_device_vector(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock(v5 + 4);
  os_unfair_lock_opaque = v5[26]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v5 + 4);
  os_unfair_lock_unlock(this + 16);
  return os_unfair_lock_opaque;
}

void ashp::direct_interrupt::set_cancel_handler(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 64));
  if (*(a1 + 80) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_interrupt.cpp", 0x30, "set_cancel_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active interrupt", "direct_interrupt.cpp", 0x30, "set_cancel_handler", v6);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::async_notifier::set_cancel_handler((a1 + 88), a2, v4, v5);
    *(a1 + 138) = a2 != 0;

    os_unfair_lock_unlock((a1 + 64));
  }
}

void ashp::direct_interrupt::set_event_handler(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 64));
  if (*(a1 + 80) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_interrupt.cpp", 0x27, "set_event_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active interrupt", "direct_interrupt.cpp", 0x27, "set_event_handler", v6);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::async_notifier::set_event_handler((a1 + 88), a2, v4, v5);
    *(a1 + 137) = a2 != 0;

    os_unfair_lock_unlock((a1 + 64));
  }
}

void ashp::direct_interrupt::set_queue(os_unfair_lock_s *this, dispatch_queue_s *a2)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[20]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_interrupt.cpp", 0x1E, "set_queue", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active interrupt", "direct_interrupt.cpp", 0x1E, "set_queue", v6);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::async_notifier::set_queue(this + 22, a2, v4, v5);
    LOBYTE(this[34]._os_unfair_lock_opaque) = a2 != 0;

    os_unfair_lock_unlock(this + 16);
  }
}

void ashp::direct_interrupt::destroy(ashp::direct_interrupt *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    *this = &unk_28515CFC0;
    v6 = (this + 72);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 9, a2, a3, a4);
    ashp::driver_object::terminate(*v6);
    ashp::async_notifier::~async_notifier((this + 88), v7, v8, v9);
    ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(v6, v10, v11, v12);
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

uint64_t ashp::acipc::direct_memregion::reset(os_unfair_lock_s *this)
{
  v28 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v5 + 144));
  os_unfair_lock_lock((v5 + 16));
  if ((*(v5 + 224) & 1) == 0)
  {
    v13 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0xA5, "reset", v6);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v7 = 3758097088;
  if ((*(v5 + 32) & 1) == 0)
  {
    if (ashp::acipc::memregion_controller::compute_state(v5) == 7)
    {
      *(v5 + 400) = 0;
      if (*(v5 + 396) == 1)
      {
        *(v5 + 396) = 0;
      }

      v8 = ashp::acipc::memregion_controller::compute_state(v5);
      ashp::acipc::memregion_controller::update_state_monitor_target(v5, v8);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 152), v9, v10, v11);
      CStringPtr = *(v5 + 152);
      if (CStringPtr)
      {
        CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
        if (CStringPtr)
        {
          v13 = CStringPtr;
        }

        else
        {
          v13 = "???";
        }
      }

      else
      {
        v13 = "(nil)";
      }

      log_level = ashp::detail::logging::get_log_level(CStringPtr);
      if (log_level >= 4)
      {
        log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (log_level)
        {
          v15 = *(v5 + 160);
          *buf = 136447234;
          v19 = "memregion_controller.cpp";
          v20 = 1024;
          v21 = 172;
          v22 = 2082;
          v23 = "reset";
          v24 = 2080;
          v25 = v13;
          v26 = 1024;
          v27 = v15;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] %s[%u] reset", buf, 0x2Cu);
        }
      }

      if (!ashp::detail::logging::get_log_level(log_level))
      {
        goto LABEL_18;
      }

      if (airship_platform_get_global_logger::once == -1)
      {
LABEL_17:
        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] %s[%u] reset", "memregion_controller.cpp", 172, "reset", v13, *(v5 + 160));
LABEL_18:
        v7 = 0;
        goto LABEL_19;
      }

LABEL_21:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      goto LABEL_17;
    }

    v7 = 3758097112;
  }

LABEL_19:
  os_unfair_lock_unlock((v5 + 16));
  os_unfair_lock_unlock((v5 + 144));
  os_unfair_lock_unlock(this + 16);
  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_23ECE5E8C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  os_unfair_lock_unlock(v2 + 36);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::direct_memregion::unmap(os_unfair_lock_s *this)
{
  v35 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v5 + 144));
  os_unfair_lock_lock((v5 + 16));
  if ((*(v5 + 224) & 1) == 0)
  {
    v13 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0x88, "unmap", v6);
    _os_crash();
    __break(1u);
    goto LABEL_22;
  }

  v7 = 3758097088;
  if ((*(v5 + 32) & 1) == 0)
  {
    v8 = ashp::acipc::memregion_controller::compute_state(v5);
    if (v8 > 7)
    {
LABEL_6:
      v7 = 3758097112;
      goto LABEL_20;
    }

    if (((1 << v8) & 0x2C) == 0)
    {
      if (((1 << v8) & 0xD0) == 0)
      {
        goto LABEL_6;
      }

LABEL_19:
      v7 = 0;
      goto LABEL_20;
    }

    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 152), v9, v10, v11);
    CStringPtr = *(v5 + 152);
    if (CStringPtr)
    {
      CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
      if (CStringPtr)
      {
        v13 = CStringPtr;
      }

      else
      {
        v13 = "???";
      }
    }

    else
    {
      v13 = "(nil)";
    }

    log_level = ashp::detail::logging::get_log_level(CStringPtr);
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v15 = *(v5 + 160);
        *buf = 136447234;
        v26 = "memregion_controller.cpp";
        v27 = 1024;
        v28 = 151;
        v29 = 2082;
        v30 = "unmap";
        v31 = 2080;
        v32 = v13;
        v33 = 1024;
        v34 = v15;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] unmapping memory region for %s[%u]", buf, 0x2Cu);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
LABEL_18:
      os_unfair_lock_unlock((v5 + 16));
      v16 = *(v5 + 24);
      ashp::optional<ashp::interrupt,void>::value(&v16[1220], v17, v18, v19);
      ashp::acipc::memregion_manager::unmap_region(v16 + 1220, v5, v20, v21, v22);
      os_unfair_lock_lock((v5 + 16));
      goto LABEL_19;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_17:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] unmapping memory region for %s[%u]", "memregion_controller.cpp", 151, "unmap", v13, *(v5 + 160));
      goto LABEL_18;
    }

LABEL_22:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_17;
  }

LABEL_20:
  os_unfair_lock_unlock((v5 + 16));
  os_unfair_lock_unlock((v5 + 144));
  os_unfair_lock_unlock(this + 16);
  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_23ECE6144(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);
  os_unfair_lock_unlock(v2 + 36);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::direct_memregion::map(os_unfair_lock_s *this)
{
  v77 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v5 + 144));
  os_unfair_lock_lock((v5 + 16));
  if ((*(v5 + 224) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0x64, "map", v6);
    _os_crash();
    __break(1u);
LABEL_65:
    v7 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0x6A, "map", v11);
    _os_crash();
    __break(1u);
    goto LABEL_66;
  }

  v7 = 3758097112;
  if (*(v5 + 32))
  {
    v7 = 3758097088;
    goto LABEL_63;
  }

  if (ashp::acipc::memregion_controller::compute_state(v5) != 1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 152), v8, v9, v10);
    CStringPtr = *(v5 + 152);
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
        v38 = *(v5 + 160);
        *buf = 136447234;
        *&v71 = "memregion_controller.cpp";
        WORD4(v71) = 1024;
        *(&v71 + 10) = 103;
        HIWORD(v71) = 2082;
        v72 = "map";
        v73 = 2080;
        *v74 = v21;
        *&v74[8] = 1024;
        *&v74[10] = v38;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] %s[%u] unavailable", buf, 0x2Cu);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_63;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_23:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] %s[%u] unavailable", "memregion_controller.cpp", 103, "map", v21, *(v5 + 160));
      goto LABEL_63;
    }

LABEL_70:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_23;
  }

  if (!*(v5 + 200))
  {
    goto LABEL_65;
  }

  v12 = ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 200), v8, v9, v10);
  paddr = ashp::devmem_mapping::get_paddr(*v12);
  if (paddr == -1)
  {
LABEL_66:
    ashp::detail::control_flow::log_guard_else_failure("memregion_controller.cpp", 0x6C, "map", v15);
    v7 = (v7 + 6);
    goto LABEL_63;
  }

  ashp::optional<unsigned long long,ashp::optional_sentinel<18446744073709551615ull,false>>::value(&paddr, v13, v14, v15);
  v20 = *(v5 + 208);
  v21 = (paddr + v20);
  if (__CFADD__(paddr, v20))
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0x6E, "map", v19);
    _os_crash();
    __break(1u);
LABEL_68:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x9A, "map_region", v52);
    _os_crash();
    __break(1u);
    goto LABEL_69;
  }

  v22 = (v5 + 216);
  if (*(v5 + 216))
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 216), v16, v17, v18);
    if (ashp::boxed::data::length(*v22, v23, v24, v25) >> 32)
    {
      ashp::detail::control_flow::log_guard_else_failure("memregion_controller.cpp", 0x70, "map", v18);
      v7 = 3758097090;
      goto LABEL_63;
    }

    v26 = *(v5 + 212);
    v27 = *(v5 + 196);
    v28 = *(v5 + 194);
    if (*(v5 + 216))
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 216), v16, v17, v18);
      v32 = ashp::boxed::data::bytes(*v22, v29, v30, v31);
      if (*v22)
      {
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 216), v16, v17, v18);
        v68 = ashp::boxed::data::length(*v22, v33, v34, v35);
        goto LABEL_27;
      }
    }

    else
    {
      v32 = 0;
    }

    v68 = 0;
  }

  else
  {
    v32 = 0;
    v68 = 0;
    v26 = *(v5 + 212);
    v27 = *(v5 + 196);
    v28 = *(v5 + 194);
  }

LABEL_27:
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 152), v16, v17, v18);
  v39 = *(v5 + 152);
  if (v39)
  {
    v39 = CFStringGetCStringPtr(v39, 0x8000100u);
    if (v39)
    {
      v40 = v39;
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

  v41 = ashp::detail::logging::get_log_level(v39);
  if (v41 >= 4)
  {
    v41 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v41)
    {
      v42 = *(v5 + 160);
      *buf = 136447490;
      *&v71 = "memregion_controller.cpp";
      WORD4(v71) = 1024;
      *(&v71 + 10) = 121;
      HIWORD(v71) = 2082;
      v72 = "map";
      v73 = 1024;
      *v74 = v26;
      *&v74[4] = 2080;
      *&v74[6] = v40;
      v75 = 1024;
      v76 = v42;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] mapping region of size %u for %s[%u]", buf, 0x32u);
    }
  }

  if (ashp::detail::logging::get_log_level(v41))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] mapping region of size %u for %s[%u]", "memregion_controller.cpp", 121, "map", v26, v40, *(v5 + 160));
  }

  v43 = v28;
  v44 = v21;
  os_unfair_lock_unlock((v5 + 16));
  v45 = *(v5 + 24);
  v21 = 4880;
  ashp::optional<ashp::interrupt,void>::value(v45 + 4880, v46, v47, v48);
  os_unfair_lock_lock((v45 + 4880));
  if (*(v5 + 280) != v5)
  {
    goto LABEL_68;
  }

  if (*(v5 + 312))
  {
LABEL_69:
    v7 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x9B, "map_region", v52);
    _os_crash();
    __break(1u);
    goto LABEL_70;
  }

  if (!*(v5 + 320))
  {
    if (v68 >= 0xFFFFFFE8)
    {
      v67 = 158;
    }

    else
    {
      v54 = *(v45 + 4888);
      ashp::optional<ashp::acipc::messenger,void>::value(&v54[1236], v49, v50, v51);
      if (v68 + 24 <= ashp::acipc::messenger::get_max_message_length(v54 + 1236))
      {
        *(v5 + 317) = 1;
        *(v5 + 312) = 1;
        ashp::acipc::memregion_controller::set_device_region_status(v5, 1);
        v56 = ashp::detail::logging::get_log_level(v55);
        if (v56 >= 4)
        {
          v56 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v56)
          {
            v57 = *(v5 + 376);
            *buf = 136446978;
            *&v71 = "memregion_manager.cpp";
            WORD4(v71) = 1024;
            *(&v71 + 10) = 164;
            HIWORD(v71) = 2082;
            v72 = "map_region";
            v73 = 1024;
            *v74 = v57;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] region id %hu sending memory map message", buf, 0x22u);
          }
        }

        if (ashp::detail::logging::get_log_level(v56))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] region id %hu sending memory map message", "memregion_manager.cpp", 164, "map_region", *(v5 + 376));
        }

        os_unfair_lock_assert_owner((v45 + 4880));
        if (*(v45 + 4896) == 1)
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x109, "send_memory_map_message", v61);
          _os_crash();
          __break(1u);
        }

        else if (*(v5 + 312) == 1)
        {
          if (v43 < 8)
          {
            strcpy(buf, "\b");
            *&buf[2] = *(v5 + 376);
            LODWORD(v71) = v26;
            *(&v71 + 4) = v44;
            HIDWORD(v71) = v27;
            LODWORD(v72) = v43;
            v62 = *(v45 + 4888);
            ashp::optional<ashp::acipc::messenger,void>::value(v62 + 4944, v58, v59, v60);
            ashp::acipc::messenger::send_message(v62 + 4944, buf, 24, v32, v68, v45 + 4880, v5 + 280, ashp::acipc::memregion_manager::memory_map_message_completed);
            ashp::acipc::memregion_manager::recompute_unmapped_region_availability((v45 + 4880));
            v7 = 0;
            v53 = 1;
            goto LABEL_56;
          }

LABEL_77:
          v7 = "BUG in Airship: ";
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x120, "send_memory_map_message", v61);
          _os_crash();
          __break(1u);
          goto LABEL_78;
        }

        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x10A, "send_memory_map_message", v61);
        _os_crash();
        __break(1u);
        goto LABEL_77;
      }

      v67 = 160;
    }

    ashp::detail::control_flow::log_guard_else_failure("memregion_manager.cpp", v67, "map_region", v51);
    v53 = 0;
    v7 = 3758097090;
    goto LABEL_56;
  }

  v53 = 0;
LABEL_56:
  os_unfair_lock_unlock((v45 + 4880));
  os_unfair_lock_lock((v5 + 16));
  if (v53)
  {
    v64 = ashp::detail::logging::get_log_level(v63);
    if (v64 >= 4)
    {
      v64 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v64)
      {
        *buf = 136446722;
        *&v71 = "memregion_controller.cpp";
        WORD4(v71) = 1024;
        *(&v71 + 10) = 127;
        HIWORD(v71) = 2082;
        v72 = "map";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] map successful", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v64))
    {
      if (airship_platform_get_global_logger::once == -1)
      {
LABEL_62:
        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] map successful", "memregion_controller.cpp", 127, "map");
        goto LABEL_63;
      }

LABEL_78:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      goto LABEL_62;
    }
  }

LABEL_63:
  os_unfair_lock_unlock((v5 + 16));
  os_unfair_lock_unlock((v5 + 144));
  os_unfair_lock_unlock(this + 16);
  v65 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_23ECE6AC0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3 + 1220);
  os_unfair_lock_unlock(v2 + 4);
  os_unfair_lock_unlock(v2 + 36);
  os_unfair_lock_unlock(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::direct_memregion::create_state_monitor(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v2, v3, v4);
  v5 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v5 + 16));
  if (*(v5 + 32) != 1)
  {
    v7 = *(v5 + 24);
    os_unfair_lock_assert_owner((v5 + 16));
    ashp::monitor::create(&v20, v7, (v5 + 232));
  }

  ashp::detail::control_flow::log_guard_else_failure("memregion_controller.cpp", 0x5B, "create_state_monitor", v6);
  v20 = 0;
  os_unfair_lock_unlock((v5 + 16));
  v21 = 0;
  v10 = ashp::operator==<int,0>(&v20, &v21, v8, v9);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v21, v11, v12, v13);
  if (!v10)
  {
    v17 = *&this[2]._os_unfair_lock_opaque;
    v19 = v20;
    v20 = 0;
    operator new();
  }

  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v20, v14, v15, v16);
  os_unfair_lock_unlock(this + 16);
  return 0;
}

void sub_23ECE6CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va2, a2, a3, a4);
  MEMORY[0x23EF204E0](v6, 0x10E1C40A7CABF83);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va, v8, v9, v10);
  ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(va1, v11, v12, v13);
  os_unfair_lock_unlock(v5 + 16);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::direct_memregion::get_state(os_unfair_lock_s *this, char *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&this[18]._os_unfair_lock_opaque, v5, v6, v7);
  v8 = *&this[18]._os_unfair_lock_opaque;
  os_unfair_lock_lock((v8 + 16));
  if ((*(v8 + 224) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0x4D, "get_state", v9);
    _os_crash();
    __break(1u);
    goto LABEL_29;
  }

  if (*(v8 + 32) == 1)
  {
    if (a2)
    {
      *a2 = 0;
    }

    v10 = 8;
    goto LABEL_27;
  }

  os_unfair_lock_assert_owner((v8 + 16));
  v11 = ashp::acipc::memregion_controller::compute_state(v8);
  LODWORD(v15) = v11;
  if ((v11 - 4) < 4)
  {
    if (*(v8 + 396))
    {
      v16 = *(v8 + 392);
      if (v16 <= 3)
      {
        LODWORD(v17) = dword_23ED061A0[v16];
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_29:
    a2 = "optional.hpp";
    v15 = "value";
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF7, "value", v14);
    v17 = "BUG in Airship: bad optional access";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF7, "value", v23);
    _os_crash();
    __break(1u);
LABEL_30:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_23;
  }

  if (!v11)
  {
    LODWORD(v17) = *(v8 + 388) & 3;
    goto LABEL_13;
  }

LABEL_12:
  LODWORD(v17) = 0;
LABEL_13:
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v8 + 152), v12, v13, v14);
  CStringPtr = *(v8 + 152);
  if (CStringPtr)
  {
    CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
    if (CStringPtr)
    {
      v2 = CStringPtr;
    }

    else
    {
      v2 = "???";
    }
  }

  else
  {
    v2 = "(nil)";
  }

  log_level = ashp::detail::logging::get_log_level(CStringPtr);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v20 = *(v8 + 160);
      *buf = 136447746;
      v25 = "memregion_controller.cpp";
      v26 = 1024;
      v27 = 362;
      v28 = 2082;
      v29 = "compute_state_detail";
      v30 = 2080;
      v31 = v2;
      v32 = 1024;
      v33 = v20;
      v34 = 1024;
      v35 = v15;
      v36 = 1024;
      v37 = v17;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] %s[%u] state %u, detail 0x%u", buf, 0x38u);
    }
  }

  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_24;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_30;
  }

LABEL_23:
  ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] %s[%u] state %u, detail 0x%u", "memregion_controller.cpp", 362, "compute_state_detail", v2, *(v8 + 160), v15, v17);
LABEL_24:
  if (a2)
  {
    *a2 = v17;
  }

  v10 = ashp::acipc::memregion_controller::compute_state(v8);
LABEL_27:
  os_unfair_lock_unlock((v8 + 16));
  os_unfair_lock_unlock(this + 16);
  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t ashp::acipc::direct_memregion::activate(ashp::acipc::direct_memregion *this)
{
  v124 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 16);
  if (*(this + 104) == 1)
  {
    v5 = "activate";
    ashp::detail::control_flow::log_guard_else_failure("direct_memregion.cpp", 0x3D, "activate", v4);
    v6 = "BUG in client of Airship: attempted to activate already-active memregion";
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to activate already-active memregion", "direct_memregion.cpp", 0x3D, "activate", v101);
    _os_crash();
    __break(1u);
    goto LABEL_48;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 9, v2, v3, v4);
  v5 = *(this + 9);
  v6 = &v109;
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::refcounted_ptr(&v109, *(this + 10), v7, v8);
  v9 = *(this + 12);
  v110 = *(this + 11);
  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v111, v9, v10, v11);
  os_unfair_lock_lock((v5 + 16));
  if (*(v5 + 224) == 1)
  {
LABEL_48:
    v19 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0x29, "set_client_overrides", v15);
    _os_crash();
    __break(1u);
LABEL_49:
    ashp::detail::control_flow::log_guard_else_failure("memregion_controller.cpp", 0x2C, "set_client_overrides", v18);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 152), v102, v103, v104);
    v105 = *(v5 + 152);
    if (v105)
    {
      CStringPtr = CFStringGetCStringPtr(v105, 0x8000100u);
      v107 = "???";
      if (CStringPtr)
      {
        v107 = CStringPtr;
      }

      goto LABEL_55;
    }

    goto LABEL_54;
  }

  LOBYTE(v19) = ashp::acipc::memregion_controller::validate_client_overrides(&v109, v12, v13, v14);
  if ((v19 & 1) == 0)
  {
    goto LABEL_49;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v5 + 152), v16, v17, v18);
  v20 = *(v5 + 152);
  if (v20)
  {
    v20 = CFStringGetCStringPtr(v20, 0x8000100u);
    if (v20)
    {
      v21 = v20;
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

  log_level = ashp::detail::logging::get_log_level(v20);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v23 = *(v5 + 160);
      *buf = 136447234;
      *&buf[4] = "memregion_controller.cpp";
      v115 = 1024;
      v116 = 45;
      v117 = 2082;
      *v118 = "set_client_overrides";
      *&v118[8] = 2080;
      *&v118[10] = v21;
      *&v118[18] = 1024;
      LODWORD(v119) = v23;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting client overrides for %s[%u]", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting client overrides for %s[%u]", "memregion_controller.cpp", 45, "set_client_overrides", v21, *(v5 + 160));
  }

  v27 = v109;
  v109 = 0;
  v28 = *(v5 + 200);
  *(v5 + 200) = v27;
  *buf = v28;
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(buf, v24, v25, v26);
  v29 = v111;
  v111 = 0;
  v30 = *(v5 + 216);
  *(v5 + 208) = v110;
  *(v5 + 216) = v29;
  *v121 = v30;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v121, v31, v32, v33);
  while (1)
  {
    os_unfair_lock_unlock((v5 + 16));
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v6 + 2, v34, v35, v36);
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(&v109, v37, v38, v39);
    v5 = 3758097090;
    if ((v19 & 1) == 0)
    {
      break;
    }

    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 9, v40, v41, v42);
    v6 = *(this + 9);
    os_unfair_lock_lock(v6 + 36);
    os_unfair_lock_lock(v6 + 4);
    if (*(v6 + 224) != 1)
    {
      if ((v6[4] & 1) == 0)
      {
        if (!v6[25])
        {
          ashp::detail::control_flow::log_guard_else_failure("memregion_controller.cpp", 0x3A, "activate", v45);
          v47 = 0;
          goto LABEL_44;
        }

        if ((ashp::acipc::memregion_controller::validate_client_overrides((v6 + 25), v43, v44, v45) & 1) == 0)
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0x3B, "activate", v51);
          _os_crash();
          __break(1u);
          goto LABEL_58;
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v6 + 19, v48, v49, v50);
        v52 = v6[19];
        if (v52)
        {
          v52 = CFStringGetCStringPtr(v52, 0x8000100u);
          if (v52)
          {
            v53 = v52;
          }

          else
          {
            v53 = "???";
          }
        }

        else
        {
          v53 = "(nil)";
        }

        v54 = ashp::detail::logging::get_log_level(v52);
        if (v54 >= 4)
        {
          v54 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v54)
          {
            v55 = *(v6 + 40);
            *buf = 136447234;
            *&buf[4] = "memregion_controller.cpp";
            v115 = 1024;
            v116 = 60;
            v117 = 2082;
            *v118 = "activate";
            *&v118[8] = 2080;
            *&v118[10] = v53;
            *&v118[18] = 1024;
            LODWORD(v119) = v55;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] activating %s[%u]", buf, 0x2Cu);
          }
        }

        v56 = 0x27E384000uLL;
        v57 = 0x27E384000uLL;
        if (!ashp::detail::logging::get_log_level(v54))
        {
          goto LABEL_34;
        }

        if (airship_platform_get_global_logger::once != -1)
        {
          goto LABEL_60;
        }

        while (1)
        {
          ashp_log_helper::log(*(v57 + 2648), "[%s:%d:%s] activating %s[%u]", "memregion_controller.cpp", 60, "activate", v53, *(v6 + 40));
LABEL_34:
          *(v6 + 224) = 1;
          os_unfair_lock_unlock(v6 + 4);
          v5 = v6[3];
          ashp::optional<ashp::interrupt,void>::value(v5 + 4880, v58, v59, v60);
          ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v112, v6[19], v61, v62);
          v113 = *(v6 + 40);
          BYTE2(v116) = 0;
          ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(buf, v63, v64, v65);
          v66 = v112;
          v112 = 0;
          *buf = v66;
          *&buf[8] = v113;
          BYTE2(v116) = 1;
          ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::storage(&v118[4], (v6 + 21), v67, v68);
          v120 = *(v6 + 96);
          os_unfair_lock_lock((v5 + 4880));
          if (v6[35])
          {
LABEL_58:
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_manager.cpp", 0x7D, "add_region", v71);
            _os_crash();
            __break(1u);
          }

          else
          {
            v6[35] = v6;
            *(v6 + 78) = 0;
            *(v6 + 158) = 0;
            *(v6 + 80) = 0;
            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v121, buf, v69, v70);
            ashp::swap((v6 + 41), v121, v72, v73);
            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v121, v74, v75, v76);
            v77 = v119;
            v78 = *&v118[4];
            *&v118[4] = 0uLL;
            v119 = 0;
            v79 = *(v6 + 22);
            *(v6 + 22) = v78;
            *v121 = v79;
            v80 = v6[46];
            v6[46] = v77;
            *&v121[16] = v80;
            ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(v121, v81, v82, v83, v84);
            *(v6 + 188) = v120;
            ashp::acipc::memregion_manager::recompute_region_availability((v5 + 4880), (v6 + 35));
            v86 = ashp::detail::logging::get_log_level(v85);
            if (v86 >= 4)
            {
              v86 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v86)
              {
                *v121 = 136446978;
                *&v121[4] = "memregion_manager.cpp";
                *&v121[12] = 1024;
                *&v121[14] = 133;
                *&v121[18] = 2082;
                *&v121[20] = "add_region";
                v122 = 1024;
                v123 = v120;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] region id %hu adding memregion_controller", v121, 0x22u);
              }
            }

            if (ashp::detail::logging::get_log_level(v86))
            {
              if (*(v56 + 2728) != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(*(v57 + 2648), "[%s:%d:%s] region id %hu adding memregion_controller", "memregion_manager.cpp", 133, "add_region", v120);
            }

            if (!v6[38])
            {
              v88 = *(v5 + 4920);
              v6[36] = *v88;
              v6[37] = v88;
              *v88 = (v6 + 35);
              *(v5 + 4920) = v6 + 36;
              v6[38] = v5 + 4912;
              os_unfair_lock_unlock((v5 + 4880));
              ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(&v118[4], v89, v90, v91, v92);
              ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(buf, v93, v94, v95);
              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v112, v96, v97, v98);
              os_unfair_lock_lock(v6 + 4);
              v5 = 0;
              v47 = 1;
              goto LABEL_44;
            }
          }

          v53 = "intrusive_list.hpp";
          v57 = v5;
          ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xBA, "insert_before", v87);
          v56 = v6;
          ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to insert element already in list", "intrusive_list.hpp", 0xBA, "insert_before", v108);
          _os_crash();
          __break(1u);
LABEL_60:
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }
      }

      v47 = 0;
      v5 = 3758097088;
LABEL_44:
      os_unfair_lock_unlock(v6 + 4);
      os_unfair_lock_unlock(v6 + 36);
      if (v47)
      {
        v5 = 0;
        *(this + 104) = 1;
      }

      break;
    }

    v19 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "memregion_controller.cpp", 0x37, "activate", v46);
    _os_crash();
    __break(1u);
LABEL_54:
    v107 = "(nil)";
LABEL_55:
    *buf = v107;
    ashp::acipc::memregion_controller::set_client_overrides(ashp::acipc::memregion_controller::client_overrides)::$_0::operator()<char const*,unsigned int>(buf, (v5 + 160));
  }

  os_unfair_lock_unlock(this + 16);
  v99 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_23ECE78BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  os_unfair_lock_unlock(v7 + 4);
  ashp::acipc::memregion_controller::client_overrides::~client_overrides(va, v9, v10, v11);
  os_unfair_lock_unlock(v6 + 16);
  _Unwind_Resume(a1);
}

uint64_t *ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::refcounted_ptr(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  if (a2)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::retain(*a1, v5, v6, v7);
  }

  return a1;
}

void ashp::acipc::memregion_controller::client_overrides::~client_overrides(ashp::acipc::memregion_controller::client_overrides *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 2, a2, a3, a4);
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(this, v5, v6, v7);
}

{
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 2, a2, a3, a4);
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(this, v5, v6, v7);
}

void ashp::acipc::direct_memregion::set_map_clientdata(os_unfair_lock_s *this, ashp::boxed::mutable_data *a2, unsigned int a3)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[26]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_memregion.cpp", 0x2F, "set_map_clientdata", v8);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active memregion", "direct_memregion.cpp", 0x2F, "set_map_clientdata", v24);
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

    v17 = *&this[24]._os_unfair_lock_opaque;
    *&this[24]._os_unfair_lock_opaque = a2;
    v26 = v17;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v26, v6, v7, v8);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v25, v18, v19, v20);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v28, v21, v22, v23);
    os_unfair_lock_unlock(this + 16);
  }
}

void sub_23ECE7B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
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

void ashp::acipc::direct_memregion::set_backing_memory(uint64_t a1, uint64_t a2, int a3, int a4)
{
  os_unfair_lock_lock((a1 + 64));
  if (*(a1 + 104) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_memregion.cpp", 0x25, "set_backing_memory", v10);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active memregion", "direct_memregion.cpp", 0x25, "set_backing_memory", v17);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a2 + 64), v8, v9, v10);
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::refcounted_ptr(&v18, *(a2 + 64), v11, v12);
    v13 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v13;
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(&v18, v14, v15, v16);
    *(a1 + 88) = a3;
    *(a1 + 92) = a4;
    os_unfair_lock_unlock((a1 + 64));
  }
}

void ashp::acipc::direct_memregion::destroy(ashp::acipc::direct_memregion *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    *this = &unk_28515D078;
    v6 = (this + 72);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 9, a2, a3, a4);
    ashp::driver_object::terminate(*v6);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 12, v7, v8, v9);
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(this + 10, v10, v11, v12);
    ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(v6, v13, v14, v15);
    ashp::direct_client_object::~direct_client_object(this + 1, v16, v17, v18, v19);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

void ___ZN4ashp5acipc9messengerC2EPNS0_12acipc_driverEP16dispatch_queue_s_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  if (v4)
  {
    os_unfair_lock_lock(*(v3 + 8));
    if ((*(v4 + 192) & 1) == 0 && *(v4 + 194) == 1)
    {
      log_level = ashp::detail::logging::get_log_level(v5);
      if (log_level >= 4)
      {
        log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (log_level)
        {
          *buf = 136446722;
          v11 = "messenger.cpp";
          v12 = 1024;
          v13 = 308;
          v14 = 2082;
          v15 = "check_async";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] processing completions", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(log_level))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] processing completions", "messenger.cpp", 308, "check_async");
      }

      ashp::acipc::messenger::process_completions(v4);
      os_unfair_lock_lock((v4 + 4));
      v8 = ashp::detail::logging::get_log_level(v7);
      if (v8 >= 4)
      {
        v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v8)
        {
          *buf = 136446722;
          v11 = "messenger.cpp";
          v12 = 1024;
          v13 = 311;
          v14 = 2082;
          v15 = "check_async";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sending any overflow messages", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v8))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sending any overflow messages", "messenger.cpp", 311, "check_async");
      }

      ashp::acipc::messenger::send_overflow_messages(v4);
      os_unfair_lock_unlock((v4 + 4));
    }

    os_unfair_lock_unlock(v4);
  }

  v9 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock(v2);
}

void sub_23ECE7F94(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2);
  os_unfair_lock_unlock(v1);
  _Unwind_Resume(a1);
}

void ___ZN4ashp5acipc9messengerC2EPNS0_12acipc_driverEP16dispatch_queue_s_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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

  JUMPOUT(0x23EF204E0);
}

void ashp::detail::dynamic_array::storage<ashp::acipc::messenger::mcr_event_handler>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
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
      v6 += 16;
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

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::messenger::overflow_record,ashp::intrusive_list_link<ashp::acipc::messenger::overflow_record>,&ashp::acipc::messenger::overflow_record::link>::~intrusive_list_impl(void **a1, uint64_t a2, uint64_t a3, const char *a4)
{
  for (i = *a1; *a1; i = *a1)
  {
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::driver_object,ashp::intrusive_list_link<ashp::driver_object>,&ashp::driver_object::_manager_link>::remove(a1, i, a3, a4);
  }

  return ashp::intrusive_list_link<ashp::acipc::messenger::overflow_record>::~intrusive_list_link(a1, i, a3, a4);
}

uint64_t ashp::intrusive_list_link<ashp::acipc::messenger::overflow_record>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
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

uint64_t ashp::acipc::messenger::process_completions(const os_unfair_lock *this)
{
  v1 = this;
  v102 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  v91 = (v1 + 200);
  if (!*(v1 + 25))
  {
    goto LABEL_120;
  }

  v4 = (v1 + 208);
  if (*(v1 + 26))
  {
    log_level = ashp::detail::logging::get_log_level(v2);
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        v95 = "messenger.cpp";
        v96 = 1024;
        v97 = 323;
        v98 = 2082;
        v99 = "process_completions";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] syncing mcr head index update", buf, 0x1Cu);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_9;
    }

    if (airship_platform_get_global_logger::once != -1)
    {
      goto LABEL_124;
    }

    while (1)
    {
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] syncing mcr head index update", "messenger.cpp", 323, "process_completions");
LABEL_9:
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v4, v6, v7, v8);
      ashp::acipc::cr_controller::sync(*v4, 1);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v4, v9, v10, v11);
      mirror_count = ashp::acipc::cr_controller::get_mirror_count(*v4);
      if (mirror_count)
      {
        for (i = 0; i < mirror_count; ++i)
        {
          ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v4, v12, v13, v14);
          mirror_element = ashp::acipc::cr_controller::get_mirror_element(*v4, i, buf, 0, 0, 0, 0);
          if (!ashp::detail::control_flow::check_err_with_debug(mirror_element, "messenger.cpp", 0x14A, "process_completions", v17))
          {
            goto LABEL_118;
          }

          if (*buf == 1 && (v95 & 8) != 0)
          {
            v19 = *(v1 + 30);
            if (v19)
            {
              v20 = BYTE1(v95);
              v21 = 16 * v19;
              v22 = (*(v1 + 32) + 8);
              do
              {
                if (*(v22 - 8) == v20)
                {
                  if (!*v22)
                  {
                    break;
                  }

                  v23 = *(v1 + 33);
                  if (v23 >> 32)
                  {
                    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x152, "process_completions", v18);
                    _os_crash();
                    __break(1u);
LABEL_111:
                    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x153, "process_completions", v18);
                    _os_crash();
                    __break(1u);
                    goto LABEL_112;
                  }

                  v24 = *(v1 + 36);
                  if (v24 >> 32)
                  {
                    goto LABEL_111;
                  }

                  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v4, v12, v13, v14);
                  v25 = ashp::acipc::cr_controller::get_mirror_element(*(v1 + 26), i, 0, *(v1 + 35), v23, *(v1 + 38), v24);
                  if (!ashp::detail::control_flow::check_err_with_debug(v25, "messenger.cpp", 0x157, "process_completions", v26))
                  {
                    goto LABEL_113;
                  }

                  if (!*v22)
                  {
                    goto LABEL_115;
                  }

                  (*(*v22 + 16))(*v22, &v95, *(v1 + 35), v23, *(v1 + 38), v24);
                }

                v22 += 2;
                v21 -= 16;
              }

              while (v21);
            }
          }
        }
      }

      else
      {
        mirror_count = 0;
      }

      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v4, v12, v13, v14);
      v29 = ashp::acipc::cr_controller::consume_mirror_elements(*v4, mirror_count);
      v2 = ashp::detail::control_flow::check_err_with_debug(v29, "messenger.cpp", 0x15C, "process_completions", v30);
      if (v2)
      {
        break;
      }

      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x15C, "process_completions", v31);
      _os_crash();
      __break(1u);
LABEL_123:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x195, "process_completions", v86);
      _os_crash();
      __break(1u);
LABEL_124:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }
  }

  v32 = ashp::detail::logging::get_log_level(v2);
  if (v32 >= 4)
  {
    v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v32)
    {
      *buf = 136446722;
      v95 = "messenger.cpp";
      v96 = 1024;
      v97 = 350;
      v98 = 2082;
      v99 = "process_completions";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] syncing mtr tail index update and fetching completions", buf, 0x1Cu);
    }
  }

  if (!ashp::detail::logging::get_log_level(v32))
  {
    goto LABEL_34;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_121;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] syncing mtr tail index update and fetching completions", "messenger.cpp", 350, "process_completions");
LABEL_34:
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v91, v33, v34, v35);
    ashp::acipc::tr_controller::sync(*v91, 6);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v91, v36, v37, v38);
    result = ashp::acipc::tr_controller::get_completed_transfer_count(*v91);
    v90 = result;
    if (!result)
    {
      break;
    }

    v40 = ashp::detail::logging::get_log_level(result);
    if (v40 >= 4)
    {
      v40 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v40)
      {
        *buf = 136446978;
        v95 = "messenger.cpp";
        v96 = 1024;
        v97 = 354;
        v98 = 2082;
        v99 = "process_completions";
        v100 = 1024;
        v101 = v90;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] completion count %hu", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v40))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] completion count %hu", "messenger.cpp", 354, "process_completions", v90);
    }

    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v91, v41, v42, v43);
    *buf = ashp::acipc::tr_controller::get_first_completed_tag(*(v1 + 25));
    v47 = ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(buf, v44, v45, v46);
    LODWORD(v4) = 0;
    v48 = MEMORY[0x277D86220];
    v49 = *buf;
    while (1)
    {
      v50 = v49;
      if ((v1[232] & 1) == 0)
      {
        os_unfair_lock_lock(v1 + 1);
        os_unfair_lock_assert_owner(v1 + 1);
        if (v1[232] == 1)
        {
          goto LABEL_119;
        }

        v50 = *(v1 + 119);
        ashp::ring_index_pair<unsigned short>::advance_tail_index(v1 + 117, 1u, v51, v52);
        os_unfair_lock_unlock(v1 + 1);
      }

      v54 = ashp::detail::logging::get_log_level(v47);
      if (v54 >= 4)
      {
        v54 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
        if (v54)
        {
          *buf = 136446978;
          v95 = "messenger.cpp";
          v96 = 1024;
          v97 = 368;
          v98 = 2082;
          v99 = "process_completions";
          v100 = 1024;
          v101 = v50;
          _os_log_impl(&dword_23EC8B000, v48, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] index %hu", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v54))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] index %hu", "messenger.cpp", 368, "process_completions", v50);
      }

      if (*(v1 + 52) <= v50)
      {
        break;
      }

      v58 = ashp::dynamic_array<ashp::acipc::messenger::message>::operator[](v1 + 18, v50, v55, v56);
      v60 = v58;
      if ((*v58 & 1) == 0)
      {
        goto LABEL_114;
      }

      if (v58[16] != v49)
      {
        goto LABEL_116;
      }

      v61 = ashp::detail::logging::get_log_level(v58);
      if (v61 >= 4)
      {
        v61 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
        if (v61)
        {
          *buf = 136446978;
          v95 = "messenger.cpp";
          v96 = 1024;
          v97 = 375;
          v98 = 2082;
          v99 = "process_completions";
          v100 = 1024;
          v101 = v49;
          _os_log_impl(&dword_23EC8B000, v48, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] getting transfer completion for tag %hu", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v61))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] getting transfer completion for tag %hu", "messenger.cpp", 375, "process_completions", v49);
      }

      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v91, v62, v63, v64);
      transfer_completion = ashp::acipc::tr_controller::get_transfer_completion(*v91, v49, v92, 0, 0, 0, 0);
      v47 = ashp::detail::control_flow::check_err_with_debug(transfer_completion, "messenger.cpp", 0x178, "process_completions", v66);
      if ((v47 & 1) == 0)
      {
        goto LABEL_117;
      }

      if ((v92[0] - 1) >= 3)
      {
        if (v92[0] == 4)
        {
          v71 = ashp::detail::logging::get_log_level(v47);
          if (v71 >= 4)
          {
            v71 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
            if (v71)
            {
              *buf = 136446722;
              v95 = "messenger.cpp";
              v96 = 1024;
              v97 = 391;
              v98 = 2082;
              v99 = "process_completions";
              _os_log_impl(&dword_23EC8B000, v48, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] message canceled", buf, 0x1Cu);
            }
          }

          v47 = ashp::detail::logging::get_log_level(v71);
          if (v47)
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] message canceled", "messenger.cpp", 391, "process_completions");
          }

          v69 = 2;
        }

        else
        {
          if (!v92[0])
          {
            v70 = ashp::detail::logging::get_log_level(v47);
            if (v70 >= 4)
            {
              v70 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
              if (v70)
              {
                *buf = 136446722;
                v95 = "messenger.cpp";
                v96 = 1024;
                v97 = 381;
                v98 = 2082;
                v99 = "process_completions";
                _os_log_impl(&dword_23EC8B000, v48, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] message success", buf, 0x1Cu);
              }
            }

            v47 = ashp::detail::logging::get_log_level(v70);
            if (v47)
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] message success", "messenger.cpp", 381, "process_completions");
            }
          }

          v69 = 0;
        }
      }

      else
      {
        v68 = ashp::detail::logging::get_log_level(v47);
        if (v68 >= 2)
        {
          v68 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
          if (v68)
          {
            *buf = 136446722;
            v95 = "messenger.cpp";
            v96 = 1024;
            v97 = 387;
            v98 = 2082;
            v99 = "process_completions";
            _os_log_impl(&dword_23EC8B000, v48, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] message failure", buf, 0x1Cu);
          }
        }

        v47 = ashp::detail::logging::get_log_level(v68);
        if (v47)
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] message failure", "messenger.cpp", 387, "process_completions");
        }

        v69 = 1;
      }

      if (*(v60 + 3))
      {
        v72 = ashp::detail::logging::get_log_level(v47);
        if (v72 >= 4)
        {
          v72 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
          if (v72)
          {
            *buf = 136446722;
            v95 = "messenger.cpp";
            v96 = 1024;
            v97 = 397;
            v98 = 2082;
            v99 = "process_completions";
            _os_log_impl(&dword_23EC8B000, v48, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] invoking action", buf, 0x1Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v72))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] invoking action", "messenger.cpp", 397, "process_completions");
        }

        v47 = (*(v60 + 3))(*(v60 + 1), *(v60 + 2), v69);
      }

      *v60 = 0;
      *(v60 + 2) = 0;
      *(v60 + 3) = 0;
      *(v60 + 1) = 0;
      v4 = (v4 + 1);
      v60[16] = -1;
      v49 = v93;
      if (v90 <= v4)
      {
        v73 = ashp::detail::logging::get_log_level(v47);
        if (v73 >= 4)
        {
          v73 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v73)
          {
            *buf = 136446722;
            v95 = "messenger.cpp";
            v96 = 1024;
            v97 = 404;
            v98 = 2082;
            v99 = "process_completions";
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] consuming transfers", buf, 0x1Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v73))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] consuming transfers", "messenger.cpp", 404, "process_completions");
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v91, v74, v75, v76);
        v1 = *v91;
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v91, v77, v78, v79);
        first_completed_tag = ashp::acipc::tr_controller::get_first_completed_tag(*v91);
        *buf = first_completed_tag;
        ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(buf, v81, v82, v83);
        v84 = ashp::acipc::tr_controller::consume_transfers(v1, first_completed_tag, v90);
        result = ashp::detail::control_flow::check_err_with_debug(v84, "messenger.cpp", 0x195, "process_completions", v85);
        if ((result & 1) == 0)
        {
          goto LABEL_123;
        }

        goto LABEL_109;
      }
    }

LABEL_112:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x171, "process_completions", v57);
    _os_crash();
    __break(1u);
LABEL_113:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x157, "process_completions", v28);
    _os_crash();
    __break(1u);
LABEL_114:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x173, "process_completions", v59);
    _os_crash();
    __break(1u);
LABEL_115:
    v1 = "value";
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0x7D, "value", v27);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0x7D, "value", v88);
    _os_crash();
    __break(1u);
LABEL_116:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x174, "process_completions", v59);
    _os_crash();
    __break(1u);
LABEL_117:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x178, "process_completions", v67);
    _os_crash();
    __break(1u);
LABEL_118:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x14A, "process_completions", v18);
    _os_crash();
    __break(1u);
LABEL_119:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x1E8, "get_and_advance_inorder_idx_for_completion", v53);
    _os_crash();
    __break(1u);
LABEL_120:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x140, "process_completions", v3);
    _os_crash();
    __break(1u);
LABEL_121:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

LABEL_109:
  v87 = *MEMORY[0x277D85DE8];
  return result;
}

void ashp::acipc::messenger::send_overflow_messages(const os_unfair_lock *this)
{
  v2 = this;
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  os_unfair_lock_assert_owner(v2 + 1);
  if (v2[192] == 1)
  {
    v2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x1BA, "send_overflow_messages", v6);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v2 + 25, v3, v4, v5);
  free_space = ashp::acipc::tr_controller::get_free_space(*(v2 + 25));
  v1 = free_space;
  log_level = ashp::detail::logging::get_log_level(free_space);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v20 = "messenger.cpp";
      v21 = 1024;
      v22 = 444;
      v23 = 2082;
      v24 = "send_overflow_messages";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sending overflow messages", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_7:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sending overflow messages", "messenger.cpp", 444, "send_overflow_messages");
      goto LABEL_8;
    }

LABEL_16:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_7;
  }

LABEL_8:
  v12 = (v2 + 168);
  v13 = *(v2 + 21);
  if (v13 && v1)
  {
    do
    {
      ashp::detail::intrusive_list::intrusive_list_impl<ashp::driver_object,ashp::intrusive_list_link<ashp::driver_object>,&ashp::driver_object::_manager_link>::remove((v2 + 168), v13, v10, v11);
      ashp::acipc::messenger::enqueue_message_in_mtr(v2, *(v13 + 32), *(v13 + 24), 0, 0, *v13, *(v13 + 8), *(v13 + 16));
      ashp::intrusive_list_link<ashp::acipc::messenger::overflow_record>::~intrusive_list_link(v13 + 40, v14, v15, v16);
      v17 = *(v13 + 32);
      if (v17)
      {
        free(v17);
        *(v13 + 32) = 0;
        *(v13 + 24) = 0;
      }

      MEMORY[0x23EF204E0](v13, 0x10A0C40D2B1F201);
      v13 = *v12;
      if (!*v12)
      {
        break;
      }

      --v1;
    }

    while (v1);
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v2 + 25, v9, v10, v11);
  ashp::acipc::tr_controller::sync(*(v2 + 25), 1);
  v18 = *MEMORY[0x277D85DE8];
}

BOOL ashp::acipc::messenger::enqueue_message_in_mtr(const os_unfair_lock *a1, const void *a2, unsigned int a3, const void *a4, int a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  LODWORD(v12) = a5;
  v15 = a1;
  v93 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(a1 + 1);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v15 + 25, v16, v17, v18);
  *buf = ashp::acipc::tr_controller::get_first_free_tag(*(v15 + 25));
  ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(buf, v19, v20, v21);
  v25 = *buf;
  LODWORD(v26) = *buf;
  if ((v15[232] & 1) == 0)
  {
    os_unfair_lock_assert_owner(v15 + 1);
    if (v15[232] == 1)
    {
      v15 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x1DE, "get_and_advance_inorder_idx_for_enqueue", v30);
      _os_crash();
      __break(1u);
      goto LABEL_58;
    }

    LODWORD(v26) = *(v15 + 118);
    ashp::ring_index_pair<unsigned short>::advance_head_index(v15 + 117, v27, v28, v29);
  }

  if (v26 >= *(v15 + 52))
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x102, "enqueue_message_in_mtr", v24);
    _os_crash();
    __break(1u);
    goto LABEL_50;
  }

  if (*ashp::dynamic_array<ashp::acipc::messenger::message>::operator[](v15 + 18, v26, v22, v23) == 1)
  {
LABEL_50:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x103, "enqueue_message_in_mtr", v33);
    _os_crash();
    __break(1u);
    goto LABEL_51;
  }

  v34 = ashp::dynamic_array<ashp::acipc::messenger::message>::operator[](v15 + 18, v26, v31, v32);
  *v34 = 1;
  *(v34 + 8) = a6;
  *(v34 + 16) = a7;
  *(v34 + 24) = a8;
  *(v34 + 32) = v25;
  log_level = ashp::detail::logging::get_log_level(v34);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v36 = *(v15 + 27);
      *buf = 136447234;
      v84 = "messenger.cpp";
      v86 = 268;
      v87 = 2082;
      v85 = 1024;
      v88 = "enqueue_message_in_mtr";
      v89 = 1024;
      v90 = v26;
      v91 = 1024;
      v92 = v36;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] index %hu, message length %u", buf, 0x28u);
    }
  }

  v37 = ashp::detail::logging::get_log_level(log_level);
  a6 = 0x27E384000uLL;
  a7 = 0x27E384000uLL;
  if (!v37)
  {
    goto LABEL_12;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    ashp_log_helper::log(*(a7 + 2648), "[%s:%d:%s] index %hu, message length %u", "messenger.cpp", 268, "enqueue_message_in_mtr", v26, *(v15 + 27));
LABEL_12:
    a8 = *(v15 + 27) * v26;
    if ((a8 & 0xFFFFFFFF00000000) != 0)
    {
LABEL_51:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x10D, "enqueue_message_in_mtr", v38);
      _os_crash();
      __break(1u);
LABEL_52:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x110, "enqueue_message_in_mtr", v41);
      _os_crash();
      __break(1u);
      goto LABEL_53;
    }

    v39 = ashp::detail::logging::get_log_level(v37);
    if (v39 >= 4)
    {
      v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v39)
      {
        *buf = 136447234;
        v84 = "messenger.cpp";
        v86 = 271;
        v87 = 2082;
        v85 = 1024;
        v88 = "enqueue_message_in_mtr";
        v89 = 1024;
        v90 = a3;
        v91 = 1024;
        v92 = v12;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] payload length %u, appendix length %u", buf, 0x28u);
      }
    }

    v40 = ashp::detail::logging::get_log_level(v39);
    if (v40)
    {
      if (*(a6 + 2728) != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(*(a7 + 2648), "[%s:%d:%s] payload length %u, appendix length %u", "messenger.cpp", 271, "enqueue_message_in_mtr", a3, v12);
    }

    v8 = a3 + v12;
    if (__CFADD__(a3, v12))
    {
      goto LABEL_52;
    }

    if (v8 <= *(v15 + 27))
    {
      break;
    }

LABEL_53:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x111, "enqueue_message_in_mtr", v41);
    _os_crash();
    __break(1u);
LABEL_54:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x11F, "enqueue_message_in_mtr", v41);
    _os_crash();
    __break(1u);
LABEL_55:
    v15 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x12C, "enqueue_message_in_mtr", v69);
    _os_crash();
    __break(1u);
LABEL_56:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  LODWORD(v26) = a8;
  if (a2)
  {
    v42 = ashp::detail::logging::get_log_level(v40);
    if (v42 >= 4)
    {
      v42 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v42)
      {
        *buf = 136446722;
        v84 = "messenger.cpp";
        v85 = 1024;
        v86 = 277;
        v87 = 2082;
        v88 = "enqueue_message_in_mtr";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] copying message payload", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v42))
    {
      if (*(a6 + 2728) != -1)
      {
LABEL_58:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(*(a7 + 2648), "[%s:%d:%s] copying message payload", "messenger.cpp", 277, "enqueue_message_in_mtr");
    }

    addr = ashp::mappable_buffer::get_addr((v15 + 112), v43, v44, v45);
    v40 = memcpy((addr + a8), a2, a3);
    LODWORD(v26) = a8 + a3;
  }

  if (a4)
  {
    v47 = ashp::detail::logging::get_log_level(v40);
    if (v47 >= 4)
    {
      v47 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v47)
      {
        *buf = 136446722;
        v84 = "messenger.cpp";
        v85 = 1024;
        v86 = 283;
        v87 = 2082;
        v88 = "enqueue_message_in_mtr";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] copying appendix", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v47))
    {
      if (*(a6 + 2728) != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(*(a7 + 2648), "[%s:%d:%s] copying appendix", "messenger.cpp", 283, "enqueue_message_in_mtr");
    }

    v51 = ashp::mappable_buffer::get_addr((v15 + 112), v48, v49, v50);
    v40 = memcpy((v51 + v26), a4, v12);
    LODWORD(v26) = v26 + v12;
  }

  if (v26 - a8 != v8)
  {
    goto LABEL_54;
  }

  v52 = ashp::detail::logging::get_log_level(v40);
  if (v52 >= 4)
  {
    v52 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v52)
    {
      *buf = 136446722;
      v84 = "messenger.cpp";
      v85 = 1024;
      v86 = 288;
      v87 = 2082;
      v88 = "enqueue_message_in_mtr";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] enqueuing message in mtr", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v52))
  {
    if (*(a6 + 2728) != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(*(a7 + 2648), "[%s:%d:%s] enqueuing message in mtr", "messenger.cpp", 288, "enqueue_message_in_mtr");
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v15 + 25, v53, v54, v55);
  v12 = *(v15 + 25);
  v73[0] = v25;
  v74 = 0;
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::refcounted_ptr(&v72, *(v15 + 17), v56, v57);
  v26 = v73;
  v75 = 0;
  v58 = v72;
  v72 = 0;
  v76 = v58;
  v77 = a8;
  v78 = v8;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v59 = ashp::acipc::tr_controller::enqueue_transfer(v12, v73);
  ashp::device_accessible_memory::release_obj(&v75, v60, v61, v62, v63);
  v76 = 0;
  ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(&v72, v64, v65, v66);
  result = ashp::detail::control_flow::check_err_with_debug(v59, "messenger.cpp", 0x12C, "enqueue_message_in_mtr", v67);
  if (!result)
  {
    goto LABEL_55;
  }

  v70 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23ECE9A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ashp::dynamic_array<ashp::acipc::messenger::message>::operator[](unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1 > a2)
  {
    return a1[2] + 40 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::messenger::~messenger(ashp::acipc::messenger *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(this + 192))
  {
    os_unfair_lock_lock(*(this + 3));
    v6 = *(this + 3);
    *(v6 + 8) = 0;
    os_unfair_lock_unlock(v6);
    *(this + 3) = 0;
    ashp::async_notifier::cancel(this + 8, v7, v8, v9);
    ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(this + 36);
    ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(this + 33);
    ashp::detail::dynamic_array::storage<ashp::acipc::messenger::mcr_event_handler>::~storage(this + 30, v10, v11, v12);
    ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(this + 28, v13, v14, v15);
    ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(this + 27, v16, v17, v18);
    ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(this + 26, v19, v20, v21);
    ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(this + 25, v22, v23, v24);
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::messenger::overflow_record,ashp::intrusive_list_link<ashp::acipc::messenger::overflow_record>,&ashp::acipc::messenger::overflow_record::link>::~intrusive_list_impl(this + 21, v25, v26, v27);
    ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(this + 18);
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(this + 17, v28, v29, v30);
    ashp::buffer_mapping::~buffer_mapping(this + 14, v31, v32, v33);
    ashp::async_notifier::~async_notifier((this + 32), v34, v35, v36);
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(this + 2, v37, v38, v39);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x26, "~messenger", a5);
    _os_crash();
    __break(1u);
  }
}

unint64_t *ashp::dynamic_array<char>::dynamic_array<int,0>(unint64_t *a1, size_t a2, uint64_t a3, const char *a4)
{
  v4 = a2;
  *a1 = 0;
  result = ashp::detail::dynamic_array::buffer<char>::buffer(a1 + 1, a2, a3, a4);
  if (!v4)
  {
    return a1;
  }

  v8 = *a1;
  while (v8 < *result)
  {
    v9 = a1[2];
    if (!v9)
    {
      goto LABEL_8;
    }

    *(v9 + v8) = 0;
    v8 = *a1 + 1;
    *a1 = v8;
    if (!--v4)
    {
      return a1;
    }
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v7);
  result = _os_crash();
LABEL_8:
  __break(1u);
  return result;
}

uint64_t ashp::acipc::messenger::get_max_message_length(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 1);
  if (BYTE1(this[48]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("messenger.cpp", 0xE4, "get_max_message_length", v2);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to retrieve max message length in reset", "messenger.cpp", 0xE4, "get_max_message_length", v5);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    os_unfair_lock_opaque = this[27]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(this + 1);
    return os_unfair_lock_opaque;
  }

  return result;
}

void ashp::acipc::messenger::send_message(uint64_t a1, const void *a2, int a3, const char *a4, int a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  LODWORD(v11) = a5;
  LODWORD(v13) = a3;
  v39 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 4));
  if (*(a1 + 193) == 1)
  {
    v13 = "messenger.cpp";
    v11 = "send_message";
    ashp::detail::control_flow::log_guard_else_failure("messenger.cpp", 0xED, "send_message", v18);
    a4 = "BUG in Airship: attempted message send in reset";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted message send in reset", "messenger.cpp", 0xED, "send_message", v29);
    _os_crash();
    __break(1u);
    goto LABEL_27;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 200), v16, v17, v18);
  free_space = ashp::acipc::tr_controller::get_free_space(*(a1 + 200));
  v20 = free_space;
  log_level = ashp::detail::logging::get_log_level(free_space);
  if (!v20)
  {
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        v34 = "messenger.cpp";
        v35 = 1024;
        v36 = 246;
        v37 = 2082;
        v38 = "send_message";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] deferring message send", buf, 0x1Cu);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_16;
    }

    if (airship_platform_get_global_logger::once != -1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] deferring message send", "messenger.cpp", 246, "send_message");
LABEL_16:
      os_unfair_lock_assert_owner((a1 + 4));
      if (__CFADD__(v13, v11))
      {
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x19E, "save_overflow_message", v26);
        _os_crash();
        __break(1u);
      }

      else if ((v13 + v11) <= *(a1 + 108))
      {
        v27 = ashp::detail::logging::get_log_level(v25);
        if (v27 >= 4)
        {
          v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v27)
          {
            *buf = 136446722;
            v34 = "messenger.cpp";
            v35 = 1024;
            v36 = 416;
            v37 = 2082;
            v38 = "save_overflow_message";
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] saving overflow message", buf, 0x1Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v27))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] saving overflow message", "messenger.cpp", 416, "save_overflow_message");
        }

        operator new();
      }

      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x19F, "save_overflow_message", v26);
      _os_crash();
      __break(1u);
      v11 = "create";
      ashp::detail::control_flow::log_guard_else_failure("typed_allocators.cpp", 0x19, "create", v30);
      ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "typed_allocators.cpp", 0x19, "create", v31);
      _os_crash();
      __break(1u);
      v13 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x1B1, "save_overflow_message", v32);
      _os_crash();
      __break(1u);
LABEL_30:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }
  }

  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v34 = "messenger.cpp";
      v35 = 1024;
      v36 = 240;
      v37 = 2082;
      v38 = "send_message";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sending message now", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sending message now", "messenger.cpp", 240, "send_message");
      goto LABEL_9;
    }

LABEL_27:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

LABEL_9:
  ashp::acipc::messenger::enqueue_message_in_mtr(a1, a2, v13, a4, v11, a6, a7, a8);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 200), v22, v23, v24);
  ashp::acipc::tr_controller::sync(*(a1 + 200), 1);
  os_unfair_lock_unlock((a1 + 4));
  v28 = *MEMORY[0x277D85DE8];
}

void ashp::monitor::handle_terminate(os_unfair_lock_s *this)
{
  os_unfair_lock_unlock(this + 4);
  ashp::monitor::cancel(this);

  os_unfair_lock_lock(this + 4);
}

void ashp::monitor::cancel(ashp::monitor *this)
{
  os_unfair_lock_lock(this + 24);
  if ((*(this + 120) & 1) == 0)
  {
    os_unfair_lock_lock(this + 4);
    *(this + 120) = 1;
    os_unfair_lock_unlock(this + 4);
    v4 = *(this + 13);
    if (v4)
    {
      os_unfair_lock_lock(*(this + 13));
    }

    ashp::detail::intrusive_list::intrusive_list_impl<ashp::monitor,ashp::intrusive_list_link<ashp::monitor>,&ashp::monitor::_target_link>::remove(&v4[2], this, v2, v3);
    if (v4)
    {
      os_unfair_lock_unlock(v4);
    }

    ashp::monitor::wake_waiters(this);
  }

  os_unfair_lock_unlock(this + 24);
}

pthread_mutex_t *ashp::monitor::wake_waiters(pthread_mutex_t *this)
{
  if (this[3].__opaque[40] == 1)
  {
    v5[3] = v1;
    v5[4] = v2;
    v3 = this;
    this[3].__opaque[40] = 0;
    v5[0] = this;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 0x40000000;
    v4[2] = ___ZN4ashp12wait_context3runIZNS_7monitor12wake_waitersEvE3__0EEvT__block_invoke;
    v4[3] = &__block_descriptor_tmp_9;
    v4[4] = v5;
    pthread_mutex_lock(this + 2);
    ___ZN4ashp12wait_context3runIZNS_7monitor12wake_waitersEvE3__0EEvT__block_invoke(v4);
    return pthread_mutex_unlock(v3 + 2);
  }

  return this;
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::monitor,ashp::intrusive_list_link<ashp::monitor>,&ashp::monitor::_target_link>::remove(uint64_t result, void *a2, uint64_t a3, const char *a4)
{
  if (a2 && a2[37] == result)
  {
    v4 = a2[35];
    v5 = a2[36];
    *v5 = v4;
    if (v4)
    {
      v6 = v4 + 280;
    }

    else
    {
      v6 = result;
    }

    *(v6 + 8) = v5;
    a2[35] = 0;
    a2[36] = 0;
    a2[37] = 0;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xCB, "remove", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to remove element not in list", "intrusive_list.hpp", 0xCB, "remove", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::monitor::destroy(ashp::monitor *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    *this = &unk_28515D130;
    if (*(this + 120))
    {
      if (*(this + 312) == 1)
      {
        *(this + 312) = 0;
      }

      ashp::intrusive_list_link<ashp::monitor>::~intrusive_list_link(this + 280, a2, a3, a4);
      if (*(this + 272) == 1)
      {
        *(this + 272) = 0;
      }

      ashp::driver_object::~driver_object(this, v6, v7, v8, v9);

LABEL_12:
      JUMPOUT(0x23EF204E0);
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "monitor.cpp", 0x20, "~monitor", a5);
  _os_crash();
  __break(1u);
  goto LABEL_12;
}

uint64_t ashp::intrusive_list_link<ashp::monitor>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
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

void ashp::monitor::set_value(os_unfair_lock_s *this, uint64_t a2)
{
  os_unfair_lock_lock(this + 4);
  os_unfair_lock_opaque = this[78]._os_unfair_lock_opaque;
  *&this[76]._os_unfair_lock_opaque = a2;
  if ((os_unfair_lock_opaque & 1) == 0)
  {
    LOBYTE(this[78]._os_unfair_lock_opaque) = 1;
  }

  ashp::monitor::recompute(this);

  os_unfair_lock_unlock(this + 4);
}

void ashp::monitor::recompute(os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 4);
  if (LOBYTE(this[78]._os_unfair_lock_opaque) != 1 || (this[68]._os_unfair_lock_opaque & 1) == 0)
  {
    goto LABEL_12;
  }

  os_unfair_lock_opaque = this[80]._os_unfair_lock_opaque;
  ashp::optional<unsigned long long,void>::value(&this[76], v2, v3, v4);
  v6 = *&this[66]._os_unfair_lock_opaque & *&this[76]._os_unfair_lock_opaque;
  v7 = this[62]._os_unfair_lock_opaque;
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v8 = v6 <= *&this[64]._os_unfair_lock_opaque;
        goto LABEL_18;
      case 4:
        v8 = v6 > *&this[64]._os_unfair_lock_opaque;
        goto LABEL_18;
      case 5:
        v8 = v6 >= *&this[64]._os_unfair_lock_opaque;
        goto LABEL_18;
    }

LABEL_12:
    LOBYTE(this[80]._os_unfair_lock_opaque) = 0;
    return;
  }

  if (!v7)
  {
    v8 = v6 == *&this[64]._os_unfair_lock_opaque;
    goto LABEL_18;
  }

  if (v7 == 1)
  {
    v8 = v6 != *&this[64]._os_unfair_lock_opaque;
    goto LABEL_18;
  }

  if (v7 != 2)
  {
    goto LABEL_12;
  }

  v8 = v6 < *&this[64]._os_unfair_lock_opaque;
LABEL_18:
  LOBYTE(this[80]._os_unfair_lock_opaque) = v8;
  if ((this[30]._os_unfair_lock_opaque & 1) == 0 && v8 && (os_unfair_lock_opaque & 1) == 0)
  {
    ashp::monitor::wake_waiters(this);
    v12 = *&this[28]._os_unfair_lock_opaque;
    if (v12)
    {

      ashp::async_notifier::trigger(v12, v9, v10, v11);
    }
  }
}

void ashp::monitor::set_notifier(os_unfair_lock_s *this, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(this + 4);
  *&this[28]._os_unfair_lock_opaque = a2;
  if (this[30]._os_unfair_lock_opaque & 1) == 0 && a2 && (this[80]._os_unfair_lock_opaque)
  {
    ashp::async_notifier::trigger(a2, v4, v5, v6);
  }

  os_unfair_lock_unlock(this + 4);
}

void ashp::monitor::set_criterion(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a1 + 16));
  v8 = *(a1 + 272);
  *(a1 + 248) = a2;
  *(a1 + 256) = a3;
  *(a1 + 264) = a4;
  if ((v8 & 1) == 0)
  {
    *(a1 + 272) = 1;
  }

  ashp::monitor::recompute(a1);

  os_unfair_lock_unlock((a1 + 16));
}

uint64_t ___ZN4ashp12wait_context3runIZNS_7monitor4waitEvE3__1EEvT__block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  os_unfair_lock_unlock((v1 + 16));
  v2 = pthread_cond_wait((v1 + 192), (v1 + 128));
  result = ashp::detail::control_flow::check_err_with_debug(v2, "wait_context.cpp", 0x52, "wait", v3);
  if ((result & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "wait_context.cpp", 0x52, "wait", v5);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ___ZN4ashp12wait_context3runIZNS_7monitor9timedwaitEjE3__1EEvT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  os_unfair_lock_unlock(*v1 + 4);
  v3 = 1000000 * v1[2]->_os_unfair_lock_opaque;
  v6.tv_sec = v1[2]->_os_unfair_lock_opaque / 0x3E8uLL;
  v6.tv_nsec = v3 - 1000000000 * (((v3 * 0x112E0BE826D695uLL) >> 64) >> 18);
  result = pthread_cond_timedwait_relative_np(&v2[48], &v2[32], &v6);
  if (!result)
  {
    goto LABEL_4;
  }

  if (result == 60)
  {
    result = 3758097110;
LABEL_4:
    v1[1]->_os_unfair_lock_opaque = result;
    return result;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "wait_context.cpp", 0x8A, "timedwait", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::monitor_target::~monitor_target(ashp::monitor_target *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v7 = *(this + 1);
  v6 = this + 8;
  if (v7)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "monitor.cpp", 0xED, "~monitor_target", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    if (*(this + 40) == 1)
    {
      *(this + 40) = 0;
    }

    ashp::intrusive_list_link<ashp::monitor>::~intrusive_list_link(v6, a2, a3, a4);
  }
}

void ashp::monitor_target::update_value(os_unfair_lock_t lock, uint64_t a2)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  os_unfair_lock_opaque = lock[10]._os_unfair_lock_opaque;
  *&lock[8]._os_unfair_lock_opaque = a2;
  if ((os_unfair_lock_opaque & 1) == 0)
  {
    LOBYTE(lock[10]._os_unfair_lock_opaque) = 1;
  }

  v5 = *&lock[2]._os_unfair_lock_opaque;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
    ashp::monitor::set_value(v5, a2);
    v5 = *(v5 + 280);
  }

  while (v5);
  if (lock)
  {
LABEL_8:

    os_unfair_lock_unlock(lock);
  }
}

void sub_23ECEAC2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void ashp::driver_resource::release(os_unfair_lock_t lock, ashp::driver_client *a2, uint64_t a3, const char *a4, const char *a5)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (!a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver_resource.cpp", 0x34, "release", a5);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (*&lock[6]._os_unfair_lock_opaque != a2)
  {
LABEL_9:
    ashp::detail::control_flow::log_guard_else_failure("driver_resource.cpp", 0x35, "release", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: access to non-held resource", "driver_resource.cpp", 0x35, "release", v7);
    _os_crash();
    __break(1u);
    return;
  }

  *&lock[6]._os_unfair_lock_opaque = 0;
  ashp::monitor_target::update_value(lock + 14, 0);
  ashp::driver_object_termination_list::terminate_all(lock + 26);

  os_unfair_lock_unlock(lock);
}

void sub_23ECEAD30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void ashp::driver_resource::bind_active_object(os_unfair_lock_s *this, ashp::driver_object *a2)
{
  os_unfair_lock_lock(this);
  if (*&this[6]._os_unfair_lock_opaque)
  {
    ashp::driver_object_termination_list::insert(this + 26, a2);

    os_unfair_lock_unlock(this);
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("driver_resource.cpp", 0x45, "bind_active_object", v4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: access to non-held resource", "driver_resource.cpp", 0x45, "bind_active_object", v5);
    _os_crash();
    __break(1u);
  }
}

uint64_t ashp::driver_resource_manager::find(uint64_t a1, const __CFString *a2, int a3)
{
  os_unfair_lock_assert_owner(a1);
  v9 = *(a1 + 8);
  if (!v9)
  {
    return 0;
  }

  v10 = *(a1 + 24);
  v11 = 8 * v9;
  while (1)
  {
    v12 = *v10;
    if (*(*v10 + 16) != a3)
    {
      goto LABEL_16;
    }

    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v12 + 8), v6, v7, v8);
    v13 = *(v12 + 8);
    if (!v13 || a2 == 0)
    {
      break;
    }

    if (CFStringCompare(v13, a2, 0) == kCFCompareEqualTo)
    {
      return *v10;
    }

LABEL_16:
    ++v10;
    v11 -= 8;
    if (!v11)
    {
      return 0;
    }
  }

  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 == 0;
  }

  if (!v15)
  {
    goto LABEL_16;
  }

  return *v10;
}

uint64_t ashp::owning_wrapper<ashp::driver_resource *,(decltype(nullptr))0,ashp::typed_deleter<ashp::driver_resource>>::~owning_wrapper(void *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v6 = *a1;
  if (!*a1)
  {
    return a1;
  }

  if (!v6[3])
  {
    ashp::driver_object_termination_list::~driver_object_termination_list((v6 + 13), a2, a3, a4, a5);
    ashp::monitor_target::~monitor_target((v6 + 7), v7, v8, v9, v10);
    ashp::intrusive_list_link<ashp::driver_resource>::~intrusive_list_link((v6 + 4), v11, v12, v13);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v6 + 1, v14, v15, v16);
    MEMORY[0x23EF204E0](v6, 0x10E0C40F5B8DB49);
    *a1 = 0;
    return a1;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver_resource.cpp", 0x16, "~driver_resource", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::driver_resource_manager::get(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a2)
  {
    v4 = a3;
    ashp::boxed::symbol::with_str(&v13, a2, a3, a4);
    if (v13)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v13, v6, v7, v8);
      v9 = v13;
      if (a1)
      {
        os_unfair_lock_lock(a1);
      }

      v10 = ashp::driver_resource_manager::find(a1, v9, v4);
      if (a1)
      {
        os_unfair_lock_unlock(a1);
      }
    }

    else
    {
      v10 = 0;
    }

    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v13, v6, v7, v8);
    return v10;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x1F0, "existing_for_str", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to find existing boxed symbol from null string", "boxed_types.cpp", 0x1F0, "existing_for_str", v12);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void sub_23ECEB034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    os_unfair_lock_unlock(v10);
  }

  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&a10, a2, a3, a4);
  _Unwind_Resume(a1);
}

const char *airship_daleipc_get_ipc_error_description(int a1)
{
  if (!a1)
  {
    return "no-error";
  }

  if ((a1 & (a1 - 1)) != 0)
  {
    return "multiple-errors";
  }

  if (a1 > 127)
  {
    if (a1 > 2047)
    {
      if (a1 >= 0x2000)
      {
        if (a1 == 0x2000)
        {
          return "channel-quiesce-failure";
        }

        if (a1 == 0x4000)
        {
          return "downlink-update-failure";
        }
      }

      else
      {
        if (a1 == 2048)
        {
          return "channel-update-failure";
        }

        if (a1 == 4096)
        {
          return "uplink-update-failure";
        }
      }
    }

    else if (a1 > 511)
    {
      if (a1 == 512)
      {
        return "host-sleep-failure";
      }

      if (a1 == 1024)
      {
        return "host-wake-failure";
      }
    }

    else
    {
      if (a1 == 128)
      {
        return "cldma-tx-error";
      }

      if (a1 == 256)
      {
        return "system-failure";
      }
    }

    return "unknown-error";
  }

  if (a1 > 7)
  {
    if (a1 > 31)
    {
      if (a1 == 32)
      {
        return "io-timeout";
      }

      if (a1 == 64)
      {
        return "cldma-rx-error";
      }
    }

    else
    {
      if (a1 == 8)
      {
        return "device-sleep-exit-timeout";
      }

      if (a1 == 16)
      {
        return "downlink-buffer-count-len-error";
      }
    }

    return "unknown-error";
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return "cldma-link-error";
    }

    if (a1 == 4)
    {
      return "sleep-failure";
    }

    return "unknown-error";
  }

  return "channel-sync-failure";
}

void ashp::async_notifier::set_queue(os_unfair_lock_t lock, dispatch_queue_s *a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (LOBYTE(lock[10]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("async_notifier.cpp", 0x15, "set_queue", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to reconfigure active object", "async_notifier.cpp", 0x15, "set_queue", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::refcounted_ptr(&v11, a2, a3, a4);
    v6 = *&lock[2]._os_unfair_lock_opaque;
    *&lock[2]._os_unfair_lock_opaque = v11;
    v11 = v6;
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(lock);
  }
}

void ashp::async_notifier::set_event_handler(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (LOBYTE(lock[10]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("async_notifier.cpp", 0x1D, "set_event_handler", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to reconfigure active object", "async_notifier.cpp", 0x1D, "set_event_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, a3, a4);
    v6 = *&lock[6]._os_unfair_lock_opaque;
    *&lock[6]._os_unfair_lock_opaque = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(lock);
  }
}

void ashp::async_notifier::set_cancel_handler(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (LOBYTE(lock[10]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("async_notifier.cpp", 0x25, "set_cancel_handler", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to reconfigure active object", "async_notifier.cpp", 0x25, "set_cancel_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, a3, a4);
    v6 = *&lock[8]._os_unfair_lock_opaque;
    *&lock[8]._os_unfair_lock_opaque = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock(lock);
  }
}

void ashp::async_notifier::activate(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (LOBYTE(lock[10]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("async_notifier.cpp", 0x2D, "activate", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to activate active object", "async_notifier.cpp", 0x2D, "activate", v19);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  if (BYTE1(lock[10]._os_unfair_lock_opaque) == 1)
  {
LABEL_15:
    ashp::detail::control_flow::log_guard_else_failure("async_notifier.cpp", 0x2E, "activate", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to activate canceled object", "async_notifier.cpp", 0x2E, "activate", v20);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (!*&lock[2]._os_unfair_lock_opaque)
  {
LABEL_16:
    ashp::detail::control_flow::log_guard_else_failure("async_notifier.cpp", 0x2F, "activate", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to activate object without required configuration", "async_notifier.cpp", 0x2F, "activate", v21);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(lock[10]._os_unfair_lock_opaque) = 1;
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[2]._os_unfair_lock_opaque, a2, a3, a4);
  v5 = dispatch_source_create(MEMORY[0x277D85CF0], 0, 0, *&lock[2]._os_unfair_lock_opaque);
  v7 = &lock[4];
  v6 = *&lock[4]._os_unfair_lock_opaque;
  *&lock[4]._os_unfair_lock_opaque = v5;
  v23 = v6;
  ashp::refcounted_ptr<dispatch_source_s *,ashp::dispatch::refcount_policy>::reset(&v23);
  if (!*&lock[4]._os_unfair_lock_opaque)
  {
LABEL_17:
    ashp::detail::control_flow::log_guard_else_failure("async_notifier.cpp", 0x55, "activate", v10);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "async_notifier.cpp", 0x55, "activate", v22);
    _os_crash();
    __break(1u);
    return;
  }

  if (*&lock[6]._os_unfair_lock_opaque)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, v8, v9, v10);
    v11 = *v7;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[6]._os_unfair_lock_opaque, v12, v13, v14);
    dispatch_source_set_event_handler(v11, *&lock[6]._os_unfair_lock_opaque);
  }

  if (*&lock[8]._os_unfair_lock_opaque)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, v8, v9, v10);
    v15 = *v7;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[8]._os_unfair_lock_opaque, v16, v17, v18);
    dispatch_source_set_cancel_handler(v15, *&lock[8]._os_unfair_lock_opaque);
  }

  if (BYTE2(lock[10]._os_unfair_lock_opaque) == 1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, v8, v9, v10);
    dispatch_suspend(*v7);
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&lock[4]._os_unfair_lock_opaque, v8, v9, v10);
  dispatch_activate(*&lock[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(lock);
}