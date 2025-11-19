@interface PlatformAlertController
- (_TtC7SwiftUI23PlatformAlertController)initWithCoder:(id)a3;
- (_TtC7SwiftUI23PlatformAlertController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PlatformAlertController

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlatformAlertController();
  v4 = v7.receiver;
  [(PlatformAlertController *)&v7 viewDidDisappear:v3];
  v5 = *&v4[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_onDismissAction];
  if (v5)
  {

    v5(v6);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
  }

  else
  {
  }
}

- (_TtC7SwiftUI23PlatformAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_onDismissAction);
    *v9 = 0;
    v9[1] = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_allowsSecureDrawing) = 0;
    v10 = a4;
    v11 = MEMORY[0x18D00C850](v6, v8);
  }

  else
  {
    v12 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_onDismissAction);
    *v12 = 0;
    v12[1] = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_allowsSecureDrawing) = 0;
    v13 = a4;
    v11 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for PlatformAlertController();
  v14 = [(PlatformAlertController *)&v16 initWithNibName:v11 bundle:a4];

  return v14;
}

- (_TtC7SwiftUI23PlatformAlertController)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_onDismissAction);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_allowsSecureDrawing) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlatformAlertController();
  v5 = a3;
  v6 = [(PlatformAlertController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end