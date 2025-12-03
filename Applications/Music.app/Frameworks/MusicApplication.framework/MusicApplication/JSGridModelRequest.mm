@interface JSGridModelRequest
- (_TtC16MusicApplication18JSGridModelRequest)init;
- (_TtC16MusicApplication18JSGridModelRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(void *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
@end

@implementation JSGridModelRequest

- (_TtC16MusicApplication18JSGridModelRequest)init
{
  *&self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplication18JSGridModelRequest_gridViewModel] = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for JSGridModelRequest();
  return [(JSGridModelRequest *)&v3 init];
}

- (_TtC16MusicApplication18JSGridModelRequest)initWithCoder:(id)coder
{
  *&self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplication18JSGridModelRequest_gridViewModel] = 0;
  type metadata accessor for JSGridModelRequest();
  swift_deallocPartialClassInstance();
  return 0;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_164494(zone, v7);

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
  v13 = type metadata accessor for JSGridModelRequestOperation();
  v14 = objc_allocWithZone(v13);
  [(JSGridModelRequest *)selfCopy copy];
  sub_ABAB50();
  type metadata accessor for JSGridModelRequest();
  swift_dynamicCast();
  *&v14[OBJC_IVAR____TtC16MusicApplication27JSGridModelRequestOperation_request] = v19;
  swift_unknownObjectRelease();
  v15 = &v14[OBJC_IVAR____TtC16MusicApplication27JSGridModelRequestOperation_responseHandler];
  *v15 = sub_165744;
  v15[1] = v12;
  v18.receiver = v14;
  v18.super_class = v13;
  v16 = [(JSGridModelRequest *)&v18 init];

  return v16;
}

@end