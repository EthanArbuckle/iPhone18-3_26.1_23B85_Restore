@interface JSContainerDetailModelRequest
- (_TtC16MusicApplication29JSContainerDetailModelRequest)init;
- (id)copyWithZone:(void *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (id)playbackIntentFor:(id)for itemKind:(id)kind itemProperties:(id)properties;
- (id)playbackIntentWithStartItemIdentifiers:(id)identifiers;
- (id)requestForDetailFor:(id)for kind:(id)kind requestedProperties:(id)properties;
@end

@implementation JSContainerDetailModelRequest

- (_TtC16MusicApplication29JSContainerDetailModelRequest)init
{
  ObjectType = swift_getObjectType();
  v4 = &self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v4 = 0;
  *(v4 + 1) = 0;
  self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  *&self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(JSContainerDetailModelRequest *)&v6 init];
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_19A2A0(zone, v7);

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
  v12[2] = v8;
  v12[3] = v11;
  v12[4] = sub_AACD4;
  v12[5] = v5;
  v13 = objc_allocWithZone(type metadata accessor for JSContainerDetailModelRequestOperation());
  v14 = sub_1A4668(selfCopy, sub_1A5ADC, v12);

  return v14;
}

- (id)playbackIntentWithStartItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  selfCopy = self;
  v7 = sub_19A5E0(identifiers);

  return v7;
}

- (id)playbackIntentFor:(id)for itemKind:(id)kind itemProperties:(id)properties
{
  forCopy = for;
  selfCopy = self;
  v8 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  v9 = MPModelObject.bestIdentifier(for:)(*v8, 1u);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_AF4EC0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    v14 = sub_19A78C(v13, 0);
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

- (id)requestForDetailFor:(id)for kind:(id)kind requestedProperties:(id)properties
{
  v8 = type metadata accessor for StoreModelItemRequest();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model;
  *&v9[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model] = 0;
  v11 = OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_preventStoreItemMetadataCaching;
  *&v9[v10] = for;
  v9[v11] = 0;
  v17.receiver = v9;
  v17.super_class = v8;
  forCopy = for;
  kindCopy = kind;
  propertiesCopy = properties;
  v15 = [(JSContainerDetailModelRequest *)&v17 init];
  [(JSContainerDetailModelRequest *)v15 setItemKind:kindCopy, v17.receiver, v17.super_class];
  [(JSContainerDetailModelRequest *)v15 setItemProperties:propertiesCopy];

  return v15;
}

@end