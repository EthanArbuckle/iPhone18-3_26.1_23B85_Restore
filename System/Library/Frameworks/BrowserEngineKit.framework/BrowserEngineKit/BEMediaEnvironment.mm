@interface BEMediaEnvironment
- (BEMediaEnvironment)init;
- (BEMediaEnvironment)initWithWebPageURL:(id)l;
- (BEMediaEnvironment)initWithXPCRepresentation:(id)representation error:(id *)error;
- (id)createXPCRepresentation;
- (id)makeCaptureSessionWithError:(id *)error;
@end

@implementation BEMediaEnvironment

- (BEMediaEnvironment)initWithWebPageURL:(id)l
{
  v4 = type metadata accessor for MediaEnvironment(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_19D51DF6C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  sub_19D51DF3C();
  (*(v9 + 16))(v13, v15, v8);
  MediaEnvironment.init(webPage:)(v13, v7);
  sub_19D51C494(v7, self + OBJC_IVAR___BEMediaEnvironment_inner);
  v16 = type metadata accessor for BEMediaEnvironment(0);
  v19.receiver = self;
  v19.super_class = v16;
  v17 = [(BEMediaEnvironment *)&v19 init];
  (*(v9 + 8))(v15, v8);
  return v17;
}

- (BEMediaEnvironment)initWithXPCRepresentation:(id)representation error:(id *)error
{
  v5 = type metadata accessor for MediaEnvironment(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_unknownObjectRetain_n();
  MediaEnvironment.init(xpcRepresentation:)(v9, v8);
  sub_19D51C494(v8, self + OBJC_IVAR___BEMediaEnvironment_inner);
  v10 = type metadata accessor for BEMediaEnvironment(0);
  v14.receiver = self;
  v14.super_class = v10;
  v11 = [(BEMediaEnvironment *)&v14 init];
  swift_unknownObjectRelease();
  return v11;
}

- (id)createXPCRepresentation
{
  v2 = (self + OBJC_IVAR___BEMediaEnvironment_inner);
  selfCopy = self;
  empty = xpc_dictionary_create_empty();
  v5 = *v2;
  v6 = v2[1];
  v7 = sub_19D51E2DC();
  xpc_dictionary_set_string(empty, "identifier", (v7 + 32));

  v8 = v2 + *(type metadata accessor for MediaEnvironment(0) + 20);
  sub_19D51DEEC();
  v9 = sub_19D51E2DC();

  xpc_dictionary_set_string(empty, "url", (v9 + 32));

  return empty;
}

- (id)makeCaptureSessionWithError:(id *)error
{
  v4 = *(&self->super.isa + OBJC_IVAR___BEMediaEnvironment_inner);
  v5 = *&self->inner[OBJC_IVAR___BEMediaEnvironment_inner];
  v6 = objc_allocWithZone(MEMORY[0x1E6987110]);
  selfCopy = self;
  v8 = sub_19D51E27C();
  initWithMediaEnvironment_ = [v6 initWithMediaEnvironment_];

  return initWithMediaEnvironment_;
}

- (BEMediaEnvironment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end