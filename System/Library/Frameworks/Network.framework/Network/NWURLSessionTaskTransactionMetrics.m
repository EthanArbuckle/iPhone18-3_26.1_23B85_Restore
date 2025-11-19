@interface NWURLSessionTaskTransactionMetrics
- (BOOL)_isUnlistedTracker;
- (BOOL)_usedTFO;
- (BOOL)isCellular;
- (BOOL)isConstrained;
- (BOOL)isExpensive;
- (BOOL)isMultipath;
- (BOOL)isProxyConnection;
- (BOOL)isReusedConnection;
- (NSDate)connectEndDate;
- (NSDate)connectStartDate;
- (NSDate)domainLookupEndDate;
- (NSDate)domainLookupStartDate;
- (NSDate)fetchStartDate;
- (NSDate)requestEndDate;
- (NSDate)requestStartDate;
- (NSDate)responseEndDate;
- (NSDate)responseStartDate;
- (NSDate)secureConnectionEndDate;
- (NSDate)secureConnectionStartDate;
- (NSNumber)localPort;
- (NSNumber)negotiatedTLSCipherSuite;
- (NSNumber)negotiatedTLSProtocolVersion;
- (NSNumber)remotePort;
- (NSString)_interfaceName;
- (NSString)localAddress;
- (NSString)networkProtocolName;
- (NSString)remoteAddress;
- (NSURLRequest)request;
- (NSURLResponse)response;
- (NSUUID)_connectionIdentifier;
- (id)_establishmentReport;
- (id)initWithTransactionMetadata:(void *)a3 clientMetadata:;
- (id)remoteEndpoint;
- (int)_privacyStance;
- (int64_t)countOfRequestBodyBytesBeforeEncoding;
- (int64_t)countOfRequestBodyBytesSent;
- (int64_t)countOfRequestHeaderBytesSent;
- (int64_t)countOfResponseBodyBytesAfterDecoding;
- (int64_t)countOfResponseBodyBytesReceived;
- (int64_t)countOfResponseHeaderBytesReceived;
- (int64_t)domainResolutionProtocol;
- (void)computeConnectionTiming;
@end

@implementation NWURLSessionTaskTransactionMetrics

- (BOOL)_usedTFO
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v3 = connection_metadata;
  if (!connection_metadata)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v4 = connection_metadata;
  v5 = nw_protocol_copy_http_connection_definition_onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  v7 = nw_protocol_metadata_matches_definition(v6, nw_protocol_copy_http_connection_definition_definition);

  if ((v7 & 1) == 0)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_used_tfo";
    v11 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v11, type, &v22))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_used_tfo";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s metadata must be http_connection", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = type[0];
        v16 = os_log_type_enabled(v12, type[0]);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_connection_metadata_used_tfo";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_used_tfo";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_used_tfo";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_29:
    if (v11)
    {
      free(v11);
    }

    v8 = 0;
    goto LABEL_10;
  }

  *type = 0;
  v19 = type;
  v20 = 0x2020000000;
  v21 = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __nw_http_connection_metadata_used_tfo_block_invoke;
  v24 = &unk_1E6A3A858;
  v25 = type;
  if (_nw_protocol_metadata_get_handle(v6))
  {
    (*&buf[16])(buf);
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(type, 8);
LABEL_10:

LABEL_12:
  return v8 & 1;
}

- (BOOL)_isUnlistedTracker
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v3 = connection_metadata;
  if (!connection_metadata)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v4 = connection_metadata;
  v5 = nw_protocol_copy_http_connection_definition_onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  v7 = nw_protocol_metadata_matches_definition(v6, nw_protocol_copy_http_connection_definition_definition);

  if ((v7 & 1) == 0)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_is_unlisted_tracker";
    v11 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v11, type, &v22))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_is_unlisted_tracker";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s metadata must be http_connection", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = type[0];
        v16 = os_log_type_enabled(v12, type[0]);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_connection_metadata_is_unlisted_tracker";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_is_unlisted_tracker";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_is_unlisted_tracker";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_29:
    if (v11)
    {
      free(v11);
    }

    v8 = 0;
    goto LABEL_10;
  }

  *type = 0;
  v19 = type;
  v20 = 0x2020000000;
  v21 = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __nw_http_connection_metadata_is_unlisted_tracker_block_invoke;
  v24 = &unk_1E6A3A858;
  v25 = type;
  if (_nw_protocol_metadata_get_handle(v6))
  {
    (*&buf[16])(buf);
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(type, 8);
LABEL_10:

LABEL_12:
  return v8 & 1;
}

- (id)_establishmentReport
{
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v3 = connection_metadata;
  if (connection_metadata)
  {
    establishment_report = nw_http_connection_metadata_get_establishment_report(connection_metadata);
  }

  else
  {
    establishment_report = 0;
  }

  return establishment_report;
}

- (int)_privacyStance
{
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v3 = connection_metadata;
  if (connection_metadata)
  {
    privacy_stance = nw_http_connection_metadata_get_privacy_stance(connection_metadata);
  }

  else
  {
    privacy_stance = 0;
  }

  return privacy_stance;
}

