@interface UIRemoteViewControllerLegacyImplAccessibility
@end

@implementation UIRemoteViewControllerLegacyImplAccessibility

uint64_t __103___UIRemoteViewControllerLegacyImplAccessibility__accessibilityLoadAccessibilityInformation_retryTime___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) * 2.0 >= 5.0)
  {
    v2 = 5.0;
  }

  else
  {
    v2 = *(a1 + 40) * 2.0;
  }

  return [(_UIRemoteViewControllerLegacyImplAccessibility *)*(a1 + 32) _accessibilityLoadAccessibilityInformation:v2 retryTime:?];
}

double __103___UIRemoteViewControllerLegacyImplAccessibility__accessibilityLoadAccessibilityInformation_retryTime___block_invoke_416(uint64_t a1)
{
  v7 = [*(a1 + 32) safeValueForKey:@"_viewControllerOperatorProxy"];
  v6 = [v7 _target];
  v1 = [v6 _target];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v6);
  *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  return result;
}

void __103___UIRemoteViewControllerLegacyImplAccessibility__accessibilityLoadAccessibilityInformation_retryTime___block_invoke_2(_xpc_connection_s *a1)
{
  connection[2] = a1;
  connection[1] = a1;
  connection[0] = [*(*(*(a1 + 4) + 8) + 40) connection];
  if (connection[0])
  {
    *(*(*(a1 + 5) + 8) + 24) = xpc_connection_get_pid(connection[0]);
  }

  objc_storeStrong(connection, 0);
}

double __86___UIRemoteViewControllerLegacyImplAccessibility___setViewServiceIsDisplayingPopover___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_hostedDimmingView"];
  [v2 setAccessibilityViewIsModal:0];
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

double __60___UIRemoteViewControllerLegacyImplAccessibility_disconnect__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  memset(__b, 0, sizeof(__b));
  v10 = [*(a1 + 32) safeValueForKey:@"_sizeTrackingView"];
  obj = [v10 subviews];
  v12 = [obj countByEnumeratingWithState:__b objects:v17 count:{16, MEMORY[0x29EDC9740](v10).n128_f64[0]}];
  if (v12)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v12;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v14 _accessibilityUnregisterRemoteView];
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  v2 = [*(a1 + 32) safeValueForKey:{@"_remoteKeyboardRemoteView", MEMORY[0x29EDC9740](obj).n128_f64[0]}];
  [v2 _accessibilityUnregisterRemoteView];
  v3 = [*(a1 + 32) safeValueForKey:{@"_fullScreenTextEffectsRemoteView", MEMORY[0x29EDC9740](v2).n128_f64[0]}];
  [v3 _accessibilityUnregisterRemoteView];
  v4 = [*(a1 + 32) safeValueForKey:{@"_textEffectsAboveStatusBarRemoteView", MEMORY[0x29EDC9740](v3).n128_f64[0]}];
  [v4 _accessibilityUnregisterRemoteView];
  *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  return result;
}

double __78___UIRemoteViewControllerLegacyImplAccessibility__axTakeBakeFocusWithHeading___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _accessibilityFocusContainer];
  [v3 _accessibilityMoveFocusWithHeading:{objc_msgSend(*(a1 + 40), "heading")}];
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

double __78___UIRemoteViewControllerLegacyImplAccessibility__axTakeBakeFocusWithHeading___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x29EDC7AA0];
  v4 = [*(a1 + 32) view];
  v3 = [v2 focusSystemForEnvironment:?];
  [v3 _setEnabled:0];
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  return result;
}

@end