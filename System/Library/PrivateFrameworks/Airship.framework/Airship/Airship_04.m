void sub_23ECC94E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  ashp::acipc::config::transfer_ring_spec::constraint_config::~constraint_config(&a55, a2, a3, a4, a5);
  ashp::acipc::config::transfer_ring_spec::~transfer_ring_spec(&a9, v56, v57, v58, v59);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::config::transfer_ring_spec::transfer_ring_spec(uint64_t a1, uint64_t *a2, uint64_t a3, const char *a4)
{
  v6 = *a2;
  *a2 = 0;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = a2[1];
  a2[1] = 0;
  v7 = *(a1 + 16);
  v8 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  a2[2] = v7;
  a2[3] = 0;
  v10 = *(a2 + 4);
  v9 = *(a2 + 5);
  v11 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = v11;
  *(a1 + 64) = v10;
  *(a1 + 80) = v9;
  *(a1 + 98) = 0;
  if (*(a2 + 98) == 1)
  {
    *(a1 + 96) = *(a2 + 48);
    *(a1 + 98) = 1;
    if (*(a2 + 98) == 1)
    {
      *(a2 + 98) = 0;
    }
  }

  v12 = a2[13];
  a2[13] = 0;
  *(a1 + 104) = v12;
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 120) = *(a2 + 30);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(a1 + 128, (a2 + 16), a3, a4);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(a1 + 152, (a2 + 19), v13, v14);
  v15 = a2[22];
  a2[22] = 0;
  *(a1 + 176) = v15;
  *(a1 + 184) = *(a2 + 46);
  v16 = a2[24];
  a2[24] = 0;
  *(a1 + 192) = v16;
  *(a1 + 200) = *(a2 + 50);
  v17 = a2[26];
  *(a1 + 216) = *(a2 + 54);
  *(a1 + 208) = v17;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  *(a1 + 224) = a2[28];
  a2[28] = 0;
  v18 = *(a1 + 232);
  v19 = a2[30];
  *(a1 + 232) = a2[29];
  *(a1 + 240) = v19;
  a2[29] = v18;
  a2[30] = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = a2[31];
  a2[31] = 0;
  v20 = *(a1 + 256);
  v21 = a2[33];
  *(a1 + 256) = a2[32];
  *(a1 + 264) = v21;
  a2[32] = v20;
  a2[33] = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = a2[34];
  a2[34] = 0;
  v22 = *(a1 + 280);
  v23 = a2[36];
  *(a1 + 280) = a2[35];
  *(a1 + 288) = v23;
  a2[35] = v22;
  a2[36] = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = a2[37];
  a2[37] = 0;
  v24 = *(a1 + 304);
  v25 = a2[39];
  *(a1 + 304) = a2[38];
  *(a1 + 312) = v25;
  a2[38] = v24;
  a2[39] = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = a2[40];
  a2[40] = 0;
  v26 = *(a1 + 328);
  v27 = a2[42];
  *(a1 + 328) = a2[41];
  *(a1 + 336) = v27;
  a2[41] = v26;
  a2[42] = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = a2[43];
  a2[43] = 0;
  v28 = *(a1 + 352);
  v29 = a2[45];
  *(a1 + 352) = a2[44];
  *(a1 + 360) = v29;
  a2[44] = v28;
  a2[45] = 0;
  return a1;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_6:
      *a1 = a2;
      return;
    }

    v7 = 304 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      ashp::acipc::config::main_ipc_stage_spec::~main_ipc_stage_spec((v9 + v7), a2, a3, a4);
      ++v8;
      v7 += 304;
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

void ashp::acipc::config::main_ipc_stage_spec::~main_ipc_stage_spec(ashp::acipc::config::main_ipc_stage_spec *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(this + 296) == 1)
  {
    *(this + 296) = 0;
  }

  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 34, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 32, v5, v6, v7);
  ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(this + 184, v8, v9, v10);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 20, v11, v12, v13);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 17, v14, v15, v16);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v17, v18, v19);
}

uint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::append(uint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (__CFADD__(*result, a3))
  {
LABEL_13:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x137, "append", a5);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  if (*result + a3 <= result[1])
  {
    v6 = a3;
    v28 = *result + a3;
    if (!a3)
    {
LABEL_11:
      *v5 = v28;
      return result;
    }

    v8 = 0;
    while (1)
    {
      v9 = v5[2] + 304 * *v5;
      if (!(v9 + v8))
      {
        break;
      }

      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v9 + v8), *(a2 + v8), a3, a4);
      v10 = v9 + v8;
      v11 = *(a2 + v8 + 8);
      v12 = *(a2 + v8 + 24);
      *(v10 + 40) = *(a2 + v8 + 40);
      *(v10 + 24) = v12;
      *(v10 + 8) = v11;
      v13 = *(a2 + v8 + 56);
      v14 = *(a2 + v8 + 72);
      v15 = *(a2 + v8 + 88);
      *(v10 + 102) = *(a2 + v8 + 102);
      *(v10 + 88) = v15;
      *(v10 + 72) = v14;
      *(v10 + 56) = v13;
      v16 = *(a2 + v8 + 112);
      *(v10 + 126) = *(a2 + v8 + 126);
      *(v10 + 112) = v16;
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v9 + v8 + 136), *(a2 + v8 + 136), v17, v18);
      *(v10 + 144) = *(a2 + v8 + 144);
      *(v10 + 152) = *(a2 + v8 + 152);
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v9 + v8 + 160), *(a2 + v8 + 160), v19, v20);
      v23 = v9 + v8;
      v24 = a2 + v8;
      *(v23 + 168) = *(a2 + v8 + 168);
      *(v23 + 176) = *(a2 + v8 + 176);
      *(v23 + 248) = 0;
      if (*(a2 + v8 + 248) == 1)
      {
        ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::emplace<ashp::acipc::config::main_ipc_stage_spec::mcr_spec const&>(v23 + 184, v24 + 184, v21, v22);
      }

      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v23 + 256), *(v24 + 256), v21, v22);
      v25 = v9 + v8;
      *(v9 + v8 + 264) = *(a2 + v8 + 264);
      result = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v9 + v8 + 272), *(a2 + v8 + 272), v26, v27);
      *(v25 + 280) = *(a2 + v8 + 280);
      *(v25 + 288) = *(a2 + v8 + 288);
      *(v25 + 296) = 0;
      if (*(a2 + v8 + 296) == 1)
      {
        *(v9 + v8 + 292) = *(a2 + v8 + 292);
        *(v25 + 296) = 1;
      }

      v8 += 304;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x138, "append", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECC9A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::acipc::config::main_ipc_stage_spec::mtr_spec::~mtr_spec((v5 + 112), a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v4, v7, v8, v9);
  _Unwind_Resume(a1);
}

uint64_t ashp::detail::dynamic_array::buffer<ashp::acipc::config::main_ipc_stage_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x130uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 304 * a2, 0x1060040C983677EuLL);
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

void ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::detail::dynamic_array::buffer<ashp::acipc::config::main_ipc_stage_spec>::buffer(&v13, a2, a3, a4);
    if (*a1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        std::construct_at[abi:se200100]<ashp::acipc::config::main_ipc_stage_spec,ashp::acipc::config::main_ipc_stage_spec,ashp::acipc::config::main_ipc_stage_spec*>(v14 + v8, (a1[2] + v8), v6, v7);
        ++v9;
        v8 += 304;
      }

      while (v9 < *a1);
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
}

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::main_ipc_stage_spec::parse(ashp::acipc::config::main_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::main_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::main_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::main_ipc_stage_spec::parse(ashp::acipc::config::main_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::main_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::main_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    v64 = 0;
    v65[0] = 0;
    v66 = 0;
    v67 = 0;
    v68[0] = 0;
    v69 = 0;
    v70 = 0;
    v71[0] = 0;
    v72 = 0;
    v73 = 0;
    v74[0] = 0;
    v75 = 0;
    v76 = 0;
    v77[0] = 0;
    v78 = 0;
    v79 = 0;
    v80[0] = 0;
    v81 = 0;
    v82 = 0;
    v83[0] = 0;
    v84 = 0;
    v85 = 0;
    v86[0] = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91[0] = 0;
    v95 = 0;
    v96 = 0;
    v100[0] = 0;
    v101 = 0;
    v93 = 0;
    v92 = 0;
    v94[0] = 0;
    v99 = 0;
    v97 = 0;
    v98 = 0;
    v102[64] = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108[4] = 0;
    v9 = *(a3 + 8);
    v10 = *v9;
    if (!a2)
    {
      set_error(*v9, "missing object", 0, a4, a5);
      goto LABEL_68;
    }

    v11 = CFGetTypeID(a2);
    if (v11 != CFDictionaryGetTypeID())
    {
      a2 = 0;
    }

    if (!a2)
    {
      set_error(v10, "unexpected object type", 0, v13, v14);
      goto LABEL_68;
    }

    v113 = 0;
    value = ashp::boxed::dictionary::get_value(a2, @"registers", v12, v13);
    v18 = value;
    if (value)
    {
      v19 = CFGetTypeID(value);
      if (v19 != CFDictionaryGetTypeID())
      {
        v18 = 0;
      }

      if (v18)
      {
        if (!parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v65, v18, @"ipc_control", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v68, v18, @"ipc_status", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v71, v18, @"sleep_control", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v74, v18, @"context_info_address_lo", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v77, v18, @"context_info_address_hi", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v80, v18, @"window_base_lo", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v83, v18, @"window_base_hi", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v86, v18, @"window_size", v10))
        {
          goto LABEL_66;
        }

        if (ashp::boxed::dictionary::count(v18, v22, v20, v21) == 8)
        {
          if (!parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v89, a2, @"version", v10) || !parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v89 + 1, a2, @"tr_index_count", v10) || !parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v90, a2, @"cr_index_count", v10))
          {
            goto LABEL_68;
          }

          v25 = ashp::boxed::dictionary::get_value(a2, @"mtr", v23, v24);
          v28 = v25;
          if (v25)
          {
            v29 = CFGetTypeID(v25);
            if (v29 != CFDictionaryGetTypeID())
            {
              v28 = 0;
            }

            if (v28)
            {
              v114 = 0;
              if (parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(v91, v28, @"ring_size", v10) && parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v92, 0, v28, @"transfer_header_size", v10, &v114) && parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v92 + 1, 0, v28, @"transfer_footer_size", v10, &v114) && parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v93, 0, v28, @"completion_header_size", v10, &v114) && parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v93 + 1, 0, v28, @"completion_footer_size", v10, &v114) && parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(v94, 0, v28, @"out_of_order", v10, &v114) && parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(v94 + 1, 0, v28, @"in_place", v10, &v114) && parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v95, v28, @"doorbell", v10) && parse_field_with_default<&(ashp::acipc::config::doorbell_moderation_spec::parse(ashp::acipc::config::doorbell_moderation_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_moderation_spec>(&v97, v28, v10, &v114) && parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v98, v28, @"interrupt", v10) && parse_field_with_default<&(ashp::acipc::config::tr_debug_spec::parse(ashp::acipc::config::tr_debug_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::tr_debug_spec>(v100, v28, v10, &v114))
              {
                v31 = ashp::boxed::dictionary::count(v28, v30, v20, v21);
                if (v114 + v31 == 11)
                {
                  v112 = 0;
                  v34 = parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::main_ipc_stage_spec::mcr_spec::parse(ashp::acipc::config::main_ipc_stage_spec::mcr_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::main_ipc_stage_spec::mcr_spec>(ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,ashp::optional_traits<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>>(v102, v111, a2, v10, &v113);
                  ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(v111, v35, v36, v37);
                  if (v34)
                  {
                    if (parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v103, a2, @"ipc_status_interrupt", v10))
                    {
                      if (parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v105, a2, @"peripheral_info_interrupt", v10))
                      {
                        if (parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v107, 0, a2, @"scratch_size", v10, &v113))
                        {
                          v110 = 0;
                          if (parse_field_with_default<&(BOOL parse_optional<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(ashp::optional<unsigned int,ashp::optional_traits<unsigned int,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<unsigned int,void>>(v108, &v109, a2, @"ipc_running_timeout", v10, &v113))
                          {
                            v39 = ashp::boxed::dictionary::count(a2, v38, v23, v24);
                            if (v113 + v39 == 10)
                            {
                              v43 = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(v111, cf, v40, v41);
                              v44 = v64;
                              v64 = v111[0];
                              v111[0] = v44;
                              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v43, v45, v46, v47);
                              v51 = **(a3 + 16);
                              v52 = *v51;
                              v53 = *v51 + 1;
                              if (*v51 == -1)
                              {
                                ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v49);
                                ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v63);
                                _os_crash();
                                __break(1u);
                              }

                              else
                              {
                                v54 = v51[1];
                                if (v53 > v54)
                                {
                                  if (v54 <= 8)
                                  {
                                    v55 = 8;
                                  }

                                  else
                                  {
                                    v55 = v51[1];
                                  }

                                  v56 = (*v51 - 8) < 0;
                                  if (v53 >= 9)
                                  {
                                    do
                                    {
                                      if (is_mul_ok(v55, 3uLL))
                                      {
                                        v55 = (3 * v55) >> 1;
                                      }

                                      else
                                      {
                                        v55 = *v51 + 1;
                                      }
                                    }

                                    while (v55 < v53);
                                  }

                                  if (v54 < v55)
                                  {
                                    ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::set_capacity(v51, v55, v48, v49, v50);
                                    v52 = *v51;
                                    v54 = v51[1];
                                  }
                                }

                                if (v52 < v54)
                                {
                                  std::construct_at[abi:se200100]<ashp::acipc::config::main_ipc_stage_spec,ashp::acipc::config::main_ipc_stage_spec,ashp::acipc::config::main_ipc_stage_spec*>(v51[2] + 304 * v52, &v64, v48, v49);
                                  ++*v51;
LABEL_69:
                                  ashp::acipc::config::main_ipc_stage_spec::~main_ipc_stage_spec(&v64, v57, v58, v59);
                                  return;
                                }
                              }

                              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v50);
                              _os_crash();
                              __break(1u);
                              return;
                            }

                            set_error(v10, "unknown keys present", 0, v41, v42);
                          }
                        }
                      }
                    }
                  }

LABEL_68:
                  set_error_location(**(a3 + 8), cf, v23, v24);
                  **a3 = 1;
                  goto LABEL_69;
                }

                set_error(v10, "unknown keys present", 0, v32, v33);
              }

              goto LABEL_75;
            }

            v62 = "unexpected object type";
          }

          else
          {
            v62 = "missing object";
          }

          set_error(v10, v62, 0, v26, v27);
LABEL_75:
          v61 = @"mtr";
          goto LABEL_67;
        }

        v60 = "unknown keys present";
      }

      else
      {
        v60 = "unexpected object type";
      }
    }

    else
    {
      v60 = "missing object";
    }

    set_error(v10, v60, 0, v16, v17);
LABEL_66:
    v61 = @"registers";
LABEL_67:
    set_error_location(v10, v61, v20, v21);
    goto LABEL_68;
  }
}

void sub_23ECCA448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(v9 - 152, a2, a3, a4);
  ashp::acipc::config::main_ipc_stage_spec::~main_ipc_stage_spec(&a9, v11, v12, v13);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:se200100]<ashp::acipc::config::main_ipc_stage_spec,ashp::acipc::config::main_ipc_stage_spec,ashp::acipc::config::main_ipc_stage_spec*>(uint64_t result, uint64_t *a2, uint64_t a3, const char *a4)
{
  if (result)
  {
    v5 = result;
    v6 = *a2;
    *a2 = 0;
    *result = v6;
    v7 = *(a2 + 1);
    v8 = *(a2 + 3);
    *(result + 40) = *(a2 + 5);
    *(result + 24) = v8;
    *(result + 8) = v7;
    v9 = *(a2 + 7);
    v10 = *(a2 + 9);
    v11 = *(a2 + 11);
    *(result + 102) = *(a2 + 102);
    *(result + 88) = v11;
    *(result + 72) = v10;
    *(result + 56) = v9;
    v12 = *(a2 + 7);
    *(result + 126) = *(a2 + 126);
    *(result + 112) = v12;
    v13 = a2[17];
    a2[17] = 0;
    *(result + 136) = v13;
    *(result + 144) = *(a2 + 36);
    *(result + 152) = a2[19];
    v14 = a2[20];
    a2[20] = 0;
    *(result + 160) = v14;
    *(result + 168) = *(a2 + 42);
    *(result + 176) = *(a2 + 44);
    ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::storage(result + 184, (a2 + 23), a3, a4);
    v15 = a2[32];
    a2[32] = 0;
    *(v5 + 256) = v15;
    *(v5 + 264) = *(a2 + 66);
    v16 = a2[34];
    a2[34] = 0;
    *(v5 + 272) = v16;
    *(v5 + 280) = *(a2 + 70);
    *(v5 + 288) = *(a2 + 72);
    *(v5 + 296) = 0;
    if (*(a2 + 296) == 1)
    {
      *(v5 + 292) = *(a2 + 73);
      *(v5 + 296) = 1;
      if (*(a2 + 296) == 1)
      {
        *(a2 + 296) = 0;
      }
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_6:
      *a1 = a2;
      return;
    }

    v7 = 184 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      ashp::detail::dynamic_array::storage<unsigned int>::~storage((v9 + v7 + 152), a2, a3, a4, a5);
      ashp::detail::dynamic_array::storage<unsigned int>::~storage((v9 + v7 + 128), v10, v11, v12, v13);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7 + 112), v14, v15, v16);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::~storage((v9 + v7 + 88), v17, v18, v19, v20);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7 + 8), v21, v22, v23);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7), v24, v25, v26);
      ++v8;
      v7 += 184;
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

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::append(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
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
      v10 = v6[2] + 184 * *v6 + v9;
      if (!v10)
      {
        break;
      }

      result = ashp::acipc::config::boot_ipc_stage_spec::boot_ipc_stage_spec(v10, a2, a3, a4);
      a2 += 184;
      v9 += 184;
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

uint64_t ashp::detail::dynamic_array::buffer<ashp::acipc::config::boot_ipc_stage_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0xB8uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 184 * a2, 0x1070040E50F95D1uLL);
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

void ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::detail::dynamic_array::buffer<ashp::acipc::config::boot_ipc_stage_spec>::buffer(&v11, a2, a3, a4);
    if (*a1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        std::construct_at[abi:se200100]<ashp::acipc::config::boot_ipc_stage_spec,ashp::acipc::config::boot_ipc_stage_spec,ashp::acipc::config::boot_ipc_stage_spec*>(v12 + v6, (a1[2] + v6));
        ++v7;
        v6 += 184;
      }

      while (v7 < *a1);
    }

    v8 = v11;
    v9 = v12;
    v11 = 0;
    v12 = 0;
    v10 = a1[2];
    a1[1] = v8;
    a1[2] = v9;
    if (v10)
    {
      free(v10);
      if (v12)
      {
        free(v12);
      }
    }
  }
}

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::boot_ipc_stage_spec::parse(ashp::acipc::config::boot_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::boot_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::boot_ipc_stage_spec::parse(ashp::acipc::config::boot_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::boot_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    v102[0] = 0;
    v103 = 0;
    v104 = 0;
    v105[0] = 0;
    v106 = 0;
    v107 = 0;
    v108[0] = 0;
    v109 = 0;
    v110 = 0;
    v111[0] = 0;
    v112 = 0;
    v113 = 0;
    v114[0] = 0;
    v115 = 0;
    v116 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v117 = 0u;
    v118 = 0u;
    v119 = 0;
    memset(v120, 0, sizeof(v120));
    v9 = *(a3 + 8);
    v10 = *v9;
    if (a2)
    {
      v11 = CFGetTypeID(a2);
      if (v11 != CFDictionaryGetTypeID())
      {
        a2 = 0;
      }

      if (a2)
      {
        v125 = 0;
        if (parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v100, a2, @"resource", v10))
        {
          value = ashp::boxed::dictionary::get_value(a2, @"registers", v14, v15);
          v19 = value;
          if (value)
          {
            v20 = CFGetTypeID(value);
            if (v20 != CFDictionaryGetTypeID())
            {
              v19 = 0;
            }

            if (v19)
            {
              if (!parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v102, v19, @"image_address_lo", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v105, v19, @"image_address_hi", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v108, v19, @"image_size", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v111, v19, @"image_doorbell", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v114, v19, @"image_response", v10))
              {
                goto LABEL_34;
              }

              if (ashp::boxed::dictionary::count(v19, v23, v21, v22) == 5)
              {
                memset(v124, 0, sizeof(v124));
                v25 = ashp::boxed::dictionary::get_value(a2, @"client_registers", v24, v17);
                v29 = v25;
                if (v25)
                {
                  v128 = v10;
                  v129 = &v117;
                  if (v117)
                  {
                    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x15B, "parse_dict", v28);
                    _os_crash();
                    __break(1u);
                    goto LABEL_63;
                  }

                  v30 = CFGetTypeID(v25);
                  if (v30 != CFDictionaryGetTypeID())
                  {
                    v29 = 0;
                  }

                  if (!v29)
                  {
                    set_error(v10, "unexpected object type", 0, v33, v34);
LABEL_60:
                    set_error_location(v10, @"client_registers", v40, v41);
                    ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::~storage(v124, v94, v95, v96, v97);
                    goto LABEL_35;
                  }

                  v127 = 0;
                  v35 = ashp::boxed::dictionary::count(v29, v31, v32, v33);
                  if (*(&v117 + 1) < v35)
                  {
                    ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::set_capacity(&v117, v35, v36, v37, v38);
                  }

                  context[0] = &v127;
                  context[1] = &v128;
                  context[2] = &v129;
                  CFDictionaryApplyFunction(v29, iterate_dict<BOOL parse_dict<&(ashp::acipc::config::boot_ipc_stage_spec::client_register_spec::parse(ashp::acipc::config::boot_ipc_stage_spec::client_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>(ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::boot_ipc_stage_spec::client_register_spec::parse(ashp::acipc::config::boot_ipc_stage_spec::client_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>(ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke, context);
                  if (v127 == 1)
                  {
                    goto LABEL_60;
                  }
                }

                else
                {
                  ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::operator=(&v117, v124, v26, v27, v28);
                  v125 = 1;
                }

                ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::~storage(v124, v39, v40, v41, v42);
                if (!parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v118 + 8, a2, @"image_interrupt", v10))
                {
                  goto LABEL_35;
                }

                memset(v123, 0, sizeof(v123));
                v65 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(ashp::dynamic_array<unsigned int> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<unsigned int>>(v120, v123, a2, @"success_code", v10, &v125);
                ashp::detail::dynamic_array::storage<unsigned int>::~storage(v123, v66, v67, v68, v69);
                if ((v65 & 1) == 0)
                {
                  goto LABEL_35;
                }

                memset(v122, 0, sizeof(v122));
                v70 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(ashp::dynamic_array<unsigned int> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<unsigned int>>(&v120[1] + 1, v122, a2, @"failure_code", v10, &v125);
                ashp::detail::dynamic_array::storage<unsigned int>::~storage(v122, v71, v72, v73, v74);
                if ((v70 & 1) == 0 || !parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(v121, 0, a2, @"image_table", v10, &v125))
                {
                  goto LABEL_35;
                }

                v76 = ashp::boxed::dictionary::count(a2, v75, v14, v15);
                if (v125 + v76 != 7)
                {
                  set_error(v10, "unknown keys present", 0, v78, v79);
                  goto LABEL_35;
                }

                v80 = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(context, cf, v77, v78);
                v81 = v99;
                v99 = context[0];
                context[0] = v81;
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v80, v82, v83, v84);
                v88 = **(a3 + 16);
                v89 = *v88;
                v90 = *v88 + 1;
                if (*v88 != -1)
                {
                  v91 = v88[1];
                  if (v90 > v91)
                  {
                    if (v91 <= 8)
                    {
                      v92 = 8;
                    }

                    else
                    {
                      v92 = v88[1];
                    }

                    v93 = (*v88 - 8) < 0;
                    if (v90 >= 9)
                    {
                      do
                      {
                        if (is_mul_ok(v92, 3uLL))
                        {
                          v92 = (3 * v92) >> 1;
                        }

                        else
                        {
                          v92 = *v88 + 1;
                        }
                      }

                      while (v92 < v90);
                    }

                    if (v91 < v92)
                    {
                      ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::set_capacity(v88, v92, v85, v86, v87);
                      v89 = *v88;
                      v91 = v88[1];
                    }
                  }

                  if (v89 < v91)
                  {
                    std::construct_at[abi:se200100]<ashp::acipc::config::boot_ipc_stage_spec,ashp::acipc::config::boot_ipc_stage_spec,ashp::acipc::config::boot_ipc_stage_spec*>(v88[2] + 184 * v89, &v99);
                    ++*v88;
                    goto LABEL_36;
                  }

LABEL_64:
                  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v87);
                  _os_crash();
                  __break(1u);
                  return;
                }

LABEL_63:
                ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v86);
                ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v98);
                _os_crash();
                __break(1u);
                goto LABEL_64;
              }

              v43 = "unknown keys present";
            }

            else
            {
              v43 = "unexpected object type";
            }
          }

          else
          {
            v43 = "missing object";
          }

          set_error(v10, v43, 0, v17, v18);
LABEL_34:
          set_error_location(v10, @"registers", v21, v22);
        }
      }

      else
      {
        set_error(v10, "unexpected object type", 0, v12, v13);
      }
    }

    else
    {
      set_error(*v9, "missing object", 0, a4, a5);
    }

LABEL_35:
    set_error_location(**(a3 + 8), cf, v14, v15);
    **a3 = 1;
LABEL_36:
    ashp::detail::dynamic_array::storage<unsigned int>::~storage(&v120[1] + 1, v44, v45, v46, v47);
    ashp::detail::dynamic_array::storage<unsigned int>::~storage(v120, v48, v49, v50, v51);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v118 + 1, v52, v53, v54);
    ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::~storage(&v117, v55, v56, v57, v58);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v100, v59, v60, v61);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v99, v62, v63, v64);
  }
}

void sub_23ECCAF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33)
{
  ashp::detail::dynamic_array::storage<unsigned int>::~storage(&a33, a2, a3, a4, a5);
  ashp::acipc::config::boot_ipc_stage_spec::~boot_ipc_stage_spec(&a10, v34, v35, v36, v37);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:se200100]<ashp::acipc::config::boot_ipc_stage_spec,ashp::acipc::config::boot_ipc_stage_spec,ashp::acipc::config::boot_ipc_stage_spec*>(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v2 = *a2;
    *a2 = 0;
    *result = v2;
    v3 = a2[1];
    a2[1] = 0;
    *(result + 8) = v3;
    *(result + 16) = *(a2 + 4);
    v4 = *(a2 + 3);
    v5 = *(a2 + 5);
    v6 = *(a2 + 7);
    *(result + 68) = *(a2 + 68);
    *(result + 56) = v6;
    *(result + 40) = v5;
    *(result + 24) = v4;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 88) = 0;
    *(result + 88) = a2[11];
    a2[11] = 0;
    v7 = *(result + 96);
    v8 = a2[13];
    *(result + 96) = a2[12];
    *(result + 104) = v8;
    a2[12] = v7;
    a2[13] = 0;
    v9 = a2[14];
    a2[14] = 0;
    *(result + 112) = v9;
    *(result + 120) = *(a2 + 30);
    *(result + 136) = 0;
    *(result + 144) = 0;
    *(result + 128) = 0;
    *(result + 128) = a2[16];
    a2[16] = 0;
    v10 = *(result + 136);
    v11 = a2[18];
    *(result + 136) = a2[17];
    *(result + 144) = v11;
    a2[17] = v10;
    a2[18] = 0;
    *(result + 152) = 0;
    *(result + 160) = 0;
    *(result + 168) = 0;
    *(result + 152) = a2[19];
    a2[19] = 0;
    v12 = *(result + 160);
    v13 = a2[21];
    *(result + 160) = a2[20];
    *(result + 168) = v13;
    a2[20] = v12;
    a2[21] = 0;
    *(result + 176) = *(a2 + 176);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_6:
      *a1 = a2;
      return;
    }

    v7 = 16 * a2;
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
      v7 += 16;
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

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::append(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
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
      v10 = v6[2] + 16 * *v6;
      if (!(v10 + v8))
      {
        break;
      }

      result = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v10 + v8), *(v9 - 1), a3, a4);
      v11 = *v9;
      v9 += 2;
      *(v10 + v8 + 8) = v11;
      v8 += 16;
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

