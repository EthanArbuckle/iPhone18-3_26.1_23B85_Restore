@interface LivePhotoAsset
- (void)dealloc;
@end

@implementation LivePhotoAsset

- (void)dealloc
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC20JournalWidgetsSecure14LivePhotoAsset_pendingLivePhotoRequest + 4))
  {
    v3 = self;
  }

  else
  {
    v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20JournalWidgetsSecure14LivePhotoAsset_pendingLivePhotoRequest);
    v5 = objc_opt_self();
    v6 = self;
    [v5 cancelLivePhotoRequestWithRequestID:v4];
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for LivePhotoAsset();
  [(Asset *)&v7 dealloc];
}

@end