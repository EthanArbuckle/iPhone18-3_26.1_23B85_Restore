@interface CRLSEAudioPreviewView
- (_TtC24FreeformSharingExtension21CRLSEAudioPreviewView)initWithCoder:(id)a3;
- (_TtC24FreeformSharingExtension21CRLSEAudioPreviewView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CRLSEAudioPreviewView

- (_TtC24FreeformSharingExtension21CRLSEAudioPreviewView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24FreeformSharingExtension21CRLSEAudioPreviewView_gradientBackground) = 0;
  result = sub_10007E8F4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLSEAudioPreviewView();
  v2 = v5.receiver;
  [(CRLSEAudioPreviewView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC24FreeformSharingExtension21CRLSEAudioPreviewView_gradientBackground];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame:?];
  }
}

- (_TtC24FreeformSharingExtension21CRLSEAudioPreviewView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end