uint64_t ashp::detail::dynamic_array::buffer<ashp::acipc::config::resource_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (a2 >> 60)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v8);
    _os_crash();
    __break(1u);
  }

  else
  {
    v5 = malloc_type_aligned_alloc(8uLL, 16 * a2, 0x1060040F08D23B4uLL);
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

void ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
LABEL_11:
    __break(1u);
    return;
  }

  ashp::detail::dynamic_array::buffer<ashp::acipc::config::resource_spec>::buffer(&v14, a2, a3, a4);
  if (*a1)
  {
    v6 = 0;
    v7 = 0;
    while (v15)
    {
      v8 = v15 + v6;
      v9 = (a1[2] + v6);
      v10 = *v9;
      *v9 = 0;
      *v8 = v10;
      v8[1] = v9[1];
      ++v7;
      v6 += 16;
      if (v7 >= *a1)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v11 = v14;
  v12 = v15;
  v14 = 0;
  v15 = 0;
  v13 = a1[2];
  a1[1] = v11;
  a1[2] = v12;
  if (v13)
  {
    free(v13);
    if (v15)
    {
      free(v15);
    }
  }
}

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::resource_spec::parse(ashp::acipc::config::resource_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::resource_spec>(ashp::dynamic_array<ashp::acipc::config::resource_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::resource_spec::parse(ashp::acipc::config::resource_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::resource_spec>(ashp::dynamic_array<ashp::acipc::config::resource_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    v46 = 0;
    LOBYTE(v47) = 0;
    HIDWORD(v47) = 0;
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
        v48 = 0;
        if (parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(&v47, 1, a2, @"restricted", v9, &v48))
        {
          value = ashp::boxed::dictionary::get_value(a2, @"multi", v11, v12);
          v17 = value;
          if (value)
          {
            v18 = CFGetTypeID(value);
            if (v18 != CFDictionaryGetTypeID())
            {
              v17 = 0;
            }

            if (!v17)
            {
              v23 = "unexpected object type";
              goto LABEL_42;
            }

            if (!parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v47 + 1, v17, @"count", v9))
            {
LABEL_43:
              set_error_location(v9, @"multi", v21, v22);
              goto LABEL_20;
            }

            if (ashp::boxed::dictionary::count(v17, v20, v21, v22) != 1)
            {
              v23 = "unknown keys present";
LABEL_42:
              set_error(v9, v23, 0, v16, v19);
              goto LABEL_43;
            }
          }

          else
          {
            HIDWORD(v47) = 1;
            ++v48;
          }

          v28 = ashp::boxed::dictionary::count(a2, v14, v15, v16);
          if (v48 + v28 == 2)
          {
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v48, cf, v29, v30);
            v32 = v46;
            v46 = v48;
            v48 = v32;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v48, v33, v34, v35);
            v37 = **(a3 + 16);
            v38 = *v37;
            v39 = *v37 + 1;
            if (*v37 == -1)
            {
              ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v27);
              ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v45);
              _os_crash();
              __break(1u);
            }

            else
            {
              v40 = v37[1];
              if (v39 > v40)
              {
                if (v40 <= 8)
                {
                  v25 = 8;
                }

                else
                {
                  v25 = v37[1];
                }

                v41 = (*v37 - 8) < 0;
                if (v39 >= 9)
                {
                  do
                  {
                    if (is_mul_ok(v25, 3uLL))
                    {
                      v25 = (3 * v25) >> 1;
                    }

                    else
                    {
                      v25 = *v37 + 1;
                    }
                  }

                  while (v25 < v39);
                }

                if (v40 < v25)
                {
                  ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::set_capacity(v37, v25, v26, v27, v36);
                  v38 = *v37;
                  v40 = v37[1];
                }
              }

              if (v38 < v40)
              {
                v42 = v37[2];
                if (v42)
                {
                  v43 = (v42 + 16 * v38);
                  v44 = v46;
                  v46 = 0;
                  *v43 = v44;
                  v43[1] = v47;
                  ++*v37;
                  goto LABEL_21;
                }

LABEL_46:
                __break(1u);
                return;
              }
            }

            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v36);
            _os_crash();
            goto LABEL_46;
          }

          set_error(v9, "unknown keys present", 0, v30, v31);
        }

LABEL_20:
        set_error_location(**(a3 + 8), cf, v11, v12);
        **a3 = 1;
LABEL_21:
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v46, v25, v26, v27);
        return;
      }

      v24 = "unexpected object type";
    }

    else
    {
      v24 = "missing object";
    }

    set_error(v9, v24, 0, a4, a5);
    goto LABEL_20;
  }
}

void sub_23ECCB790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
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

      v10 = (v9 + v7);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7 + 16), a2, a3, a4);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v10, v11, v12, v13);
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

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::append(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
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
    v9 = (a2 + 16);
    while (1)
    {
      v10 = v6[2] + 24 * *v6;
      if (!(v10 + v8))
      {
        break;
      }

      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v10 + v8), *(v9 - 2), a3, a4);
      *(v10 + v8 + 8) = *(v9 - 2);
      result = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v10 + v8 + 16), *v9, v11, v12);
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

uint64_t ashp::detail::dynamic_array::buffer<ashp::acipc::config::exec_stage_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x18uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 24 * a2, 0x106004079D75DD6uLL);
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

void ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
LABEL_11:
    __break(1u);
    return;
  }

  ashp::detail::dynamic_array::buffer<ashp::acipc::config::exec_stage_spec>::buffer(&v15, a2, a3, a4);
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
      *(v8 + 2) = *(v9 + 2);
      v11 = v9[2];
      v9[2] = 0;
      *(v8 + 2) = v11;
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

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::exec_stage_spec::parse(ashp::acipc::config::exec_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::exec_stage_spec>(ashp::dynamic_array<ashp::acipc::config::exec_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::exec_stage_spec::parse(ashp::acipc::config::exec_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::exec_stage_spec>(ashp::dynamic_array<ashp::acipc::config::exec_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    v60 = 0;
    v61 = 0;
    v62 = 0;
    v9 = *(a3 + 8);
    v10 = *v9;
    if (!a2)
    {
      set_error(*v9, "missing object", 0, a4, a5);
      goto LABEL_36;
    }

    v11 = CFGetTypeID(a2);
    if (v11 != CFDictionaryGetTypeID())
    {
      a2 = 0;
    }

    if (!a2)
    {
      set_error(v10, "unexpected object type", 0, v12, v13);
      goto LABEL_36;
    }

    v67 = 0;
    if ((parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v61, a2, @"value", v10) & 1) == 0)
    {
LABEL_36:
      set_error_location(**(a3 + 8), cf, v14, v15);
      **a3 = 1;
      goto LABEL_37;
    }

    v65 = 0;
    v66 = 0;
    v16 = _Z24parse_field_with_defaultIXadL_Z14parse_optionalIXadL_ZL12parse_symbolPN4ashp14refcounted_ptrINS1_5boxed6symbolENS1_2cf15refcount_policyEEENS3_6objectEPNS1_5acipc6config13error_contextEEES7_EbPNS1_8optionalIT0_NS1_15optional_traitsISF_vE16default_sentinelEEES9_SD_EENSE_IS7_NS1_17optional_sentinelIXtlNS1_9nullopt_tEEELb1EEEEEEbPSF_NSt3__113type_identityISF_E4typeENS3_10dictionaryES4_SD_Pm(&v66, &v65, a2, @"ipc_stage", v10, &v67);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v65, v17, v18, v19);
    if (v16)
    {
      v63 = 0;
      if (_ZNK4ashp8optionalINS_14refcounted_ptrINS_5boxed6symbolENS_2cf15refcount_policyEEENS_17optional_sentinelIXtlNS_9nullopt_tEEELb1EEEE9has_valueEv(&v66, v20, v21, v22))
      {
        v25 = v66;
      }

      else
      {
        v25 = 0;
      }

      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v64, v25, v23, v24);
      v26 = v62;
      v62 = v64;
      v64 = v26;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v64, v27, v28, v29);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v63, v30, v31, v32);
      v36 = ashp::boxed::dictionary::count(a2, v33, v34, v35);
      if (v67 + v36 == 2)
      {
        v38 = 1;
        goto LABEL_20;
      }

      set_error(v10, "unknown keys present", 0, v22, v37);
    }

    v38 = 0;
LABEL_20:
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v66, v20, v21, v22);
    if (v38)
    {
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v67, cf, v14, v15);
      v39 = v60;
      v60 = v67;
      v67 = v39;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v67, v40, v41, v42);
      v47 = **(a3 + 16);
      v48 = *v47;
      v49 = *v47 + 1;
      if (*v47 == -1)
      {
        ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v45);
        ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v59);
        _os_crash();
        __break(1u);
      }

      else
      {
        v50 = v47[1];
        if (v49 > v50)
        {
          if (v50 <= 8)
          {
            v43 = 8;
          }

          else
          {
            v43 = v47[1];
          }

          v51 = (*v47 - 8) < 0;
          if (v49 >= 9)
          {
            do
            {
              if (is_mul_ok(v43, 3uLL))
              {
                v43 = (3 * v43) >> 1;
              }

              else
              {
                v43 = *v47 + 1;
              }
            }

            while (v43 < v49);
          }

          if (v50 < v43)
          {
            ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::set_capacity(v47, v43, v44, v45, v46);
            v48 = *v47;
            v50 = v47[1];
          }
        }

        if (v48 < v50)
        {
          v52 = v47[2];
          if (v52)
          {
            v53 = v52 + 24 * v48;
            v54 = v60;
            v60 = 0;
            *v53 = v54;
            *(v53 + 8) = v61;
            v55 = v62;
            v62 = 0;
            *(v53 + 16) = v55;
            ++*v47;
LABEL_37:
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v62, v43, v44, v45);
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v60, v56, v57, v58);
            return;
          }

LABEL_41:
          __break(1u);
          return;
        }
      }

      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v46);
      _os_crash();
      goto LABEL_41;
    }

    goto LABEL_36;
  }
}

void sub_23ECCBECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&a12, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&a15, v16, v17, v18);
  ashp::acipc::config::exec_stage_spec::~exec_stage_spec(&a9, v19, v20, v21);
  _Unwind_Resume(a1);
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_8:
      *a1 = a2;
      return;
    }

    v7 = 96 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      v10 = v9 + v7;
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v9 + v7 + 48, a2, a3, a4);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage((v10 + 24), v11, v12, v13, v14);
      if (*(v10 + 16) == 1)
      {
        *(v10 + 16) = 0;
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v10, v15, v16, v17);
      ++v8;
      v7 += 96;
      if (v8 >= *a1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x112, "reduce_size", a5);
  _os_crash();
  __break(1u);
}

uint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::append(uint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (__CFADD__(*result, a3))
  {
LABEL_11:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x137, "append", a5);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  if (*result + a3 <= result[1])
  {
    v6 = a3;
    v18 = *result + a3;
    if (!a3)
    {
LABEL_9:
      *v5 = v18;
      return result;
    }

    v8 = 0;
    while (1)
    {
      v9 = v5[2] + 96 * *v5;
      if (!(v9 + v8))
      {
        break;
      }

      v10 = a2 + v8;
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v9 + v8), *(a2 + v8), a3, a4);
      v13 = v9 + v8;
      *(v13 + 8) = *(a2 + v8 + 8);
      *(v13 + 16) = 0;
      if (*(a2 + v8 + 16) == 1)
      {
        *(v13 + 12) = *(v10 + 12);
        *(v13 + 16) = 1;
      }

      *(v13 + 20) = *(v10 + 20);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::storage((v13 + 24), v10 + 24, v11, v12);
      v14 = (v9 + v8);
      result = ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v9 + v8 + 48, a2 + v8 + 48, v15, v16);
      v17 = *(a2 + v8 + 72);
      *(v14 + 77) = *(a2 + v8 + 77);
      v14[9] = v17;
      v14[11] = *(a2 + v8 + 88);
      v8 += 96;
      if (!--v6)
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

void sub_23ECCC1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(v5 + 16) == 1)
  {
    *(v5 + 16) = 0;
  }

  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v4, a2, a3, a4);
  _Unwind_Resume(a1);
}

uint64_t ashp::detail::dynamic_array::buffer<ashp::acipc::config::doorbell_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x60uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 96 * a2, 0x1060040457941E9uLL);
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

void ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::detail::dynamic_array::buffer<ashp::acipc::config::doorbell_spec>::buffer(&v13, a2, a3, a4);
    if (*a1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        std::construct_at[abi:se200100]<ashp::acipc::config::doorbell_spec,ashp::acipc::config::doorbell_spec,ashp::acipc::config::doorbell_spec*>(v14 + v8, (a1[2] + v8), v6, v7);
        ++v9;
        v8 += 96;
      }

      while (v9 < *a1);
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
}

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::doorbell_spec::parse(ashp::acipc::config::doorbell_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_spec>(ashp::dynamic_array<ashp::acipc::config::doorbell_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::doorbell_spec::parse(ashp::acipc::config::doorbell_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_spec>(ashp::dynamic_array<ashp::acipc::config::doorbell_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if (**a3)
  {
    return;
  }

  if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
  {
    set_error(**(a3 + 8), "bad key", 0, a4, a5);
    **a3 = 1;
    return;
  }

  v67 = 0;
  v70 = 0;
  v73[16] = 0;
  v74[0] = 0;
  v75[0] = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  memset(v71, 0, sizeof(v71));
  v72 = 0;
  v9 = *(a3 + 8);
  v10 = *v9;
  if (!a2)
  {
    set_error(*v9, "missing object", 0, a4, a5);
    goto LABEL_24;
  }

  v11 = CFGetTypeID(a2);
  if (v11 != CFDictionaryGetTypeID())
  {
    a2 = 0;
  }

  if (!a2)
  {
    set_error(v10, "unexpected object type", 0, v13, v14);
    goto LABEL_24;
  }

  v84 = 0;
  value = ashp::boxed::dictionary::get_value(a2, @"mode", v12, v13);
  v18 = value;
  if (!value)
  {
    v26 = "missing object";
LABEL_22:
    set_error(v10, v26, 0, v16, v17);
    goto LABEL_23;
  }

  v19 = CFGetTypeID(value);
  if (v19 != CFStringGetTypeID())
  {
    v18 = 0;
  }

  if (!v18)
  {
    v26 = "unexpected object type";
    goto LABEL_22;
  }

  if (CFStringCompare(@"index", v18, 0))
  {
    if (CFStringCompare(@"shared_counter", v18, 0))
    {
      if (CFStringCompare(@"shared_timestamp", v18, 0))
      {
        if (CFStringCompare(@"shared_constant", v18, 0))
        {
          set_error(v10, "unexpected mode string", "mode", v20, v21);
LABEL_23:
          set_error_location(v10, @"mode", v22, v23);
          goto LABEL_24;
        }

        v37 = 3;
      }

      else
      {
        v37 = 2;
      }
    }

    else
    {
      v37 = 1;
    }
  }

  else
  {
    v37 = 0;
  }

  v68 = v37;
  v83 = 0;
  if (parse_field_with_default<&(BOOL parse_optional<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(ashp::optional<unsigned int,ashp::optional_traits<unsigned int,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<unsigned int,void>>(&v69, &v82, a2, @"value", v10, &v84))
  {
    if (parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(v71, 0, a2, @"min_interval_usec", v10, &v84))
    {
      memset(v81, 0, sizeof(v81));
      v38 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(parse_symbol(ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>(ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>>((v71 + 4), v81, a2, @"ipc_stage", v10, &v84);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(v81, v39, v40, v41, v42);
      if (v38)
      {
        v80[16] = 0;
        v43 = parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(ashp::optional<ashp::acipc::config::named_target_spec,ashp::optional_traits<ashp::acipc::config::named_target_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::named_target_spec,void>>(v73, v80, a2, @"resource", v10, &v84);
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v80, v44, v45, v46);
        if ((v43 & 1) != 0 && parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(v74, a2, @"vector", v10) && parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v75, a2, @"register", v10) && parse_field_with_default<&(ashp::acipc::config::doorbell_spec::multi_config::parse(ashp::acipc::config::doorbell_spec::multi_config*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_spec::multi_config>(&v78, a2, v10, &v84))
        {
          v48 = ashp::boxed::dictionary::count(a2, v47, v24, v25);
          if (v84 + v48 == 8)
          {
            v52 = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(v81, cf, v49, v50);
            v53 = v67;
            v67 = v81[0];
            v81[0] = v53;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v52, v54, v55, v56);
            v60 = **(a3 + 16);
            v61 = *v60;
            v62 = *v60 + 1;
            if (*v60 == -1)
            {
              ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v58);
              ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v66);
              _os_crash();
              __break(1u);
            }

            else
            {
              v63 = v60[1];
              if (v62 > v63)
              {
                if (v63 <= 8)
                {
                  v64 = 8;
                }

                else
                {
                  v64 = v60[1];
                }

                v65 = (*v60 - 8) < 0;
                if (v62 >= 9)
                {
                  do
                  {
                    if (is_mul_ok(v64, 3uLL))
                    {
                      v64 = (3 * v64) >> 1;
                    }

                    else
                    {
                      v64 = *v60 + 1;
                    }
                  }

                  while (v64 < v62);
                }

                if (v63 < v64)
                {
                  ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::set_capacity(v60, v64, v57, v58, v59);
                  v61 = *v60;
                  v63 = v60[1];
                }
              }

              if (v61 < v63)
              {
                std::construct_at[abi:se200100]<ashp::acipc::config::doorbell_spec,ashp::acipc::config::doorbell_spec,ashp::acipc::config::doorbell_spec*>((v60[2] + 96 * v61), &v67, v57, v58);
                ++*v60;
                goto LABEL_25;
              }
            }

            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v59);
            _os_crash();
            __break(1u);
            return;
          }

          set_error(v10, "unknown keys present", 0, v50, v51);
        }
      }
    }
  }

LABEL_24:
  set_error_location(**(a3 + 8), cf, v24, v25);
  **a3 = 1;
LABEL_25:
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v73, v27, v28, v29);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage((v71 + 4), v30, v31, v32, v33);
  if (v70 == 1)
  {
    v70 = 0;
  }

  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v67, v34, v35, v36);
}

void sub_23ECCC8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&a21, a2, a3, a4);
  ashp::acipc::config::doorbell_spec::~doorbell_spec(&a9, v22, v23, v24);
  _Unwind_Resume(a1);
}

void ashp::acipc::config::doorbell_spec::~doorbell_spec(ashp::acipc::config::doorbell_spec *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 48, a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 3, v5, v6, v7, v8);
  if (*(this + 16) == 1)
  {
    *(this + 16) = 0;
  }

  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v9, v10, v11);
}

void *std::construct_at[abi:se200100]<ashp::acipc::config::doorbell_spec,ashp::acipc::config::doorbell_spec,ashp::acipc::config::doorbell_spec*>(void *result, uint64_t *a2, uint64_t a3, const char *a4)
{
  if (result)
  {
    v5 = result;
    v6 = *a2;
    *a2 = 0;
    *result = v6;
    *(result + 2) = *(a2 + 2);
    *(result + 16) = 0;
    if (*(a2 + 16) == 1)
    {
      *(result + 3) = *(a2 + 3);
      *(result + 16) = 1;
      if (*(a2 + 16) == 1)
      {
        *(a2 + 16) = 0;
      }
    }

    *(result + 5) = *(a2 + 5);
    result[4] = 0;
    result[5] = 0;
    result[3] = 0;
    result[3] = a2[3];
    a2[3] = 0;
    v7 = result[4];
    v8 = a2[5];
    result[4] = a2[4];
    result[5] = v8;
    a2[4] = v7;
    a2[5] = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage((result + 6), (a2 + 6), a3, a4);
    v9 = a2[9];
    *(v5 + 77) = *(a2 + 77);
    v5[9] = v9;
    v5[11] = a2[11];
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
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

      v10 = (v9 + v7);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7 + 8), a2, a3, a4);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v10, v11, v12, v13);
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

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::append(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
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
    v9 = (a2 + 16);
    while (1)
    {
      v10 = v6[2] + 24 * *v6;
      if (!(v10 + v8))
      {
        break;
      }

      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v10 + v8), *(v9 - 2), a3, a4);
      v11 = v10 + v8;
      result = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v11 + 8), *(v9 - 1), v12, v13);
      v14 = *v9;
      v9 += 3;
      *(v11 + 16) = v14;
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

uint64_t ashp::detail::dynamic_array::buffer<ashp::acipc::config::interrupt_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x18uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 24 * a2, 0x10600408C6D3DB4uLL);
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

void ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
LABEL_11:
    __break(1u);
    return;
  }

  ashp::detail::dynamic_array::buffer<ashp::acipc::config::interrupt_spec>::buffer(&v15, a2, a3, a4);
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
      v9[1] = 0;
      v8[1] = v11;
      v8[2] = v9[2];
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

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::interrupt_spec::parse(ashp::acipc::config::interrupt_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::interrupt_spec>(ashp::dynamic_array<ashp::acipc::config::interrupt_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::interrupt_spec::parse(ashp::acipc::config::interrupt_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::interrupt_spec>(ashp::dynamic_array<ashp::acipc::config::interrupt_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    HIDWORD(v71) = 0;
    v69 = 0;
    v70 = 0;
    LOWORD(v71) = 0;
    v9 = *(a3 + 8);
    v10 = *v9;
    if (a2)
    {
      v11 = CFGetTypeID(a2);
      if (v11 != CFDictionaryGetTypeID())
      {
        a2 = 0;
      }

      if (a2)
      {
        v76 = 0;
        if (parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v71, a2, @"vector", v10))
        {
          value = ashp::boxed::dictionary::get_value(a2, @"multi", v14, v15);
          v17 = value;
          if (value)
          {
            v18 = CFGetTypeID(value);
            if (v18 != CFDictionaryGetTypeID())
            {
              v17 = 0;
            }

            if (!v17)
            {
              v24 = "unexpected object type";
              goto LABEL_27;
            }

            if (!parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v71 + 1, v17, @"count", v10))
            {
LABEL_28:
              set_error_location(v10, @"multi", v22, v23);
              goto LABEL_47;
            }

            if (ashp::boxed::dictionary::count(v17, v21, v22, v23) != 1)
            {
              v24 = "unknown keys present";
LABEL_27:
              set_error(v10, v24, 0, v19, v20);
              goto LABEL_28;
            }
          }

          else
          {
            HIDWORD(v71) = 1;
            v76 = 1;
          }

          v74 = 0;
          v75 = 0;
          v25 = _Z24parse_field_with_defaultIXadL_Z14parse_optionalIXadL_ZL12parse_symbolPN4ashp14refcounted_ptrINS1_5boxed6symbolENS1_2cf15refcount_policyEEENS3_6objectEPNS1_5acipc6config13error_contextEEES7_EbPNS1_8optionalIT0_NS1_15optional_traitsISF_vE16default_sentinelEEES9_SD_EENSE_IS7_NS1_17optional_sentinelIXtlNS1_9nullopt_tEEELb1EEEEEEbPSF_NSt3__113type_identityISF_E4typeENS3_10dictionaryES4_SD_Pm(&v75, &v74, a2, @"queue", v10, &v76);
          ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v74, v26, v27, v28);
          if (v25)
          {
            v72 = 0;
            if (_ZNK4ashp8optionalINS_14refcounted_ptrINS_5boxed6symbolENS_2cf15refcount_policyEEENS_17optional_sentinelIXtlNS_9nullopt_tEEELb1EEEE9has_valueEv(&v75, v29, v30, v31))
            {
              v34 = v75;
            }

            else
            {
              v34 = 0;
            }

            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v73, v34, v32, v33);
            v35 = v70;
            v70 = v73;
            v73 = v35;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v73, v36, v37, v38);
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v72, v39, v40, v41);
            v45 = ashp::boxed::dictionary::count(a2, v42, v43, v44);
            if (v76 + v45 == 3)
            {
              v47 = 1;
              goto LABEL_31;
            }

            set_error(v10, "unknown keys present", 0, v31, v46);
          }

          v47 = 0;
LABEL_31:
          ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v75, v29, v30, v31);
          if ((v47 & 1) == 0)
          {
            goto LABEL_47;
          }

          ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v76, cf, v14, v15);
          v48 = v69;
          v69 = v76;
          v76 = v48;
          ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v76, v49, v50, v51);
          v56 = **(a3 + 16);
          v57 = *v56;
          v58 = *v56 + 1;
          if (*v56 == -1)
          {
            ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v54);
            ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v68);
            _os_crash();
            __break(1u);
          }

          else
          {
            v59 = v56[1];
            if (v58 > v59)
            {
              if (v59 <= 8)
              {
                v52 = 8;
              }

              else
              {
                v52 = v56[1];
              }

              v60 = (*v56 - 8) < 0;
              if (v58 >= 9)
              {
                do
                {
                  if (is_mul_ok(v52, 3uLL))
                  {
                    v52 = (3 * v52) >> 1;
                  }

                  else
                  {
                    v52 = *v56 + 1;
                  }
                }

                while (v52 < v58);
              }

              if (v59 < v52)
              {
                ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::set_capacity(v56, v52, v53, v54, v55);
                v57 = *v56;
                v59 = v56[1];
              }
            }

            if (v57 < v59)
            {
              v61 = v56[2];
              if (v61)
              {
                v62 = (v61 + 24 * v57);
                v63 = v69;
                v69 = 0;
                *v62 = v63;
                v64 = v70;
                v70 = 0;
                v62[1] = v64;
                v62[2] = v71;
                ++*v56;
LABEL_48:
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v70, v52, v53, v54);
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v69, v65, v66, v67);
                return;
              }

LABEL_52:
              __break(1u);
              return;
            }
          }

          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v55);
          _os_crash();
          goto LABEL_52;
        }
      }

      else
      {
        set_error(v10, "unexpected object type", 0, v12, v13);
      }
    }

    else
    {
      set_error(*v9, "missing object", 0, a4, a5);
    }

LABEL_47:
    set_error_location(**(a3 + 8), cf, v14, v15);
    **a3 = 1;
    goto LABEL_48;
  }
}

void sub_23ECCD1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&a12, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&a15, v16, v17, v18);
  ashp::acipc::config::interrupt_spec::~interrupt_spec(&a9, v19, v20, v21);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::acipc_driver::handle_get_nominal_state_dump_size(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 2);
  if (this[1050]._os_unfair_lock_opaque)
  {
    ashp::optional<ashp::acipc::config::acipc_config,void>::value(&this[956], v2, v3, v4);
    return this[988]._os_unfair_lock_opaque;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("acipc_driver.cpp", 0x531, "handle_get_nominal_state_dump_size", v4);
    return 0;
  }
}

