@interface AXSpringBoardAccessibility
- (void)_handleOpenAppSwitcherShortcut:(id)a3;
- (void)_takeScreenshotWithPresentationMode:(unint64_t)a3;
@end

@implementation AXSpringBoardAccessibility

- (void)_takeScreenshotWithPresentationMode:(unint64_t)a3
{
  if (_AXSVoiceOverTouchEnabled() || _AXSAssistiveTouchEnabled() || _AXSZoomTouchEnabled())
  {
    v5 = +[_AXSpringBoardServerInstance springBoardServerInstance];
    [v5 springBoardActionOccurred:6];

    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __66__AXSpringBoardAccessibility__takeScreenshotWithPresentationMode___block_invoke;
    v10 = &unk_27842BBD0;
    v11 = self;
    v12 = a3;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AXSpringBoardAccessibility;
    [(AXSpringBoardAccessibility *)&v6 _takeScreenshotWithPresentationMode:a3];
  }
}

uint64_t __66__AXSpringBoardAccessibility__takeScreenshotWithPresentationMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  AXPerformSafeBlock();
  return AXPerformBlockOnMainThreadAfterDelay();
}

id __66__AXSpringBoardAccessibility__takeScreenshotWithPresentationMode___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = AXSpringBoardAccessibility;
  return objc_msgSendSuper2(&v3, sel__takeScreenshotWithPresentationMode_, v1);
}

void __66__AXSpringBoardAccessibility__takeScreenshotWithPresentationMode___block_invoke_3()
{
  v0 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v0 springBoardActionOccurred:7];
}

- (void)_handleOpenAppSwitcherShortcut:(id)a3
{
  v5.receiver = self;
  v5.super_class = AXSpringBoardAccessibility;
  [(AXSpringBoardAccessibility *)&v5 _handleOpenAppSwitcherShortcut:a3];
  v3 = AXLogTemp();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21FE6B000, v3, OS_LOG_TYPE_DEFAULT, "_handleOpenAppSwitcherShortcut", v4, 2u);
  }
}

@end