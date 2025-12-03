@interface JSSocialProfileModelRequest
- (_TtC16MusicApplication27JSSocialProfileModelRequest)init;
- (_TtC16MusicApplication27JSSocialProfileModelRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(void *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
@end

@implementation JSSocialProfileModelRequest

- (_TtC16MusicApplication27JSSocialProfileModelRequest)init
{
  ObjectType = swift_getObjectType();
  *&self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile] = 0;
  *&self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_previousResponse] = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(JSSocialProfileModelRequest *)&v5 init];
}

- (_TtC16MusicApplication27JSSocialProfileModelRequest)initWithCoder:(id)coder
{
  swift_getObjectType();
  *&self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile] = 0;
  *&self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_previousResponse] = 0;
  swift_deallocPartialClassInstance();
  return 0;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_4EB56C(zone, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_ABB3A0();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (id)newOperationWithResponseHandler:(id)handler
{
  swift_getObjectType();
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  selfCopy = self;
  v8 = JSViewModelRequestCoordinator.sharedCoordinator.unsafeMutableAddressor();
  v9 = *v8;
  v10 = *(**v8 + 144);

  v12 = v10(v11);
  v13 = swift_allocObject();
  *(v13 + 2) = v9;
  *(v13 + 3) = v12;
  *(v13 + 4) = sub_AACD4;
  *(v13 + 5) = v6;
  v14 = type metadata accessor for JSSocialProfileModelRequestOperation();
  v15 = objc_allocWithZone(v14);
  [(JSSocialProfileModelRequest *)selfCopy copy];
  sub_ABAB50();
  swift_dynamicCast();
  *&v15[OBJC_IVAR____TtC16MusicApplication36JSSocialProfileModelRequestOperation_request] = v20;
  swift_unknownObjectRelease();
  v16 = &v15[OBJC_IVAR____TtC16MusicApplication36JSSocialProfileModelRequestOperation_responseHandler];
  *v16 = sub_4EC35C;
  v16[1] = v13;
  v19.receiver = v15;
  v19.super_class = v14;
  v17 = [(JSSocialProfileModelRequest *)&v19 init];

  return v17;
}

@end