- (NSUUID)_connectionIdentifier
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v3 = connection_metadata;
  if (connection_metadata)
  {
    v6[0] = 0;
    v6[1] = 0;
    nw_http_connection_metadata_get_uuid(connection_metadata, v6);
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)_interfaceName
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v3 = connection_metadata;
  if (!connection_metadata)
  {
    goto LABEL_30;
  }

  v4 = connection_metadata;
  v5 = nw_protocol_copy_http_connection_definition_onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  v7 = nw_protocol_metadata_matches_definition(v6, nw_protocol_copy_http_connection_definition_definition);

  if ((v7 & 1) == 0)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_interface_name";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v11, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_interface_name";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s metadata must be http_connection", buf, 0xCu);
        }
      }

      else if (v23 == 1)
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
            *&buf[4] = "nw_http_connection_metadata_get_interface_name";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_interface_name";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_interface_name";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_27:
    if (v11)
    {
      free(v11);
    }

    goto LABEL_30;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v26 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v20 = __nw_http_connection_metadata_get_interface_name_block_invoke;
  v21 = &unk_1E6A3A858;
  v22 = buf;
  if (_nw_protocol_metadata_get_handle(v6))
  {
    (v20)(v19);
  }

  v8 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  if (v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    goto LABEL_31;
  }

LABEL_30:
  v9 = 0;
LABEL_31:

  return v9;
}

- (int64_t)domainResolutionProtocol
{
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v3 = connection_metadata;
  if (connection_metadata && (establishment_report = nw_http_connection_metadata_get_establishment_report(connection_metadata)) != 0)
  {
    v5 = establishment_report;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    enumerate_block[0] = MEMORY[0x1E69E9820];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = __62__NWURLSessionTaskTransactionMetrics_domainResolutionProtocol__block_invoke;
    enumerate_block[3] = &unk_1E6A2FF48;
    enumerate_block[4] = &v9;
    nw_establishment_report_enumerate_resolution_reports(establishment_report, enumerate_block);
    v6 = *(v10 + 6);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isMultipath
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v3 = connection_metadata;
  if (!connection_metadata)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v4 = connection_metadata;
  v5 = nw_protocol_copy_http_connection_definition_onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  v7 = nw_protocol_metadata_matches_definition(v6, nw_protocol_copy_http_connection_definition_definition);

  if ((v7 & 1) == 0)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_is_multipath";
    v11 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v11, type, &v22))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_is_multipath";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s metadata must be http_connection", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = type[0];
        v16 = os_log_type_enabled(v12, type[0]);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_connection_metadata_is_multipath";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_is_multipath";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_is_multipath";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_29:
    if (v11)
    {
      free(v11);
    }

    v8 = 0;
    goto LABEL_10;
  }

  *type = 0;
  v19 = type;
  v20 = 0x2020000000;
  v21 = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __nw_http_connection_metadata_is_multipath_block_invoke;
  v24 = &unk_1E6A3A858;
  v25 = type;
  if (_nw_protocol_metadata_get_handle(v6))
  {
    (*&buf[16])(buf);
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(type, 8);
LABEL_10:

LABEL_12:
  return v8 & 1;
}

- (BOOL)isConstrained
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v3 = connection_metadata;
  if (!connection_metadata)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v4 = connection_metadata;
  v5 = nw_protocol_copy_http_connection_definition_onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  v7 = nw_protocol_metadata_matches_definition(v6, nw_protocol_copy_http_connection_definition_definition);

  if ((v7 & 1) == 0)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_is_constrained";
    v11 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v11, type, &v22))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_is_constrained";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s metadata must be http_connection", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = type[0];
        v16 = os_log_type_enabled(v12, type[0]);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_connection_metadata_get_is_constrained";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_is_constrained";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_is_constrained";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_29:
    if (v11)
    {
      free(v11);
    }

    v8 = 0;
    goto LABEL_10;
  }

  *type = 0;
  v19 = type;
  v20 = 0x2020000000;
  v21 = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __nw_http_connection_metadata_get_is_constrained_block_invoke;
  v24 = &unk_1E6A3A858;
  v25 = type;
  if (_nw_protocol_metadata_get_handle(v6))
  {
    (*&buf[16])(buf);
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(type, 8);
LABEL_10:

LABEL_12:
  return v8 & 1;
}

- (BOOL)isExpensive
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v3 = connection_metadata;
  if (!connection_metadata)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v4 = connection_metadata;
  v5 = nw_protocol_copy_http_connection_definition_onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  v7 = nw_protocol_metadata_matches_definition(v6, nw_protocol_copy_http_connection_definition_definition);

  if ((v7 & 1) == 0)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_is_expensive";
    v11 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v11, type, &v22))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_is_expensive";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s metadata must be http_connection", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = type[0];
        v16 = os_log_type_enabled(v12, type[0]);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_connection_metadata_get_is_expensive";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_is_expensive";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_is_expensive";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_29:
    if (v11)
    {
      free(v11);
    }

    v8 = 0;
    goto LABEL_10;
  }

  *type = 0;
  v19 = type;
  v20 = 0x2020000000;
  v21 = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __nw_http_connection_metadata_get_is_expensive_block_invoke;
  v24 = &unk_1E6A3A858;
  v25 = type;
  if (_nw_protocol_metadata_get_handle(v6))
  {
    (*&buf[16])(buf);
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(type, 8);
LABEL_10:

LABEL_12:
  return v8 & 1;
}

