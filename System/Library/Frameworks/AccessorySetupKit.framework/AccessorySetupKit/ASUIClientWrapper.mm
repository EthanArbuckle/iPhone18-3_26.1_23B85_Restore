@interface ASUIClientWrapper
- (_TtC17AccessorySetupKit17ASUIClientWrapper)init;
- (id)retrieveDisplayItems;
- (void)pickerDidDismiss:(id)a3;
- (void)pickerDidPresent;
- (void)pickerDidSelectAccessory;
- (void)pickerReportedEvents:(id)a3;
- (void)pickerSetupFailed:(id)a3;
- (void)pickerStartedBridging;
- (void)pickerStartedPairing;
- (void)pickerStartedRename;
- (void)relayPickerCompletion:(id)a3;
@end

@implementation ASUIClientWrapper

- (void)pickerStartedPairing
{
  v2 = self;
  sub_2369DDE0C();
}

- (void)pickerSetupFailed:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_2369DDE5C(a3);
}

- (void)pickerStartedBridging
{
  v2 = self;
  sub_2369DDFA8();
}

- (void)pickerStartedRename
{
  v2 = self;
  sub_2369DDFF8();
}

- (void)pickerDidPresent
{
  v2 = self;
  sub_2369DE048();
}

- (void)pickerDidDismiss:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_2369DE15C(a3);
}

- (void)pickerDidSelectAccessory
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager);
  if (v2)
  {
    *(v2 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_debounceCounter) = 0;
  }
}

- (void)relayPickerCompletion:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_2369DE320(a3);
}

- (id)retrieveDisplayItems
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_displayItems];
    v4 = self;
    v5 = v2;

    sub_2369DC338(v6);
  }

  v7 = sub_2369E19D8();

  return v7;
}

- (void)pickerReportedEvents:(id)a3
{
  v4 = sub_2369E19E8();
  v5 = self;
  sub_2369DE770(v4);
}

- (_TtC17AccessorySetupKit17ASUIClientWrapper)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ASUIClientWrapper();
  return [(ASUIClientWrapper *)&v3 init];
}

@end