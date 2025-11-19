@interface DescriptionModal.Content
- (_TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content)initWithCoder:(id)a3;
- (_TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content)initWithNibName:(id)a3 bundle:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DescriptionModal.Content

- (_TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content_heightNeeded) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___maskView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___blurView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1007025E0();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100702E74();
}

- (void)scrollViewDidScroll:(id)a3
{
  v5 = self;
  sub_100703094();
  v4 = 1.0 - v3;
  sub_100702B64(v3);
  sub_100702D10(v4);
}

- (_TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end