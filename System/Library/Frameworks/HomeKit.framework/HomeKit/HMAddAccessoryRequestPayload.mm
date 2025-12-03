@interface HMAddAccessoryRequestPayload
- (BOOL)setupCodeDeferred;
- (BOOL)shouldRetrySetup;
- (HMAddAccessoryRequestPayload)init;
- (HMSetupAccessoryDescription)accessoryDescription;
- (NSString)accessoryPairingPassword;
- (NSUUID)accessoryPeerIdentifier;
- (NSUUID)accessoryUUID;
- (id)makeMessagePayloadWithError:(id *)error;
- (void)setAccessoryDescription:(id)description;
- (void)setAccessoryPairingPassword:(id)password;
- (void)setAccessoryPeerIdentifier:(id)identifier;
- (void)setAccessoryUUID:(id)d;
- (void)setSetupCodeDeferred:(BOOL)deferred;
- (void)setShouldRetrySetup:(BOOL)setup;
@end

@implementation HMAddAccessoryRequestPayload

- (id)makeMessagePayloadWithError:(id *)error
{
  v4 = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload);
  v9 = OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  sub_19BB54B20(v8 + v9, v7);
  HMAccessory.AddAccessoryRequestMessage.RequestPayload.messagePayload.getter();
  sub_19BB54B84(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
  v10 = sub_19BE0DF2C();

  return v10;
}

- (NSUUID)accessoryUUID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload);
  v8 = OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  sub_19BB54CB8(v7 + v8, v6);
  v9 = sub_19BE0DE8C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_19BE0DE5C();
    (*(v10 + 8))(v6, v9);
    v12 = v13;
  }

  return v12;
}

- (void)setAccessoryUUID:(id)d
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  if (d)
  {
    sub_19BE0DE6C();
    v9 = sub_19BE0DE8C();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_19BE0DE8C();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload);
  v12 = OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  selfCopy = self;
  sub_19BB54BE0(v8, v11 + v12);
  swift_endAccess();
  sub_19BB54C50(v8);
}

- (NSUUID)accessoryPeerIdentifier
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  v8 = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload();
  sub_19BB54CB8(&v7[*(v8 + 20)], v6);
  v9 = sub_19BE0DE8C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_19BE0DE5C();
    (*(v10 + 8))(v6, v9);
    v12 = v13;
  }

  return v12;
}

- (void)setAccessoryPeerIdentifier:(id)identifier
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  if (identifier)
  {
    sub_19BE0DE6C();
    v9 = sub_19BE0DE8C();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_19BE0DE8C();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  v12 = *(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 20);
  selfCopy = self;
  sub_19BB54BE0(v8, &v11[v12]);
  swift_endAccess();
  sub_19BB54C50(v8);
}

- (NSString)accessoryPairingPassword
{
  v2 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  v3 = &v2[*(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 24)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_19BE0DF9C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAccessoryPairingPassword:(id)password
{
  if (password)
  {
    v4 = sub_19BE0DFAC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  v8 = &v7[*(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 24)];
  v9 = v8[1];
  *v8 = v4;
  v8[1] = v6;
}

- (HMSetupAccessoryDescription)accessoryDescription
{
  selfCopy = self;
  v3 = sub_19BB54308();

  return v3;
}

- (void)setAccessoryDescription:(id)description
{
  descriptionCopy = description;
  selfCopy = self;
  sub_19BB54A58(description);
}

- (BOOL)setupCodeDeferred
{
  v2 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  return v2[*(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 32)];
}

- (void)setSetupCodeDeferred:(BOOL)deferred
{
  v4 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  v4[*(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 32)] = deferred;
}

- (BOOL)shouldRetrySetup
{
  v2 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  return v2[*(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 36)];
}

- (void)setShouldRetrySetup:(BOOL)setup
{
  v4 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  v4[*(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 36)] = setup;
}

- (HMAddAccessoryRequestPayload)init
{
  v3 = OBJC_IVAR___HMAddAccessoryRequestPayload_payload;
  v4 = _s7WrapperCMa();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = v7 + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  v9 = sub_19BE0DE8C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v11 = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload();
  v10(&v8[v11[5]], 1, 1, v9);
  v12 = &v8[v11[6]];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v8[v11[7]] = xmmword_19BE36670;
  v8[v11[8]] = 0;
  v8[v11[9]] = 0;
  *(&self->super.isa + v3) = v7;
  v14.receiver = self;
  v14.super_class = HMAddAccessoryRequestPayload;
  return [(HMAddAccessoryRequestPayload *)&v14 init];
}

@end