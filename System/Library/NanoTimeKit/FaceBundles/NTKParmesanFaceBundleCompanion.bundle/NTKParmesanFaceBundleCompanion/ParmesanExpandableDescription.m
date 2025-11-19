@interface ParmesanExpandableDescription
- (NSString)text;
- (void)moreLessButtonTapped:(id)a3;
- (void)setText:(id)a3;
@end

@implementation ParmesanExpandableDescription

- (NSString)text
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_descriptionLabel);
  v3 = self;
  v4 = [v2 text];
  if (v4)
  {
    v5 = v4;
    sub_23BFFA300();

    v6 = sub_23BFFA2C0();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)setText:(id)a3
{
  if (a3)
  {
    sub_23BFFA300();
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_descriptionLabel);
    v4 = self;
    v5 = sub_23BFFA2C0();
  }

  else
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_descriptionLabel);
    v6 = self;
    v5 = 0;
  }

  [v3 setText_];

  sub_23BF9D998();
}

- (void)moreLessButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_23BFFA960();
  swift_unknownObjectRelease();
  *(&v4->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_expanded) = (*(&v4->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_expanded) & 1) == 0;
  sub_23BF9D998();

  sub_23BF4A9A4(&v5);
}

@end