@interface ASCABLEClient
- (NSURL)qrCodeURL;
- (_TtC26AuthenticationServicesCore13ASCABLEClient)init;
- (_TtC26AuthenticationServicesCore13ASCABLEClient)initWithDelegate:(id)a3 isRegistrationRequest:(BOOL)a4;
- (void)cancelIfNecessary;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didFailToScanWithError:(id)a4;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)performAuthenticationOperation:(int64_t)a3 forRelyingPartyIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation ASCABLEClient

- (NSURL)qrCodeURL
{
  v3 = sub_1C2170024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&self->qrCodeStruct[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 8];
  v16[0] = *(&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct);
  v16[1] = v8;
  v10 = *(&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct);
  v9 = *&self->qrCodeStruct[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 8];
  v17[0] = *&self->qrCodeStruct[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 24];
  *(v17 + 15) = *&self->qrCodeStruct[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 39];
  v13 = v10;
  v14 = v9;
  v15[0] = *&self->qrCodeStruct[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 24];
  *(v15 + 15) = *&self->qrCodeStruct[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 39];
  sub_1C20F1ED4(v16, v18);
  sub_1C20FD544(v7);
  v18[0] = v13;
  v18[1] = v14;
  v19[0] = v15[0];
  *(v19 + 15) = *(v15 + 15);
  sub_1C20EB700(v18);
  v11 = sub_1C216FFB4();
  (*(v4 + 8))(v7, v3);

  return v11;
}

- (_TtC26AuthenticationServicesCore13ASCABLEClient)initWithDelegate:(id)a3 isRegistrationRequest:(BOOL)a4
{
  swift_getObjectType();
  v11 = a4;
  v6 = swift_unknownObjectRetain();
  v7 = sub_1C20F1F30(v6, &v11);
  swift_unknownObjectRelease();
  v8 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v9 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)performAuthenticationOperation:(int64_t)a3 forRelyingPartyIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1C2170914();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = self;
  sub_1C20EC924(a3, v8, v10, sub_1C20EB1A4, v11);
}

- (void)cancelIfNecessary
{
  v2 = self;
  sub_1C20F2980(4);
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C20ED324(v4);
}

- (void)centralManager:(id)a3 didFailToScanWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1C20F2EA4(a4);
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v10 = sub_1C2170864();
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = self;
  sub_1C20F3040(v12, v10);
}

- (_TtC26AuthenticationServicesCore13ASCABLEClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end