void ashp::acipc::acipc_driver::handle_append_ipc_driver_state_dump(ashp::acipc::acipc_driver *this, debug_info_capture *a2)
{
  os_unfair_lock_assert_owner(this + 2);
  if (!a2)
  {
    v65 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x517, "handle_append_ipc_driver_state_dump", v7);
    _os_crash();
    __break(1u);
LABEL_37:
    v84 = "copy_debug_info";
    v85 = 77;
    v86 = "driver_debug_object.hpp";
LABEL_39:
    ashp::detail::control_flow::log_guard_else_failure(v86, v85, v84, v71);
    goto LABEL_33;
  }

  if (*(this + 5624) != 1)
  {
    goto LABEL_25;
  }

  ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(this + 5264, v4, v5, v6);
  v8 = (this + 5528);
  os_unfair_lock_lock(this + 1382);
  debug_object_alloc_size = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::get_debug_object_alloc_size(this + 5528, v9, v10, v11);
  v15 = debug_object_alloc_size + 16;
  if (debug_object_alloc_size >= 0xFFFFFFF0)
  {
    v87 = "copy_debug_info";
    v88 = 77;
    v89 = "driver_debug_object.hpp";
    goto LABEL_44;
  }

  if (debug_info_capture::validate_buffer_bounds(a2, v15, v13, v14))
  {
    v18 = (*a2 + *(a2 + 3));
    v18->i32[0] = *(this + 1386);
    v18->i32[1] = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::get_debug_object_alloc_size(this + 5528, v16, v17, v14);
    v18[1] = vrev64_s32(*(this + 5536));
    if (*(this + 694))
    {
      v20 = 0;
      v21 = v18 + 2;
      v22 = 1;
      do
      {
        *v21[2 * v20].i8 = *ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::operator[](this + 694, v20, v19, v14);
        v20 = v22;
        v23 = *(this + 694) > v22++;
      }

      while (v23);
    }
  }

  v24 = *(a2 + 3) + v15;
  *(a2 + 3) = v24;
  if (HIDWORD(v24))
  {
    goto LABEL_43;
  }

  while (1)
  {
    os_unfair_lock_unlock(v8);
    os_unfair_lock_lock(this + 1394);
    v28 = ashp::driver_debug_object<ashp::acipc::detail::doorbell_coordinator::state_change_record>::get_debug_object_alloc_size(this + 5576, v25, v26, v27);
    v31 = v28 + 16;
    if (v28 >= 0xFFFFFFF0)
    {
      v90 = "copy_debug_info";
      v91 = 77;
      v92 = "driver_debug_object.hpp";
LABEL_46:
      ashp::detail::control_flow::log_guard_else_failure(v92, v91, v90, v30);
      goto LABEL_15;
    }

    if (debug_info_capture::validate_buffer_bounds(a2, v31, v29, v30))
    {
      v34 = (*a2 + *(a2 + 3));
      v34->i32[0] = *(this + 1398);
      v34->i32[1] = ashp::driver_debug_object<ashp::acipc::detail::doorbell_coordinator::state_change_record>::get_debug_object_alloc_size(this + 5576, v32, v33, v30);
      v34[1] = vrev64_s32(*(this + 5584));
      if (*(this + 700))
      {
        v36 = 0;
        v37 = v34 + 2;
        v38 = 1;
        do
        {
          v39 = ashp::dynamic_array<ashp::acipc::detail::doorbell_coordinator::state_change_record>::operator[](this + 700, v36, v35, v30);
          v40 = v37 + 19 * v36;
          v41 = *v39;
          *(v40 + 15) = *(v39 + 15);
          *v40 = v41;
          v36 = v38;
          v23 = *(this + 700) > v38++;
        }

        while (v23);
      }
    }

    v42 = *(a2 + 3) + v31;
    *(a2 + 3) = v42;
    if (HIDWORD(v42))
    {
      v90 = "advance_buffer_pointer";
      v91 = 108;
      v92 = "debug_infra.hpp";
      goto LABEL_46;
    }

LABEL_15:
    os_unfair_lock_unlock(this + 1394);
    v8 = (this + 5280);
    os_unfair_lock_lock(this + 1320);
    if (*(this + 5408))
    {
      break;
    }

    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "timer.cpp", 0x1DC, "append_debug_stats", v46);
    _os_crash();
    __break(1u);
LABEL_43:
    v87 = "advance_buffer_pointer";
    v88 = 108;
    v89 = "debug_infra.hpp";
LABEL_44:
    ashp::detail::control_flow::log_guard_else_failure(v89, v88, v87, v14);
  }

  if (*(this + 5400) != 1)
  {
    goto LABEL_24;
  }

  ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(this + 5336, v43, v44, v45);
  os_unfair_lock_lock(this + 1338);
  v50 = ashp::driver_debug_object<ashp::debug::timer::timer_debug_info>::get_debug_object_alloc_size(this + 5352, v47, v48, v49);
  v53 = v50 + 16;
  if (v50 >= 0xFFFFFFF0)
  {
    v93 = "copy_debug_info";
    v94 = 77;
    v95 = "driver_debug_object.hpp";
LABEL_49:
    ashp::detail::control_flow::log_guard_else_failure(v95, v94, v93, v52);
    goto LABEL_23;
  }

  if (debug_info_capture::validate_buffer_bounds(a2, v53, v51, v52))
  {
    v56 = (*a2 + *(a2 + 3));
    v56->i32[0] = *(this + 1342);
    v56->i32[1] = ashp::driver_debug_object<ashp::debug::timer::timer_debug_info>::get_debug_object_alloc_size(this + 5352, v54, v55, v52);
    v56[1] = vrev64_s32(*(this + 5360));
    if (*(this + 672))
    {
      v58 = 0;
      v59 = 1;
      do
      {
        v60 = ashp::dynamic_array<ashp::debug::timer::timer_debug_info>::operator[](this + 672, v58, v57, v52);
        v61 = (&v56[2] + 41 * v58);
        v62 = *v60;
        v63 = v60[1];
        *(v61 + 25) = *(v60 + 25);
        *v61 = v62;
        v61[1] = v63;
        v58 = v59;
        v23 = *(this + 672) > v59++;
      }

      while (v23);
    }
  }

  v64 = *(a2 + 3) + v53;
  *(a2 + 3) = v64;
  if (HIDWORD(v64))
  {
    v93 = "advance_buffer_pointer";
    v94 = 108;
    v95 = "debug_infra.hpp";
    goto LABEL_49;
  }

LABEL_23:
  os_unfair_lock_unlock(this + 1338);
LABEL_24:
  os_unfair_lock_unlock(this + 1320);
LABEL_25:
  if (*(this + 4872) == 1)
  {
    ashp::optional<ashp::acipc::ring_manager,void>::value(this + 4264, v4, v5, v6);
    ashp::acipc::ring_manager::append_state_dump(this + 1066, a2);
  }

  os_unfair_lock_assert_owner(this + 2);
  v65 = (this + 6072);
  os_unfair_lock_lock(this + 1518);
  v69 = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::ipc_state_debug_info>::get_debug_object_alloc_size(this + 6072, v66, v67, v68);
  v72 = v69 + 16;
  if (v69 >= 0xFFFFFFF0)
  {
    goto LABEL_37;
  }

  if (debug_info_capture::validate_buffer_bounds(a2, v72, v70, v71))
  {
    v75 = (*a2 + *(a2 + 3));
    v75->i32[0] = *(this + 1522);
    v75->i32[1] = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::ipc_state_debug_info>::get_debug_object_alloc_size(this + 6072, v73, v74, v71);
    v75[1] = vrev64_s32(*(this + 6080));
    if (*(this + 762))
    {
      v77 = 0;
      v78 = v75 + 2;
      v79 = 1;
      do
      {
        v80 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::ipc_state_debug_info>::operator[](this + 762, v77, v76, v71);
        v81 = &v78[3 * v77];
        v82 = *v80;
        v81[2] = *(v80 + 16);
        *v81->i8 = v82;
        v77 = v79;
        v23 = *(this + 762) > v79++;
      }

      while (v23);
    }
  }

  v83 = *(a2 + 3) + v72;
  *(a2 + 3) = v83;
  if (HIDWORD(v83))
  {
    v84 = "advance_buffer_pointer";
    v85 = 108;
    v86 = "debug_infra.hpp";
    goto LABEL_39;
  }

LABEL_33:

  os_unfair_lock_unlock(v65);
}

void sub_23ECCD83C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 1338);
  os_unfair_lock_unlock(v1);
  _Unwind_Resume(a1);
}

uint64_t ashp::driver_debug_object<ashp::acipc::detail::driver_debug::ipc_state_debug_info>::get_debug_object_alloc_size(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!*(a1 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!is_mul_ok(v4, 0x18uLL) || (result = 24 * v4, (24 * v4) >> 32))
  {
    ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", a4);
    return 0;
  }

  return result;
}

uint64_t ashp::dynamic_array<ashp::acipc::detail::driver_debug::ipc_state_debug_info>::operator[](unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1 > a2)
  {
    return a1[2] + 24 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::acipc_driver::handle_set_power_target(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 2);

  ashp::acipc::acipc_driver::sleep_state_machine(this);
}

void ashp::acipc::acipc_driver::sleep_state_machine(const os_unfair_lock *this)
{
  v4 = this;
  v114 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  v5 = 5736;
  *buf = 4;
  LOBYTE(v105) = 1;
  v8 = ashp::operator==<int,0>((v4 + 5736), buf, v6, v7);
  if (v8 && *(v4 + 29))
  {
    os_unfair_lock_assert_owner(v4 + 2);
    *buf = 4;
    LOBYTE(v105) = 1;
    if ((ashp::operator==<int,0>((v4 + 5736), buf, v9, v10) & 1) == 0)
    {
      v4 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x3AD, "is_sleep_status_valid", v14);
      _os_crash();
      __break(1u);
      goto LABEL_156;
    }

    v3 = v4 + 4096;
    v1 = 5760;
    v2 = 5744;
    v5 = &qword_23ED06000;
    if (v4[5764])
    {
      v15 = ashp::optional<unsigned int,void>::value((v4 + 5744), v11, v12, v13);
      v18 = *(v4 + 1436);
      if (v18 > 2)
      {
        if (v18 == 3)
        {
          *buf = 3;
          LOBYTE(v105) = 1;
          if (ashp::operator==<int,0>((v4 + 5760), buf, v16, v17))
          {
            goto LABEL_30;
          }

          v102 = 0;
          v103 = 1;
          if (ashp::operator==<int,0>((v4 + 5760), &v102, v20, v21))
          {
            goto LABEL_30;
          }

          v100 = 1;
          v101 = 1;
          v15 = ashp::operator==<int,0>((v4 + 5760), &v100, v20, v21);
        }

        else
        {
          if (v18 == 4)
          {
            *buf = 1;
            LOBYTE(v105) = 1;
            if (ashp::operator==<int,0>((v4 + 5760), buf, v16, v17))
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (v18 != 5)
            {
LABEL_21:
              v24 = v4[5740];
              *(v4 + 1434) = 5;
              if ((v24 & 1) == 0)
              {
                v4[5740] = 1;
              }

              log_level = ashp::detail::logging::get_log_level(v15);
              if (log_level >= 2)
              {
                log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (log_level)
                {
                  *buf = 136446722;
                  v105 = "acipc_driver.cpp";
                  v106 = 1024;
                  v107 = 815;
                  v108 = 2082;
                  v109 = "sleep_state_machine";
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sleep status invalid", buf, 0x1Cu);
                }
              }

              if (!ashp::detail::logging::get_log_level(log_level))
              {
                goto LABEL_29;
              }

              if (airship_platform_get_global_logger::once == -1)
              {
LABEL_28:
                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sleep status invalid", "acipc_driver.cpp", 815, "sleep_state_machine");
LABEL_29:
                ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
                ashp::acipc::acipc_driver::raise_ipc_error(v4, 16);
                goto LABEL_30;
              }

LABEL_156:
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              goto LABEL_28;
            }

            *buf = 1;
            LOBYTE(v105) = 1;
            if (ashp::operator==<int,0>((v4 + 5760), buf, v16, v17))
            {
              goto LABEL_30;
            }
          }

          v102 = 0;
          v103 = 1;
          v15 = ashp::operator==<int,0>((v4 + 5760), &v102, v20, v21);
        }
      }

      else if (v18)
      {
        if (v18 == 1)
        {
          *buf = 0;
          LOBYTE(v105) = 1;
          if (ashp::operator==<int,0>((v4 + 5760), buf, v16, v17))
          {
            goto LABEL_30;
          }

          v102 = 1;
          v103 = 1;
          if (ashp::operator==<int,0>((v4 + 5760), &v102, v20, v21))
          {
            goto LABEL_30;
          }

          v100 = 3;
          v101 = 1;
          v15 = ashp::operator==<int,0>((v4 + 5760), &v100, v20, v21);
        }

        else
        {
          if (v18 != 2)
          {
            goto LABEL_21;
          }

          *buf = 3;
          LOBYTE(v105) = 1;
          v15 = ashp::operator==<int,0>((v4 + 5760), buf, v16, v17);
        }
      }

      else
      {
        *buf = 0;
        LOBYTE(v105) = 1;
        if (ashp::operator==<int,0>((v4 + 5760), buf, v16, v17))
        {
          goto LABEL_30;
        }

        v102 = 1;
        v103 = 1;
        v15 = ashp::operator==<int,0>((v4 + 5760), &v102, v20, v21);
      }
    }

    else
    {
      *buf = 0;
      LOBYTE(v105) = 1;
      if (ashp::operator==<int,0>((v4 + 5744), buf, v12, v13))
      {
        goto LABEL_30;
      }

      v102 = 1;
      v103 = 1;
      v15 = ashp::operator==<int,0>((v4 + 5744), &v102, v20, v21);
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_30:
    v26 = *(v4 + 60);
    v99 = *(v5 + 40);
    while (1)
    {
      ashp::optional<unsigned int,void>::value(&v4[v2], v19, v20, v21);
      v27 = *&v4[v2];
      v31 = ashp::optional<unsigned int,void>::value(&v4[v2], v28, v29, v30);
      v34 = *&v4[v2];
      if (v34 <= 2)
      {
        if (v34)
        {
          if (v34 == 1)
          {
            *buf = 3;
            LOBYTE(v105) = 1;
            v62 = ashp::operator==<int,0>(&v4[v1], buf, v32, v33);
            if (v62)
            {
              v63 = ashp::detail::logging::get_log_level(v62);
              if (v63 >= 4)
              {
                v63 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v63)
                {
                  *buf = v99;
                  v105 = "acipc_driver.cpp";
                  v106 = 1024;
                  v107 = 855;
                  v108 = 2082;
                  v109 = "sleep_state_machine";
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sleep status: host sleep", buf, 0x1Cu);
                }
              }

              if (ashp::detail::logging::get_log_level(v63))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sleep status: host sleep", "acipc_driver.cpp", 855, "sleep_state_machine");
              }

              v64 = v3[1652];
              *&v4[v2] = 2;
              if ((v64 & 1) == 0)
              {
                v3[1652] = 1;
              }

              ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
              ashp::driver::update_power_state(v4, 2);
            }
          }

          else if (v34 == 2 && v26 != 2)
          {
            v35 = ashp::detail::logging::get_log_level(v31);
            if (v35 >= 4)
            {
              v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v35)
              {
                *buf = v99;
                v105 = "acipc_driver.cpp";
                v106 = 1024;
                v107 = 864;
                v108 = 2082;
                v109 = "sleep_state_machine";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] exiting host sleep", buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v35))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] exiting host sleep", "acipc_driver.cpp", 864, "sleep_state_machine");
            }

            if (v3[2076] == 1)
            {
              exec_stage_register = ashp::acipc::acipc_driver::read_exec_stage_register(v4);
              v37 = ashp::detail::logging::get_log_level(exec_stage_register);
              if (v37 >= 4)
              {
                v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v37)
                {
                  *buf = 136446978;
                  v105 = "acipc_driver.cpp";
                  v106 = 1024;
                  v107 = 869;
                  v108 = 2082;
                  v109 = "sleep_state_machine";
                  v110 = 1024;
                  *v111 = exec_stage_register;
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] exec_stage during power-on=%u", buf, 0x22u);
                }
              }

              if (ashp::detail::logging::get_log_level(v37))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] exec_stage during power-on=%u", "acipc_driver.cpp", 869, "sleep_state_machine", exec_stage_register);
              }
            }

            ashp::acipc::acipc_driver::update_sleep_control_register(v4, 0);
            v38 = v3[1652];
            *(v4 + 1436) = 3;
            if ((v38 & 1) == 0)
            {
              v3[1652] = 1;
            }

            ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
            ashp::driver::update_power_state(v4, 4);
          }
        }

        else if (v26 == 2)
        {
          v49 = ashp::detail::logging::get_log_level(v31);
          if (v49 >= 4)
          {
            v49 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v49)
            {
              *buf = v99;
              v105 = "acipc_driver.cpp";
              v106 = 1024;
              v107 = 830;
              v108 = 2082;
              v109 = "sleep_state_machine";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] entering host sleep", buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v49))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] entering host sleep", "acipc_driver.cpp", 830, "sleep_state_machine");
          }

          ashp::optional<ashp::acipc::doorbell_coordinator,void>::value((v4 + 5264), v50, v51, v52);
          ashp::acipc::doorbell_coordinator::suspend(v4 + 1316, v53, v54, v55, v56);
          ashp::acipc::acipc_driver::update_sleep_control_register(v4, 3);
          v57 = v3[1652];
          *(v4 + 1436) = 1;
          if ((v57 & 1) == 0)
          {
            v3[1652] = 1;
          }

          ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
          ashp::driver::update_power_state(v4, 3);
        }

        else
        {
          *buf = 1;
          LOBYTE(v105) = 1;
          v81 = ashp::operator==<int,0>(&v4[v1], buf, v32, v33);
          if ((v81 & (v26 == 0)) == 1)
          {
            v82 = ashp::detail::logging::get_log_level(v81);
            if (v82 >= 4)
            {
              v82 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v82)
              {
                *buf = v99;
                v105 = "acipc_driver.cpp";
                v106 = 1024;
                v107 = 839;
                v108 = 2082;
                v109 = "sleep_state_machine";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] entering device sleep", buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v82))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] entering device sleep", "acipc_driver.cpp", 839, "sleep_state_machine");
            }

            ashp::async_notifier::resume((*(v4 + 722) + 16), v83, v84, v85);
            os_unfair_lock_lock(v4 + 1442);
            *(v3 + 838) = 1;
            os_unfair_lock_unlock(v4 + 1442);
            ashp::optional<ashp::acipc::doorbell_coordinator,void>::value((v4 + 5264), v86, v87, v88);
            ashp::acipc::doorbell_coordinator::suspend(v4 + 1316, v89, v90, v91, v92);
            ashp::acipc::acipc_driver::update_sleep_control_register(v4, 1);
            v93 = v3[1652];
            *(v4 + 1436) = 4;
            if ((v93 & 1) == 0)
            {
              v3[1652] = 1;
            }

            ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
            ashp::driver::update_power_state(v4, 1);
          }
        }

        goto LABEL_138;
      }

      if (v34 == 3)
      {
        break;
      }

      if (v34 == 4)
      {
        os_unfair_lock_lock(v4 + 1442);
        v65 = v3[1677];
        os_unfair_lock_unlock(v4 + 1442);
        *buf = 0;
        LOBYTE(v105) = 1;
        v68 = ashp::operator==<int,0>(&v4[v1], buf, v66, v67);
        if (v68)
        {
          v69 = ashp::detail::logging::get_log_level(v68);
          if (v69 >= 4)
          {
            v69 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v69)
            {
              *buf = v99;
              v105 = "acipc_driver.cpp";
              v106 = 1024;
              v107 = 893;
              v108 = 2082;
              v109 = "sleep_state_machine";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sleep status: active", buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v69))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sleep status: active", "acipc_driver.cpp", 893, "sleep_state_machine");
          }

          ashp::acipc::acipc_driver::update_sleep_control_register(v4, 0);
          v70 = v3[1652];
          *(v4 + 1436) = 0;
          if ((v70 & 1) == 0)
          {
            v3[1652] = 1;
          }

          ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
          os_unfair_lock_lock(v4 + 1442);
          v3[1676] = 0;
          os_unfair_lock_unlock(v4 + 1442);
          ashp::async_notifier::suspend((*(v4 + 722) + 16), v71, v72, v73);
          ashp::optional<ashp::acipc::doorbell_coordinator,void>::value((v4 + 5264), v74, v75, v76);
          ashp::acipc::doorbell_coordinator::resume(v4 + 1316, v77, v78, v79, v80);
          ashp::driver::update_power_state(v4, 0);
        }

        else if (v65 & 1 | (v26 != 0))
        {
          v94 = ashp::detail::logging::get_log_level(v68);
          if (v94 >= 4)
          {
            v94 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v94)
            {
              *buf = 136447490;
              v105 = "acipc_driver.cpp";
              v106 = 1024;
              v107 = 907;
              v108 = 2082;
              v109 = "sleep_state_machine";
              v110 = 1024;
              *v111 = v65;
              *&v111[4] = 1024;
              *&v111[6] = v26 == 2;
              v112 = 1024;
              v113 = v26 == 0;
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] wake requested=%u, target host sleep=%u, permit device sleep=%u", buf, 0x2Eu);
            }
          }

          if (ashp::detail::logging::get_log_level(v94))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] wake requested=%u, target host sleep=%u, permit device sleep=%u", "acipc_driver.cpp", 907, "sleep_state_machine", v65, v26 == 2, v26 == 0);
          }

          ashp::acipc::acipc_driver::update_sleep_control_register(v4, 2);
          v95 = v3[1652];
          *(v4 + 1436) = 5;
          if ((v95 & 1) == 0)
          {
            v3[1652] = 1;
          }

          ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
          ashp::async_notifier::suspend((*(v4 + 722) + 16), v96, v97, v98);
        }

        goto LABEL_138;
      }

      if (v34 == 5)
      {
        *buf = 0;
        LOBYTE(v105) = 1;
        v39 = ashp::operator==<int,0>(&v4[v1], buf, v32, v33);
        if (v39)
        {
          v40 = ashp::detail::logging::get_log_level(v39);
          if (v40 >= 4)
          {
            v40 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v40)
            {
              *buf = v99;
              v105 = "acipc_driver.cpp";
              v106 = 1024;
              v107 = 918;
              v108 = 2082;
              v109 = "sleep_state_machine";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sleep status: active", buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v40))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sleep status: active", "acipc_driver.cpp", 918, "sleep_state_machine");
          }

          os_unfair_lock_lock(v4 + 1442);
          v3[1676] = 0;
          os_unfair_lock_unlock(v4 + 1442);
          ashp::acipc::acipc_driver::update_sleep_control_register(v4, 0);
          v41 = v3[1652];
          *(v4 + 1436) = 0;
          if ((v41 & 1) == 0)
          {
            v3[1652] = 1;
          }

LABEL_67:
          ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
          ashp::optional<ashp::acipc::doorbell_coordinator,void>::value((v4 + 5264), v42, v43, v44);
          ashp::acipc::doorbell_coordinator::resume(v4 + 1316, v45, v46, v47, v48);
          ashp::driver::update_power_state(v4, 0);
        }
      }

LABEL_138:
      *buf = v27;
      LOBYTE(v105) = 1;
      if (ashp::operator==<int,0>(&v4[v2], buf, v32, v33))
      {
        goto LABEL_17;
      }
    }

    *buf = 0;
    LOBYTE(v105) = 1;
    if ((ashp::operator==<int,0>(&v4[v1], buf, v32, v33) & 1) == 0)
    {
      v102 = 1;
      v103 = 1;
      if ((ashp::operator==<int,0>(&v4[v1], &v102, v32, v33) & 1) == 0)
      {
        goto LABEL_138;
      }
    }

    v102 = 0;
    v103 = 1;
    v58 = ashp::operator==<int,0>(&v4[v1], &v102, v32, v33);
    if (v58)
    {
      v59 = "active";
    }

    else
    {
      v59 = "device sleep";
    }

    v60 = ashp::detail::logging::get_log_level(v58);
    if (v60 >= 4)
    {
      v60 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v60)
      {
        *buf = 136446978;
        v105 = "acipc_driver.cpp";
        v106 = 1024;
        v107 = 880;
        v108 = 2082;
        v109 = "sleep_state_machine";
        v110 = 2080;
        *v111 = v59;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sleep status: %s", buf, 0x26u);
      }
    }

    if (ashp::detail::logging::get_log_level(v60))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sleep status: %s", "acipc_driver.cpp", 880, "sleep_state_machine", v59);
    }

    v61 = v3[1652];
    *&v4[v2] = 0;
    if ((v61 & 1) == 0)
    {
      v3[1652] = 1;
    }

    goto LABEL_67;
  }

  v22 = ashp::detail::logging::get_log_level(v8);
  if (v22 >= 2)
  {
    v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      *buf = 136446978;
      v105 = "acipc_driver.cpp";
      v106 = 1024;
      v107 = 810;
      v108 = 2082;
      v109 = "sleep_state_machine";
      v110 = 1024;
      *v111 = 4;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] main ipc state is not running (%u) or transport is not set", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v22))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] main ipc state is not running (%u) or transport is not set", "acipc_driver.cpp", 810, "sleep_state_machine", 4);
  }

LABEL_17:
  v23 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver::update_ipc_driver_debug_state(ashp::acipc::acipc_driver *this)
{
  v2 = this + 4096;
  v6 = mach_continuous_time();
  if (v2[1652] == 1)
  {
    ashp::optional<unsigned int,void>::value(this + 5744, v3, v4, v5);
    v7 = *(this + 1436);
  }

  else
  {
    v7 = -1;
  }

  if (v2[1660] == 1)
  {
    v8 = *(this + 1438);
  }

  else
  {
    v8 = -1;
  }

  if (v2[1644] == 1)
  {
    ashp::optional<unsigned int,void>::value(this + 5736, v3, v4, v5);
    v9 = *(this + 1434);
  }

  else
  {
    v9 = -1;
  }

  if (v2[1668] == 1)
  {
    v10 = *(this + 1440);
  }

  else
  {
    v10 = -1;
  }

  os_unfair_lock_lock(this + 1518);
  if (*(this + 1519))
  {
    v13 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::ipc_state_debug_info>::operator[](this + 762, *(this + 1520), v11, v12);
    *v13 = v6;
    *(v13 + 8) = v9;
    *(v13 + 12) = v7;
    *(v13 + 16) = v8;
    *(v13 + 20) = v10;
    v14 = *(this + 1520);
    v15 = __CFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      v17 = *(this + 1519);
    }

    else
    {
      v17 = 0;
    }

    *(this + 1520) = (v16 - v17) % *(this + 1519);
  }

  os_unfair_lock_unlock(this + 1518);
}

