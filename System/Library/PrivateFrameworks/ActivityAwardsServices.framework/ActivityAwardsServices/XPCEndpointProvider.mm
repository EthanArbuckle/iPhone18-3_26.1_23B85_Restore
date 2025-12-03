@interface XPCEndpointProvider
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)createEndpointNamed:(NSString *)named completion:(id)completion;
@end

@implementation XPCEndpointProvider

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1DB1051E0(connectionCopy);

  return v9 & 1;
}

- (void)createEndpointNamed:(NSString *)named completion:(id)completion
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26270, &unk_1DB127910) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = named;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1DB126490();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DB127E18;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DB127E20;
  v14[5] = v13;
  namedCopy = named;
  selfCopy = self;
  sub_1DB11F730(0, 0, v9, &unk_1DB128690, v14);
}

@end