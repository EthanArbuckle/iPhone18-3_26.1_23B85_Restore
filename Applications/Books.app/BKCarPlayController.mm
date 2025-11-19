@interface BKCarPlayController
- (void)dealloc;
- (void)templateApplicationScene:(id)a3 didConnectInterfaceController:(id)a4;
- (void)templateApplicationScene:(id)a3 didDisconnectInterfaceController:(id)a4;
- (void)templateWillAppear:(id)a3 animated:(BOOL)a4;
- (void)templateWillDisappear:(id)a3 animated:(BOOL)a4;
@end

@implementation BKCarPlayController

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR___BKCarPlayController_acknowledgementObservation);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = self;
    swift_unknownObjectRetain();
    v6 = [v4 defaultCenter];
    [v6 removeObserver:v3];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for CarPlayController();
  [(BKCarPlayController *)&v8 dealloc];
}

- (void)templateApplicationScene:(id)a3 didConnectInterfaceController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CarPlayController.templateApplicationScene(_:didConnect:)(v6, v7);
}

- (void)templateApplicationScene:(id)a3 didDisconnectInterfaceController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s5Books17CarPlayControllerC24templateApplicationScene_022didDisconnectInterfaceD0ySo010CPTemplatefG0C_So011CPInterfaceD0CtF_0();
}

- (void)templateWillAppear:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  _s5Books17CarPlayControllerC18templateWillAppear_8animatedySo10CPTemplateC_SbtF_0(v5);
}

- (void)templateWillDisappear:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  _s5Books17CarPlayControllerC21templateWillDisappear_8animatedySo10CPTemplateC_SbtF_0(v5);
}

@end