void ashp::acipc::acipc_driver::raise_ipc_error(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  ipc_error_description = airship_acipc_get_ipc_error_description(a2);
  log_level = ashp::detail::logging::get_log_level(ipc_error_description);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447234;
      *&buf[4] = "acipc_driver.cpp";
      v18 = 1024;
      v19 = 978;
      v20 = 2082;
      v21 = "raise_ipc_error";
      v22 = 1024;
      v23 = a2;
      v24 = 2080;
      v25 = ipc_error_description;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ACIPC protocol error 0x%08x (%s)", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ACIPC protocol error 0x%08x (%s)", "acipc_driver.cpp", 978, "raise_ipc_error", a2, ipc_error_description);
  }

  *buf = 0;
  v6 = os_parse_boot_arg_int();
  v8 = *buf;
  if (!v6)
  {
    v8 = 0;
  }

  if ((v8 & a2) != 0)
  {
    ashp::detail::base::log_pre_crash_message("Airship ACIPC protocol error", "acipc_driver.cpp", 0x3D7, "raise_ipc_error", v7);
    _os_crash();
    __break(1u);
  }

  os_unfair_lock_lock((a1 + 248));
  os_unfair_lock_lock((a1 + 252));
  if (*(a1 + 257))
  {
    goto LABEL_20;
  }

  v10 = *(a1 + 336) | a2;
  v11 = ashp::detail::logging::get_log_level(v9);
  if (v11 >= 3)
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      v12 = *(a1 + 336);
      *buf = 136447234;
      *&buf[4] = "driver.cpp";
      v19 = 399;
      v20 = 2082;
      v18 = 1024;
      v21 = "set_ipc_error_flags";
      v22 = 1024;
      v23 = v10;
      v24 = 1024;
      LODWORD(v25) = v12;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] updated error state: %u, current %u", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(v11))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] updated error state: %u, current %u", "driver.cpp", 399, "set_ipc_error_flags", v10, *(a1 + 336));
  }

  if (*(a1 + 336) == v10)
  {
LABEL_20:
    os_unfair_lock_unlock((a1 + 252));
  }

  else
  {
    *(a1 + 336) = v10;
    os_unfair_lock_unlock((a1 + 252));
    if (*(a1 + 256) == 1 && *(a1 + 344))
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 344), v14, v15, v16);
      (*(*(a1 + 344) + 16))();
    }
  }

  os_unfair_lock_unlock((a1 + 248));
  v13 = *MEMORY[0x277D85DE8];
}

pthread_rwlock_t **ashp::acipc::acipc_driver::update_sleep_control_register(const os_unfair_lock *this, const char *a2)
{
  os_unfair_lock_assert_owner(this + 2);
  v5 = *&this[1432]._os_unfair_lock_opaque;
  if (!v5 || (v6 = *&this[58]._os_unfair_lock_opaque) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x47E, "update_sleep_control_register", v4);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v5 + 40);
  if (v7 != 4)
  {
    if (v7 == 2)
    {
      v8 = *(v5 + 32);
      v9 = *(v5 + 36);

      return ashp::device_transport::mem_write16(v6, v8, v9, a2);
    }

LABEL_12:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x48A, "update_sleep_control_register", v4);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v11 = *(v5 + 32);
  v12 = *(v5 + 36);

  return ashp::device_transport::mem_write32(v6, v11, v12, a2);
}

uint64_t ashp::acipc::acipc_driver::read_exec_stage_register(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 2);
  if ((this[6]._os_unfair_lock_opaque & 1) != 0 || !*&this[58]._os_unfair_lock_opaque)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x447, "read_exec_stage_register", v5);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  ashp::optional<ashp::acipc::config::acipc_config,void>::value(&this[956], v2, v3, v4);
  if (LOBYTE(this[1004]._os_unfair_lock_opaque) != 4)
  {
LABEL_8:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x449, "read_exec_stage_register", v7);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v8 = *&this[58]._os_unfair_lock_opaque;
  os_unfair_lock_opaque_low = LOBYTE(this[1002]._os_unfair_lock_opaque);
  os_unfair_lock_opaque = this[1003]._os_unfair_lock_opaque;

  return ashp::device_transport::mem_read32(v8, os_unfair_lock_opaque_low, os_unfair_lock_opaque, v6);
}

void ashp::acipc::acipc_driver::handle_probe_exec_stage(const os_unfair_lock *this)
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
      v8 = 267;
      v9 = 2082;
      v10 = "handle_probe_exec_stage";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] probing exec stage register", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] probing exec stage register", "acipc_driver.cpp", 267, "handle_probe_exec_stage");
  }

  ashp::acipc::acipc_driver::probe_exec_stage_register_if_ready(this);
  v4 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver::probe_exec_stage_register_if_ready(const os_unfair_lock *this)
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  if ((this[3]._os_unfair_lock_opaque & 0x100) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x121, "probe_exec_stage_register_if_ready", v3);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  if ((this[6]._os_unfair_lock_opaque & 1) == 0 && *&this[58]._os_unfair_lock_opaque)
  {
    exec_stage_register = ashp::acipc::acipc_driver::read_exec_stage_register(this);
    log_level = ashp::detail::logging::get_log_level(exec_stage_register);
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        v9 = "acipc_driver.cpp";
        v10 = 1024;
        v11 = 292;
        v12 = 2082;
        v13 = "probe_exec_stage_register_if_ready";
        v14 = 1024;
        v15 = exec_stage_register;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] exec stage reg value=%u", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] exec stage reg value=%u", "acipc_driver.cpp", 292, "probe_exec_stage_register_if_ready", exec_stage_register);
    }

    ashp::acipc::acipc_driver::change_to_exec_stage(this, exec_stage_register);
    goto LABEL_18;
  }

  v6 = ashp::detail::logging::get_log_level(v2);
  if (v6 >= 4)
  {
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      *buf = 136446722;
      v9 = "acipc_driver.cpp";
      v10 = 1024;
      v11 = 290;
      v12 = 2082;
      v13 = "probe_exec_stage_register_if_ready";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] not ready to probe exec stage register", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v6))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_17:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] not ready to probe exec stage register", "acipc_driver.cpp", 290, "probe_exec_stage_register_if_ready");
      goto LABEL_18;
    }

LABEL_20:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_17;
  }

LABEL_18:
  v7 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver::change_to_exec_stage(const os_unfair_lock *this, int a2)
{
  LODWORD(v5) = a2;
  v6 = this;
  v127 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  if (v6[24] == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x12C, "change_to_exec_stage", v7);
    _os_crash();
    __break(1u);
    goto LABEL_137;
  }

  v8 = *(v6 + 714);
  if (v8 && *(v8 + 8) == v5)
  {
    goto LABEL_135;
  }

  exec_stage_with_value = ashp::acipc::acipc_driver::find_exec_stage_with_value(v6, v5);
  if (exec_stage_with_value)
  {
    v3 = exec_stage_with_value;
    v112 = v6 + 4096;
    v14 = *(exec_stage_with_value + 16);
    v13 = (exec_stage_with_value + 16);
    if (!v14)
    {
      ashp::acipc::acipc_driver::teardown_current_ipc_stage(v6);
      goto LABEL_89;
    }

    v4 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v13, v10, v11, v12);
    os_unfair_lock_assert_owner(v6 + 2);
    if (v6[24] != 1)
    {
      if (v4)
      {
        current_ipc_stage_name = ashp::acipc::acipc_driver::get_current_ipc_stage_name(v6);
        if (current_ipc_stage_name && CFStringCompare(current_ipc_stage_name, v4, 0) == kCFCompareEqualTo)
        {
          goto LABEL_89;
        }

        v111 = v5;
        ashp::optional<ashp::acipc::config::acipc_config,void>::value((v6 + 3824), v17, v18, v19);
        v5 = ashp::acipc::config::boot_ipc_stage_spec::lookup(*(v6 + 507), *(v6 + 509), v4, v20);
        ashp::optional<ashp::acipc::config::acipc_config,void>::value((v6 + 3824), v21, v22, v23);
        v25 = ashp::acipc::config::main_ipc_stage_spec::lookup(*(v6 + 510), *(v6 + 512), v4, v24);
        if (v5 && v25)
        {
          v6 = "BUG in Airship: ";
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x16E, "change_to_ipc_stage", v26);
          _os_crash();
          __break(1u);
          goto LABEL_143;
        }

        v110 = v25;
        ashp::acipc::acipc_driver::teardown_current_ipc_stage(v6);
        if (!v5)
        {
LABEL_87:
          v17 = v110;
          LODWORD(v5) = v111;
          if (v110)
          {
            ashp::acipc::acipc_driver::setup_main_ipc_stage(v6, v110, v3);
          }

LABEL_89:
          ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v3, v17, v18, v19);
          if (*v3)
          {
            CStringPtr = CFStringGetCStringPtr(*v3, 0x8000100u);
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

          v76 = *(v6 + 714);
          if (v76)
          {
            v76 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v76, v72, v73, v74);
            if (v76)
            {
              v76 = CFStringGetCStringPtr(v76, 0x8000100u);
              if (v76)
              {
                v4 = v76;
              }

              else
              {
                v4 = "???";
              }
            }

            else
            {
              v4 = "(nil)";
            }
          }

          else
          {
            v4 = "None";
          }

          log_level = ashp::detail::logging::get_log_level(v76);
          if (log_level >= 4)
          {
            log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (log_level)
            {
              *buf = 136447490;
              *&buf[4] = "acipc_driver.cpp";
              v117 = 1024;
              v118 = 317;
              v119 = 2082;
              v120 = "change_to_exec_stage";
              v121 = 2080;
              v122 = v2;
              v123 = 1024;
              v124 = v5;
              v125 = 2080;
              v126 = v4;
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] change to exec stage %s (%u) from %s", buf, 0x36u);
            }
          }

          if (!ashp::detail::logging::get_log_level(log_level))
          {
            goto LABEL_107;
          }

          if (airship_platform_get_global_logger::once == -1)
          {
LABEL_106:
            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] change to exec stage %s (%u) from %s", "acipc_driver.cpp", 317, "change_to_exec_stage", v2, v5, v4);
LABEL_107:
            *(v6 + 714) = v3;
            ashp::optional<ashp::acipc::ring_manager,void>::value((v6 + 4264), v78, v79, v80);
            v84 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(*(v6 + 714), v81, v82, v83);
            os_unfair_lock_lock(v6 + 1066);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v113, v84, v85, v86);
            v87 = *(v6 + 594);
            *(v6 + 594) = v113;
            v113 = v87;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v113, v88, v89, v90);
            if (v112[200] == 1)
            {
              v92 = ashp::detail::logging::get_log_level(v91);
              if (v92 >= 2)
              {
                v92 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v92)
                {
                  *buf = 136446722;
                  *&buf[4] = "ring_manager.cpp";
                  v117 = 1024;
                  v118 = 171;
                  v119 = 2082;
                  v120 = "set_exec_stage";
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ring manager is in reset", buf, 0x1Cu);
                }
              }

              if (ashp::detail::logging::get_log_level(v92))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ring manager is in reset", "ring_manager.cpp", 171, "set_exec_stage");
              }
            }

            else
            {
              for (i = *(v6 + 595); i; i = *(i + 8))
              {
                os_unfair_lock_assert_owner(v6 + 1066);
                if ((*(i + 32) || *(i + 36) == 1) && !ashp::acipc::ring_manager::is_tr_supported_in_current_exec_stage((v6 + 4264), i))
                {
                  ashp::acipc::ring_manager::recompute_tr_availability(v6 + 1066, i);
                  ashp::acipc::ring_manager::request_tr_close(v6 + 1066, i, 3);
                }
              }

              for (j = *(v6 + 598); j; j = *(j + 8))
              {
                os_unfair_lock_assert_owner(v6 + 1066);
                if (*(j + 32) && !ashp::acipc::ring_manager::is_tr_supported_in_current_exec_stage((v6 + 4264), j))
                {
                  ashp::acipc::ring_manager::recompute_cr_availability(v6 + 1066, j);
                  ashp::acipc::ring_manager::request_cr_close(v6 + 1066, j, 3);
                }
              }

              ashp::acipc::ring_manager::recompute_closed_ring_availability(v6 + 1066);
            }

            os_unfair_lock_unlock(v6 + 1066);
            ashp::optional<ashp::interrupt,void>::value((v6 + 4880), v95, v96, v97);
            v101 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(*(v6 + 714), v98, v99, v100);
            os_unfair_lock_lock(v6 + 1220);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(buf, v101, v102, v103);
            v104 = *(v6 + 613);
            *(v6 + 613) = *buf;
            *buf = v104;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v105, v106, v107);
            if ((v112[800] & 1) == 0)
            {
              for (k = *(v6 + 614); k; k = *(k + 8))
              {
                if (*(k + 32) && !ashp::acipc::memregion_manager::is_region_supported_in_current_exec_stage((v6 + 4880), k))
                {
                  ashp::acipc::memregion_manager::recompute_region_availability(v6 + 1220, k);
                  ashp::acipc::memregion_manager::request_region_unmap(v6 + 1220, k, 3);
                }
              }

              ashp::acipc::memregion_manager::recompute_unmapped_region_availability(v6 + 1220);
            }

            os_unfair_lock_unlock(v6 + 1220);
            ashp::driver::update_exec_stage(v6, v5);
            goto LABEL_135;
          }

LABEL_139:
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          goto LABEL_106;
        }

        os_unfair_lock_assert_owner(v6 + 2);
        if (!*(v6 + 715) && !*(v6 + 716))
        {
          *(v6 + 715) = v5;
          v113 = v6;
          v114 = 1;
          v29 = ashp::detail::logging::get_log_level(v27);
          if (v29 >= 3)
          {
            v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v29)
            {
              *buf = 136446722;
              *&buf[4] = "acipc_driver.cpp";
              v117 = 1024;
              v118 = 402;
              v119 = 2082;
              v120 = "setup_boot_ipc_stage";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting up boot ipc stage", buf, 0x1Cu);
            }
          }

          if (!ashp::detail::logging::get_log_level(v29))
          {
            goto LABEL_21;
          }

          if (airship_platform_get_global_logger::once == -1)
          {
LABEL_20:
            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting up boot ipc stage", "acipc_driver.cpp", 402, "setup_boot_ipc_stage");
LABEL_21:
            ashp::optional<ashp::acipc::boot_manager,void>::value((v6 + 4208), v30, v31, v32);
            os_unfair_lock_lock(v6 + 1052);
            v33 = v112[116];
            v35 = ashp::detail::logging::get_log_level(v34);
            if (v33)
            {
              if (v35 >= 3)
              {
                v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v35)
                {
                  *buf = 136446722;
                  *&buf[4] = "boot_manager.cpp";
                  v117 = 1024;
                  v118 = 60;
                  v119 = 2082;
                  v120 = "exit_reset";
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] boot manager exiting reset", buf, 0x1Cu);
                }
              }

              if (ashp::detail::logging::get_log_level(v35))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] boot manager exiting reset", "boot_manager.cpp", 60, "exit_reset");
              }

              v112[116] = 0;
            }

            else
            {
              if (v35 >= 2)
              {
                v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v35)
                {
                  *buf = 136446722;
                  *&buf[4] = "boot_manager.cpp";
                  v117 = 1024;
                  v118 = 59;
                  v119 = 2082;
                  v120 = "exit_reset";
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] boot manager is already out of reset", buf, 0x1Cu);
                }
              }

              if (ashp::detail::logging::get_log_level(v35))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] boot manager is already out of reset", "boot_manager.cpp", 59, "exit_reset");
              }
            }

            os_unfair_lock_unlock(v6 + 1052);
            ashp::optional<ashp::acipc::boot_manager,void>::value((v6 + 4208), v37, v38, v39);
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v5, v40, v41, v42);
            v43 = *v5;
            os_unfair_lock_lock(v6 + 1052);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v115, v43, v44, v45);
            v46 = *(v6 + 527);
            *(v6 + 527) = v115;
            v115 = v46;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v115, v47, v48, v49);
            if (v112[116] == 1)
            {
              v51 = ashp::detail::logging::get_log_level(v50);
              if (v51 >= 2)
              {
                v51 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v51)
                {
                  *buf = 136446722;
                  *&buf[4] = "boot_manager.cpp";
                  v117 = 1024;
                  v118 = 69;
                  v119 = 2082;
                  v120 = "set_ipc_stage";
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] boot manager is in reset", buf, 0x1Cu);
                }
              }

              if (ashp::detail::logging::get_log_level(v51))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] boot manager is in reset", "boot_manager.cpp", 69, "set_ipc_stage");
              }
            }

            else
            {
              if (v43)
              {
                v50 = CFStringGetCStringPtr(v43, 0x8000100u);
                if (v50)
                {
                  v52 = v50;
                }

                else
                {
                  v52 = "???";
                }
              }

              else
              {
                v52 = "(nil)";
              }

              v53 = ashp::detail::logging::get_log_level(v50);
              if (v53 >= 3)
              {
                v53 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v53)
                {
                  *buf = 136446978;
                  *&buf[4] = "boot_manager.cpp";
                  v117 = 1024;
                  v118 = 70;
                  v119 = 2082;
                  v120 = "set_ipc_stage";
                  v121 = 2080;
                  v122 = v52;
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] new ipc stage: %s", buf, 0x26u);
                }
              }

              if (ashp::detail::logging::get_log_level(v53))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] new ipc stage: %s", "boot_manager.cpp", 70, "set_ipc_stage", v52);
              }

              v57 = *(v6 + 529);
              if (v57)
              {
                v58 = MEMORY[0x277D86220];
                do
                {
                  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v57 + 40), v54, v55, v56);
                  v59 = *(v57 + 40);
                  if (v59)
                  {
                    v59 = CFStringGetCStringPtr(v59, 0x8000100u);
                    if (v59)
                    {
                      v60 = v59;
                    }

                    else
                    {
                      v60 = "???";
                    }
                  }

                  else
                  {
                    v60 = "(nil)";
                  }

                  v61 = ashp::detail::logging::get_log_level(v59);
                  if (v61 >= 4)
                  {
                    v61 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
                    if (v61)
                    {
                      *buf = 136446978;
                      *&buf[4] = "boot_manager.cpp";
                      v117 = 1024;
                      v118 = 73;
                      v119 = 2082;
                      v120 = "set_ipc_stage";
                      v121 = 2080;
                      v122 = v60;
                      _os_log_impl(&dword_23EC8B000, v58, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] controller ipc stage: %s", buf, 0x26u);
                    }
                  }

                  if (ashp::detail::logging::get_log_level(v61))
                  {
                    if (airship_platform_get_global_logger::once != -1)
                    {
                      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                    }

                    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] controller ipc stage: %s", "boot_manager.cpp", 73, "set_ipc_stage", v60);
                  }

                  v65 = *v57;
                  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v6 + 527, v62, v63, v64);
                  v66 = *(v6 + 527);
                  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v57 + 40), v67, v68, v69);
                  v70 = *(v57 + 40);
                  v71 = (v66 | v70) == 0;
                  if (v66 && v70)
                  {
                    v71 = CFStringCompare(v66, *(v57 + 40), 0) == kCFCompareEqualTo;
                  }

                  ashp::acipc::boot_controller::set_available(v65, v71);
                  if (*(v57 + 32) == 1)
                  {
                    *(v57 + 32) = 0;
                    ashp::acipc::boot_controller::stop(*v57, 1);
                  }

                  v57 = *(v57 + 8);
                }

                while (v57);
              }
            }

            os_unfair_lock_unlock(v6 + 1052);
            if (v114 == 1)
            {
              v114 = 0;
            }

            ashp::deferred_action<ashp::acipc::acipc_driver::setup_boot_ipc_stage(ashp::acipc::config::boot_ipc_stage_spec const*,ashp::acipc::config::exec_stage_spec const*)::$_0>::~deferred_action(&v113);
            goto LABEL_87;
          }

LABEL_143:
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          goto LABEL_20;
        }

        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x18F, "setup_boot_ipc_stage", v28);
        _os_crash();
        __break(1u);
        goto LABEL_141;
      }

LABEL_138:
      v6 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x167, "change_to_ipc_stage", v15);
      _os_crash();
      __break(1u);
      goto LABEL_139;
    }

LABEL_137:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x166, "change_to_ipc_stage", v15);
    _os_crash();
    __break(1u);
    goto LABEL_138;
  }

  v36 = ashp::detail::logging::get_log_level(0);
  if (v36 >= 2)
  {
    v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v36)
    {
      *buf = 136446978;
      *&buf[4] = "acipc_driver.cpp";
      v117 = 1024;
      v118 = 306;
      v119 = 2082;
      v120 = "change_to_exec_stage";
      v121 = 1024;
      LODWORD(v122) = v5;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to find stage for value, %u", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v36))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_35:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to find stage for value, %u", "acipc_driver.cpp", 306, "change_to_exec_stage", v5);
      goto LABEL_135;
    }

LABEL_141:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_35;
  }

LABEL_135:
  v109 = *MEMORY[0x277D85DE8];
}

void sub_23ECD051C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  os_unfair_lock_unlock(v12 + 1052);
  ashp::deferred_action<ashp::acipc::acipc_driver::setup_boot_ipc_stage(ashp::acipc::config::boot_ipc_stage_spec const*,ashp::acipc::config::exec_stage_spec const*)::$_0>::~deferred_action(va);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::acipc_driver::find_exec_stage_with_value(const os_unfair_lock *this, int a2)
{
  LODWORD(v2) = a2;
  v31 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  if ((this[3]._os_unfair_lock_opaque & 0x100) == 0)
  {
    v2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x4AF, "find_exec_stage_with_value", v7);
    _os_crash();
    __break(1u);
    goto LABEL_27;
  }

  v8 = ashp::optional<ashp::acipc::config::acipc_config,void>::value(&this[956], v4, v5, v6);
  v12 = *&this[976]._os_unfair_lock_opaque;
  if (!v12)
  {
LABEL_6:
    log_level = ashp::detail::logging::get_log_level(v8);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        v22 = "acipc_driver.cpp";
        v23 = 1024;
        v24 = 1208;
        v25 = 2082;
        v26 = "find_exec_stage_with_value";
        v27 = 1024;
        v28 = v2;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] no exec stage found for value %u", buf, 0x22u);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      goto LABEL_12;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_11:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] no exec stage found for value %u", "acipc_driver.cpp", 1208, "find_exec_stage_with_value", v2);
LABEL_12:
      v13 = 0;
      goto LABEL_25;
    }

LABEL_27:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_11;
  }

  v13 = *&this[980]._os_unfair_lock_opaque;
  v14 = 24 * v12;
  while (*(v13 + 8) != v2)
  {
    v13 += 24;
    v14 -= 24;
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v13, v9, v10, v11);
  CStringPtr = *v13;
  if (*v13)
  {
    CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
    if (CStringPtr)
    {
      v17 = CStringPtr;
    }

    else
    {
      v17 = "???";
    }
  }

  else
  {
    v17 = "(nil)";
  }

  v18 = ashp::detail::logging::get_log_level(CStringPtr);
  if (v18 >= 3)
  {
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      *buf = 136447234;
      v22 = "acipc_driver.cpp";
      v23 = 1024;
      v24 = 1204;
      v25 = 2082;
      v26 = "find_exec_stage_with_value";
      v27 = 1024;
      v28 = v2;
      v29 = 2080;
      v30 = v17;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] value %u matches to exec stage: %s", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v18))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] value %u matches to exec stage: %s", "acipc_driver.cpp", 1204, "find_exec_stage_with_value", v2, v17);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

void ashp::acipc::acipc_driver::teardown_current_ipc_stage(const os_unfair_lock *this)
{
  v1 = this;
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  if (*(v1 + 715))
  {
    if (*(v1 + 716))
    {
      v1 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x17E, "teardown_current_ipc_stage", v3);
      _os_crash();
      __break(1u);
      goto LABEL_21;
    }

    log_level = ashp::detail::logging::get_log_level(v2);
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        v8 = "acipc_driver.cpp";
        v9 = 1024;
        v10 = 385;
        v11 = 2082;
        v12 = "teardown_current_ipc_stage";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tearing down boot ipc stage", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] tearing down boot ipc stage", "acipc_driver.cpp", 385, "teardown_current_ipc_stage");
    }

    ashp::acipc::acipc_driver::teardown_boot_ipc_stage(v1);
  }

  if (*(v1 + 716))
  {
    v5 = ashp::detail::logging::get_log_level(v2);
    if (v5 >= 4)
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        *buf = 136446722;
        v8 = "acipc_driver.cpp";
        v9 = 1024;
        v10 = 390;
        v11 = 2082;
        v12 = "teardown_current_ipc_stage";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tearing down main ipc stage", buf, 0x1Cu);
      }
    }

    if (!ashp::detail::logging::get_log_level(v5))
    {
      goto LABEL_18;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_17:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] tearing down main ipc stage", "acipc_driver.cpp", 390, "teardown_current_ipc_stage");
LABEL_18:
      ashp::acipc::acipc_driver::teardown_main_ipc_stage(v1);
      goto LABEL_19;
    }

LABEL_21:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_17;
  }

LABEL_19:
  v6 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver::teardown_boot_ipc_stage(const os_unfair_lock *this)
{
  v1 = this;
  v56 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  *&v1[1430]._os_unfair_lock_opaque = 0;
  v3 = "external";
  if ((v1[3]._os_unfair_lock_opaque & 0x10000) == 0 && !LOBYTE(v1[6]._os_unfair_lock_opaque))
  {
    v3 = "ipc stage";
  }

  log_level = ashp::detail::logging::get_log_level(v2);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446978;
      v47 = "acipc_driver.cpp";
      v48 = 1024;
      v49 = 413;
      v50 = 2082;
      v51 = "teardown_boot_ipc_stage";
      v52 = 2080;
      v53 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reset type: %s", buf, 0x26u);
    }
  }

  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_10;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reset type: %s", "acipc_driver.cpp", 413, "teardown_boot_ipc_stage", v3);
