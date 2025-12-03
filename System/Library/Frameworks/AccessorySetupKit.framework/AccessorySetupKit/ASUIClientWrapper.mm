@interface ASUIClientWrapper
- (_TtC17AccessorySetupKit17ASUIClientWrapper)init;
- (id)retrieveDisplayItems;
- (void)pickerDidDismiss:(id)dismiss;
- (void)pickerDidPresent;
- (void)pickerDidSelectAccessory;
- (void)pickerReportedEvents:(id)events;
- (void)pickerSetupFailed:(id)failed;
- (void)pickerStartedBridging;
- (void)pickerStartedPairing;
- (void)pickerStartedRename;
- (void)relayPickerCompletion:(id)completion;
@end

@implementation ASUIClientWrapper

- (void)pickerStartedPairing
{
  selfCopy = self;
  sub_2369DDE0C();
}

- (void)pickerSetupFailed:(id)failed
{
  selfCopy = self;
  failedCopy = failed;
  sub_2369DDE5C(failed);
}

- (void)pickerStartedBridging
{
  selfCopy = self;
  sub_2369DDFA8();
}

- (void)pickerStartedRename
{
  selfCopy = self;
  sub_2369DDFF8();
}

- (void)pickerDidPresent
{
  selfCopy = self;
  sub_2369DE048();
}

- (void)pickerDidDismiss:(id)dismiss
{
  selfCopy = self;
  dismissCopy = dismiss;
  sub_2369DE15C(dismiss);
}

- (void)pickerDidSelectAccessory
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager);
  if (v2)
  {
    *(v2 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_debounceCounter) = 0;
  }
}

- (void)relayPickerCompletion:(id)completion
{
  selfCopy = self;
  completionCopy = completion;
  sub_2369DE320(completion);
}

- (id)retrieveDisplayItems
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_displayItems];
    selfCopy = self;
    v5 = v2;

    sub_2369DC338(v6);
  }

  v7 = sub_2369E19D8();

  return v7;
}

- (void)pickerReportedEvents:(id)events
{
  v4 = sub_2369E19E8();
  selfCopy = self;
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