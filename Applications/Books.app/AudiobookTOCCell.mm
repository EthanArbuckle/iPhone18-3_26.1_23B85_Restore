@interface AudiobookTOCCell
- (NSArray)accessibilityUserInputLabels;
- (_TtC5Books16AudiobookTOCCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)setAccessibilityUserInputLabels:(id)a3;
@end

@implementation AudiobookTOCCell

- (_TtC5Books16AudiobookTOCCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1007A2254();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1004FC4B0(a3, a4, v6);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1004FCFE4();
}

- (NSArray)accessibilityUserInputLabels
{
  v2 = self;
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

- (void)setAccessibilityUserInputLabels:(id)a3
{
  if (a3)
  {
    sub_1007A25E4();
    v4 = self;
    v5.super.isa = sub_1007A25D4().super.isa;
  }

  else
  {
    v6 = self;
    v5.super.isa = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for AudiobookTOCCell();
  [(AudiobookTOCCell *)&v7 setAccessibilityUserInputLabels:v5.super.isa];
}

@end