LABEL_10:
    ashp::optional<ashp::acipc::boot_manager,void>::value(&v1[1052], v5, v6, v7);
    v44 = (v1[3]._os_unfair_lock_opaque & 0x10000) != 0 ? 0 : LOBYTE(v1[6]._os_unfair_lock_opaque) ^ 1;
    os_unfair_lock_lock(&v1[1052]);
    os_unfair_lock_opaque_low = LOBYTE(v1[1053]._os_unfair_lock_opaque);
    v10 = ashp::detail::logging::get_log_level(v9);
    v43 = v1;
    if (os_unfair_lock_opaque_low == 1)
    {
      break;
    }

    if (v10 >= 3)
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        *buf = 136446722;
        v47 = "boot_manager.cpp";
        v48 = 1024;
        v49 = 25;
        v50 = 2082;
        v51 = "enter_reset";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] boot manager entering reset", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v10))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] boot manager entering reset", "boot_manager.cpp", 25, "enter_reset");
    }

    LOBYTE(v1[1053]._os_unfair_lock_opaque) = 1;
    v14 = *&v1[1054]._os_unfair_lock_opaque;
    *&v1[1054]._os_unfair_lock_opaque = 0;
    v45 = v14;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v45, v11, v12, v13);
    LOBYTE(v1[1056]._os_unfair_lock_opaque) = 0;
    v16 = ashp::detail::logging::get_log_level(v15);
    if (v16 >= 3)
    {
      v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        *buf = 136446978;
        v47 = "boot_manager.cpp";
        v48 = 1024;
        v49 = 30;
        v50 = 2082;
        v51 = "enter_reset";
        v52 = 1024;
        LODWORD(v53) = v44;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reset type=%u", buf, 0x22u);
      }
    }

    v17 = ashp::detail::logging::get_log_level(v16);
    if (v17)
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reset type=%u", "boot_manager.cpp", 30, "enter_reset", v44);
    }

    v18 = ashp::detail::logging::get_log_level(v17);
    if (v18 >= 4)
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        *buf = 136446978;
        v47 = "boot_manager.cpp";
        v48 = 1024;
        v49 = 40;
        v50 = 2082;
        v51 = "enter_reset";
        v52 = 1024;
        LODWORD(v53) = v44;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stop reason %u", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v18))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] stop reason %u", "boot_manager.cpp", 40, "enter_reset", v44);
    }

    v22 = *&v1[1058]._os_unfair_lock_opaque;
    if (!v22)
    {
      goto LABEL_87;
    }

    v23 = MEMORY[0x277D86220];
    while (1)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v22 + 5, v19, v20, v21);
      CStringPtr = v22[5];
      if (CStringPtr)
      {
        CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
        if (CStringPtr)
        {
          v25 = CStringPtr;
        }

        else
        {
          v25 = "???";
        }
      }

      else
      {
        v25 = "(nil)";
      }

      v26 = ashp::detail::logging::get_log_level(CStringPtr);
      if (v26 >= 4)
      {
        v26 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          *buf = 136446978;
          v47 = "boot_manager.cpp";
          v48 = 1024;
          v49 = 43;
          v50 = 2082;
          v51 = "enter_reset";
          v52 = 2080;
          v53 = v25;
          _os_log_impl(&dword_23EC8B000, v23, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting boot controller for ipc stage %s to unavailable", buf, 0x26u);
        }
      }

      if (ashp::detail::logging::get_log_level(v26))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting boot controller for ipc stage %s to unavailable", "boot_manager.cpp", 43, "enter_reset", v25);
      }

      ashp::acipc::boot_controller::set_available(*v22, 0);
      if (*(v22 + 32) == 1)
      {
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v22 + 5, v27, v28, v29);
        v30 = v22[5];
        if (v30)
        {
          v30 = CFStringGetCStringPtr(v30, 0x8000100u);
          if (v30)
          {
            v31 = v30;
          }

          else
          {
            v31 = "???";
          }
        }

        else
        {
          v31 = "(nil)";
        }

        v32 = ashp::detail::logging::get_log_level(v30);
        if (v32 >= 4)
        {
          v32 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          if (v32)
          {
            *buf = 136446978;
            v47 = "boot_manager.cpp";
            v48 = 1024;
            v49 = 47;
            v50 = 2082;
            v51 = "enter_reset";
            v52 = 2080;
            v53 = v31;
            _os_log_impl(&dword_23EC8B000, v23, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stopping boot controller for ipc stage %s", buf, 0x26u);
          }
        }

        if (ashp::detail::logging::get_log_level(v32))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] stopping boot controller for ipc stage %s", "boot_manager.cpp", 47, "enter_reset", v31);
        }

        *(v22 + 32) = 0;
        ashp::acipc::boot_controller::stop(*v22, v44);
      }

      v33 = *v22;
      os_unfair_lock_lock(*v22 + 4);
      if ((v33[114]._os_unfair_lock_opaque & 1) == 0)
      {
        if (v33[118]._os_unfair_lock_opaque)
        {
          break;
        }
      }

      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v33[50]._os_unfair_lock_opaque, v34, v35, v36);
      v38 = *&v33[50]._os_unfair_lock_opaque;
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

      os_unfair_lock_opaque = v33[118]._os_unfair_lock_opaque;
      v41 = ashp::detail::logging::get_log_level(v38);
      if (v41 >= 3)
      {
        v41 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (v41)
        {
          *buf = 136447234;
          v47 = "boot_controller.cpp";
          v48 = 1024;
          v49 = 483;
          v50 = 2082;
          v51 = "ipc_reset_occurred";
          v52 = 2080;
          v53 = v39;
          v54 = 1024;
          v55 = os_unfair_lock_opaque;
          _os_log_impl(&dword_23EC8B000, v23, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) image_state=%u", buf, 0x2Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v41))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) image_state=%u", "boot_controller.cpp", 483, "ipc_reset_occurred", v39, os_unfair_lock_opaque);
      }

      if (v33[118]._os_unfair_lock_opaque == 1)
      {
        v33[118]._os_unfair_lock_opaque = 2;
        ashp::acipc::boot_controller::recompute_state(v33);
      }

      os_unfair_lock_unlock(v33 + 4);
      v22 = v22[1];
      if (!v22)
      {
        goto LABEL_87;
      }
    }

    v3 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x1E2, "ipc_reset_occurred", v37);
    v1 = v43;
    _os_crash();
    __break(1u);
LABEL_89:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  if (v10 >= 2)
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      *buf = 136446722;
      v47 = "boot_manager.cpp";
      v48 = 1024;
      v49 = 24;
      v50 = 2082;
      v51 = "enter_reset";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] boot manager is already in reset", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v10))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] boot manager is already in reset", "boot_manager.cpp", 24, "enter_reset");
  }

LABEL_87:
  os_unfair_lock_unlock(v43 + 1052);
  v42 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver::teardown_main_ipc_stage(const os_unfair_lock *this)
{
  v1 = this;
  v224 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  *(v1 + 716) = 0;
  log_level = ashp::detail::logging::get_log_level(v2);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      *&buf[4] = "acipc_driver.cpp";
      v220 = 1024;
      *v221 = 503;
      *&v221[4] = 2082;
      *&v221[6] = "teardown_main_ipc_stage";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tearing down main ipc stage", buf, 0x1Cu);
    }
  }

  v4 = ashp::detail::logging::get_log_level(log_level);
  if (v4)
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] tearing down main ipc stage", "acipc_driver.cpp", 503, "teardown_main_ipc_stage");
  }

  v5 = "external";
  if ((v1[14] & 1) == 0 && !v1[24])
  {
    v5 = "ipc stage";
  }

  v6 = ashp::detail::logging::get_log_level(v4);
  if (v6 >= 4)
  {
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      *buf = 136446978;
      *&buf[4] = "acipc_driver.cpp";
      v220 = 1024;
      *v221 = 504;
      *&v221[4] = 2082;
      *&v221[6] = "teardown_main_ipc_stage";
      v222 = 2080;
      v223 = v5;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reset type: %s", buf, 0x26u);
    }
  }

  if (ashp::detail::logging::get_log_level(v6))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reset type: %s", "acipc_driver.cpp", 504, "teardown_main_ipc_stage", v5);
  }

  v10 = (v1 + 4880);
  ashp::optional<ashp::interrupt,void>::value((v1 + 4880), v7, v8, v9);
  v11 = v1 + 4096;
  if (v1[14])
  {
    LODWORD(v12) = 0;
  }

  else
  {
    LODWORD(v12) = v1[24] ^ 1;
  }

  os_unfair_lock_lock(v1 + 1220);
  if ((v1[4896] & 1) == 0)
  {
    v14 = ashp::detail::logging::get_log_level(v13);
    v15 = "memregion_manager.cpp";
    if (v14 >= 4)
    {
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        *buf = 136446722;
        *&buf[4] = "memregion_manager.cpp";
        v220 = 1024;
        *v221 = 32;
        *&v221[4] = 2082;
        *&v221[6] = "enter_reset";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] entering reset", buf, 0x1Cu);
      }
    }

    if (!ashp::detail::logging::get_log_level(v14))
    {
      goto LABEL_28;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_267;
  }

  while (1)
  {
    os_unfair_lock_unlock(v10);
    v10 = (v1 + 4264);
    ashp::optional<ashp::acipc::ring_manager,void>::value((v1 + 4264), v25, v26, v27);
    if (v1[14])
    {
      v28 = 0;
    }

    else
    {
      v28 = v1[24] ^ 1;
    }

    os_unfair_lock_lock(v1 + 1066);
    v29 = v11[200];
    v31 = ashp::detail::logging::get_log_level(v30);
    if (v29 == 1)
    {
      if (v31 >= 2)
      {
        v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          *buf = 136446722;
          *&buf[4] = "ring_manager.cpp";
          v220 = 1024;
          *v221 = 56;
          *&v221[4] = 2082;
          *&v221[6] = "enter_reset";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ring manager already in reset", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v31))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ring manager already in reset", "ring_manager.cpp", 56, "enter_reset");
      }
    }

    else
    {
      if (v31 >= 4)
      {
        v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          *buf = 136446722;
          *&buf[4] = "ring_manager.cpp";
          v220 = 1024;
          *v221 = 57;
          *&v221[4] = 2082;
          *&v221[6] = "enter_reset";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] entering reset", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v31))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] entering reset", "ring_manager.cpp", 57, "enter_reset");
      }

      v11[200] = 1;
      v35 = *(v1 + 594);
      *(v1 + 594) = 0;
      v218 = v35;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v218, v32, v33, v34);
      v37 = ashp::detail::logging::get_log_level(v36);
      if (v37 >= 4)
      {
        v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v37)
        {
          *buf = 136446978;
          *&buf[4] = "ring_manager.cpp";
          v220 = 1024;
          *v221 = 61;
          *&v221[4] = 2082;
          *&v221[6] = "enter_reset";
          v222 = 1024;
          LODWORD(v223) = v28;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reset type %u", buf, 0x22u);
        }
      }

      v38 = ashp::detail::logging::get_log_level(v37);
      if (v38)
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reset type %u", "ring_manager.cpp", 61, "enter_reset", v28);
      }

      if (v28 == 1)
      {
        v39 = 3;
      }

      else
      {
        v39 = 0;
      }

      if (v28)
      {
        v40 = v39;
      }

      else
      {
        v40 = 2;
      }

      v41 = ashp::detail::logging::get_log_level(v38);
      if (v41 >= 4)
      {
        v41 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v41)
        {
          *buf = 136446978;
          *&buf[4] = "ring_manager.cpp";
          v220 = 1024;
          *v221 = 71;
          *&v221[4] = 2082;
          *&v221[6] = "enter_reset";
          v222 = 1024;
          LODWORD(v223) = v40;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stop reason %u", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v41))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] stop reason %u", "ring_manager.cpp", 71, "enter_reset", v40);
      }

      v42 = *(v1 + 595);
      if (v42)
      {
        v43 = MEMORY[0x277D86220];
        do
        {
          ashp::acipc::ring_manager::recompute_tr_availability(v1 + 1066, v42);
          os_unfair_lock_assert_owner(v1 + 1066);
          v45 = *(v42 + 32);
          if (v45 || *(v42 + 36) == 1)
          {
            if (*(v42 + 39) == 1)
            {
              v46 = ashp::detail::logging::get_log_level(v44);
              if (v46 >= 4)
              {
                v46 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
                if (v46)
                {
                  v47 = *(v42 + 96);
                  *buf = 136446978;
                  *&buf[4] = "ring_manager.cpp";
                  v220 = 1024;
                  *v221 = 78;
                  *&v221[4] = 2082;
                  *&v221[6] = "enter_reset";
                  v222 = 1024;
                  LODWORD(v223) = v47;
                  _os_log_impl(&dword_23EC8B000, v43, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stopping trid %hu", buf, 0x22u);
                }
              }

              if (ashp::detail::logging::get_log_level(v46))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] stopping trid %hu", "ring_manager.cpp", 78, "enter_reset", *(v42 + 96));
              }

              ashp::acipc::ring_manager::stop_tr(v1 + 1066, v42, v40);
              v45 = *(v42 + 32);
            }

            if (v45)
            {
              v48 = ashp::detail::logging::get_log_level(v44);
              if (v48 >= 4)
              {
                v48 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
                if (v48)
                {
                  v49 = *(v42 + 96);
                  *buf = 136446978;
                  *&buf[4] = "ring_manager.cpp";
                  v220 = 1024;
                  *v221 = 83;
                  *&v221[4] = 2082;
                  *&v221[6] = "enter_reset";
                  v222 = 1024;
                  LODWORD(v223) = v49;
                  _os_log_impl(&dword_23EC8B000, v43, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] closing trid %hu", buf, 0x22u);
                }
              }

              if (ashp::detail::logging::get_log_level(v48))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] closing trid %hu", "ring_manager.cpp", 83, "enter_reset", *(v42 + 96));
              }

              ashp::acipc::ring_manager::set_tr_closed(v1 + 1066, v42);
            }
          }

          v42 = *(v42 + 8);
        }

        while (v42);
      }

      v50 = *(v1 + 598);
      if (v50)
      {
        v51 = MEMORY[0x277D86220];
        do
        {
          ashp::acipc::ring_manager::recompute_cr_availability(v1 + 1066, v50);
          os_unfair_lock_assert_owner(v1 + 1066);
          if (*(v50 + 32))
          {
            if (*(v50 + 37) != 1)
            {
              goto LABEL_120;
            }

            v53 = ashp::detail::logging::get_log_level(v52);
            if (v53 >= 4)
            {
              v53 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
              if (v53)
              {
                v54 = *(v50 + 96);
                *buf = 136446978;
                *&buf[4] = "ring_manager.cpp";
                v220 = 1024;
                *v221 = 93;
                *&v221[4] = 2082;
                *&v221[6] = "enter_reset";
                v222 = 1024;
                LODWORD(v223) = v54;
                _os_log_impl(&dword_23EC8B000, v51, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stopping crid %hu", buf, 0x22u);
              }
            }

            if (ashp::detail::logging::get_log_level(v53))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] stopping crid %hu", "ring_manager.cpp", 93, "enter_reset", *(v50 + 96));
            }

            ashp::acipc::ring_manager::stop_cr(v1 + 1066, v50, v40);
            if (*(v50 + 32))
            {
LABEL_120:
              v55 = ashp::detail::logging::get_log_level(v52);
              if (v55 >= 4)
              {
                v55 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
                if (v55)
                {
                  v56 = *(v50 + 96);
                  *buf = 136446978;
                  *&buf[4] = "ring_manager.cpp";
                  v220 = 1024;
                  *v221 = 98;
                  *&v221[4] = 2082;
                  *&v221[6] = "enter_reset";
                  v222 = 1024;
                  LODWORD(v223) = v56;
                  _os_log_impl(&dword_23EC8B000, v51, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] closing crid %hu", buf, 0x22u);
                }
              }

              if (ashp::detail::logging::get_log_level(v55))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] closing crid %hu", "ring_manager.cpp", 98, "enter_reset", *(v50 + 96));
              }

              ashp::acipc::ring_manager::set_cr_closed(v1 + 1066, v50);
            }
          }

          v50 = *(v50 + 8);
        }

        while (v50);
      }
    }

    os_unfair_lock_unlock(v1 + 1066);
    ashp::optional<ashp::acipc::ring_manager,void>::value((v1 + 4264), v57, v58, v59);
    os_unfair_lock_lock(v1 + 1066);
    if ((v11[200] & 1) == 0)
    {
      goto LABEL_262;
    }

    if (v11[424] == 1)
    {
      v11[424] = 0;
      ashp::acipc::index_array_signaler::~index_array_signaler((v1 + 4336), v60, v61, v62);
    }

    if (v11[232] == 1)
    {
      v11[232] = 0;
    }

    os_unfair_lock_unlock(v1 + 1066);
    ashp::optional<ashp::acipc::ring_manager,void>::value((v1 + 4264), v64, v65, v66);
    os_unfair_lock_lock(v1 + 1066);
    if ((v11[200] & 1) == 0)
    {
      goto LABEL_263;
    }

    if (v11[648] == 1)
    {
      v11[648] = 0;
      ashp::acipc::index_array_signaler::~index_array_signaler((v1 + 4560), v67, v68, v69);
    }

    if (v11[456] == 1)
    {
      v11[456] = 0;
    }

    os_unfair_lock_unlock(v1 + 1066);
    v10 = (v1 + 4944);
    ashp::optional<ashp::acipc::messenger,void>::value((v1 + 4944), v71, v72, v73);
    os_unfair_lock_lock(v1 + 1236);
    v74 = v11[1040];
    v76 = ashp::detail::logging::get_log_level(v75);
    if (v74 == 1)
    {
      break;
    }

    v12 = "messenger.cpp";
    if (v76 >= 4)
    {
      v76 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v76)
      {
        *buf = 136446722;
        *&buf[4] = "messenger.cpp";
        v220 = 1024;
        *v221 = 52;
        *&v221[4] = 2082;
        *&v221[6] = "enter_reset";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] entering reset", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v76))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] entering reset", "messenger.cpp", 52, "enter_reset");
    }

    v11[1040] = 1;
    os_unfair_lock_lock(v1 + 1237);
    v11[1041] = 1;
    os_unfair_lock_unlock(v1 + 1237);
    v11[1042] = 0;
    ashp::async_notifier::suspend(v1 + 1244, v77, v78, v79);
    if (!*(v1 + 643))
    {
      if (*(v1 + 644))
      {
        goto LABEL_271;
      }

      goto LABEL_204;
    }

    v82 = ashp::detail::logging::get_log_level(v80);
    if (v82 >= 4)
    {
      v82 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v82)
      {
        *buf = 136446722;
        *&buf[4] = "messenger.cpp";
        v220 = 1024;
        *v221 = 64;
        *&v221[4] = 2082;
        *&v221[6] = "enter_reset";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] closing mtr", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v82))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] closing mtr", "messenger.cpp", 64, "enter_reset");
    }

    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v1 + 643, v83, v84, v85);
    v86 = ashp::acipc::tr_controller::close(*(v1 + 643));
    v90 = *(v1 + 643);
    if (*(v1 + 644))
    {
      if (!v90)
      {
        goto LABEL_271;
      }

      v91 = ashp::detail::logging::get_log_level(v86);
      if (v91 >= 4)
      {
        v91 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v91)
        {
          *buf = 136446722;
          *&buf[4] = "messenger.cpp";
          v220 = 1024;
          *v221 = 70;
          *&v221[4] = 2082;
          *&v221[6] = "enter_reset";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] closing mcr", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v91))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          goto LABEL_269;
        }

        goto LABEL_169;
      }

      goto LABEL_170;
    }

    while (v90)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v1 + 643, v87, v88, v89);
      ashp::acipc::tr_controller::sync(*(v1 + 643), 2);
      v116 = ashp::detail::logging::get_log_level(v115);
      if (v116 >= 4)
      {
        v116 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v116)
        {
          *buf = 136446722;
          *&buf[4] = "messenger.cpp";
          v220 = 1024;
          *v221 = 85;
          *&v221[4] = 2082;
          *&v221[6] = "enter_reset";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] synthesizing completions if needed", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v116))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] synthesizing completions if needed", "messenger.cpp", 85, "enter_reset");
      }

      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v1 + 643, v117, v118, v119);
      v120 = ashp::acipc::tr_controller::synthesize_reset_completions(*(v1 + 643));
      if (ashp::detail::control_flow::check_err_with_debug(v120, "messenger.cpp", 0x56, "enter_reset", v121))
      {
        v123 = ashp::acipc::messenger::process_completions(v10);
        v124 = ashp::detail::logging::get_log_level(v123);
        if (v124 >= 4)
        {
          v124 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v124)
          {
            *buf = 136446722;
            *&buf[4] = "messenger.cpp";
            v220 = 1024;
            *v221 = 89;
            *&v221[4] = 2082;
            *&v221[6] = "enter_reset";
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tearing down mtr", buf, 0x1Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v124))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] tearing down mtr", "messenger.cpp", 89, "enter_reset");
        }

        LODWORD(v12) = 5160;
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v1 + 645, v125, v126, v127);
        ashp::driver_object::terminate(*(v1 + 645));
        v128 = *(v1 + 645);
        *(v1 + 645) = 0;
        v216 = v128;
        ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v216, v129, v130, v131);
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v1 + 643, v132, v133, v134);
        ashp::driver_object::terminate(*(v1 + 643));
        v135 = *(v1 + 643);
        *(v1 + 643) = 0;
        v215 = v135;
        ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v215, v136, v137, v138);
        break;
      }

      v1 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x56, "enter_reset", v122);
      _os_crash();
      __break(1u);
LABEL_269:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_169:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] closing mcr", "messenger.cpp", 70, "enter_reset");
LABEL_170:
      v15 = 5152;
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v1 + 644, v92, v93, v94);
      ashp::acipc::cr_controller::close(*(v1 + 644));
      v95 = ashp::acipc::messenger::process_completions(v10);
      v96 = ashp::detail::logging::get_log_level(v95);
      if (v96 >= 4)
      {
        v96 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v96)
        {
          *buf = 136446722;
          *&buf[4] = "messenger.cpp";
          v220 = 1024;
          *v221 = 74;
          *&v221[4] = 2082;
          *&v221[6] = "enter_reset";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tearing down mcr", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v96))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] tearing down mcr", "messenger.cpp", 74, "enter_reset");
      }

      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v1 + 646, v97, v98, v99);
      ashp::driver_object::terminate(*(v1 + 646));
      v100 = *(v1 + 646);
      *(v1 + 646) = 0;
      v218 = v100;
      ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v218, v101, v102, v103);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v1 + 644, v104, v105, v106);
      ashp::driver_object::terminate(*(v1 + 644));
      v107 = *(v1 + 644);
      *(v1 + 644) = 0;
      v217 = v107;
      ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v217, v108, v109, v110);
      v111 = *(v11 + 139);
      *(v11 + 1112) = 0u;
      v112 = *(v1 + 653);
      *(v1 + 653) = 0;
      if (v111 && !v112)
      {
        goto LABEL_266;
      }

      if (v112)
      {
        free(v112);
      }

      v113 = *(v1 + 654);
      *(v1 + 327) = 0u;
      v114 = *(v1 + 656);
      *(v1 + 656) = 0;
      if (v113)
      {
        if (!v114)
        {
          goto LABEL_266;
        }
      }

      if (v114)
      {
        free(v114);
      }

      v90 = *(v1 + 643);
    }

LABEL_204:
    v139 = *(v1 + 636);
    if (v139)
    {
      v140 = *(v1 + 638);
      v141 = 40 * v139;
      while (*v140 != 1)
      {
        v140 += 40;
        v141 -= 40;
        if (!v141)
        {
          goto LABEL_208;
        }
      }

      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x65, "enter_reset", v81);
      _os_crash();
      __break(1u);
LABEL_262:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x88, "clear_tr_index_arrays", v63);
      _os_crash();
      __break(1u);
LABEL_263:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0xA1, "clear_cr_index_arrays", v70);
      _os_crash();
      __break(1u);
      goto LABEL_264;
    }

LABEL_208:
    os_unfair_lock_lock(v1 + 1237);
    os_unfair_lock_assert_owner(v1 + 1237);
    v15 = *(v1 + 639);
    if (v15)
    {
      LODWORD(v12) = -760090111;
      do
      {
        ashp::detail::intrusive_list::intrusive_list_impl<ashp::driver_object,ashp::intrusive_list_link<ashp::driver_object>,&ashp::driver_object::_manager_link>::remove((v1 + 5112), v15, v142, v143);
        os_unfair_lock_unlock(v1 + 1237);
        v147 = *(v15 + 16);
        if (v147)
        {
          v147(*v15, *(v15 + 8), 2);
        }

        ashp::intrusive_list_link<ashp::acipc::messenger::overflow_record>::~intrusive_list_link(v15 + 40, v144, v145, v146);
        v148 = *(v15 + 32);
        if (v148)
        {
          free(v148);
          *(v15 + 32) = 0;
          *(v15 + 24) = 0;
        }

        MEMORY[0x23EF204E0](v15, 0x10A0C40D2B1F201);
        os_unfair_lock_lock(v1 + 1237);
        v15 = *(v1 + 639);
      }

      while (v15);
    }

    os_unfair_lock_unlock(v1 + 1237);
    if (!*(v1 + 636) || *(v1 + 638))
    {
      *(v1 + 636) = 0;
      buf[8] = 0;
      *&v221[2] = 0x200000000;
      ashp::buffer_mapping::operator=((v1 + 5056), buf, v149, v150);
      ashp::buffer_mapping::~buffer_mapping(buf, v151, v152, v153);
      v154 = *(v1 + 635);
      *(v1 + 635) = 0;
      *buf = v154;
      ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(buf, v155, v156, v157);
      *(v1 + 630) = 0;
      *(v1 + 314) = 0u;
      goto LABEL_218;
    }

LABEL_266:
    __break(1u);
LABEL_267:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_27:
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] entering reset", v15, 32, "enter_reset");
LABEL_28:
    v11[800] = 1;
    v19 = *(v1 + 613);
    *(v1 + 613) = 0;
    v218 = v19;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v218, v16, v17, v18);
    if (v12 == 1)
    {
      v21 = 3;
    }

    else
    {
      v21 = 0;
    }

    if (v12)
    {
      v22 = v21;
    }

    else
    {
      v22 = 2;
    }

    v23 = ashp::detail::logging::get_log_level(v20);
    if (v23 >= 4)
    {
      v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        *buf = 136446978;
        *&buf[4] = v15;
        v220 = 1024;
        *v221 = 45;
        *&v221[4] = 2082;
        *&v221[6] = "enter_reset";
        v222 = 1024;
        LODWORD(v223) = v22;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stop reason %u", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v23))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] stop reason %u", v15, 45, "enter_reset", v22);
    }

    for (i = *(v1 + 614); i; i = *(i + 8))
    {
      ashp::acipc::memregion_manager::recompute_region_availability(v10, i);
      if (*(i + 32))
      {
        if (*(i + 37) != 1 || (ashp::acipc::memregion_manager::stop_region(v10, i, v22), *(i + 32)))
        {
          *(i + 32) = 0;
          ashp::acipc::memregion_controller::set_device_region_status(*i, 0);
        }
      }
    }
  }

  if (v76 >= 2)
  {
    v76 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v76)
    {
      *buf = 136446722;
      *&buf[4] = "messenger.cpp";
      v220 = 1024;
      *v221 = 51;
      *&v221[4] = 2082;
      *&v221[6] = "enter_reset";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] already in reset", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v76))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] already in reset", "messenger.cpp", 51, "enter_reset");
  }

LABEL_218:
  os_unfair_lock_unlock(v10);
  v10 = (v1 + 5264);
  ashp::optional<ashp::acipc::doorbell_coordinator,void>::value((v1 + 5264), v158, v159, v160);
  os_unfair_lock_lock(v1 + 1316);
  if (!v11[1416])
  {
LABEL_264:
    v1 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0xE4, "enter_reset", v161);
    _os_crash();
    __break(1u);
    goto LABEL_265;
  }

  *buf = 0;
  v162 = os_parse_boot_arg_int();
  if (*buf)
  {
    v164 = v162;
  }

  else
  {
    v164 = 0;
  }

  if (v164 != 1)
  {
    goto LABEL_228;
  }

  v165 = v11[1416];
  if (v165 != 2)
  {
LABEL_229:
    if (v165 != 4)
    {
      v172 = ashp::detail::logging::get_log_level(v162);
      if (v172 >= 4)
      {
        v172 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v172)
        {
          *buf = 136446722;
          *&buf[4] = "doorbell_coordinator.cpp";
          v220 = 1024;
          *v221 = 242;
          *&v221[4] = 2082;
          *&v221[6] = "enter_reset";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] entering reset, dropping any pending doorbells", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v172))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] entering reset, dropping any pending doorbells", "doorbell_coordinator.cpp", 242, "enter_reset");
      }

      if (v11[1416] == 2)
      {
        ashp::timer::stop(v1 + 1320, v173, v174, v175);
      }

      ashp::acipc::doorbell_coordinator::process_pending((v1 + 5264), 2, 4);
      v179 = *(v1 + 677);
      if (v179)
      {
        v180 = *(v1 + 679);
        v181 = &v180[18 * v179];
        do
        {
          while (1)
          {
            v182 = v180[15];
            if (!v182)
            {
              break;
            }

            v182[2] = -1;
            v182[3] = -1;
            v183 = v182[9];
            if (!v183 || ((*(v183 + 16))(v183, 2), (v182 = v180[15]) != 0))
            {
              ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::remove((v180 + 15), v182, v177, v178);
            }

            ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::insert_before((v180 + 12), v182, v177, v178);
          }

          v180[10] = -1;
          v180[11] = -1;
          v180 += 18;
        }

        while (v180 != v181);
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v1 + 688, v176, v177, v178);
      ashp::dynamic_array<ashp::acipc::cr_controller::tr_association>::truncate(v1 + 680, 0, v184, v185, v186);
      goto LABEL_248;
    }

