@interface ArtworkLoadingProtocol
+ (BOOL)canInitWithRequest:(id)request;
+ (id)canonicalRequestForRequest:(id)request;
- (_TtC8MusicKit22ArtworkLoadingProtocol)initWithRequest:(id)request cachedResponse:(id)response client:(id)client;
- (void)startLoading;
@end

@implementation ArtworkLoadingProtocol

+ (BOOL)canInitWithRequest:(id)request
{
  v3 = sub_2177512F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2177512A8();
  swift_getObjCClassMetadata();
  v9 = sub_217575A40(v8);
  (*(v4 + 8))(v8, v3);
  return v9 & 1;
}

+ (id)canonicalRequestForRequest:(id)request
{
  v3 = sub_2177512F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - v11;
  sub_2177512A8();
  sub_217575D74(v8, v12);
  v13 = *(v4 + 8);
  v13(v8, v3);
  v14 = sub_217751288();
  v13(v12, v3);

  return v14;
}

- (void)startLoading
{
  selfCopy = self;
  sub_217575F08();
}

- (_TtC8MusicKit22ArtworkLoadingProtocol)initWithRequest:(id)request cachedResponse:(id)response client:(id)client
{
  v7 = sub_2177512F8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2177512A8();
  responseCopy = response;
  swift_unknownObjectRetain();
  return sub_217576FF4(v11, response, client);
}

@end