- (BOOL)isCellular
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v3 = connection_metadata;
  if (!connection_metadata)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v4 = connection_metadata;
  v5 = nw_protocol_copy_http_connection_definition_onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  v7 = nw_protocol_metadata_matches_definition(v6, nw_protocol_copy_http_connection_definition_definition);

  if ((v7 & 1) == 0)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_is_cellular";
    v11 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v11, type, &v22))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_is_cellular";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s metadata must be http_connection", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = type[0];
        v16 = os_log_type_enabled(v12, type[0]);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_connection_metadata_get_is_cellular";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_is_cellular";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_is_cellular";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_29:
    if (v11)
    {
      free(v11);
    }

    v8 = 0;
    goto LABEL_10;
  }

  *type = 0;
  v19 = type;
  v20 = 0x2020000000;
  v21 = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __nw_http_connection_metadata_get_is_cellular_block_invoke;
  v24 = &unk_1E6A3A858;
  v25 = type;
  if (_nw_protocol_metadata_get_handle(v6))
  {
    (*&buf[16])(buf);
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(type, 8);
LABEL_10:

LABEL_12:
  return v8 & 1;
}

- (NSNumber)negotiatedTLSCipherSuite
{
  v2 = self;
  v31 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v4 = connection_metadata;
  if (!connection_metadata)
  {
    goto LABEL_30;
  }

  v5 = connection_metadata;
  v6 = nw_protocol_copy_http_connection_definition_onceToken;
  v7 = v5;
  if (v6 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  v8 = nw_protocol_metadata_matches_definition(v7, nw_protocol_copy_http_connection_definition_definition);

  if ((v8 & 1) == 0)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_tls_ciphersuite";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v12, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_tls_ciphersuite";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s metadata must be http_connection", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v16 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_connection_metadata_get_tls_ciphersuite";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v17)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_tls_ciphersuite";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_tls_ciphersuite";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_27:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_30;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v30 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = __nw_http_connection_metadata_get_tls_ciphersuite_block_invoke;
  v25 = &unk_1E6A3A858;
  v26 = buf;
  if (_nw_protocol_metadata_get_handle(v7))
  {
    (v24)(v23);
  }

  v9 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  if (!v9)
  {
LABEL_30:
    if (v2)
    {
      clientMetadata = v2->_clientMetadata;
    }

    else
    {
      clientMetadata = 0;
    }

    sec_metadata = nw_http_client_metadata_get_sec_metadata(clientMetadata);
    v21 = sec_metadata;
    if (sec_metadata)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:sec_protocol_metadata_get_negotiated_tls_ciphersuite(sec_metadata)];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_36;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v9];
LABEL_36:

  return v10;
}

- (NSNumber)negotiatedTLSProtocolVersion
{
  v2 = self;
  v31 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v4 = connection_metadata;
  if (!connection_metadata)
  {
    goto LABEL_30;
  }

  v5 = connection_metadata;
  v6 = nw_protocol_copy_http_connection_definition_onceToken;
  v7 = v5;
  if (v6 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  v8 = nw_protocol_metadata_matches_definition(v7, nw_protocol_copy_http_connection_definition_definition);

  if ((v8 & 1) == 0)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_tls_protocol_version";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v12, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_tls_protocol_version";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s metadata must be http_connection", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v16 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_connection_metadata_get_tls_protocol_version";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v17)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_tls_protocol_version";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_tls_protocol_version";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_27:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_30;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v30 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = __nw_http_connection_metadata_get_tls_protocol_version_block_invoke;
  v25 = &unk_1E6A3A858;
  v26 = buf;
  if (_nw_protocol_metadata_get_handle(v7))
  {
    (v24)(v23);
  }

  v9 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  if (!v9)
  {
LABEL_30:
    if (v2)
    {
      clientMetadata = v2->_clientMetadata;
    }

    else
    {
      clientMetadata = 0;
    }

    sec_metadata = nw_http_client_metadata_get_sec_metadata(clientMetadata);
    v21 = sec_metadata;
    if (sec_metadata)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:sec_protocol_metadata_get_negotiated_tls_protocol_version(sec_metadata)];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_36;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v9];
LABEL_36:

  return v10;
}

