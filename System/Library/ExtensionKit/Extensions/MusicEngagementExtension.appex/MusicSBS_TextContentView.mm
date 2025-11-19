@interface MusicSBS_TextContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MusicSBS_TextContentView)initWithFrame:(CGRect)a3;
- (UILabel)accessibilityTranslationLabel;
- (UIView)accessibilityMainTextView;
- (id)copy;
- (void)layoutSubviews;
@end

@implementation MusicSBS_TextContentView

- (UIView)accessibilityMainTextView
{
  v2 = SyncedLyricsLineView.SBS_TextContentView.accessibilityMainTextView.getter();

  return v2;
}

- (UILabel)accessibilityTranslationLabel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (v2)
  {
    return *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
  }

  __break(1u);
  return self;
}

- (id)copy
{
  v2 = self;
  SyncedLyricsLineView.SBS_TextContentView.copy()(v5);

  __swift_project_boxed_opaque_existential_0Tm(v5, v5[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  SyncedLyricsLineView.SBS_TextContentView.sizeThatFits(_:)(width, height);
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
  SyncedLyricsLineView.SBS_TextContentView.layoutSubviews()();
}

- (MusicSBS_TextContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end