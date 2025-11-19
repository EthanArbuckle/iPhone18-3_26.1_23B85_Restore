Class nw_data_transfer_report_get_sent_transport_ecn_capable_acked_packet_count(void *a1, unsigned int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_acked_packet_count";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_acked_packet_count";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null report", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v31 != 1)
    {
      v19 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_acked_packet_count";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v25 = type;
    v26 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_acked_packet_count";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_acked_packet_count";
      v35 = 2082;
      v36 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if (nw_data_transfer_report_get_state(v3) != nw_data_transfer_report_state_collected)
  {
    v21 = __nwlog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_acked_packet_count";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (a2 == -1)
  {
    isa = v4[18].isa;
    isa_high = HIDWORD(v4[5].isa);
    if (isa_high < 2)
    {
      goto LABEL_14;
    }

    if (isa_high == 2)
    {
      v9 = 1;
    }

    else
    {
      v11 = 0;
      v12 = isa_high - 1;
      v13 = v4[52].isa;
      v14 = (isa_high - 1) & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        isa = (isa + *(v13 + 11));
        v11 += *(v13 + 56);
        v13 = (v13 + 720);
        v14 -= 2;
      }

      while (v14);
      isa = (isa + v11);
      if (v12 == ((isa_high - 1) & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_14;
      }

      v9 = v12 | 1;
    }

    v15 = isa_high - v9;
    v16 = (v4[52].isa + 360 * v9 - 272);
    do
    {
      isa = (isa + *v16);
      v16 += 45;
      --v15;
    }

    while (v15);
    goto LABEL_14;
  }

  if (HIDWORD(v4[5].isa) <= a2)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_acked_packet_count";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_acked_packet_count";
        _os_log_impl(&dword_181A37000, v19, v23, "%{public}s called with null (path_index < report->path_count)", buf, 0xCu);
      }

LABEL_56:

LABEL_57:
      if (v18)
      {
        free(v18);
      }

LABEL_59:
      isa = 0;
      goto LABEL_14;
    }

    if (v31 != 1)
    {
      v19 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_acked_packet_count";
        _os_log_impl(&dword_181A37000, v19, v30, "%{public}s called with null (path_index < report->path_count), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v27 = type;
    v28 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_acked_packet_count";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v28)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_acked_packet_count";
      v35 = 2082;
      v36 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_44:

    free(backtrace_string);
    goto LABEL_57;
  }

  v5 = v4;
  if (HIDWORD(v4[5].isa) <= a2)
  {
    v6 = 0;
  }

  else if (a2)
  {
    v6 = v5[52].isa + 360 * a2 - 360;
  }

  else
  {
    v6 = &v5[7];
  }

  isa = *(v6 + 88);
LABEL_14:

  return isa;
}

Class nw_data_transfer_report_get_sent_transport_ecn_capable_marked_packet_count(void *a1, unsigned int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_marked_packet_count";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_marked_packet_count";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null report", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v31 != 1)
    {
      v19 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_marked_packet_count";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v25 = type;
    v26 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_marked_packet_count";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_marked_packet_count";
      v35 = 2082;
      v36 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if (nw_data_transfer_report_get_state(v3) != nw_data_transfer_report_state_collected)
  {
    v21 = __nwlog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_marked_packet_count";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (a2 == -1)
  {
    isa = v4[19].isa;
    isa_high = HIDWORD(v4[5].isa);
    if (isa_high < 2)
    {
      goto LABEL_14;
    }

    if (isa_high == 2)
    {
      v9 = 1;
    }

    else
    {
      v11 = 0;
      v12 = isa_high - 1;
      v13 = v4[52].isa;
      v14 = (isa_high - 1) & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        isa = (isa + *(v13 + 12));
        v11 += *(v13 + 57);
        v13 = (v13 + 720);
        v14 -= 2;
      }

      while (v14);
      isa = (isa + v11);
      if (v12 == ((isa_high - 1) & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_14;
      }

      v9 = v12 | 1;
    }

    v15 = isa_high - v9;
    v16 = (v4[52].isa + 360 * v9 - 264);
    do
    {
      isa = (isa + *v16);
      v16 += 45;
      --v15;
    }

    while (v15);
    goto LABEL_14;
  }

  if (HIDWORD(v4[5].isa) <= a2)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_marked_packet_count";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_marked_packet_count";
        _os_log_impl(&dword_181A37000, v19, v23, "%{public}s called with null (path_index < report->path_count)", buf, 0xCu);
      }

LABEL_56:

LABEL_57:
      if (v18)
      {
        free(v18);
      }

LABEL_59:
      isa = 0;
      goto LABEL_14;
    }

    if (v31 != 1)
    {
      v19 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_marked_packet_count";
        _os_log_impl(&dword_181A37000, v19, v30, "%{public}s called with null (path_index < report->path_count), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v27 = type;
    v28 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_marked_packet_count";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v28)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_marked_packet_count";
      v35 = 2082;
      v36 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_44:

    free(backtrace_string);
    goto LABEL_57;
  }

  v5 = v4;
  if (HIDWORD(v4[5].isa) <= a2)
  {
    v6 = 0;
  }

  else if (a2)
  {
    v6 = v5[52].isa + 360 * a2 - 360;
  }

  else
  {
    v6 = &v5[7];
  }

  isa = *(v6 + 96);
LABEL_14:

  return isa;
}

Class nw_data_transfer_report_get_sent_transport_ecn_capable_lost_packet_count(void *a1, unsigned int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_lost_packet_count";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_lost_packet_count";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null report", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v31 != 1)
    {
      v19 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_lost_packet_count";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v25 = type;
    v26 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_lost_packet_count";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_lost_packet_count";
      v35 = 2082;
      v36 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if (nw_data_transfer_report_get_state(v3) != nw_data_transfer_report_state_collected)
  {
    v21 = __nwlog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_lost_packet_count";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (a2 == -1)
  {
    isa = v4[20].isa;
    isa_high = HIDWORD(v4[5].isa);
    if (isa_high < 2)
    {
      goto LABEL_14;
    }

    if (isa_high == 2)
    {
      v9 = 1;
    }

    else
    {
      v11 = 0;
      v12 = isa_high - 1;
      v13 = v4[52].isa;
      v14 = (isa_high - 1) & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        isa = (isa + *(v13 + 13));
        v11 += *(v13 + 58);
        v13 = (v13 + 720);
        v14 -= 2;
      }

      while (v14);
      isa = (isa + v11);
      if (v12 == ((isa_high - 1) & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_14;
      }

      v9 = v12 | 1;
    }

    v15 = isa_high - v9;
    v16 = (v4[52].isa + 360 * v9 - 256);
    do
    {
      isa = (isa + *v16);
      v16 += 45;
      --v15;
    }

    while (v15);
    goto LABEL_14;
  }

  if (HIDWORD(v4[5].isa) <= a2)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_lost_packet_count";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_lost_packet_count";
        _os_log_impl(&dword_181A37000, v19, v23, "%{public}s called with null (path_index < report->path_count)", buf, 0xCu);
      }

LABEL_56:

LABEL_57:
      if (v18)
      {
        free(v18);
      }

LABEL_59:
      isa = 0;
      goto LABEL_14;
    }

    if (v31 != 1)
    {
      v19 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_lost_packet_count";
        _os_log_impl(&dword_181A37000, v19, v30, "%{public}s called with null (path_index < report->path_count), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v27 = type;
    v28 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_lost_packet_count";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v28)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_lost_packet_count";
      v35 = 2082;
      v36 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_44:

    free(backtrace_string);
    goto LABEL_57;
  }

  v5 = v4;
  if (HIDWORD(v4[5].isa) <= a2)
  {
    v6 = 0;
  }

  else if (a2)
  {
    v6 = v5[52].isa + 360 * a2 - 360;
  }

  else
  {
    v6 = &v5[7];
  }

  isa = *(v6 + 104);
LABEL_14:

  return isa;
}

uint64_t __nw_establishment_report_copy_dictionary_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _nw_endpoint_copy_dictionary(v4);
  }

  else
  {
    v6 = 0;
  }

  xpc_array_append_value(*(a1 + 32), v6);
  return 1;
}

uint64_t __nw_establishment_report_copy_dictionary_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _nw_endpoint_copy_dictionary(v4);
  }

  else
  {
    v6 = 0;
  }

  xpc_array_append_value(*(a1 + 32), v6);
  return 1;
}

uint64_t __nw_establishment_report_create_from_dictionary_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9E80])
  {
    v5 = nw_endpoint_create_from_dictionary(v4);
    v6 = *(*(a1 + 32) + 40);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      _nw_array_append(v6, v5);
    }
  }

  return 1;
}

uint64_t __nw_establishment_report_create_from_dictionary_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9E80])
  {
    v5 = nw_endpoint_create_from_dictionary(v4);
    v6 = *(*(a1 + 32) + 48);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      _nw_array_append(v6, v5);
    }
  }

  return 1;
}