- (NSNumber)remotePort
{
  v2 = [(NWURLSessionTaskTransactionMetrics *)self remoteEndpoint];
  v3 = v2;
  if (v2 && (v4 = v2, type = _nw_endpoint_get_type(v4), v4, type == 1))
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = v4;
    port = _nw_endpoint_get_port(v7);

    v9 = [v6 numberWithUnsignedShort:port];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)remoteEndpoint
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    connection_metadata = nw_http_transaction_metadata_get_connection_metadata(*(a1 + 104));
    v2 = connection_metadata;
    if (!connection_metadata)
    {
      goto LABEL_6;
    }

    if (nw_http_connection_metadata_get_privacy_stance(connection_metadata) == 2)
    {
      establishment_report = nw_http_connection_metadata_get_establishment_report(v2);
      if (establishment_report)
      {
        v4 = establishment_report;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v27 = __Block_byref_object_copy__28965;
        v28 = __Block_byref_object_dispose__28966;
        v29 = 0;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __52__NWURLSessionTaskTransactionMetrics_remoteEndpoint__block_invoke;
        v19[3] = &unk_1E6A2FF20;
        v19[4] = buf;
        nw_establishment_report_enumerate_proxied_next_hop_endpoints(establishment_report, v19);
        v5 = *(*&buf[8] + 40);
        _Block_object_dispose(buf, 8);

LABEL_14:
        goto LABEL_15;
      }

LABEL_6:
      v5 = 0;
      goto LABEL_14;
    }

    v6 = v2;
    v7 = nw_protocol_copy_http_connection_definition_onceToken;
    v8 = v6;
    if (v7 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
    }

    v9 = nw_protocol_metadata_matches_definition(v8, nw_protocol_copy_http_connection_definition_definition);

    if (v9)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v27 = __Block_byref_object_copy__75915;
      v28 = __Block_byref_object_dispose__75916;
      v29 = 0;
      *type = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __nw_http_connection_metadata_get_remote_endpoint_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle(v8))
      {
        (v22)(type);
      }

      v5 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

LABEL_13:
      goto LABEL_14;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_remote_endpoint";
    v12 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v12, type, &v25))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type[0];
        if (os_log_type_enabled(v13, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_remote_endpoint";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s metadata must be http_connection", buf, 0xCu);
        }
      }

      else if (v25 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v16 = type[0];
        v17 = os_log_type_enabled(v13, type[0]);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_connection_metadata_get_remote_endpoint";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_34;
        }

        if (v17)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_remote_endpoint";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type[0];
        if (os_log_type_enabled(v13, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_remote_endpoint";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_34:
    if (v12)
    {
      free(v12);
    }

    v5 = 0;
    goto LABEL_13;
  }

  v5 = 0;
LABEL_15:

  return v5;
}

