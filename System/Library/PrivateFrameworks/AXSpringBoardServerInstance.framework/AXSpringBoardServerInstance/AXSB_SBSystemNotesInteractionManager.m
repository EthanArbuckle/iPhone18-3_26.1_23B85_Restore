@interface AXSB_SBSystemNotesInteractionManager
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
@end

@implementation AXSB_SBSystemNotesInteractionManager

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CE7E40] server];
  v6 = [v5 areSystemGesturesDisabledByAccessibility];

  if (v6)
  {
    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21FE6B000, v7, OS_LOG_TYPE_INFO, "Quick Notes disabled by accessibility gestures", buf, 2u);
    }

    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = AXSB_SBSystemNotesInteractionManager;
    v8 = [(AXSB_SBSystemNotesInteractionManager *)&v10 gestureRecognizerShouldBegin:v4];
  }

  return v8;
}

@end