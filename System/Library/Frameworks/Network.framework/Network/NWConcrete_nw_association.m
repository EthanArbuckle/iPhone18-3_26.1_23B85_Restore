@interface NWConcrete_nw_association
- (void)dealloc;
@end

@implementation NWConcrete_nw_association

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if ((*(self + 76) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    *v20 = 136446466;
    *&v20[4] = "[NWConcrete_nw_association dealloc]";
    *&v20[12] = 2114;
    *&v20[14] = self;
    v15 = 22;
    v14 = v20;
    v4 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v4))
    {
      __break(1u);
      return;
    }

    free(v4);
  }

  deactivation_timer = self->deactivation_timer;
  if (deactivation_timer)
  {
    nw_queue_cancel_source(deactivation_timer, a2);
    self->deactivation_timer = 0;
  }

  handles = self->handles;
  if (handles)
  {
    _nw_hash_table_release(handles, a2);
    self->handles = 0;
  }

  connected_flow_handles = self->connected_flow_handles;
  if (connected_flow_handles)
  {
    _nw_hash_table_release(connected_flow_handles, a2);
    self->connected_flow_handles = 0;
  }

  cache_entries = self->cache_entries;
  if (cache_entries)
  {
    *v20 = 0;
    *&v20[8] = v20;
    *&v20[16] = 0x2020000000;
    v21 = cache_entries;
    self->cache_entries = 0;
    v9 = nw_path_parameters_copy_context(self->path_parameters);
    v10 = *(*&v20[8] + 24);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __36__NWConcrete_nw_association_dealloc__block_invoke;
    v17[3] = &unk_1E6A3CD58;
    v11 = v9;
    v18 = v11;
    v19 = v20;
    nw_hash_table_apply(v10, v17);
    v13 = *(*&v20[8] + 24);
    if (v13)
    {
      _nw_hash_table_release(v13, v12);
      *(*&v20[8] + 24) = 0;
    }

    _Block_object_dispose(v20, 8);
  }

  v16.receiver = self;
  v16.super_class = NWConcrete_nw_association;
  [(NWConcrete_nw_association *)&v16 dealloc:v14];
}

@end