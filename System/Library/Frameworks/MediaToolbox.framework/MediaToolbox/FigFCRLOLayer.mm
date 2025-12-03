@interface FigFCRLOLayer
- (FigFCRLOLayer)init;
- (void)compose;
- (void)dealloc;
- (void)layoutSublayers;
- (void)setCallbacks:(id)callbacks viewportChanged:(void *)changed drawInContext:(void *)context;
@end

@implementation FigFCRLOLayer

- (FigFCRLOLayer)init
{
  v10 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v8.receiver = self;
  v8.super_class = FigFCRLOLayer;
  v3 = [(FigBaseCALayer *)&v8 init];
  if (v3)
  {
    v4 = malloc_type_calloc(1uLL, 0x60uLL, 0x10C0040EE8B7EF8uLL);
    v3->layerInternal = v4;
    v4->var0 = v3;
    snprintf(__str, 0x100uLL, "com.apple.coremedia.figrenderedfcrcalayer.messagequeue<%p>", v3);
    v5 = dispatch_queue_create(__str, 0);
    layerInternal = v3->layerInternal;
    layerInternal->var6 = v5;
    if (v5)
    {
      layerInternal->var7 = 1;
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  layerInternal = self->layerInternal;
  if (layerInternal)
  {
    if (layerInternal[10])
    {
      dispatch_release(layerInternal[10]);
      layerInternal = self->layerInternal;
      layerInternal[10] = 0;
    }

    self->layerInternal = 0;
    free(layerInternal);
  }

  v4.receiver = self;
  v4.super_class = FigFCRLOLayer;
  [(FigBaseCALayer *)&v4 dealloc];
}

- (void)setCallbacks:(id)callbacks viewportChanged:(void *)changed drawInContext:(void *)context
{
  self->layerInternal->var2 = callbacks;
  self->layerInternal->var3 = changed;
  self->layerInternal->var4 = context;
}

- (void)compose
{
  layerInternal = self->layerInternal;
  if (layerInternal->var7)
  {
    layerInternal->var7 = 0;
    if (dword_1EAF17208)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EAF17208)
      {
        v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  (self->layerInternal->var4)(0, self->layerInternal->var2);
}

- (void)layoutSublayers
{
  [(FigFCRLOLayer *)self bounds];
  (self->layerInternal->var3)(self->layerInternal->var2, 0);
  (self->layerInternal->var4)(0, self->layerInternal->var2);
  v3.receiver = self;
  v3.super_class = FigFCRLOLayer;
  [(FigBaseCALayer *)&v3 layoutSublayers];
}

@end