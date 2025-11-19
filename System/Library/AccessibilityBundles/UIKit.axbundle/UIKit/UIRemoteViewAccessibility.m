@interface UIRemoteViewAccessibility
@end

@implementation UIRemoteViewAccessibility

double __75___UIRemoteViewAccessibility__accessibilityRemoteElementCommunicationQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.accessibility.remoteview.communication", 0);
  v1 = _accessibilityRemoteElementCommunicationQueue_q;
  _accessibilityRemoteElementCommunicationQueue_q = v0;
  *&result = MEMORY[0x29EDC9740](v1).n128_u64[0];
  return result;
}

void __83___UIRemoteViewAccessibility__accessibilityTransmitRemoteUUIDToPid_machPort_value___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  oslog[2] = a1;
  oslog[1] = a1;
  if (*(a1 + 48))
  {
    oslog[0] = AXLogRemoteElement();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_4_8_64_4_0_8_0_8_64(v6, *(a1 + 32), *(a1 + 52), *(a1 + 48), *(a1 + 40));
      _os_log_error_impl(&dword_29C4D6000, oslog[0], type, "%@: error connecting to remote view(pid: %d): %ld : (remote app %@)", v6, 0x26u);
    }

    objc_storeStrong(oslog, 0);
    [(_UIRemoteViewAccessibility *)*(a1 + 32) _accessibilitySetRemoteElementArray:?];
  }

  else
  {
    v2 = AXLogRemoteElement();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_4_8_64_4_0_8_0_8_64(v5, *(a1 + 32), *(a1 + 52), *(a1 + 48), *(a1 + 40));
      _os_log_impl(&dword_29C4D6000, v2, OS_LOG_TYPE_INFO, "%@: successfully transmitted to remote view(pid: %d): %ld : (remote app %@)", v5, 0x26u);
    }

    objc_storeStrong(&v2, 0);
  }

  CFRelease(*(a1 + 40));
}

double __64___UIRemoteViewAccessibility__accessibilityUnregisterRemoteView__block_invoke()
{
  v0 = dispatch_queue_create("ax-remoteview-unregister-queue", 0);
  v1 = _accessibilityUnregisterRemoteView_UnregisterQueue;
  _accessibilityUnregisterRemoteView_UnregisterQueue = v0;
  *&result = MEMORY[0x29EDC9740](v1).n128_u64[0];
  return result;
}

void __64___UIRemoteViewAccessibility__accessibilityUnregisterRemoteView__block_invoke_2()
{
  element = _AXUIElementCreateAppElementWithPid();
  AXUIElementSetMessagingTimeout(element, 0.5);
  AXUIElementPerformFencedActionWithValue();
  if (element)
  {
    CFRelease(element);
  }
}

@end