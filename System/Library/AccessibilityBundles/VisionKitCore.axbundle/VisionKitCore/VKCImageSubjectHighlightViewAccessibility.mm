@interface VKCImageSubjectHighlightViewAccessibility
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VKCImageSubjectHighlightViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(VKCImageSubjectHighlightViewAccessibility *)self _axDraggableView];

  if (v2)
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
  v3 = [(VKCImageSubjectHighlightViewAccessibility *)self _axDraggableView];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x29EDC7900]);
    v5 = accessibilityLocalizedString(@"lift.subject.from.background");
    [(VKCImageSubjectHighlightViewAccessibility *)self accessibilityActivationPoint];
    UIAccessibilityPointToPoint();
    v6 = [v4 initWithName:v5 point:v3 inView:?];
    v11[0] = v6;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v11 count:1];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VKCImageSubjectHighlightViewAccessibility;
    v7 = [(VKCImageSubjectHighlightViewAccessibility *)&v10 accessibilityDragSourceDescriptors];
  }

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

@end