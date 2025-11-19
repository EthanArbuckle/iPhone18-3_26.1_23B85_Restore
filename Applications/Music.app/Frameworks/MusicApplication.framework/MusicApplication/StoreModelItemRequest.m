@interface StoreModelItemRequest
- (_TtC16MusicApplication21StoreModelItemRequest)init;
- (id)copyWithZone:(void *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for StoreModelItemRequest();
  v4 = a3;
  v5 = v8.receiver;
  [(StoreModelItemRequest *)&v8 encodeWithCoder:v4];
  v6 = *&v5[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model];
  v7 = sub_AB9260();
  [v4 encodeObject:v6 forKey:{v7, v8.receiver, v8.super_class}];
}

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  sub_C9448(a3, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_ABB3A0();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  v7 = sub_C9574(sub_AACD4, v5);

  return v7;
}

@end