_DWORD *nw_interface_use_observer_create(const char *a1, void *a2, void *a3)
{
  v89 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    v39 = __nwlog_obj();
    *buf = 136446210;
    v82 = "nw_interface_use_observer_create";
    v40 = _os_log_send_and_compose_impl();

    LOBYTE(v80.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v40, &v80, &type))
    {
      if (LOBYTE(v80.receiver) == 17)
      {
        v41 = __nwlog_obj();
        receiver = v80.receiver;
        if (os_log_type_enabled(v41, v80.receiver))
        {
          *buf = 136446210;
          v82 = "nw_interface_use_observer_create";
          _os_log_impl(&dword_181A37000, v41, receiver, "%{public}s called with null notification_name", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v58 = v80.receiver;
        v59 = os_log_type_enabled(v41, v80.receiver);
        if (backtrace_string)
        {
          if (v59)
          {
            *buf = 136446466;
            v82 = "nw_interface_use_observer_create";
            v83 = 2082;
            v84 = backtrace_string;
            _os_log_impl(&dword_181A37000, v41, v58, "%{public}s called with null notification_name, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_101;
        }

        if (v59)
        {
          *buf = 136446210;
          v82 = "nw_interface_use_observer_create";
          _os_log_impl(&dword_181A37000, v41, v58, "%{public}s called with null notification_name, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v41 = __nwlog_obj();
        v69 = v80.receiver;
        if (os_log_type_enabled(v41, v80.receiver))
        {
          *buf = 136446210;
          v82 = "nw_interface_use_observer_create";
          _os_log_impl(&dword_181A37000, v41, v69, "%{public}s called with null notification_name, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_101:
    if (v40)
    {
      free(v40);
    }

    goto LABEL_115;
  }

  if (!v5)
  {
    v43 = __nwlog_obj();
    *buf = 136446210;
    v82 = "nw_interface_use_observer_create";
    v44 = _os_log_send_and_compose_impl();

    LOBYTE(v80.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v44, &v80, &type))
    {
      if (LOBYTE(v80.receiver) == 17)
      {
        v45 = __nwlog_obj();
        v46 = v80.receiver;
        if (os_log_type_enabled(v45, v80.receiver))
        {
          *buf = 136446210;
          v82 = "nw_interface_use_observer_create";
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null queue", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v60 = __nw_create_backtrace_string();
        v45 = __nwlog_obj();
        v61 = v80.receiver;
        v62 = os_log_type_enabled(v45, v80.receiver);
        if (v60)
        {
          if (v62)
          {
            *buf = 136446466;
            v82 = "nw_interface_use_observer_create";
            v83 = 2082;
            v84 = v60;
            _os_log_impl(&dword_181A37000, v45, v61, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v60);
          goto LABEL_107;
        }

        if (v62)
        {
          *buf = 136446210;
          v82 = "nw_interface_use_observer_create";
          _os_log_impl(&dword_181A37000, v45, v61, "%{public}s called with null queue, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v45 = __nwlog_obj();
        v70 = v80.receiver;
        if (os_log_type_enabled(v45, v80.receiver))
        {
          *buf = 136446210;
          v82 = "nw_interface_use_observer_create";
          _os_log_impl(&dword_181A37000, v45, v70, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_107:
    if (v44)
    {
      free(v44);
    }

    v30 = 0;
    goto LABEL_41;
  }

  if (!v6)
  {
    v47 = __nwlog_obj();
    *buf = 136446210;
    v82 = "nw_interface_use_observer_create";
    v48 = _os_log_send_and_compose_impl();

    LOBYTE(v80.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v48, &v80, &type))
    {
      if (LOBYTE(v80.receiver) == 17)
      {
        v49 = __nwlog_obj();
        v50 = v80.receiver;
        if (os_log_type_enabled(v49, v80.receiver))
        {
          *buf = 136446210;
          v82 = "nw_interface_use_observer_create";
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null block", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v63 = __nw_create_backtrace_string();
        v49 = __nwlog_obj();
        v64 = v80.receiver;
        v65 = os_log_type_enabled(v49, v80.receiver);
        if (v63)
        {
          if (v65)
          {
            *buf = 136446466;
            v82 = "nw_interface_use_observer_create";
            v83 = 2082;
            v84 = v63;
            _os_log_impl(&dword_181A37000, v49, v64, "%{public}s called with null block, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v63);
          goto LABEL_113;
        }

        if (v65)
        {
          *buf = 136446210;
          v82 = "nw_interface_use_observer_create";
          _os_log_impl(&dword_181A37000, v49, v64, "%{public}s called with null block, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v49 = __nwlog_obj();
        v71 = v80.receiver;
        if (os_log_type_enabled(v49, v80.receiver))
        {
          *buf = 136446210;
          v82 = "nw_interface_use_observer_create";
          _os_log_impl(&dword_181A37000, v49, v71, "%{public}s called with null block, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_113:
    if (v48)
    {
      free(v48);
    }

LABEL_115:
    v30 = 0;
    v7 = v5;
    goto LABEL_41;
  }

  v8 = [NWConcrete_nw_interface_use_observer alloc];
  if (!v8)
  {
LABEL_121:
    v9 = 0;
    goto LABEL_8;
  }

  v80.receiver = v8;
  v80.super_class = NWConcrete_nw_interface_use_observer;
  v9 = objc_msgSendSuper2(&v80, sel_init);
  if (!v9)
  {
    v51 = __nwlog_obj();
    *buf = 136446210;
    v82 = "[NWConcrete_nw_interface_use_observer initWithNotificationName:]";
    v52 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v78 = 0;
    if (__nwlog_fault(v52, &type, &v78))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v53 = __nwlog_obj();
        v54 = type;
        if (os_log_type_enabled(v53, type))
        {
          *buf = 136446210;
          v82 = "[NWConcrete_nw_interface_use_observer initWithNotificationName:]";
          _os_log_impl(&dword_181A37000, v53, v54, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v78 == 1)
      {
        v66 = __nw_create_backtrace_string();
        v53 = __nwlog_obj();
        v67 = type;
        v68 = os_log_type_enabled(v53, type);
        if (v66)
        {
          if (v68)
          {
            *buf = 136446466;
            v82 = "[NWConcrete_nw_interface_use_observer initWithNotificationName:]";
            v83 = 2082;
            v84 = v66;
            _os_log_impl(&dword_181A37000, v53, v67, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v66);
          goto LABEL_119;
        }

        if (v68)
        {
          *buf = 136446210;
          v82 = "[NWConcrete_nw_interface_use_observer initWithNotificationName:]";
          _os_log_impl(&dword_181A37000, v53, v67, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v53 = __nwlog_obj();
        v72 = type;
        if (os_log_type_enabled(v53, type))
        {
          *buf = 136446210;
          v82 = "[NWConcrete_nw_interface_use_observer initWithNotificationName:]";
          _os_log_impl(&dword_181A37000, v53, v72, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_119:
    if (v52)
    {
      free(v52);
    }

    goto LABEL_121;
  }

  v10 = strdup(a1);
  if (!v10)
  {
    v55 = __nwlog_obj();
    os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v82 = "strict_strdup";
    v56 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v56);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v56);
    v10 = 0;
  }

  *(v9 + 1) = v10;
LABEL_8:
  v11 = *(v9 + 2);
  if ((*(v9 + 24) & 1) != 0 && v11)
  {
    *(v9 + 2) = 0;

    v11 = *(v9 + 2);
  }

  *(v9 + 2) = 0;

  v12 = *(v9 + 2);
  *(v9 + 2) = v5;

  *(v9 + 24) |= 1u;
  v13 = _Block_copy(v7);

  v14 = _Block_copy(v13);
  v15 = *(v9 + 4);
  if ((*(v9 + 40) & 1) != 0 && v15)
  {
    *(v9 + 4) = 0;

    v15 = *(v9 + 4);
  }

  *(v9 + 4) = 0;

  v16 = _Block_copy(v14);
  v17 = *(v9 + 4);
  *(v9 + 4) = v16;

  *(v9 + 40) |= 1u;
  LODWORD(v80.receiver) = -1;
  v18 = *(v9 + 1);
  v19 = *(v9 + 2);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __nw_interface_use_observer_create_block_invoke;
  handler[3] = &unk_1E6A2C9A8;
  v7 = v9;
  v77 = v7;
  v20 = notify_register_dispatch(v18, &v80, v19, handler);

  if (!v20)
  {
    v27 = v80.receiver;
    if (LODWORD(v80.receiver) == -1)
    {
      v30 = 0;
    }

    else
    {
      v7[12] = v80.receiver;
      v28 = nw_interface_use_observer_get_in_use(v27);
      if (v28 >= 0x100u)
      {
        v29 = *(v9 + 2);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __nw_interface_use_observer_create_block_invoke_7;
        block[3] = &unk_1E6A35AF8;
        v74 = v7;
        v75 = v28;
        dispatch_async(v29, block);
      }

      v30 = v7;
    }

    goto LABEL_40;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  v22 = *(v9 + 1);
  *buf = 136446722;
  v82 = "nw_interface_use_observer_create";
  v83 = 2082;
  v84 = v22;
  v85 = 1024;
  v86 = v20;
  v23 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v78 = 0;
  if (__nwlog_fault(v23, &type, &v78))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        v26 = *(v9 + 1);
        *buf = 136446722;
        v82 = "nw_interface_use_observer_create";
        v83 = 2082;
        v84 = v26;
        v85 = 1024;
        v86 = v20;
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s notify_register_dispatch(%{public}s) [status %u] failed", buf, 0x1Cu);
      }
    }

    else if (v78 == 1)
    {
      v31 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v32 = type;
      v33 = os_log_type_enabled(v24, type);
      if (v31)
      {
        if (v33)
        {
          v34 = *(v9 + 1);
          *buf = 136446978;
          v82 = "nw_interface_use_observer_create";
          v83 = 2082;
          v84 = v34;
          v85 = 1024;
          v86 = v20;
          v87 = 2082;
          v88 = v31;
          _os_log_impl(&dword_181A37000, v24, v32, "%{public}s notify_register_dispatch(%{public}s) [status %u] failed, dumping backtrace:%{public}s", buf, 0x26u);
        }

        free(v31);
        if (!v23)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      if (v33)
      {
        v37 = *(v9 + 1);
        *buf = 136446722;
        v82 = "nw_interface_use_observer_create";
        v83 = 2082;
        v84 = v37;
        v85 = 1024;
        v86 = v20;
        _os_log_impl(&dword_181A37000, v24, v32, "%{public}s notify_register_dispatch(%{public}s) [status %u] failed, no backtrace", buf, 0x1Cu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v35 = type;
      if (os_log_type_enabled(v24, type))
      {
        v36 = *(v9 + 1);
        *buf = 136446722;
        v82 = "nw_interface_use_observer_create";
        v83 = 2082;
        v84 = v36;
        v85 = 1024;
        v86 = v20;
        _os_log_impl(&dword_181A37000, v24, v35, "%{public}s notify_register_dispatch(%{public}s) [status %u] failed, backtrace limit exceeded", buf, 0x1Cu);
      }
    }
  }

  if (v23)
  {
LABEL_38:
    free(v23);
  }

LABEL_39:
  v30 = 0;
  LODWORD(v80.receiver) = -1;
LABEL_40:

LABEL_41:

  return v30;
}

void __nw_interface_use_observer_create_block_invoke(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = nw_interface_use_observer_get_in_use(a2);
    if (v4 >= 0x100u)
    {
      (*(v3[4] + 16))(v3[4], v4 & 1);
    }

    goto LABEL_4;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_interface_use_observer_update";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_interface_use_observer_update";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null observer", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_interface_use_observer_update";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null observer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_interface_use_observer_update";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null observer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_interface_use_observer_update";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null observer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v6)
  {
    free(v6);
  }

LABEL_4:
}

uint64_t nw_interface_use_observer_get_in_use(int a1)
{
  v25 = *MEMORY[0x1E69E9840];
  state64 = 0;
  state = notify_get_state(a1, &state64);
  if (state)
  {
    v2 = state;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446466;
    v20 = "nw_interface_use_observer_get_in_use";
    v21 = 1024;
    v22 = v2;
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v4, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_20;
        }

        *buf = 136446466;
        v20 = "nw_interface_use_observer_get_in_use";
        v21 = 1024;
        v22 = v2;
        v7 = "%{public}s notify_get_state [%u] failed";
LABEL_18:
        v14 = v5;
        v15 = v6;
        goto LABEL_19;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_20;
        }

        *buf = 136446466;
        v20 = "nw_interface_use_observer_get_in_use";
        v21 = 1024;
        v22 = v2;
        v7 = "%{public}s notify_get_state [%u] failed, backtrace limit exceeded";
        goto LABEL_18;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_20:

          if (!v4)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446466;
        v20 = "nw_interface_use_observer_get_in_use";
        v21 = 1024;
        v22 = v2;
        v7 = "%{public}s notify_get_state [%u] failed, no backtrace";
        v14 = v5;
        v15 = v11;
LABEL_19:
        _os_log_impl(&dword_181A37000, v14, v15, v7, buf, 0x12u);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446722;
        v20 = "nw_interface_use_observer_get_in_use";
        v21 = 1024;
        v22 = v2;
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v11, "%{public}s notify_get_state [%u] failed, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
LABEL_14:
      v8 = 0;
      v9 = 0;
      return v8 | (v9 << 8);
    }

LABEL_13:
    free(v4);
    goto LABEL_14;
  }

  v8 = state64 != 0;
  v9 = 1;
  return v8 | (v9 << 8);
}

void __nw_interface_use_observer_create_block_invoke_7(uint64_t a1)
{
  if (*(a1 + 41))
  {
    v2 = *(a1 + 40);
    v3 = *(*(*(a1 + 32) + 32) + 16);
    v4 = *(*(a1 + 32) + 32);

    v3(v4, v2);
  }

  else
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    std::__throw_bad_optional_access[abi:nn200100]();
  }
}

void nw_interface_use_observer_cancel(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[12];
    if (v3 == -1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v16 = "nw_interface_use_observer_cancel";
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s Notify token not valid, this observer may have been cancelled", buf, 0xCu);
      }
    }

    else
    {
      notify_cancel(v3);
      v2[12] = -1;
    }

    goto LABEL_7;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_interface_use_observer_cancel";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_interface_use_observer_cancel";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null observer", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_interface_use_observer_cancel";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null observer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_interface_use_observer_cancel";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null observer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_interface_use_observer_cancel";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null observer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v6)
  {
    free(v6);
  }

LABEL_7:
}

void nw_interface_use_observer_post_notification(const char *a1, unsigned int a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_interface_use_observer_post_notification";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v19, &type, &v25))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v28 = "nw_interface_use_observer_post_notification";
        v22 = "%{public}s called with null notification_name";
LABEL_36:
        _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
      }
    }

    else
    {
      if (v25 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v21 = type;
        v24 = os_log_type_enabled(v20, type);
        if (backtrace_string)
        {
          if (v24)
          {
            *buf = 136446466;
            v28 = "nw_interface_use_observer_post_notification";
            v29 = 2082;
            v30 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null notification_name, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_38;
        }

        if (!v24)
        {
          goto LABEL_37;
        }

        *buf = 136446210;
        v28 = "nw_interface_use_observer_post_notification";
        v22 = "%{public}s called with null notification_name, no backtrace";
        goto LABEL_36;
      }

      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v28 = "nw_interface_use_observer_post_notification";
        v22 = "%{public}s called with null notification_name, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

LABEL_38:
    if (v19)
    {
      free(v19);
    }

    return;
  }

  v4 = notify_register_check(a1, &nw_interface_use_observer_post_notification::token);
  if (v4)
  {
    v5 = v4;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "nw_interface_use_observer_post_notification";
      v29 = 2082;
      v30 = a1;
      v31 = 1024;
      LODWORD(v32) = v5;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s notify_register_check(%{public}s) failed: %u", buf, 0x1Cu);
    }

    nw_interface_use_observer_post_notification::token = -1;
    goto LABEL_6;
  }

  if (nw_interface_use_observer_post_notification::token == -1)
  {
LABEL_6:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      return;
    }

    *buf = 136446466;
    v28 = "nw_interface_use_observer_post_notification";
    v29 = 2082;
    v30 = a1;
    v8 = "%{public}s Nobody observing %{public}s";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEBUG;
    v11 = 22;
LABEL_8:
    _os_log_impl(&dword_181A37000, v9, v10, v8, buf, v11);
    goto LABEL_9;
  }

  v12 = a2;
  v13 = notify_set_state(nw_interface_use_observer_post_notification::token, a2);
  if (v13)
  {
    v14 = v13;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v28 = "nw_interface_use_observer_post_notification";
      v29 = 2082;
      v30 = a1;
      v31 = 2048;
      v32 = v12;
      v33 = 1024;
      v34 = v14;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s notify_set_state for %{public}s %#llx failed: %u", buf, 0x26u);
    }
  }

  else
  {
    v16 = notify_post(a1);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    v7 = v17;
    if (!v16)
    {
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 136446722;
      v28 = "nw_interface_use_observer_post_notification";
      v29 = 2082;
      v30 = a1;
      v31 = 1024;
      LODWORD(v32) = a2;
      v8 = "%{public}s successfully posted notification %{public}s for interface in use: %{BOOL}d";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 28;
      goto LABEL_8;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "nw_interface_use_observer_post_notification";
      v29 = 2082;
      v30 = a1;
      v31 = 1024;
      LODWORD(v32) = v16;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s notify_post for %{public}s failed: %u", buf, 0x1Cu);
    }
  }

  notify_cancel(nw_interface_use_observer_post_notification::token);
  nw_interface_use_observer_post_notification::token = -1;
}

uint64_t nw_connection_group_get_description(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (nw_parameters_get_sensitive_redacted(*(v1 + 7)))
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_connection_group_get_description_block_invoke;
      aBlock[3] = &unk_1E6A3D868;
      v3 = v2;
      v20 = v3;
      v4 = _Block_copy(aBlock);
      os_unfair_lock_lock(v2 + 45);
      v4[2](v4);
      os_unfair_lock_unlock(v2 + 45);

      v5 = *&v3[40]._os_unfair_lock_opaque;
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __nw_connection_group_get_description_block_invoke_2;
      v17[3] = &unk_1E6A3D868;
      v6 = v2;
      v18 = v6;
      v7 = _Block_copy(v17);
      os_unfair_lock_lock(v2 + 45);
      v7[2](v7);
      os_unfair_lock_unlock(v2 + 45);

      v5 = *&v6[42]._os_unfair_lock_opaque;
    }

    goto LABEL_5;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_connection_group_get_description";
  v10 = _os_log_send_and_compose_impl();

  v22 = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v10, &v22, &v21))
  {
    if (v22 == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = v22;
      if (os_log_type_enabled(v11, v22))
      {
        *buf = 136446210;
        v24 = "nw_connection_group_get_description";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = v22;
      v15 = os_log_type_enabled(v11, v22);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v24 = "nw_connection_group_get_description";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v15)
      {
        *buf = 136446210;
        v24 = "nw_connection_group_get_description";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = v22;
      if (os_log_type_enabled(v11, v22))
      {
        *buf = 136446210;
        v24 = "nw_connection_group_get_description";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v10)
  {
    free(v10);
  }

  v5 = 0;
LABEL_5:

  return v5;
}

void __nw_connection_group_get_description_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 160))
  {
    v3 = _nw_parameters_copy_description(*(v1 + 56));
    asprintf((*(a1 + 32) + 160), "[G%u %s]", *(*(a1 + 32) + 176), v3);
    if (v3)
    {

      free(v3);
    }
  }
}

void __nw_connection_group_get_description_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 168))
  {
    v3 = _nw_parameters_copy_description(*(v1 + 56));
    asprintf((*(a1 + 32) + 168), "[G%u %s]", *(*(a1 + 32) + 176), v3);
    if (v3)
    {

      free(v3);
    }
  }
}

const char *nw_connection_group_state_to_string(unsigned int a1)
{
  if (a1 > 4)
  {
    return "<unknown>";
  }

  else
  {
    return off_1E6A2E220[a1];
  }
}

void sub_1823B8094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  v26 = v24;

  _Unwind_Resume(a1);
}

uint64_t nw_connection_group_get_next_log_id(void)
{
  v7 = *MEMORY[0x1E69E9840];
  add = atomic_fetch_add(nw_connection_group_get_next_log_id(void)::s_last_top_level_id, 1u);
  result = add + 1;
  if (add == -2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136446466;
      v4 = "nw_connection_group_get_next_log_id";
      v5 = 1024;
      v6 = -1;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, "%{public}s reached %u group logging ids, wrapping", &v3, 0x12u);
    }

    return nw_connection_group_get_next_log_id();
  }

  return result;
}

void nw_connection_group_add_connection_locked(NWConcrete_nw_connection_group *a1, NWConcrete_nw_connection *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_add_connection_locked";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v66 = 0;
    if (!__nwlog_fault(v17, &type, &v66))
    {
      goto LABEL_117;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_connection_locked";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v66 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v40 = type;
      v41 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v41)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_add_connection_locked";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v40, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_117:
        if (!v17)
        {
          goto LABEL_131;
        }

LABEL_118:
        free(v17);
        goto LABEL_131;
      }

      if (v41)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_connection_locked";
        _os_log_impl(&dword_181A37000, v18, v40, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v56 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_connection_locked";
        _os_log_impl(&dword_181A37000, v18, v56, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_116:

    goto LABEL_117;
  }

  if (!*(v3 + 14))
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_add_connection_locked";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v66 = 0;
    if (!__nwlog_fault(v17, &type, &v66))
    {
      goto LABEL_117;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_connection_locked";
        _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null group->connections", buf, 0xCu);
      }

      goto LABEL_116;
    }

    if (v66 != 1)
    {
      v18 = __nwlog_obj();
      v57 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_connection_locked";
        _os_log_impl(&dword_181A37000, v18, v57, "%{public}s called with null group->connections, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_116;
    }

    v42 = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v43 = type;
    v44 = os_log_type_enabled(v18, type);
    if (!v42)
    {
      if (v44)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_connection_locked";
        _os_log_impl(&dword_181A37000, v18, v43, "%{public}s called with null group->connections, no backtrace", buf, 0xCu);
      }

      goto LABEL_116;
    }

    if (v44)
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_add_connection_locked";
      *&buf[12] = 2082;
      *&buf[14] = v42;
      _os_log_impl(&dword_181A37000, v18, v43, "%{public}s called with null group->connections, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_72;
  }

  if (!v4)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_add_connection_locked";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v66 = 0;
    if (!__nwlog_fault(v17, &type, &v66))
    {
      goto LABEL_117;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_connection_locked";
        _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null new_connection", buf, 0xCu);
      }

      goto LABEL_116;
    }

    if (v66 != 1)
    {
      v18 = __nwlog_obj();
      v58 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_connection_locked";
        _os_log_impl(&dword_181A37000, v18, v58, "%{public}s called with null new_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_116;
    }

    v42 = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v45 = type;
    v46 = os_log_type_enabled(v18, type);
    if (!v42)
    {
      if (v46)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_add_connection_locked";
        _os_log_impl(&dword_181A37000, v18, v45, "%{public}s called with null new_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_116;
    }

    if (v46)
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_add_connection_locked";
      *&buf[12] = 2082;
      *&buf[14] = v42;
      _os_log_impl(&dword_181A37000, v18, v45, "%{public}s called with null new_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_72:

    free(v42);
    if (!v17)
    {
      goto LABEL_131;
    }

    goto LABEL_118;
  }

  v6 = v3;
  v7 = *(v6 + 7);
  if (v7)
  {
    v8 = v7;
    v9 = _nw_parameters_copy_context(v7);
    v10 = v9;
    if (!v9)
    {
      v28 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_connection_group_copy_workloop";
      v29 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v66 = 0;
      if (!__nwlog_fault(v29, &type, &v66))
      {
        goto LABEL_138;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_workloop";
          _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v66 == 1)
      {
        v50 = __nw_create_backtrace_string();
        v30 = __nwlog_obj();
        v51 = type;
        v52 = os_log_type_enabled(v30, type);
        if (v50)
        {
          if (v52)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_group_copy_workloop";
            *&buf[12] = 2082;
            *&buf[14] = v50;
            _os_log_impl(&dword_181A37000, v30, v51, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v50);
          if (!v29)
          {
            goto LABEL_140;
          }

          goto LABEL_139;
        }

        if (v52)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_workloop";
          _os_log_impl(&dword_181A37000, v30, v51, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v30 = __nwlog_obj();
        v60 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_workloop";
          _os_log_impl(&dword_181A37000, v30, v60, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_137;
    }

    v11 = nw_context_copy_workloop(v9);
    if (v11)
    {
      goto LABEL_10;
    }

    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v12 = nw_context_copy_implicit_context::implicit_context;
    v11 = nw_context_copy_workloop(v12);

    if (v11)
    {
LABEL_10:

      if (v11)
      {
        nw_connection_group_prune_connections_locked(v6);
        if (!nw_parameters_get_logging_disabled(*(v6 + 7)) && gLogDatapath == 1)
        {
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v34 = gconnection_groupLogObj;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = *(v6 + 44);
            *buf = 136446722;
            *&buf[4] = "nw_connection_group_add_connection_locked";
            *&buf[12] = 1024;
            *&buf[14] = v35;
            *&buf[18] = 2112;
            *&buf[20] = v5;
            _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Adding connection (%@) to group", buf, 0x1Cu);
          }
        }

        v13 = v5;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_connection_set_group_uuid_block_invoke;
        *&buf[24] = &unk_1E6A3AC58;
        v14 = v13;
        v69 = v14;
        v70 = v6 + 128;
        os_unfair_lock_lock(v13 + 34);
        (*&buf[16])(buf);
        os_unfair_lock_unlock(v13 + 34);

        nw_array_insert_object_at_index(*(v3 + 14), v14, 0);
        if (!nw_parameters_get_logging_disabled(*(v6 + 7)) && gLogDatapath == 1)
        {
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v36 = gconnection_groupLogObj;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v37 = *(v6 + 44);
            count = *(v3 + 14);
            if (count)
            {
              count = _nw_array_get_count(count);
            }

            *buf = 136446722;
            *&buf[4] = "nw_connection_group_add_connection_locked";
            *&buf[12] = 1024;
            *&buf[14] = v37;
            *&buf[18] = 2048;
            *&buf[20] = count;
            _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] group has %zu connections", buf, 0x1Cu);
          }
        }

        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = ___ZL41nw_connection_group_add_connection_lockedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke;
        handler[3] = &unk_1E6A3D958;
        v64 = v6;
        v15 = v14;
        v65 = v15;
        nw_connection_set_state_changed_handler(v15, handler);
        nw_connection_set_queue(v15, v11);

LABEL_130:
        goto LABEL_131;
      }

      goto LABEL_125;
    }

    v32 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_copy_workloop";
    v29 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v66 = 0;
    if (__nwlog_fault(v29, &type, &v66))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_workloop";
          _os_log_impl(&dword_181A37000, v30, v33, "%{public}s called with null workloop", buf, 0xCu);
        }

LABEL_137:

        goto LABEL_138;
      }

      if (v66 != 1)
      {
        v30 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_workloop";
          _os_log_impl(&dword_181A37000, v30, v61, "%{public}s called with null workloop, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_137;
      }

      v53 = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v54 = type;
      v55 = os_log_type_enabled(v30, type);
      if (!v53)
      {
        if (v55)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_copy_workloop";
          _os_log_impl(&dword_181A37000, v30, v54, "%{public}s called with null workloop, no backtrace", buf, 0xCu);
        }

        goto LABEL_137;
      }

      if (v55)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_group_copy_workloop";
        *&buf[12] = 2082;
        *&buf[14] = v53;
        _os_log_impl(&dword_181A37000, v30, v54, "%{public}s called with null workloop, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v53);
    }

LABEL_138:
    if (!v29)
    {
LABEL_140:
      v11 = 0;
      goto LABEL_10;
    }

LABEL_139:
    free(v29);
    goto LABEL_140;
  }

  v24 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_group_copy_workloop";
  v25 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v66 = 0;
  if (__nwlog_fault(v25, &type, &v66))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_copy_workloop";
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v66 == 1)
    {
      v47 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v48 = type;
      v49 = os_log_type_enabled(v26, type);
      if (v47)
      {
        if (v49)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_copy_workloop";
          *&buf[12] = 2082;
          *&buf[14] = v47;
          _os_log_impl(&dword_181A37000, v26, v48, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v47);
        goto LABEL_122;
      }

      if (v49)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_copy_workloop";
        _os_log_impl(&dword_181A37000, v26, v48, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v59 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_copy_workloop";
        _os_log_impl(&dword_181A37000, v26, v59, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_122:
  if (v25)
  {
    free(v25);
  }

LABEL_125:
  if (!nw_parameters_get_logging_disabled(*(v6 + 7)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v11 = gconnection_groupLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v62 = *(v6 + 44);
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_add_connection_locked";
      *&buf[12] = 1024;
      *&buf[14] = v62;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s [G%u] Cannot copy workloop, cannot add connection", buf, 0x12u);
    }

    goto LABEL_130;
  }

LABEL_131:
}

void nw_connection_group_prune_connections_locked(NWConcrete_nw_connection_group *a1)
{
  *(&v57[2] + 2) = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 14);
    if (v3)
    {
      count = _nw_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    if (count < *(v2 + 47))
    {
      goto LABEL_6;
    }

    while (1)
    {
      v5 = nw_array_remove_object_at_index(*(v2 + 14), --count);
      if (!nw_parameters_get_logging_disabled(*(v2 + 7)))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v6 = gconnection_groupLogObj;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = *(v2 + 44);
          *buf = 136446722;
          v55 = "nw_connection_group_prune_connections_locked";
          v56 = 1024;
          LODWORD(v57[0]) = v7;
          WORD2(v57[0]) = 2112;
          *(v57 + 6) = v5;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [G%u] pruning connection %@", buf, 0x1Cu);
        }
      }

      nw_connection_reset_client(v5);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ___ZL44nw_connection_group_prune_connections_lockedP30NWConcrete_nw_connection_group_block_invoke;
      handler[3] = &unk_1E6A3D958;
      v8 = v2;
      v50 = v8;
      v9 = v5;
      v51 = v9;
      nw_connection_set_state_changed_handler(v9, handler);
      v10 = v8;
      v11 = *(v2 + 7);
      v12 = v11;
      if (!v11)
      {
        v17 = __nwlog_obj();
        *buf = 136446210;
        v55 = "nw_connection_group_copy_workloop";
        v18 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v52 = 0;
        if (__nwlog_fault(v18, &type, &v52))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v19 = __nwlog_obj();
            v20 = type;
            if (os_log_type_enabled(v19, type))
            {
              *buf = 136446210;
              v55 = "nw_connection_group_copy_workloop";
              _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null parameters", buf, 0xCu);
            }

            goto LABEL_64;
          }

          if (v52 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v19 = __nwlog_obj();
            v44 = type;
            v26 = os_log_type_enabled(v19, type);
            if (backtrace_string)
            {
              if (v26)
              {
                *buf = 136446466;
                v55 = "nw_connection_group_copy_workloop";
                v56 = 2082;
                v57[0] = backtrace_string;
                _os_log_impl(&dword_181A37000, v19, v44, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_65;
            }

            if (v26)
            {
              *buf = 136446210;
              v55 = "nw_connection_group_copy_workloop";
              _os_log_impl(&dword_181A37000, v19, v44, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v19 = __nwlog_obj();
            v31 = type;
            if (os_log_type_enabled(v19, type))
            {
              *buf = 136446210;
              v55 = "nw_connection_group_copy_workloop";
              _os_log_impl(&dword_181A37000, v19, v31, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
            }
          }

LABEL_64:
        }

LABEL_65:
        if (v18)
        {
          free(v18);
        }

        v15 = 0;
        goto LABEL_20;
      }

      v13 = _nw_parameters_copy_context(v11);
      v14 = v13;
      if (!v13)
      {
        v21 = __nwlog_obj();
        *buf = 136446210;
        v55 = "nw_connection_group_copy_workloop";
        v22 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v52 = 0;
        if (!__nwlog_fault(v22, &type, &v52))
        {
          goto LABEL_74;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v23 = __nwlog_obj();
          v42 = type;
          if (os_log_type_enabled(v23, type))
          {
            *buf = 136446210;
            v55 = "nw_connection_group_copy_workloop";
            _os_log_impl(&dword_181A37000, v23, v42, "%{public}s called with null context", buf, 0xCu);
          }
        }

        else if (v52 == 1)
        {
          v27 = __nw_create_backtrace_string();
          v45 = __nwlog_obj();
          v40 = type;
          v28 = os_log_type_enabled(v45, type);
          if (v27)
          {
            if (v28)
            {
              *buf = 136446466;
              v55 = "nw_connection_group_copy_workloop";
              v56 = 2082;
              v57[0] = v27;
              _os_log_impl(&dword_181A37000, v45, v40, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v27);
            if (!v22)
            {
              goto LABEL_76;
            }

LABEL_75:
            free(v22);
            goto LABEL_76;
          }

          v23 = v45;
          if (v28)
          {
            *buf = 136446210;
            v55 = "nw_connection_group_copy_workloop";
            _os_log_impl(&dword_181A37000, v45, v40, "%{public}s called with null context, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v23 = __nwlog_obj();
          v47 = type;
          if (os_log_type_enabled(v23, type))
          {
            *buf = 136446210;
            v55 = "nw_connection_group_copy_workloop";
            _os_log_impl(&dword_181A37000, v23, v47, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_73;
      }

      v15 = nw_context_copy_workloop(v13);
      if (v15)
      {
        goto LABEL_19;
      }

      if (nw_context_copy_implicit_context::onceToken[0] != -1)
      {
        dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
      }

      v16 = nw_context_copy_implicit_context::implicit_context;
      v15 = nw_context_copy_workloop(v16);

      if (v15)
      {
        goto LABEL_19;
      }

      v24 = __nwlog_obj();
      *buf = 136446210;
      v55 = "nw_connection_group_copy_workloop";
      v22 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v52 = 0;
      if (__nwlog_fault(v22, &type, &v52))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v23 = __nwlog_obj();
          v43 = type;
          if (os_log_type_enabled(v23, type))
          {
            *buf = 136446210;
            v55 = "nw_connection_group_copy_workloop";
            _os_log_impl(&dword_181A37000, v23, v43, "%{public}s called with null workloop", buf, 0xCu);
          }

LABEL_73:

          goto LABEL_74;
        }

        if (v52 != 1)
        {
          v23 = __nwlog_obj();
          v48 = type;
          if (os_log_type_enabled(v23, type))
          {
            *buf = 136446210;
            v55 = "nw_connection_group_copy_workloop";
            _os_log_impl(&dword_181A37000, v23, v48, "%{public}s called with null workloop, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_73;
        }

        v29 = __nw_create_backtrace_string();
        v46 = __nwlog_obj();
        v41 = type;
        v30 = os_log_type_enabled(v46, type);
        if (!v29)
        {
          v23 = v46;
          if (v30)
          {
            *buf = 136446210;
            v55 = "nw_connection_group_copy_workloop";
            _os_log_impl(&dword_181A37000, v46, v41, "%{public}s called with null workloop, no backtrace", buf, 0xCu);
          }

          goto LABEL_73;
        }

        if (v30)
        {
          *buf = 136446466;
          v55 = "nw_connection_group_copy_workloop";
          v56 = 2082;
          v57[0] = v29;
          _os_log_impl(&dword_181A37000, v46, v41, "%{public}s called with null workloop, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v29);
      }

LABEL_74:
      if (v22)
      {
        goto LABEL_75;
      }

LABEL_76:
      v15 = 0;
LABEL_19:

LABEL_20:
      nw_connection_set_queue(v9, v15);
      nw_connection_start(v9);
      nw_connection_cancel(v9);

      if (count < *(v2 + 47))
      {
        goto LABEL_6;
      }
    }
  }

  v32 = __nwlog_obj();
  *buf = 136446210;
  v55 = "nw_connection_group_prune_connections_locked";
  v33 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v52 = 0;
  if (__nwlog_fault(v33, &type, &v52))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v55 = "nw_connection_group_prune_connections_locked";
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v52 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v37 = type;
      v38 = os_log_type_enabled(v34, type);
      if (v36)
      {
        if (v38)
        {
          *buf = 136446466;
          v55 = "nw_connection_group_prune_connections_locked";
          v56 = 2082;
          v57[0] = v36;
          _os_log_impl(&dword_181A37000, v34, v37, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v36);
        goto LABEL_93;
      }

      if (v38)
      {
        *buf = 136446210;
        v55 = "nw_connection_group_prune_connections_locked";
        _os_log_impl(&dword_181A37000, v34, v37, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v34 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v55 = "nw_connection_group_prune_connections_locked";
        _os_log_impl(&dword_181A37000, v34, v39, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_93:
  if (v33)
  {
    free(v33);
  }

LABEL_6:
}

void nw_connection_group_handle_connection_state_changed(void *a1, void *a2, int a3, void *a4)
{
  v150 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (!v7)
  {
    v68 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_handle_connection_state_changed";
    v69 = _os_log_send_and_compose_impl();

    v127[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v121) = 0;
    if (!__nwlog_fault(v69, v127, &v121))
    {
      goto LABEL_182;
    }

    if (v127[0] == OS_LOG_TYPE_FAULT)
    {
      v70 = __nwlog_obj();
      v71 = v127[0];
      if (os_log_type_enabled(v70, v127[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_connection_state_changed";
        _os_log_impl(&dword_181A37000, v70, v71, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v121 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v70 = __nwlog_obj();
      v79 = v127[0];
      v80 = os_log_type_enabled(v70, v127[0]);
      if (backtrace_string)
      {
        if (v80)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_handle_connection_state_changed";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v70, v79, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_182:
        if (!v69)
        {
          goto LABEL_21;
        }

LABEL_183:
        free(v69);
        goto LABEL_21;
      }

      if (v80)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_connection_state_changed";
        _os_log_impl(&dword_181A37000, v70, v79, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v70 = __nwlog_obj();
      v86 = v127[0];
      if (os_log_type_enabled(v70, v127[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_connection_state_changed";
        _os_log_impl(&dword_181A37000, v70, v86, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_181:

    goto LABEL_182;
  }

  if (!v8)
  {
    v72 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_handle_connection_state_changed";
    v69 = _os_log_send_and_compose_impl();

    v127[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v121) = 0;
    if (!__nwlog_fault(v69, v127, &v121))
    {
      goto LABEL_182;
    }

    if (v127[0] == OS_LOG_TYPE_FAULT)
    {
      v70 = __nwlog_obj();
      v73 = v127[0];
      if (os_log_type_enabled(v70, v127[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_connection_state_changed";
        _os_log_impl(&dword_181A37000, v70, v73, "%{public}s called with null connection", buf, 0xCu);
      }

      goto LABEL_181;
    }

    if (v121 != 1)
    {
      v70 = __nwlog_obj();
      v87 = v127[0];
      if (os_log_type_enabled(v70, v127[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_connection_state_changed";
        _os_log_impl(&dword_181A37000, v70, v87, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_181;
    }

    v81 = __nw_create_backtrace_string();
    v70 = __nwlog_obj();
    v82 = v127[0];
    v83 = os_log_type_enabled(v70, v127[0]);
    if (!v81)
    {
      if (v83)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_connection_state_changed";
        _os_log_impl(&dword_181A37000, v70, v82, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_181;
    }

    if (v83)
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_handle_connection_state_changed";
      *&buf[12] = 2082;
      *&buf[14] = v81;
      _os_log_impl(&dword_181A37000, v70, v82, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_162;
  }

  if (!a3)
  {
    v74 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_handle_connection_state_changed";
    v69 = _os_log_send_and_compose_impl();

    v127[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v121) = 0;
    if (!__nwlog_fault(v69, v127, &v121))
    {
      goto LABEL_182;
    }

    if (v127[0] == OS_LOG_TYPE_FAULT)
    {
      v70 = __nwlog_obj();
      v75 = v127[0];
      if (os_log_type_enabled(v70, v127[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_connection_state_changed";
        _os_log_impl(&dword_181A37000, v70, v75, "%{public}s called with null connection_state", buf, 0xCu);
      }

      goto LABEL_181;
    }

    if (v121 != 1)
    {
      v70 = __nwlog_obj();
      v88 = v127[0];
      if (os_log_type_enabled(v70, v127[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_connection_state_changed";
        _os_log_impl(&dword_181A37000, v70, v88, "%{public}s called with null connection_state, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_181;
    }

    v81 = __nw_create_backtrace_string();
    v70 = __nwlog_obj();
    v84 = v127[0];
    v85 = os_log_type_enabled(v70, v127[0]);
    if (!v81)
    {
      if (v85)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_connection_state_changed";
        _os_log_impl(&dword_181A37000, v70, v84, "%{public}s called with null connection_state, no backtrace", buf, 0xCu);
      }

      goto LABEL_181;
    }

    if (v85)
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_handle_connection_state_changed";
      *&buf[12] = 2082;
      *&buf[14] = v81;
      _os_log_impl(&dword_181A37000, v70, v84, "%{public}s called with null connection_state, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_162:

    free(v81);
    if (!v69)
    {
      goto LABEL_21;
    }

    goto LABEL_183;
  }

  if (!nw_parameters_get_logging_disabled(*(v7 + 7)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v10 = gconnection_groupLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (a3 > 5)
      {
        v11 = "unknown";
      }

      else
      {
        v11 = off_1E6A2F020[a3];
      }

      v12 = *(v7 + 44);
      *buf = 136447234;
      *&buf[4] = "nw_connection_group_handle_connection_state_changed";
      *&buf[12] = 1024;
      *&buf[14] = v12;
      *&buf[18] = 2112;
      *&buf[20] = v8;
      *&buf[28] = 2080;
      *&buf[30] = v11;
      *&buf[38] = 2112;
      v149 = v9;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] connection %@ entered state %s (error %@)", buf, 0x30u);
    }
  }

  v144 = 0;
  v145 = &v144;
  v146 = 0x2020000000;
  v147 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL51nw_connection_group_handle_connection_state_changedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection21nw_connection_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke;
  aBlock[3] = &unk_1E6A3BE58;
  v13 = v7;
  v141 = v13;
  v14 = v8;
  v142 = v14;
  v143 = &v144;
  v15 = _Block_copy(aBlock);
  os_unfair_lock_lock(v7 + 45);
  v15[2](v15);
  os_unfair_lock_unlock(v7 + 45);

  if (*(v145 + 24) == 1)
  {
    if (!nw_parameters_get_logging_disabled(*(v7 + 7)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v16 = gconnection_groupLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v13 + 44);
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_handle_connection_state_changed";
        *&buf[12] = 1024;
        *&buf[14] = v17;
        *&buf[18] = 2112;
        *&buf[20] = v14;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s [G%u] connection %@ is no longer part of the group", buf, 0x1Cu);
      }

LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        if (!nw_parameters_get_logging_disabled(*(v7 + 7)))
        {
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v48 = gconnection_groupLogObj;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = *(v13 + 44);
            *buf = 136446978;
            *&buf[4] = "nw_connection_group_handle_connection_state_changed";
            *&buf[12] = 1024;
            *&buf[14] = v49;
            *&buf[18] = 2112;
            *&buf[20] = v14;
            *&buf[28] = 2112;
            *&buf[30] = v9;
            _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_ERROR, "%{public}s [G%u] connection %@ failed with error %@", buf, 0x26u);
          }
        }

        nw_connection_cancel(v14);
      }

      else if (a3 == 5)
      {
        if (!nw_parameters_get_logging_disabled(*(v7 + 7)))
        {
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v18 = gconnection_groupLogObj;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = *(v13 + 44);
            *buf = 136446722;
            *&buf[4] = "nw_connection_group_handle_connection_state_changed";
            *&buf[12] = 1024;
            *&buf[14] = v19;
            *&buf[18] = 2112;
            *&buf[20] = v14;
            _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Connection %@ cancelled", buf, 0x1Cu);
          }
        }

        v20 = *(v13 + 11);
        if (v20)
        {
          if (*(v13 + 1))
          {
            v21 = _Block_copy(v20);
            v22 = *(v13 + 4);
            v23 = *(v13 + 1);
            v24 = dispatch_block_create_with_qos_class(0, v22, 0, v21);
            dispatch_async(v23, v24);

            v20 = *(v13 + 11);
          }

          *(v13 + 11) = 0;
        }

        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 3221225472;
        v99[2] = ___ZL51nw_connection_group_handle_connection_state_changedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection21nw_connection_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_147;
        v99[3] = &unk_1E6A3D760;
        v100 = v13;
        v101 = v14;
        v25 = _Block_copy(v99);
        os_unfair_lock_lock(v7 + 45);
        v25[2](v25);
        os_unfair_lock_unlock(v7 + 45);
      }

      goto LABEL_20;
    }

    v32 = *(v7 + 7);
    if (*(v13 + 10) >= 3)
    {
      if (!nw_parameters_get_logging_disabled(v32))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v89 = gconnection_groupLogObj;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
        {
          v90 = *(v13 + 44);
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_handle_connection_state_changed";
          *&buf[12] = 1024;
          *&buf[14] = v90;
          _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] connection group failed before ready state processed", buf, 0x12u);
        }
      }

      goto LABEL_20;
    }

    if (!nw_parameters_get_logging_disabled(v32))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v33 = gconnection_groupLogObj;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(v13 + 44);
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_handle_connection_state_changed";
        *&buf[12] = 1024;
        *&buf[14] = v34;
        *&buf[18] = 2112;
        *&buf[20] = v14;
        _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] connection %@ in ready state", buf, 0x1Cu);
      }
    }

    v35 = *(v13 + 8);
    if (v35)
    {
      v36 = v35;
      v37 = v36[2] == 2;

      if (v37)
      {
        v133[0] = MEMORY[0x1E69E9820];
        v133[1] = 3221225472;
        v133[2] = ___ZL51nw_connection_group_handle_connection_state_changedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection21nw_connection_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_142;
        v133[3] = &unk_1E6A3D760;
        v134 = v13;
        v135 = v14;
        v38 = _Block_copy(v133);
        os_unfair_lock_lock(v7 + 45);
        v38[2](v38);
        os_unfair_lock_unlock(v7 + 45);
      }
    }

    *v127 = 0;
    v128 = v127;
    v129 = 0x3032000000;
    v130 = __Block_byref_object_copy__143;
    v131 = __Block_byref_object_dispose__144;
    v132 = 0;
    v121 = 0;
    v122 = &v121;
    v123 = 0x3032000000;
    v124 = __Block_byref_object_copy__143;
    v125 = __Block_byref_object_dispose__144;
    v126 = 0;
    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = ___ZL51nw_connection_group_handle_connection_state_changedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection21nw_connection_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_145;
    v117[3] = &unk_1E6A36148;
    v119 = v127;
    v39 = v13;
    v118 = v39;
    v120 = &v121;
    v40 = _Block_copy(v117);
    os_unfair_lock_lock(v7 + 45);
    v40[2](v40);
    os_unfair_lock_unlock(v7 + 45);

    if (*(v128 + 5))
    {
      if (!nw_parameters_get_logging_disabled(*(v7 + 7)))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v41 = gconnection_groupLogObj;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v39[44];
          *buf = 136446722;
          *&buf[4] = "nw_connection_group_handle_connection_state_changed";
          *&buf[12] = 1024;
          *&buf[14] = v42;
          *&buf[18] = 2112;
          *&buf[20] = v14;
          _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEFAULT, "%{public}s [G%u] connection %@ ready, reading", buf, 0x1Cu);
        }
      }

      v43 = v39;
      v97 = v14;
      if (!nw_parameters_get_logging_disabled(*(v7 + 7)) && gLogDatapath == 1)
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v91 = gconnection_groupLogObj;
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
        {
          v92 = v43[44];
          *buf = 136446722;
          *&buf[4] = "nw_connection_group_read_on_connection";
          *&buf[12] = 1024;
          *&buf[14] = v92;
          *&buf[18] = 2112;
          *&buf[20] = v97;
          _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] reading on connection %@", buf, 0x1Cu);
        }
      }

      v44 = v43[46];
      if (!v44)
      {
        if (!nw_parameters_get_logging_disabled(*(v7 + 7)) && gLogDatapath == 1)
        {
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v95 = gconnection_groupLogObj;
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
          {
            v96 = v43[44];
            *buf = 136446466;
            *&buf[4] = "nw_connection_group_read_on_connection";
            *&buf[12] = 1024;
            *&buf[14] = v96;
            _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] overriding max size for reads to 1 since message size is 0", buf, 0x12u);
          }
        }

        v44 = 1;
      }

      if (v43[46] >= 0xFFFFFFFE)
      {
        v45 = -2;
      }

      else
      {
        v45 = v43[46];
      }

      if (!nw_parameters_get_logging_disabled(*(v7 + 7)) && gLogDatapath == 1)
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v93 = gconnection_groupLogObj;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
        {
          v94 = v43[44];
          *buf = 136446978;
          *&buf[4] = "nw_connection_group_read_on_connection";
          *&buf[12] = 1024;
          *&buf[14] = v94;
          *&buf[18] = 1024;
          *&buf[20] = v45;
          *&buf[24] = 1024;
          *&buf[26] = v44;
          _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] reading with min: %u, max: %u", buf, 0x1Eu);
        }
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL38nw_connection_group_read_on_connectionP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke;
      *&buf[24] = &unk_1E6A3A648;
      v46 = v43;
      *&buf[32] = v46;
      v47 = v97;
      v149 = v47;
      nw_connection_receive_internal(v47, 0, v45, v44, buf);

      goto LABEL_112;
    }

    if (v122[5])
    {
LABEL_112:

      _Block_object_dispose(&v121, 8);
      _Block_object_dispose(v127, 8);

      goto LABEL_20;
    }

    v113 = 0;
    v114 = &v113;
    v115 = 0x2020000000;
    v116 = 0;
    v109 = 0;
    v110 = &v109;
    v111 = 0x2020000000;
    v112 = 0;
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = ___ZL51nw_connection_group_handle_connection_state_changedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection21nw_connection_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_146;
    v104[3] = &unk_1E6A36148;
    v106 = &v113;
    v51 = v39;
    v105 = v51;
    v107 = &v109;
    v52 = _Block_copy(v104);
    v108 = v52;
    nw_synchronize<void({block_pointer} {__strong})(void)>(v7 + 45, &v108);

    if (*(v110 + 24) != 1 || (*(v114 + 6) - 1) > 1)
    {
      if (!nw_parameters_get_logging_disabled(*(v7 + 7)))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v59 = gconnection_groupLogObj;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v60 = v51[44];
          *buf = 136446722;
          *&buf[4] = "nw_connection_group_handle_connection_state_changed";
          *&buf[12] = 1024;
          *&buf[14] = v60;
          *&buf[18] = 2112;
          *&buf[20] = v14;
          _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_INFO, "%{public}s [G%u] connection %@ ready, not reading because there is no receive handler", buf, 0x1Cu);
        }
      }

      goto LABEL_111;
    }

    if (nw_parameters_get_logging_disabled(*(v7 + 7)))
    {
LABEL_111:

      _Block_object_dispose(&v109, 8);
      _Block_object_dispose(&v113, 8);
      goto LABEL_112;
    }

    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v53 = gconnection_groupLogObj;
    v54 = v51[44];
    *buf = 136446722;
    *&buf[4] = "nw_connection_group_handle_connection_state_changed";
    *&buf[12] = 1024;
    *&buf[14] = v54;
    *&buf[18] = 2112;
    *&buf[20] = v14;
    v98 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v102 = 0;
    v55 = v98;
    if (!__nwlog_fault(v98, &type, &v102))
    {
LABEL_146:
      if (v55)
      {
        free(v55);
      }

      goto LABEL_111;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v56 = gconnection_groupLogObj;
      v57 = type;
      if (os_log_type_enabled(v56, type))
      {
        v58 = v51[44];
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_handle_connection_state_changed";
        *&buf[12] = 1024;
        *&buf[14] = v58;
        *&buf[18] = 2112;
        *&buf[20] = v14;
        _os_log_impl(&dword_181A37000, v56, v57, "%{public}s [G%u] group started and connection %@ ready, not reading because there is no receive handler", buf, 0x1Cu);
      }
    }

    else if (v102 == 1)
    {
      v61 = __nw_create_backtrace_string();
      if (v61)
      {
        v62 = v61;
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v63 = gconnection_groupLogObj;
        v64 = type;
        if (os_log_type_enabled(v63, type))
        {
          v65 = v51[44];
          *buf = 136446978;
          *&buf[4] = "nw_connection_group_handle_connection_state_changed";
          *&buf[12] = 1024;
          *&buf[14] = v65;
          *&buf[18] = 2112;
          *&buf[20] = v14;
          *&buf[28] = 2082;
          *&buf[30] = v62;
          _os_log_impl(&dword_181A37000, v63, v64, "%{public}s [G%u] group started and connection %@ ready, not reading because there is no receive handler, dumping backtrace:%{public}s", buf, 0x26u);
        }

        free(v62);
        goto LABEL_145;
      }

      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v56 = gconnection_groupLogObj;
      v76 = type;
      if (os_log_type_enabled(v56, type))
      {
        v77 = v51[44];
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_handle_connection_state_changed";
        *&buf[12] = 1024;
        *&buf[14] = v77;
        *&buf[18] = 2112;
        *&buf[20] = v14;
        _os_log_impl(&dword_181A37000, v56, v76, "%{public}s [G%u] group started and connection %@ ready, not reading because there is no receive handler, no backtrace", buf, 0x1Cu);
      }
    }

    else
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v56 = gconnection_groupLogObj;
      v66 = type;
      if (os_log_type_enabled(v56, type))
      {
        v67 = v51[44];
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_handle_connection_state_changed";
        *&buf[12] = 1024;
        *&buf[14] = v67;
        *&buf[18] = 2112;
        *&buf[20] = v14;
        _os_log_impl(&dword_181A37000, v56, v66, "%{public}s [G%u] group started and connection %@ ready, not reading because there is no receive handler, backtrace limit exceeded", buf, 0x1Cu);
      }
    }

LABEL_145:
    v55 = v98;
    goto LABEL_146;
  }

  if (a3 != 1)
  {
    if (a3 == 2 && *(v13 + 10) <= 2)
    {
      if (!nw_parameters_get_logging_disabled(*(v7 + 7)))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v26 = gconnection_groupLogObj;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = *(v13 + 44);
          *buf = 136446722;
          *&buf[4] = "nw_connection_group_handle_connection_state_changed";
          *&buf[12] = 1024;
          *&buf[14] = v27;
          *&buf[18] = 2112;
          *&buf[20] = v14;
          _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] connection %@ in preparing state", buf, 0x1Cu);
        }
      }

      v28 = *(v13 + 8);
      if (v28)
      {
        v29 = v28;
        v30 = v29[2] == 2;

        if (v30 && (*(v13 + 198) & 4) != 0)
        {
          v136[0] = MEMORY[0x1E69E9820];
          v136[1] = 3221225472;
          v136[2] = ___ZL51nw_connection_group_handle_connection_state_changedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection21nw_connection_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_141;
          v136[3] = &unk_1E6A3D760;
          v137 = v13;
          v138 = v14;
          v31 = _Block_copy(v136);
          v139 = v31;
          nw_synchronize<void({block_pointer} {__strong})(void)>(v7 + 45, &v139);
        }
      }
    }

    goto LABEL_20;
  }

  if (!nw_parameters_get_logging_disabled(*(v7 + 7)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v16 = gconnection_groupLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(v13 + 44);
      *buf = 136446722;
      *&buf[4] = "nw_connection_group_handle_connection_state_changed";
      *&buf[12] = 1024;
      *&buf[14] = v50;
      *&buf[18] = 2112;
      *&buf[20] = v14;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s [G%u] connection %@ in waiting state", buf, 0x1Cu);
    }

    goto LABEL_19;
  }

LABEL_20:

  _Block_object_dispose(&v144, 8);
LABEL_21:
}

void sub_1823BB954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);

  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);

  _Block_object_dispose((v59 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL51nw_connection_group_handle_connection_state_changedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection21nw_connection_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke(void *a1)
{
  v2 = a1[5];
  result = *(a1[4] + 112);
  if (result)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (result = _nw_array_contains_object(result, v2), (result & 1) == 0))
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

void nw_synchronize<void({block_pointer} {__strong})(void)>(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  (*(*a2 + 16))();

  os_unfair_lock_unlock(a1);
}

void ___ZL51nw_connection_group_handle_connection_state_changedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection21nw_connection_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_142(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 198) & 0x10) != 0)
  {
    if ((*(v2 + 198) & 0x40) == 0)
    {
      if (!nw_parameters_get_logging_disabled(*(v2 + 56)))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v3 = gconnection_groupLogObj;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v4 = *(*(a1 + 32) + 176);
          v5 = 136446466;
          v6 = "nw_connection_group_handle_connection_state_changed_block_invoke";
          v7 = 1024;
          v8 = v4;
          _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s [G%u] listener ready and first connection ready", &v5, 0x12u);
        }
      }

      nw_connection_group_set_state_locked(*(a1 + 32), 2, 0);
    }
  }

  else
  {
    nw_connection_group_create_listener_from_connection_locked(v2, *(a1 + 40));
  }

  *(*(a1 + 32) + 198) |= 0x40u;
}

void *__Block_byref_object_copy__143(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void ___ZL51nw_connection_group_handle_connection_state_changedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection21nw_connection_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_145(void *a1)
{
  v2 = _Block_copy(*(a1[4] + 144));
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = _Block_copy(*(a1[4] + 152));
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void ___ZL38nw_connection_group_read_on_connectionP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v188 = *MEMORY[0x1E69E9840];
  data = a2;
  v9 = a3;
  v10 = a5;
  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)) && gLogDatapath == 1)
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v73 = gconnection_groupLogObj;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      v74 = *(a1 + 40);
      v75 = *(*(a1 + 32) + 176);
      if (data)
      {
        size = dispatch_data_get_size(data);
      }

      else
      {
        size = 0;
      }

      if (v9)
      {
        identifier = nw_content_context_get_identifier(v9);
      }

      else
      {
        identifier = "";
      }

      *&buf[4] = "nw_connection_group_read_on_connection_block_invoke";
      *&buf[12] = 1024;
      v103 = "not ";
      *buf = 136448258;
      if (a4)
      {
        v103 = "";
      }

      *&buf[14] = v75;
      *&buf[18] = 2112;
      *&buf[20] = v74;
      *&buf[28] = 2048;
      *&buf[30] = data;
      *&buf[38] = 2048;
      v179 = size;
      v180 = 2048;
      v181 = v9;
      v182 = 2080;
      v183 = identifier;
      v184 = 2080;
      v185 = v103;
      v186 = 2112;
      v187 = v10;
      _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] connection %@ received message (data %p, length %zu bytes, context %p %s, %scomplete, error %@)", buf, 0x58u);
    }
  }

  if (!v10)
  {
    if (!v9)
    {
      v9 = nw_content_context_create("connection_group incoming message");
    }

    v29 = 1;
    if (!data || (a4 & 1) != 0 || (v30 = dispatch_data_get_size(data), v31 = *(a1 + 32), v30 < *(v31 + 184)))
    {
LABEL_46:
      v38 = v9 == &__block_literal_global_6_44667 || v9 == &__block_literal_global_44658 || v9 == &__block_literal_global_8_44676 || v9 == &__block_literal_global_10_44685;
      v39 = v38;
      if (v38 && !nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v71 = gconnection_groupLogObj;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          v72 = *(*(a1 + 32) + 176);
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_read_on_connection_block_invoke";
          *&buf[12] = 1024;
          *&buf[14] = v72;
          _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] context is static", buf, 0x12u);
        }
      }

      *type = 0;
      v171 = type;
      v172 = 0x3032000000;
      v173 = __Block_byref_object_copy__143;
      v174 = __Block_byref_object_dispose__144;
      v175 = 0;
      v164 = 0;
      v165 = &v164;
      v166 = 0x3032000000;
      v167 = __Block_byref_object_copy__9201;
      v168 = __Block_byref_object_dispose__9202;
      v169 = 0;
      v40 = *(a1 + 32);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL38nw_connection_group_read_on_connectionP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke_151;
      aBlock[3] = &unk_1E6A36148;
      v162 = type;
      v161 = v40;
      v163 = &v164;
      v41 = _Block_copy(aBlock);
      os_unfair_lock_lock(v40 + 45);
      v41[2](v41);
      os_unfair_lock_unlock(v40 + 45);

      if (!*(v171 + 5) || !v165[5])
      {
        if (nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
        {
          v29 = 0;
          if (v9)
          {
            goto LABEL_75;
          }

          goto LABEL_143;
        }

        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v54 = gconnection_groupLogObj;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          v55 = *(a1 + 40);
          v56 = *(*(a1 + 32) + 176);
          *buf = 136446722;
          *&buf[4] = "nw_connection_group_read_on_connection_block_invoke";
          *&buf[12] = 1024;
          *&buf[14] = v56;
          *&buf[18] = 2112;
          *&buf[20] = v55;
          _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] no receive handler or client queue, stopping reads on connection %@", buf, 0x1Cu);
        }

        v29 = 0;
LABEL_74:

        if (v9)
        {
LABEL_75:
          v57 = v9;
          if (v9 == &__block_literal_global_44658 || v9 == &__block_literal_global_10_44685)
          {

            goto LABEL_150;
          }

          v58 = 1;
          if (v9 != &__block_literal_global_6_44667 && v9 != &__block_literal_global_8_44676)
          {
            v58 = BYTE6(v57[14].isa) & 1;
          }

          if ((v58 & a4 & 1) == 0)
          {
LABEL_150:
            if (v29)
            {
              nw_connection_group_touch_connection(*(a1 + 32), *(a1 + 40));
              v93 = *(a1 + 40);
              v94 = *(a1 + 32);
              v95 = v93;
              v96 = v95;
              if (v94)
              {
                if (v95)
                {
                  if (!nw_parameters_get_logging_disabled(*(v94 + 7)) && gLogDatapath == 1)
                  {
                    if (__nwlog_connection_group_log::onceToken != -1)
                    {
                      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
                    }

                    v117 = gconnection_groupLogObj;
                    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
                    {
                      v118 = *(v94 + 44);
                      *buf = 136446722;
                      *&buf[4] = "nw_connection_group_read_on_connection";
                      *&buf[12] = 1024;
                      *&buf[14] = v118;
                      *&buf[18] = 2112;
                      *&buf[20] = v96;
                      _os_log_impl(&dword_181A37000, v117, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] reading on connection %@", buf, 0x1Cu);
                    }
                  }

                  v97 = *(v94 + 46);
                  if (!v97)
                  {
                    if (!nw_parameters_get_logging_disabled(*(v94 + 7)) && gLogDatapath == 1)
                    {
                      if (__nwlog_connection_group_log::onceToken != -1)
                      {
                        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
                      }

                      v138 = gconnection_groupLogObj;
                      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
                      {
                        v139 = *(v94 + 44);
                        *buf = 136446466;
                        *&buf[4] = "nw_connection_group_read_on_connection";
                        *&buf[12] = 1024;
                        *&buf[14] = v139;
                        _os_log_impl(&dword_181A37000, v138, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] overriding max size for reads to 1 since message size is 0", buf, 0x12u);
                      }
                    }

                    v97 = 1;
                  }

                  if (*(v94 + 46) >= 0xFFFFFFFE)
                  {
                    v98 = -2;
                  }

                  else
                  {
                    v98 = *(v94 + 46);
                  }

                  if (!nw_parameters_get_logging_disabled(*(v94 + 7)) && gLogDatapath == 1)
                  {
                    if (__nwlog_connection_group_log::onceToken != -1)
                    {
                      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
                    }

                    v119 = gconnection_groupLogObj;
                    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
                    {
                      v120 = *(v94 + 44);
                      *buf = 136446978;
                      *&buf[4] = "nw_connection_group_read_on_connection";
                      *&buf[12] = 1024;
                      *&buf[14] = v120;
                      *&buf[18] = 1024;
                      *&buf[20] = v98;
                      *&buf[24] = 1024;
                      *&buf[26] = v97;
                      _os_log_impl(&dword_181A37000, v119, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] reading with min: %u, max: %u", buf, 0x1Eu);
                    }
                  }

                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&buf[16] = ___ZL38nw_connection_group_read_on_connectionP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke;
                  *&buf[24] = &unk_1E6A3A648;
                  *&buf[32] = v94;
                  v179 = v96;
                  nw_connection_receive_internal(v179, 0, v98, v97, buf);

                  goto LABEL_165;
                }

                v115 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_connection_group_read_on_connection";
                v112 = _os_log_send_and_compose_impl();

                v177 = OS_LOG_TYPE_ERROR;
                v176 = 0;
                if (__nwlog_fault(v112, &v177, &v176))
                {
                  if (v177 == OS_LOG_TYPE_FAULT)
                  {
                    v113 = __nwlog_obj();
                    v116 = v177;
                    if (os_log_type_enabled(v113, v177))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_connection_group_read_on_connection";
                      _os_log_impl(&dword_181A37000, v113, v116, "%{public}s called with null connection", buf, 0xCu);
                    }
                  }

                  else if (v176 == 1)
                  {
                    backtrace_string = __nw_create_backtrace_string();
                    v113 = __nwlog_obj();
                    v134 = v177;
                    v135 = os_log_type_enabled(v113, v177);
                    if (backtrace_string)
                    {
                      if (v135)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_connection_group_read_on_connection";
                        *&buf[12] = 2082;
                        *&buf[14] = backtrace_string;
                        _os_log_impl(&dword_181A37000, v113, v134, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(backtrace_string);
                      if (!v112)
                      {
                        goto LABEL_165;
                      }

                      goto LABEL_307;
                    }

                    if (v135)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_connection_group_read_on_connection";
                      _os_log_impl(&dword_181A37000, v113, v134, "%{public}s called with null connection, no backtrace", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v113 = __nwlog_obj();
                    v147 = v177;
                    if (os_log_type_enabled(v113, v177))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_connection_group_read_on_connection";
                      _os_log_impl(&dword_181A37000, v113, v147, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
                    }
                  }

                  goto LABEL_305;
                }

LABEL_306:
                if (!v112)
                {
LABEL_165:

LABEL_168:
                  _Block_object_dispose(&v164, 8);

                  _Block_object_dispose(type, 8);
                  goto LABEL_169;
                }

LABEL_307:
                free(v112);
                goto LABEL_165;
              }

              v111 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_connection_group_read_on_connection";
              v112 = _os_log_send_and_compose_impl();

              v177 = OS_LOG_TYPE_ERROR;
              v176 = 0;
              if (!__nwlog_fault(v112, &v177, &v176))
              {
                goto LABEL_306;
              }

              if (v177 == OS_LOG_TYPE_FAULT)
              {
                v113 = __nwlog_obj();
                v114 = v177;
                if (os_log_type_enabled(v113, v177))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_connection_group_read_on_connection";
                  _os_log_impl(&dword_181A37000, v113, v114, "%{public}s called with null group", buf, 0xCu);
                }
              }

              else if (v176 == 1)
              {
                v130 = __nw_create_backtrace_string();
                v113 = __nwlog_obj();
                v131 = v177;
                v132 = os_log_type_enabled(v113, v177);
                if (v130)
                {
                  if (v132)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_connection_group_read_on_connection";
                    *&buf[12] = 2082;
                    *&buf[14] = v130;
                    _os_log_impl(&dword_181A37000, v113, v131, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v130);
                  goto LABEL_306;
                }

                if (v132)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_connection_group_read_on_connection";
                  _os_log_impl(&dword_181A37000, v113, v131, "%{public}s called with null group, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v113 = __nwlog_obj();
                v146 = v177;
                if (os_log_type_enabled(v113, v177))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_connection_group_read_on_connection";
                  _os_log_impl(&dword_181A37000, v113, v146, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
                }
              }

LABEL_305:

              goto LABEL_306;
            }

LABEL_166:
            if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)) && gLogDatapath == 1)
            {
              if (__nwlog_connection_group_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
              }

              v99 = gconnection_groupLogObj;
              if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
              {
                v100 = *(a1 + 40);
                v101 = *(*(a1 + 32) + 176);
                *buf = 136446722;
                *&buf[4] = "nw_connection_group_read_on_connection_block_invoke";
                *&buf[12] = 1024;
                *&buf[14] = v101;
                *&buf[18] = 2112;
                *&buf[20] = v100;
                _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] stopping reads on %@", buf, 0x1Cu);
              }
            }

            goto LABEL_168;
          }

LABEL_144:
          if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
          {
            if (__nwlog_connection_group_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
            }

            v89 = gconnection_groupLogObj;
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              v90 = *(*(a1 + 32) + 176);
              v91 = nw_content_context_get_identifier(v9);
              v92 = *(a1 + 40);
              *buf = 136447234;
              *&buf[4] = "nw_connection_group_read_on_connection_block_invoke";
              *&buf[12] = 1024;
              *&buf[14] = v90;
              *&buf[18] = 2048;
              *&buf[20] = v9;
              *&buf[28] = 2080;
              *&buf[30] = v91;
              *&buf[38] = 2112;
              v179 = v92;
              _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] final, complete content context (%p: %s), stopping reading on %@", buf, 0x30u);
            }
          }

          goto LABEL_166;
        }

LABEL_143:
        if (!a4)
        {
          goto LABEL_150;
        }

        goto LABEL_144;
      }

      v42 = *(a1 + 40);
      v43 = v9;
      v44 = v42;
      v45 = v44;
      if (v43)
      {
        if (v44)
        {
          if ((v39 & 1) == 0)
          {
            os_unfair_lock_lock(&v43[14]);
            BYTE6(v43[14].isa) |= 0x10u;
            v46 = _nw_array_create();
            isa = v43[13].isa;
            v43[13].isa = v46;

            v48 = v43[13].isa;
            if (v48)
            {
              _nw_array_append(v48, v45);
            }

            os_unfair_lock_unlock(&v43[14]);
          }

LABEL_67:

          v49 = v165[5];
          v50 = *(*(a1 + 32) + 16);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = ___ZL38nw_connection_group_read_on_connectionP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke_2;
          block[3] = &unk_1E6A2CB60;
          v155 = v43;
          v156 = data;
          v51 = *(a1 + 32);
          v159 = a4;
          v157 = v51;
          v158 = type;
          v52 = v49;
          v53 = dispatch_block_create_with_qos_class(0, v50, 0, block);
          dispatch_async(v52, v53);

          v54 = v155;
          goto LABEL_74;
        }

        v107 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_content_context_set_connection";
        v152 = _os_log_send_and_compose_impl();

        v177 = OS_LOG_TYPE_ERROR;
        v176 = 0;
        if (!__nwlog_fault(v152, &v177, &v176))
        {
LABEL_292:
          if (v152)
          {
            free(v152);
          }

          goto LABEL_67;
        }

        if (v177 == OS_LOG_TYPE_FAULT)
        {
          v105 = __nwlog_obj();
          v108 = v177;
          if (os_log_type_enabled(v105, v177))
          {
            *buf = 136446210;
            *&buf[4] = "nw_content_context_set_connection";
            _os_log_impl(&dword_181A37000, v105, v108, "%{public}s called with null connection", buf, 0xCu);
          }

LABEL_263:

          goto LABEL_292;
        }

        if (v176 != 1)
        {
          v105 = __nwlog_obj();
          v137 = v177;
          if (os_log_type_enabled(v105, v177))
          {
            *buf = 136446210;
            *&buf[4] = "nw_content_context_set_connection";
            _os_log_impl(&dword_181A37000, v105, v137, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_263;
        }

        v121 = __nw_create_backtrace_string();
        v122 = __nwlog_obj();
        v151 = v177;
        v124 = os_log_type_enabled(v122, v177);
        if (v121)
        {
          if (v124)
          {
            *buf = 136446466;
            *&buf[4] = "nw_content_context_set_connection";
            *&buf[12] = 2082;
            *&buf[14] = v121;
            _os_log_impl(&dword_181A37000, v122, v151, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

LABEL_228:

          free(v121);
          goto LABEL_292;
        }

        if (v124)
        {
          *buf = 136446210;
          *&buf[4] = "nw_content_context_set_connection";
          _os_log_impl(&dword_181A37000, v122, v151, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v104 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_content_context_set_connection";
        v152 = _os_log_send_and_compose_impl();

        v177 = OS_LOG_TYPE_ERROR;
        v176 = 0;
        if (!__nwlog_fault(v152, &v177, &v176))
        {
          goto LABEL_292;
        }

        if (v177 == OS_LOG_TYPE_FAULT)
        {
          v105 = __nwlog_obj();
          v106 = v177;
          if (os_log_type_enabled(v105, v177))
          {
            *buf = 136446210;
            *&buf[4] = "nw_content_context_set_connection";
            _os_log_impl(&dword_181A37000, v105, v106, "%{public}s called with null context", buf, 0xCu);
          }

          goto LABEL_263;
        }

        if (v176 != 1)
        {
          v105 = __nwlog_obj();
          v136 = v177;
          if (os_log_type_enabled(v105, v177))
          {
            *buf = 136446210;
            *&buf[4] = "nw_content_context_set_connection";
            _os_log_impl(&dword_181A37000, v105, v136, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_263;
        }

        v121 = __nw_create_backtrace_string();
        v122 = __nwlog_obj();
        v150 = v177;
        v123 = os_log_type_enabled(v122, v177);
        if (v121)
        {
          if (v123)
          {
            *buf = 136446466;
            *&buf[4] = "nw_content_context_set_connection";
            *&buf[12] = 2082;
            *&buf[14] = v121;
            _os_log_impl(&dword_181A37000, v122, v150, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          goto LABEL_228;
        }

        if (v123)
        {
          *buf = 136446210;
          *&buf[4] = "nw_content_context_set_connection";
          _os_log_impl(&dword_181A37000, v122, v150, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      goto LABEL_292;
    }

    v32 = *(v31 + 56);
    if ((*(v31 + 198) & 2) == 0)
    {
      if (!nw_parameters_get_logging_disabled(v32))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v33 = gconnection_groupLogObj;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(*(a1 + 32) + 176);
          v35 = dispatch_data_get_size(data);
          *buf = 136446722;
          *&buf[4] = "nw_connection_group_read_on_connection_block_invoke";
          *&buf[12] = 1024;
          *&buf[14] = v34;
          *&buf[18] = 2048;
          *&buf[20] = v35;
          _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEFAULT, "%{public}s [G%u] oversized message is %zu bytes and not yet complete, delivering partial message", buf, 0x1Cu);
        }
      }

      v29 = 0;
      goto LABEL_46;
    }

    if (!nw_parameters_get_logging_disabled(v32))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v59 = gconnection_groupLogObj;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = *(*(a1 + 32) + 176);
        v61 = dispatch_data_get_size(data);
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_read_on_connection_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = v60;
        *&buf[18] = 2048;
        *&buf[20] = v61;
        _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEFAULT, "%{public}s [G%u] oversized message is %zu bytes and not yet complete, rejecting as error", buf, 0x1Cu);
      }
    }

    if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v62 = gconnection_groupLogObj;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        v63 = *(a1 + 40);
        v64 = *(*(a1 + 32) + 176);
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_read_on_connection_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = v64;
        *&buf[18] = 2112;
        *&buf[20] = v63;
        _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_INFO, "%{public}s [G%u] failing connection %@ due to oversized message", buf, 0x1Cu);
      }
    }

    v65 = *(a1 + 40);
    v22 = *(a1 + 32);
    v66 = v65;
    v24 = v66;
    if (v22)
    {
      if (v66)
      {
        if (!nw_parameters_get_logging_disabled(*(v22 + 7)))
        {
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v67 = gconnection_groupLogObj;
          if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
          {
            v68 = *(v22 + 44);
            *buf = 136446722;
            *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
            *&buf[12] = 1024;
            *&buf[14] = v68;
            *&buf[18] = 2112;
            *&buf[20] = v24;
            _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_INFO, "%{public}s [G%u] cancelling connection %@", buf, 0x1Cu);
          }
        }

        nw_connection_cancel(v24);
        if (!nw_parameters_get_logging_disabled(*(v22 + 7)))
        {
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v69 = gconnection_groupLogObj;
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            v70 = *(v22 + 44);
            *buf = 136446722;
            *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
            *&buf[12] = 1024;
            *&buf[14] = v70;
            *&buf[18] = 2112;
            *&buf[20] = v24;
            _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] cancelled %@", buf, 0x1Cu);
          }
        }

        goto LABEL_32;
      }

      v128 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
      v78 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v164) = 0;
      if (__nwlog_fault(v78, type, &v164))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v126 = __nwlog_obj();
          v129 = type[0];
          if (os_log_type_enabled(v126, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
            _os_log_impl(&dword_181A37000, v126, v129, "%{public}s called with null connection", buf, 0xCu);
          }
        }

        else if (v164 == 1)
        {
          v143 = __nw_create_backtrace_string();
          v126 = __nwlog_obj();
          v144 = type[0];
          v145 = os_log_type_enabled(v126, type[0]);
          if (v143)
          {
            if (v145)
            {
              *buf = 136446466;
              *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
              *&buf[12] = 2082;
              *&buf[14] = v143;
              _os_log_impl(&dword_181A37000, v126, v144, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v143);
            if (!v78)
            {
              goto LABEL_32;
            }

            goto LABEL_246;
          }

          if (v145)
          {
            *buf = 136446210;
            *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
            _os_log_impl(&dword_181A37000, v126, v144, "%{public}s called with null connection, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v126 = __nwlog_obj();
          v149 = type[0];
          if (os_log_type_enabled(v126, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
            _os_log_impl(&dword_181A37000, v126, v149, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_313;
      }

LABEL_314:
      if (!v78)
      {
        goto LABEL_32;
      }

      goto LABEL_246;
    }

    v125 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
    v78 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v164) = 0;
    if (!__nwlog_fault(v78, type, &v164))
    {
      goto LABEL_314;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v126 = __nwlog_obj();
      v127 = type[0];
      if (os_log_type_enabled(v126, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
        _os_log_impl(&dword_181A37000, v126, v127, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v164 == 1)
    {
      v140 = __nw_create_backtrace_string();
      v126 = __nwlog_obj();
      v141 = type[0];
      v142 = os_log_type_enabled(v126, type[0]);
      if (v140)
      {
        if (v142)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = v140;
          _os_log_impl(&dword_181A37000, v126, v141, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v140);
        goto LABEL_314;
      }

      if (v142)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
        _os_log_impl(&dword_181A37000, v126, v141, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v126 = __nwlog_obj();
      v148 = type[0];
      if (os_log_type_enabled(v126, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
        _os_log_impl(&dword_181A37000, v126, v148, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_313:

    goto LABEL_314;
  }

  v11 = v10;
  v12 = v11[2] == 1;

  if (!v12 || (v13 = v11, v14 = v13[3] == 89, v13, !v14))
  {
    if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v18 = gconnection_groupLogObj;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 40);
        v20 = *(*(a1 + 32) + 176);
        *buf = 136446978;
        *&buf[4] = "nw_connection_group_read_on_connection_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = v20;
        *&buf[18] = 2112;
        *&buf[20] = v19;
        *&buf[28] = 2112;
        *&buf[30] = v11;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "%{public}s [G%u] encountered error on connection %@: %@", buf, 0x26u);
      }
    }

    v21 = *(a1 + 40);
    v22 = *(a1 + 32);
    v23 = v21;
    v24 = v23;
    if (v22)
    {
      if (v23)
      {
        if (!nw_parameters_get_logging_disabled(*(v22 + 7)))
        {
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v25 = gconnection_groupLogObj;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = *(v22 + 44);
            *buf = 136446722;
            *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
            *&buf[12] = 1024;
            *&buf[14] = v26;
            *&buf[18] = 2112;
            *&buf[20] = v24;
            _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_INFO, "%{public}s [G%u] cancelling connection %@", buf, 0x1Cu);
          }
        }

        nw_connection_cancel(v24);
        if (!nw_parameters_get_logging_disabled(*(v22 + 7)))
        {
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v27 = gconnection_groupLogObj;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v28 = *(v22 + 44);
            *buf = 136446722;
            *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
            *&buf[12] = 1024;
            *&buf[14] = v28;
            *&buf[18] = 2112;
            *&buf[20] = v24;
            _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] cancelled %@", buf, 0x1Cu);
          }
        }

        goto LABEL_32;
      }

      v81 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
      v78 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v164) = 0;
      if (__nwlog_fault(v78, type, &v164))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v79 = __nwlog_obj();
          v82 = type[0];
          if (os_log_type_enabled(v79, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
            _os_log_impl(&dword_181A37000, v79, v82, "%{public}s called with null connection", buf, 0xCu);
          }
        }

        else if (v164 == 1)
        {
          v86 = __nw_create_backtrace_string();
          v79 = __nwlog_obj();
          v87 = type[0];
          v88 = os_log_type_enabled(v79, type[0]);
          if (v86)
          {
            if (v88)
            {
              *buf = 136446466;
              *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
              *&buf[12] = 2082;
              *&buf[14] = v86;
              _os_log_impl(&dword_181A37000, v79, v87, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v86);
            if (!v78)
            {
              goto LABEL_32;
            }

            goto LABEL_246;
          }

          if (v88)
          {
            *buf = 136446210;
            *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
            _os_log_impl(&dword_181A37000, v79, v87, "%{public}s called with null connection, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v79 = __nwlog_obj();
          v110 = type[0];
          if (os_log_type_enabled(v79, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
            _os_log_impl(&dword_181A37000, v79, v110, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_244;
      }

LABEL_245:
      if (!v78)
      {
LABEL_32:

        goto LABEL_169;
      }

LABEL_246:
      free(v78);
      goto LABEL_32;
    }

    v77 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
    v78 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v164) = 0;
    if (!__nwlog_fault(v78, type, &v164))
    {
      goto LABEL_245;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v79 = __nwlog_obj();
      v80 = type[0];
      if (os_log_type_enabled(v79, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
        _os_log_impl(&dword_181A37000, v79, v80, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v164 == 1)
    {
      v83 = __nw_create_backtrace_string();
      v79 = __nwlog_obj();
      v84 = type[0];
      v85 = os_log_type_enabled(v79, type[0]);
      if (v83)
      {
        if (v85)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = v83;
          _os_log_impl(&dword_181A37000, v79, v84, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v83);
        goto LABEL_245;
      }

      if (v85)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
        _os_log_impl(&dword_181A37000, v79, v84, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v79 = __nwlog_obj();
      v109 = type[0];
      if (os_log_type_enabled(v79, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_cancel_and_remove_connection";
        _os_log_impl(&dword_181A37000, v79, v109, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_244:

    goto LABEL_245;
  }

  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v15 = gconnection_groupLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 40);
      v17 = *(*(a1 + 32) + 176);
      *buf = 136446722;
      *&buf[4] = "nw_connection_group_read_on_connection_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = v17;
      *&buf[18] = 2112;
      *&buf[20] = v16;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] reads cancelled for connection %@", buf, 0x1Cu);
    }
  }

LABEL_169:
}

void sub_1823BE09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  _Block_object_dispose(&a32, 8);

  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void *___ZL51nw_connection_group_handle_connection_state_changedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection21nw_connection_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_146(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 40);
  *(*(result[6] + 8) + 24) = *(result[4] + 198) & 1;
  return result;
}

void ___ZL51nw_connection_group_handle_connection_state_changedP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection21nw_connection_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_147(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  if (!v3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_connection_group_remove_connection_locked";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v14, &type, &v38))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v41 = "nw_connection_group_remove_connection_locked";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v38 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v27 = type;
      v28 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          v41 = "nw_connection_group_remove_connection_locked";
          v42 = 2082;
          *v43 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v27, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_75:
        if (!v14)
        {
          goto LABEL_6;
        }

LABEL_76:
        free(v14);
        goto LABEL_6;
      }

      if (v28)
      {
        *buf = 136446210;
        v41 = "nw_connection_group_remove_connection_locked";
        _os_log_impl(&dword_181A37000, v15, v27, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v41 = "nw_connection_group_remove_connection_locked";
        _os_log_impl(&dword_181A37000, v15, v32, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_74:

    goto LABEL_75;
  }

  if (v4)
  {
    v6 = *(v3 + 14);
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      _nw_array_remove_object(v7, v8);

      if (!nw_parameters_get_logging_disabled(*(v3 + 7)) && gLogDatapath == 1)
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v24 = gconnection_groupLogObj;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(v3 + 44);
          *buf = 136446722;
          v41 = "nw_connection_group_remove_connection_locked";
          v42 = 1024;
          *v43 = v25;
          *&v43[4] = 2112;
          *&v43[6] = v8;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] removed connection %@", buf, 0x1Cu);
        }
      }
    }

    goto LABEL_6;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v41 = "nw_connection_group_remove_connection_locked";
  v14 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (!__nwlog_fault(v14, &type, &v38))
  {
    goto LABEL_75;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v15 = __nwlog_obj();
    v18 = type;
    if (os_log_type_enabled(v15, type))
    {
      *buf = 136446210;
      v41 = "nw_connection_group_remove_connection_locked";
      _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null connection", buf, 0xCu);
    }

    goto LABEL_74;
  }

  if (v38 != 1)
  {
    v15 = __nwlog_obj();
    v33 = type;
    if (os_log_type_enabled(v15, type))
    {
      *buf = 136446210;
      v41 = "nw_connection_group_remove_connection_locked";
      _os_log_impl(&dword_181A37000, v15, v33, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_74;
  }

  v29 = __nw_create_backtrace_string();
  v15 = __nwlog_obj();
  v30 = type;
  v31 = os_log_type_enabled(v15, type);
  if (!v29)
  {
    if (v31)
    {
      *buf = 136446210;
      v41 = "nw_connection_group_remove_connection_locked";
      _os_log_impl(&dword_181A37000, v15, v30, "%{public}s called with null connection, no backtrace", buf, 0xCu);
    }

    goto LABEL_74;
  }

  if (v31)
  {
    *buf = 136446466;
    v41 = "nw_connection_group_remove_connection_locked";
    v42 = 2082;
    *v43 = v29;
    _os_log_impl(&dword_181A37000, v15, v30, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v29);
  if (v14)
  {
    goto LABEL_76;
  }

LABEL_6:

  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)) && gLogDatapath == 1)
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v19 = gconnection_groupLogObj;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v21 = *(v20 + 176);
      count = *(v20 + 112);
      if (count)
      {
        count = _nw_array_get_count(count);
        v23 = *(*(a1 + 32) + 112);
      }

      else
      {
        v23 = 0;
      }

      *buf = 136446978;
      v41 = "nw_connection_group_handle_connection_state_changed_block_invoke";
      v42 = 1024;
      *v43 = v21;
      *&v43[4] = 2048;
      *&v43[6] = count;
      v44 = 2112;
      v45 = v23;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] now has %zu active connections: %@", buf, 0x26u);
    }
  }

  if (nw_array_is_empty(*(*(a1 + 32) + 112)))
  {
    v9 = *(a1 + 32);
    if (*(v9 + 198) < 0)
    {
      if (!nw_parameters_get_logging_disabled(*(v9 + 56)) && gLogDatapath == 1)
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v34 = gconnection_groupLogObj;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v35 = *(*(a1 + 32) + 176);
          *buf = 136446466;
          v41 = "nw_connection_group_handle_connection_state_changed_block_invoke";
          v42 = 1024;
          *v43 = v35;
          _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] now has no active connections, cancelling group", buf, 0x12u);
        }
      }

      nw_connection_group_final_cleanup_locked(*(a1 + 32));
    }

    else
    {
      v10 = *(v9 + 64);
      if (v10)
      {
        v11 = v10;
        v12 = v11[2] == 2;

        if (v12)
        {
          if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)) && gLogDatapath == 1)
          {
            if (__nwlog_connection_group_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
            }

            v36 = gconnection_groupLogObj;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              v37 = *(*(a1 + 32) + 176);
              *buf = 136446466;
              v41 = "nw_connection_group_handle_connection_state_changed_block_invoke";
              v42 = 1024;
              *v43 = v37;
              _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] now has no active connections, going into failed state", buf, 0x12u);
            }
          }

          nw_connection_group_set_state_locked(*(a1 + 32), 3, 0);
        }
      }
    }
  }
}

void nw_connection_group_final_cleanup_locked(NWConcrete_nw_connection_group *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (!nw_parameters_get_logging_disabled(*(v1 + 7)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v3 = gconnection_groupLogObj;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(v2 + 44);
        *buf = 136446466;
        v21 = "nw_connection_group_final_cleanup_locked";
        v22 = 1024;
        LODWORD(v23) = v4;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s [G%u] final group cleanup", buf, 0x12u);
      }
    }

    nw_connection_group_set_state_locked(v2, 4, 0);
    v5 = *(v2 + 4);
    *(v2 + 4) = 0;

    v6 = *(v2 + 18);
    *(v2 + 18) = 0;

    v7 = *(v2 + 19);
    *(v2 + 19) = 0;

    v8 = *(v2 + 1);
    *(v2 + 1) = 0;

    v9 = *(v2 + 3);
    *(v2 + 3) = 0;

    goto LABEL_9;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_connection_group_final_cleanup_locked";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v11, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_connection_group_final_cleanup_locked";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v21 = "nw_connection_group_final_cleanup_locked";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_connection_group_final_cleanup_locked";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_connection_group_final_cleanup_locked";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v11)
  {
    free(v11);
  }

LABEL_9:
}

void nw_connection_group_set_state_locked(void *a1, signed int a2, void *a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v62 = __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_connection_group_set_state_locked";
    v29 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (__nwlog_fault(v29, &type, &v73))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v63 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v76 = "nw_connection_group_set_state_locked";
          _os_log_impl(&dword_181A37000, v30, v63, "%{public}s called with null group", buf, 0xCu);
        }

LABEL_91:

        goto LABEL_92;
      }

      if (v73 != 1)
      {
        v30 = __nwlog_obj();
        v67 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v76 = "nw_connection_group_set_state_locked";
          _os_log_impl(&dword_181A37000, v30, v67, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_91;
      }

      backtrace_string = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v65 = type;
      v66 = os_log_type_enabled(v30, type);
      if (!backtrace_string)
      {
        if (v66)
        {
          *buf = 136446210;
          v76 = "nw_connection_group_set_state_locked";
          _os_log_impl(&dword_181A37000, v30, v65, "%{public}s called with null group, no backtrace", buf, 0xCu);
        }

        goto LABEL_91;
      }

      if (v66)
      {
        *buf = 136446466;
        v76 = "nw_connection_group_set_state_locked";
        v77 = 2082;
        *v78 = backtrace_string;
        _os_log_impl(&dword_181A37000, v30, v65, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_92:
    if (!v29)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v8 = *(v5 + 10);
  if (v8 == a2 && v5[6] == v6)
  {
    if (!nw_parameters_get_logging_disabled(v5[7]))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v9 = gconnection_groupLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(v5 + 44);
        v25 = *(v5 + 10);
        if (v25 > 4)
        {
          v26 = "<unknown>";
        }

        else
        {
          v26 = off_1E6A2E220[v25];
        }

        v56 = v5[6];
        v57 = off_1E6A2E220[a2];
        *buf = 136447490;
        v76 = "nw_connection_group_set_state_locked";
        v77 = 1024;
        *v78 = v24;
        *&v78[4] = 2082;
        *&v78[6] = v26;
        v79 = 2114;
        v80 = v56;
        v81 = 2082;
        v82 = v57;
        v83 = 2114;
        v84 = v7;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Ignoring state transition from (%{public}s, error: %{public}@) -> (%{public}s, error: %{public}@)", buf, 0x3Au);
      }

      goto LABEL_73;
    }

    goto LABEL_94;
  }

  if (v8 == 4)
  {
    if (!nw_parameters_get_logging_disabled(v5[7]))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v9 = gconnection_groupLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(v5 + 44);
        v11 = *(v5 + 10);
        if (v11 > 4)
        {
          v12 = "<unknown>";
        }

        else
        {
          v12 = off_1E6A2E220[v11];
        }

        v27 = off_1E6A2E220[a2];
        *buf = 136447234;
        v76 = "nw_connection_group_set_state_locked";
        v77 = 1024;
        *v78 = v10;
        *&v78[4] = 2082;
        *&v78[6] = v12;
        v79 = 2082;
        v80 = v27;
        v81 = 2114;
        v82 = v7;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Ignoring state transition from %{public}s -> %{public}s (error %{public}@) while cancelled", buf, 0x30u);
      }

LABEL_73:

      goto LABEL_94;
    }

    goto LABEL_94;
  }

  if (v6 && !nw_parameters_get_logging_disabled(v5[7]))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v13 = gconnection_groupLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v5 + 44);
      *buf = 136446722;
      v76 = "nw_connection_group_set_state_locked";
      v77 = 1024;
      *v78 = v14;
      *&v78[4] = 2112;
      *&v78[6] = v7;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s [G%u] failed (error %@)", buf, 0x1Cu);
    }
  }

  v15 = v5[7];
  if (*(v5 + 10) > a2)
  {
    if (nw_parameters_get_logging_disabled(v15))
    {
      goto LABEL_94;
    }

    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v16 = gconnection_groupLogObj;
    v17 = *(v5 + 44);
    v18 = *(v5 + 10);
    if (v18 > 4)
    {
      v19 = "<unknown>";
    }

    else
    {
      v19 = off_1E6A2E220[v18];
    }

    v28 = off_1E6A2E220[a2];
    *buf = 136447234;
    v76 = "nw_connection_group_set_state_locked";
    v77 = 1024;
    *v78 = v17;
    *&v78[4] = 2082;
    *&v78[6] = v19;
    v79 = 2082;
    v80 = v28;
    v81 = 2114;
    v82 = v7;
    v29 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v29, &type, &v73))
    {
      goto LABEL_92;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v30 = gconnection_groupLogObj;
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        v32 = *(v5 + 44);
        v33 = *(v5 + 10);
        if (v33 > 4)
        {
          v34 = "<unknown>";
        }

        else
        {
          v34 = off_1E6A2E220[v33];
        }

        *buf = 136447234;
        v76 = "nw_connection_group_set_state_locked";
        v77 = 1024;
        *v78 = v32;
        *&v78[4] = 2082;
        *&v78[6] = v34;
        v79 = 2082;
        v80 = v28;
        v81 = 2114;
        v82 = v7;
        _os_log_impl(&dword_181A37000, v30, v31, "%{public}s [G%u] invalid state transition %{public}s -> %{public}s (error %{public}@)", buf, 0x30u);
      }
    }

    else if (v73 == 1)
    {
      v35 = __nw_create_backtrace_string();
      if (v35)
      {
        v36 = v35;
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v37 = gconnection_groupLogObj;
        v38 = type;
        if (os_log_type_enabled(v37, type))
        {
          v39 = *(v5 + 44);
          v40 = *(v5 + 10);
          if (v40 > 4)
          {
            v41 = "<unknown>";
          }

          else
          {
            v41 = off_1E6A2E220[v40];
          }

          *buf = 136447490;
          v76 = "nw_connection_group_set_state_locked";
          v77 = 1024;
          *v78 = v39;
          *&v78[4] = 2082;
          *&v78[6] = v41;
          v79 = 2082;
          v80 = v28;
          v81 = 2114;
          v82 = v7;
          v83 = 2082;
          v84 = v36;
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s [G%u] invalid state transition %{public}s -> %{public}s (error %{public}@), dumping backtrace:%{public}s", buf, 0x3Au);
        }

        free(v36);
        if (!v29)
        {
          goto LABEL_94;
        }

LABEL_93:
        free(v29);
        goto LABEL_94;
      }

      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v30 = gconnection_groupLogObj;
      v58 = type;
      if (os_log_type_enabled(v30, type))
      {
        v59 = *(v5 + 44);
        v60 = *(v5 + 10);
        if (v60 > 4)
        {
          v61 = "<unknown>";
        }

        else
        {
          v61 = off_1E6A2E220[v60];
        }

        *buf = 136447234;
        v76 = "nw_connection_group_set_state_locked";
        v77 = 1024;
        *v78 = v59;
        *&v78[4] = 2082;
        *&v78[6] = v61;
        v79 = 2082;
        v80 = v28;
        v81 = 2114;
        v82 = v7;
        _os_log_impl(&dword_181A37000, v30, v58, "%{public}s [G%u] invalid state transition %{public}s -> %{public}s (error %{public}@), no backtrace", buf, 0x30u);
      }
    }

    else
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v30 = gconnection_groupLogObj;
      v52 = type;
      if (os_log_type_enabled(v30, type))
      {
        v53 = *(v5 + 44);
        v54 = *(v5 + 10);
        if (v54 > 4)
        {
          v55 = "<unknown>";
        }

        else
        {
          v55 = off_1E6A2E220[v54];
        }

        *buf = 136447234;
        v76 = "nw_connection_group_set_state_locked";
        v77 = 1024;
        *v78 = v53;
        *&v78[4] = 2082;
        *&v78[6] = v55;
        v79 = 2082;
        v80 = v28;
        v81 = 2114;
        v82 = v7;
        _os_log_impl(&dword_181A37000, v30, v52, "%{public}s [G%u] invalid state transition %{public}s -> %{public}s (error %{public}@), backtrace limit exceeded", buf, 0x30u);
      }
    }

    goto LABEL_91;
  }

  if (!nw_parameters_get_logging_disabled(v15))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v20 = gconnection_groupLogObj;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(v5 + 44);
      v22 = *(v5 + 10);
      if (v22 > 4)
      {
        v23 = "<unknown>";
      }

      else
      {
        v23 = off_1E6A2E220[v22];
      }

      v42 = off_1E6A2E220[a2];
      *buf = 136447234;
      v76 = "nw_connection_group_set_state_locked";
      v77 = 1024;
      *v78 = v21;
      *&v78[4] = 2082;
      *&v78[6] = v23;
      v79 = 2082;
      v80 = v42;
      v81 = 2114;
      v82 = v7;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s [G%u] state changed: %{public}s -> %{public}s (error %{public}@)", buf, 0x30u);
    }
  }

  *(v5 + 10) = a2;
  objc_storeStrong(v5 + 6, a3);
  v43 = v5[4];
  if (v43 && v5[1])
  {
    v44 = _Block_copy(v43);
    v45 = v5[1];
    v46 = *(v5 + 4);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL36nw_connection_group_set_state_lockedP30NWConcrete_nw_connection_group27nw_connection_group_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke;
    block[3] = &unk_1E6A36198;
    v69 = v5;
    v72 = a2;
    v70 = v7;
    v71 = v44;
    v47 = v45;
    v48 = v44;
    v49 = dispatch_block_create_with_qos_class(0, v46, 0, block);
    dispatch_async(v47, v49);
  }

  else if (!nw_parameters_get_logging_disabled(v5[7]))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v9 = gconnection_groupLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v50 = *(v5 + 44);
      v51 = off_1E6A2E220[a2];
      *buf = 136446978;
      v76 = "nw_connection_group_set_state_locked";
      v77 = 1024;
      *v78 = v50;
      *&v78[4] = 2080;
      *&v78[6] = v51;
      v79 = 2112;
      v80 = v7;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] not delivering state %s, error %@ since no handler/queue is set", buf, 0x26u);
    }

    goto LABEL_73;
  }