LABEL_265:
    ashp::detail::control_flow::log_guard_else_failure("doorbell_coordinator.cpp", 0xF0, "enter_reset", v163);
LABEL_248:
    os_unfair_lock_unlock(v10);
    if (v11[1644] == 1)
    {
      v11[1644] = 0;
    }

    if (v11[1652] == 1)
    {
      v11[1652] = 0;
    }

    os_unfair_lock_lock(v1 + 1442);
    v11[1676] = 0;
    os_unfair_lock_unlock(v1 + 1442);
    ashp::async_notifier::suspend((*(v1 + 722) + 16), v187, v188, v189);
    if (v11[1660] == 1)
    {
      v11[1660] = 0;
    }

    if (v11[1668] == 1)
    {
      v11[1668] = 0;
    }

    ashp::optional<ashp::interrupt,void>::value((v1 + 5632), v190, v191, v192);
    v193 = *(v1 + 704);
    ashp::optional<ashp::interrupt_manager,void>::value(&v193[158], v194, v195, v196);
    ashp::interrupt_manager::resume_handler(v193 + 158, (v1 + 5632));
    ashp::optional<ashp::interrupt,void>::value((v1 + 5784), v197, v198, v199);
    v200 = *(v1 + 723);
    ashp::optional<ashp::interrupt_manager,void>::value(&v200[158], v201, v202, v203);
    ashp::interrupt_manager::suspend_handler(v200 + 158, (v1 + 5784));
    ashp::optional<ashp::interrupt,void>::value((v1 + 5864), v204, v205, v206);
    v207 = *(v1 + 733);
    ashp::optional<ashp::interrupt_manager,void>::value(&v207[158], v208, v209, v210);
    ashp::interrupt_manager::suspend_handler(v207 + 158, (v1 + 5864));
    ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset((v1 + 5952), v211, v212, v213);
    *(v1 + 768) = 0;
    if (v11[2072] == 1)
    {
      v11[2072] = 0;
    }

    if (v11[1952] == 1)
    {
      v11[1952] = 0;
    }

    ashp::driver::update_power_state(v1, 0);
    ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v1);
    v214 = *MEMORY[0x277D85DE8];
    return;
  }

  mach_timebase_info(buf);
  v166 = *buf;
  v162 = mach_continuous_time();
  v168 = 50000000 * HIDWORD(v166) / v166;
  v169 = *(v1 + 685);
  v170 = __CFADD__(v169, v168);
  v171 = v169 + v168;
  if (v170)
  {
    v171 = -1;
  }

  if (v162 <= v171)
  {
LABEL_228:
    v165 = v11[1416];
    goto LABEL_229;
  }

  ashp::detail::base::log_pre_crash_message("doorbell_coordinator timer did not expire as expected.", "doorbell_coordinator.cpp", 0xED, "enter_reset", v167);
  _os_crash();
  __break(1u);
LABEL_271:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x45, "enter_reset", v81);
  _os_crash();
  __break(1u);
}

uint64_t ashp::optional<ashp::interrupt,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 56) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 72) == 1)
  {
    *(a1 + 72) = 0;
    if (*(a1 + 60) == 1)
    {
      *(a1 + 60) = 0;
    }

    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset((a1 + 24), a2, a3, a4);

    ashp::buffer_mapping::~buffer_mapping(a1, v5, v6, v7);
  }
}

uint64_t ashp::optional<ashp::acipc::boot_manager,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 48) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::acipc::acipc_driver::get_current_ipc_stage_name(const os_unfair_lock *this)
{
  v28 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  v5 = *&this[1430]._os_unfair_lock_opaque;
  if (v5)
  {
    CStringPtr = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v5, v2, v3, v4);
    if (CStringPtr)
    {
      CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
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
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        v21 = "acipc_driver.cpp";
        v22 = 1024;
        v23 = 339;
        v24 = 2082;
        v25 = "get_current_ipc_stage_name";
        v26 = 2080;
        v27 = v7;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] boot ipc stage name %s", buf, 0x26u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] boot ipc stage name %s", "acipc_driver.cpp", 339, "get_current_ipc_stage_name", v7);
    }

    v15 = *&this[1430]._os_unfair_lock_opaque;
LABEL_37:
    result = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v15, v12, v13, v14);
    goto LABEL_38;
  }

  v8 = *&this[1432]._os_unfair_lock_opaque;
  if (v8)
  {
    v9 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v8, v2, v3, v4);
    if (v9)
    {
      v9 = CFStringGetCStringPtr(v9, 0x8000100u);
      if (v9)
      {
        v10 = v9;
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

    v18 = ashp::detail::logging::get_log_level(v9);
    if (v18 >= 4)
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        *buf = 136446978;
        v21 = "acipc_driver.cpp";
        v22 = 1024;
        v23 = 344;
        v24 = 2082;
        v25 = "get_current_ipc_stage_name";
        v26 = 2080;
        v27 = v10;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] main ipc stage name %s", buf, 0x26u);
      }
    }

    if (ashp::detail::logging::get_log_level(v18))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] main ipc stage name %s", "acipc_driver.cpp", 344, "get_current_ipc_stage_name", v10);
    }

    v15 = *&this[1432]._os_unfair_lock_opaque;
    goto LABEL_37;
  }

  v16 = ashp::detail::logging::get_log_level(0);
  if (v16 >= 4)
  {
    v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      *buf = 136446722;
      v21 = "acipc_driver.cpp";
      v22 = 1024;
      v23 = 349;
      v24 = 2082;
      v25 = "get_current_ipc_stage_name";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] no ipc stage set", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v16))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] no ipc stage set", "acipc_driver.cpp", 349, "get_current_ipc_stage_name");
  }

  result = 0;
LABEL_38:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ashp::acipc::acipc_driver::setup_main_ipc_stage(const os_unfair_lock *this, const ashp::acipc::config::main_ipc_stage_spec *a2, pthread_rwlock_t **a3)
{
  v8 = this;
  v442 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  if (*(v8 + 5720) == 0)
  {
    v376 = a3;
    v11 = &v390;
    *(v8 + 716) = a2;
    v377 = v8;
    v378 = 1;
    log_level = ashp::detail::logging::get_log_level(v9);
    if (log_level >= 3)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        *&buf[4] = "acipc_driver.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 424;
        v420 = 2082;
        v11 = &v390;
        v421 = "setup_main_ipc_stage";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting up main ipc stage", buf, 0x1Cu);
      }
    }

    v13 = ashp::detail::logging::get_log_level(log_level);
    if (!v13)
    {
      goto LABEL_8;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_295;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x1A5, "setup_main_ipc_stage", v10);
  _os_crash();
  __break(1u);
LABEL_288:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x221, "create_device_memory", v57);
  _os_crash();
  __break(1u);
LABEL_289:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x223, "create_device_memory", v62);
  _os_crash();
  __break(1u);
LABEL_290:
  v8 = "BUG in Airship: ";
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x216, "create_device_memory", v51);
  _os_crash();
  __break(1u);
LABEL_291:
  ashp::detail::control_flow::log_guard_else_failure("acipc_driver.cpp", 0x21E, "create_device_memory", v53);
  v177 = 0;
  v424 = 0;
  v76 = (v8 + 5944);
  v387 = 0;
  while (1)
  {
    v11 = 5952;
    if (v4[1928] != 1)
    {
      if ((v177 & 1) == 0)
      {
        goto LABEL_160;
      }

      ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::emplace<ashp::acipc::acipc_driver::device_memory>((v8 + 5952), &v379, v172, v173);
      v191 = &v379;
      goto LABEL_142;
    }

    if ((v177 & 1) == 0)
    {
      ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::emplace<ashp::acipc::acipc_driver::device_memory>(&v379, (v8 + 5952), v172, v173);
      v191 = (v8 + 5952);
LABEL_142:
      ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset(v191, v188, v189, v190);
      goto LABEL_160;
    }

    v434[8] = 0;
    *&v436[2] = *(v8 + 746);
    *(v8 + 746) = 0x200000000;
    if (v4[1864] == 1)
    {
      *v434 = *(v8 + 744);
      v434[8] = 1;
      v4[1864] = 0;
    }

    v178 = *(v8 + 747);
    *(v8 + 747) = 0;
    *&v436[10] = v178;
    v437 = *(v8 + 374);
    v438 = *(v8 + 750);
    v440 = 0;
    if (v4[1916] == 1)
    {
      v439 = *(v8 + 1502);
      v440 = 1;
      v4[1916] = 0;
    }

    v441 = *(v8 + 752);
    a3 = &v379;
    ashp::buffer_mapping::operator=((v8 + 5952), &v379, v172, v173);
    v179 = v381;
    v381 = 0;
    v180 = *(v8 + 747);
    *(v8 + 747) = v179;
    *v425 = v180;
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(v425, v181, v182, v183);
    *(v8 + 374) = v382;
    *(v8 + 750) = v383;
    if (v385 == 1)
    {
      v385 = 0;
      v186 = v4[1916];
      *(v8 + 1502) = v384;
      if ((v186 & 1) == 0)
      {
        v187 = 1;
LABEL_153:
        v4[1916] = v187;
      }
    }

    else if (v4[1916] == 1)
    {
      v187 = 0;
      goto LABEL_153;
    }

    *(v8 + 752) = v386;
    ashp::buffer_mapping::operator=(&v379, v434, v184, v185);
    v206 = *&v436[10];
    *&v436[10] = 0;
    v207 = v381;
    v381 = v206;
    *v425 = v207;
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(v425, v208, v209, v210);
    v382 = v437;
    v383 = v438;
    if (v440 == 1)
    {
      v440 = 0;
      v384 = v439;
      if ((v385 & 1) == 0)
      {
        v385 = 1;
      }
    }

    else if (v385 == 1)
    {
      v385 = 0;
    }

    v386 = v441;
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(&v436[10], v211, v212, v213);
    ashp::buffer_mapping::~buffer_mapping(v434, v214, v215, v216);
LABEL_160:
    ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset(&v379, v171, v172, v173);
    ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset(&buf[8], v217, v218, v219);
    if ((v4[1928] & 1) == 0)
    {
      v240 = ashp::detail::logging::get_log_level(v220);
      if (v240 >= 2)
      {
        v240 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v240)
        {
          *buf = 136446722;
          *&buf[4] = "acipc_driver.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 436;
          v420 = 2082;
          v421 = "setup_main_ipc_stage";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to allocate/map device memory", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v240))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to allocate/map device memory", "acipc_driver.cpp", 436, "setup_main_ipc_stage");
      }

      goto LABEL_313;
    }

    v224 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v221, v222, v223);
    addr = ashp::mappable_buffer::get_addr(v224, v225, v226, v227);
    v232 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v229, v230, v231);
    v234 = addr + v232[9];
    if ((v234 & 3) == 0)
    {
      break;
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x1BB, "setup_main_ipc_stage", v233);
    _os_crash();
    __break(1u);
LABEL_297:
    v8 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x1CD, "setup_main_ipc_stage", v233);
    _os_crash();
    __break(1u);
LABEL_298:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    while (2)
    {
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] locating peripheral info interrupt", "acipc_driver.cpp", 577, v5);
LABEL_99:
      v389 = 0;
      ashp::optional<ashp::acipc::config::acipc_config,void>::value((v8 + 3824), v146, v147, v148);
      if (resolve_named_target<ashp::acipc::config::interrupt_spec>(*(v8 + 482), *(v8 + 484), (a3 + 34), &v389, 0))
      {
        if ((v3 & 1) == 0 && *(a3 + 132))
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x245, "create_device_memory", v152);
          _os_crash();
          __break(1u);
        }

        else if ((*(a3 + 133) & *(a3 + 132)) != 1)
        {
          v428 = 0;
          v429[0] = 0;
          *v425 = 0x6800000000;
          v153 = *(a3 + 54);
          v154 = *(a3 + 53);
          *&v425[8] = 120;
          LODWORD(v426) = 2 * v153 + 120;
          v155 = 2 * (v154 + v153) + 120;
          v156 = v154 + v153 + v153;
          v157 = 2 * (v156 + v154);
          v158 = v157 + 120;
          HIDWORD(v426) = v155;
          LODWORD(v427) = 2 * v156 + 120;
          if (v3)
          {
            ashp::optional<unsigned int,void>::value(&v403, v149, v150, v151);
            v159 = v157 & 2;
            v160 = v158 + v159 + v403;
            v161 = __CFADD__(v158 + v159, v403);
            v162 = __CFADD__(v158, v159);
            v163 = v158 + v159;
            v164 = v162;
            if (v162)
            {
              v158 = v163;
            }

            else
            {
              v158 = v160;
            }

            v165 = v164 | v161;
            HIDWORD(v427) = v163;
            if ((v428 & 1) == 0)
            {
              v428 = 1;
            }
          }

          else
          {
            v165 = 0;
          }

          ashp::optional<unsigned int,void>::value(&v413, v149, v150, v151);
          if (v165)
          {
            goto LABEL_121;
          }

          v167 = 4 - (v158 & 3);
          if ((v158 & 3) == 0)
          {
            v167 = 0;
          }

          v162 = __CFADD__(v158, v167);
          v158 += v167;
          if (v162)
          {
LABEL_121:
            LODWORD(v429[0]) = v158;
          }

          else
          {
            LODWORD(v429[0]) = v158;
            v162 = __CFADD__(v158, v413);
            v192 = v158 + v413;
            v158 += v413;
            if (!v162)
            {
              v193 = 8 - (v192 & 7);
              if ((v192 & 7) == 0)
              {
                v193 = 0;
              }

              v158 = v192 + v193;
              if (!__CFADD__(v192, v193))
              {
                v194 = *(a3 + 72);
                HIDWORD(v429[0]) = v158;
                if (!__CFADD__(v158, v194))
                {
                  ashp::mappable_buffer::create(&v415, (v158 + v194), 2, v86, v166);
                  if (v416)
                  {
                    ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v415, v195, v196, v197);
                    if ((ashp::mappable_buffer::get_addr(&v415, v198, v199, v200) & 7) == 0)
                    {
                      ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v415, v201, v202, v197);
                      ashp::mappable_buffer::copy_descriptor(v388, &v415, v203, v204, v205);
                      ashp::devmem_mapping::create();
                    }

                    v375 = 612;
                  }

                  else
                  {
                    v375 = 611;
                  }

                  ashp::detail::control_flow::log_guard_else_failure("acipc_driver.cpp", v375, "create_device_memory", v197);
                  v424 = 0;
                  ashp::buffer_mapping::~buffer_mapping(&v415, v340, v341, v342);
                  goto LABEL_125;
                }

LABEL_123:
                v137 = 608;
                goto LABEL_124;
              }
            }
          }

          HIDWORD(v429[0]) = v158;
          goto LABEL_123;
        }

        v8 = "BUG in Airship: ";
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x246, "create_device_memory", v152);
        _os_crash();
        __break(1u);
LABEL_301:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_54:
        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] calculating mcr memory", "acipc_driver.cpp", 561, v5);
        goto LABEL_55;
      }

      while (1)
      {
        v8 = "BUG in Airship: ";
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x243, "create_device_memory", v152);
        _os_crash();
        __break(1u);
LABEL_295:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_7:
        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting up main ipc stage", "acipc_driver.cpp", 424, "setup_main_ipc_stage");
LABEL_8:
        v4 = v8 + 4096;
        v14 = v8[5740];
        *(v8 + 1434) = 0;
        if ((v14 & 1) == 0)
        {
          v8[5740] = 1;
        }

        v15 = v8[5748];
        *(v8 + 1436) = 0;
        if ((v15 & 1) == 0)
        {
          v8[5748] = 1;
        }

        v16 = ashp::detail::logging::get_log_level(v13);
        if (v16 >= 4)
        {
          v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v16)
          {
            *buf = 136446722;
            *&buf[4] = "acipc_driver.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 427;
            v420 = 2082;
            v11 = &v390;
            v421 = "setup_main_ipc_stage";
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting up ipc status interrupt", buf, 0x1Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v16))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting up ipc status interrupt", "acipc_driver.cpp", 427, "setup_main_ipc_stage");
        }

        ashp::optional<ashp::interrupt,void>::value((v8 + 5784), v17, v18, v19);
        ashp::acipc::acipc_driver::get_vector_for_interrupt(buf, v8, a2 + 256);
        ashp::optional<unsigned int,void>::value(buf, v20, v21, v22);
        v23 = buf[0];
        v24 = *(v8 + 723);
        ashp::optional<ashp::interrupt_manager,void>::value(&v24[158], v25, v26, v27);
        ashp::interrupt_manager::set_handler_mask(v24 + 158, (v8 + 5784), 1 << v23);
        ashp::optional<ashp::interrupt,void>::value((v8 + 5784), v28, v29, v30);
        v31 = *(v8 + 723);
        ashp::optional<ashp::interrupt_manager,void>::value(&v31[158], v32, v33, v34);
        ashp::interrupt_manager::resume_handler(v31 + 158, (v8 + 5784));
        v36 = ashp::detail::logging::get_log_level(v35);
        if (v36 >= 4)
        {
          v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v36)
          {
            *buf = 136446722;
            *&buf[4] = "acipc_driver.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 430;
            v420 = 2082;
            v11 = &v390;
            v421 = "setup_main_ipc_stage";
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting up peripheral info interrupt", buf, 0x1Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v36))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting up peripheral info interrupt", "acipc_driver.cpp", 430, "setup_main_ipc_stage");
        }

        ashp::optional<ashp::interrupt,void>::value((v8 + 5864), v37, v38, v39);
        ashp::acipc::acipc_driver::get_vector_for_interrupt(buf, v8, a2 + 272);
        ashp::optional<unsigned int,void>::value(buf, v40, v41, v42);
        v43 = buf[0];
        v44 = *(v8 + 733);
        ashp::optional<ashp::interrupt_manager,void>::value(&v44[158], v45, v46, v47);
        ashp::interrupt_manager::set_handler_mask(v44 + 158, (v8 + 5864), 1 << v43);
        v49 = ashp::detail::logging::get_log_level(v48);
        if (v49 >= 4)
        {
          v49 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v49)
          {
            *buf = 136446722;
            *&buf[4] = "acipc_driver.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 432;
            v420 = 2082;
            v11 = &v390;
            v421 = "setup_main_ipc_stage";
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] creating device memory", buf, 0x1Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v49))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] creating device memory", "acipc_driver.cpp", 432, "setup_main_ipc_stage");
        }

        os_unfair_lock_assert_owner(v8 + 2);
        a3 = *(v8 + 716);
        if (!a3)
        {
          goto LABEL_290;
        }

        v52 = ashp::detail::logging::get_log_level(v50);
        v5 = "create_device_memory";
        if (v52 >= 4)
        {
          v52 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v52)
          {
            *v434 = 136446722;
            *&v434[4] = "acipc_driver.cpp";
            v435 = 1024;
            *v436 = 539;
            *&v436[4] = 2082;
            *&v436[6] = "create_device_memory";
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] calculating mtr memory", v434, 0x1Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v52))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] calculating mtr memory", "acipc_driver.cpp", 539, "create_device_memory");
        }

        ashp::acipc::tr_ring::compute_required_memory(&v413, *(a3 + 56), *(a3 + 29), *(a3 + 30));
        if ((v414 & 1) == 0)
        {
          goto LABEL_291;
        }

        ashp::acipc::compute_hdrftr_size_fields(v412, *(a3 + 29), 0, v53);
        if (v412[2] != 1)
        {
          goto LABEL_288;
        }

        ashp::optional<unsigned short,void>::value(v412, v54, v55, v56);
        if (v412[1])
        {
          goto LABEL_288;
        }

        ashp::acipc::compute_hdrftr_size_fields(v411, *(a3 + 30), 0, v58);
        if (v411[2] != 1)
        {
          goto LABEL_289;
        }

        ashp::optional<unsigned short,void>::value(v411, v59, v60, v61);
        if (v411[1])
        {
          goto LABEL_289;
        }

        v406[16] = 0;
        v407 = 0;
        v408 = 0;
        v409 = 0;
        v410 = 0;
        ashp::optional<ashp::acipc::config::acipc_config,void>::value((v8 + 3824), v63, v64, v65);
        if (resolve_named_target<ashp::acipc::config::doorbell_spec>(*(v8 + 485), *(v8 + 487), (a3 + 17), v406, 0))
        {
          break;
        }

        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x225, "create_device_memory", v69);
        _os_crash();
        __break(1u);
LABEL_293:
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x227, "create_device_memory", v71);
        _os_crash();
        __break(1u);
      }

      v405 = 0;
      ashp::optional<ashp::acipc::config::acipc_config,void>::value((v8 + 3824), v66, v67, v68);
      v70 = resolve_named_target<ashp::acipc::config::interrupt_spec>(*(v8 + 482), *(v8 + 484), (a3 + 20), &v405, 0);
      if (!v70)
      {
        goto LABEL_293;
      }

      v404 = 0;
      v402 = 0;
      v400 = 0;
      LOBYTE(v438) = 0;
      v398 = 0;
      v3 = *(a3 + 248);
      if (v3 != 1)
      {
        goto LABEL_93;
      }

      v72 = ashp::detail::logging::get_log_level(v70);
      if (v72 >= 4)
      {
        v72 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v72)
        {
          *v425 = 136446722;
          *&v425[4] = "acipc_driver.cpp";
          v426 = 0x822000002310400;
          v427 = "create_device_memory";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] calculating mcr memory", v425, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v72))
      {
        if (airship_platform_get_global_logger::once == -1)
        {
          goto LABEL_54;
        }

        goto LABEL_301;
      }

LABEL_55:
      ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v73, v74, v75);
      v76 = *(a3 + 92);
      ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v77, v78, v79);
      v80 = *(a3 + 47);
      ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v81, v82, v83);
      ashp::acipc::cr_ring::compute_required_memory(v425, v76, v80, *(a3 + 48));
      if (v425[4] == 1)
      {
        v403 = *v425;
        if ((v404 & 1) == 0)
        {
          v404 = 1;
        }

        ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v84, v85, v86);
        ashp::acipc::compute_hdrftr_size_fields(v425, *(a3 + 47), 0, v87);
        if (v425[2] == 1)
        {
          v401 = *v425;
          if ((v402 & 1) == 0)
          {
            v402 = 1;
          }

          ashp::optional<unsigned short,void>::value(&v401, v88, v89, v90);
          if (!HIBYTE(v401))
          {
            ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v92, v93, v94);
            ashp::acipc::compute_hdrftr_size_fields(v425, *(a3 + 48), 0, v95);
            if (v425[2] == 1)
            {
              v399 = *v425;
              if ((v400 & 1) == 0)
              {
                v400 = 1;
              }

              ashp::optional<unsigned short,void>::value(&v399, v96, v97, v98);
              if (!HIBYTE(v399))
              {
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v100, v101, v102);
                if (*(a3 + 216) == 1)
                {
                  v396 = 0;
                  *v397 = 0;
                  v397[4] = 0;
                  *&v397[8] = 0;
                  v397[12] = 0;
                  ashp::optional<ashp::acipc::config::acipc_config,void>::value((v8 + 3824), v103, v104, v105);
                  ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v106, v107, v108);
                  ashp::optional<ashp::acipc::name_and_selector,void>::value((a3 + 25), v109, v110, v111);
                  if (!resolve_named_target<ashp::acipc::config::doorbell_spec>(*(v8 + 485), *(v8 + 487), (a3 + 25), &v394, 0))
                  {
                    goto LABEL_320;
                  }

                  v392 = 0;
                  if (v396 == 1)
                  {
                    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v390, v112, v113, v114);
                    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v390, v394, v116, v117);
                    v391 = v395;
                    v392 = 1;
                  }

                  v393 = *v397;
                  *(v11 + 29) = *&v397[5];
                  ashp::optional<ashp::acipc::config::doorbell_spec::dynamic_config,void>::optional<int,0>(v425, &v390, v113, v114);
                  v433 = 0;
                  if (v430 == 1)
                  {
                    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v431, &v425[8], v119, v120);
                    v432[0] = v429[0];
                    *(v432 + 5) = *(v429 + 5);
                    v121 = 1;
                    v433 = 1;
                    if (v430 == 1)
                    {
                      v430 = 0;
                      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v425[8], v118, v119, v120);
                      v121 = v433;
                    }

                    if (v438)
                    {
                      v11 = &v437;
                      if (v121)
                      {
                        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v415, &v434[8], v119, v120);
                        v417[0] = v437;
                        *(v417 + 5) = *(&v437 + 5);
                        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v418, v431, v122, v123);
                        ashp::swap(&v434[8], v418, v124, v125);
                        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v418, v126, v127, v128);
                        *&v437 = v432[0];
                        *(&v437 + 5) = *(v432 + 5);
                        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v418, &v415, v129, v130);
                        ashp::swap(v431, v418, v131, v132);
                        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v418, v133, v134, v135);
                        v432[0] = v417[0];
                        *(v432 + 5) = *(v417 + 5);
                        v136 = &v415;
                        goto LABEL_86;
                      }

LABEL_81:
                      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v431, &v434[8], v119, v120);
                      v432[0] = v437;
                      *(v432 + 5) = *(&v437 + 5);
                      v433 = 1;
                      if (v438 == 1)
                      {
                        LOBYTE(v438) = 0;
                        v136 = &v434[8];
                        goto LABEL_86;
                      }
                    }

                    else if (v121)
                    {
                      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v434[8], v431, v119, v120);
                      *&v437 = v432[0];
                      *(&v437 + 5) = *(v432 + 5);
                      LOBYTE(v438) = 1;
                      if (v433 == 1)
                      {
                        v433 = 0;
                        v136 = v431;
LABEL_86:
                        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v136, v118, v119, v120);
                      }
                    }
                  }

                  else if (v438 == 1)
                  {
                    v11 = &v437;
                    goto LABEL_81;
                  }

                  if (v433 == 1)
                  {
                    v433 = 0;
                    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v431, v118, v119, v120);
                  }

                  if (v430 == 1)
                  {
                    v430 = 0;
                    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v425[8], v118, v119, v120);
                  }

                  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v390, v118, v119, v120);
                  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v394, v138, v139, v140);
                }

                ashp::optional<ashp::acipc::config::acipc_config,void>::value((v8 + 3824), v103, v104, v105);
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v141, v142, v143);
                v70 = resolve_named_target<ashp::acipc::config::interrupt_spec>(*(v8 + 482), *(v8 + 484), (a3 + 29), &v398, 0);
                if (v70)
                {
LABEL_93:
                  v145 = ashp::detail::logging::get_log_level(v70);
                  if (v145 >= 4)
                  {
                    v145 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                    if (v145)
                    {
                      *v425 = 136446722;
                      *&v425[4] = "acipc_driver.cpp";
                      v426 = 0x822000002410400;
                      v427 = v5;
                      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] locating peripheral info interrupt", v425, 0x1Cu);
                    }
                  }

                  if (ashp::detail::logging::get_log_level(v145))
                  {
                    if (airship_platform_get_global_logger::once == -1)
                    {
                      continue;
                    }

                    goto LABEL_298;
                  }

                  goto LABEL_99;
                }

