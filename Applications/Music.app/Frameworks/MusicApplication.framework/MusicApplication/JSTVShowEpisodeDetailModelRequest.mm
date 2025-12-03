@interface JSTVShowEpisodeDetailModelRequest
- (_TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest)init;
- (_TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(void *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
@end

@implementation JSTVShowEpisodeDetailModelRequest

- (_TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest)init
{
  *&self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest_tvShowEpisodeDetail] = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for JSTVShowEpisodeDetailModelRequest();
  return [(JSTVShowEpisodeDetailModelRequest *)&v3 init];
}

- (_TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest)initWithCoder:(id)coder
{
  *&self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest_tvShowEpisodeDetail] = 0;
  type metadata accessor for JSTVShowEpisodeDetailModelRequest();
  swift_deallocPartialClassInstance();
  return 0;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_21DC54(zone, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_ABB3A0();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (id)newOperationWithResponseHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = JSViewModelRequestCoordinator.sharedCoordinator.unsafeMutableAddressor();
  v8 = *v7;
  v9 = *(**v7 + 144);

  v11 = v9(v10);
  v12 = swift_allocObject();
  *(v12 + 2) = v8;
  *(v12 + 3) = v11;
  *(v12 + 4) = sub_AACD4;
  *(v12 + 5) = v5;
  v13 = type metadata accessor for JSTVShowEpisodeDetailModelRequestOperation();
  v14 = objc_allocWithZone(v13);
  [(JSTVShowEpisodeDetailModelRequest *)selfCopy copy];
  sub_ABAB50();
  type metadata accessor for JSTVShowEpisodeDetailModelRequest();
  swift_dynamicCast();
  *&v14[OBJC_IVAR____TtC16MusicApplication42JSTVShowEpisodeDetailModelRequestOperation_request] = v19;
  swift_unknownObjectRelease();
  v15 = &v14[OBJC_IVAR____TtC16MusicApplication42JSTVShowEpisodeDetailModelRequestOperation_responseHandler];
  *v15 = sub_21ECBC;
  v15[1] = v12;
  v18.receiver = v14;
  v18.super_class = v13;
  v16 = [(JSTVShowEpisodeDetailModelRequest *)&v18 init];

  return v16;
}

@end