@interface ExternalLinkCell
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation ExternalLinkCell

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(ExternalLinkCell *)&v6 traitCollectionDidChange:changeCopy];
  [v5 setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ExternalLinkCell *)&v6 updateConstraints];
  v3 = sub_1295B8();
  traitCollection = [v2 traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  [v3 setActive:horizontalSizeClass == &dword_0 + 1];
}

@end