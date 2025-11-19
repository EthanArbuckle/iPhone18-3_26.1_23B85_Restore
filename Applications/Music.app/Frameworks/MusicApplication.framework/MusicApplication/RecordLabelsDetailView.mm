@interface RecordLabelsDetailView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RecordLabelsDetailView

- (_TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_recordLabels) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_onSelectHandler);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_recordLabelLinkViews) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView____lazy_storage___titleLabel) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_AE7AC(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_AEA7C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_AEDC8(a3);
}

@end