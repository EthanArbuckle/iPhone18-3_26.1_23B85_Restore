@interface NWConcrete_nw_data_transfer_report
- (NSString)description;
- (NWConcrete_nw_data_transfer_report)init;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation NWConcrete_nw_data_transfer_report

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 51) = 0;
  return self;
}

- (NWConcrete_nw_data_transfer_report)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_data_transfer_report;
  v2 = [(NWConcrete_nw_data_transfer_report *)&v16 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 13) = 1;
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_data_transfer_report init]";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v7, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_data_transfer_report init]";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v18 = "[NWConcrete_nw_data_transfer_report init]";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_data_transfer_report init]";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_data_transfer_report init]";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:

  return v3;
}

- (void)dealloc
{
  v3 = *(self + 51);
  *(self + 51) = 0;

  if (*(self + 11) >= 2u)
  {
    v4 = 0;
    v5 = 352;
    do
    {
      v6 = *(self + 52);
      v7 = *(v6 + v5);
      *(v6 + v5) = 0;

      ++v4;
      v5 += 360;
    }

    while (v4 < (*(self + 11) - 1));
  }

  v8 = *(self + 52);
  if (v8)
  {
    free(v8);
    *(self + 52) = 0;
  }

  v9.receiver = self;
  v9.super_class = NWConcrete_nw_data_transfer_report;
  [(NWConcrete_nw_data_transfer_report *)&v9 dealloc];
}

- (NSString)description
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  duration_milliseconds = nw_data_transfer_report_get_duration_milliseconds(self);
  path_count = nw_data_transfer_report_get_path_count(self);
  theString = Mutable;
  CFStringAppendFormat(Mutable, 0, @"Data Transfer Report:\n\tDuration: %llums\n\tPaths Used: %u", duration_milliseconds, path_count);
  if (*(self + 11) >= 2u)
  {
    v7 = 0;
    do
    {
      v44 = nw_data_transfer_report_copy_path_interface(self, v7);
      v42 = nw_data_transfer_report_copy_path_interface(self, v7);
      if (v42)
      {
        v31 = nw_data_transfer_report_copy_path_interface(self, v7);
        radio_type = nw_interface_get_radio_type(v31);
        v40 = nw_interface_radio_type_to_string(radio_type);
      }

      else
      {
        v40 = "null";
      }

      sent_application_byte_count = nw_data_transfer_report_get_sent_application_byte_count(self, v7);
      received_application_byte_count = nw_data_transfer_report_get_received_application_byte_count(self, v7);
      sent_transport_byte_count = nw_data_transfer_report_get_sent_transport_byte_count(self, v7);
      sent_transport_retransmitted_byte_count = nw_data_transfer_report_get_sent_transport_retransmitted_byte_count(self, v7);
      received_transport_byte_count = nw_data_transfer_report_get_received_transport_byte_count(self, v7);
      received_transport_duplicate_byte_count = nw_data_transfer_report_get_received_transport_duplicate_byte_count(self, v7);
      received_transport_out_of_order_byte_count = nw_data_transfer_report_get_received_transport_out_of_order_byte_count(self, v7);
      transport_smoothed_rtt_milliseconds = nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds(self, v7);
      transport_minimum_rtt_milliseconds = nw_data_transfer_report_get_transport_minimum_rtt_milliseconds(self, v7);
      transport_rtt_variance = nw_data_transfer_report_get_transport_rtt_variance(self, v7);
      sent_ip_packet_count = nw_data_transfer_report_get_sent_ip_packet_count(self, v7);
      received_ip_packet_count = nw_data_transfer_report_get_received_ip_packet_count(self, v7);
      CFStringAppendFormat(theString, 0, @"\n\t=================\n\tInterface: %@[%s]\n\tApplication Bytes Sent: %llu\n\tApplication Bytes Received: %llu\n\tTransport Bytes Sent: %llu (Retransmitted %llu)\n\tTransport Bytes Received: %llu (Duplicate %llu, Out-of-Order %llu)\n\tTransport RTT: %llums (Minimum %llums, Variance %llums)\n\tIP Packets Sent: %llu\n\tIP Packets Received: %llu", v44, v40, sent_application_byte_count, received_application_byte_count, sent_transport_byte_count, sent_transport_retransmitted_byte_count, received_transport_byte_count, received_transport_duplicate_byte_count, received_transport_out_of_order_byte_count, transport_smoothed_rtt_milliseconds, transport_minimum_rtt_milliseconds, transport_rtt_variance, sent_ip_packet_count, received_ip_packet_count);
      if (v42)
      {
      }

      ++v7;
    }

    while (v7 < *(self + 11));
  }

  else
  {
    v43 = nw_data_transfer_report_copy_path_interface(self, 0xFFFFFFFF);
    v41 = nw_data_transfer_report_copy_path_interface(self, 0xFFFFFFFF);
    if (v41)
    {
      v29 = nw_data_transfer_report_copy_path_interface(self, 0xFFFFFFFF);
      v6 = nw_interface_get_radio_type(v29);
      v39 = nw_interface_radio_type_to_string(v6);
    }

    else
    {
      v39 = "null";
    }

    v38 = nw_data_transfer_report_get_sent_application_byte_count(self, 0xFFFFFFFF);
    v36 = nw_data_transfer_report_get_received_application_byte_count(self, 0xFFFFFFFF);
    v34 = nw_data_transfer_report_get_sent_transport_byte_count(self, 0xFFFFFFFF);
    v32 = nw_data_transfer_report_get_sent_transport_retransmitted_byte_count(self, 0xFFFFFFFF);
    v18 = nw_data_transfer_report_get_received_transport_byte_count(self, 0xFFFFFFFF);
    v19 = nw_data_transfer_report_get_received_transport_duplicate_byte_count(self, 0xFFFFFFFF);
    v20 = nw_data_transfer_report_get_received_transport_out_of_order_byte_count(self, 0xFFFFFFFF);
    v21 = nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds(self, 0xFFFFFFFF);
    v22 = nw_data_transfer_report_get_transport_minimum_rtt_milliseconds(self, 0xFFFFFFFF);
    v23 = nw_data_transfer_report_get_transport_rtt_variance(self, 0xFFFFFFFF);
    transport_congestion_window = nw_data_transfer_report_get_transport_congestion_window(self, 0xFFFFFFFF);
    transport_slow_start_threshold = nw_data_transfer_report_get_transport_slow_start_threshold(self, 0xFFFFFFFF);
    v26 = nw_data_transfer_report_get_sent_ip_packet_count(self, 0xFFFFFFFF);
    v27 = nw_data_transfer_report_get_received_ip_packet_count(self, 0xFFFFFFFF);
    CFStringAppendFormat(theString, 0, @"\n\tInterface: %@[%s]\n\tApplication Bytes Sent: %llu\n\tApplication Bytes Received: %llu\n\tTransport Bytes Sent: %llu (Retransmitted %llu)\n\tTransport Bytes Received: %llu (Duplicate %llu, Out-of-Order %llu)\n\tTransport RTT: %llums (Minimum %llums, Variance %llums)\n\tTransport Congestion Window: %llu\n\tTransport Slow Start Threshold: %llu\n\tIP Packets Sent: %llu\n\tIP Packets Received: %llu", v43, v39, v38, v36, v34, v32, v18, v19, v20, v21, v22, v23, transport_congestion_window, transport_slow_start_threshold, v26, v27);
    if (v41)
    {
    }
  }

  return theString;
}

@end