- (NSString)remoteAddress
{
  v2 = [(NWURLSessionTaskTransactionMetrics *)self remoteEndpoint];
  v3 = v2;
  if (v2 && (v4 = v2, type = _nw_endpoint_get_type(v4), v4, type == 1))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v4;
    hostname = _nw_endpoint_get_hostname(v7);

    v9 = [v6 stringWithUTF8String:hostname];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSNumber)localPort
{
  if (self && (connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self->_transactionMetadata)) != 0)
  {
    v3 = connection_metadata;
    local_endpoint = nw_http_connection_metadata_get_local_endpoint(connection_metadata);

    if (local_endpoint)
    {
      local_endpoint = local_endpoint;
      type = _nw_endpoint_get_type(local_endpoint);

      if (type == 1)
      {
        v6 = MEMORY[0x1E696AD98];
        v7 = local_endpoint;
        port = _nw_endpoint_get_port(v7);

        v9 = [v6 numberWithUnsignedShort:port];
        local_endpoint = v7;
        goto LABEL_8;
      }
    }
  }

  else
  {
    local_endpoint = 0;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (NSString)localAddress
{
  if (self && (connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self->_transactionMetadata)) != 0)
  {
    v3 = connection_metadata;
    local_endpoint = nw_http_connection_metadata_get_local_endpoint(connection_metadata);

    if (local_endpoint)
    {
      local_endpoint = local_endpoint;
      type = _nw_endpoint_get_type(local_endpoint);

      if (type == 1)
      {
        v6 = MEMORY[0x1E696AEC0];
        v7 = local_endpoint;
        hostname = _nw_endpoint_get_hostname(v7);

        v9 = [v6 stringWithUTF8String:hostname];
        local_endpoint = v7;
        goto LABEL_8;
      }
    }
  }

  else
  {
    local_endpoint = 0;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (int64_t)countOfResponseBodyBytesAfterDecoding
{
  if (self)
  {
    self = self->_transactionMetadata;
  }

  return nw_http_transaction_metadata_get_inbound_body_size(self);
}

- (int64_t)countOfResponseBodyBytesReceived
{
  if (self)
  {
    self = self->_transactionMetadata;
  }

  return nw_http_transaction_metadata_get_inbound_body_transfer_size(self);
}

- (int64_t)countOfResponseHeaderBytesReceived
{
  if (self)
  {
    self = self->_transactionMetadata;
  }

  return nw_http_transaction_metadata_get_inbound_header_size(self);
}

- (int64_t)countOfRequestBodyBytesBeforeEncoding
{
  if (self)
  {
    self = self->_transactionMetadata;
  }

  return nw_http_transaction_metadata_get_outbound_body_size(self);
}

- (int64_t)countOfRequestBodyBytesSent
{
  if (self)
  {
    self = self->_transactionMetadata;
  }

  return nw_http_transaction_metadata_get_outbound_body_transfer_size(self);
}

- (int64_t)countOfRequestHeaderBytesSent
{
  if (self)
  {
    self = self->_transactionMetadata;
  }

  return nw_http_transaction_metadata_get_outbound_header_size(self);
}

- (BOOL)isReusedConnection
{
  v2 = self;
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  if (connection_metadata)
  {
    if (v2)
    {
      transactionMetadata = v2->_transactionMetadata;
    }

    else
    {
      transactionMetadata = 0;
    }

    v5 = nw_http_transaction_metadata_is_first_on_connection(transactionMetadata) ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isProxyConnection
{
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v3 = connection_metadata;
  if (connection_metadata && (establishment_report = nw_http_connection_metadata_get_establishment_report(connection_metadata)) != 0)
  {
    v5 = establishment_report;
    v6 = (v5[84] >> 1) & 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (NSString)networkProtocolName
{
  v2 = self;
  v33 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_transactionMetadata;
  }

  connection_metadata = nw_http_transaction_metadata_get_connection_metadata(self);
  v4 = connection_metadata;
  if (!connection_metadata)
  {
    goto LABEL_30;
  }

  v5 = connection_metadata;
  v6 = nw_protocol_copy_http_connection_definition_onceToken;
  v7 = v5;
  if (v6 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  v8 = nw_protocol_metadata_matches_definition(v7, nw_protocol_copy_http_connection_definition_definition);

  if ((v8 & 1) == 0)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_alpn";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v12, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_alpn";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s metadata must be http_connection", buf, 0xCu);
        }
      }

      else if (v29 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v16 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_connection_metadata_get_alpn";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v17)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_alpn";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_get_alpn";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_27:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_30;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v32 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26 = __nw_http_connection_metadata_get_alpn_block_invoke;
  v27 = &unk_1E6A3A858;
  v28 = buf;
  if (_nw_protocol_metadata_get_handle(v7))
  {
    (v26)(v25);
  }

  v9 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  if (v9)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    goto LABEL_40;
  }

LABEL_30:
  if (v2)
  {
    clientMetadata = v2->_clientMetadata;
  }

  else
  {
    clientMetadata = 0;
  }

  sec_metadata = nw_http_client_metadata_get_sec_metadata(clientMetadata);
  if (sec_metadata)
  {
    v21 = sec_protocol_metadata_copy_negotiated_protocol();
    if (v21)
    {
      v22 = v21;
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];
      free(v22);
    }

    else
    {
      v10 = @"http/1.1";
    }
  }

  else
  {
    v23 = @"http/1.1";
    if (!v4)
    {
      v23 = 0;
    }

    v10 = v23;
  }

LABEL_40:

  return v10;
}

- (NSDate)responseEndDate
{
  v2 = self;
  if (self)
  {
    self = self->_transactionMetadata;
  }

  inbound_message_end_time = nw_http_transaction_metadata_get_inbound_message_end_time(self);
  if (inbound_message_end_time)
  {
    v4 = inbound_message_end_time;
    if (v2)
    {
      clientMetadata = v2->_clientMetadata;
    }

    else
    {
      clientMetadata = 0;
    }

    inbound_message_end_time = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{nw_http_client_metadata_convert_time_to_absolute(clientMetadata, v4)}];
  }

  return inbound_message_end_time;
}

- (NSDate)responseStartDate
{
  v2 = self;
  if (self)
  {
    self = self->_transactionMetadata;
  }

  inbound_message_start_time = nw_http_transaction_metadata_get_inbound_message_start_time(self);
  if (inbound_message_start_time)
  {
    v4 = inbound_message_start_time;
    if (v2)
    {
      clientMetadata = v2->_clientMetadata;
    }

    else
    {
      clientMetadata = 0;
    }

    inbound_message_start_time = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{nw_http_client_metadata_convert_time_to_absolute(clientMetadata, v4)}];
  }

  return inbound_message_start_time;
}

- (NSDate)requestEndDate
{
  v2 = self;
  if (self)
  {
    self = self->_transactionMetadata;
  }

  outbound_message_end_time = nw_http_transaction_metadata_get_outbound_message_end_time(self);
  if (outbound_message_end_time)
  {
    v4 = outbound_message_end_time;
    if (v2)
    {
      clientMetadata = v2->_clientMetadata;
    }

    else
    {
      clientMetadata = 0;
    }

    outbound_message_end_time = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{nw_http_client_metadata_convert_time_to_absolute(clientMetadata, v4)}];
  }

  return outbound_message_end_time;
}

