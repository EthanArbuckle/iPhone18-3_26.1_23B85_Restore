@interface AUDistortionSectionView
- (UIColor)tintColor;
- (void)parameterChangedWithNotification:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation AUDistortionSectionView

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AUDistortionSectionView();
  v2 = [(AUDistortionSectionView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_2371931BC(a3);
}

- (void)parameterChangedWithNotification:(id)a3
{
  v4 = sub_23719631C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  v9 = self;
  sub_23718FCD4();

  (*(v5 + 8))(v8, v4);
}

@end