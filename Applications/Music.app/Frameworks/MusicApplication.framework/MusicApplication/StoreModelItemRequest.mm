@interface StoreModelItemRequest
- (_TtC16MusicApplication21StoreModelItemRequest)init;
- (id)copyWithZone:(void *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation StoreModelItemRequest

- (_TtC16MusicApplication21StoreModelItemRequest)init
{
  *&self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model] = 0;
  self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_preventStoreItemMetadataCaching] = 2;
  v3.receiver = self;
  v3.super_class = type metadata accessor for StoreModelItemRequest();
  return [(StoreModelItemRequest *)&v3 init];
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for StoreModelItemRequest();
  coderCopy = coder;
  v5 = v8.receiver;
  [(StoreModelItemRequest *)&v8 encodeWithCoder:coderCopy];
  v6 = *&v5[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model];
  v7 = sub_AB9260();
  [coderCopy encodeObject:v6 forKey:{v7, v8.receiver, v8.super_class}];
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_C9448(zone, v7);

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
  v7 = sub_C9574(sub_AACD4, v5);

  return v7;
}

@end