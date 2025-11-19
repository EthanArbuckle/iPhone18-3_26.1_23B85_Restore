@interface SiriCoordinator
- (void)siriPresentation:(id)a3 isEnabledDidChange:(BOOL)a4;
- (void)siriPresentation:(id)a3 requestsDismissalWithOptions:(id)a4 withHandler:(id)a5;
- (void)siriPresentation:(id)a3 requestsPresentationWithOptions:(id)a4 withHandler:(id)a5;
- (void)siriPresentation:(id)a3 requestsPunchout:(id)a4 withHandler:(id)a5;
@end

@implementation SiriCoordinator

- (void)siriPresentation:(id)a3 requestsPresentationWithOptions:(id)a4 withHandler:(id)a5
{
  v7 = _Block_copy(a5);
  _Block_copy(v7);
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = self;
  sub_100036A40(v9, v7);
  _Block_release(v7);
  _Block_release(v7);
  swift_unknownObjectRelease();
}

- (void)siriPresentation:(id)a3 requestsDismissalWithOptions:(id)a4 withHandler:(id)a5
{
  v6 = _Block_copy(a5);
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
  v11 = self;

  [v8 dismissSiri:1 completion:v10];

  _Block_release(v10);
}

- (void)siriPresentation:(id)a3 isEnabledDidChange:(BOOL)a4
{
  if (!a4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = self;
    static Published.subscript.setter();
  }
}

- (void)siriPresentation:(id)a3 requestsPunchout:(id)a4 withHandler:(id)a5
{
  v5 = _Block_copy(a5);
  (*(v5 + 2))(v5, 0, 0);

  _Block_release(v5);
}

@end