LABEL_94:
}

uint64_t ___ZL36nw_connection_group_set_state_lockedP30NWConcrete_nw_connection_group27nw_connection_group_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)) && gLogDatapath == 1)
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v3 = gconnection_groupLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(*(a1 + 32) + 176);
      v5 = *(a1 + 56);
      if (v5 > 4)
      {
        v6 = "<unknown>";
      }

      else
      {
        v6 = off_1E6A2E220[v5];
      }

      v7 = *(a1 + 40);
      v8 = 136446978;
      v9 = "nw_connection_group_set_state_locked_block_invoke";
      v10 = 1024;
      v11 = v4;
      v12 = 2080;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] delivering state %s, error %@", &v8, 0x26u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t __Block_byref_object_copy__9201(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL38nw_connection_group_read_on_connectionP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke_151(void *a1)
{
  v2 = _Block_copy(*(a1[4] + 144));
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1[4] + 8);
  v6 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v6, v5);
}

void ___ZL38nw_connection_group_read_on_connectionP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5 = v2 == &__block_literal_global_6_44667 || v2 == &__block_literal_global_44658 || v2 == &__block_literal_global_8_44676 || v2 == &__block_literal_global_10_44685;
  if (!v5 || *(a1 + 40))
  {
    if (!nw_parameters_get_logging_disabled(*(*(a1 + 48) + 56)) && gLogDatapath == 1)
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v12 = gconnection_groupLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(*(a1 + 48) + 176);
        v14 = *(a1 + 32);
        identifier = nw_content_context_get_identifier(v14);
        v16 = *(a1 + 40);
        if (v16)
        {
          size = dispatch_data_get_size(*(a1 + 40));
        }

        else
        {
          size = 0;
        }

        v18 = *(a1 + 64);
        v21 = "nw_connection_group_read_on_connection_block_invoke_2";
        v20 = 136447746;
        v22 = 1024;
        if (v18)
        {
          v19 = "true";
        }

        else
        {
          v19 = "false";
        }

        v23 = v13;
        v24 = 2048;
        v25 = v14;
        v26 = 2080;
        v27 = identifier;
        v28 = 2048;
        v29 = v16;
        v30 = 2048;
        v31 = size;
        v32 = 2080;
        v33 = v19;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] calling receive handler with context (%p: %s), content (%p: %zu bytes), complete %s", &v20, 0x44u);
      }
    }

    (*(*(*(*(a1 + 56) + 8) + 40) + 16))(*(*(*(a1 + 56) + 8) + 40), *(a1 + 40));
  }

  else if (!nw_parameters_get_logging_disabled(*(*(a1 + 48) + 56)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v6 = gconnection_groupLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(a1 + 48) + 176);
      v8 = *(a1 + 32);
      v9 = nw_content_context_get_identifier(v8);
      v10 = *(a1 + 64);
      v21 = "nw_connection_group_read_on_connection_block_invoke";
      v22 = 1024;
      v20 = 136447234;
      if (v10)
      {
        v11 = "true";
      }

      else
      {
        v11 = "false";
      }

      v23 = v7;
      v24 = 2048;
      v25 = v8;
      v26 = 2080;
      v27 = v9;
      v28 = 2080;
      v29 = v11;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [G%u] not calling receive handler with context (%p: %s), complete %s", &v20, 0x30u);
    }
  }
}

