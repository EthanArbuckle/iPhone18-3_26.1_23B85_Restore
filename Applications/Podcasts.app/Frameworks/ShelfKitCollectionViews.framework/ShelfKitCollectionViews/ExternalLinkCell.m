@interface ExternalLinkCell
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation ExternalLinkCell

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(ExternalLinkCell *)&v6 traitCollectionDidChange:v4];
  [v5 setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ExternalLinkCell *)&v6 updateConstraints];
  v3 = sub_1295B8();
  v4 = [v2 traitCollection];
  v5 = [v4 horizontalSizeClass];

  [v3 setActive:v5 == &dword_0 + 1];
}

@end