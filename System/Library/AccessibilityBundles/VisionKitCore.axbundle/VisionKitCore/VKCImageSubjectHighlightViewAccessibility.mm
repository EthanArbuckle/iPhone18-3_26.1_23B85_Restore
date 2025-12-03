@interface VKCImageSubjectHighlightViewAccessibility
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VKCImageSubjectHighlightViewAccessibility

- (id)accessibilityLabel
{
  _axDraggableView = [(VKCImageSubjectHighlightViewAccessibility *)self _axDraggableView];

  if (_axDraggableView)
  {
    v3 = accessibilityLocalizedString(@"detected.subject.element");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VKCImageSubjectHighlightViewAccessibility;
  return *MEMORY[0x29EDC7F88] | [(VKCImageSubjectHighlightViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityDragSourceDescriptors
{
  v11[1] = *MEMORY[0x29EDCA608];
  _axDraggableView = [(VKCImageSubjectHighlightViewAccessibility *)self _axDraggableView];
  if (_axDraggableView)
  {
    v4 = objc_alloc(MEMORY[0x29EDC7900]);
    v5 = accessibilityLocalizedString(@"lift.subject.from.background");
    [(VKCImageSubjectHighlightViewAccessibility *)self accessibilityActivationPoint];
    UIAccessibilityPointToPoint();
    v6 = [v4 initWithName:v5 point:_axDraggableView inView:?];
    v11[0] = v6;
    accessibilityDragSourceDescriptors = [MEMORY[0x29EDB8D80] arrayWithObjects:v11 count:1];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VKCImageSubjectHighlightViewAccessibility;
    accessibilityDragSourceDescriptors = [(VKCImageSubjectHighlightViewAccessibility *)&v10 accessibilityDragSourceDescriptors];
  }

  v8 = *MEMORY[0x29EDCA608];

  return accessibilityDragSourceDescriptors;
}

@end