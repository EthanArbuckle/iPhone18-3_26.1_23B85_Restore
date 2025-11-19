@interface LoadOctaviaPlugin
@end

@implementation LoadOctaviaPlugin

uint64_t (*__LoadOctaviaPlugin_block_invoke())(void)
{
  v0 = dlopen("/System/Library/Audio/Plug-Ins/HAL/OctaviaHalogen.driver/OctaviaHalogen", 4);
  octaviaPlugin = v0;
  if (!v0)
  {
    goto LABEL_6;
  }

  sFigNeroEndpointManagerGetShared = dlsym(v0, "FigNeroEndpointManagerGetShared");
  if (!sFigNeroEndpointManagerGetShared)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = dlsym(octaviaPlugin, "FigNeroEndpointManagerForCameraPreviewGetShared");
  sFigNeroEndpointManagerForCameraPreviewGetShared = result;
  if (!result)
  {
LABEL_6:
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

@end