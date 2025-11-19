@interface AUGenericViewInternal
- (AUAudioUnit)auAudioUnit;
- (UIViewController)owningController;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)paramObserverToken;
- (void)removeFromSuperview;
- (void)removeScheduledUpdatesTimer;
- (void)setAuAudioUnit:(id)a3;
- (void)setOwningController:(id)a3;
- (void)setParamObserverToken:(void *)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AUGenericViewInternal

- (AUAudioUnit)auAudioUnit
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setAuAudioUnit:(id)a3
{
  v5 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_237115418();
  sub_2371155D0();
}

- (UIViewController)owningController
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_owningController;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setOwningController:(id)a3
{
  v5 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_owningController;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
}

- (void)paramObserverToken
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramObserverToken;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setParamObserverToken:(void *)a3
{
  v5 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramObserverToken;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_237117164(a3);
}

- (void)removeFromSuperview
{
  v2 = self;
  sub_2371172E8();
}

- (void)removeScheduledUpdatesTimer
{
  v2 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_scheduledUpdatesTimer;
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_scheduledUpdatesTimer);
  if (v3)
  {
    v5 = self;
    [v3 invalidate];
    v6 = *(&self->super.super.super.isa + v2);
    *(&self->super.super.super.isa + v2) = 0;
  }
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v9 = sub_23719641C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23719657C();
  v16 = v15;
  sub_2371963BC();
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_23711B2D8(v18, v14, v16);

  (*(v10 + 8))(v13, v9);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_23719641C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371963BC();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_23711B410(v14, v12);

  (*(v9 + 8))(v12, v8);
}

@end