LABEL_303:
                v8 = "BUG in Airship: ";
                ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x23E, "create_device_memory", v144);
                _os_crash();
                __break(1u);
LABEL_304:
                ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xAB, "set_ipc_stage", v278);
                _os_crash();
                __break(1u);
LABEL_305:
                ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xAD, "set_ipc_stage", v278);
                _os_crash();
                __break(1u);
LABEL_306:
                ashp::detail::control_flow::log_guard_else_failure("messenger.cpp", 0xB9, "set_ipc_stage", v286);
                ashp::buffer_mapping::~buffer_mapping(&v379, v368, v369, v370);
                os_unfair_lock_unlock(&v5[v8]);
                v372 = ashp::detail::logging::get_log_level(v371);
                if (v372 >= 2)
                {
                  v372 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                  if (v372)
                  {
                    *buf = 136446722;
                    *&buf[4] = "acipc_driver.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 483;
                    v420 = 2082;
                    v421 = "setup_main_ipc_stage";
                    _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] messenger failed to map mtr/mcr memory", buf, 0x1Cu);
                  }
                }

                if (ashp::detail::logging::get_log_level(v372))
                {
                  if (airship_platform_get_global_logger::once != -1)
                  {
                    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                  }

                  ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] messenger failed to map mtr/mcr memory", "acipc_driver.cpp", 483, "setup_main_ipc_stage");
                }

LABEL_313:
                ashp::acipc::acipc_driver::raise_ipc_error(v8, 4);
LABEL_314:
                result = ashp::deferred_action<ashp::acipc::acipc_driver::setup_main_ipc_stage(ashp::acipc::config::main_ipc_stage_spec const*,ashp::acipc::config::exec_stage_spec const*)::$_0>::~deferred_action(&v377);
                v374 = *MEMORY[0x277D85DE8];
                return result;
              }

LABEL_330:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x237, "create_device_memory", v99);
              _os_crash();
              __break(1u);
              goto LABEL_331;
            }

LABEL_328:
            if (v400 == 1)
            {
              v400 = 0;
            }

            goto LABEL_330;
          }
        }

        else if (v402 == 1)
        {
          v402 = 0;
        }

        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x235, "create_device_memory", v91);
        _os_crash();
        __break(1u);
        goto LABEL_328;
      }

      break;
    }

    if (v404 == 1)
    {
      v404 = 0;
    }

    v137 = 563;
LABEL_124:
    ashp::detail::control_flow::log_guard_else_failure("acipc_driver.cpp", v137, "create_device_memory", v86);
    v424 = 0;
LABEL_125:
    if (v438 == 1)
    {
      LOBYTE(v438) = 0;
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v434[8], v168, v169, v170);
    }

    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v406, v168, v169, v170);
    v76 = (v8 + 5944);
    v387 = 0;
    if (v424)
    {
      ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::emplace<ashp::acipc::acipc_driver::device_memory>(&v379, &buf[8], v172, v173);
      ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset(&buf[8], v174, v175, v176);
      v177 = v387;
    }

    else
    {
      v177 = 0;
    }
  }

  *(v8 + 768) = v234;
  if (v4[2072] == 1)
  {
    goto LABEL_297;
  }

  v235 = *(v376 + 2);
  *(v4 + 2060) = v235 | 0x200000000;
  *(v8 + 1541) = 0;
  v4[2072] = 1;
  v236 = ashp::detail::logging::get_log_level(v232);
  if (v236 >= 4)
  {
    v236 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v236)
    {
      v237 = *(v376 + 2);
      *buf = 136446978;
      *&buf[4] = "acipc_driver.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 468;
      v420 = 2082;
      v421 = "setup_main_ipc_stage";
      v422 = 1024;
      *v423 = v237;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] copying peripheral info, initial exec stage value=%u", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v236))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] copying peripheral info, initial exec stage value=%u", "acipc_driver.cpp", 468, "setup_main_ipc_stage", *(v376 + 2));
  }

  v238 = *(v8 + 768);
  *v238 = v235;
  *(v238 + 4) = 2;
  *(v238 + 12) = 0;
  v239 = *(v8 + 29);
  v379 = (v239 + 8);
  pthread_rwlock_rdlock((v239 + 8));
  if (*(v239 + 208) == 1)
  {
    buf[16] = 0;
  }

  else
  {
    (*(*v239 + 120))(buf, v239);
  }

  v241 = ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(&v379);
  if (buf[16] != 1)
  {
    if (v4[1952] == 1)
    {
      v4[1952] = 0;
    }

    v270 = ashp::detail::logging::get_log_level(v241);
    if (v270 >= 2)
    {
      v270 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v270)
      {
        *buf = 136446722;
        *&buf[4] = "acipc_driver.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 474;
        v420 = 2082;
        v421 = "setup_main_ipc_stage";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to get device memory window config", buf, 0x1Cu);
      }
    }

    if (!ashp::detail::logging::get_log_level(v270))
    {
      goto LABEL_313;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_193:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to get device memory window config", "acipc_driver.cpp", 474, "setup_main_ipc_stage");
      goto LABEL_313;
    }

LABEL_316:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_193;
  }

  v245 = v4[1952];
  *(v8 + 377) = *buf;
  if ((v245 & 1) == 0)
  {
    v4[1952] = 1;
  }

  v246 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v242, v243, v244);
  a3 = ashp::mappable_buffer::get_addr(v246, v247, v248, v249);
  v253 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v250, v251, v252);
  v257 = v253[16];
  if (*(a2 + 248) == 1)
  {
    v258 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v254, v255, v256);
    v262 = ashp::mappable_buffer::get_addr(v258, v259, v260, v261);
    v266 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v263, v264, v265);
    v253 = ashp::optional<unsigned int,void>::value(v266 + 56, v267, v268, v269);
    v11 = v262 + *(v266 + 56);
  }

  else
  {
    v11 = 0;
  }

  v271 = ashp::detail::logging::get_log_level(v253);
  if (v271 >= 4)
  {
    v271 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v271)
    {
      *buf = 136446722;
      *&buf[4] = "acipc_driver.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 480;
      v420 = 2082;
      v421 = "setup_main_ipc_stage";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting up message rings", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v271))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting up message rings", "acipc_driver.cpp", 480, "setup_main_ipc_stage");
  }

  v5 = 4944;
  ashp::optional<ashp::acipc::messenger,void>::value((v8 + 4944), v272, v273, v274);
  os_unfair_lock_lock(v8 + 1236);
  if ((v4[1040] & 1) == 0)
  {
    goto LABEL_304;
  }

  if (!a3)
  {
    goto LABEL_305;
  }

  if (v11 || (*(a2 + 248) & 1) == 0)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2, v275, v276, v277);
    CStringPtr = *a2;
    if (*a2)
    {
      CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
      if (CStringPtr)
      {
        v280 = CStringPtr;
      }

      else
      {
        v280 = "???";
      }
    }

    else
    {
      v280 = "(nil)";
    }

    v281 = ashp::detail::logging::get_log_level(CStringPtr);
    if (v281 >= 4)
    {
      v281 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v281)
      {
        *buf = 136446978;
        *&buf[4] = "messenger.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 179;
        v420 = 2082;
        v421 = "set_ipc_stage";
        v422 = 2080;
        *v423 = v280;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting up message buffer for main ipc stage %s", buf, 0x26u);
      }
    }

    if (ashp::detail::logging::get_log_level(v281))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting up message buffer for main ipc stage %s", "messenger.cpp", 179, "set_ipc_stage", v280);
    }

    ashp::mappable_buffer::create(&v379, *(a2 + 56) << 7, 2, v282, v283);
    if (v380)
    {
      v287 = *(v8 + 619);
      ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v379, v284, v285, v286);
      ashp::mappable_buffer::copy_descriptor(v425, &v379, v288, v289, v290);
      ashp::devmem_mapping::create();
    }

    goto LABEL_306;
  }

  while (2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xB0, "set_ipc_stage", v278);
    _os_crash();
    __break(1u);
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] transfer ring tail index array signaler 0x%llx", "ring_manager.cpp", 129, "set_tr_index_arrays", a3);
    os_unfair_lock_unlock(&v8[v3]);
    ashp::optional<ashp::acipc::ring_manager,void>::value(&v8[v3], v291, v292, v293);
    v297 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v294, v295, v296);
    a3 = ashp::mappable_buffer::get_addr(v297, v298, v299, v300);
    v5 = *(ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v301, v302, v303) + 40);
    v307 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v304, v305, v306);
    v311 = ashp::mappable_buffer::get_addr(v307, v308, v309, v310);
    v76 = *(ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v312, v313, v314) + 48);
    LOWORD(v379) = *"de";
    os_unfair_lock_lock(&v8[v3]);
    if ((v4[200] & 1) == 0)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x91, "set_cr_index_arrays", v315);
      _os_crash();
      __break(1u);
      goto LABEL_318;
    }

    if ((a3 + v5))
    {
LABEL_318:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x92, "set_cr_index_arrays", v315);
      _os_crash();
      __break(1u);
LABEL_319:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x93, "set_cr_index_arrays", v315);
      _os_crash();
      __break(1u);
LABEL_320:
      v8 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x23B, "create_device_memory", v115);
      _os_crash();
      __break(1u);
      continue;
    }

    break;
  }

  if ((v311 + v76))
  {
    goto LABEL_319;
  }

  v316 = v4[456];
  *(v8 + 2264) = *"de";
  *(v8 + 567) = &v5[a3];
  *(v8 + 568) = v311 + v76;
  if ((v316 & 1) == 0)
  {
    v4[456] = 1;
  }

  *buf = &v5[a3];
  ashp::unsafe_storage<ashp::acipc::index_array_signaler>::storage::emplace<ashp::acipc::acipc_driver *&,unsigned short *,unsigned short &>((v8 + 4560), &v8[v11], buf, &v379);
  v320 = ashp::optional<ashp::acipc::index_array_signaler,void>::value((v8 + 4560), v317, v318, v319);
  v321 = ashp::detail::logging::get_log_level(v320);
  if (v321 >= 4)
  {
    v321 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v321)
    {
      *buf = 136446978;
      *&buf[4] = "ring_manager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 154;
      v420 = 2082;
      v421 = "set_cr_index_arrays";
      v422 = 2048;
      *v423 = v8 + 4560;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] completion ring head index array signaler 0x%llx", buf, 0x26u);
    }
  }

  if (ashp::detail::logging::get_log_level(v321))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] completion ring head index array signaler 0x%llx", "ring_manager.cpp", 154, "set_cr_index_arrays", v8 + 4560);
  }

  os_unfair_lock_unlock(&v8[v3]);
  ashp::optional<ashp::acipc::doorbell_coordinator,void>::value((v8 + 5264), v322, v323, v324);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value("BUG in Airship: ", v325, v326, v327);
  os_unfair_lock_lock(v8 + 1316);
  v329 = v4[1416];
  if (!v4[1416] || !*"BUG in Airship: ")
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0xB0, "set_ipc_stage", v328);
    _os_crash();
    __break(1u);
    goto LABEL_303;
  }

  v330 = *(v8 + 688);
  if (!v330)
  {
    goto LABEL_238;
  }

  if (CFStringCompare(*"BUG in Airship: ", v330, 0) == kCFCompareEqualTo)
  {
    goto LABEL_275;
  }

  v329 = v4[1416];
LABEL_238:
  v331 = CFStringGetCStringPtr(*"BUG in Airship: ", 0x8000100u);
  if (v331)
  {
    v332 = v331;
  }

  else
  {
    v332 = "???";
  }

  v333 = ashp::detail::logging::get_log_level(v331);
  if (v333 >= 3)
  {
    v333 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v333)
    {
      *buf = 136447234;
      *&buf[4] = "doorbell_coordinator.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 179;
      v420 = 2082;
      v421 = "set_ipc_stage";
      v422 = 1024;
      *v423 = v329;
      *&v423[4] = 2080;
      *&v423[6] = v332;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] coordinator state=%u, new IPC stage=%s", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v333))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] coordinator state=%u, new IPC stage=%s", "doorbell_coordinator.cpp", 179, "set_ipc_stage", v329, v332);
  }

  if (!*(v8 + 2748))
  {
LABEL_256:
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(buf, *"BUG in Airship: ", v335, v336);
    v343 = *(v8 + 688);
    *(v8 + 688) = *buf;
    *buf = v343;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v344, v345, v346);
    if (!*(v8 + 2748) && v4[1416] != 2)
    {
      ashp::dynamic_array<ashp::acipc::cr_controller::tr_association>::truncate(v8 + 680, 0, v347, v348, v349);
      v350 = *(v8 + 677);
      if (v350)
      {
        v351 = *(v8 + 679);
        v352 = &v351[18 * v350];
        do
        {
          os_unfair_lock_assert_owner(v8 + 1316);
          if ((v351[12] || v351[15]) && ashp::acipc::doorbell_coordinator::is_valid_for_ipc_stage((v8 + 5264), v351))
          {
            ashp::dynamic_array<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>::ensure_free_space(v8 + 680, v353, v354, v355, v356);
            ashp::detail::dynamic_array::storage<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>::emplace_back<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>(v8 + 680, v351, v357, v358, v359);
            v360 = v351[15];
            if (v360)
            {
              v361 = *(v8 + 2748);
              do
              {
                ++v361;
                v360 = *(v360 + 48);
              }

              while (v360);
              *(v8 + 2748) = v361;
            }

            v362 = v351[10];
            if (v362 >= *(v8 + 684))
            {
              v362 = *(v8 + 684);
            }

            *(v8 + 684) = v362;
            v363 = v351[11];
            if (v363 >= *(v8 + 685))
            {
              v363 = *(v8 + 685);
            }

            *(v8 + 685) = v363;
          }

          v351 += 18;
        }

        while (v351 != v352);
      }

      if (v4[1416] != 3)
      {
        ashp::acipc::doorbell_coordinator::process_pending((v8 + 5264), 0, 1);
      }

LABEL_275:
      os_unfair_lock_unlock(v8 + 1316);
      if (v378 == 1)
      {
        v378 = 0;
      }

      ipc_status_register = ashp::acipc::acipc_driver::read_ipc_status_register(v8);
      v365 = ipc_status_register;
      v366 = v4[1660];
      *(v8 + 1438) = ipc_status_register;
      if ((v366 & 1) == 0)
      {
        v4[1660] = 1;
      }

      v367 = ashp::detail::logging::get_log_level(ipc_status_register);
      if (v367 >= 4)
      {
        v367 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v367)
        {
          *buf = 136446978;
          *&buf[4] = "acipc_driver.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 494;
          v420 = 2082;
          v421 = "setup_main_ipc_stage";
          v422 = 1024;
          *v423 = v365;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ipc status=%u", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v367))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ipc status=%u", "acipc_driver.cpp", 494, "setup_main_ipc_stage", v365);
      }

      ashp::acipc::acipc_driver::main_ipc_state_machine(v8);
      goto LABEL_314;
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0xC9, "set_ipc_stage", v349);
    _os_crash();
    __break(1u);
    goto LABEL_316;
  }

  v338 = v4[1416];
  switch(v338)
  {
    case 1:
      v339 = v4[1416];
      goto LABEL_255;
    case 2:
      ashp::timer::stop(v8 + 1320, v334, v338, v336);
      v339 = 1;
      LODWORD(v338) = 1;
LABEL_255:
      ashp::acipc::doorbell_coordinator::process_pending((v8 + 5264), v339, v338);
      goto LABEL_256;
    case 3:
      v339 = 2;
      goto LABEL_255;
  }

LABEL_331:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0xC4, "set_ipc_stage", v337);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::acipc_driver::get_vector_for_interrupt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_assert_owner((a2 + 8));
  if ((*(a2 + 13) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x4C0, "get_vector_for_interrupt", v9);
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  if ((*(a2 + 3720) & 1) == 0)
  {
LABEL_7:
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF7, "value", v8);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF7, "value", v13);
    _os_crash();
    __break(1u);
    return;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a3, v6, v7, v8);
  v11 = *a3;
  v12 = *(a3 + 8);

  ashp::interrupt_manager::get_vector_for_interrupt(a1, (a2 + 632), v11, v12, v10);
}

uint64_t ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 80))
  {
    return a1 + 8;
  }

  ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::acipc::acipc_driver::read_ipc_status_register(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 2);
  v4 = *&this[1432]._os_unfair_lock_opaque;
  if (!v4 || (v5 = *&this[58]._os_unfair_lock_opaque) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x451, "read_ipc_status_register", v3);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (*(v4 + 28) != 4)
  {
LABEL_8:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x453, "read_ipc_status_register", v3);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = *(v4 + 20);
  v7 = *(v4 + 24);

  return ashp::device_transport::mem_read32(v5, v6, v7, v2);
}

void ashp::acipc::acipc_driver::main_ipc_state_machine(ashp::acipc::acipc_driver *this)
{
  v389 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  if (!*(this + 716) || !*(this + 29))
  {
    log_level = ashp::detail::logging::get_log_level(v2);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        buf = 136446722;
        *buf_4 = "acipc_driver.cpp";
        *&buf_4[8] = 1024;
        *&buf_4[10] = 663;
        v355 = 2082;
        v356 = "main_ipc_state_machine";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] current main ipc stage and transport must be set", &buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
LABEL_268:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] current main ipc stage and transport must be set", "acipc_driver.cpp", 663, "main_ipc_state_machine");
    }

    goto LABEL_24;
  }

  if (*(this + 5740))
  {
    os_unfair_lock_assert_owner(this + 2);
    if (!*(this + 716))
    {
      goto LABEL_274;
    }

    if (*(this + 5756) == 1)
    {
      buf = 4;
      buf_4[0] = 1;
      if (ashp::operator==<int,0>(this + 5752, &buf, v4, v5))
      {
        goto LABEL_45;
      }

      ashp::optional<unsigned int,void>::value(this + 5736, v7, v8, v9);
      v10 = *(this + 1434);
      if (v10 <= 1)
      {
        if (v10)
        {
          if (v10 != 1)
          {
            goto LABEL_45;
          }

          buf = 0;
          buf_4[0] = 1;
          if (ashp::operator==<int,0>(this + 5752, &buf, v8, v9))
          {
            goto LABEL_45;
          }

          LODWORD(v344[0]) = 1;
          BYTE4(v344[0]) = 1;
          v3 = ashp::operator==<int,0>(this + 5752, v344, v8, v9);
        }

        else
        {
          buf = 0;
          buf_4[0] = 1;
          v3 = ashp::operator==<int,0>(this + 5752, &buf, v8, v9);
        }
      }

      else
      {
        switch(v10)
        {
          case 2:
            buf = 1;
            buf_4[0] = 1;
            v3 = ashp::operator==<int,0>(this + 5752, &buf, v8, v9);
            break;
          case 3:
            buf = 1;
            buf_4[0] = 1;
            if (ashp::operator==<int,0>(this + 5752, &buf, v8, v9))
            {
              goto LABEL_45;
            }

            LODWORD(v344[0]) = 2;
            BYTE4(v344[0]) = 1;
            v3 = ashp::operator==<int,0>(this + 5752, v344, v8, v9);
            break;
          case 4:
            buf = 2;
            buf_4[0] = 1;
            v3 = ashp::operator==<int,0>(this + 5752, &buf, v8, v9);
            break;
          default:
            goto LABEL_45;
        }
      }

      if (v3)
      {
        goto LABEL_45;
      }
    }

    v14 = *(this + 5740);
    *(this + 1434) = 5;
    if ((v14 & 1) == 0)
    {
      *(this + 5740) = 1;
    }

    v15 = ashp::detail::logging::get_log_level(v3);
    if (v15 >= 2)
    {
      v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        buf = 136446722;
        *buf_4 = "acipc_driver.cpp";
        *&buf_4[8] = 1024;
        *&buf_4[10] = 668;
        v355 = 2082;
        v356 = "main_ipc_state_machine";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ipc status invalid", &buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v15))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
LABEL_277:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ipc status invalid", "acipc_driver.cpp", 668, "main_ipc_state_machine");
    }

    ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
    ashp::timer::stop((*(this + 767) + 16), v16, v17, v18);
    if (*(this + 6128) == 1)
    {
      *(this + 6128) = 0;
    }

    ashp::optional<ashp::interrupt,void>::value(this + 5632, v19, v20, v21);
    v22 = *(this + 704);
    ashp::optional<ashp::interrupt_manager,void>::value(&v22[158], v23, v24, v25);
    ashp::interrupt_manager::resume_handler(v22 + 158, this + 5632);
    ashp::optional<ashp::interrupt,void>::value(this + 5864, v26, v27, v28);
    v29 = *(this + 733);
    ashp::optional<ashp::interrupt_manager,void>::value(&v29[158], v30, v31, v32);
    ashp::interrupt_manager::suspend_handler(v29 + 158, this + 5864);
    ashp::optional<ashp::interrupt,void>::value(this + 5784, v33, v34, v35);
    v36 = *(this + 723);
    ashp::optional<ashp::interrupt_manager,void>::value(&v36[158], v37, v38, v39);
    ashp::interrupt_manager::suspend_handler(v36 + 158, this + 5784);
    ashp::acipc::acipc_driver::raise_ipc_error(this, 8);
    while (1)
    {
LABEL_45:
      ashp::optional<unsigned int,void>::value(this + 5736, v7, v8, v9);
      v40 = *(this + 1434);
      ashp::optional<unsigned int,void>::value(this + 5736, v41, v42, v43);
      v47 = *(this + 1434);
      if (v47 > 2)
      {
        if (v47 != 3)
        {
          if (v47 == 4)
          {
            buf = 4;
            buf_4[0] = 1;
            if (ashp::operator==<int,0>(this + 5752, &buf, v45, v46))
            {
              v200 = *(this + 5740);
              *(this + 1434) = 5;
              if ((v200 & 1) == 0)
              {
                *(this + 5740) = 1;
              }

              ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
              ashp::acipc::acipc_driver::raise_ipc_error(this, 1);
              ashp::timer::stop((*(this + 767) + 16), v201, v202, v203);
              if (*(this + 6128) == 1)
              {
                *(this + 6128) = 0;
              }

              ashp::optional<ashp::interrupt,void>::value(this + 5632, v204, v205, v206);
              v207 = *(this + 704);
              ashp::optional<ashp::interrupt_manager,void>::value(&v207[158], v208, v209, v210);
              ashp::interrupt_manager::resume_handler(v207 + 158, this + 5632);
              ashp::optional<ashp::interrupt,void>::value(this + 5864, v211, v212, v213);
              v214 = *(this + 733);
              ashp::optional<ashp::interrupt_manager,void>::value(&v214[158], v215, v216, v217);
              ashp::interrupt_manager::suspend_handler(v214 + 158, this + 5864);
              ashp::optional<ashp::interrupt,void>::value(this + 5784, v218, v219, v220);
              v221 = *(this + 723);
              ashp::optional<ashp::interrupt_manager,void>::value(&v221[158], v222, v223, v224);
              ashp::interrupt_manager::suspend_handler(v221 + 158, this + 5784);
            }
          }

          else if (v47 == 5)
          {
            ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
            ashp::timer::stop((*(this + 767) + 16), v94, v95, v96);
            if (*(this + 6128) == 1)
            {
              *(this + 6128) = 0;
            }
          }

          goto LABEL_254;
        }

        buf = 2;
        buf_4[0] = 1;
        if (ashp::operator==<int,0>(this + 5752, &buf, v45, v46))
        {
          v112 = *(this + 5740);
          *(this + 1434) = 4;
          if ((v112 & 1) == 0)
          {
            *(this + 5740) = 1;
          }

          ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
          buf = 0;
          buf_4[0] = 1;
          if ((ashp::operator==<int,0>(this + 5744, &buf, v113, v114) & 1) == 0)
          {
            goto LABEL_263;
          }

          os_unfair_lock_lock(this + 63);
          v116 = *(this + 80);
          os_unfair_lock_unlock(this + 63);
          if (v116)
          {
            goto LABEL_264;
          }

          v119 = ashp::detail::logging::get_log_level(v117);
          if (v119 >= 3)
          {
            v119 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v119)
            {
              buf = 136446722;
              *buf_4 = "acipc_driver.cpp";
              *&buf_4[8] = 1024;
              *&buf_4[10] = 727;
              v355 = 2082;
              v356 = "main_ipc_state_machine";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ipc handshake complete", &buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v119))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ipc handshake complete", "acipc_driver.cpp", 727, "main_ipc_state_machine");
          }

          ashp::timer::stop((*(this + 767) + 16), v120, v121, v122);
          if (*(this + 6128) == 1)
          {
            *(this + 6128) = 0;
          }

          ashp::optional<ashp::interrupt,void>::value(this + 5864, v123, v124, v125);
          v126 = *(this + 733);
          ashp::optional<ashp::interrupt_manager,void>::value(&v126[158], v127, v128, v129);
          ashp::interrupt_manager::resume_handler(v126 + 158, this + 5864);
          ashp::optional<ashp::interrupt,void>::value(this + 5632, v130, v131, v132);
          v133 = *(this + 704);
          ashp::optional<ashp::interrupt_manager,void>::value(&v133[158], v134, v135, v136);
          ashp::interrupt_manager::suspend_handler(v133 + 158, this + 5632);
          ashp::optional<ashp::interrupt,void>::value(this + 5784, v137, v138, v139);
          v140 = *(this + 723);
          ashp::optional<ashp::interrupt_manager,void>::value(&v140[158], v141, v142, v143);
          ashp::interrupt_manager::suspend_handler(v140 + 158, this + 5784);
          ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(this + 5264, v144, v145, v146);
          os_unfair_lock_lock(this + 1316);
          v148 = ashp::detail::logging::get_log_level(v147);
          if (v148 >= 4)
          {
            v148 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v148)
            {
              buf = 136446722;
              *buf_4 = "doorbell_coordinator.cpp";
              *&buf_4[8] = 1024;
              *&buf_4[10] = 274;
              v355 = 2082;
              v356 = "exit_reset";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] exiting reset", &buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v148))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] exiting reset", "doorbell_coordinator.cpp", 274, "exit_reset");
          }

          if (*(this + 5512) == 4)
          {
            ashp::acipc::doorbell_coordinator::change_state(this + 5264, 1, 0);
          }

          os_unfair_lock_unlock(this + 1316);
          ashp::optional<ashp::acipc::messenger,void>::value(this + 4944, v149, v150, v151);
          os_unfair_lock_lock(this + 1236);
          v152 = *(this + 5136);
          v154 = ashp::detail::logging::get_log_level(v153);
          if (v152)
          {
            if (v154 >= 4)
            {
              v154 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v154)
              {
                buf = 136446722;
                *buf_4 = "messenger.cpp";
                *&buf_4[8] = 1024;
                *&buf_4[10] = 122;
                v355 = 2082;
                v356 = "exit_reset";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] exiting reset", &buf, 0x1Cu);
              }
            }

            v155 = ashp::detail::logging::get_log_level(v154);
            if (v155)
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] exiting reset", "messenger.cpp", 122, "exit_reset");
            }

            *(this + 5136) = 0;
            v157 = *(this + 628);
            if (!v157)
            {
              goto LABEL_270;
            }

            if (*(v157 + 248) == 1)
            {
              v158 = ashp::detail::logging::get_log_level(v155);
              if (v158 >= 4)
              {
                v158 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v158)
                {
                  buf = 136446722;
                  *buf_4 = "messenger.cpp";
                  *&buf_4[8] = 1024;
                  *&buf_4[10] = 129;
                  v355 = 2082;
                  v356 = "exit_reset";
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] creating mcr", &buf, 0x1Cu);
                }
              }

              if (ashp::detail::logging::get_log_level(v158))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] creating mcr", "messenger.cpp", 129, "exit_reset");
              }

              v163 = *(this + 630);
              if (v163)
              {
                v164 = *(this + 619);
                v165 = *(this + 628);
                LOBYTE(buf) = 1;
                *&buf_4[4] = v163;
                cf = @"mcr";
                ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&cf, v159, v160, v161);
                CFRetain(cf);
                ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&cf, v166, v167, v168);
                ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&buf_4[12], cf, v169, v170);
                HIDWORD(v356) = 0;
                v359 = 0;
                v360 = 0;
                *&v358[2] = 0;
                v361 = 0;
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v165 + 184, v171, v172, v173);
                v362 = *(v165 + 184);
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v165 + 184, v174, v175, v176);
                LODWORD(v363) = *(v165 + 188);
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v165 + 184, v177, v178, v179);
                DWORD1(v363) = *(v165 + 192);
                LOBYTE(v365) = 0;
                LOBYTE(v366) = 0;
                HIDWORD(v366) = 0;
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v165 + 184, v180, v181, v182);
                v186 = *(v165 + 216);
                if (v186 == 1)
                {
                  ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v165 + 184, v183, v184, v185);
                  ashp::optional<ashp::acipc::name_and_selector,void>::value(v165 + 200, v187, v188, v189);
                  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v345, *(v165 + 200), v190, v191);
                  v346 = *(v165 + 208);
                  v369 = 0;
                  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v367, v192, v193, v194);
                  v195 = v345;
                  v345 = 0;
                  v367 = v195;
                  v368 = v346;
                  v196 = 1;
                }

                else
                {
                  v196 = 0;
                }

                v369 = v196;
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v165 + 184, v183, v184, v185);
                v370 = *(v165 + 224);
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v165 + 184, v241, v242, v243);
                v371 = *(v165 + 228);
                v372 = 0;
                v374 = 0;
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v165 + 184, v244, v245, v246);
                ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v349, *(v165 + 232), v247, v248);
                v350 = *(v165 + 240);
                LOBYTE(v377) = 0;
                ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v375, v249, v250, v251);
                v252 = v349;
                v349 = 0;
                v375 = v252;
                LODWORD(v376) = v350;
                LOBYTE(v377) = 1;
                v378 = 0;
                v379 = 0u;
                v380 = 0u;
                v381 = 0u;
                memset(v382, 0, 52);
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v349, v253, v254, v255);
                if (v186)
                {
                  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v345, v256, v257, v258);
                }

                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&cf, v256, v257, v258);
                ashp::acipc::cr_controller::create_with_config();
              }

              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x82, "exit_reset", v162);
              _os_crash();
              __break(1u);
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x8A, "exit_reset", v342);
              _os_crash();
              __break(1u);
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x8C, "exit_reset", v343);
              _os_crash();
              __break(1u);
              goto LABEL_277;
            }

            v259 = ashp::detail::logging::get_log_level(v155);
            if (v259 >= 4)
            {
              v259 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v259)
              {
                buf = 136446722;
                *buf_4 = "messenger.cpp";
                *&buf_4[8] = 1024;
                *&buf_4[10] = 145;
                v355 = 2082;
                v356 = "exit_reset";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] creating mtr", &buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v259))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] creating mtr", "messenger.cpp", 145, "exit_reset");
            }

            v264 = *(this + 629);
            if (v264)
            {
              v265 = *(this + 619);
              v266 = *(this + 628);
              LOBYTE(buf) = 1;
              *&buf_4[4] = v264;
              v352 = @"mtr";
              ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v352, v260, v261, v262);
              CFRetain(v352);
              ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v352, v267, v268, v269);
              ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&buf_4[12], v352, v270, v271);
              HIDWORD(v356) = 0;
              v359 = 0;
              v360 = 0;
              *&v358[2] = 0;
              v361 = 0;
              v362 = *(v266 + 112);
              v363 = *(v266 + 116);
              v364 = 0;
              v275 = *(v266 + 133);
              if (v275 == 1)
              {
                v365 = 0;
                v366 = 0;
                v276 = 1;
                v367 = 0;
              }

              else
              {
                v351 = @"mcr";
                ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v351, v272, v273, v274);
                CFRetain(v351);
                ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v351, v277, v278, v279);
                ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v345, v351, v280, v281);
                v346 = 0;
                LOBYTE(v367) = 0;
                ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v365, v282, v283, v284);
                v285 = v345;
                v345 = 0;
                v365 = v285;
                LODWORD(v366) = v346;
                LOBYTE(v367) = 1;
                v276 = *(v266 + 133);
              }

              LOBYTE(v370) = 0;
              LOBYTE(v372) = *(v266 + 132);
              HIBYTE(v372) = v276;
              v373 = 0;
              v374 = 0;
              LODWORD(v375) = 1;
              ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v349, *(v266 + 136), v273, v274);
              v350 = *(v266 + 144);
              LOBYTE(v378) = 0;
              ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v376, v286, v287, v288);
              v289 = v349;
              v349 = 0;
              v376 = v289;
              v377 = v350;
              LOBYTE(v378) = 1;
              *(&v379 + 4) = *(v266 + 152);
              WORD6(v379) = 0;
              LODWORD(v380) = 0;
              ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&cf, *(v266 + 160), v290, v291);
              v348 = *(v266 + 168);
              BYTE4(v381) = 0;
              ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v380 + 4, v292, v293, v294);
              v295 = cf;
              cf = 0;
              *(&v380 + 4) = v295;
              HIDWORD(v380) = v348;
              BYTE4(v381) = 1;
              WORD6(v381) = 0;
              *v382 = 0;
              v382[4] = *(v266 + 176);
              *&v382[6] = *(v266 + 178);
              memset(&v382[12], 0, 48);
              v383 = 0u;
              v384 = 0u;
              v385 = 0u;
              v386 = 0u;
              v387 = 0u;
              v388 = 0u;
              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&cf, v296, v297, v298);
              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v349, v299, v300, v301);
              if ((v275 & 1) == 0)
              {
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v345, v302, v303, v304);
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v351, v305, v306, v307);
              }

              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v352, v302, v303, v304);
              ashp::acipc::tr_controller::create_with_config();
            }

