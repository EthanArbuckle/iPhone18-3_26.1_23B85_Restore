@interface ConversationKit_UIViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsMultiwayContainerView;
- (id)_accessibilityScrollStatus;
@end

@implementation ConversationKit_UIViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ConversationKit.MultiwayViewController"];
  [v3 validateClass:@"ConversationKit.LocalParticipantView"];
  [v3 validateClass:@"ConversationKit.ParticipantView"];
}

- (BOOL)_accessibilityIsMultiwayContainerView
{
  v2 = [(ConversationKit_UIViewAccessibility *)self _accessibilityViewController];
  MEMORY[0x29C2D28F0](@"ConversationKit.MultiwayViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_accessibilityScrollStatus
{
  if ([(ConversationKit_UIViewAccessibility *)self _accessibilityIsMultiwayContainerView])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v3 = [(ConversationKit_UIViewAccessibility *)self _axParticipantViews];
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = [v3 firstObject];
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __65__ConversationKit_UIViewAccessibility__accessibilityScrollStatus__block_invoke;
    v9[3] = &unk_29F2B7E00;
    v9[4] = &v10;
    v9[5] = &v16;
    [v3 enumerateObjectsUsingBlock:v9];
    if (v17[3])
    {
      v4 = 0;
    }

    else
    {
      v5 = MEMORY[0x29EDBA0F8];
      v6 = accessibilityLocalizedString(@"participant.focused");
      v7 = [v11[5] accessibilityLabel];
      v4 = [v5 stringWithFormat:v6, v7];
    }

    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v20.receiver = self;
    v20.super_class = ConversationKit_UIViewAccessibility;
    v4 = [(ConversationKit_UIViewAccessibility *)&v20 _accessibilityScrollStatus];
  }

  return v4;
}

@end