- (NSDate)requestStartDate
{
  v2 = self;
  if (self)
  {
    self = self->_transactionMetadata;
  }

  outbound_message_start_time = nw_http_transaction_metadata_get_outbound_message_start_time(self);
  if (outbound_message_start_time)
  {
    v4 = outbound_message_start_time;
    if (v2)
    {
      clientMetadata = v2->_clientMetadata;
    }

    else
    {
      clientMetadata = 0;
    }

    outbound_message_start_time = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{nw_http_client_metadata_convert_time_to_absolute(clientMetadata, v4)}];
  }

  return outbound_message_start_time;
}

- (NSDate)connectEndDate
{
  v2 = self;
  if (self)
  {
    self = self->_transactionMetadata;
  }

  if (nw_http_transaction_metadata_is_first_on_connection(self) && ([(NWURLSessionTaskTransactionMetrics *)v2 computeConnectionTiming], v2->connectionTiming.valid))
  {
    start_time = nw_http_transaction_metadata_get_start_time(v2->_transactionMetadata);
    if (start_time)
    {
      start_time = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{nw_http_client_metadata_convert_time_to_absolute(v2->_clientMetadata, start_time) + (v2->connectionTiming.connectDurationMS + v2->connectionTiming.connectStartTimeMS) * 0.001}];
    }
  }

  else
  {
    start_time = 0;
  }

  return start_time;
}

- (void)computeConnectionTiming
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 97) & 1) == 0)
  {
    connection_metadata = nw_http_transaction_metadata_get_connection_metadata(*(a1 + 104));
    v3 = connection_metadata;
    if (!connection_metadata)
    {
LABEL_20:

      return;
    }

    establishment_report = nw_http_connection_metadata_get_establishment_report(connection_metadata);
    v5 = establishment_report;
    if (!establishment_report)
    {
LABEL_19:

      goto LABEL_20;
    }

    attempt_started_after_milliseconds = nw_establishment_report_get_attempt_started_after_milliseconds(establishment_report);
    resolution_started_after_milliseconds = nw_establishment_report_get_resolution_started_after_milliseconds(v5);
    flow_started_after_milliseconds = nw_establishment_report_get_flow_started_after_milliseconds(v5);
    *(a1 + 56) = resolution_started_after_milliseconds + attempt_started_after_milliseconds;
    *(a1 + 72) = flow_started_after_milliseconds + attempt_started_after_milliseconds;
    enumerate_block[0] = MEMORY[0x1E69E9820];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = __61__NWURLSessionTaskTransactionMetrics_computeConnectionTiming__block_invoke;
    enumerate_block[3] = &unk_1E6A2FED0;
    enumerate_block[4] = a1;
    nw_establishment_report_enumerate_resolution_reports(v5, enumerate_block);
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__28965;
    v27 = __Block_byref_object_dispose__28966;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__NWURLSessionTaskTransactionMetrics_computeConnectionTiming__block_invoke_1;
    v18[3] = &unk_1E6A2FEF8;
    v18[4] = &v23;
    v18[5] = &v19;
    nw_establishment_report_enumerate_protocols(v5, v18);
    v9 = v24[5];
    if (v9)
    {
      v10 = nw_protocol_boringssl_copy_definition();
      if (nw_protocol_definition_is_equal(v9, v10))
      {
      }

      else
      {
        v11 = v24[5];
        if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
        }

        v12 = nw_protocol_copy_quic_connection_definition_quic_definition;
        is_equal = nw_protocol_definition_is_equal(v11, v12);

        if (!is_equal)
        {
          goto LABEL_12;
        }
      }

      *(a1 + 88) = v20[3];
      *(a1 + 96) = 1;
    }

LABEL_12:
    v14 = nw_establishment_report_get_duration_milliseconds(v5) - *(a1 + 72);
    *(a1 + 80) = v14;
    if (*(a1 + 88) > v14)
    {
      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v15 = gurlLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 80);
        v17 = *(a1 + 88);
        *buf = 134218240;
        v31 = v17;
        v32 = 2048;
        v33 = v16;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "TLS (%llu ms) took longer than connect (%llu ms)", buf, 0x16u);
      }

      *(a1 + 88) = *(a1 + 80);
    }

    *(a1 + 97) = 1;
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);

    goto LABEL_19;
  }
}

uint64_t __61__NWURLSessionTaskTransactionMetrics_computeConnectionTiming__block_invoke_1(uint64_t a1, void *a2, uint64_t a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;

  return 1;
}

- (NSDate)secureConnectionEndDate
{
  v2 = self;
  if (self)
  {
    self = self->_transactionMetadata;
  }

  if (nw_http_transaction_metadata_is_first_on_connection(self) && ([(NWURLSessionTaskTransactionMetrics *)v2 computeConnectionTiming], v2->connectionTiming.valid) && v2->connectionTiming.secure)
  {
    start_time = nw_http_transaction_metadata_get_start_time(v2->_transactionMetadata);
    if (start_time)
    {
      start_time = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{nw_http_client_metadata_convert_time_to_absolute(v2->_clientMetadata, start_time) + (v2->connectionTiming.connectDurationMS + v2->connectionTiming.connectStartTimeMS) * 0.001}];
    }
  }

  else
  {
    start_time = 0;
  }

  return start_time;
}

