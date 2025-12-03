@interface AX_AvatarCarousel
- (AX_AvatarCarousel)initWithMessagesController:(id)controller accessibilityContainer:(id)container;
- (BOOL)_accessibilityScrollCarousel:(BOOL)carousel;
- (BOOL)_axMessagesControllerIsExpanded;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrameInContainerSpace;
- (id)_axContainerAvatarController;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (id)messagesController;
- (unint64_t)accessibilityTraits;
@end

@implementation AX_AvatarCarousel

- (AX_AvatarCarousel)initWithMessagesController:(id)controller accessibilityContainer:(id)container
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = AX_AvatarCarousel;
  v7 = [(AX_AvatarCarousel *)&v11 initWithAccessibilityContainer:container];
  v8 = v7;
  if (v7)
  {
    [(AX_AvatarCarousel *)v7 setMessagesController:controllerCopy];
    v10 = v8;
    AXPerformSafeBlock();
  }

  return v8;
}

- (id)_axContainerAvatarController
{
  messagesController = [(AX_AvatarCarousel *)self messagesController];
  v3 = [messagesController safeValueForKeyPath:@"_avatarListController.multiAvatarController"];

  return v3;
}

- (BOOL)_axMessagesControllerIsExpanded
{
  messagesController = [(AX_AvatarCarousel *)self messagesController];
  v3 = [messagesController safeUnsignedIntegerForKey:@"presentationStyle"] == 1;

  return v3;
}

- (BOOL)isAccessibilityElement
{
  messagesController = [(AX_AvatarCarousel *)self messagesController];
  v3 = [messagesController safeUnsignedIntegerForKey:@"_UIState"];

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
    _axContainerAvatarController = [(AX_AvatarCarousel *)self _axContainerAvatarController];
    if ([(AX_AvatarCarousel *)self _axMessagesControllerIsExpanded])
    {
      messagesController = [(AX_AvatarCarousel *)self messagesController];
      v5 = [messagesController safeValueForKey:@"_puppetCollectionViewController"];
      v6 = [v5 safeValueForKey:@"selectedRecord"];
    }

    else
    {
      v6 = [_axContainerAvatarController safeValueForKey:@"displayedRecord"];
    }

    v8 = [MEMORY[0x29EDBDE08] descriptionForAvatarWithRecord:v6 includeVideoPrefix:0];
    messagesController2 = [(AX_AvatarCarousel *)self messagesController];
    v10 = [messagesController2 safeUIViewForKey:@"_userInfoView"];

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
  messagesController = [(AX_AvatarCarousel *)self messagesController];
  v3 = [messagesController safeUnsignedIntegerForKey:@"_arSessionState"];

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
  accessibilityTraits = [(AX_AvatarCarousel *)&v7 accessibilityTraits];
  _axMessagesControllerIsExpanded = [(AX_AvatarCarousel *)self _axMessagesControllerIsExpanded];
  v5 = *MEMORY[0x29EDC7F60];
  if (_axMessagesControllerIsExpanded)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (BOOL)_accessibilityScrollCarousel:(BOOL)carousel
{
  selfCopy = self;
  _axContainerAvatarController = [(AX_AvatarCarousel *)self _axContainerAvatarController];
  [(AX_AvatarCarousel *)selfCopy _axCurrentIndex];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6 = _axContainerAvatarController;
  AXPerformSafeBlock();
  LOBYTE(selfCopy) = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (scroll == 1)
  {
    v5 = 0;

    return [(AX_AvatarCarousel *)self _accessibilityScrollCarousel:v5];
  }

  if (scroll == 2)
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
  accessibilityContainer = [(AX_AvatarCarousel *)self accessibilityContainer];
  [accessibilityContainer frame];
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