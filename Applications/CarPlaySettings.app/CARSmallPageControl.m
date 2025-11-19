@interface CARSmallPageControl
- (_TtC15CarPlaySettings19CARSmallPageControl)init;
@end

@implementation CARSmallPageControl

- (_TtC15CarPlaySettings19CARSmallPageControl)init
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CARSmallPageControl();
  v2 = [(CARPageControl *)&v5 init];
  v3 = sub_100081B08();
  [(CARSmallPageControl *)v2 setPreferredIndicatorImage:v3];

  return v2;
}

@end