@interface AudiobookTOCCell
- (NSArray)accessibilityUserInputLabels;
- (_TtC5Books16AudiobookTOCCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setAccessibilityUserInputLabels:(id)labels;
@end

@implementation AudiobookTOCCell

- (_TtC5Books16AudiobookTOCCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1007A2254();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1004FC4B0(style, identifier, v6);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1004FCFE4();
}

- (NSArray)accessibilityUserInputLabels
{
  selfCopy = self;
  v3 = sub_1004FDB88();

  if (v3)
  {
    v4.super.isa = sub_1007A25D4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setAccessibilityUserInputLabels:(id)labels
{
  if (labels)
  {
    sub_1007A25E4();
    selfCopy = self;
    v5.super.isa = sub_1007A25D4().super.isa;
  }

  else
  {
    selfCopy2 = self;
    v5.super.isa = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for AudiobookTOCCell();
  [(AudiobookTOCCell *)&v7 setAccessibilityUserInputLabels:v5.super.isa];
}

@end