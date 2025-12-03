@interface SignatureTableViewCell
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation SignatureTableViewCell

- (void)updateConstraints
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SignatureTableViewCell();
  v2 = v7.receiver;
  [(SignatureTableViewCell *)&v7 updateConstraints];
  v3 = *&v2[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureViewLeadingConstraint];
  if (v3)
  {
    v4 = v3;
    isEditing = [v2 isEditing];
    v6 = 30.0;
    if (isEditing)
    {
      v6 = 15.0;
    }

    [v4 setConstant_];

    v2 = v4;
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  SignatureTableViewCell.layoutSubviews()();
}

@end