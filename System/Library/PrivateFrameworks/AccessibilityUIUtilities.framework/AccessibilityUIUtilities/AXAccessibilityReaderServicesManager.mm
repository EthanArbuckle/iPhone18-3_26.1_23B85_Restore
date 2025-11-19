@interface AXAccessibilityReaderServicesManager
+ (void)hideAccessibilityReaderUIView;
+ (void)showAccessibilityReaderUIView;
@end

@implementation AXAccessibilityReaderServicesManager

+ (void)showAccessibilityReaderUIView
{
  v8 = *MEMORY[0x1E69E9840];
  if (AXDeviceSupportsAccessibilityReader())
  {
    v2 = AccessibilityReaderObjc_Soft();
    v5 = 0;
    [v2 showAccessibilityReaderUIViewAndReturnError:&v5];
    v3 = v5;
    if (v3)
    {
      v4 = AXLogReader();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v7 = v3;
        _os_log_impl(&dword_1C0DFB000, v4, OS_LOG_TYPE_DEFAULT, "Accessibility Reader UI View cannot be shown due to error : %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = AXLogReader();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      +[(AXAccessibilityReaderServicesManager *)v2];
    }
  }
}

+ (void)hideAccessibilityReaderUIView
{
  v8 = *MEMORY[0x1E69E9840];
  if (AXDeviceSupportsAccessibilityReader())
  {
    v2 = AccessibilityReaderObjc_Soft();
    v5 = 0;
    [v2 hideAccessibilityReaderUIViewAndReturnError:&v5];
    v3 = v5;
    if (v3)
    {
      v4 = AXLogReader();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v7 = v3;
        _os_log_impl(&dword_1C0DFB000, v4, OS_LOG_TYPE_DEFAULT, "Accessibility Reader UI View cannot be hidden due to error : %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = AXLogReader();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      +[(AXAccessibilityReaderServicesManager *)v2];
    }
  }
}

@end