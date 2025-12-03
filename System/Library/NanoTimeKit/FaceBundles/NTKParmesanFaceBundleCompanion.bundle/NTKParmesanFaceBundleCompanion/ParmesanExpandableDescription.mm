@interface ParmesanExpandableDescription
- (NSString)text;
- (void)moreLessButtonTapped:(id)tapped;
- (void)setText:(id)text;
@end

@implementation ParmesanExpandableDescription

- (NSString)text
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_descriptionLabel);
  selfCopy = self;
  text = [v2 text];
  if (text)
  {
    v5 = text;
    sub_23BFFA300();

    v6 = sub_23BFFA2C0();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)setText:(id)text
{
  if (text)
  {
    sub_23BFFA300();
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_descriptionLabel);
    selfCopy = self;
    v5 = sub_23BFFA2C0();
  }

  else
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_descriptionLabel);
    selfCopy2 = self;
    v5 = 0;
  }

  [v3 setText_];

  sub_23BF9D998();
}

- (void)moreLessButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_23BFFA960();
  swift_unknownObjectRelease();
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_expanded) = (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_expanded) & 1) == 0;
  sub_23BF9D998();

  sub_23BF4A9A4(&v5);
}

@end