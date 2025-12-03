@interface SiriCoordinator
- (void)siriPresentation:(id)presentation isEnabledDidChange:(BOOL)change;
- (void)siriPresentation:(id)presentation requestsDismissalWithOptions:(id)options withHandler:(id)handler;
- (void)siriPresentation:(id)presentation requestsPresentationWithOptions:(id)options withHandler:(id)handler;
- (void)siriPresentation:(id)presentation requestsPunchout:(id)punchout withHandler:(id)handler;
@end

@implementation SiriCoordinator

- (void)siriPresentation:(id)presentation requestsPresentationWithOptions:(id)options withHandler:(id)handler
{
  v7 = _Block_copy(handler);
  _Block_copy(v7);
  swift_unknownObjectRetain();
  optionsCopy = options;
  selfCopy = self;
  sub_100036A40(selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
  swift_unknownObjectRelease();
}

- (void)siriPresentation:(id)presentation requestsDismissalWithOptions:(id)options withHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC12ClarityBoard15SiriCoordinator_presentationController);
  v9 = swift_allocObject();
  v9[2] = self;
  v9[3] = sub_1000369D4;
  v9[4] = v7;
  v12[4] = sub_100036A1C;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000357AC;
  v12[3] = &unk_1002FE570;
  v10 = _Block_copy(v12);
  selfCopy = self;

  [v8 dismissSiri:1 completion:v10];

  _Block_release(v10);
}

- (void)siriPresentation:(id)presentation isEnabledDidChange:(BOOL)change
{
  if (!change)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    selfCopy = self;
    static Published.subscript.setter();
  }
}

- (void)siriPresentation:(id)presentation requestsPunchout:(id)punchout withHandler:(id)handler
{
  v5 = _Block_copy(handler);
  (*(v5 + 2))(v5, 0, 0);

  _Block_release(v5);
}

@end