- (NSDate)secureConnectionStartDate
{
  v2 = self;
  if (self)
  {
    self = self->_transactionMetadata;
  }

  if (nw_http_transaction_metadata_is_first_on_connection(self) && ([(NWURLSessionTaskTransactionMetrics *)v2 computeConnectionTiming], v2->connectionTiming.valid) && v2->connectionTiming.secure)
  {
    start_time = nw_http_transaction_metadata_get_start_time(v2->_transactionMetadata);
    if (start_time)
    {
      start_time = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{nw_http_client_metadata_convert_time_to_absolute(v2->_clientMetadata, start_time) + (v2->connectionTiming.connectDurationMS + v2->connectionTiming.connectStartTimeMS - v2->connectionTiming.secureConnectionDurationMS) * 0.001}];
    }
  }

  else
  {
    start_time = 0;
  }

  return start_time;
}

- (NSDate)connectStartDate
{
  v2 = self;
  if (self)
  {
    self = self->_transactionMetadata;
  }

  if (nw_http_transaction_metadata_is_first_on_connection(self) && ([(NWURLSessionTaskTransactionMetrics *)v2 computeConnectionTiming], v2->connectionTiming.valid))
  {
    start_time = nw_http_transaction_metadata_get_start_time(v2->_transactionMetadata);
    if (start_time)
    {
      start_time = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{nw_http_client_metadata_convert_time_to_absolute(v2->_clientMetadata, start_time) + v2->connectionTiming.connectStartTimeMS * 0.001}];
    }
  }

  else
  {
    start_time = 0;
  }

  return start_time;
}

- (NSDate)domainLookupEndDate
{
  v2 = self;
  if (self)
  {
    self = self->_transactionMetadata;
  }

  if (nw_http_transaction_metadata_is_first_on_connection(self) && ([(NWURLSessionTaskTransactionMetrics *)v2 computeConnectionTiming], v2->connectionTiming.valid))
  {
    start_time = nw_http_transaction_metadata_get_start_time(v2->_transactionMetadata);
    if (start_time)
    {
      start_time = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{nw_http_client_metadata_convert_time_to_absolute(v2->_clientMetadata, start_time) + (v2->connectionTiming.domainLookupDurationMS + v2->connectionTiming.domainLookupStartMS) * 0.001}];
    }
  }

  else
  {
    start_time = 0;
  }

  return start_time;
}

- (NSDate)domainLookupStartDate
{
  v2 = self;
  if (self)
  {
    self = self->_transactionMetadata;
  }

  if (nw_http_transaction_metadata_is_first_on_connection(self) && ([(NWURLSessionTaskTransactionMetrics *)v2 computeConnectionTiming], v2->connectionTiming.valid))
  {
    start_time = nw_http_transaction_metadata_get_start_time(v2->_transactionMetadata);
    if (start_time)
    {
      start_time = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{nw_http_client_metadata_convert_time_to_absolute(v2->_clientMetadata, start_time) + v2->connectionTiming.domainLookupStartMS * 0.001}];
    }
  }

  else
  {
    start_time = 0;
  }

  return start_time;
}

- (NSDate)fetchStartDate
{
  v2 = self;
  if (self)
  {
    self = self->_transactionMetadata;
  }

  start_time = nw_http_transaction_metadata_get_start_time(self);
  if (start_time)
  {
    v4 = start_time;
    if (v2)
    {
      clientMetadata = v2->_clientMetadata;
    }

    else
    {
      clientMetadata = 0;
    }

    start_time = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{nw_http_client_metadata_convert_time_to_absolute(clientMetadata, v4)}];
  }

  return start_time;
}

- (NSURLResponse)response
{
  v43 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = self->_transactionMetadata;
    if (v3)
    {
      v4 = nw_protocol_copy_http_transaction_definition_onceToken;
      v5 = v3;
      if (v4 != -1)
      {
        dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
      }

      v6 = nw_protocol_metadata_matches_definition(v5, nw_protocol_copy_http_transaction_definition_definition);

      if (v6)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v42 = 0;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v36 = __nw_http_transaction_metadata_get_converted_url_response_block_invoke;
        v37 = &unk_1E6A3A858;
        v38 = buf;
        if (_nw_protocol_metadata_get_handle(v5))
        {
          (v36)(v35);
        }

        v7 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);

        if (v7)
        {
          goto LABEL_24;
        }

        goto LABEL_9;
      }

      v19 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_transaction_metadata_get_converted_url_response";
      v20 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v39 = 0;
      if (!__nwlog_fault(v20, &type, &v39))
      {
        goto LABEL_43;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_converted_url_response";
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s metadata must be http_transaction", buf, 0xCu);
        }
      }

      else if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v24 = type;
        v25 = os_log_type_enabled(v21, type);
        if (backtrace_string)
        {
          if (v25)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_transaction_metadata_get_converted_url_response";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v24, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_43;
        }

        if (v25)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_converted_url_response";
          _os_log_impl(&dword_181A37000, v21, v24, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v21 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_converted_url_response";
          _os_log_impl(&dword_181A37000, v21, v26, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
        }
      }

