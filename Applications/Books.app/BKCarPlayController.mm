@interface BKCarPlayController
- (void)dealloc;
- (void)templateApplicationScene:(id)scene didConnectInterfaceController:(id)controller;
- (void)templateApplicationScene:(id)scene didDisconnectInterfaceController:(id)controller;
- (void)templateWillAppear:(id)appear animated:(BOOL)animated;
- (void)templateWillDisappear:(id)disappear animated:(BOOL)animated;
@end

@implementation BKCarPlayController

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR___BKCarPlayController_acknowledgementObservation);
  if (v3)
  {
    v4 = objc_opt_self();
    selfCopy = self;
    swift_unknownObjectRetain();
    defaultCenter = [v4 defaultCenter];
    [defaultCenter removeObserver:v3];
    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for CarPlayController();
  [(BKCarPlayController *)&v8 dealloc];
}

- (void)templateApplicationScene:(id)scene didConnectInterfaceController:(id)controller
{
  sceneCopy = scene;
  controllerCopy = controller;
  selfCopy = self;
  CarPlayController.templateApplicationScene(_:didConnect:)(sceneCopy, controllerCopy);
}

- (void)templateApplicationScene:(id)scene didDisconnectInterfaceController:(id)controller
{
  sceneCopy = scene;
  controllerCopy = controller;
  selfCopy = self;
  _s5Books17CarPlayControllerC24templateApplicationScene_022didDisconnectInterfaceD0ySo010CPTemplatefG0C_So011CPInterfaceD0CtF_0();
}

- (void)templateWillAppear:(id)appear animated:(BOOL)animated
{
  appearCopy = appear;
  selfCopy = self;
  _s5Books17CarPlayControllerC18templateWillAppear_8animatedySo10CPTemplateC_SbtF_0(appearCopy);
}

- (void)templateWillDisappear:(id)disappear animated:(BOOL)animated
{
  disappearCopy = disappear;
  selfCopy = self;
  _s5Books17CarPlayControllerC21templateWillDisappear_8animatedySo10CPTemplateC_SbtF_0(disappearCopy);
}

@end