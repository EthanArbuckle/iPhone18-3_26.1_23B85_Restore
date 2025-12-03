@interface AUGenericViewInternal
- (AUAudioUnit)auAudioUnit;
- (UIViewController)owningController;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)paramObserverToken;
- (void)removeFromSuperview;
- (void)removeScheduledUpdatesTimer;
- (void)setAuAudioUnit:(id)unit;
- (void)setOwningController:(id)controller;
- (void)setParamObserverToken:(void *)token;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AUGenericViewInternal

- (AUAudioUnit)auAudioUnit
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setAuAudioUnit:(id)unit
{
  v5 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = unit;
  unitCopy = unit;
  selfCopy = self;

  sub_237115418();
  sub_2371155D0();
}

- (UIViewController)owningController
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_owningController;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setOwningController:(id)controller
{
  v5 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_owningController;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = controller;
  controllerCopy = controller;
}

- (void)paramObserverToken
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramObserverToken;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setParamObserverToken:(void *)token
{
  v5 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramObserverToken;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = token;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_237117164(change);
}

- (void)removeFromSuperview
{
  selfCopy = self;
  sub_2371172E8();
}

- (void)removeScheduledUpdatesTimer
{
  v2 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_scheduledUpdatesTimer;
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_scheduledUpdatesTimer);
  if (v3)
  {
    selfCopy = self;
    [v3 invalidate];
    v6 = *(&self->super.super.super.isa + v2);
    *(&self->super.super.super.isa + v2) = 0;
  }
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  v9 = sub_23719641C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23719657C();
  v16 = v15;
  sub_2371963BC();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  selfCopy = self;
  sub_23711B2D8(supplementaryViewCopy, v14, v16);

  (*(v10 + 8))(v13, v9);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_23719641C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371963BC();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_23711B410(cellCopy, v12);

  (*(v9 + 8))(v12, v8);
}

@end