LABEL_271:
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x92, "exit_reset", v263);
            _os_crash();
            __break(1u);
LABEL_272:
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x6E, "exit_reset", v312);
            _os_crash();
            __break(1u);
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x97, "exit_reset", v338);
            _os_crash();
            __break(1u);
LABEL_273:
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x6F, "exit_reset", v312);
            _os_crash();
            __break(1u);
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x98, "exit_reset", v339);
            _os_crash();
            __break(1u);
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x9A, "exit_reset", v340);
            _os_crash();
            __break(1u);
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xA1, "exit_reset", v341);
            _os_crash();
            __break(1u);
LABEL_274:
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x30B, "is_ipc_status_valid", v6);
            _os_crash();
            __break(1u);
LABEL_275:
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_23:
            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] main ipc state is not set", "acipc_driver.cpp", 664, "main_ipc_state_machine");
            goto LABEL_24;
          }

          if (v154 >= 2)
          {
            v154 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v154)
            {
              buf = 136446722;
              *buf_4 = "messenger.cpp";
              *&buf_4[8] = 1024;
              *&buf_4[10] = 121;
              v355 = 2082;
              v356 = "exit_reset";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] messenger already out of reset", &buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v154))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] messenger already out of reset", "messenger.cpp", 121, "exit_reset");
          }

          os_unfair_lock_unlock(this + 1236);
          ashp::optional<ashp::acipc::ring_manager,void>::value(this + 4264, v308, v309, v310);
          os_unfair_lock_lock(this + 1066);
          if (*(this + 4296))
          {
            *(this + 4296) = 0;
            if ((*(this + 4328) & 1) == 0)
            {
              goto LABEL_272;
            }

            if ((*(this + 4552) & 1) == 0)
            {
              goto LABEL_273;
            }

            v313 = ashp::detail::logging::get_log_level(v311);
            if (v313 >= 4)
            {
              v313 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v313)
              {
                buf = 136446722;
                *buf_4 = "ring_manager.cpp";
                *&buf_4[8] = 1024;
                *&buf_4[10] = 112;
                v355 = 2082;
                v356 = "exit_reset";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] recomputing closed ring availability", &buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v313))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] recomputing closed ring availability", "ring_manager.cpp", 112, "exit_reset");
            }

            ashp::acipc::ring_manager::recompute_closed_ring_availability(this + 1066);
          }

          else
          {
            v314 = ashp::detail::logging::get_log_level(v311);
            if (v314 >= 2)
            {
              v314 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v314)
              {
                buf = 136446722;
                *buf_4 = "ring_manager.cpp";
                *&buf_4[8] = 1024;
                *&buf_4[10] = 108;
                v355 = 2082;
                v356 = "exit_reset";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ring manager already out of reset", &buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v314))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ring manager already out of reset", "ring_manager.cpp", 108, "exit_reset");
            }
          }

          os_unfair_lock_unlock(this + 1066);
          ashp::optional<ashp::acipc::messenger,void>::value(this + 4944, v315, v316, v317);
          os_unfair_lock_lock(this + 1236);
          if (*(this + 5136) == 1)
          {
            goto LABEL_265;
          }

          if (*(this + 5138) == 1)
          {
            goto LABEL_266;
          }

          *(this + 5138) = 1;
          v320 = ashp::detail::logging::get_log_level(v318);
          if (v320 >= 4)
          {
            v320 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v320)
            {
              buf = 136446722;
              *buf_4 = "messenger.cpp";
              *&buf_4[8] = 1024;
              *&buf_4[10] = 207;
              v355 = 2082;
              v356 = "start";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] starting messenger", &buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v320))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] starting messenger", "messenger.cpp", 207, "start");
          }

          ashp::async_notifier::resume(this + 1244, v321, v322, v323);
          if (*(this + 644))
          {
            v325 = ashp::detail::logging::get_log_level(v324);
            if (v325 >= 4)
            {
              v325 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v325)
              {
                buf = 136446722;
                *buf_4 = "messenger.cpp";
                *&buf_4[8] = 1024;
                *&buf_4[10] = 212;
                v355 = 2082;
                v356 = "start";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] opening mcr", &buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v325))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] opening mcr", "messenger.cpp", 212, "start");
            }

            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 644, v326, v327, v328);
            v324 = ashp::acipc::cr_controller::open(*(this + 644));
            if (v324)
            {
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xD5, "start", v329);
              _os_crash();
              __break(1u);
LABEL_270:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x7D, "exit_reset", v156);
              _os_crash();
              __break(1u);
              goto LABEL_271;
            }
          }

          v330 = ashp::detail::logging::get_log_level(v324);
          if (v330 >= 4)
          {
            v330 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v330)
            {
              buf = 136446722;
              *buf_4 = "messenger.cpp";
              *&buf_4[8] = 1024;
              *&buf_4[10] = 215;
              v355 = 2082;
              v356 = "start";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] opening mtr", &buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v330))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] opening mtr", "messenger.cpp", 215, "start");
          }

          ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 643, v331, v332, v333);
          if (ashp::acipc::tr_controller::open(*(this + 643)))
          {
            goto LABEL_267;
          }

          os_unfair_lock_lock(this + 1237);
          ashp::acipc::messenger::send_overflow_messages(this + 1236);
          *(this + 5139) = 0;
          os_unfair_lock_unlock(this + 1237);
          os_unfair_lock_unlock(this + 1236);
          ashp::optional<ashp::interrupt,void>::value(this + 4880, v335, v336, v337);
          os_unfair_lock_lock(this + 1220);
          if (*(this + 4896) == 1)
          {
            *(this + 4896) = 0;
            ashp::acipc::memregion_manager::recompute_unmapped_region_availability(this + 1220);
          }

          os_unfair_lock_unlock(this + 1220);
          ashp::acipc::acipc_driver::sleep_state_machine(this);
        }

        else
        {
          buf = 4;
          buf_4[0] = 1;
          if (ashp::operator==<int,0>(this + 5752, &buf, v110, v111))
          {
            v225 = *(this + 5740);
            *(this + 1434) = 5;
            if ((v225 & 1) == 0)
            {
              *(this + 5740) = 1;
            }

            ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
            ashp::timer::stop((*(this + 767) + 16), v226, v227, v228);
            if (*(this + 6128) == 1)
            {
              *(this + 6128) = 0;
            }

LABEL_168:
            ashp::acipc::acipc_driver::raise_ipc_error(this, 1);
          }
        }
      }

      else
      {
        switch(v47)
        {
          case 0:
            buf = 0;
            buf_4[0] = 1;
            if (ashp::operator==<int,0>(this + 5752, &buf, v45, v46))
            {
              ashp::acipc::acipc_driver::update_ipc_control_register(this, 1);
              v97 = *(this + 5740);
              *(this + 1434) = 1;
              if ((v97 & 1) == 0)
              {
                *(this + 5740) = 1;
              }

              ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
              v99 = *(this + 716);
              if (*(v99 + 296) == 1)
              {
                v100 = (v99 + 292);
                v101 = ashp::optional<unsigned int,void>::value(v99 + 292, v98, v45, v46);
                v102 = ashp::detail::logging::get_log_level(v101);
                if (v102 >= 3)
                {
                  v102 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                  if (v102)
                  {
                    v103 = *v100;
                    buf = 136446978;
                    *buf_4 = "acipc_driver.cpp";
                    *&buf_4[8] = 1024;
                    *&buf_4[10] = 690;
                    v355 = 2082;
                    v356 = "main_ipc_state_machine";
                    v357 = 1024;
                    *v358 = v103;
                    _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] starting ipc handshake timer; timeout=%u ms", &buf, 0x22u);
                  }
                }

                if (ashp::detail::logging::get_log_level(v102))
                {
                  if (airship_platform_get_global_logger::once != -1)
                  {
                    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                  }

                  ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] starting ipc handshake timer; timeout=%u ms", "acipc_driver.cpp", 690, "main_ipc_state_machine", *v100);
                }

                v107 = *ashp::optional<unsigned int,void>::value(*(this + 716) + 292, v104, v105, v106);
                mach_timebase_info(&buf);
                v108 = 1000000 * v107;
                if (is_mul_ok(v108, *buf_4))
                {
                  v109 = v108 * *buf_4 / buf;
                }

                else
                {
                  v109 = -1;
                }

                v233 = mach_continuous_time();
                v237 = v233 + v109;
                if (__CFADD__(v233, v109))
                {
                  v237 = -1;
                }

                v238 = *(this + 6128);
                *(this + 765) = v237;
                if ((v238 & 1) == 0)
                {
                  *(this + 6128) = 1;
                }

                v239 = *(this + 767);
                ashp::optional<unsigned long long,void>::value(this + 6120, v234, v235, v236);
                ashp::timer::start(v239 + 4, *(this + 765), v109, v240);
              }
            }

            break;
          case 1:
            buf = 1;
            buf_4[0] = 1;
            if (!ashp::operator==<int,0>(this + 5752, &buf, v45, v46))
            {
              buf = 4;
              buf_4[0] = 1;
              if (!ashp::operator==<int,0>(this + 5752, &buf, v197, v198))
              {
                break;
              }

              v229 = *(this + 5740);
              *(this + 1434) = 5;
              if ((v229 & 1) == 0)
              {
                *(this + 5740) = 1;
              }

              ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
              ashp::timer::stop((*(this + 767) + 16), v230, v231, v232);
              if (*(this + 6128) == 1)
              {
                *(this + 6128) = 0;
              }

              goto LABEL_168;
            }

            v199 = *(this + 5740);
            *(this + 1434) = 2;
            if ((v199 & 1) == 0)
            {
              *(this + 5740) = 1;
            }

            goto LABEL_91;
          case 2:
            ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 6032, v44, v45, v46);
            v48 = *(this + 754);
            ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 6032, v49, v50, v51);
            v52 = *(this + 755);
            os_unfair_lock_assert_owner(this + 2);
            v54 = ashp::detail::logging::get_log_level(v53);
            if (v54 >= 4)
            {
              v54 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v54)
              {
                buf = 136447234;
                *buf_4 = "acipc_driver.cpp";
                *&buf_4[8] = 1024;
                *&buf_4[10] = 1170;
                v355 = 2082;
                v356 = "update_mem_window_base_and_size";
                v357 = 2048;
                *v358 = v48;
                *&v358[8] = 2048;
                v359 = v52;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] window_base=%#llx, size=%#llx", &buf, 0x30u);
              }
            }

            if (ashp::detail::logging::get_log_level(v54))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] window_base=%#llx, size=%#llx", "acipc_driver.cpp", 1170, "update_mem_window_base_and_size", v48, v52);
            }

            v58 = ashp::optional<ashp::acipc::config::acipc_config,void>::value(this + 3824, v55, v56, v57);
            if (*(this + 495) != -1)
            {
              ashp::optional<ashp::acipc::config::acipc_config,void>::value(this + 3824, v59, v60, v61);
              v63 = *(this + 495);
              v67 = ashp::optional<ashp::acipc::config::acipc_config,void>::value(this + 3824, v64, v65, v66);
              v48 = (v63 & v48);
              v68 = *(this + 495);
              v69 = ashp::detail::logging::get_log_level(v67);
              if (v69 >= 4)
              {
                v69 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v69)
                {
                  buf = 136447234;
                  *buf_4 = "acipc_driver.cpp";
                  *&buf_4[8] = 1024;
                  *&buf_4[10] = 1175;
                  v355 = 2082;
                  v356 = "update_mem_window_base_and_size";
                  v357 = 2048;
                  *v358 = v68;
                  *&v358[8] = 2048;
                  v359 = v48;
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] applied errata window_base_mask=%#llx, masked_base=%#llx", &buf, 0x30u);
                }
              }

              v58 = ashp::detail::logging::get_log_level(v69);
              if (v58)
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] applied errata window_base_mask=%#llx, masked_base=%#llx", "acipc_driver.cpp", 1175, "update_mem_window_base_and_size", v68, v48);
              }
            }

            if (HIDWORD(v52))
            {
              v70 = ashp::detail::logging::get_log_level(v58);
              if (v70 >= 4)
              {
                v70 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v70)
                {
                  buf = 136446978;
                  *buf_4 = "acipc_driver.cpp";
                  *&buf_4[8] = 1024;
                  *&buf_4[10] = 1179;
                  v355 = 2082;
                  v356 = "update_mem_window_base_and_size";
                  v357 = 2048;
                  *v358 = v52;
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] oversize host memory window reduced from %#llx to UINT32_MAX", &buf, 0x26u);
                }
              }

              if (ashp::detail::logging::get_log_level(v70))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] oversize host memory window reduced from %#llx to UINT32_MAX", "acipc_driver.cpp", 1179, "update_mem_window_base_and_size", v52);
              }

              v52 = 0xFFFFFFFFLL;
            }

            v71 = *(this + 716);
            if (!v71 || (v72 = *(this + 29)) == 0)
            {
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x49F, "update_mem_window_base_and_size", v62);
              _os_crash();
              __break(1u);
LABEL_257:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x470, "update_context_info_addr_registers", v89);
              _os_crash();
              __break(1u);
LABEL_258:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x4A3, "update_mem_window_base_and_size", v62);
              _os_crash();
              __break(1u);
LABEL_259:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x4A4, "update_mem_window_base_and_size", v62);
              _os_crash();
              __break(1u);
LABEL_260:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x4A5, "update_mem_window_base_and_size", v62);
              _os_crash();
              __break(1u);
LABEL_261:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x473, "update_context_info_addr_registers", v89);
              _os_crash();
              __break(1u);
LABEL_262:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x474, "update_context_info_addr_registers", v89);
              _os_crash();
              __break(1u);
LABEL_263:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x2D5, "main_ipc_state_machine", v115);
              _os_crash();
              __break(1u);
LABEL_264:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x2D6, "main_ipc_state_machine", v118);
              _os_crash();
              __break(1u);
LABEL_265:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xCC, "start", v319);
              _os_crash();
              __break(1u);
LABEL_266:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xCD, "start", v319);
              _os_crash();
              __break(1u);
LABEL_267:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xD8, "start", v334);
              _os_crash();
              __break(1u);
              goto LABEL_268;
            }

            if (*(v71 + 76) != 4)
            {
              goto LABEL_258;
            }

            if (*(v71 + 88) != 4)
            {
              goto LABEL_259;
            }

            if (*(v71 + 100) != 4)
            {
              goto LABEL_260;
            }

            ashp::device_transport::mem_write32(v72, *(v71 + 68), *(v71 + 72), v48);
            ashp::device_transport::mem_write32(*(this + 29), *(v71 + 80), *(v71 + 84), (v48 >> 32));
            ashp::device_transport::mem_write32(*(this + 29), *(v71 + 92), *(v71 + 96), v52);
            __dmb(0xBu);
            v76 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(this + 5944, v73, v74, v75);
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v76 + 24), v77, v78, v79);
            v344[0] = ashp::devmem_mapping::get_paddr(*(v76 + 24));
            ashp::optional<unsigned long long,ashp::optional_sentinel<18446744073709551615ull,false>>::value(v344, v80, v81, v82);
            v83 = v344[0];
            v87 = *(ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(this + 5944, v84, v85, v86) + 32);
            os_unfair_lock_assert_owner(this + 2);
            v90 = *(this + 716);
            if (!v90 || !*(this + 29))
            {
              goto LABEL_257;
            }

            if (*(v90 + 52) != 4)
            {
              goto LABEL_261;
            }

            if (*(v90 + 64) != 4)
            {
              goto LABEL_262;
            }

            v91 = ashp::detail::logging::get_log_level(v88);
            if (v91 >= 4)
            {
              v91 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v91)
              {
                buf = 136446722;
                *buf_4 = "acipc_driver.cpp";
                *&buf_4[8] = 1024;
                *&buf_4[10] = 1141;
                v355 = 2082;
                v356 = "update_context_info_addr_registers";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] updating context info address register", &buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v91))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] updating context info address register", "acipc_driver.cpp", 1141, "update_context_info_addr_registers");
            }

            v92 = (v83 + v87);
            ashp::device_transport::mem_write32(*(this + 29), *(v90 + 44), *(v90 + 48), v92);
            ashp::device_transport::mem_write32(*(this + 29), *(v90 + 56), *(v90 + 60), (v92 >> 32));
            ashp::acipc::acipc_driver::update_ipc_control_register(this, 2);
            v93 = *(this + 5740);
            *(this + 1434) = 3;
            if ((v93 & 1) == 0)
            {
              *(this + 5740) = 1;
            }

LABEL_91:
            ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
            break;
        }
      }

LABEL_254:
      buf = v40;
      buf_4[0] = 1;
      if (ashp::operator==<int,0>(this + 5736, &buf, v45, v46))
      {
        goto LABEL_24;
      }
    }
  }

  v12 = ashp::detail::logging::get_log_level(v2);
  if (v12 >= 2)
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      buf = 136446722;
      *buf_4 = "acipc_driver.cpp";
      *&buf_4[8] = 1024;
      *&buf_4[10] = 664;
      v355 = 2082;
      v356 = "main_ipc_state_machine";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] main ipc state is not set", &buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v12))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      goto LABEL_275;
    }

    goto LABEL_23;
  }

LABEL_24:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t ashp::deferred_action<ashp::acipc::acipc_driver::setup_main_ipc_stage(ashp::acipc::config::main_ipc_stage_spec const*,ashp::acipc::config::exec_stage_spec const*)::$_0>::~deferred_action(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    ashp::acipc::acipc_driver::teardown_main_ipc_stage(*a1);
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }
  }

  return a1;
}

uint64_t ashp::acipc::acipc_driver::update_ipc_control_register(ashp::acipc::acipc_driver *this, const char *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  v7 = *(this + 716);
  if (!v7 || !*(this + 29))
  {
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x45B, "update_ipc_control_register", v6);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  v2 = *(v7 + 8);
  log_level = ashp::detail::logging::get_log_level(v5);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v9 = *(v7 + 12);
      *buf = 136447234;
      v15 = "acipc_driver.cpp";
      v17 = 1117;
      v18 = 2082;
      v16 = 1024;
      v19 = "update_ipc_control_register";
      v20 = 1024;
      v21 = v2;
      v22 = 1024;
      v23 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] updating register at bank=%u, offset=%u", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] updating register at bank=%u, offset=%u", "acipc_driver.cpp", 1117, "update_ipc_control_register", v2, *(v7 + 12));
      goto LABEL_9;
    }

LABEL_15:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

LABEL_9:
  v11 = *(v7 + 16);
  if (v11 == 4)
  {
    result = ashp::device_transport::mem_write32(*(this + 29), *(v7 + 8), *(v7 + 12), a2);
    goto LABEL_13;
  }

  if (v11 == 2)
  {
    result = ashp::device_transport::mem_write16(*(this + 29), *(v7 + 8), *(v7 + 12), a2);
LABEL_13:
    v13 = *MEMORY[0x277D85DE8];
    return result;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x468, "update_ipc_control_register", v10);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::emplace<ashp::acipc::acipc_driver::device_memory>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset(a1, a2, a3, a4);
  if (a1)
  {
    ashp::buffer_mapping::buffer_mapping(a1, a2);
    v6 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a1 + 24) = v6;
    v7 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v7;
    *(a1 + 60) = 0;
    if (*(a2 + 60) == 1)
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 60) = 1;
      if (*(a2 + 60) == 1)
      {
        *(a2 + 60) = 0;
      }
    }

    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t ashp::deferred_action<ashp::acipc::acipc_driver::setup_boot_ipc_stage(ashp::acipc::config::boot_ipc_stage_spec const*,ashp::acipc::config::exec_stage_spec const*)::$_0>::~deferred_action(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    ashp::acipc::acipc_driver::teardown_boot_ipc_stage(*a1);
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }
  }

  return a1;
}

void ashp::acipc::acipc_driver::handle_clear_transport(const os_unfair_lock *this)
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  v3 = *&this[1430]._os_unfair_lock_opaque;
  v4 = *&this[1432]._os_unfair_lock_opaque;
  if (v3)
  {
    v5 = v4 != 0;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    v5 = 1;
  }

  v6 = v3 != 0;
  log_level = ashp::detail::logging::get_log_level(v2);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447234;
      v10 = "acipc_driver.cpp";
      v12 = 258;
      v13 = 2082;
      v11 = 1024;
      v14 = "handle_clear_transport";
      v15 = 1024;
      v16 = v6;
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ipc stage not torn down, boot stage valid: %u, main stage valid: %u", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ipc stage not torn down, boot stage valid: %u, main stage valid: %u", "acipc_driver.cpp", 258, "handle_clear_transport", v6, v5);
  }

  ashp::acipc::acipc_driver::raise_ipc_error(this, 2);
LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
}

void ashp::acipc::acipc_driver::did_set_transport(const os_unfair_lock *this)
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
      v8 = 247;
      v9 = 2082;
      v10 = "did_set_transport";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] probing exec stage register", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] probing exec stage register", "acipc_driver.cpp", 247, "did_set_transport");
  }

  ashp::acipc::acipc_driver::probe_exec_stage_register_if_ready(this);
  v4 = *MEMORY[0x277D85DE8];
}