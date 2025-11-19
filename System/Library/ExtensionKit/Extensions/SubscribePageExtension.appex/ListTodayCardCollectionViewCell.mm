@interface ListTodayCardCollectionViewCell
- (BOOL)isDragging;
- (NSArray)accessibilityElements;
- (double)_continuousCornerRadius;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)applyContentSizeCategoryUpdates;
- (void)handleMuteButtonTapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityElements:(id)isa;
- (void)setDragging:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation ListTodayCardCollectionViewCell

- (BOOL)isDragging
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ListTodayCardCollectionViewCell *)&v3 isDragging];
}

- (void)setDragging:(BOOL)a3
{
  v4 = self;
  sub_100126F70(a3);
}

- (double)_continuousCornerRadius
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  [(ListTodayCardCollectionViewCell *)&v3 _continuousCornerRadius];
  return result;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v4 = self;
  sub_1001270CC(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100127684();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1001293A0();
}

- (void)applyContentSizeCategoryUpdates
{
  v2 = self;
  sub_1001264B0();
}

- (void)willMoveToWindow:(id)a3
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  v5 = a3;
  [(ListTodayCardCollectionViewCell *)&v8 willMoveToWindow:v5];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_10012E838(Strong);

    swift_unknownObjectWeakAssign();
  }

  else
  {
  }
}

- (void)handleMuteButtonTapped
{
  v2 = self;
  sub_100130EF0();
}

- (NSArray)accessibilityElements
{
  v2 = self;
  v3 = sub_100131250();

  if (v3)
  {
    v4.super.isa = sub_100753294().super.isa;
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
    sub_1007532A4();
    v6 = self;
    isa = sub_100753294().super.isa;
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(ListTodayCardCollectionViewCell *)&v8 setAccessibilityElements:isa];
}

@end