LABEL_43:
      if (v20)
      {
        free(v20);
      }

LABEL_9:
      outbound_message = nw_http_transaction_metadata_get_outbound_message(self->_transactionMetadata);
      transactionMetadata = self->_transactionMetadata;
      goto LABEL_10;
    }
  }

  v27 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_transaction_metadata_get_converted_url_response";
  v28 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (__nwlog_fault(v28, &type, &v39))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_transaction_metadata_get_converted_url_response";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null metadata", buf, 0xCu);
      }

LABEL_61:

      goto LABEL_62;
    }

    if (v39 != 1)
    {
      v29 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_transaction_metadata_get_converted_url_response";
        _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_61;
    }

    v31 = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v32 = type;
    v33 = os_log_type_enabled(v29, type);
    if (!v31)
    {
      if (v33)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_transaction_metadata_get_converted_url_response";
        _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
      }

      goto LABEL_61;
    }

    if (v33)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_transaction_metadata_get_converted_url_response";
      *&buf[12] = 2082;
      *&buf[14] = v31;
      _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v31);
  }

LABEL_62:
  if (v28)
  {
    free(v28);
  }

  if (self)
  {
    goto LABEL_9;
  }

  outbound_message = nw_http_transaction_metadata_get_outbound_message(0);
  transactionMetadata = 0;
LABEL_10:
  inbound_message = nw_http_transaction_metadata_get_inbound_message(transactionMetadata);
  v11 = inbound_message;
  if (outbound_message && inbound_message)
  {
    v12 = nw_http_metadata_copy_request(outbound_message);
    v13 = nw_http_metadata_copy_response(v11);
    v14 = v13;
    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if (v15)
    {
      v7 = 0;
    }

    else
    {
      version = nw_http_metadata_get_version(v11);
      v7 = nw_http_response_copy_url_response(v14, v12, 0, **(&unk_1E6A3DC48 + version));
    }

    if (v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_24:

  return v7;
}

- (NSURLRequest)request
{
  v2 = self;
  v38 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_transactionMetadata;
  }

  outbound_message = nw_http_transaction_metadata_get_outbound_message(self);
  v4 = outbound_message;
  if (outbound_message)
  {
    v5 = nw_http_metadata_copy_request(outbound_message);
    if (v5)
    {
      v6 = v5;
      version = nw_http_metadata_get_version(v4);
      v8 = nw_http_request_copy_url_request(v6, **(&unk_1E6A3DC78 + version), 0);

      goto LABEL_15;
    }
  }

  if (!v2 || (v9 = v2->_clientMetadata) == 0)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_metadata_get_initial_request";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v23, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_get_initial_request";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null metadata", buf, 0xCu);
        }
      }

      else if (v34 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v27 = type;
        v28 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v28)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_client_metadata_get_initial_request";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_53;
        }

        if (v28)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_get_initial_request";
          _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_get_initial_request";
          _os_log_impl(&dword_181A37000, v24, v29, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_53:
    if (v23)
    {
      free(v23);
    }

    v11 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v10 = nw_protocol_copy_http_client_definition_onceToken;
  v11 = v9;
  if (v10 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  v12 = nw_protocol_metadata_matches_definition(v11, nw_protocol_copy_http_client_definition_definition);

  if ((v12 & 1) == 0)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_metadata_get_initial_request";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v15, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_get_initial_request";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s metadata must be http_client", buf, 0xCu);
        }
      }

      else if (v34 == 1)
      {
        v18 = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v19 = type;
        v20 = os_log_type_enabled(v16, type);
        if (v18)
        {
          if (v20)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_client_metadata_get_initial_request";
            *&buf[12] = 2082;
            *&buf[14] = v18;
            _os_log_impl(&dword_181A37000, v16, v19, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v18);
          goto LABEL_34;
        }

        if (v20)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_get_initial_request";
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s metadata must be http_client, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_get_initial_request";
          _os_log_impl(&dword_181A37000, v16, v21, "%{public}s metadata must be http_client, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_34:
    if (v15)
    {
      free(v15);
    }

    v8 = 0;
    goto LABEL_14;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v37 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v31 = __nw_http_client_metadata_get_initial_request_block_invoke;
  v32 = &unk_1E6A3A858;
  v33 = buf;
  if (_nw_protocol_metadata_get_handle(v11))
  {
    (v31)(v30);
  }

  v8 = CFRetain(*(*&buf[8] + 24));
  _Block_object_dispose(buf, 8);
LABEL_14:

LABEL_15:

  return v8;
}

- (id)initWithTransactionMetadata:(void *)a3 clientMetadata:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = NWURLSessionTaskTransactionMetrics;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 13, a2);
      objc_storeStrong(a1 + 14, a3);
    }
  }

  return a1;
}

@end