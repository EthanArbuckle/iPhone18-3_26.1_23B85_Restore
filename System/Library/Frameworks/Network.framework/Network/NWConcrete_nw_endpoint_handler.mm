@interface NWConcrete_nw_endpoint_handler
- (id)initWithEndpoint:(void *)endpoint parameters:(void *)parameters reportCallback:(void *)callback context:(void *)context parent:(unsigned int)parent identifier:(unsigned __int8 *)identifier connection_uuid:;
- (void)dealloc;
@end

@implementation NWConcrete_nw_endpoint_handler

- (void)dealloc
{
  v119 = *MEMORY[0x1E69E9840];
  state = self->state;
  if (state)
  {
    v4 = state == 5;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    goto LABEL_99;
  }

  selfCopy = self;
  v6 = *(selfCopy + 284);

  if ((v6 & 0x40) != 0)
  {
    goto LABEL_99;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v7 = gconnectionLogObj;
  v8 = selfCopy;

  v9 = v8;
  v10 = *(selfCopy + 284);

  if (v10)
  {
    v11 = "dry-run ";
  }

  else
  {
    v11 = "";
  }

  v12 = nw_endpoint_handler_copy_endpoint(v9);
  v13 = v12;
  if (v12)
  {
    logging_description = _nw_endpoint_get_logging_description(v12);
  }

  else
  {
    logging_description = "<NULL>";
  }

  id_str = v8->id_str;

  v15 = v9;
  v16 = v15;
  v17 = self->state;
  if (v17 > 5)
  {
    v18 = "unknown-state";
  }

  else
  {
    v18 = off_1E6A31048[v17];
  }

  v19 = v16;
  v20 = v19;
  mode = v19->mode;
  if (mode > 2)
  {
    if (mode == 3)
    {
      v22 = "proxy";
      goto LABEL_31;
    }

    if (mode != 4)
    {
      if (mode == 5)
      {
        v22 = "transform";
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v22 = "fallback";
  }

  else
  {
    if (!mode)
    {
      v22 = "path";
      goto LABEL_31;
    }

    if (mode != 1)
    {
      if (mode == 2)
      {
        v22 = nw_endpoint_flow_mode_string(v19->mode_handler);
        goto LABEL_31;
      }

LABEL_28:
      v22 = "unknown-mode";
      goto LABEL_31;
    }

    v22 = "resolver";
  }

LABEL_31:

  v97 = v20;
  v23 = v20;
  os_unfair_lock_lock(&v23->lock);
  v24 = v23->current_path;
  os_unfair_lock_unlock(&v23->lock);

  *buf = 136447746;
  v104 = "[NWConcrete_nw_endpoint_handler dealloc]";
  v105 = 2082;
  v106 = id_str;
  v107 = 2082;
  v108 = v11;
  v109 = 2082;
  v110 = logging_description;
  v111 = 2082;
  v112 = v18;
  v113 = 2082;
  v114 = v22;
  v115 = 2114;
  v116 = v24;
  v89 = 72;
  v88 = buf;
  v25 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v101 = 0;
  if (!__nwlog_fault(v25, &type, &v101))
  {
    goto LABEL_97;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v101 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      if (!backtrace_string)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v26 = gconnectionLogObj;
        v51 = type;
        if (os_log_type_enabled(v26, type))
        {
          id_string = nw_endpoint_handler_get_id_string(v23);
          v53 = nw_endpoint_handler_dry_run_string(v23);
          v99 = nw_endpoint_handler_copy_endpoint(v23);
          v54 = nw_endpoint_get_logging_description(v99);
          v55 = nw_endpoint_handler_state_string(v23);
          v56 = nw_endpoint_handler_mode_string(v23);
          v57 = nw_endpoint_handler_copy_current_path(v23);
          *buf = 136447746;
          v104 = "[NWConcrete_nw_endpoint_handler dealloc]";
          v105 = 2082;
          v106 = id_string;
          v107 = 2082;
          v108 = v53;
          v109 = 2082;
          v110 = v54;
          v111 = 2082;
          v112 = v55;
          v113 = 2082;
          v114 = v56;
          v115 = 2114;
          v116 = v57;
          _os_log_impl(&dword_181A37000, v26, v51, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] deallocated in unexpected state, no backtrace", buf, 0x48u);
        }

        goto LABEL_96;
      }

      v35 = backtrace_string;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v36 = gconnectionLogObj;
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
LABEL_126:

        free(v35);
        if (!v25)
        {
          goto LABEL_99;
        }

        goto LABEL_98;
      }

      v38 = v23;

      v39 = v38;
      v40 = (*(selfCopy + 284) & 1) == 0;

      if (v40)
      {
        v41 = "";
      }

      else
      {
        v41 = "dry-run ";
      }

      v42 = nw_endpoint_handler_copy_endpoint(v39);
      v43 = v42;
      v96 = v41;
      if (v42)
      {
        v94 = _nw_endpoint_get_logging_description(v42);
      }

      else
      {
        v94 = "<NULL>";
      }

      v76 = v39;
      v77 = v76;
      v78 = self->state;
      if (v78 > 5)
      {
        v79 = "unknown-state";
      }

      else
      {
        v79 = off_1E6A31048[v78];
      }

      v92 = v79;

      v80 = v77;
      v81 = v80;
      v82 = v97->mode;
      if (v82 > 2)
      {
        switch(v82)
        {
          case 3:
            v83 = "proxy";
            goto LABEL_125;
          case 4:
            v83 = "fallback";
            goto LABEL_125;
          case 5:
            v83 = "transform";
            goto LABEL_125;
        }
      }

      else
      {
        switch(v82)
        {
          case 0:
            v83 = "path";
            goto LABEL_125;
          case 1:
            v83 = "resolver";
            goto LABEL_125;
          case 2:
            v83 = nw_endpoint_flow_mode_string(v80[33]);
LABEL_125:

            v86 = v81;
            os_unfair_lock_lock(&v23->lock);
            v87 = v23->current_path;
            os_unfair_lock_unlock(&v23->lock);

            *buf = 136448002;
            v104 = "[NWConcrete_nw_endpoint_handler dealloc]";
            v105 = 2082;
            v106 = id_str;
            v107 = 2082;
            v108 = v96;
            v109 = 2082;
            v110 = v94;
            v111 = 2082;
            v112 = v92;
            v113 = 2082;
            v114 = v83;
            v115 = 2114;
            v116 = v87;
            v117 = 2082;
            v118 = v35;
            _os_log_impl(&dword_181A37000, v36, v37, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] deallocated in unexpected state, dumping backtrace:%{public}s", buf, 0x52u);

            goto LABEL_126;
        }
      }

      v83 = "unknown-mode";
      goto LABEL_125;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v26 = gconnectionLogObj;
    v44 = type;
    if (!os_log_type_enabled(v26, type))
    {
      goto LABEL_96;
    }

    v45 = v23;

    v46 = v45;
    v47 = (*(selfCopy + 284) & 1) == 0;

    if (v47)
    {
      v48 = "";
    }

    else
    {
      v48 = "dry-run ";
    }

    v49 = nw_endpoint_handler_copy_endpoint(v46);
    v50 = v49;
    v91 = v48;
    if (v49)
    {
      v95 = _nw_endpoint_get_logging_description(v49);
    }

    else
    {
      v95 = "<NULL>";
    }

    v66 = v46;
    v67 = v66;
    v68 = self->state;
    if (v68 > 5)
    {
      v69 = "unknown-state";
    }

    else
    {
      v69 = off_1E6A31048[v68];
    }

    v70 = v67;
    v71 = v70;
    v72 = v97->mode;
    if (v72 > 2)
    {
      switch(v72)
      {
        case 3:
          v73 = "proxy";
          goto LABEL_118;
        case 4:
          v73 = "fallback";
          goto LABEL_118;
        case 5:
          v73 = "transform";
          goto LABEL_118;
      }
    }

    else
    {
      switch(v72)
      {
        case 0:
          v73 = "path";
          goto LABEL_118;
        case 1:
          v73 = "resolver";
          goto LABEL_118;
        case 2:
          v73 = nw_endpoint_flow_mode_string(v70[33]);
LABEL_118:

          v84 = v71;
          os_unfair_lock_lock(&v23->lock);
          v85 = v23->current_path;
          os_unfair_lock_unlock(&v23->lock);

          *buf = 136447746;
          v104 = "[NWConcrete_nw_endpoint_handler dealloc]";
          v105 = 2082;
          v106 = id_str;
          v107 = 2082;
          v108 = v91;
          v109 = 2082;
          v110 = v95;
          v111 = 2082;
          v112 = v69;
          v113 = 2082;
          v114 = v73;
          v115 = 2114;
          v116 = v85;
          _os_log_impl(&dword_181A37000, v26, v44, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] deallocated in unexpected state, backtrace limit exceeded", buf, 0x48u);

          goto LABEL_96;
      }
    }

    v73 = "unknown-mode";
    goto LABEL_118;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v26 = gconnectionLogObj;
  v27 = type;
  if (!os_log_type_enabled(v26, type))
  {
    goto LABEL_96;
  }

  v28 = v23;

  v29 = v28;
  v30 = (*(selfCopy + 284) & 1) == 0;

  if (v30)
  {
    v31 = "";
  }

  else
  {
    v31 = "dry-run ";
  }

  v32 = nw_endpoint_handler_copy_endpoint(v29);
  v33 = v32;
  v90 = v31;
  if (v32)
  {
    v93 = _nw_endpoint_get_logging_description(v32);
  }

  else
  {
    v93 = "<NULL>";
  }

  v58 = v29;
  v59 = v58;
  v60 = self->state;
  if (v60 > 5)
  {
    v61 = "unknown-state";
  }

  else
  {
    v61 = off_1E6A31048[v60];
  }

  v62 = v59;
  v63 = v62;
  v64 = v97->mode;
  if (v64 > 2)
  {
    switch(v64)
    {
      case 3:
        v65 = "proxy";
        goto LABEL_95;
      case 4:
        v65 = "fallback";
        goto LABEL_95;
      case 5:
        v65 = "transform";
        goto LABEL_95;
    }

LABEL_92:
    v65 = "unknown-mode";
    goto LABEL_95;
  }

  if (!v64)
  {
    v65 = "path";
    goto LABEL_95;
  }

  if (v64 == 1)
  {
    v65 = "resolver";
    goto LABEL_95;
  }

  if (v64 != 2)
  {
    goto LABEL_92;
  }

  v65 = nw_endpoint_flow_mode_string(v62[33]);
LABEL_95:

  v74 = v63;
  os_unfair_lock_lock(&v23->lock);
  v75 = v23->current_path;
  os_unfair_lock_unlock(&v23->lock);

  *buf = 136447746;
  v104 = "[NWConcrete_nw_endpoint_handler dealloc]";
  v105 = 2082;
  v106 = id_str;
  v107 = 2082;
  v108 = v90;
  v109 = 2082;
  v110 = v93;
  v111 = 2082;
  v112 = v61;
  v113 = 2082;
  v114 = v65;
  v115 = 2114;
  v116 = v75;
  _os_log_impl(&dword_181A37000, v26, v27, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] deallocated in unexpected state", buf, 0x48u);

LABEL_96:
LABEL_97:
  if (v25)
  {
LABEL_98:
    free(v25);
  }

LABEL_99:
  v100.receiver = self;
  v100.super_class = NWConcrete_nw_endpoint_handler;
  [(NWConcrete_nw_endpoint_handler *)&v100 dealloc:v88];
}

- (id)initWithEndpoint:(void *)endpoint parameters:(void *)parameters reportCallback:(void *)callback context:(void *)context parent:(unsigned int)parent identifier:(unsigned __int8 *)identifier connection_uuid:
{
  v42 = *MEMORY[0x1E69E9840];
  v16 = a2;
  endpointCopy = endpoint;
  callbackCopy = callback;
  contextCopy = context;
  if (!self)
  {
    goto LABEL_7;
  }

  v37.receiver = self;
  v37.super_class = NWConcrete_nw_endpoint_handler;
  v20 = objc_msgSendSuper2(&v37, sel_init);
  self = v20;
  if (v20)
  {
    objc_storeStrong(v20 + 3, a2);
    v21 = _nw_parameters_copy_immutable(endpointCopy);
    v22 = self[4];
    self[4] = v21;

    self[1] = parameters;
    objc_storeWeak(self + 2, callbackCopy);
    *(self + 30) = 0;
    *(self + 28) = 0;
    v23 = nw_parameters_copy_context(endpointCopy);
    v24 = self[5];
    self[5] = v23;

    *(self + 70) = 0;
    if (nw_parameters_get_logging_disabled(endpointCopy))
    {
      v25 = 64;
    }

    else
    {
      v25 = 0;
    }

    *(self + 284) = *(self + 284) & 0xBF | v25;
    nw_endpoint_handler_inherit_from_parent(self, contextCopy, parent, identifier);
    goto LABEL_7;
  }

  v27 = __nwlog_obj();
  *buf = 136446210;
  v39 = "[NWConcrete_nw_endpoint_handler initWithEndpoint:parameters:reportCallback:context:parent:identifier:connection_uuid:]";
  v28 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (__nwlog_fault(v28, &type, &v35))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v39 = "[NWConcrete_nw_endpoint_handler initWithEndpoint:parameters:reportCallback:context:parent:identifier:connection_uuid:]";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v35 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v32 = type;
      v33 = os_log_type_enabled(v29, type);
      if (backtrace_string)
      {
        if (v33)
        {
          *buf = 136446466;
          v39 = "[NWConcrete_nw_endpoint_handler initWithEndpoint:parameters:reportCallback:context:parent:identifier:connection_uuid:]";
          v40 = 2082;
          v41 = backtrace_string;
          _os_log_impl(&dword_181A37000, v29, v32, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v33)
      {
        *buf = 136446210;
        v39 = "[NWConcrete_nw_endpoint_handler initWithEndpoint:parameters:reportCallback:context:parent:identifier:connection_uuid:]";
        _os_log_impl(&dword_181A37000, v29, v32, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v29 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v39 = "[NWConcrete_nw_endpoint_handler initWithEndpoint:parameters:reportCallback:context:parent:identifier:connection_uuid:]";
        _os_log_impl(&dword_181A37000, v29, v34, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v28)
  {
    free(v28);
  }

  self = 0;
LABEL_7:

  return self;
}

@end