void nw_connection_group_touch_connection(NWConcrete_nw_connection_group *a1, NWConcrete_nw_connection *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_connection_group_touch_connection";
    v8 = _os_log_send_and_compose_impl();

    v25 = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v8, &v25, &v24))
    {
      goto LABEL_38;
    }

    if (v25 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v25;
      if (os_log_type_enabled(v9, v25))
      {
        *buf = 136446210;
        v27 = "nw_connection_group_touch_connection";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = v25;
      v15 = os_log_type_enabled(v9, v25);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v27 = "nw_connection_group_touch_connection";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v8)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v8);
        goto LABEL_4;
      }

      if (v15)
      {
        *buf = 136446210;
        v27 = "nw_connection_group_touch_connection";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = v25;
      if (os_log_type_enabled(v9, v25))
      {
        *buf = 136446210;
        v27 = "nw_connection_group_touch_connection";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL36nw_connection_group_touch_connectionP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke;
    aBlock[3] = &unk_1E6A3D760;
    v22 = v3;
    v23 = v5;
    v6 = _Block_copy(aBlock);
    os_unfair_lock_lock(v3 + 45);
    v6[2](v6);
    os_unfair_lock_unlock(v3 + 45);

    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_connection_group_touch_connection";
  v8 = _os_log_send_and_compose_impl();

  v25 = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v8, &v25, &v24))
  {
    goto LABEL_38;
  }

  if (v25 == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = v25;
    if (os_log_type_enabled(v9, v25))
    {
      *buf = 136446210;
      v27 = "nw_connection_group_touch_connection";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v24 != 1)
  {
    v9 = __nwlog_obj();
    v20 = v25;
    if (os_log_type_enabled(v9, v25))
    {
      *buf = 136446210;
      v27 = "nw_connection_group_touch_connection";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v17 = v25;
  v18 = os_log_type_enabled(v9, v25);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v27 = "nw_connection_group_touch_connection";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null connection, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v18)
  {
    *buf = 136446466;
    v27 = "nw_connection_group_touch_connection";
    v28 = 2082;
    v29 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void ___ZL36nw_connection_group_touch_connectionP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (nw_array_remove_object(*(*(a1 + 32) + 112), *(a1 + 40)))
  {
    if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v2 = gconnection_groupLogObj;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = *(a1 + 40);
        v4 = *(*(a1 + 32) + 176);
        v5 = 136446722;
        v6 = "nw_connection_group_touch_connection_block_invoke";
        v7 = 1024;
        v8 = v4;
        v9 = 2112;
        v10 = v3;
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] touching connection %@", &v5, 0x1Cu);
      }
    }

    nw_array_insert_object_at_index(*(*(a1 + 32) + 112), *(a1 + 40), 0);
  }
}

