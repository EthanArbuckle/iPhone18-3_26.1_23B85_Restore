@interface ListTodayCardCollectionViewCell
- (BOOL)isDragging;
- (NSArray)accessibilityElements;
- (double)_continuousCornerRadius;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)applyContentSizeCategoryUpdates;
- (void)handleMuteButtonTapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityElements:(id)isa;
- (void)setDragging:(BOOL)dragging;
- (void)willMoveToWindow:(id)window;
@end

@implementation ListTodayCardCollectionViewCell

- (BOOL)isDragging
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ListTodayCardCollectionViewCell *)&v3 isDragging];
}

- (void)setDragging:(BOOL)dragging
{
  selfCopy = self;
  sub_1005513D0(dragging);
}

- (double)_continuousCornerRadius
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  [(ListTodayCardCollectionViewCell *)&v3 _continuousCornerRadius];
  return result;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  selfCopy = self;
  sub_10055152C(radius);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100551AE4();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100553800();
}

- (void)applyContentSizeCategoryUpdates
{
  selfCopy = self;
  sub_100550A3C();
}

- (void)willMoveToWindow:(id)window
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  windowCopy = window;
  [(ListTodayCardCollectionViewCell *)&v8 willMoveToWindow:windowCopy];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100558524(Strong);

    swift_unknownObjectWeakAssign();
  }

  else
  {
  }
}

- (void)handleMuteButtonTapped
{
  selfCopy = self;
  sub_10055ABDC();
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
  v3 = sub_10055AF3C();

  if (v3)
  {
    v4.super.isa = sub_1007701AC().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setAccessibilityElements:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_1007701BC();
    selfCopy = self;
    isa = sub_1007701AC().super.isa;
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(ListTodayCardCollectionViewCell *)&v8 setAccessibilityElements:isa];
}

@end