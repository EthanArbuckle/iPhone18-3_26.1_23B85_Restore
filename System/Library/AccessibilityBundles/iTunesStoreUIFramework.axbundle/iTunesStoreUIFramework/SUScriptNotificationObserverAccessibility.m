@interface SUScriptNotificationObserverAccessibility
- (SUScriptNotificationObserverAccessibility)init;
- (void)_axActionOccurredForWeb:(id)a3;
- (void)dealloc;
@end

@implementation SUScriptNotificationObserverAccessibility

- (SUScriptNotificationObserverAccessibility)init
{
  v5.receiver = self;
  v5.super_class = SUScriptNotificationObserverAccessibility;
  v2 = [(SUScriptNotificationObserverAccessibility *)&v5 init];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 addObserver:v2 selector:sel__axActionOccurredForWeb_ name:@"AXActionForWebNotification" object:0];

  return v2;
}

- (void)_axActionOccurredForWeb:(id)a3
{
  v4 = a3;
  v3 = v4;
  AXPerformBlockOnMainThreadAfterDelay();
}

void __69__SUScriptNotificationObserverAccessibility__axActionOccurredForWeb___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) userInfo];
  v2 = [v10 objectForKey:@"key"];
  v3 = [v2 isEqualToString:@"scroll"];

  if (v3)
  {
    v4 = [v10 objectForKey:@"direction"];
    v5 = [v4 intValue];

    if ((v5 - 1) >= 6)
    {
      goto LABEL_7;
    }

    v6 = off_29F324540[v5 - 1];
  }

  else
  {
    v7 = [v10 objectForKey:@"key"];
    v8 = [v7 isEqualToString:@"escape"];

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = @"_accessibilityPerformEscape";
  }

  v9 = [*(a1 + 40) safeValueForKey:v6];
LABEL_7:
}

- (void)dealloc
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self name:@"AXActionForWebNotification" object:0];

  v4.receiver = self;
  v4.super_class = SUScriptNotificationObserverAccessibility;
  [(SUScriptNotificationObserverAccessibility *)&v4 dealloc];
}

@end