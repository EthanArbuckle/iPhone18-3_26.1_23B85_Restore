@interface BrailleUI_UIController
+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)a3;
- (BrailleUI_UIController)init;
- (id)processMessage:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)a3;
@end

@implementation BrailleUI_UIController

- (id)processMessage:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  if (a3)
  {
    v8 = sub_5114();
  }

  else
  {
    v8 = 0;
  }

  v9 = self;
  sub_3F2C(v8, a4);

  v10.super.isa = sub_5104().super.isa;

  return v10.super.isa;
}

+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)a3
{
  v3 = sub_5124();

  return v3;
}

- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)a3
{
  v4 = (*(*(sub_4164(&qword_C5F0, &qword_5810) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = sub_51A4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_5184();
  v8 = self;
  v9 = sub_5174();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_25F0(0, 0, v6, &unk_5890, v10);
}

- (BrailleUI_UIController)init
{
  ObjectType = swift_getObjectType();
  _s9BrailleUI0aB13_UIControllerC13brailleUIView33_6F8689ADE33571FDFE65109765AA1F6FLL28AccessibilitySharedUISupport0A12UIVisualViewVvpfi_0();
  *(&self->super.isa + OBJC_IVAR___BrailleUI_UIController_mainDisplayViewController) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(BrailleUI_UIController *)&v5 init];
}

@end