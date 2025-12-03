@interface AUDistortionSectionView
- (UIColor)tintColor;
- (void)parameterChangedWithNotification:(id)notification;
- (void)setTintColor:(id)color;
@end

@implementation AUDistortionSectionView

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AUDistortionSectionView();
  tintColor = [(AUDistortionSectionView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_2371931BC(color);
}

- (void)parameterChangedWithNotification:(id)notification
{
  v4 = sub_23719631C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  selfCopy = self;
  sub_23718FCD4();

  (*(v5 + 8))(v8, v4);
}

@end