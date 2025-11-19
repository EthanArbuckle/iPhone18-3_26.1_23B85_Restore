@interface SocialOnboardingNetworkCell
- (BOOL)isHighlighted;
- (NSString)title;
- (_TtC16MusicApplication27SocialOnboardingNetworkCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation SocialOnboardingNetworkCell

- (_TtC16MusicApplication27SocialOnboardingNetworkCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC16MusicApplication27SocialOnboardingNetworkCell_networkStackView;
  type metadata accessor for SocialOnboardingNetworkStackView();
  *(&self->super.super.super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (NSString)title
{

  v2 = sub_AB9260();

  return v2;
}

- (void)setTitle:(id)a3
{
  v5 = sub_AB92A0();
  v7 = v6;
  v9 = a3;
  v8 = self;
  sub_36E584(v5, v7);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_36DDA8();
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SocialOnboardingNetworkCell();
  return [(SocialOnboardingNetworkCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SocialOnboardingNetworkCell();
  v4 = v5.receiver;
  [(SocialOnboardingNetworkCell *)&v5 setHighlighted:v3];
  sub_36E658([v4 isHighlighted]);
}

@end