void nw_connection_group_create_listener_from_connection_locked(NWConcrete_nw_connection_group *a1, NWConcrete_nw_connection *a2)
{
  v151 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v65 = __nwlog_obj();
    *handler = 136446210;
    *&handler[4] = "nw_connection_group_create_listener_from_connection_locked";
    v66 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type[0] = 0;
    if (!__nwlog_fault(v66, buf, type))
    {
      goto LABEL_163;
    }

    if (buf[0] == 17)
    {
      v67 = __nwlog_obj();
      v68 = buf[0];
      if (os_log_type_enabled(v67, buf[0]))
      {
        *handler = 136446210;
        *&handler[4] = "nw_connection_group_create_listener_from_connection_locked";
        _os_log_impl(&dword_181A37000, v67, v68, "%{public}s called with null group", handler, 0xCu);
      }
    }

    else if (type[0] == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v67 = __nwlog_obj();
      v74 = buf[0];
      v75 = os_log_type_enabled(v67, buf[0]);
      if (backtrace_string)
      {
        if (v75)
        {
          *handler = 136446466;
          *&handler[4] = "nw_connection_group_create_listener_from_connection_locked";
          *&handler[12] = 2082;
          *&handler[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v67, v74, "%{public}s called with null group, dumping backtrace:%{public}s", handler, 0x16u);
        }

        free(backtrace_string);
LABEL_163:
        if (!v66)
        {
          goto LABEL_60;
        }

        goto LABEL_164;
      }

      if (v75)
      {
        *handler = 136446210;
        *&handler[4] = "nw_connection_group_create_listener_from_connection_locked";
        _os_log_impl(&dword_181A37000, v67, v74, "%{public}s called with null group, no backtrace", handler, 0xCu);
      }
    }

    else
    {
      v67 = __nwlog_obj();
      v79 = buf[0];
      if (os_log_type_enabled(v67, buf[0]))
      {
        *handler = 136446210;
        *&handler[4] = "nw_connection_group_create_listener_from_connection_locked";
        _os_log_impl(&dword_181A37000, v67, v79, "%{public}s called with null group, backtrace limit exceeded", handler, 0xCu);
      }
    }

LABEL_162:

    goto LABEL_163;
  }

  if (!v4)
  {
    v69 = __nwlog_obj();
    *handler = 136446210;
    *&handler[4] = "nw_connection_group_create_listener_from_connection_locked";
    v66 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type[0] = 0;
    if (!__nwlog_fault(v66, buf, type))
    {
      goto LABEL_163;
    }

    if (buf[0] == 17)
    {
      v67 = __nwlog_obj();
      v70 = buf[0];
      if (os_log_type_enabled(v67, buf[0]))
      {
        *handler = 136446210;
        *&handler[4] = "nw_connection_group_create_listener_from_connection_locked";
        _os_log_impl(&dword_181A37000, v67, v70, "%{public}s called with null connection", handler, 0xCu);
      }
    }

    else if (type[0] == 1)
    {
      v76 = __nw_create_backtrace_string();
      v67 = __nwlog_obj();
      v77 = buf[0];
      v78 = os_log_type_enabled(v67, buf[0]);
      if (v76)
      {
        if (v78)
        {
          *handler = 136446466;
          *&handler[4] = "nw_connection_group_create_listener_from_connection_locked";
          *&handler[12] = 2082;
          *&handler[14] = v76;
          _os_log_impl(&dword_181A37000, v67, v77, "%{public}s called with null connection, dumping backtrace:%{public}s", handler, 0x16u);
        }

        free(v76);
        if (!v66)
        {
          goto LABEL_60;
        }

LABEL_164:
        free(v66);
        goto LABEL_60;
      }

      if (v78)
      {
        *handler = 136446210;
        *&handler[4] = "nw_connection_group_create_listener_from_connection_locked";
        _os_log_impl(&dword_181A37000, v67, v77, "%{public}s called with null connection, no backtrace", handler, 0xCu);
      }
    }

    else
    {
      v67 = __nwlog_obj();
      v80 = buf[0];
      if (os_log_type_enabled(v67, buf[0]))
      {
        *handler = 136446210;
        *&handler[4] = "nw_connection_group_create_listener_from_connection_locked";
        _os_log_impl(&dword_181A37000, v67, v80, "%{public}s called with null connection, backtrace limit exceeded", handler, 0xCu);
      }
    }

    goto LABEL_162;
  }

  if (*(v3 + 10) <= 2 && !*(v3 + 12))
  {
    v6 = nw_listener_create_with_connection(&v4->super, *(v3 + 7));
    v7 = *(v3 + 12);
    *(v3 + 12) = v6;

    if (*(v3 + 12))
    {
      nw_connection_group_set_state_locked(v3, 1, 0);
      v8 = v3;
      v9 = v8;
      v10 = *(v3 + 12);
      if (v10)
      {
        v11 = v8;
        v12 = *(v3 + 7);
        v13 = v12;
        if (v12)
        {
          v14 = _nw_parameters_copy_context(v12);
          v15 = v14;
          if (v14)
          {
            v16 = nw_context_copy_workloop(v14);
            if (v16)
            {
              goto LABEL_13;
            }

            if (nw_context_copy_implicit_context::onceToken[0] != -1)
            {
              dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
            }

            v17 = nw_context_copy_implicit_context::implicit_context;
            v16 = nw_context_copy_workloop(v17);

            if (v16)
            {
              goto LABEL_13;
            }

            v92 = __nwlog_obj();
            *handler = 136446210;
            *&handler[4] = "nw_connection_group_copy_workloop";
            v136 = _os_log_send_and_compose_impl();

            buf[0] = 16;
            type[0] = 0;
            if (__nwlog_fault(v136, buf, type))
            {
              if (buf[0] == 17)
              {
                v90 = __nwlog_obj();
                v93 = buf[0];
                if (os_log_type_enabled(v90, buf[0]))
                {
                  *handler = 136446210;
                  *&handler[4] = "nw_connection_group_copy_workloop";
                  _os_log_impl(&dword_181A37000, v90, v93, "%{public}s called with null workloop", handler, 0xCu);
                }

LABEL_176:

                goto LABEL_224;
              }

              if (type[0] != 1)
              {
                v90 = __nwlog_obj();
                v106 = buf[0];
                if (os_log_type_enabled(v90, buf[0]))
                {
                  *handler = 136446210;
                  *&handler[4] = "nw_connection_group_copy_workloop";
                  _os_log_impl(&dword_181A37000, v90, v106, "%{public}s called with null workloop, backtrace limit exceeded", handler, 0xCu);
                }

                goto LABEL_176;
              }

              v99 = __nw_create_backtrace_string();
              v100 = __nwlog_obj();
              listenerb = buf[0];
              v102 = os_log_type_enabled(v100, buf[0]);
              if (v99)
              {
                if (v102)
                {
                  *handler = 136446466;
                  *&handler[4] = "nw_connection_group_copy_workloop";
                  *&handler[12] = 2082;
                  *&handler[14] = v99;
                  _os_log_impl(&dword_181A37000, v100, listenerb, "%{public}s called with null workloop, dumping backtrace:%{public}s", handler, 0x16u);
                }

LABEL_156:

                free(v99);
                goto LABEL_224;
              }

              if (v102)
              {
                *handler = 136446210;
                *&handler[4] = "nw_connection_group_copy_workloop";
                _os_log_impl(&dword_181A37000, v100, listenerb, "%{public}s called with null workloop, no backtrace", handler, 0xCu);
              }

              goto LABEL_223;
            }
          }

          else
          {
            v89 = __nwlog_obj();
            *handler = 136446210;
            *&handler[4] = "nw_connection_group_copy_workloop";
            v136 = _os_log_send_and_compose_impl();

            buf[0] = 16;
            type[0] = 0;
            if (__nwlog_fault(v136, buf, type))
            {
              if (buf[0] == 17)
              {
                v90 = __nwlog_obj();
                v91 = buf[0];
                if (os_log_type_enabled(v90, buf[0]))
                {
                  *handler = 136446210;
                  *&handler[4] = "nw_connection_group_copy_workloop";
                  _os_log_impl(&dword_181A37000, v90, v91, "%{public}s called with null context", handler, 0xCu);
                }

                goto LABEL_176;
              }

              if (type[0] != 1)
              {
                v90 = __nwlog_obj();
                v105 = buf[0];
                if (os_log_type_enabled(v90, buf[0]))
                {
                  *handler = 136446210;
                  *&handler[4] = "nw_connection_group_copy_workloop";
                  _os_log_impl(&dword_181A37000, v90, v105, "%{public}s called with null context, backtrace limit exceeded", handler, 0xCu);
                }

                goto LABEL_176;
              }

              v99 = __nw_create_backtrace_string();
              v100 = __nwlog_obj();
              listenera = buf[0];
              v101 = os_log_type_enabled(v100, buf[0]);
              if (v99)
              {
                if (v101)
                {
                  *handler = 136446466;
                  *&handler[4] = "nw_connection_group_copy_workloop";
                  *&handler[12] = 2082;
                  *&handler[14] = v99;
                  _os_log_impl(&dword_181A37000, v100, listenera, "%{public}s called with null context, dumping backtrace:%{public}s", handler, 0x16u);
                }

                goto LABEL_156;
              }

              if (v101)
              {
                *handler = 136446210;
                *&handler[4] = "nw_connection_group_copy_workloop";
                _os_log_impl(&dword_181A37000, v100, listenera, "%{public}s called with null context, no backtrace", handler, 0xCu);
              }

LABEL_223:
            }
          }

LABEL_224:
          if (v136)
          {
            free(v136);
          }

          v16 = 0;
LABEL_13:

          goto LABEL_14;
        }

        v85 = __nwlog_obj();
        *handler = 136446210;
        *&handler[4] = "nw_connection_group_copy_workloop";
        v86 = _os_log_send_and_compose_impl();

        buf[0] = 16;
        type[0] = 0;
        if (__nwlog_fault(v86, buf, type))
        {
          if (buf[0] == 17)
          {
            v87 = __nwlog_obj();
            v88 = buf[0];
            if (os_log_type_enabled(v87, buf[0]))
            {
              *handler = 136446210;
              *&handler[4] = "nw_connection_group_copy_workloop";
              _os_log_impl(&dword_181A37000, v87, v88, "%{public}s called with null parameters", handler, 0xCu);
            }
          }

          else if (type[0] == 1)
          {
            v97 = __nw_create_backtrace_string();
            v87 = __nwlog_obj();
            v134 = buf[0];
            v98 = os_log_type_enabled(v87, buf[0]);
            if (v97)
            {
              if (v98)
              {
                *handler = 136446466;
                *&handler[4] = "nw_connection_group_copy_workloop";
                *&handler[12] = 2082;
                *&handler[14] = v97;
                _os_log_impl(&dword_181A37000, v87, v134, "%{public}s called with null parameters, dumping backtrace:%{public}s", handler, 0x16u);
              }

              free(v97);
              goto LABEL_215;
            }

            if (v98)
            {
              *handler = 136446210;
              *&handler[4] = "nw_connection_group_copy_workloop";
              _os_log_impl(&dword_181A37000, v87, v134, "%{public}s called with null parameters, no backtrace", handler, 0xCu);
            }
          }

          else
          {
            v87 = __nwlog_obj();
            v104 = buf[0];
            if (os_log_type_enabled(v87, buf[0]))
            {
              *handler = 136446210;
              *&handler[4] = "nw_connection_group_copy_workloop";
              _os_log_impl(&dword_181A37000, v87, v104, "%{public}s called with null parameters, backtrace limit exceeded", handler, 0xCu);
            }
          }
        }

LABEL_215:
        if (v86)
        {
          free(v86);
        }

        v16 = 0;
LABEL_14:

        nw_listener_set_queue(v10, v16);
        v18 = *(v3 + 12);
        *handler = MEMORY[0x1E69E9820];
        *&handler[8] = 3221225472;
        *&handler[16] = ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke;
        *&handler[24] = &unk_1E6A3D820;
        v19 = v11;
        v150 = v19;
        nw_listener_set_state_changed_handler(v18, handler);
        v20 = v19[8];
        if (!v20)
        {
          goto LABEL_39;
        }

        v21 = v20;
        v22 = v21[2] == 1;

        if (v22)
        {
          v23 = *(v3 + 12);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_2;
          v147 = &unk_1E6A2CC20;
          v24 = v19;
          v148 = v24;
          nw_listener_set_new_packet_handler(v23, buf);
          v25 = v24[13];
          if (!v25)
          {
LABEL_23:

LABEL_58:
            *(v19 + 198) |= 8u;
            nw_listener_start(*(v3 + 12));

LABEL_59:
            goto LABEL_60;
          }

          v135 = v24;
          v26 = *(v3 + 7);
          listener = v25;
          v133 = v26;
          if (v26)
          {
            v27 = _nw_parameters_copy_context(v26);
            v28 = v27;
            if (v27)
            {
              v29 = nw_context_copy_workloop(v27);
              if (v29 || (v30 = nw_context_copy_implicit_context(), v29 = nw_context_copy_workloop(v30), v30, v29))
              {
LABEL_21:

LABEL_22:
                nw_listener_set_queue(listener, v29);

                v31 = v24[13];
                *type = MEMORY[0x1E69E9820];
                *&type[8] = 3221225472;
                *&type[16] = ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_3;
                v144 = &unk_1E6A2CC48;
                v32 = v135;
                v145 = v32;
                nw_listener_set_new_connection_handler(v31, type);
                v33 = v24[13];
                *v137 = MEMORY[0x1E69E9820];
                v138 = 3221225472;
                v139 = ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_4;
                v140 = &unk_1E6A3D820;
                v141 = v32;
                nw_listener_set_state_changed_handler(v33, v137);
                nw_listener_start(v24[13]);

                goto LABEL_23;
              }

              v113 = __nwlog_obj();
              *type = 136446210;
              *&type[4] = "nw_connection_group_copy_workloop";
              v129 = _os_log_send_and_compose_impl();

              v137[0] = OS_LOG_TYPE_ERROR;
              v142 = 0;
              if (__nwlog_fault(v129, v137, &v142))
              {
                if (v137[0] == OS_LOG_TYPE_FAULT)
                {
                  v111 = __nwlog_obj();
                  v114 = v137[0];
                  if (os_log_type_enabled(v111, v137[0]))
                  {
                    *type = 136446210;
                    *&type[4] = "nw_connection_group_copy_workloop";
                    _os_log_impl(&dword_181A37000, v111, v114, "%{public}s called with null workloop", type, 0xCu);
                  }

LABEL_235:

                  goto LABEL_248;
                }

                if (v142 != 1)
                {
                  v111 = __nwlog_obj();
                  v124 = v137[0];
                  if (os_log_type_enabled(v111, v137[0]))
                  {
                    *type = 136446210;
                    *&type[4] = "nw_connection_group_copy_workloop";
                    _os_log_impl(&dword_181A37000, v111, v124, "%{public}s called with null workloop, backtrace limit exceeded", type, 0xCu);
                  }

                  goto LABEL_235;
                }

                v118 = __nw_create_backtrace_string();
                v119 = __nwlog_obj();
                v127 = v137[0];
                v121 = os_log_type_enabled(v119, v137[0]);
                if (v118)
                {
                  if (v121)
                  {
                    *type = 136446466;
                    *&type[4] = "nw_connection_group_copy_workloop";
                    *&type[12] = 2082;
                    *&type[14] = v118;
                    _os_log_impl(&dword_181A37000, v119, v127, "%{public}s called with null workloop, dumping backtrace:%{public}s", type, 0x16u);
                  }

LABEL_206:

                  free(v118);
                  goto LABEL_248;
                }

                if (v121)
                {
                  *type = 136446210;
                  *&type[4] = "nw_connection_group_copy_workloop";
                  _os_log_impl(&dword_181A37000, v119, v127, "%{public}s called with null workloop, no backtrace", type, 0xCu);
                }

                goto LABEL_247;
              }
            }

            else
            {
              v110 = __nwlog_obj();
              *type = 136446210;
              *&type[4] = "nw_connection_group_copy_workloop";
              v129 = _os_log_send_and_compose_impl();

              v137[0] = OS_LOG_TYPE_ERROR;
              v142 = 0;
              if (__nwlog_fault(v129, v137, &v142))
              {
                if (v137[0] == OS_LOG_TYPE_FAULT)
                {
                  v111 = __nwlog_obj();
                  v112 = v137[0];
                  if (os_log_type_enabled(v111, v137[0]))
                  {
                    *type = 136446210;
                    *&type[4] = "nw_connection_group_copy_workloop";
                    _os_log_impl(&dword_181A37000, v111, v112, "%{public}s called with null context", type, 0xCu);
                  }

                  goto LABEL_235;
                }

                if (v142 != 1)
                {
                  v111 = __nwlog_obj();
                  v123 = v137[0];
                  if (os_log_type_enabled(v111, v137[0]))
                  {
                    *type = 136446210;
                    *&type[4] = "nw_connection_group_copy_workloop";
                    _os_log_impl(&dword_181A37000, v111, v123, "%{public}s called with null context, backtrace limit exceeded", type, 0xCu);
                  }

                  goto LABEL_235;
                }

                v118 = __nw_create_backtrace_string();
                v119 = __nwlog_obj();
                v126 = v137[0];
                v120 = os_log_type_enabled(v119, v137[0]);
                if (v118)
                {
                  if (v120)
                  {
                    *type = 136446466;
                    *&type[4] = "nw_connection_group_copy_workloop";
                    *&type[12] = 2082;
                    *&type[14] = v118;
                    _os_log_impl(&dword_181A37000, v119, v126, "%{public}s called with null context, dumping backtrace:%{public}s", type, 0x16u);
                  }

                  goto LABEL_206;
                }

                if (v120)
                {
                  *type = 136446210;
                  *&type[4] = "nw_connection_group_copy_workloop";
                  _os_log_impl(&dword_181A37000, v119, v126, "%{public}s called with null context, no backtrace", type, 0xCu);
                }

LABEL_247:
              }
            }

LABEL_248:
            if (v129)
            {
              free(v129);
            }

            v29 = 0;
            goto LABEL_21;
          }

          v107 = __nwlog_obj();
          *type = 136446210;
          *&type[4] = "nw_connection_group_copy_workloop";
          v128 = _os_log_send_and_compose_impl();

          v137[0] = OS_LOG_TYPE_ERROR;
          v142 = 0;
          if (__nwlog_fault(v128, v137, &v142))
          {
            if (v137[0] == OS_LOG_TYPE_FAULT)
            {
              v108 = __nwlog_obj();
              v109 = v137[0];
              if (os_log_type_enabled(v108, v137[0]))
              {
                *type = 136446210;
                *&type[4] = "nw_connection_group_copy_workloop";
                _os_log_impl(&dword_181A37000, v108, v109, "%{public}s called with null parameters", type, 0xCu);
              }
            }

            else
            {
              if (v142 == 1)
              {
                v115 = __nw_create_backtrace_string();
                v116 = __nwlog_obj();
                v125 = v137[0];
                v117 = os_log_type_enabled(v116, v137[0]);
                if (v115)
                {
                  if (v117)
                  {
                    *type = 136446466;
                    *&type[4] = "nw_connection_group_copy_workloop";
                    *&type[12] = 2082;
                    *&type[14] = v115;
                    _os_log_impl(&dword_181A37000, v116, v125, "%{public}s called with null parameters, dumping backtrace:%{public}s", type, 0x16u);
                  }

                  free(v115);
                }

                else
                {
                  if (v117)
                  {
                    *type = 136446210;
                    *&type[4] = "nw_connection_group_copy_workloop";
                    _os_log_impl(&dword_181A37000, v116, v125, "%{public}s called with null parameters, no backtrace", type, 0xCu);
                  }
                }

                goto LABEL_239;
              }

              v108 = __nwlog_obj();
              v122 = v137[0];
              if (os_log_type_enabled(v108, v137[0]))
              {
                *type = 136446210;
                *&type[4] = "nw_connection_group_copy_workloop";
                _os_log_impl(&dword_181A37000, v108, v122, "%{public}s called with null parameters, backtrace limit exceeded", type, 0xCu);
              }
            }
          }

LABEL_239:
          if (v128)
          {
            free(v128);
          }

          v29 = 0;
          goto LABEL_22;
        }

        v38 = v19[8];
        if (!v38)
        {
          goto LABEL_39;
        }

        v39 = v38;
        v40 = v39[2] == 2;

        if (v40)
        {
LABEL_35:
          v42 = *(v3 + 12);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_2_176;
          v147 = &unk_1E6A2CC48;
          v148 = v19;
          nw_listener_set_new_connection_handler(v42, buf);

          goto LABEL_58;
        }

        v41 = v19[8];
        if (!v41)
        {
          goto LABEL_39;
        }

        if (nw_group_descriptor_get_type(v41) == 4)
        {
          goto LABEL_35;
        }

        if (!v19[8])
        {
LABEL_39:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v46 = gLogObj;
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
          v47 = _os_log_send_and_compose_impl();

          type[0] = 16;
          v137[0] = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v47, type, v137))
          {
            goto LABEL_56;
          }

          if (type[0] == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v48 = gLogObj;
            v49 = type[0];
            if (os_log_type_enabled(v48, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
              _os_log_impl(&dword_181A37000, v48, v49, "%{public}s Group descriptor is not set", buf, 0xCu);
            }
          }

          else if (v137[0] == OS_LOG_TYPE_INFO)
          {
            v50 = __nw_create_backtrace_string();
            v48 = __nwlog_obj();
            v51 = type[0];
            v52 = os_log_type_enabled(v48, type[0]);
            if (v50)
            {
              if (v52)
              {
                *buf = 136446466;
                *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
                *&buf[12] = 2082;
                *&buf[14] = v50;
                _os_log_impl(&dword_181A37000, v48, v51, "%{public}s Group descriptor is not set, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v50);
              if (!v47)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            }

            if (v52)
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
              _os_log_impl(&dword_181A37000, v48, v51, "%{public}s Group descriptor is not set, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v48 = gLogObj;
            v53 = type[0];
            if (os_log_type_enabled(v48, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
              _os_log_impl(&dword_181A37000, v48, v53, "%{public}s Group descriptor is not set, backtrace limit exceeded", buf, 0xCu);
            }
          }

          goto LABEL_55;
        }

        v43 = __nwlog_obj();
        v44 = nw_group_descriptor_get_type(v19[8]);
        if (v44 > 4)
        {
          v45 = "unknown";
        }

        else
        {
          v45 = off_1E6A2CCD0[v44];
        }

        *buf = 136446466;
        *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
        *&buf[12] = 2080;
        *&buf[14] = v45;
        v47 = _os_log_send_and_compose_impl();

        type[0] = 16;
        v137[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v47, type, v137))
        {
          if (type[0] == 17)
          {
            v48 = __nwlog_obj();
            v54 = type[0];
            if (os_log_type_enabled(v48, type[0]))
            {
              v55 = nw_group_descriptor_get_type(v19[8]);
              if (v55 > 4)
              {
                v56 = "unknown";
              }

              else
              {
                v56 = off_1E6A2CCD0[v55];
              }

              *buf = 136446466;
              *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
              *&buf[12] = 2080;
              *&buf[14] = v56;
              _os_log_impl(&dword_181A37000, v48, v54, "%{public}s Unsupported group descriptor type: %s", buf, 0x16u);
            }

LABEL_55:

            goto LABEL_56;
          }

          if (v137[0] != OS_LOG_TYPE_INFO)
          {
            v48 = __nwlog_obj();
            v62 = type[0];
            if (os_log_type_enabled(v48, type[0]))
            {
              v63 = nw_group_descriptor_get_type(v19[8]);
              if (v63 > 4)
              {
                v64 = "unknown";
              }

              else
              {
                v64 = off_1E6A2CCD0[v63];
              }

              *buf = 136446466;
              *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
              *&buf[12] = 2080;
              *&buf[14] = v64;
              _os_log_impl(&dword_181A37000, v48, v62, "%{public}s Unsupported group descriptor type: %s, backtrace limit exceeded", buf, 0x16u);
            }

            goto LABEL_55;
          }

          v57 = __nw_create_backtrace_string();
          v48 = __nwlog_obj();
          v58 = type[0];
          v59 = os_log_type_enabled(v48, type[0]);
          if (!v57)
          {
            if (v59)
            {
              v71 = nw_group_descriptor_get_type(v19[8]);
              if (v71 > 4)
              {
                v72 = "unknown";
              }

              else
              {
                v72 = off_1E6A2CCD0[v71];
              }

              *buf = 136446466;
              *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
              *&buf[12] = 2080;
              *&buf[14] = v72;
              _os_log_impl(&dword_181A37000, v48, v58, "%{public}s Unsupported group descriptor type: %s, no backtrace", buf, 0x16u);
            }

            goto LABEL_55;
          }

          if (v59)
          {
            v60 = nw_group_descriptor_get_type(v19[8]);
            if (v60 > 4)
            {
              v61 = "unknown";
            }

            else
            {
              v61 = off_1E6A2CCD0[v60];
            }

            *buf = 136446722;
            *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked";
            *&buf[12] = 2080;
            *&buf[14] = v61;
            *&buf[22] = 2082;
            v147 = v57;
            _os_log_impl(&dword_181A37000, v48, v58, "%{public}s Unsupported group descriptor type: %s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v57);
        }

LABEL_56:
        if (!v47)
        {
          goto LABEL_58;
        }

LABEL_57:
        free(v47);
        goto LABEL_58;
      }

      v81 = __nwlog_obj();
      *handler = 136446210;
      *&handler[4] = "nw_connection_group_set_up_and_start_listener_locked";
      v82 = _os_log_send_and_compose_impl();

      buf[0] = 16;
      type[0] = 0;
      if (__nwlog_fault(v82, buf, type))
      {
        if (buf[0] == 17)
        {
          v83 = __nwlog_obj();
          v84 = buf[0];
          if (os_log_type_enabled(v83, buf[0]))
          {
            *handler = 136446210;
            *&handler[4] = "nw_connection_group_set_up_and_start_listener_locked";
            _os_log_impl(&dword_181A37000, v83, v84, "%{public}s called with null group->listener", handler, 0xCu);
          }
        }

        else if (type[0] == 1)
        {
          v94 = __nw_create_backtrace_string();
          v83 = __nwlog_obj();
          v95 = buf[0];
          v96 = os_log_type_enabled(v83, buf[0]);
          if (v94)
          {
            if (v96)
            {
              *handler = 136446466;
              *&handler[4] = "nw_connection_group_set_up_and_start_listener_locked";
              *&handler[12] = 2082;
              *&handler[14] = v94;
              _os_log_impl(&dword_181A37000, v83, v95, "%{public}s called with null group->listener, dumping backtrace:%{public}s", handler, 0x16u);
            }

            free(v94);
            goto LABEL_210;
          }

          if (v96)
          {
            *handler = 136446210;
            *&handler[4] = "nw_connection_group_set_up_and_start_listener_locked";
            _os_log_impl(&dword_181A37000, v83, v95, "%{public}s called with null group->listener, no backtrace", handler, 0xCu);
          }
        }

        else
        {
          v83 = __nwlog_obj();
          v103 = buf[0];
          if (os_log_type_enabled(v83, buf[0]))
          {
            *handler = 136446210;
            *&handler[4] = "nw_connection_group_set_up_and_start_listener_locked";
            _os_log_impl(&dword_181A37000, v83, v103, "%{public}s called with null group->listener, backtrace limit exceeded", handler, 0xCu);
          }
        }
      }

LABEL_210:
      if (v82)
      {
        free(v82);
      }

      goto LABEL_59;
    }

    if (!nw_parameters_get_logging_disabled(*(v3 + 7)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v34 = gconnection_groupLogObj;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(v3 + 44);
        v36 = *(v3 + 7);
        *handler = 136446722;
        *&handler[4] = "nw_connection_group_create_listener_from_connection_locked";
        *&handler[12] = 1024;
        *&handler[14] = v35;
        *&handler[18] = 2112;
        *&handler[20] = v36;
        _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s [G%u] failed to create listener with parameters %@", handler, 0x1Cu);
      }
    }

    v37 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
    nw_connection_group_set_state_locked(v3, 3, v37);
  }

LABEL_60:
}

void ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke(uint64_t a1, unsigned int a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v5;
  if (v6)
  {
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 3221225472;
    *&aBlock[16] = ___ZL48nw_connection_group_handle_listener_state_changeP30NWConcrete_nw_connection_group19nw_listener_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke;
    v67 = &unk_1E6A3D738;
    v69 = &v60;
    v8 = v6;
    v68 = v8;
    v9 = _Block_copy(aBlock);
    os_unfair_lock_lock(v6 + 45);
    v9[2](v9);
    os_unfair_lock_unlock(v6 + 45);

    v10 = *(v61 + 6);
    if (a2 == 4 && v10 == 4)
    {
      if (!nw_parameters_get_logging_disabled(*&v8[14]._os_unfair_lock_opaque) && gLogDatapath == 1)
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v47 = gconnection_groupLogObj;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          os_unfair_lock_opaque = v8[44]._os_unfair_lock_opaque;
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_handle_listener_state_change";
          *&buf[12] = 1024;
          *&buf[14] = os_unfair_lock_opaque;
          _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] listener cancelled", buf, 0x12u);
        }
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL48nw_connection_group_handle_listener_state_changeP30NWConcrete_nw_connection_group19nw_listener_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_177;
      *&buf[24] = &unk_1E6A3D868;
      *&buf[32] = v8;
      v11 = _Block_copy(buf);
      os_unfair_lock_lock(v6 + 45);
      v11[2](v11);
      os_unfair_lock_unlock(v6 + 45);

      v12 = *&buf[32];
      goto LABEL_7;
    }

    if (v10 == 4)
    {
      if (nw_parameters_get_logging_disabled(*&v8[14]._os_unfair_lock_opaque))
      {
        goto LABEL_8;
      }

      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v12 = gconnection_groupLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        if (a2 > 4)
        {
          v13 = "<unknown>";
        }

        else
        {
          v13 = off_1E6A2E220[a2];
        }

        v19 = v8[44]._os_unfair_lock_opaque;
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_handle_listener_state_change";
        *&buf[12] = 1024;
        *&buf[14] = v19;
        *&buf[18] = 2080;
        *&buf[20] = v13;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] already cancelled, ignoring listener state %s", buf, 0x1Cu);
      }

LABEL_7:

LABEL_8:
      _Block_object_dispose(&v60, 8);
      goto LABEL_9;
    }

    v12 = *&v8[24]._os_unfair_lock_opaque;
    if (!v12)
    {
      if (!nw_parameters_get_logging_disabled(*&v8[14]._os_unfair_lock_opaque))
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v17 = gconnection_groupLogObj;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          if (a2 > 4)
          {
            v18 = "<unknown>";
          }

          else
          {
            v18 = off_1E6A2E220[a2];
          }

          v25 = v8[44]._os_unfair_lock_opaque;
          *buf = 136446722;
          *&buf[4] = "nw_connection_group_handle_listener_state_change";
          *&buf[12] = 1024;
          *&buf[14] = v25;
          *&buf[18] = 2080;
          *&buf[20] = v18;
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] no listener present, ignoring listener state %s", buf, 0x1Cu);
        }
      }

      v12 = 0;
      goto LABEL_7;
    }

    if (a2)
    {
      v14 = *&v8[14]._os_unfair_lock_opaque;
      if (v7)
      {
        if (nw_parameters_get_logging_disabled(v14))
        {
          goto LABEL_50;
        }

        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v15 = gconnection_groupLogObj;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_49;
        }

        if (a2 > 4)
        {
          v16 = "<unknown>";
        }

        else
        {
          v16 = off_1E6A2E220[a2];
        }

        v21 = v8[44]._os_unfair_lock_opaque;
        *buf = 136447234;
        *&buf[4] = "nw_connection_group_handle_listener_state_change";
        *&buf[12] = 1024;
        *&buf[14] = v21;
        *&buf[18] = 2112;
        *&buf[20] = v12;
        *&buf[28] = 2080;
        *&buf[30] = v16;
        *&buf[38] = 2112;
        v65 = v7;
        v22 = "%{public}s [G%u] listener %@ changed to state %s (error %@)";
        v23 = v15;
        v24 = 48;
      }

      else
      {
        if (nw_parameters_get_logging_disabled(v14))
        {
          goto LABEL_50;
        }

        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v15 = gconnection_groupLogObj;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
LABEL_49:

LABEL_50:
          if (a2 > 2)
          {
            if (a2 == 3)
            {
              if (!nw_parameters_get_logging_disabled(*&v8[14]._os_unfair_lock_opaque))
              {
                if (__nwlog_connection_group_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
                }

                v34 = gconnection_groupLogObj;
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v35 = v8[44]._os_unfair_lock_opaque;
                  *buf = 136446466;
                  *&buf[4] = "nw_connection_group_handle_listener_state_change";
                  *&buf[12] = 1024;
                  *&buf[14] = v35;
                  _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s [G%u] listener failed with error ", buf, 0x12u);
                }
              }

              if (v7)
              {
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = ___ZL48nw_connection_group_handle_listener_state_changeP30NWConcrete_nw_connection_group19nw_listener_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_180;
                *&buf[24] = &unk_1E6A3D760;
                *&buf[32] = v8;
                v65 = v7;
                v36 = _Block_copy(buf);
                *type = v36;
                nw_synchronize<void({block_pointer} {__strong})(void)>(v6 + 45, type);
              }

              else
              {
                posix_error = nw_error_create_posix_error(50);
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = ___ZL48nw_connection_group_handle_listener_state_changeP30NWConcrete_nw_connection_group19nw_listener_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_2;
                *&buf[24] = &unk_1E6A3D760;
                *&buf[32] = v8;
                v65 = posix_error;
                v38 = posix_error;
                v39 = _Block_copy(buf);
                *type = v39;
                nw_synchronize<void({block_pointer} {__strong})(void)>(v6 + 45, type);
              }
            }

            else if (a2 == 4)
            {
              if (!nw_parameters_get_logging_disabled(*&v8[14]._os_unfair_lock_opaque))
              {
                if (__nwlog_connection_group_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
                }

                v30 = gconnection_groupLogObj;
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  v31 = v8[44]._os_unfair_lock_opaque;
                  *buf = 136446466;
                  *&buf[4] = "nw_connection_group_handle_listener_state_change";
                  *&buf[12] = 1024;
                  *&buf[14] = v31;
                  _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] Listener cancelled", buf, 0x12u);
                }
              }

              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = ___ZL48nw_connection_group_handle_listener_state_changeP30NWConcrete_nw_connection_group19nw_listener_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_181;
              *&buf[24] = &unk_1E6A3D868;
              *&buf[32] = v8;
              v32 = _Block_copy(buf);
              os_unfair_lock_lock(v6 + 45);
              v32[2](v32);
              os_unfair_lock_unlock(v6 + 45);
            }
          }

          else if (a2 == 1)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL48nw_connection_group_handle_listener_state_changeP30NWConcrete_nw_connection_group19nw_listener_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_178;
            *&buf[24] = &unk_1E6A3D760;
            *&buf[32] = v8;
            v65 = v7;
            v33 = _Block_copy(buf);
            os_unfair_lock_lock(v6 + 45);
            v33[2](v33);
            os_unfair_lock_unlock(v6 + 45);
          }

          else if (a2 == 2)
          {
            if (!nw_parameters_get_logging_disabled(*&v8[14]._os_unfair_lock_opaque))
            {
              if (__nwlog_connection_group_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
              }

              v27 = gconnection_groupLogObj;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = v8[44]._os_unfair_lock_opaque;
                *buf = 136446466;
                *&buf[4] = "nw_connection_group_handle_listener_state_change";
                *&buf[12] = 1024;
                *&buf[14] = v28;
                _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s [G%u] listener ready", buf, 0x12u);
              }
            }

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL48nw_connection_group_handle_listener_state_changeP30NWConcrete_nw_connection_group19nw_listener_state_tPU22objcproto11OS_nw_error8NSObject_block_invoke_179;
            *&buf[24] = &unk_1E6A3D760;
            *&buf[32] = v8;
            v65 = v7;
            v29 = _Block_copy(buf);
            os_unfair_lock_lock(v6 + 45);
            v29[2](v29);
            os_unfair_lock_unlock(v6 + 45);
          }

          goto LABEL_7;
        }

        if (a2 > 4)
        {
          v20 = "<unknown>";
        }

        else
        {
          v20 = off_1E6A2E220[a2];
        }

        v26 = v8[44]._os_unfair_lock_opaque;
        *buf = 136446978;
        *&buf[4] = "nw_connection_group_handle_listener_state_change";
        *&buf[12] = 1024;
        *&buf[14] = v26;
        *&buf[18] = 2112;
        *&buf[20] = v12;
        *&buf[28] = 2080;
        *&buf[30] = v20;
        v22 = "%{public}s [G%u] listener %@ changed to state %s";
        v23 = v15;
        v24 = 38;
      }

      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, v22, buf, v24);
      goto LABEL_49;
    }

    v50 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_handle_listener_state_change";
    v51 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v59 = 0;
    if (__nwlog_fault(v51, type, &v59))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v52 = __nwlog_obj();
        v53 = type[0];
        if (os_log_type_enabled(v52, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_handle_listener_state_change";
          _os_log_impl(&dword_181A37000, v52, v53, "%{public}s called with null listener_state", buf, 0xCu);
        }
      }

      else if (v59 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v52 = __nwlog_obj();
        v55 = type[0];
        v56 = os_log_type_enabled(v52, type[0]);
        if (backtrace_string)
        {
          if (v56)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_group_handle_listener_state_change";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v52, v55, "%{public}s called with null listener_state, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_118;
        }

        if (v56)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_handle_listener_state_change";
          _os_log_impl(&dword_181A37000, v52, v55, "%{public}s called with null listener_state, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v52 = __nwlog_obj();
        v57 = type[0];
        if (os_log_type_enabled(v52, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_group_handle_listener_state_change";
          _os_log_impl(&dword_181A37000, v52, v57, "%{public}s called with null listener_state, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_118:
    if (v51)
    {
      free(v51);
    }

    goto LABEL_7;
  }

  v40 = __nwlog_obj();
  *aBlock = 136446210;
  *&aBlock[4] = "nw_connection_group_handle_listener_state_change";
  v41 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  LOBYTE(v60) = 0;
  if (__nwlog_fault(v41, buf, &v60))
  {
    if (buf[0] == 17)
    {
      v42 = __nwlog_obj();
      v43 = buf[0];
      if (os_log_type_enabled(v42, buf[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_handle_listener_state_change";
        _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null group", aBlock, 0xCu);
      }
    }

    else if (v60 == 1)
    {
      v44 = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v45 = buf[0];
      v46 = os_log_type_enabled(v42, buf[0]);
      if (v44)
      {
        if (v46)
        {
          *aBlock = 136446466;
          *&aBlock[4] = "nw_connection_group_handle_listener_state_change";
          *&aBlock[12] = 2082;
          *&aBlock[14] = v44;
          _os_log_impl(&dword_181A37000, v42, v45, "%{public}s called with null group, dumping backtrace:%{public}s", aBlock, 0x16u);
        }

        free(v44);
        goto LABEL_105;
      }

      if (v46)
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_handle_listener_state_change";
        _os_log_impl(&dword_181A37000, v42, v45, "%{public}s called with null group, no backtrace", aBlock, 0xCu);
      }
    }

    else
    {
      v42 = __nwlog_obj();
      v49 = buf[0];
      if (os_log_type_enabled(v42, buf[0]))
      {
        *aBlock = 136446210;
        *&aBlock[4] = "nw_connection_group_handle_listener_state_change";
        _os_log_impl(&dword_181A37000, v42, v49, "%{public}s called with null group, backtrace limit exceeded", aBlock, 0xCu);
      }
    }
  }

LABEL_105:
  if (v41)
  {
    free(v41);
  }

LABEL_9:
}

void sub_1823C3324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v111 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = *(a1 + 32);
  v17 = v11;
  v89 = v12;
  v18 = v13;
  v88 = v14;
  v19 = v15;
  v20 = v19;
  v87 = v17;
  if (!v16)
  {
    v43 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_handle_incoming_packet";
    v44 = _os_log_send_and_compose_impl();

    LOBYTE(aBlock[0]) = 16;
    LOBYTE(v100) = 0;
    if (!__nwlog_fault(v44, aBlock, &v100))
    {
      goto LABEL_145;
    }

    if (LOBYTE(aBlock[0]) == 17)
    {
      v45 = __nwlog_obj();
      v46 = aBlock[0];
      if (os_log_type_enabled(v45, aBlock[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v100 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v58 = aBlock[0];
      v59 = os_log_type_enabled(v45, aBlock[0]);
      if (backtrace_string)
      {
        if (v59)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_group_handle_incoming_packet";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v45, v58, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_145:
        if (!v44)
        {
          goto LABEL_34;
        }

LABEL_146:
        free(v44);
        goto LABEL_34;
      }

      if (v59)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v58, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v45 = __nwlog_obj();
      v74 = aBlock[0];
      if (os_log_type_enabled(v45, aBlock[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v74, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_144:

    goto LABEL_145;
  }

  if (!v17)
  {
    v47 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_handle_incoming_packet";
    v44 = _os_log_send_and_compose_impl();

    LOBYTE(aBlock[0]) = 16;
    LOBYTE(v100) = 0;
    if (!__nwlog_fault(v44, aBlock, &v100))
    {
      goto LABEL_145;
    }

    if (LOBYTE(aBlock[0]) == 17)
    {
      v45 = __nwlog_obj();
      v48 = aBlock[0];
      if (os_log_type_enabled(v45, aBlock[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v48, "%{public}s called with null source", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v100 != 1)
    {
      v45 = __nwlog_obj();
      v75 = aBlock[0];
      if (os_log_type_enabled(v45, aBlock[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v75, "%{public}s called with null source, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_144;
    }

    v60 = __nw_create_backtrace_string();
    v45 = __nwlog_obj();
    v61 = aBlock[0];
    v62 = os_log_type_enabled(v45, aBlock[0]);
    if (!v60)
    {
      if (v62)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v61, "%{public}s called with null source, no backtrace", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v62)
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_handle_incoming_packet";
      *&buf[12] = 2082;
      *&buf[14] = v60;
      _os_log_impl(&dword_181A37000, v45, v61, "%{public}s called with null source, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_94;
  }

  if (!v89)
  {
    v49 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_handle_incoming_packet";
    v44 = _os_log_send_and_compose_impl();

    LOBYTE(aBlock[0]) = 16;
    LOBYTE(v100) = 0;
    if (!__nwlog_fault(v44, aBlock, &v100))
    {
      goto LABEL_145;
    }

    if (LOBYTE(aBlock[0]) == 17)
    {
      v45 = __nwlog_obj();
      v50 = aBlock[0];
      if (os_log_type_enabled(v45, aBlock[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v50, "%{public}s called with null destination", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v100 != 1)
    {
      v45 = __nwlog_obj();
      v76 = aBlock[0];
      if (os_log_type_enabled(v45, aBlock[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v76, "%{public}s called with null destination, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_144;
    }

    v60 = __nw_create_backtrace_string();
    v45 = __nwlog_obj();
    v63 = aBlock[0];
    v64 = os_log_type_enabled(v45, aBlock[0]);
    if (!v60)
    {
      if (v64)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v63, "%{public}s called with null destination, no backtrace", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v64)
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_handle_incoming_packet";
      *&buf[12] = 2082;
      *&buf[14] = v60;
      _os_log_impl(&dword_181A37000, v45, v63, "%{public}s called with null destination, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_94;
  }

  if (!v18)
  {
    v51 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_handle_incoming_packet";
    v44 = _os_log_send_and_compose_impl();

    LOBYTE(aBlock[0]) = 16;
    LOBYTE(v100) = 0;
    if (!__nwlog_fault(v44, aBlock, &v100))
    {
      goto LABEL_145;
    }

    if (LOBYTE(aBlock[0]) == 17)
    {
      v45 = __nwlog_obj();
      v52 = aBlock[0];
      if (os_log_type_enabled(v45, aBlock[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v52, "%{public}s called with null interface", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v100 != 1)
    {
      v45 = __nwlog_obj();
      v77 = aBlock[0];
      if (os_log_type_enabled(v45, aBlock[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v77, "%{public}s called with null interface, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_144;
    }

    v60 = __nw_create_backtrace_string();
    v45 = __nwlog_obj();
    v65 = aBlock[0];
    v66 = os_log_type_enabled(v45, aBlock[0]);
    if (!v60)
    {
      if (v66)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v65, "%{public}s called with null interface, no backtrace", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v66)
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_handle_incoming_packet";
      *&buf[12] = 2082;
      *&buf[14] = v60;
      _os_log_impl(&dword_181A37000, v45, v65, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_94;
  }

  if (!v88)
  {
    v53 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_handle_incoming_packet";
    v44 = _os_log_send_and_compose_impl();

    LOBYTE(aBlock[0]) = 16;
    LOBYTE(v100) = 0;
    if (!__nwlog_fault(v44, aBlock, &v100))
    {
      goto LABEL_145;
    }

    if (LOBYTE(aBlock[0]) == 17)
    {
      v45 = __nwlog_obj();
      v54 = aBlock[0];
      if (os_log_type_enabled(v45, aBlock[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v54, "%{public}s called with null socket", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v100 != 1)
    {
      v45 = __nwlog_obj();
      v78 = aBlock[0];
      if (os_log_type_enabled(v45, aBlock[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v78, "%{public}s called with null socket, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_144;
    }

    v60 = __nw_create_backtrace_string();
    v45 = __nwlog_obj();
    v67 = aBlock[0];
    v68 = os_log_type_enabled(v45, aBlock[0]);
    if (!v60)
    {
      if (v68)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v67, "%{public}s called with null socket, no backtrace", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v68)
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_handle_incoming_packet";
      *&buf[12] = 2082;
      *&buf[14] = v60;
      _os_log_impl(&dword_181A37000, v45, v67, "%{public}s called with null socket, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_94;
  }

  if (!v19)
  {
    v55 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_group_handle_incoming_packet";
    v44 = _os_log_send_and_compose_impl();

    LOBYTE(aBlock[0]) = 16;
    LOBYTE(v100) = 0;
    if (!__nwlog_fault(v44, aBlock, &v100))
    {
      goto LABEL_145;
    }

    if (LOBYTE(aBlock[0]) == 17)
    {
      v45 = __nwlog_obj();
      v56 = aBlock[0];
      if (os_log_type_enabled(v45, aBlock[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v56, "%{public}s called with null packet", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v100 != 1)
    {
      v45 = __nwlog_obj();
      v79 = aBlock[0];
      if (os_log_type_enabled(v45, aBlock[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v79, "%{public}s called with null packet, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_144;
    }

    v60 = __nw_create_backtrace_string();
    v45 = __nwlog_obj();
    v69 = aBlock[0];
    v70 = os_log_type_enabled(v45, aBlock[0]);
    if (!v60)
    {
      if (v70)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_group_handle_incoming_packet";
        _os_log_impl(&dword_181A37000, v45, v69, "%{public}s called with null packet, no backtrace", buf, 0xCu);
      }

      goto LABEL_144;
    }

    if (v70)
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_group_handle_incoming_packet";
      *&buf[12] = 2082;
      *&buf[14] = v60;
      _os_log_impl(&dword_181A37000, v45, v69, "%{public}s called with null packet, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_94:

    free(v60);
    if (!v44)
    {
      goto LABEL_34;
    }

    goto LABEL_146;
  }

  if (!nw_parameters_get_logging_disabled(*(v16 + 7)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v21 = gconnection_groupLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(v16 + 44);
      *buf = 136447746;
      *&buf[4] = "nw_connection_group_handle_incoming_packet";
      *&buf[12] = 1024;
      *&buf[14] = v22;
      *&buf[18] = 2112;
      *&buf[20] = v87;
      *&buf[28] = 2112;
      *&buf[30] = v89;
      *&buf[38] = 2112;
      v109 = v18;
      *v110 = 2048;
      *&v110[2] = dispatch_data_get_size(v20);
      *&v110[10] = 2112;
      *&v110[12] = v88;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] new incoming packet <%@->%@@%@, %zu bytes> on socket %@", buf, 0x44u);
    }
  }

  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__143;
  v104 = __Block_byref_object_dispose__144;
  v105 = 0;
  v94 = 0;
  v95 = &v94;
  v96 = 0x3032000000;
  v97 = __Block_byref_object_copy__9201;
  v98 = __Block_byref_object_dispose__9202;
  v99 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL42nw_connection_group_handle_incoming_packetP30NWConcrete_nw_connection_groupPU25objcproto14OS_nw_endpoint8NSObjectS3_PU26objcproto15OS_nw_interfaceS1_PU27objcproto16OS_nw_fd_wrapperS1_PU27objcproto16OS_dispatch_dataS1__block_invoke;
  aBlock[3] = &unk_1E6A36148;
  v92 = &v100;
  v23 = v16;
  v91 = v23;
  v93 = &v94;
  v24 = _Block_copy(aBlock);
  os_unfair_lock_lock(v16 + 45);
  v24[2](v24);
  os_unfair_lock_unlock(v16 + 45);

  if (v101[5] && v95[5])
  {
    v25 = nw_content_context_create("multicast packet");
    v26 = v89;
    v27 = v87;
    v28 = v18;
    v29 = v88;
    if (v25)
    {
      if (v25 != &__block_literal_global_10_44685 && v25 != &__block_literal_global_8_44676 && v25 != &__block_literal_global_6_44667 && v25 != &__block_literal_global_44658)
      {
        os_unfair_lock_lock(&v25[14]);
        BYTE6(v25[14].isa) |= 0x20u;
        v30 = _nw_array_create();
        isa = v25[13].isa;
        v25[13].isa = v30;

        v32 = v25[13].isa;
        if (v32)
        {
          _nw_array_append(v32, v26);
          v33 = v25[13].isa;
          if (v33)
          {
            _nw_array_append(v33, v27);
            v34 = v25[13].isa;
            if (v34)
            {
              _nw_array_append(v34, v28);
              v35 = v25[13].isa;
              if (v35)
              {
                _nw_array_append(v35, v29);
              }
            }
          }
        }

        os_unfair_lock_unlock(&v25[14]);
      }

LABEL_26:

      v36 = v95[5];
      v37 = v23[4];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL42nw_connection_group_handle_incoming_packetP30NWConcrete_nw_connection_groupPU25objcproto14OS_nw_endpoint8NSObjectS3_PU26objcproto15OS_nw_interfaceS1_PU27objcproto16OS_nw_fd_wrapperS1_PU27objcproto16OS_dispatch_dataS1__block_invoke_2;
      *&buf[24] = &unk_1E6A33400;
      *&buf[32] = v23;
      v109 = v25;
      *v110 = v20;
      *&v110[8] = &v100;
      v38 = v25;
      v39 = v36;
      v40 = dispatch_block_create_with_qos_class(0, v37, 0, buf);
      dispatch_async(v39, v40);

LABEL_32:
      goto LABEL_33;
    }

    v71 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_content_context_set_multicast_info";
    v86 = _os_log_send_and_compose_impl();

    v107 = OS_LOG_TYPE_ERROR;
    v106 = 0;
    v72 = v86;
    if (!__nwlog_fault(v86, &v107, &v106))
    {
LABEL_151:
      if (v72)
      {
        free(v72);
      }

      goto LABEL_26;
    }

    if (v107 == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      type = v107;
      if (os_log_type_enabled(v73, v107))
      {
        *buf = 136446210;
        *&buf[4] = "nw_content_context_set_multicast_info";
        _os_log_impl(&dword_181A37000, v73, type, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else
    {
      if (v106 == 1)
      {
        v80 = __nw_create_backtrace_string();
        typea = __nwlog_obj();
        v82 = v107;
        v81 = os_log_type_enabled(typea, v107);
        if (v80)
        {
          if (v81)
          {
            *buf = 136446466;
            *&buf[4] = "nw_content_context_set_multicast_info";
            *&buf[12] = 2082;
            *&buf[14] = v80;
            _os_log_impl(&dword_181A37000, typea, v82, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v80);
        }

        else
        {
          if (v81)
          {
            *buf = 136446210;
            *&buf[4] = "nw_content_context_set_multicast_info";
            _os_log_impl(&dword_181A37000, typea, v82, "%{public}s called with null context, no backtrace", buf, 0xCu);
          }
        }

        goto LABEL_150;
      }

      v73 = __nwlog_obj();
      typeb = v107;
      if (os_log_type_enabled(v73, v107))
      {
        *buf = 136446210;
        *&buf[4] = "nw_content_context_set_multicast_info";
        _os_log_impl(&dword_181A37000, v73, typeb, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_150:
    v72 = v86;
    goto LABEL_151;
  }

  if (!nw_parameters_get_logging_disabled(*(v16 + 7)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v38 = gconnection_groupLogObj;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v41 = v23[44];
      size = dispatch_data_get_size(v20);
      *buf = 136447490;
      *&buf[4] = "nw_connection_group_handle_incoming_packet";
      *&buf[12] = 1024;
      *&buf[14] = v41;
      *&buf[18] = 2112;
      *&buf[20] = v87;
      *&buf[28] = 2112;
      *&buf[30] = v89;
      *&buf[38] = 2112;
      v109 = v18;
      *v110 = 2048;
      *&v110[2] = size;
      _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s [G%u] no receive handler or client queue, ignoring incoming packet <%@->%@@%@, %zu bytes>", buf, 0x3Au);
    }

    goto LABEL_32;
  }

LABEL_33:

  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v100, 8);

LABEL_34:
}

void sub_1823C48C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  _Block_object_dispose(&a28, 8);

  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

void ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 == 3)
  {
    if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v14 = gconnection_groupLogObj;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v16 = *(v15 + 176);
        v17 = *(v15 + 104);
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = v16;
        *&buf[18] = 2112;
        *&buf[20] = v17;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_INFO, "%{public}s [G%u] unicast listener %@ failed", buf, 0x1Cu);
      }
    }

    v18 = *(a1 + 32);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_175;
    v20[3] = &unk_1E6A3D760;
    v21 = v18;
    v22 = v5;
    v19 = _Block_copy(v20);
    os_unfair_lock_lock(v18 + 45);
    v19[2](v19);
    os_unfair_lock_unlock(v18 + 45);
  }

  else if (a2 == 2)
  {
    if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)))
    {
      if (__nwlog_connection_group_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
      }

      v6 = gconnection_groupLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 176);
        v9 = *(v7 + 104);
        *buf = 136446722;
        *&buf[4] = "nw_connection_group_set_up_and_start_listener_locked_block_invoke_4";
        *&buf[12] = 1024;
        *&buf[14] = v8;
        *&buf[18] = 2112;
        *&buf[20] = v9;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [G%u] unicast listener %@ ready", buf, 0x1Cu);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__9201;
    v29 = __Block_byref_object_dispose__9202;
    v30 = 0;
    v10 = *(a1 + 32);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_171;
    aBlock[3] = &unk_1E6A3D738;
    v27 = buf;
    v26 = v10;
    v11 = _Block_copy(aBlock);
    os_unfair_lock_lock(v10 + 45);
    v11[2](v11);
    os_unfair_lock_unlock(v10 + 45);

    v12 = *(*&buf[8] + 40);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_2_172;
    v23[3] = &unk_1E6A3CCB8;
    v13 = *(a1 + 32);
    v24 = v13;
    if (v12)
    {
      _nw_array_apply(v12, v23);
      v13 = v24;
    }

    _Block_object_dispose(buf, 8);
  }
}

void sub_1823C4D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  _Block_object_dispose((v26 - 128), 8);

  _Unwind_Resume(a1);
}

void nw_connection_group_handle_incoming_connection(NWConcrete_nw_connection_group *a1, NWConcrete_nw_connection *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    v61 = "nw_connection_group_handle_incoming_connection";
    v35 = _os_log_send_and_compose_impl();

    v59 = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v35, &v59, &v58))
    {
      goto LABEL_78;
    }

    if (v59 == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = v59;
      if (os_log_type_enabled(v36, v59))
      {
        *buf = 136446210;
        v61 = "nw_connection_group_handle_incoming_connection";
        _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null group", buf, 0xCu);
      }
    }

    else if (v58 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v41 = v59;
      v42 = os_log_type_enabled(v36, v59);
      if (backtrace_string)
      {
        if (v42)
        {
          *buf = 136446466;
          v61 = "nw_connection_group_handle_incoming_connection";
          v62 = 2082;
          *v63 = backtrace_string;
          _os_log_impl(&dword_181A37000, v36, v41, "%{public}s called with null group, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_78:
        if (!v35)
        {
          goto LABEL_44;
        }

        goto LABEL_79;
      }

      if (v42)
      {
        *buf = 136446210;
        v61 = "nw_connection_group_handle_incoming_connection";
        _os_log_impl(&dword_181A37000, v36, v41, "%{public}s called with null group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v36 = __nwlog_obj();
      v46 = v59;
      if (os_log_type_enabled(v36, v59))
      {
        *buf = 136446210;
        v61 = "nw_connection_group_handle_incoming_connection";
        _os_log_impl(&dword_181A37000, v36, v46, "%{public}s called with null group, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_77:

    goto LABEL_78;
  }

  if (!v4)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v61 = "nw_connection_group_handle_incoming_connection";
    v35 = _os_log_send_and_compose_impl();

    v59 = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v35, &v59, &v58))
    {
      goto LABEL_78;
    }

    if (v59 == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v39 = v59;
      if (os_log_type_enabled(v36, v59))
      {
        *buf = 136446210;
        v61 = "nw_connection_group_handle_incoming_connection";
        _os_log_impl(&dword_181A37000, v36, v39, "%{public}s called with null new_connection", buf, 0xCu);
      }
    }

    else if (v58 == 1)
    {
      v43 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v44 = v59;
      v45 = os_log_type_enabled(v36, v59);
      if (v43)
      {
        if (v45)
        {
          *buf = 136446466;
          v61 = "nw_connection_group_handle_incoming_connection";
          v62 = 2082;
          *v63 = v43;
          _os_log_impl(&dword_181A37000, v36, v44, "%{public}s called with null new_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v43);
        if (!v35)
        {
          goto LABEL_44;
        }

LABEL_79:
        free(v35);
        goto LABEL_44;
      }

      if (v45)
      {
        *buf = 136446210;
        v61 = "nw_connection_group_handle_incoming_connection";
        _os_log_impl(&dword_181A37000, v36, v44, "%{public}s called with null new_connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v36 = __nwlog_obj();
      v47 = v59;
      if (os_log_type_enabled(v36, v59))
      {
        *buf = 136446210;
        v61 = "nw_connection_group_handle_incoming_connection";
        _os_log_impl(&dword_181A37000, v36, v47, "%{public}s called with null new_connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_77;
  }

  if (!nw_parameters_get_logging_disabled(*(v3 + 7)))
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v6 = gconnection_groupLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v3 + 44);
      *buf = 136446722;
      v61 = "nw_connection_group_handle_incoming_connection";
      v62 = 1024;
      *v63 = v7;
      *&v63[4] = 2112;
      *&v63[6] = v5;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s [G%u] new incoming connection %@", buf, 0x1Cu);
    }
  }

  if (*(v3 + 19))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL46nw_connection_group_handle_incoming_connectionP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke;
    aBlock[3] = &unk_1E6A3D760;
    v8 = v5;
    v56 = v8;
    v9 = v3;
    v57 = v9;
    v10 = _Block_copy(aBlock);
    os_unfair_lock_lock(v3 + 45);
    v10[2](v10);
    os_unfair_lock_unlock(v3 + 45);

    if (*(v9 + 1))
    {
      v11 = _Block_copy(*(v3 + 19));
      v12 = *(v9 + 1);
      v13 = *(v9 + 4);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZL46nw_connection_group_handle_incoming_connectionP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke_2;
      block[3] = &unk_1E6A39AE8;
      v52 = v9;
      v53 = v8;
      v54 = v11;
      v14 = v12;
      v15 = v11;
      v16 = dispatch_block_create_with_qos_class(0, v13, 0, block);
      dispatch_async(v14, v16);

LABEL_43:
      goto LABEL_44;
    }

    if (nw_parameters_get_logging_disabled(*(v3 + 7)))
    {
      goto LABEL_43;
    }

    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v19 = gconnection_groupLogObj;
    v20 = *(v9 + 44);
    *buf = 136446722;
    v61 = "nw_connection_group_handle_incoming_connection";
    v62 = 1024;
    *v63 = v20;
    *&v63[4] = 2112;
    *&v63[6] = v8;
    v21 = _os_log_send_and_compose_impl();

    v59 = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (__nwlog_fault(v21, &v59, &v58))
    {
      if (v59 == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v22 = gconnection_groupLogObj;
        v23 = v59;
        if (os_log_type_enabled(v22, v59))
        {
          v24 = *(v9 + 44);
          *buf = 136446722;
          v61 = "nw_connection_group_handle_incoming_connection";
          v62 = 1024;
          *v63 = v24;
          *&v63[4] = 2112;
          *&v63[6] = v8;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s [G%u] not delivering connection %@ since no queue is set", buf, 0x1Cu);
        }
      }

      else if (v58 == 1)
      {
        v25 = __nw_create_backtrace_string();
        if (v25)
        {
          v26 = v25;
          if (__nwlog_connection_group_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
          }

          v27 = gconnection_groupLogObj;
          v28 = v59;
          if (os_log_type_enabled(v27, v59))
          {
            v29 = *(v9 + 44);
            *buf = 136446978;
            v61 = "nw_connection_group_handle_incoming_connection";
            v62 = 1024;
            *v63 = v29;
            *&v63[4] = 2112;
            *&v63[6] = v8;
            v64 = 2082;
            v65 = v26;
            _os_log_impl(&dword_181A37000, v27, v28, "%{public}s [G%u] not delivering connection %@ since no queue is set, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(v26);
          if (!v21)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v22 = gconnection_groupLogObj;
        v32 = v59;
        if (os_log_type_enabled(v22, v59))
        {
          v33 = *(v9 + 44);
          *buf = 136446722;
          v61 = "nw_connection_group_handle_incoming_connection";
          v62 = 1024;
          *v63 = v33;
          *&v63[4] = 2112;
          *&v63[6] = v8;
          _os_log_impl(&dword_181A37000, v22, v32, "%{public}s [G%u] not delivering connection %@ since no queue is set, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        if (__nwlog_connection_group_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
        }

        v22 = gconnection_groupLogObj;
        v30 = v59;
        if (os_log_type_enabled(v22, v59))
        {
          v31 = *(v9 + 44);
          *buf = 136446722;
          v61 = "nw_connection_group_handle_incoming_connection";
          v62 = 1024;
          *v63 = v31;
          *&v63[4] = 2112;
          *&v63[6] = v8;
          _os_log_impl(&dword_181A37000, v22, v30, "%{public}s [G%u] not delivering connection %@ since no queue is set, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

    if (!v21)
    {
      goto LABEL_43;
    }

LABEL_42:
    free(v21);
    goto LABEL_43;
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = ___ZL46nw_connection_group_handle_incoming_connectionP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke_183;
  v48[3] = &unk_1E6A3D760;
  v49 = v3;
  v17 = v5;
  v50 = v17;
  v18 = _Block_copy(v48);
  os_unfair_lock_lock(v3 + 45);
  v18[2](v18);
  os_unfair_lock_unlock(v3 + 45);

  nw_connection_start(v17);
LABEL_44:
}

uint64_t ___ZL46nw_connection_group_handle_incoming_connectionP30NWConcrete_nw_connection_groupP24NWConcrete_nw_connection_block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!nw_parameters_get_logging_disabled(*(a1[4] + 56)) && gLogDatapath == 1)
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v3 = gconnection_groupLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = a1[5];
      v5 = *(a1[4] + 176);
      v6 = 136446722;
      v7 = "nw_connection_group_handle_incoming_connection_block_invoke_2";
      v8 = 1024;
      v9 = v5;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] delivering connection %@", &v6, 0x1Cu);
    }
  }

  return (*(a1[6] + 16))();
}

void ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_171(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 120));
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  *(*(a1 + 32) + 198) |= 0x20u;
}

uint64_t ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_2_172(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nw_parameters_copy_context(*(*(a1 + 32) + 56));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_3_173;
  v8[3] = &unk_1E6A3D760;
  v9 = *(a1 + 32);
  v6 = v4;
  v10 = v6;
  nw_queue_context_async(v5, v8);

  return 1;
}

void ___ZL52nw_connection_group_set_up_and_start_listener_lockedP30NWConcrete_nw_connection_group_block_invoke_3_173(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)) && gLogDatapath == 1)
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v2 = gconnection_groupLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 40);
      v4 = *(*(a1 + 32) + 176);
      v5 = 136446722;
      v6 = "nw_connection_group_set_up_and_start_listener_locked_block_invoke_3";
      v7 = 1024;
      v8 = v4;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] sending queued request %@ ", &v5, 0x1Cu);
    }
  }

  nw_connection_group_send_message(*(*(a1 + 40) + 8), *(*(a1 + 40) + 32), *(*(a1 + 40) + 24), *(*(a1 + 40) + 40), *(*(a1 + 40) + 16));
}

void ___ZL42nw_connection_group_handle_incoming_packetP30NWConcrete_nw_connection_groupPU25objcproto14OS_nw_endpoint8NSObjectS3_PU26objcproto15OS_nw_interfaceS1_PU27objcproto16OS_nw_fd_wrapperS1_PU27objcproto16OS_dispatch_dataS1__block_invoke(void *a1)
{
  v2 = _Block_copy(*(a1[4] + 144));
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1[4] + 8);
  v6 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v6, v5);
}

uint64_t ___ZL42nw_connection_group_handle_incoming_packetP30NWConcrete_nw_connection_groupPU25objcproto14OS_nw_endpoint8NSObjectS3_PU26objcproto15OS_nw_interfaceS1_PU27objcproto16OS_nw_fd_wrapperS1_PU27objcproto16OS_dispatch_dataS1__block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 56)) && gLogDatapath == 1)
  {
    if (__nwlog_connection_group_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_connection_group_log::onceToken, &__block_literal_global_32);
    }

    v3 = gconnection_groupLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 40);
      v5 = *(*(a1 + 32) + 176);
      identifier = nw_content_context_get_identifier(v4);
      v7 = *(a1 + 48);
      if (v7)
      {
        size = dispatch_data_get_size(*(a1 + 48));
      }

      else
      {
        size = 0;
      }

      v9 = 136447746;
      v10 = "nw_connection_group_handle_incoming_packet_block_invoke_2";
      v11 = 1024;
      v12 = v5;
      v13 = 2048;
      v14 = v4;
      v15 = 2080;
      v16 = identifier;
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = size;
      v21 = 2080;
      v22 = "true";
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s [G%u] calling receive handler with context (%p: %s), content (%p: %zu bytes), complete %s", &v9, 0x44u);
    }
  }

  return (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
}