@interface AX_AvatarCarousel
- (AX_AvatarCarousel)initWithMessagesController:(id)a3 accessibilityContainer:(id)a4;
- (BOOL)_accessibilityScrollCarousel:(BOOL)a3;
- (BOOL)_axMessagesControllerIsExpanded;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrameInContainerSpace;
- (id)_axContainerAvatarController;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (id)messagesController;
- (unint64_t)accessibilityTraits;
@end

@implementation AX_AvatarCarousel

- (AX_AvatarCarousel)initWithMessagesController:(id)a3 accessibilityContainer:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AX_AvatarCarousel;
  v7 = [(AX_AvatarCarousel *)&v11 initWithAccessibilityContainer:a4];
  v8 = v7;
  if (v7)
  {
    [(AX_AvatarCarousel *)v7 setMessagesController:v6];
    v10 = v8;
    AXPerformSafeBlock();
  }

  return v8;
}

- (id)_axContainerAvatarController
{
  v2 = [(AX_AvatarCarousel *)self messagesController];
  v3 = [v2 safeValueForKeyPath:@"_avatarListController.multiAvatarController"];

  return v3;
}

- (BOOL)_axMessagesControllerIsExpanded
{
  v2 = [(AX_AvatarCarousel *)self messagesController];
  v3 = [v2 safeUnsignedIntegerForKey:@"presentationStyle"] == 1;

  return v3;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(AX_AvatarCarousel *)self messagesController];
  v3 = [v2 safeUnsignedIntegerForKey:@"_UIState"];

  return v3 != 1 && v3 != 4;
}

- (id)accessibilityValue
{
  if ([(AX_AvatarCarousel *)self _axCurrentIndex]< 1)
  {
    v7 = accessibilityJellyfishLocalizedString(@"starfish.add");
  }

  else
  {
    v3 = [(AX_AvatarCarousel *)self _axContainerAvatarController];
    if ([(AX_AvatarCarousel *)self _axMessagesControllerIsExpanded])
    {
      v4 = [(AX_AvatarCarousel *)self messagesController];
      v5 = [v4 safeValueForKey:@"_puppetCollectionViewController"];
      v6 = [v5 safeValueForKey:@"selectedRecord"];
    }

    else
    {
      v6 = [v3 safeValueForKey:@"displayedRecord"];
    }

    v8 = [MEMORY[0x29EDBDE08] descriptionForAvatarWithRecord:v6 includeVideoPrefix:0];
    v9 = [(AX_AvatarCarousel *)self messagesController];
    v10 = [v9 safeUIViewForKey:@"_userInfoView"];

    [v10 alpha];
    if (v11 <= 0.0)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v10 safeStringForKey:@"text"];
    }

    v7 = __UIAXStringForVariables();
  }

  return v7;
}

- (id)accessibilityHint
{
  v2 = [(AX_AvatarCarousel *)self messagesController];
  v3 = [v2 safeUnsignedIntegerForKey:@"_arSessionState"];

  if (v3 == 4)
  {
    v4 = @"face.tracking.paused.hint";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = @"emoji.puppet.hint";
LABEL_5:
    v5 = accessibilityJellyfishLocalizedString(v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = AX_AvatarCarousel;
  v3 = [(AX_AvatarCarousel *)&v7 accessibilityTraits];
  v4 = [(AX_AvatarCarousel *)self _axMessagesControllerIsExpanded];
  v5 = *MEMORY[0x29EDC7F60];
  if (v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (BOOL)_accessibilityScrollCarousel:(BOOL)a3
{
  v3 = self;
  v4 = [(AX_AvatarCarousel *)self _axContainerAvatarController];
  [(AX_AvatarCarousel *)v3 _axCurrentIndex];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6 = v4;
  AXPerformSafeBlock();
  LOBYTE(v3) = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v3;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = 0;

    return [(AX_AvatarCarousel *)self _accessibilityScrollCarousel:v5];
  }

  if (a3 == 2)
  {
    v5 = 1;

    return [(AX_AvatarCarousel *)self _accessibilityScrollCarousel:v5];
  }

  v8 = v3;
  v9 = v4;
  v7.receiver = self;
  v7.super_class = AX_AvatarCarousel;
  return [(AX_AvatarCarousel *)&v7 accessibilityScroll:?];
}

- (CGRect)accessibilityFrameInContainerSpace
{
  v2 = [(AX_AvatarCarousel *)self accessibilityContainer];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)messagesController
{
  WeakRetained = objc_loadWeakRetained(&self->_messagesController);

  return WeakRetained;
}

@end