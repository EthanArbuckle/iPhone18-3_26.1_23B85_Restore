@interface RadioShowCell
+ (UIEdgeInsets)visualContentInsets;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RadioShowCell

- (void)layoutSubviews
{
  selfCopy = self;
  RadioShowCell.layoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  RadioShowCell.traitCollectionDidChange(_:)(v9);
}

+ (UIEdgeInsets)visualContentInsets
{
  _s16MusicApplication13RadioShowCellC14textComponents33_2439E203BF4E5EEB2159C351D10618FFLLAC04TextG0AELLVvpfi_0();
  v3 = v2;
  swift_beginAccess();
  v4 = *(v3 + 104);

  v5 = v4 + -2.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  result.right = v8;
  result.bottom = v5;
  result.left = v7;
  result.top = v6;
  return result;
}

@end