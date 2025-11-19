uint64_t ImagePresentationComponent.Spatial3DImage.__allocating_init(contentsOf:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.__allocating_init(contentsOf:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = ImagePresentationComponent.Spatial3DImage.__allocating_init(contentsOf:);
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = ImagePresentationComponent.Spatial3DImage.__allocating_init(contentsOf:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t ImagePresentationComponent.Spatial3DImage.__allocating_init(contentsOf:)@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[2];
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v5 = CGImageSourceCreateWithURL(v3, 0);
  v1[3] = v5;

  if (v5)
  {
    type metadata accessor for ImagePresentationComponent.Spatial3DImage();
    swift_allocObject();
    v6 = v5;
    v7 = swift_task_alloc();
    v1[4] = v7;
    *v7 = v1;
    v7[1] = ImagePresentationComponent.Spatial3DImage.__allocating_init(contentsOf:);

    return ImagePresentationComponent.Spatial3DImage.init(imageSource:)(v6);
  }

  else
  {
    lazy protocol witness table accessor for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError();
    swift_allocError();
    swift_willThrow();
    v9 = v1[2];
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(v9, v10);
    v11 = v1[1];

    return v11();
  }
}

uint64_t ImagePresentationComponent.Spatial3DImage.__allocating_init(contentsOf:)()
{
  v1 = *(v0 + 16);

  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = *(v0 + 8);
  v4 = *(v0 + 48);

  return v3(v4);
}

{

  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:mxiSceneResource:)(void *a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for ImagePresentationComponent.Spatial3DImage();
  swift_allocObject();
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:mxiSceneResource:);

  return ImagePresentationComponent.Spatial3DImage.init(imageSource:)(v4);
}

uint64_t ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:mxiSceneResource:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:mxiSceneResource:);
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:mxiSceneResource:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:mxiSceneResource:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  v3 = *(v1 + 88);
  *(v1 + 88) = v2;

  *(v1 + 104) = 1065353216;
  *(v1 + 108) = 0;

  v4 = *(v0 + 8);
  v5 = *(v0 + 48);

  return v4(v5);
}

{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];
  v4 = v0[5];

  return v3();
}

Swift::Void __swiftcall ImagePresentationComponent.Spatial3DImage.registerComponent(component:)(Swift::OpaquePointer component)
{
  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, ImageLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1358000, v3, v4, "Spatial3DImage: registering a new component", v5, 2u);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v14, component._rawValue);
  swift_endAccess();
  v12 = implicit closure #1 in ImagePresentationComponent.Spatial3DImage.registerComponent(component:);
  v13 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed Any?) -> ();
  v11 = &block_descriptor_9;
  v6 = _Block_copy(&aBlock);
  REImagePresentationComponentCreateSpatial3DImageGenerationRemoveOwnerCallback();
  _Block_release(v6);
  v12 = implicit closure #2 in ImagePresentationComponent.Spatial3DImage.registerComponent(component:);
  v13 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed Any?) -> ();
  v11 = &block_descriptor_79;
  v7 = _Block_copy(&aBlock);
  REImagePresentationComponentCreateSpatial3DImageGenerationAddOwnerCallback();
  _Block_release(v7);
}

uint64_t implicit closure #1 in ImagePresentationComponent.Spatial3DImage.registerComponent(component:)(Swift::OpaquePointer a1, uint64_t a2)
{
  outlined init with copy of [String : String](a2, &v4, &_sypSgMd, &_sypSgMR);
  if (!v5)
  {
    return outlined destroy of BodyTrackingComponent?(&v4, &_sypSgMd, &_sypSgMR);
  }

  outlined init with take of Any(&v4, v6);
  outlined init with copy of Any(v6, &v4);
  type metadata accessor for ImagePresentationComponent.Spatial3DImage();
  if (swift_dynamicCast())
  {
    ImagePresentationComponent.Spatial3DImage.unregisterComponent(component:)(a1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed Any?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a3;
    outlined init with take of Any(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6(a2, v10);

  return outlined destroy of BodyTrackingComponent?(v10, &_sypSgMd, &_sypSgMR);
}

uint64_t implicit closure #2 in ImagePresentationComponent.Spatial3DImage.registerComponent(component:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of [String : String](a2, &v5, &_sypSgMd, &_sypSgMR);
  if (!v6)
  {
    return outlined destroy of BodyTrackingComponent?(&v5, &_sypSgMd, &_sypSgMR);
  }

  outlined init with take of Any(&v5, v7);
  outlined init with copy of Any(v7, &v5);
  type metadata accessor for ImagePresentationComponent.Spatial3DImage();
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    if (specialized Set.contains(_:)(a1, *(v4 + 96)))
    {
      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    ImagePresentationComponent.Spatial3DImage.registerComponent(component:)(a1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

Swift::Void __swiftcall ImagePresentationComponent.Spatial3DImage.unregisterComponent(component:)(Swift::OpaquePointer component)
{
  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, ImageLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1358000, v3, v4, "Spatial3DImage: unregistering a new component", v5, 2u);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  swift_beginAccess();
  specialized Set._Variant.remove(_:)(component._rawValue);
  swift_endAccess();
}

uint64_t ImagePresentationComponent.Spatial3DImage.deinit()
{
  v1 = *(v0 + 88);
  *(v0 + 88) = 0;

  v2 = *(v0 + 16);
  v3 = *(v0 + 40);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  return v0;
}

uint64_t ImagePresentationComponent.Spatial3DImage.__deallocating_deinit()
{
  v1 = *(v0 + 88);
  *(v0 + 88) = 0;

  v2 = *(v0 + 16);
  v3 = *(v0 + 40);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationStarted()()
{
  *(v1 + 184) = v0;
  type metadata accessor for MainActor();
  *(v1 + 192) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationStarted(), v3, v2);
}

{
  v1 = *(v0 + 192);

  if (one-time initialization token for ImageLogger != -1)
  {
LABEL_29:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, ImageLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1358000, v3, v4, "Spatial3DImage: notifying dependent ImagePresentationComponents that generation has started", v5, 2u);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  v6 = *(v0 + 184);

  *(v6 + 104) = 0;
  *(v6 + 108) = 0;
  swift_beginAccess();
  v7 = *(v6 + 96);
  v8 = -1;
  v9 = -1 << *(v7 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v7 + 56);
  v11 = (63 - v9) >> 6;
  v12 = *(v6 + 96);

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_12:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(*(v7 + 48) + ((v14 << 9) | (8 * v15)));
      REImagePresentationComponentNotifySpatial3DImageGenerationStarted();
      if (!v10)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 56 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_12;
    }
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C1358000, v17, v18, "Spatial3DImage: publishing GenerationStartedEvent", v19, 2u);
    MEMORY[0x1C6902A30](v19, -1, -1);
  }

  v20 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v20 + 80, v0 + 16);
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
  v23 = (*(v22 + 8))(v21, v22);
  v24 = v23;
  if (v23 >> 62)
  {
    v25 = __CocoaSet.count.getter();
    if (v25)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_18:
      v26 = 0;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](v26, v24);
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v27 = *(v24 + 8 * v26 + 32);

          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        Scene.eventService.getter((v0 + 56));
        v29 = *(v0 + 80);
        v30 = *(v0 + 88);
        v31 = __swift_project_boxed_opaque_existential_1((v0 + 56), v29);
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
        *(v0 + 128) = 0;
        EventService.publish<A>(_:on:componentType:)(v31, v0 + 96, 0, 0, v29, &type metadata for ImagePresentationComponent.Spatial3DImage.GenerationStartedEvent, v30, &protocol witness table for ImagePresentationComponent.Spatial3DImage.GenerationStartedEvent);

        outlined destroy of BodyTrackingComponent?(v0 + 96, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        ++v26;
      }

      while (v28 != v25);
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v32 = *(v0 + 8);

  return v32();
}

Swift::Void __swiftcall ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationProgress(percent:)(Swift::Float percent)
{
  v2 = v1;
  if (one-time initialization token for ImageLogger != -1)
  {
LABEL_29:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, ImageLogger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = percent;
    _os_log_impl(&dword_1C1358000, v5, v6, "Spatial3DImage: notifying dependent ImagePresentationComponents that generation has reached %f%% completion", v7, 0xCu);
    MEMORY[0x1C6902A30](v7, -1, -1);
  }

  *(v2 + 104) = percent;
  *(v2 + 108) = 0;
  swift_beginAccess();
  v2 = *(v2 + 96);
  v8 = 1 << *(v2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v2 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_12:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * v14)));
      REImagePresentationComponentNotifySpatial3DImageGenerationProgress();
      if (!v10)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v2 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_12;
    }
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C1358000, v16, v17, "Spatial3DImage: publishing GenerationProgressUpdatedEvent", v18, 2u);
    MEMORY[0x1C6902A30](v18, -1, -1);
  }

  v19 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v19 + 80, v35);
  v20 = v36;
  v21 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v22 = (*(v21 + 8))(v20, v21);
  v2 = v22;
  if (v22 >> 62)
  {
    v23 = __CocoaSet.count.getter();
    if (v23)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_18:
      v24 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](v24, v2);
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v24 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v25 = *(v2 + 8 * v24 + 32);

          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        Scene.eventService.getter(v32);
        v27 = v33;
        v28 = v34;
        v29 = __swift_project_boxed_opaque_existential_1(v32, v33);
        v31 = 0;
        memset(v30, 0, sizeof(v30));
        EventService.publish<A>(_:on:componentType:)(v29, v30, 0, 0, v27, &type metadata for ImagePresentationComponent.Spatial3DImage.GenerationProgressUpdatedEvent, v28, &protocol witness table for ImagePresentationComponent.Spatial3DImage.GenerationProgressUpdatedEvent);

        outlined destroy of BodyTrackingComponent?(v30, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
        __swift_destroy_boxed_opaque_existential_1(v32);
        ++v24;
      }

      while (v26 != v23);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCompleted()()
{
  *(v1 + 376) = v0;
  type metadata accessor for MainActor();
  *(v1 + 384) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCompleted(), v3, v2);
}

{
  v1 = *(v0 + 384);

  if (one-time initialization token for ImageLogger != -1)
  {
LABEL_46:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, ImageLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1358000, v3, v4, "Spatial3DImage: notifying dependent ImagePresentationComponents that generation has finished", v5, 2u);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  v6 = *(v0 + 376);

  v7 = *(v6 + 88);
  if (v7)
  {
    v8 = *(v0 + 376);
    swift_beginAccess();
    v68 = v8;
    v9 = *(v8 + 96);
    v10 = -1 << *(v9 + 32);
    if (-v10 < 64)
    {
      v11 = ~(-1 << -v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v9 + 56);

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v13 = 0;
    v14 = (63 - v10) >> 6;
    if (v12)
    {
      while (1)
      {
        v15 = v13;
LABEL_14:
        v16 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v17 = *(*(v9 + 48) + ((v15 << 9) | (8 * v16)));
        v18 = *(v7 + 56);
        REImagePresentationComponentSetMXIMeshAsset();
        v19 = *(v7 + 64);
        REImagePresentationComponentSetMXITextureAsset();
        v20 = *(v7 + 72);

        v22 = specialized static MXISceneResource.toCFArray(_:)(v21);

        REImagePresentationComponentSetMXITextureAssets();

        v23 = *(v7 + 80);
        REImagePresentationComponentSetMXIBackgroundTextureAsset();
        v24 = *(v7 + 20);
        REImagePresentationComponentSetMXIVerticalFOV();
        v25 = *(v7 + 24);
        REImagePresentationComponentSetMXIAspectRatio();
        v26 = *(v7 + 28);
        REImagePresentationComponentSetMXINearDistance();
        v27 = *(v7 + 32);
        REImagePresentationComponentSetMXIFarDistance();
        v28 = *(v7 + 36);
        REImagePresentationComponentSetMXILayerCount();
        v29 = *(v7 + 40);
        REImagePresentationComponentSetMXIResolutionWidth();
        v30 = *(v7 + 44);
        REImagePresentationComponentSetMXIResolutionHeight();
        v31 = *(v7 + 48);
        REImagePresentationComponentSetMXIPremultipliedAlpha();
        REImagePresentationComponentSetHasGeneratedSpatial3DImageContent();
        REImagePresentationComponentNotifySpatial3DImageGenerationCompleted();
        if (!v12)
        {
          goto LABEL_10;
        }
      }
    }

    while (1)
    {
LABEL_10:
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v15 >= v14)
      {
        break;
      }

      v12 = *(v9 + 56 + 8 * v15);
      ++v13;
      if (v12)
      {
        v13 = v15;
        goto LABEL_14;
      }
    }

    v32 = *(v68 + 96);
    v35 = *(v32 + 56);
    v34 = v32 + 56;
    v33 = v35;
    v36 = -1;
    v37 = -1 << *(*(v68 + 96) + 32);
    if (-v37 < 64)
    {
      v36 = ~(-1 << -v37);
    }

    v38 = v36 & v33;
    v39 = (63 - v37) >> 6;
    v69 = *(v68 + 96);

    v40 = 0;
    while (v38)
    {
LABEL_25:
      v42 = *(*(v69 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v38)))));
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C1358000, v43, v44, "Spatial3DImage: unregistering a new component", v45, 2u);
        MEMORY[0x1C6902A30](v45, -1, -1);
      }

      v38 &= v38 - 1;

      swift_beginAccess();
      specialized Set._Variant.remove(_:)(v42);
      swift_endAccess();
    }

    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_44;
      }

      if (v41 >= v39)
      {
        break;
      }

      v38 = *(v34 + 8 * v41);
      ++v40;
      if (v38)
      {
        v40 = v41;
        goto LABEL_25;
      }
    }

    v46 = *(v0 + 376);

    *(v46 + 104) = 1065353216;
    *(v46 + 108) = 0;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1C1358000, v47, v48, "Spatial3DImage: publishing GenerationCompletedEvent", v49, 2u);
      MEMORY[0x1C6902A30](v49, -1, -1);
    }

    v50 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v50 + 80, v0 + 16);
    v51 = *(v0 + 40);
    v52 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v51);
    v53 = (*(v52 + 8))(v51, v52);
    v54 = v53;
    if (v53 >> 62)
    {
      v55 = __CocoaSet.count.getter();
      if (v55)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v55)
      {
LABEL_31:
        v56 = 0;
        do
        {
          if ((v54 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1C68F41F0](v56, v54);
            v58 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v57 = *(v54 + 8 * v56 + 32);

            v58 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          Scene.eventService.getter((v0 + 56));
          v59 = *(v0 + 80);
          v60 = *(v0 + 88);
          v61 = __swift_project_boxed_opaque_existential_1((v0 + 56), v59);
          *(v0 + 96) = 0u;
          *(v0 + 112) = 0u;
          *(v0 + 128) = 0;
          EventService.publish<A>(_:on:componentType:)(v61, v0 + 96, 0, 0, v59, &type metadata for ImagePresentationComponent.Spatial3DImage.GenerationCompletedEvent, v60, &protocol witness table for ImagePresentationComponent.Spatial3DImage.GenerationCompletedEvent);

          outlined destroy of BodyTrackingComponent?(v0 + 96, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
          __swift_destroy_boxed_opaque_existential_1((v0 + 56));
          ++v56;
        }

        while (v58 != v55);
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v66 = *(v0 + 8);
  }

  else
  {
LABEL_40:
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1C1358000, v62, v63, "Spatial3DImage: Missing MXISceneResource on generation completion.", v64, 2u);
      MEMORY[0x1C6902A30](v64, -1, -1);
    }

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    swift_allocError();
    *v65 = 9;
    swift_willThrow();
    v66 = *(v0 + 8);
  }

  return v66();
}

uint64_t ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()()
{
  *(v1 + 184) = v0;
  type metadata accessor for MainActor();
  *(v1 + 192) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed(), v3, v2);
}

{
  v1 = *(v0 + 192);

  if (one-time initialization token for ImageLogger != -1)
  {
LABEL_29:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, ImageLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1358000, v3, v4, "Spatial3DImage: notifying dependent ImagePresentationComponents that generation has failed", v5, 2u);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  v6 = *(v0 + 184);

  *(v6 + 104) = 0;
  *(v6 + 108) = 1;
  swift_beginAccess();
  v7 = *(v6 + 96);
  v8 = -1;
  v9 = -1 << *(v7 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v7 + 56);
  v11 = (63 - v9) >> 6;
  v12 = *(v6 + 96);

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_12:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(*(v7 + 48) + ((v14 << 9) | (8 * v15)));
      REImagePresentationComponentNotifySpatial3DImageGenerationFailed();
      if (!v10)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 56 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_12;
    }
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C1358000, v17, v18, "Spatial3DImage: publishing GenerationFailedEvent", v19, 2u);
    MEMORY[0x1C6902A30](v19, -1, -1);
  }

  v20 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v20 + 80, v0 + 16);
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
  v23 = (*(v22 + 8))(v21, v22);
  v24 = v23;
  if (v23 >> 62)
  {
    v25 = __CocoaSet.count.getter();
    if (v25)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_18:
      v26 = 0;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](v26, v24);
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v27 = *(v24 + 8 * v26 + 32);

          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        Scene.eventService.getter((v0 + 56));
        v29 = *(v0 + 80);
        v30 = *(v0 + 88);
        v31 = __swift_project_boxed_opaque_existential_1((v0 + 56), v29);
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
        *(v0 + 128) = 0;
        EventService.publish<A>(_:on:componentType:)(v31, v0 + 96, 0, 0, v29, &type metadata for ImagePresentationComponent.Spatial3DImage.GenerationFailedEvent, v30, &protocol witness table for ImagePresentationComponent.Spatial3DImage.GenerationFailedEvent);

        outlined destroy of BodyTrackingComponent?(v0 + 96, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        ++v26;
      }

      while (v28 != v25);
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v32 = *(v0 + 8);

  return v32();
}

uint64_t ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()()
{
  *(v1 + 184) = v0;
  type metadata accessor for MainActor();
  *(v1 + 192) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled(), v3, v2);
}

{
  v1 = *(v0 + 192);

  if (one-time initialization token for ImageLogger != -1)
  {
LABEL_29:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, ImageLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1358000, v3, v4, "Spatial3DImage: notifying dependent ImagePresentationComponents that generation has been cancelled", v5, 2u);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  v6 = *(v0 + 184);

  *(v6 + 104) = 0;
  *(v6 + 108) = 1;
  swift_beginAccess();
  v7 = *(v6 + 96);
  v8 = -1;
  v9 = -1 << *(v7 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v7 + 56);
  v11 = (63 - v9) >> 6;
  v12 = *(v6 + 96);

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_12:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(*(v7 + 48) + ((v14 << 9) | (8 * v15)));
      REImagePresentationComponentNotifySpatial3DImageGenerationCancelled();
      if (!v10)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 56 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_12;
    }
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C1358000, v17, v18, "Spatial3DImage: publishing GenerationCancelledEvent", v19, 2u);
    MEMORY[0x1C6902A30](v19, -1, -1);
  }

  v20 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v20 + 80, v0 + 16);
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
  v23 = (*(v22 + 8))(v21, v22);
  v24 = v23;
  if (v23 >> 62)
  {
    v25 = __CocoaSet.count.getter();
    if (v25)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_18:
      v26 = 0;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](v26, v24);
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v27 = *(v24 + 8 * v26 + 32);

          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        Scene.eventService.getter((v0 + 56));
        v29 = *(v0 + 80);
        v30 = *(v0 + 88);
        v31 = __swift_project_boxed_opaque_existential_1((v0 + 56), v29);
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
        *(v0 + 128) = 0;
        EventService.publish<A>(_:on:componentType:)(v31, v0 + 96, 0, 0, v29, &type metadata for ImagePresentationComponent.Spatial3DImage.GenerationCancelledEvent, v30, &protocol witness table for ImagePresentationComponent.Spatial3DImage.GenerationCancelledEvent);

        outlined destroy of BodyTrackingComponent?(v0 + 96, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        ++v26;
      }

      while (v28 != v25);
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v32 = *(v0 + 8);

  return v32();
}

Swift::Float __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ImagePresentationComponent.Spatial3DImage.currentGenerationProgress()()
{
  if ((*(v0 + 108) & 1) == 0)
  {
    return *(v0 + 104);
  }

  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, ImageLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C1358000, v2, v3, "Spatial3DImage.generate() has yet to be called", v4, 2u);
    MEMORY[0x1C6902A30](v4, -1, -1);
  }

  lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
  swift_allocError();
  *v5 = 11;
  swift_willThrow();
  return result;
}

uint64_t ImagePresentationComponent.Spatial3DImage.generate()()
{
  v1[26] = v0;
  v2 = type metadata accessor for CancellationError();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v4 = *(v3 + 64) + 15;
  v1[29] = swift_task_alloc();
  v5 = type metadata accessor for ALCService.GenerationOption();
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = *(v6 + 64) + 15;
  v1[32] = swift_task_alloc();
  v8 = type metadata accessor for ALCConfiguration();
  v1[33] = v8;
  v9 = *(v8 - 8);
  v1[34] = v9;
  v10 = *(v9 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), 0, 0);
}

{
  v1 = *(v0 + 208);
  if (*(v1 + 88))
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, ImageLogger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      v6 = 0;
      goto LABEL_16;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1358000, v3, v4, "Spatial3DImage has already been generated and cannot be generated again", v5, 2u);
    v6 = 0;
    goto LABEL_15;
  }

  if ((*(v1 + 108) & 1) == 0)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, ImageLogger);
    v3 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v11))
    {
      v6 = 1;
LABEL_16:

      lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
      v12 = swift_allocError();
      *v13 = v6;
      swift_willThrow();
      *(v0 + 488) = v12;
      v14 = *(v0 + 232);
      v15 = *(v0 + 216);
      *(v0 + 200) = v12;
      v16 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        v18 = *(v0 + 224);
        v17 = *(v0 + 232);
        v19 = *(v0 + 216);

        (*(v18 + 8))(v17, v19);
        v20 = swift_task_alloc();
        *(v0 + 496) = v20;
        *v20 = v0;
        v20[1] = ImagePresentationComponent.Spatial3DImage.generate();
        v21 = *(v0 + 208);

        return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
      }

      else
      {

        v22 = swift_task_alloc();
        *(v0 + 504) = v22;
        *v22 = v0;
        v22[1] = ImagePresentationComponent.Spatial3DImage.generate();
        v23 = *(v0 + 208);

        return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()();
      }
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1358000, v3, v11, "Spatial3DImage is already in the process of generating", v5, 2u);
    v6 = 1;
LABEL_15:
    MEMORY[0x1C6902A30](v5, -1, -1);
    goto LABEL_16;
  }

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = ImagePresentationComponent.Spatial3DImage.generate();
  v8 = *(v0 + 208);

  return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationStarted()();
}

{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), 0, 0);
}

{
  v1 = *(v0 + 208);
  v2 = *(v1 + 64);
  v3 = CGImageSourceRef.monoImage(index:)(*(v1 + 72));
  v5 = v4;
  *(v0 + 304) = v3;
  if (v4)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, ImageLogger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C1358000, v7, v8, "Spatial3DImage was unable to create source image using monoImage()", v9, 2u);
      MEMORY[0x1C6902A30](v9, -1, -1);
    }

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    v10 = swift_allocError();
    *v11 = 6;
    swift_willThrow();

    goto LABEL_38;
  }

  v12 = v3;
  Width = CGImageGetWidth(v12);
  Height = CGImageGetHeight(v12);

  if (Height >= Width)
  {
    v15 = Width;
  }

  else
  {
    v15 = Height;
  }

  if (v15 < 320)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, ImageLogger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C1358000, v17, v18, "Spatial3DImage input image is too small (width and height must be at least 320px)", v19, 2u);
      MEMORY[0x1C6902A30](v19, -1, -1);
    }

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    v10 = swift_allocError();
    v21 = 2;
LABEL_37:
    *v20 = v21;
    swift_willThrow();

    goto LABEL_38;
  }

  v22 = CGImageGetWidth(v12);
  v23 = CGImageGetHeight(v12);
  if (v23 <= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  if (v24 > 0x4000)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, ImageLogger);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C1358000, v26, v27, "Spatial3DImage input image is too large (width and height must be smaller than 16384px)", v28, 2u);
      MEMORY[0x1C6902A30](v28, -1, -1);
    }

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    v10 = swift_allocError();
    v21 = 3;
    goto LABEL_37;
  }

  v29 = CGImageGetWidth(v12);
  v30 = v29 / CGImageGetHeight(v12);
  if (v30 < 0.333333333)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, ImageLogger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1C1358000, v32, v33, "Spatial3DImage input image aspect ratio is too tall (aspect ratio must be at least 1:3)", v34, 2u);
      MEMORY[0x1C6902A30](v34, -1, -1);
    }

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    v10 = swift_allocError();
    v21 = 4;
    goto LABEL_37;
  }

  if (v30 > 3.0)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, ImageLogger);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1C1358000, v36, v37, "Spatial3DImage input image aspect ratio is too wide (aspect ratio must be at most 3:1)", v38, 2u);
      MEMORY[0x1C6902A30](v38, -1, -1);
    }

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    v10 = swift_allocError();
    v21 = 5;
    goto LABEL_37;
  }

  v50 = *(v0 + 208);
  v51 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  *(v0 + 312) = [v51 imageByApplyingCGOrientation_];

  static Task<>.checkCancellation()();
  *(v0 + 320) = 0;
  v52 = *(v0 + 288);
  v53 = *(v0 + 240);
  v54 = *(v0 + 248);
  v97 = *(v0 + 208);
  ALCConfiguration.init()();
  v55 = ALCConfiguration.sorterOptions.modify();
  ALCSorterOptions.sortingMode.setter();
  v55(v0 + 16, 0);
  v56 = ALCConfiguration.bakingOptions.modify();
  ALCBakingOptions.type.setter();
  v56(v0 + 48, 0);
  v57 = ALCConfiguration.bakingOptions.modify();
  ALCBakingOptions.enableRefinement.setter();
  v57(v0 + 80, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16AlchemistService10ALCServiceC16GenerationOptionO_yptGMd, &_ss23_ContiguousArrayStorageCy16AlchemistService10ALCServiceC16GenerationOptionO_yptGMR);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16AlchemistService10ALCServiceC16GenerationOptionO_yptMd, &_s16AlchemistService10ALCServiceC16GenerationOptionO_yptMR);
  v59 = *(*(v58 - 8) + 72);
  v60 = (*(*(v58 - 8) + 80) + 32) & ~*(*(v58 - 8) + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1C1897FC0;
  v62 = v61 + v60;
  v63 = (v62 + *(v58 + 48));
  v64 = *MEMORY[0x1E698A840];
  v65 = *(v54 + 104);
  *(v0 + 328) = v65;
  *(v0 + 336) = (v54 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  (v65)(v62, v64, v53);
  v63[3] = type metadata accessor for AdjustmentParams();
  __swift_allocate_boxed_opaque_existential_1(v63);
  AdjustmentParams.init()();
  v66 = (v62 + v59 + *(v58 + 48));
  v67 = *MEMORY[0x1E698A810];
  v65();
  v68 = type metadata accessor for ALCService.ClientName();
  v66[3] = v68;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  (*(*(v68 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E698A740], v68);
  v70 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16AlchemistService10ALCServiceC16GenerationOptionO_ypTt0g5Tf4g_n(v61);
  *(v0 + 344) = v70;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v97 + 84))
  {
    *(v0 + 392) = v70;
    v71 = MTLCreateSystemDefaultDevice();
    *(v0 + 400) = v71;
    if (!v71)
    {
      v88 = *(v0 + 304);
      v87 = *(v0 + 312);
      v89 = *(v0 + 288);
      v90 = *(v0 + 264);
      v91 = *(v0 + 272);

      lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
      v10 = swift_allocError();
      *v92 = 7;
      swift_willThrow();

      (*(v91 + 8))(v89, v90);
LABEL_38:
      *(v0 + 488) = v10;
      v39 = *(v0 + 232);
      v40 = *(v0 + 216);
      *(v0 + 200) = v10;
      v41 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        v43 = *(v0 + 224);
        v42 = *(v0 + 232);
        v44 = *(v0 + 216);

        (*(v43 + 8))(v42, v44);
        v45 = swift_task_alloc();
        *(v0 + 496) = v45;
        *v45 = v0;
        v45[1] = ImagePresentationComponent.Spatial3DImage.generate();
        v46 = *(v0 + 208);

        return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
      }

      else
      {

        v48 = swift_task_alloc();
        *(v0 + 504) = v48;
        *v48 = v0;
        v48[1] = ImagePresentationComponent.Spatial3DImage.generate();
        v49 = *(v0 + 208);

        return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()();
      }
    }

    v72 = *(v0 + 320);
    v73 = *(v0 + 280);
    v74 = *(v0 + 288);
    v75 = *(v0 + 264);
    v76 = *(v0 + 272);
    v77 = *(v0 + 208);
    v78 = swift_allocObject();
    *(v0 + 408) = v78;
    *(v78 + 16) = 0;
    (*(v76 + 16))(v73, v74, v75);
    v79 = swift_allocObject();
    *(v79 + 16) = v77;
    *(v79 + 24) = v78;
    v80 = type metadata accessor for ALCService();
    v81 = *(v80 + 48);
    v82 = *(v80 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();

    *(v0 + 416) = ALCService.init(mtlDevice:configuration:eventHandler:)();
    if (v72)
    {
      v10 = v72;
      v84 = *(v0 + 304);
      v83 = *(v0 + 312);
      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));

      swift_unknownObjectRelease();

      goto LABEL_38;
    }

    v93 = *(MEMORY[0x1E698A870] + 4);
    v98 = (*MEMORY[0x1E698A870] + MEMORY[0x1E698A870]);
    v94 = swift_task_alloc();
    *(v0 + 424) = v94;
    *v94 = v0;
    v94[1] = ImagePresentationComponent.Spatial3DImage.generate();
    v95 = *(v0 + 312);
    v96 = *(v0 + 288);

    return v98(v95, v96, v70);
  }

  else
  {
    *(v0 + 512) = *(*(v0 + 208) + 80);
    *(v0 + 352) = *(v50 + 16);
    *(v0 + 360) = type metadata accessor for MainActor();
    *(v0 + 368) = static MainActor.shared.getter();
    v86 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), v86, v85);
  }
}

{
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);

  v3 = *(v2 + 16);
  RETextureAssetGetSize();
  *(v0 + 516) = v4;

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), 0, 0);
}

{
  v1 = *(v0 + 360);
  *(v0 + 376) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), v3, v2);
}

{
  v1 = v0[47];
  v2 = v0[44];

  v3 = *(v2 + 16);
  RETextureAssetGetSize();
  v0[48] = v4;

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), 0, 0);
}

{
  v49 = HIDWORD(*(v0 + 384));
  v1 = *(v0 + 516);
  v2 = *(v0 + 336);
  result = (*(v0 + 328))(*(v0 + 256), *MEMORY[0x1E698A820], *(v0 + 240));
  v4 = v1 * v1;
  v5 = v49 * v49;
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
    __break(1u);
    return result;
  }

  v8 = *(v0 + 344);
  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v11 = *(v0 + 240);
  v12 = sqrtf(v7 / 1872.0) * *(v0 + 512);
  *(v0 + 136) = MEMORY[0x1E69E6448];
  *(v0 + 112) = v12;
  outlined init with take of Any((v0 + 112), (v0 + 144));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 144), v9, isUniquelyReferenced_nonNull_native);
  (*(v10 + 8))(v9, v11);
  v14 = v8;
  *(v0 + 392) = v8;
  v15 = MTLCreateSystemDefaultDevice();
  *(v0 + 400) = v15;
  v16 = *(v0 + 264);
  v17 = *(v0 + 272);
  if (!v15)
  {
    v31 = *(v0 + 304);
    v30 = *(v0 + 312);
    v32 = *(v0 + 288);

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    v27 = swift_allocError();
    *v33 = 7;
    swift_willThrow();

    (*(v17 + 8))(v32, v16);
LABEL_6:
    *(v0 + 488) = v27;
    v34 = *(v0 + 232);
    v35 = *(v0 + 216);
    *(v0 + 200) = v27;
    v36 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v38 = *(v0 + 224);
      v37 = *(v0 + 232);
      v39 = *(v0 + 216);

      (*(v38 + 8))(v37, v39);
      v40 = swift_task_alloc();
      *(v0 + 496) = v40;
      *v40 = v0;
      v40[1] = ImagePresentationComponent.Spatial3DImage.generate();
      v41 = *(v0 + 208);

      return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
    }

    else
    {

      v42 = swift_task_alloc();
      *(v0 + 504) = v42;
      *v42 = v0;
      v42[1] = ImagePresentationComponent.Spatial3DImage.generate();
      v43 = *(v0 + 208);

      return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()();
    }
  }

  v18 = *(v0 + 320);
  v19 = *(v0 + 280);
  v20 = *(v0 + 288);
  v21 = *(v0 + 208);
  v22 = swift_allocObject();
  *(v0 + 408) = v22;
  *(v22 + 16) = 0;
  (*(v17 + 16))(v19, v20, v16);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  v24 = type metadata accessor for ALCService();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();

  *(v0 + 416) = ALCService.init(mtlDevice:configuration:eventHandler:)();
  if (v18)
  {
    v27 = v18;
    v29 = *(v0 + 304);
    v28 = *(v0 + 312);
    (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));

    swift_unknownObjectRelease();

    goto LABEL_6;
  }

  v44 = *(MEMORY[0x1E698A870] + 4);
  v48 = (*MEMORY[0x1E698A870] + MEMORY[0x1E698A870]);
  v45 = swift_task_alloc();
  *(v0 + 424) = v45;
  *v45 = v0;
  v45[1] = ImagePresentationComponent.Spatial3DImage.generate();
  v46 = *(v0 + 312);
  v47 = *(v0 + 288);

  return v48(v46, v47, v14);
}

{
  v1 = *(v0 + 440);
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 432);
    v4 = *(v0 + 408);
    v5 = *(v0 + 416);
    v6 = *(v0 + 400);
    v8 = *(v0 + 304);
    v7 = *(v0 + 312);
    (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
    swift_unknownObjectRelease();

    goto LABEL_5;
  }

  v9 = *(v0 + 408);
  swift_beginAccess();
  v2 = *(v9 + 16);
  v10 = *(v0 + 432);
  if (v2)
  {
    v11 = *(v0 + 408);
    v12 = *(v0 + 416);
    v13 = *(v0 + 400);
    v14 = *(v0 + 304);
    v15 = *(v0 + 312);
    v16 = *(v0 + 272);
    v32 = *(v0 + 264);
    v33 = *(v0 + 288);
    swift_willThrow();
    v17 = v2;

    swift_unknownObjectRelease();

    (*(v16 + 8))(v33, v32);
LABEL_5:

    *(v0 + 488) = v2;
    v18 = *(v0 + 232);
    v19 = *(v0 + 216);
    *(v0 + 200) = v2;
    v20 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v22 = *(v0 + 224);
      v21 = *(v0 + 232);
      v23 = *(v0 + 216);

      (*(v22 + 8))(v21, v23);
      v24 = swift_task_alloc();
      *(v0 + 496) = v24;
      *v24 = v0;
      v24[1] = ImagePresentationComponent.Spatial3DImage.generate();
      v25 = *(v0 + 208);

      return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
    }

    else
    {

      v27 = swift_task_alloc();
      *(v0 + 504) = v27;
      *v27 = v0;
      v27[1] = ImagePresentationComponent.Spatial3DImage.generate();
      v28 = *(v0 + 208);

      return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()();
    }
  }

  v29 = v10;
  v30 = swift_task_alloc();
  *(v0 + 448) = v30;
  *v30 = v0;
  v30[1] = ImagePresentationComponent.Spatial3DImage.generate();
  v31 = *(v0 + 432);

  return specialized MXISceneResource.__allocating_init(mxiScene:)(v31);
}

{
  v1 = v0[26];
  v2 = *(v1 + 88);
  *(v1 + 88) = v0[58];

  v3 = swift_task_alloc();
  v0[59] = v3;
  *v3 = v0;
  v3[1] = ImagePresentationComponent.Spatial3DImage.generate();
  v4 = v0[26];

  return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCompleted()();
}

{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = ImagePresentationComponent.Spatial3DImage.generate();
  }

  else
  {
    v3 = ImagePresentationComponent.Spatial3DImage.generate();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v4 = *(v0 + 400);
  v5 = *(v0 + 304);
  v6 = *(v0 + 288);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);

  swift_unknownObjectRelease();

  (*(v8 + 8))(v6, v7);

  v9 = *(v0 + 456);
  *(v0 + 200) = v9;
  *(v0 + 488) = v9;
  v10 = *(v0 + 232);
  v11 = *(v0 + 216);
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 216);

    (*(v14 + 8))(v13, v15);
    v16 = swift_task_alloc();
    *(v0 + 496) = v16;
    *v16 = v0;
    v16[1] = ImagePresentationComponent.Spatial3DImage.generate();
    v17 = *(v0 + 208);

    return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
  }

  else
  {

    v19 = swift_task_alloc();
    *(v0 + 504) = v19;
    *v19 = v0;
    v19[1] = ImagePresentationComponent.Spatial3DImage.generate();
    v20 = *(v0 + 208);

    return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()();
  }
}

{
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v4 = *(v0 + 400);
  v5 = *(v0 + 304);
  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 264);
  v9 = *(v0 + 272);
  v12 = *(v0 + 256);
  v13 = *(v0 + 232);

  swift_unknownObjectRelease();

  (*(v9 + 8))(v6, v8);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(*v0 + 496);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), 0, 0);
}

{
  lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
  swift_allocError();
  *v1 = 10;
  swift_willThrow();

  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 256);
  v5 = *(v0 + 232);

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = *(*v0 + 504);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.generate(), 0, 0);
}

{
  v1 = v0[61];
  swift_willThrow();
  v2 = v0[61];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[32];
  v6 = v0[29];

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 400);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);

  swift_unknownObjectRelease();

  (*(v7 + 8))(v5, v6);

  v8 = *(v0 + 440);
  *(v0 + 200) = v8;
  *(v0 + 488) = v8;
  v9 = *(v0 + 232);
  v10 = *(v0 + 216);
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v14 = *(v0 + 216);

    (*(v13 + 8))(v12, v14);
    v15 = swift_task_alloc();
    *(v0 + 496) = v15;
    *v15 = v0;
    v15[1] = ImagePresentationComponent.Spatial3DImage.generate();
    v16 = *(v0 + 208);

    return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
  }

  else
  {

    v18 = swift_task_alloc();
    *(v0 + 504) = v18;
    *v18 = v0;
    v18[1] = ImagePresentationComponent.Spatial3DImage.generate();
    v19 = *(v0 + 208);

    return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()();
  }
}

{
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v4 = *(v0 + 400);
  v5 = *(v0 + 304);
  v6 = *(v0 + 288);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);

  swift_unknownObjectRelease();

  (*(v8 + 8))(v6, v7);

  v9 = *(v0 + 480);
  *(v0 + 200) = v9;
  *(v0 + 488) = v9;
  v10 = *(v0 + 232);
  v11 = *(v0 + 216);
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 216);

    (*(v14 + 8))(v13, v15);
    v16 = swift_task_alloc();
    *(v0 + 496) = v16;
    *v16 = v0;
    v16[1] = ImagePresentationComponent.Spatial3DImage.generate();
    v17 = *(v0 + 208);

    return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
  }

  else
  {

    v19 = swift_task_alloc();
    *(v0 + 504) = v19;
    *v19 = v0;
    v19[1] = ImagePresentationComponent.Spatial3DImage.generate();
    v20 = *(v0 + 208);

    return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationFailed()();
  }
}

uint64_t ImagePresentationComponent.Spatial3DImage.generate()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *v2;
  *(v4 + 432) = a1;
  *(v4 + 440) = v1;

  v7 = *(v3 + 392);

  if (v1)
  {
    v8 = ImagePresentationComponent.Spatial3DImage.generate();
  }

  else
  {
    v8 = ImagePresentationComponent.Spatial3DImage.generate();
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v7 = ImagePresentationComponent.Spatial3DImage.generate();
  }

  else
  {
    *(v4 + 464) = a1;
    v7 = ImagePresentationComponent.Spatial3DImage.generate();
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

BOOL closure #1 in ImagePresentationComponent.Spatial3DImage.generate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v40[-v9];
  v11 = type metadata accessor for ALCService.GenerationEvent();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v16, a1, v11, v14);
  v17 = (*(v12 + 88))(v16, v11);
  if (v17 == *MEMORY[0x1E698A7F8])
  {
    (*(v12 + 96))(v16, v11);
    v18 = v16[1];
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v19 = (*v16 / v18) * 100.0;
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = a3;
    *(v21 + 40) = v19;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in ImagePresentationComponent.Spatial3DImage.generate(), v21);

    static Task<>.checkCancellation()();
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x1E698A808])
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, ImageLogger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_16;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Spatial3DImage: Alchemist generation started";
LABEL_15:
    _os_log_impl(&dword_1C1358000, v23, v24, v26, v25, 2u);
    MEMORY[0x1C6902A30](v25, -1, -1);
LABEL_16:

    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x1E698A7E8])
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, ImageLogger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_16;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Spatial3DImage: Alchemist generation finished";
    goto LABEL_15;
  }

  if (v17 == *MEMORY[0x1E698A7D0])
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, ImageLogger);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1C1358000, v30, v31, "Spatial3DImage: Alchemist generation failed", v32, 2u);
      MEMORY[0x1C6902A30](v32, -1, -1);
    }

    lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError();
    v33 = swift_allocError();
    *v34 = 9;
    swift_beginAccess();
    v35 = *(a4 + 16);
    *(a4 + 16) = v33;
  }

  else
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, ImageLogger);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1C1358000, v37, v38, "Spatial3DImage: Generation reported an unknown event", v39, 2u);
      MEMORY[0x1C6902A30](v39, -1, -1);
    }

    (*(v12 + 8))(v16, v11);
  }

LABEL_17:
  swift_beginAccess();
  return *(a4 + 16) == 0;
}

uint64_t closure #1 in closure #1 in ImagePresentationComponent.Spatial3DImage.generate()(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a1;
  *(v5 + 16) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ImagePresentationComponent.Spatial3DImage.generate(), 0, 0);
}

uint64_t closure #1 in closure #1 in ImagePresentationComponent.Spatial3DImage.generate()()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ImagePresentationComponent.Spatial3DImage.generate(), v2, v1);
}

{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationProgress(percent:)(v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of [String : String](a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of BodyTrackingComponent?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of BodyTrackingComponent?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of BodyTrackingComponent?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationStarted()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationStarted()();
}

uint64_t ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCompleted(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + 88);
  *(v1 + 88) = a1;

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCompleted(with:), v9);
}

uint64_t closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCompleted(with:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCompleted(with:);

  return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCompleted()();
}

{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCompleted(with:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, ImageLogger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C1358000, v4, v5, "Externally provided MXIScene Resource was not valid: %@", v8, 0xCu);
    outlined destroy of BodyTrackingComponent?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1C6902A30](v9, -1, -1);
    MEMORY[0x1C6902A30](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationStarted()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, a2, v9);
}

uint64_t closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCancelled()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return ImagePresentationComponent.Spatial3DImage.notifyDependentsOfGenerationCancelled()();
}

uint64_t specialized REEventDispatcher.receive(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22[-v8];
  v10 = *(v0 + 64);
  os_unfair_lock_lock(v10 + 4);
  swift_beginAccess();
  v11 = *(v0 + 72);

  os_unfair_lock_unlock(v10 + 4);
  if (v11 && (swift_beginAccess(), (v12 = *(v11 + 16)) != 0))
  {
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = *(v12 + 16);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGGGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v16 + 24) = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGGGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v17 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v18 = *(v2 + 48);
  while (v18(v9, 1, v1) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v9, v5, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMR);
    v19 = *v5;
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v5, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v20 = static Subscribers.Demand.unlimited.getter();

  return v20;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22[-v8];
  v10 = *(v0 + 64);
  os_unfair_lock_lock(v10 + 4);
  swift_beginAccess();
  v11 = *(v0 + 72);

  os_unfair_lock_unlock(v10 + 4);
  if (v11 && (swift_beginAccess(), (v12 = *(v11 + 16)) != 0))
  {
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = *(v12 + 16);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGGGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v16 + 24) = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGGGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v17 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v18 = *(v2 + 48);
  while (v18(v9, 1, v1) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v9, v5, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMR);
    v19 = *v5;
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v5, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v20 = static Subscribers.Demand.unlimited.getter();

  return v20;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22[-v8];
  v10 = *(v0 + 64);
  os_unfair_lock_lock(v10 + 4);
  swift_beginAccess();
  v11 = *(v0 + 72);

  os_unfair_lock_unlock(v10 + 4);
  if (v11 && (swift_beginAccess(), (v12 = *(v11 + 16)) != 0))
  {
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = *(v12 + 16);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGGGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v16 + 24) = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGGGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v17 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v18 = *(v2 + 48);
  while (v18(v9, 1, v1) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v9, v5, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMR);
    v19 = *v5;
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v5, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v20 = static Subscribers.Demand.unlimited.getter();

  return v20;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22[-v8];
  v10 = *(v0 + 64);
  os_unfair_lock_lock(v10 + 4);
  swift_beginAccess();
  v11 = *(v0 + 72);

  os_unfair_lock_unlock(v10 + 4);
  if (v11 && (swift_beginAccess(), (v12 = *(v11 + 16)) != 0))
  {
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = *(v12 + 16);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGGGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v16 + 24) = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGGGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v17 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v18 = *(v2 + 48);
  while (v18(v9, 1, v1) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v9, v5, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMR);
    v19 = *v5;
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v5, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v20 = static Subscribers.Demand.unlimited.getter();

  return v20;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22[-v8];
  v10 = *(v0 + 64);
  os_unfair_lock_lock(v10 + 4);
  swift_beginAccess();
  v11 = *(v0 + 72);

  os_unfair_lock_unlock(v10 + 4);
  if (v11 && (swift_beginAccess(), (v12 = *(v11 + 16)) != 0))
  {
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = *(v12 + 16);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGGGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v16 + 24) = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGGGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v17 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v18 = *(v2 + 48);
  while (v18(v9, 1, v1) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v9, v5, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMR);
    v19 = *v5;
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v5, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v20 = static Subscribers.Demand.unlimited.getter();

  return v20;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGSgMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22[-v8];
  v10 = *(v0 + 64);
  os_unfair_lock_lock(v10 + 4);
  swift_beginAccess();
  v11 = *(v0 + 72);

  os_unfair_lock_unlock(v10 + 4);
  if (v11 && (swift_beginAccess(), (v12 = *(v11 + 16)) != 0))
  {
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = *(v12 + 16);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGGGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v16 + 24) = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGGGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v17 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v18 = *(v2 + 48);
  while (v18(v9, 1, v1) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v9, v5, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMR);
    v19 = *v5;
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v5, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v20 = static Subscribers.Demand.unlimited.getter();

  return v20;
}

uint64_t specialized REEventDispatcher.receive(_:)(float a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGSgMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  *&v24[15] = a1;
  v12 = *(v1 + 64);
  os_unfair_lock_lock(v12 + 4);
  swift_beginAccess();
  v13 = *(v1 + 72);

  os_unfair_lock_unlock(v12 + 4);
  if (v13 && (swift_beginAccess(), (v14 = *(v13 + 16)) != 0))
  {
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v16 = *(v14 + 16);
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v16;
    v17[4] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGGGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v18 + 24) = v17;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGGGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v19 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v20 = *(v4 + 48);
  while (v20(v11, 1, v3) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v11, v7, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMR);
    v21 = *v7;
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v7, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v22 = static Subscribers.Demand.unlimited.getter();

  return v22;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t lazy protocol witness table accessor for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError()
{
  result = lazy protocol witness table cache variable for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError;
  if (!lazy protocol witness table cache variable for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError;
  if (!lazy protocol witness table cache variable for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError()
{
  result = lazy protocol witness table cache variable for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError;
  if (!lazy protocol witness table cache variable for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError;
  if (!lazy protocol witness table cache variable for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePresentationComponent.Spatial3DImageError and conformance ImagePresentationComponent.Spatial3DImageError);
  }

  return result;
}

uint64_t partial apply for closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationStarted()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationStarted()();
}

uint64_t partial apply for closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCompleted(with:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCompleted(with:)();
}

uint64_t partial apply for closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCancelled()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in ImagePresentationComponent.Spatial3DImage.notifyComponentsOfExternalGenerationCancelled()();
}

uint64_t dispatch thunk of ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:)(uint64_t a1)
{
  v4 = *(v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return v8(a1);
}

uint64_t dispatch thunk of ImagePresentationComponent.Spatial3DImage.generate()()
{
  v2 = *(*v0 + 280);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return v6();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA30AccessibilityCustomActionEvent_ps5NeverOG_G3key_AL7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA30AccessibilityCustomActionEvent_ps5NeverOG_G3key_AL7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMR, a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA27AccessibilityDecrementEvent_ps5NeverOG_G3key_AL7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA27AccessibilityDecrementEvent_ps5NeverOG_G3key_AL7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMR, a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA27AccessibilityIncrementEvent_ps5NeverOG_G3key_AL7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA27AccessibilityIncrementEvent_ps5NeverOG_G3key_AL7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMR, a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26AccessibilityActivateEvent_ps5NeverOG_G3key_AL7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26AccessibilityActivateEvent_ps5NeverOG_G3key_AL7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMR, a1);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(v1[2], v1[3], v1[4], &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA33AccessibilityRotorNavigationEvent_ps5NeverOG_G3key_AL7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA33AccessibilityRotorNavigationEvent_ps5NeverOG_G3key_AL7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMR, a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t partial apply for closure #1 in closure #1 in ImagePresentationComponent.Spatial3DImage.generate()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in closure #1 in ImagePresentationComponent.Spatial3DImage.generate()(v7, a1, v4, v5, v6);
}

uint64_t outlined init with take of AnySubscriber<EngineRenderEvent, Never>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_20Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  v4 = *(v2 + 32);

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

char *specialized static EmphasizeAnimations.createEmphasizeFlipAnimation(style:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 125, 0, MEMORY[0x1E69E7CC0]);
      v1 = &static EmphasizeAnimations.playfulFlipAnimationData;
    }

    else
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 183, 0, MEMORY[0x1E69E7CC0]);
      v1 = &static EmphasizeAnimations.wildFlipAnimationData;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 63, 0, MEMORY[0x1E69E7CC0]);
    v1 = &static EmphasizeAnimations.basicFlipAnimationData;
  }

  v2 = *v1;

  specialized static EmphasizeAnimations.makeTransforms(_:_:)(v3, &v5);

  return v5;
}

uint64_t GestureComponent._gesture.setter(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t GestureComponent._responder.setter(uint64_t a1)
{
  v3 = *(v1 + 8);
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t GestureComponent.init(object:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

id one-time initialization function for shared()
{
  type metadata accessor for __RKSceneAssetLookupTable();
  v0 = swift_allocObject();
  result = [objc_opt_self() strongToWeakObjectsMapTable];
  *(v0 + 16) = result;
  static __RKSceneAssetLookupTable.shared = v0;
  return result;
}

uint64_t static __RKSceneAssetLookupTable.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

id __RKSceneAssetLookupTable.reSceneAsset(for:)()
{
  v1 = *(v0 + 16);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 objectForKey_];

  return v3;
}

void __RKSceneAssetLookupTable.registerRESceneAsset(_:for:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v3 setObject:a1 forKey:isa];
}

uint64_t __RKSceneAssetLookupTable.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t QueryResult.init()@<X0>(uint64_t *a1@<X8>)
{
  result = static Array._allocateUninitialized(_:)();
  *a1 = result;
  return result;
}

uint64_t QueryResult.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1C68F3760](*v2, v5);
  v7 = v2[1];
  if (v7 != v6)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v11 = *(v5 - 8);
      result = (*(v11 + 16))(a2, v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v7, v5);
      v12 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
LABEL_7:
        v2[1] = v12;
        return (*(v11 + 56))(a2, 0, 1, v5);
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      v11 = *(v5 - 8);
      if (*(v11 + 64) != 8)
      {
LABEL_12:
        __break(1u);
        return result;
      }

      v13 = result;
      (*(v11 + 16))(a2, &v13, v5);
      result = swift_unknownObjectRelease();
      v12 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v8 = *(*(v5 - 8) + 56);

  return v8(a2, 1, 1, v5);
}

uint64_t QueryResult.makeIterator()@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance QueryResult<A>@<X0>(void *a1@<X8>)
{
  QueryResult.makeIterator()(a1);
  v2 = *v1;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance QueryResult<A>()
{
  v1 = specialized Sequence._copyToContiguousArray()();
  v2 = *v0;

  return v1;
}

uint64_t type metadata instantiation function for QueryResult()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryResult.Iterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized static __RKVisibilityShowRiseAnimation.createVisibilityShowRiseAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, double a2, float a3, float32x4_t a4, uint64_t a5, _BYTE *a6)
{
  v54 = a1[1];
  if (*a6)
  {
    if (*a6 == 1)
    {
      v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 109, 0, MEMORY[0x1E69E7CC0]);
      v7 = &outlined read-only object #1 of static __RKVisibilityShowRiseAnimation.createVisibilityShowRiseAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 94, 0, MEMORY[0x1E69E7CC0]);
      v7 = &outlined read-only object #2 of static __RKVisibilityShowRiseAnimation.createVisibilityShowRiseAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 109, 0, MEMORY[0x1E69E7CC0]);
    v7 = &outlined read-only object #0 of static __RKVisibilityShowRiseAnimation.createVisibilityShowRiseAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v7, &v56);
  rawValue = v56._rawValue;
  if (!*(v56._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v9 = rawValue[2];
  if (v9)
  {
    v10 = &rawValue[6 * v9];
    v52 = *v10;
    v53 = *(v10 - 1);
    v51 = v10[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 + 1, 1, rawValue);
LABEL_9:
  v9 = rawValue[2];
  v11 = rawValue[3];
  v12 = v9 + 1;
  if (v9 >= v11 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v9 + 1, 1, rawValue);
  }

  rawValue[2] = v12;
  v13 = rawValue + 2;
  v14 = &rawValue[6 * v9 + 4];
  *v14 = v53;
  v14[1] = v52;
  v14[2] = v51;
  v56._rawValue = rawValue;
  v15 = 0.0;
  v16 = 8;
  do
  {
    v17 = *&rawValue[v16];
    v18 = fabsf(*&v17);
    if ((LODWORD(v18) & 0x7FFFFF) != 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = v18;
    }

    if ((~LODWORD(v18) & 0x7F800000) != 0)
    {
      v19 = v18;
    }

    if (v18 >= v15)
    {
      v15 = v19;
    }

    v20 = fabsf(*(&v17 + 1));
    if (v20 >= v15)
    {
      if ((LODWORD(v20) & 0x7FFFFF) == 0)
      {
        v15 = v20;
      }

      if ((~LODWORD(v20) & 0x7F800000) != 0)
      {
        v15 = v20;
      }
    }

    v21 = fabsf(*(&v17 + 2));
    if (v21 >= v15)
    {
      if ((~LODWORD(v21) & 0x7F800000) != 0)
      {
        v15 = v21;
      }

      else if ((LODWORD(v21) & 0x7FFFFF) == 0)
      {
        v15 = v21;
      }
    }

    v16 += 6;
    --v12;
  }

  while (v12);
  v22 = 0;
  v23 = a3 / v15;
  v24 = v15 <= 0.0;
  v25 = 1.0;
  if (!v24)
  {
    v25 = v23;
  }

  v26 = vmulq_f32(v54, v54);
  *v26.i8 = vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
  v26.i32[0] = vadd_f32(*v26.i8, vdup_lane_s32(*v26.i8, 1)).u32[0];
  v27 = vrecpe_f32(v26.u32[0]);
  v28 = vmul_f32(v27, vrecps_f32(v26.u32[0], v27));
  v29 = vmulq_n_f32(vmulq_f32(v54, xmmword_1C1899C90), vmul_f32(v28, vrecps_f32(v26.u32[0], v28)).f32[0]);
  v30 = vnegq_f32(a4);
  v31 = vtrn2q_s32(a4, vtrn1q_s32(a4, v30));
  v32 = vrev64q_s32(a4);
  v32.i32[0] = v30.i32[1];
  v32.i32[3] = v30.i32[2];
  v33 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a4, v30, 8uLL), *v29.f32, 1), vextq_s8(v31, v31, 8uLL), v29.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(a4, v29, 3), v32, v29, 2));
  v34 = vmulq_f32(v33, xmmword_1C1899C90);
  v35 = vnegq_f32(v34);
  v36 = vtrn2q_s32(v34, vtrn1q_s32(v34, v35));
  v37 = vextq_s8(v36, v36, 8uLL);
  v38 = vrev64q_s32(v34);
  v38.i32[0] = v35.i32[1];
  v38.i32[3] = v35.i32[2];
  v39 = vdupq_lane_s32(*v33.f32, 0);
  v40 = vextq_s8(v34, v35, 8uLL);
  v41 = vdupq_laneq_s32(v33, 2);
  v42 = 8;
  do
  {
    if (v22 >= *v13)
    {
      __break(1u);
      goto LABEL_40;
    }

    v43 = vsubq_f32(*&rawValue[v42], *&v13[6 * *v13]);
    v44 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v40, vmuls_lane_f32(v25, *v43.f32, 1)), v37, v25 * v43.f32[0]), v38, vmuls_lane_f32(v25, v43, 2));
    v45 = vnegq_f32(v44);
    v46 = vtrn2q_s32(v44, vtrn1q_s32(v44, v45));
    v47 = vrev64q_s32(v44);
    v47.i32[0] = v45.i32[1];
    v47.i32[3] = v45.i32[2];
    v48 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v44, v33, 3), v47, v41), vmlaq_f32(vmulq_lane_f32(vextq_s8(v44, v45, 8uLL), *v33.f32, 1), vextq_s8(v46, v46, 8uLL), v39));
    v48.i32[3] = a4.i32[3];
    ++v22;
    *&rawValue[v42] = v48;
    v42 += 6;
  }

  while (v9 + 1 != v22);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v50 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float SIMD3<>._xy.setter(__n128 a1)
{
  a1.n128_u64[1] = v1->n128_u32[2];
  *v1 = a1;
  return a1.n128_f32[0];
}

float (*SIMD3<>._xy.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  *a1 = v3;
  *(v3 + 24) = v1;
  v4 = *v1;
  *v3 = *v1;
  *(v3 + 16) = v4;
  return SIMD3<>._xy.modify;
}

float SIMD3<>._xy.modify(uint64_t *a1)
{
  v1 = *a1;
  *&v2 = *(v1 + 16);
  *(&v2 + 1) = *(v1 + 8);
  **(v1 + 24) = v2;
  free(v1);
  return result;
}

__n128 SIMD4<>._xyz.setter(__n128 result)
{
  result.n128_u32[3] = v1->n128_u32[3];
  *v1 = result;
  return result;
}

__n128 (*SIMD4<>._xyz.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *v1;
  *(v3 + 16) = *v1;
  HIDWORD(v4) = 0;
  *v3 = v4;
  return SIMD4<>._xyz.modify;
}

__n128 SIMD4<>._xyz.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  HIDWORD(v2) = v1[7];
  **(v1 + 4) = v2;
  free(v1);
  return result;
}

uint64_t PhotogrammetrySample.id.getter()
{
  return *v0;
}

{
  return MEMORY[0x1EEDF9908]();
}

uint64_t PhotogrammetrySample.metadata.getter()
{
  v1 = *(v0 + 16);
}

{
  return MEMORY[0x1EEDF9988]();
}

uint64_t PhotogrammetrySample.metadata.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;

  return PhotogrammetrySample.metadata.didset();
}

uint64_t PhotogrammetrySample.metadata.didset()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v19 - v5;
  outlined init with copy of [String : String](v1 + 72, &v21, &_sypSgMd, &_sypSgMR);
  if (*(&v22 + 1))
  {
    v7 = type metadata accessor for PhotogrammetrySample();

    v8 = swift_dynamicCast();
    (*(*(v7 - 8) + 56))(v6, v8 ^ 1u, 1, v7);
  }

  else
  {

    outlined destroy of BodyTrackingComponent?(&v21, &_sypSgMd, &_sypSgMR);
    v7 = type metadata accessor for PhotogrammetrySample();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  type metadata accessor for PhotogrammetrySample();
  v9 = *(v7 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v7))
  {
    v20 = v1;

    v19[2] = v19;
    MEMORY[0x1EEE9AC00](v11);
    v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
    v13 = outlined init with copy of [String : String](v6, v19 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    v19[1] = v19;
    MEMORY[0x1EEE9AC00](v13);
    outlined init with copy of [String : String](v19 - v12, v19 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v10(v19 - v12, 1, v7) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v19 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v19 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v21 = 0u;
      v22 = 0u;
    }

    else
    {
      *(&v22 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
      (*(v9 + 32))(boxed_opaque_existential_1, v19 - v12, v7);
      outlined destroy of BodyTrackingComponent?(v19 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    outlined assign with take of Any?(&v21, v20 + 72);
    return outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  }

  else
  {
    v14 = PhotogrammetrySample.metadata.setter();
    MEMORY[0x1EEE9AC00](v14);
    v15 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of [String : String](v6, v15, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v10(v15, 1, v7) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v15, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v21 = 0u;
      v22 = 0u;
    }

    else
    {
      *(&v22 + 1) = v7;
      v18 = __swift_allocate_boxed_opaque_existential_1(&v21);
      (*(v9 + 32))(v18, v15, v7);
      outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    return outlined assign with take of Any?(&v21, v1 + 72);
  }
}

uint64_t *PhotogrammetrySample.metadata.modify(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    return PhotogrammetrySample.metadata.didset();
  }

  return result;
}

void *PhotogrammetrySample.depthDataMap.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t PhotogrammetrySample.depthDataMap.setter(uint64_t a1)
{
  *(v1 + 24) = a1;

  return PhotogrammetrySample.depthDataMap.didset();
}

uint64_t PhotogrammetrySample.depthDataMap.didset()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - v5;
  outlined init with copy of [String : String](v1 + 72, &v22, &_sypSgMd, &_sypSgMR);
  if (*(&v23 + 1))
  {
    v7 = type metadata accessor for PhotogrammetrySample();
    v8 = swift_dynamicCast();
    (*(*(v7 - 8) + 56))(v6, v8 ^ 1u, 1, v7);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v22, &_sypSgMd, &_sypSgMR);
    v7 = type metadata accessor for PhotogrammetrySample();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  type metadata accessor for PhotogrammetrySample();
  v9 = *(v7 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v6, 1, v7);
  if (v11)
  {
    v20[2] = v20;
    v21 = v1;
    MEMORY[0x1EEE9AC00](v11);
    v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
    v13 = outlined init with copy of [String : String](v6, v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    v20[1] = v20;
    MEMORY[0x1EEE9AC00](v13);
    outlined init with copy of [String : String](v20 - v12, v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v10(v20 - v12, 1, v7) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v22 = 0u;
      v23 = 0u;
    }

    else
    {
      *(&v23 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      (*(v9 + 32))(boxed_opaque_existential_1, v20 - v12, v7);
      outlined destroy of BodyTrackingComponent?(v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    outlined assign with take of Any?(&v22, v21 + 72);
    return outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  }

  else
  {
    v14 = v2;
    v15 = PhotogrammetrySample.depthDataMap.setter();
    MEMORY[0x1EEE9AC00](v15);
    v16 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of [String : String](v6, v16, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v10(v16, 1, v7) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v16, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v22 = 0u;
      v23 = 0u;
    }

    else
    {
      *(&v23 + 1) = v7;
      v19 = __swift_allocate_boxed_opaque_existential_1(&v22);
      (*(v9 + 32))(v19, v16, v7);
      outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    return outlined assign with take of Any?(&v22, v1 + 72);
  }
}

uint64_t *PhotogrammetrySample.depthDataMap.modify(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    return PhotogrammetrySample.depthDataMap.didset();
  }

  return result;
}

uint64_t PhotogrammetrySample.gravity.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  return result;
}

{
  return MEMORY[0x1EEDF9978]();
}

uint64_t PhotogrammetrySample.gravity.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 56) = a4 & 1;
  return PhotogrammetrySample.gravity.didset();
}

uint64_t PhotogrammetrySample.gravity.didset()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v21 - v8;
  outlined init with copy of [String : String](v1 + 72, &v23, &_sypSgMd, &_sypSgMR);
  if (*(&v24 + 1))
  {
    v10 = type metadata accessor for PhotogrammetrySample();
    v11 = swift_dynamicCast();
    (*(*(v10 - 8) + 56))(v9, v11 ^ 1u, 1, v10);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v23, &_sypSgMd, &_sypSgMR);
    v10 = type metadata accessor for PhotogrammetrySample();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  type metadata accessor for PhotogrammetrySample();
  v22 = *(v10 - 8);
  v12 = *(v22 + 48);
  v13 = v12(v9, 1, v10);
  if (v13)
  {
    v21[2] = v21;
    MEMORY[0x1EEE9AC00](v13);
    v14 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    v15 = outlined init with copy of [String : String](v9, v21 - v14, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    v21[1] = v21;
    MEMORY[0x1EEE9AC00](v15);
    outlined init with copy of [String : String](v21 - v14, v21 - v14, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v12(v21 - v14, 1, v10) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v21 - v14, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v21 - v14, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v23 = 0u;
      v24 = 0u;
    }

    else
    {
      *(&v24 + 1) = v10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
      (*(v22 + 32))(boxed_opaque_existential_1, v21 - v14, v10);
      outlined destroy of BodyTrackingComponent?(v21 - v14, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    outlined assign with take of Any?(&v23, v1 + 72);
    return outlined destroy of BodyTrackingComponent?(v9, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  }

  else
  {
    v16 = PhotogrammetrySample.gravity.setter();
    MEMORY[0x1EEE9AC00](v16);
    v17 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of [String : String](v9, v17, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v12(v17, 1, v10) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v9, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v17, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v23 = 0u;
      v24 = 0u;
    }

    else
    {
      *(&v24 + 1) = v10;
      v20 = __swift_allocate_boxed_opaque_existential_1(&v23);
      (*(v22 + 32))(v20, v17, v10);
      outlined destroy of BodyTrackingComponent?(v9, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    return outlined assign with take of Any?(&v23, v1 + 72);
  }
}

uint64_t *PhotogrammetrySample.gravity.modify(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    return PhotogrammetrySample.gravity.didset();
  }

  return result;
}

void *PhotogrammetrySample.objectMask.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t PhotogrammetrySample.objectMask.setter(uint64_t a1)
{
  *(v1 + 64) = a1;

  return PhotogrammetrySample.objectMask.didset();
}

uint64_t PhotogrammetrySample.objectMask.didset()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - v5;
  outlined init with copy of [String : String](v1 + 72, &v22, &_sypSgMd, &_sypSgMR);
  if (*(&v23 + 1))
  {
    v7 = type metadata accessor for PhotogrammetrySample();
    v8 = swift_dynamicCast();
    (*(*(v7 - 8) + 56))(v6, v8 ^ 1u, 1, v7);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v22, &_sypSgMd, &_sypSgMR);
    v7 = type metadata accessor for PhotogrammetrySample();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  type metadata accessor for PhotogrammetrySample();
  v9 = *(v7 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v6, 1, v7);
  if (v11)
  {
    v20[2] = v20;
    v21 = v1;
    MEMORY[0x1EEE9AC00](v11);
    v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
    v13 = outlined init with copy of [String : String](v6, v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    v20[1] = v20;
    MEMORY[0x1EEE9AC00](v13);
    outlined init with copy of [String : String](v20 - v12, v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v10(v20 - v12, 1, v7) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v22 = 0u;
      v23 = 0u;
    }

    else
    {
      *(&v23 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      (*(v9 + 32))(boxed_opaque_existential_1, v20 - v12, v7);
      outlined destroy of BodyTrackingComponent?(v20 - v12, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    outlined assign with take of Any?(&v22, v21 + 72);
    return outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  }

  else
  {
    v14 = v2;
    v15 = PhotogrammetrySample.objectMask.setter();
    MEMORY[0x1EEE9AC00](v15);
    v16 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of [String : String](v6, v16, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (v10(v16, 1, v7) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      outlined destroy of BodyTrackingComponent?(v16, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
      v22 = 0u;
      v23 = 0u;
    }

    else
    {
      *(&v23 + 1) = v7;
      v19 = __swift_allocate_boxed_opaque_existential_1(&v22);
      (*(v9 + 32))(v19, v16, v7);
      outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    }

    return outlined assign with take of Any?(&v22, v1 + 72);
  }
}

uint64_t *PhotogrammetrySample.objectMask.modify(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    return PhotogrammetrySample.objectMask.didset();
  }

  return result;
}

double PhotogrammetrySample.init(id:image:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a3 + 8) = a2;
  *(a3 + 16) = v6;
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *a3 = a1;
  return result;
}

uint64_t one-time initialization function for idManager()
{
  type metadata accessor for UniqueIDManager();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  v2 = MEMORY[0x1E69E7CD0];
  *(result + 16) = 0;
  v0[2] = result;
  v0[3] = v2;
  v0[4] = 0;
  static PhotogrammetrySample.idManager = v0;
  return result;
}

uint64_t PhotogrammetrySample.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(172);
  v30 = v27;
  MEMORY[0x1C68F3410](540697705, 0xE400000000000000);
  *&v27 = *v0;
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v9);

  MEMORY[0x1C68F3410](0x3A6567616D690A2CLL, 0xE900000000000020);
  *&v27 = *(v0 + 8);
  type metadata accessor for CVBufferRef(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0x61646174656D0A2CLL, 0xEC000000203A6174);
  v10 = *(v0 + 16);
  v11 = Dictionary.description.getter();
  MEMORY[0x1C68F3410](v11);

  MEMORY[0x1C68F3410](0xD000000000000010, 0x80000001C18E29E0);
  *&v27 = *(v0 + 24);
  v12 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CVBufferRefaSgMd, &_sSo11CVBufferRefaSgMR);
  v13 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v13);

  MEMORY[0x1C68F3410](0x7469766172670A2CLL, 0xEB00000000203A79);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);
  v27 = *(v0 + 32);
  v28 = v14;
  v29 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CMAccelerationaSgMd, &_sSo14CMAccelerationaSgMR);
  v16 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v16);

  MEMORY[0x1C68F3410](0x7463656A626F0A2CLL, 0xEE00203A6B73614DLL);
  *&v27 = *(v0 + 64);
  v17 = v27;
  v18 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v18);

  MEMORY[0x1C68F3410](0x657275747061630ALL, 0xEE00203A656D6954);
  PhotogrammetrySample.captureTime.getter(v8);
  v19 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v19);

  MEMORY[0x1C68F3410](0xD000000000000015, 0x80000001C18E2A00);
  *&v27 = PhotogrammetrySample.depthConfidenceMap.getter();
  v20 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v20);

  MEMORY[0x1C68F3410](0x6E69646E756F620ALL, 0xEE00203A786F4267);
  PhotogrammetrySample.boundingBox.getter(&v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13simd_float4x4aSgMd, &_sSo13simd_float4x4aSgMR);
  v21 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v21);

  MEMORY[0x1C68F3410](0x3A6172656D61630ALL, 0xE900000000000020);
  PhotogrammetrySample.camera.getter(&v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20PhotogrammetrySampleV6CameraVSgMd, &_s17RealityFoundation20PhotogrammetrySampleV6CameraVSgMR);
  v22 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v22);

  MEMORY[0x1C68F3410](0x6E6F69737365730ALL, 0xEC000000203A4449);
  PhotogrammetrySample.sessionID.getter(v4);
  v23 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v23);

  MEMORY[0x1C68F3410](0x746E656D6765730ALL, 0xEC000000203A4449);
  *&v27 = PhotogrammetrySample.scanPassID.getter();
  BYTE8(v27) = v24 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v25 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v25);

  return v30;
}

void PhotogrammetrySample.boundingBox.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PhotogrammetrySample();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - v10;
  outlined init with copy of [String : String](v1 + 72, v39, &_sypSgMd, &_sypSgMR);
  if (!v40)
  {
    outlined destroy of BodyTrackingComponent?(v39, &_sypSgMd, &_sypSgMR);
    (*(v4 + 56))(v11, 1, 1, v3);
    goto LABEL_7;
  }

  v12 = swift_dynamicCast();
  (*(v4 + 56))(v11, v12 ^ 1u, 1, v3);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
LABEL_7:
    outlined destroy of BodyTrackingComponent?(v11, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, logger);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C1358000, v24, v25, "No wrapped CoreOC.PhotogrammetrySample!", v26, 2u);
      MEMORY[0x1C6902A30](v26, -1, -1);
    }

    v22 = 1;
    goto LABEL_12;
  }

  (*(v4 + 32))(v7, v11, v3);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleV6ObjectVSgMd, &_s6CoreOC20PhotogrammetrySampleV6ObjectVSgMR);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v35 - v15;
  PhotogrammetrySample.object.getter();
  v17 = type metadata accessor for PhotogrammetrySample.Object();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    PhotogrammetrySample.Object.boundingBox.getter();
LABEL_15:
    v37 = v32;
    v38 = v31;
    v35 = v34;
    v36 = v33;
    (*(v4 + 8))(v7, v3);
    (*(v18 + 8))(v16, v17);
    v30 = v35;
    v29 = v36;
    v28 = v37;
    v27 = v38;
    v22 = 0;
    goto LABEL_16;
  }

  outlined destroy of BodyTrackingComponent?(v16, &_s6CoreOC20PhotogrammetrySampleV6ObjectVSgMd, &_s6CoreOC20PhotogrammetrySampleV6ObjectVSgMR);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleV5SceneVSgMd, &_s6CoreOC20PhotogrammetrySampleV5SceneVSgMR);
  v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19 - 8);
  v16 = &v35 - v21;
  PhotogrammetrySample.scene.getter();
  v17 = type metadata accessor for PhotogrammetrySample.Scene();
  v18 = *(v17 - 8);
  v22 = 1;
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    PhotogrammetrySample.Scene.boundingBox.getter();
    goto LABEL_15;
  }

  (*(v4 + 8))(v7, v3);
  outlined destroy of BodyTrackingComponent?(v16, &_s6CoreOC20PhotogrammetrySampleV5SceneVSgMd, &_s6CoreOC20PhotogrammetrySampleV5SceneVSgMR);
  v39[0] = 1;
LABEL_12:
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
LABEL_16:
  *a1 = v27;
  *(a1 + 16) = v28;
  *(a1 + 32) = v29;
  *(a1 + 48) = v30;
  *(a1 + 64) = v22;
}

__n128 PhotogrammetrySample.camera.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PhotogrammetrySample.Camera();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleV6CameraVSgMd, &_s6CoreOC20PhotogrammetrySampleV6CameraVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36 - v13;
  outlined init with copy of [String : String](v1 + 72, v41, &_sypSgMd, &_sypSgMR);
  if (!*&v41[24])
  {
    outlined destroy of BodyTrackingComponent?(v41, &_sypSgMd, &_sypSgMR);
    v32 = type metadata accessor for PhotogrammetrySample();
    (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
    goto LABEL_6;
  }

  v15 = type metadata accessor for PhotogrammetrySample();
  v16 = swift_dynamicCast();
  v17 = *(v15 - 8);
  (*(v17 + 56))(v14, v16 ^ 1u, 1, v15);
  if ((*(v17 + 48))(v14, 1, v15) == 1)
  {
LABEL_6:
    outlined destroy of BodyTrackingComponent?(v14, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    (*(v4 + 56))(v10, 1, 1, v3);
    goto LABEL_7;
  }

  PhotogrammetrySample.camera.getter();
  (*(v17 + 8))(v14, v15);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
LABEL_7:
    outlined destroy of BodyTrackingComponent?(v10, &_s6CoreOC20PhotogrammetrySampleV6CameraVSgMd, &_s6CoreOC20PhotogrammetrySampleV6CameraVSgMR);
    _s17RealityFoundation20PhotogrammetrySampleV6CameraVSgWOi0_(v41);
    v29 = v43;
    v33 = v45;
    *(a1 + 96) = v44;
    *(a1 + 112) = v33;
    v31 = v46;
    goto LABEL_8;
  }

  v18 = (*(v4 + 32))(&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v3);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v20, v20, v3, v19);
  v21 = PhotogrammetrySample.Camera.id.getter();
  PhotogrammetrySample.Camera.intrinsics.getter();
  *&v40[12] = v47;
  *&v40[28] = v48;
  *&v40[44] = v49;
  PhotogrammetrySample.Camera.transform.getter();
  v39 = v22;
  v38 = v23;
  v37 = v24;
  v36 = v25;
  v26 = PhotogrammetrySample.Camera.calibrationData.getter();
  v27 = *(v4 + 8);
  v27(v20, v3);
  v27(v6, v3);
  *v41 = v21;
  *&v41[4] = *v40;
  *&v41[20] = *&v40[16];
  *&v41[36] = *&v40[32];
  *&v41[48] = *&v40[44];
  v42 = v39;
  v43 = v38;
  v44 = v37;
  v45 = v36;
  v46 = v26;
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v41, v28);
  v29 = v43;
  v30 = v45;
  *(a1 + 96) = v44;
  *(a1 + 112) = v30;
  v31 = v46;
LABEL_8:
  *(a1 + 128) = v31;
  v34 = *&v41[48];
  *(a1 + 32) = *&v41[32];
  *(a1 + 48) = v34;
  *(a1 + 64) = v42;
  *(a1 + 80) = v29;
  result = *&v41[16];
  *a1 = *v41;
  *(a1 + 16) = result;
  return result;
}

uint64_t PhotogrammetrySample.captureTime.getter@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17[-v9];
  outlined init with copy of [String : String](v3 + 72, v17, &_sypSgMd, &_sypSgMR);
  if (v18)
  {
    v11 = type metadata accessor for PhotogrammetrySample();
    v12 = swift_dynamicCast();
    v13 = *(v11 - 8);
    (*(v13 + 56))(v10, v12 ^ 1u, 1, v11);
    if ((*(v13 + 48))(v10, 1, v11) != 1)
    {
      a1();
      return (*(v13 + 8))(v10, v11);
    }
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v17, &_sypSgMd, &_sypSgMR);
    v15 = type metadata accessor for PhotogrammetrySample();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  outlined destroy of BodyTrackingComponent?(v10, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v16 = a2(0);
  return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
}

uint64_t PhotogrammetrySample.scanPassID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11[-v3];
  outlined init with copy of [String : String](v0 + 72, v11, &_sypSgMd, &_sypSgMR);
  if (v12)
  {
    v5 = type metadata accessor for PhotogrammetrySample();
    v6 = swift_dynamicCast();
    v7 = *(v5 - 8);
    (*(v7 + 56))(v4, v6 ^ 1u, 1, v5);
    if ((*(v7 + 48))(v4, 1, v5) != 1)
    {
      v8 = PhotogrammetrySample.staticSegmentID.getter();
      (*(v7 + 8))(v4, v5);
      return v8;
    }
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v11, &_sypSgMd, &_sypSgMR);
    v10 = type metadata accessor for PhotogrammetrySample();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  outlined destroy of BodyTrackingComponent?(v4, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  return 0;
}

__n128 PhotogrammetrySample.init(contentsOf:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a2 + 16) = v5;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  if (one-time initialization token for idManager != -1)
  {
    swift_once();
  }

  UniqueIDManager.generateNextUnassignedID()();
  v6 = type metadata accessor for PhotogrammetrySample();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObjectCaptureImageFolderReader();
  static ObjectCaptureImageFolderReader.loadPhotogrammetrySample(id:url:)();
  if (v2)
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 8))(a1, v11);

    outlined destroy of BodyTrackingComponent?(a2 + 72, &_sypSgMd, &_sypSgMR);
  }

  else
  {
    v13 = PhotogrammetrySample.id.getter();
    v31 = v5;
    v14 = v13;
    v15 = PhotogrammetrySample.image.getter();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v24 = &v24;
    memset(&v30[8], 0, 32);
    *&v26 = v14;
    *(&v26 + 1) = v15;
    v16 = PhotogrammetrySample.metadata.getter();

    *&v27 = v16;
    *(&v27 + 1) = PhotogrammetrySample.depthDataMap.getter();
    *&v28 = PhotogrammetrySample.gravity.getter();
    *(&v28 + 1) = v17;
    v29.n128_u64[0] = v18;
    v29.n128_u8[8] = v19 & 1;
    *v30 = PhotogrammetrySample.objectMask.getter();
    v25[3] = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    (*(v7 + 32))(boxed_opaque_existential_1, v10, v6);
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 8))(a1, v21);
    outlined assign with take of Any?(v25, &v30[8]);

    outlined destroy of BodyTrackingComponent?(a2 + 72, &_sypSgMd, &_sypSgMR);
    v22 = *&v30[16];
    *(a2 + 64) = *v30;
    *(a2 + 80) = v22;
    *(a2 + 96) = *&v30[32];
    v23 = v27;
    *a2 = v26;
    *(a2 + 16) = v23;
    result = v29;
    *(a2 + 32) = v28;
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t PhotogrammetrySample.init(contentsOf:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](PhotogrammetrySample.init(contentsOf:), 0, 0);
}

uint64_t PhotogrammetrySample.init(contentsOf:)()
{
  v1 = *(v0 + 152);
  *(v1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  if (one-time initialization token for idManager != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  UniqueIDManager.generateNextUnassignedID()();
  v3 = type metadata accessor for PhotogrammetrySample();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  type metadata accessor for ObjectCaptureImageFolderReader();
  static ObjectCaptureImageFolderReader.loadPhotogrammetrySample(id:url:)();
  v7 = *(v0 + 152);
  v23 = *(v0 + 160);
  v8 = PhotogrammetrySample.id.getter();
  v9 = PhotogrammetrySample.image.getter();
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 16) = v8;
  *(v0 + 24) = v9;
  v10 = PhotogrammetrySample.metadata.getter();

  *(v0 + 32) = v10;
  *(v0 + 40) = PhotogrammetrySample.depthDataMap.getter();
  *(v0 + 48) = PhotogrammetrySample.gravity.getter();
  *(v0 + 56) = v11;
  *(v0 + 64) = v12;
  *(v0 + 72) = v13 & 1;
  *(v0 + 80) = PhotogrammetrySample.objectMask.getter();
  *(v0 + 144) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 120));
  (*(v4 + 32))(boxed_opaque_existential_1, v6, v3);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 8))(v23, v15);
  outlined assign with take of Any?(v0 + 120, v0 + 88);

  outlined destroy of BodyTrackingComponent?(v1 + 72, &_sypSgMd, &_sypSgMR);
  v17 = *(v0 + 32);
  v16 = *(v0 + 48);
  *v7 = *(v0 + 16);
  *(v7 + 16) = v17;
  *(v7 + 32) = v16;
  v19 = *(v0 + 80);
  v18 = *(v0 + 96);
  v20 = *(v0 + 64);
  *(v7 + 96) = *(v0 + 112);
  *(v7 + 64) = v19;
  *(v7 + 80) = v18;
  *(v7 + 48) = v20;
  v21 = *(v0 + 8);

  return v21();
}

uint64_t PhotogrammetrySample.depthConfidenceMap.getter(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13[-v5];
  outlined init with copy of [String : String](v1 + 72, v13, &_sypSgMd, &_sypSgMR);
  if (v14)
  {
    v7 = type metadata accessor for PhotogrammetrySample();
    v8 = swift_dynamicCast();
    v9 = *(v7 - 8);
    (*(v9 + 56))(v6, v8 ^ 1u, 1, v7);
    if ((*(v9 + 48))(v6, 1, v7) != 1)
    {
      v10 = a1();
      (*(v9 + 8))(v6, v7);
      return v10;
    }
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v13, &_sypSgMd, &_sypSgMR);
    v12 = type metadata accessor for PhotogrammetrySample();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  return 0;
}

uint64_t PhotogrammetrySample.Camera.id.getter()
{
  return *v0;
}

{
  return MEMORY[0x1EEDF9940]();
}

__n128 PhotogrammetrySample.Camera.intrinsics.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

__n128 PhotogrammetrySample.Camera.intrinsics.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  result = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

__n128 PhotogrammetrySample.Camera.transform.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 80);
  v3 = *(v0 + 96);
  v4 = *(v0 + 112);
  return result;
}

void PhotogrammetrySample.Camera.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

void *PhotogrammetrySample.Camera.calibrationData.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t PhotogrammetrySample.orientation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11[-v3];
  outlined init with copy of [String : String](v0 + 72, v11, &_sypSgMd, &_sypSgMR);
  if (v12)
  {
    v5 = type metadata accessor for PhotogrammetrySample();
    v6 = swift_dynamicCast();
    v7 = *(v5 - 8);
    (*(v7 + 56))(v4, v6 ^ 1u, 1, v5);
    if ((*(v7 + 48))(v4, 1, v5) != 1)
    {
      v8 = PhotogrammetrySample.orientation.getter();
      (*(v7 + 8))(v4, v5);
      return v8;
    }
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v11, &_sypSgMd, &_sypSgMR);
    v10 = type metadata accessor for PhotogrammetrySample();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  outlined destroy of BodyTrackingComponent?(v4, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  return 1;
}

{
  return MEMORY[0x1EEDF98E0]();
}

double _s17RealityFoundation20PhotogrammetrySampleV6CameraVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySample(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotogrammetrySample(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy136_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySample.Camera(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotogrammetrySample.Camera(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  outlined copy of __REAssetBundle.ExportOptions.PlatformOS(a1, a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  Hasher.init(_seed:)();
  outlined copy of __REAssetBundle.ExportOptions.PlatformOS(a2, a3);
  String.hash(into:)();

  return Hasher._finalize()();
}

RealityKit::__REAnchoringType::Name_optional __swiftcall __REAnchoringType.Name.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __REAnchoringType.Name.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t __REAnchoringType.Name.rawValue.getter()
{
  v1 = 0x65636166727573;
  v2 = 1701011814;
  if (*v0 != 2)
  {
    v2 = 0x7463656A626FLL;
  }

  if (*v0)
  {
    v1 = 0x6567616D69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __REAnchoringType.Name()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __REAnchoringType.Name()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __REAnchoringType.Name()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __REAnchoringType.Name(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x65636166727573;
  v4 = 0xE400000000000000;
  v5 = 1701011814;
  if (*v1 != 2)
  {
    v5 = 0x7463656A626FLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6567616D69;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t __REAnchoringType.name.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for __REAnchoringType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __REAnchoringType(v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      *a1 = 2;
      return result;
    }

    *a1 = 3;
  }

  else
  {
    if (!result)
    {
      *a1 = 0;
      return result;
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR) + 48);
    *a1 = 1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    (*(*(v10 - 8) + 8))(&v7[v9], v10);
  }

  v11 = type metadata accessor for URL();
  return (*(*(v11 - 8) + 8))(v7, v11);
}

uint64_t type metadata accessor for __REAnchoringType()
{
  result = type metadata singleton initialization cache for __REAnchoringType;
  if (!type metadata singleton initialization cache for __REAnchoringType)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __REAnchoringType.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance __REAnchoringType.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized __REAnchoringType.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __REAnchoringType.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xE300000000000000;
  v6 = 7107189;
  v7 = 0xED00006874646957;
  v8 = 0x6C61636973796870;
  if (v2 != 4)
  {
    v8 = 0x747265566873656DLL;
    v7 = 0xEA00000000007865;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000074;
  v10 = 0x6E656D6E67696C61;
  if (v2 != 1)
  {
    v10 = 0x6966697373616C63;
    v9 = 0xEE006E6F69746163;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __REAnchoringType.CodingKeys()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 7107189;
  v4 = 0x6C61636973796870;
  if (v1 != 4)
  {
    v4 = 0x747265566873656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E656D6E67696C61;
  if (v1 != 1)
  {
    v5 = 0x6966697373616C63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance __REAnchoringType.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized __REAnchoringType.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAnchoringType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAnchoringType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __REAnchoringType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v51 = *(v57 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v47 - v4;
  v56 = type metadata accessor for URL();
  v52 = *(v56 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit17__REAnchoringTypeO10CodingKeys33_81FA06EDBF5F7F6441C5AFDB6C633B6ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit17__REAnchoringTypeO10CodingKeys33_81FA06EDBF5F7F6441C5AFDB6C633B6ALLOGMR);
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - v10;
  v12 = type metadata accessor for __REAnchoringType();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys();
  v21 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v22 = v15;
    v58 = v7;
    v23 = v56;
    v24 = v57;
    v49 = v18;
    v50 = v12;
    v25 = v55;
    LOBYTE(v61) = 0;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v28;
    v48 = 0;

    v30 = v27;
    v31._countAndFlagsBits = v27;
    v31._object = v29;
    v32 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __REAnchoringType.Name.init(rawValue:), v31);

    if (v32 > 1)
    {
      if (v32 == 3)
      {

        LOBYTE(v61) = 3;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL);
        v44 = v48;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        if (!v44)
        {
          (*(v25 + 8))(v11, v8);
          swift_storeEnumTagMultiPayload();
          v46 = v49;
          outlined init with take of __REAnchoringType(v22, v49);
LABEL_20:
          v43 = v54;
          goto LABEL_21;
        }

        goto LABEL_3;
      }

      if (v32 == 2)
      {

        LOBYTE(v61) = 5;
        v35 = v48;
        v36 = KeyedDecodingContainer.decode(_:forKey:)();
        if (!v35)
        {
          v37 = v36;
          (*(v25 + 8))(v11, v8);
          v46 = v49;
          *v49 = v37;
          goto LABEL_19;
        }

        goto LABEL_3;
      }
    }

    else
    {
      if (!v32)
      {

        v60 = 1;
        lazy protocol witness table accessor for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment();
        v39 = v48;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        if (!v39)
        {
          v40 = v54;
          v41 = v61;
          v60 = 2;
          lazy protocol witness table accessor for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v25 + 8))(v11, v8);
          v42 = v61;
          v46 = v49;
          *v49 = v41;
          *(v46 + 1) = v42;
          swift_storeEnumTagMultiPayload();
          v43 = v40;
LABEL_21:
          outlined init with take of __REAnchoringType(v46, v43);
          return __swift_destroy_boxed_opaque_existential_1(v59);
        }

        goto LABEL_3;
      }

      if (v32 == 1)
      {

        LOBYTE(v61) = 3;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL);
        v33 = v48;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        if (!v33)
        {
          LOBYTE(v61) = 4;
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitLength> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
          v34 = v53;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v25 + 8))(v11, v8);
          v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR) + 48);
          v46 = v49;
          (*(v52 + 32))(v49, v58, v23);
          (*(v51 + 32))(&v46[v45], v34, v24);
LABEL_19:
          swift_storeEnumTagMultiPayload();
          goto LABEL_20;
        }

        goto LABEL_3;
      }
    }

    lazy protocol witness table accessor for type __REAnchoringType.AnchoringError and conformance __REAnchoringType.AnchoringError();
    swift_allocError();
    *v38 = v30;
    v38[1] = v29;
    swift_willThrow();
LABEL_3:
    (*(v25 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

unint64_t lazy protocol witness table accessor for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAnchoringType.AnchoringError and conformance __REAnchoringType.AnchoringError()
{
  result = lazy protocol witness table cache variable for type __REAnchoringType.AnchoringError and conformance __REAnchoringType.AnchoringError;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.AnchoringError and conformance __REAnchoringType.AnchoringError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.AnchoringError and conformance __REAnchoringType.AnchoringError);
  }

  return result;
}

uint64_t outlined init with take of __REAnchoringType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __REAnchoringType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment()
{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification()
{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification);
  }

  return result;
}

uint64_t __REAnchoringType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v48 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v48 - v12;
  v13 = type metadata accessor for __REAnchoringType();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit17__REAnchoringTypeO10CodingKeys33_81FA06EDBF5F7F6441C5AFDB6C633B6ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit17__REAnchoringTypeO10CodingKeys33_81FA06EDBF5F7F6441C5AFDB6C633B6ALLOGMR);
  v56 = *(v58 - 8);
  v20 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v22 = &v48 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAnchoringType.CodingKeys and conformance __REAnchoringType.CodingKeys();
  v24 = v22;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = v2;
  outlined init with copy of __REAnchoringType(v2, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v54 + 8))(v19, v53);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR);
    (*(v51 + 8))(&v19[*(v27 + 48)], v52);
    (*(v54 + 8))(v19, v53);
  }

  LOBYTE(v60) = 0;
  v28 = v58;
  v29 = v55;
  KeyedEncodingContainer.encode(_:forKey:)();
  v30 = v57;
  if (v29)
  {
    (*(v56 + 8))(v24, v28);
  }

  else
  {

    outlined init with copy of __REAnchoringType(v25, v16);
    v32 = swift_getEnumCaseMultiPayload();
    if (v32 > 1)
    {
      v37 = v54;
      v38 = v58;
      if (v32 == 2)
      {
        v39 = *v16;
        LOBYTE(v60) = 5;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      else
      {
        v46 = v49;
        v47 = v53;
        (*(v54 + 32))(v49, v16, v53);
        LOBYTE(v60) = 3;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v37 + 8))(v46, v47);
      }

      return (*(v56 + 8))(v24, v38);
    }

    else
    {
      v33 = v54;
      v34 = v58;
      v35 = v24;
      if (v32)
      {
        v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR) + 48);
        v41 = v53;
        (*(v33 + 32))(v30, v16, v53);
        v42 = v51;
        v43 = v16 + v40;
        v44 = v50;
        v45 = v52;
        (*(v51 + 32))(v50, v43, v52);
        LOBYTE(v60) = 3;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        LOBYTE(v60) = 4;
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitLength> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v42 + 8))(v44, v45);
        (*(v33 + 8))(v57, v41);
      }

      else
      {
        v36 = v16[1];
        v60 = *v16;
        v59 = 1;
        lazy protocol witness table accessor for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v60 = v36;
        v59 = 2;
        lazy protocol witness table accessor for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      return (*(v56 + 8))(v35, v34);
    }
  }
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static __REAnchoringType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v63 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v61 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v67 = v9;
  v68 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v61 - v15;
  v16 = type metadata accessor for __REAnchoringType();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v61 - v22);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v61 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = (&v61 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeO_ACtMd, &_s10RealityKit17__REAnchoringTypeO_ACtMR);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v61 - v32;
  v34 = (&v61 + *(v31 + 56) - v32);
  outlined init with copy of __REAnchoringType(a1, &v61 - v32);
  outlined init with copy of __REAnchoringType(a2, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of __REAnchoringType(v33, v23);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v37 = *v23 == *v34;
LABEL_9:
        v38 = v37;
        goto LABEL_17;
      }

      goto LABEL_21;
    }

    outlined init with copy of __REAnchoringType(v33, v20);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v55 = v67;
      v56 = v68;
      (*(v68 + 32))(v14, v34, v67);
      v38 = static URL.== infix(_:_:)();
      v57 = *(v56 + 8);
      v57(v14, v55);
      v57(v20, v55);
      goto LABEL_17;
    }

    v26 = v20;
LABEL_20:
    (*(v68 + 8))(v26, v67);
    goto LABEL_21;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of __REAnchoringType(v33, v28);
    v36 = v28[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (*v28 == *v34)
      {
        v37 = v36 == v34[1];
        goto LABEL_9;
      }

      goto LABEL_25;
    }

LABEL_21:
    outlined destroy of (__REAnchoringType, __REAnchoringType)(v33);
LABEL_22:
    v38 = 0;
    return v38 & 1;
  }

  outlined init with copy of __REAnchoringType(v33, v26);
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v65 + 8))(&v26[v39], v66);
    goto LABEL_20;
  }

  v40 = v67;
  v41 = v62;
  (*(v68 + 32))(v62, v34, v67);
  v42 = v65;
  v43 = *(v65 + 32);
  v44 = v66;
  v43(v64, &v26[v39], v66);
  v45 = v34 + v39;
  v46 = v63;
  v43(v63, v45, v44);
  v47 = v41;
  v48 = v68;
  v49 = static URL.== infix(_:_:)();
  v50 = *(v48 + 8);
  v50(v26, v40);
  if ((v49 & 1) == 0)
  {
    v59 = *(v42 + 8);
    v60 = v66;
    v59(v46, v66);
    v59(v64, v60);
    v50(v41, v40);
LABEL_25:
    outlined destroy of __REAnchoringType(v33);
    goto LABEL_22;
  }

  type metadata accessor for NSUnitLength();
  v51 = v64;
  v38 = static Measurement.== infix<A, B>(_:_:)();
  v52 = *(v42 + 8);
  v53 = v46;
  v54 = v66;
  v52(v53, v66);
  v52(v51, v54);
  v50(v47, v40);
LABEL_17:
  outlined destroy of __REAnchoringType(v33);
  return v38 & 1;
}

unint64_t lazy protocol witness table accessor for type __REAnchoringType.Name and conformance __REAnchoringType.Name()
{
  result = lazy protocol witness table cache variable for type __REAnchoringType.Name and conformance __REAnchoringType.Name;
  if (!lazy protocol witness table cache variable for type __REAnchoringType.Name and conformance __REAnchoringType.Name)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType.Name and conformance __REAnchoringType.Name);
  }

  return result;
}

void type metadata completion function for __REAnchoringType()
{
  type metadata accessor for (alignment: __REAnchoringType.Alignment, classification: __REAnchoringType.Classification)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (url: URL, physicalWidth: Measurement<NSUnitLength>)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (meshVertex: Int)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (url: URL)();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (alignment: __REAnchoringType.Alignment, classification: __REAnchoringType.Classification)()
{
  if (!lazy cache variable for type metadata for (alignment: __REAnchoringType.Alignment, classification: __REAnchoringType.Classification))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (alignment: __REAnchoringType.Alignment, classification: __REAnchoringType.Classification));
    }
  }
}

void type metadata accessor for (url: URL, physicalWidth: Measurement<NSUnitLength>)()
{
  if (!lazy cache variable for type metadata for (url: URL, physicalWidth: Measurement<NSUnitLength>))
  {
    type metadata accessor for URL();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (url: URL, physicalWidth: Measurement<NSUnitLength>));
    }
  }
}

uint64_t type metadata accessor for (meshVertex: Int)()
{
  result = lazy cache variable for type metadata for (meshVertex: Int);
  if (!lazy cache variable for type metadata for (meshVertex: Int))
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &lazy cache variable for type metadata for (meshVertex: Int));
  }

  return result;
}

void type metadata accessor for (url: URL)()
{
  if (!lazy cache variable for type metadata for (url: URL))
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (url: URL));
    }
  }
}

unint64_t specialized __REAnchoringType.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __REAnchoringType.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined copy of __REAssetBundle.ExportOptions.PlatformOS(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t outlined destroy of (__REAnchoringType, __REAnchoringType)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeO_ACtMd, &_s10RealityKit17__REAnchoringTypeO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of __REAnchoringType(uint64_t a1)
{
  v2 = type metadata accessor for __REAnchoringType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSUnitLength()
{
  result = lazy cache variable for type metadata for NSUnitLength;
  if (!lazy cache variable for type metadata for NSUnitLength)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUnitLength);
  }

  return result;
}

uint64_t CustomMaterial.CustomMaterialTexture.resource.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

double CustomMaterial.CustomMaterialTexture.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&result = 84148994;
  *(a2 + 8) = 84148994;
  *a2 = a1;
  return result;
}

{
  v3 = *(a1 + 8);

  *a2 = v3;
  *&result = 84148994;
  *(a2 + 8) = 84148994;
  return result;
}

uint64_t CustomMaterial.CustomMaterialTexture.init(_:_:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t (*static CustomMaterial.BaseColor.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return partial apply for closure #1 in static TextureResource.builtinTexture(named:);
}

uint64_t partial apply for closure #1 in static TextureResource.builtinTexture(named:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in static TextureResource.builtinTexture(named:)(a1);
}

void outlined consume of MaterialParameters.Texture?(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

id CustomMaterial.BaseColor.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *v2;
  if (v5)
  {

    result = REMaterialCreateDefaultSamplerDescriptor();
    v9 = 1;
    v10 = 84148994;
  }

  else
  {
    result = 0;
    v10 = 0;
    v9 = -1;
  }

  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001C18E2A60;
  *(a1 + 16) = result;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v9;
  strcpy(a2, "baseColorTint");
  *(a2 + 14) = -4864;
  *(a2 + 16) = v6;
  *(a2 + 80) = 6;
  return result;
}

uint64_t (*static CustomMaterial.Metallic.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t (*static CustomMaterial.Roughness.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

id CustomMaterial.Roughness.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  if (v6)
  {
    v7 = *(v2 + 1);

    result = REMaterialCreateDefaultSamplerDescriptor();
    v9 = 1;
    v10 = 84148994;
  }

  else
  {
    result = 0;
    v10 = 0;
    v9 = -1;
  }

  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001C18E2A80;
  *(a1 + 16) = result;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v9;
  strcpy(a2, "roughnessScale");
  *(a2 + 15) = -18;
  *(a2 + 16) = v5;
  *(a2 + 80) = 2;
  return result;
}

uint64_t CustomMaterial.Roughness.init(material:alternateTintKey:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._countAndFlagsBits = 0x73656E6867756F72;
  v5._object = 0xEE00656C61635373;
  Material.getFloatParameter(key:)(v6, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0xD000000000000010, 0x80000001C18E2A80, v9, v10, &v16);
  v11 = v17;
  if (v17)
  {
    v12 = v16;

    outlined consume of MaterialParameters.Texture?(v12, v11);
    v13 = 84148994;
  }

  else
  {
    v13 = 0;
  }

  v14 = *&v8;
  if ((v8 & 0x100000000) != 0)
  {
    v14 = 1.0;
  }

  *a2 = v14;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CustomMaterial.EmissiveColor.texture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t (*static CustomMaterial.EmissiveColor.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.black");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t CustomMaterial.EmissiveColor.init(color:texture:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  *a3 = result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  return result;
}

void CustomMaterial.BaseColor.init(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 8);
  if (v5)
  {
    v8 = a1[2];

    v9 = 84148994;
    v10 = v5;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  outlined consume of MaterialParameters.Texture?(v3, v10);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v9;
}

id CustomMaterial.EmissiveColor.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *v2;
  if (v5)
  {

    result = REMaterialCreateDefaultSamplerDescriptor();
    v9 = 1;
    v10 = 84148994;
  }

  else
  {
    result = 0;
    v10 = 0;
    v9 = -1;
  }

  *a1 = 0x4565727574786574;
  *(a1 + 8) = 0xEF6576697373696DLL;
  *(a1 + 16) = result;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v9;
  strcpy(a2, "emissiveColor");
  *(a2 + 14) = -4864;
  *(a2 + 16) = v6;
  *(a2 + 80) = 6;
  return result;
}

void CustomMaterial.EmissiveColor.init(material:alternateTintKey:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  if (one-time initialization token for linearSRGBWhite != -1)
  {
    swift_once();
  }

  v4 = a1[3];
  v5 = a1[4];
  v6 = static CGColorRef.linearSRGBWhite;
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v7._countAndFlagsBits = 0x6576697373696D65;
  v7._object = 0xED0000726F6C6F43;
  v8.value = Material.getColorParameter(key:)(v7).value;
  if (v8.value)
  {
    value = v8.value;

    v6 = value;
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  Material.getTextureParameter(key:)(0x4565727574786574, 0xEF6576697373696DLL, v10, v11, &v16);
  v12 = v17;
  if (v17)
  {
    v13 = v16;

    outlined consume of MaterialParameters.Texture?(v13, v12);
    v14 = 84148994;
  }

  else
  {
    v14 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  v15 = v6;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*static CustomMaterial.Specular.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

double CustomMaterial.Metallic.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *v7;
  v14 = *(v7 + 1);
  if (v14)
  {
    v15 = *(v7 + 1);

    v16 = REMaterialCreateDefaultSamplerDescriptor();
    v17 = 1;
    v18 = 84148994;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v17 = -1;
  }

  *a1 = a5;
  *(a1 + 8) = a6;
  *(a1 + 16) = v16;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  *(a1 + 40) = v18;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v17;
  *a2 = a7;
  *(a2 + 8) = 0xED0000656C616353;
  *(a2 + 16) = v13;
  *(a2 + 80) = 2;
  return result;
}

uint64_t CustomMaterial.Metallic.init(material:alternateTintKey:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11._object = 0xED0000656C616353;
  v11._countAndFlagsBits = a2;
  Material.getFloatParameter(key:)(v12, v11);
  v14 = v13;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  Material.getTextureParameter(key:)(a3, a4, v15, v16, &v22);
  v17 = v23;
  if (v23)
  {
    v18 = v22;

    outlined consume of MaterialParameters.Texture?(v18, v17);
    v19 = 84148994;
  }

  else
  {
    v19 = 0;
  }

  v20 = *&v14;
  if ((v14 & 0x100000000) != 0)
  {
    v20 = 1.0;
  }

  *a5 = v20;
  *(a5 + 8) = v17;
  *(a5 + 16) = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void CustomMaterial.Blending.init(blending:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 24);
    v9 = *(a1 + 8);
    v11 = *a1;
    v12 = v9;
    v13 = v3;
    v14 = v8;
    v15 = v7;
    CustomMaterial.Opacity.init(_:)(&v11, &v16);
    v4 = v16;
    v6 = v17;
    v10 = 0x100000000;
    if (!v19)
    {
      v10 = 0;
    }

    v5 = v10 | v18;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 20) = BYTE4(v5);
}

void CustomMaterial.Opacity.init(_:)(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = a1[8];
    v6 = *(a1 + 3);
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);

    outlined consume of MaterialParameters.Texture?(v7, v4);
    v9 = 84148994;
  }

  else
  {
    v9 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 20) = 0;
}

Swift::Int CustomMaterial.BlendMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t CustomMaterial.Opacity.texture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t CustomMaterial.Opacity.texture.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(v1 + 8);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t (*static CustomMaterial.Opacity.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t *CustomMaterial.Opacity.init(scale:texture:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v3 = *result;
  v4 = *(result + 2);
  *(a2 + 20) = 0;
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t *CustomMaterial.Opacity.init(scale:texture:blendMode:)@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v4 = *result;
  v5 = *(result + 2);
  *(a3 + 20) = *a2;
  *a3 = a4;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  return result;
}

void CustomMaterial.Opacity.init(floatLiteral:)(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
}

uint64_t CustomMaterial.Opacity.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  if (v6)
  {
    v7 = *(v2 + 1);

    v8 = REMaterialCreateDefaultSamplerDescriptor();
    v9 = 1;
    v10 = 84148994;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = -1;
  }

  strcpy(a1, "textureOpacity");
  *(a1 + 15) = -18;
  *(a1 + 16) = v8;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v9;
  result = RELinkedOnOrAfterFall2024OSVersions();
  v12 = 0x537974696361706FLL;
  if (!result)
  {
    v12 = 0;
  }

  v13 = 0xEC000000656C6163;
  if (!result)
  {
    v13 = 0;
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  if (result)
  {
    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 16) = v14;
  *(a2 + 20) = 0u;
  if (result)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  *(a2 + 36) = 0uLL;
  *(a2 + 52) = 0uLL;
  *(a2 + 64) = 0uLL;
  *(a2 + 80) = v15;
  return result;
}

uint64_t CustomMaterial.Opacity.init(material:alternateTintKey:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  if (RELinkedOnOrAfterFall2024OSVersions())
  {
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5._countAndFlagsBits = 0x537974696361706FLL;
    v5._object = 0xEC000000656C6163;
    Material.getFloatParameter(key:)(v6, v5);
    if ((v7 & 0x100000000) != 0)
    {
      v8 = 1065353216;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 1065353216;
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0x4F65727574786574, 0xEE00797469636170, v9, v10, &v15);
  v11 = v16;
  if (v16)
  {
    v12 = v15;

    outlined consume of MaterialParameters.Texture?(v12, v11);
    v13 = 84148994;
  }

  else
  {
    v13 = 0;
  }

  *a2 = v8;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 20) = 0;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

float protocol witness for ExpressibleByFloatLiteral.init(floatLiteral:) in conformance CustomMaterial.Opacity@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  return result;
}

uint64_t (*static CustomMaterial.Clearcoat.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

id CustomMaterial.Clearcoat.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  if (v6)
  {
    v7 = *(v2 + 1);

    result = REMaterialCreateDefaultSamplerDescriptor();
    v9 = 1;
    v10 = 84148994;
  }

  else
  {
    result = 0;
    v10 = 0;
    v9 = -1;
  }

  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001C18E2AA0;
  *(a1 + 16) = result;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v9;
  strcpy(a2, "clearcoatScale");
  *(a2 + 15) = -18;
  *(a2 + 16) = v5;
  *(a2 + 80) = 2;
  return result;
}

uint64_t CustomMaterial.Clearcoat.init(material:alternateTintKey:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._countAndFlagsBits = 0x616F637261656C63;
  v5._object = 0xEE00656C61635374;
  Material.getFloatParameter(key:)(v6, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0xD000000000000010, 0x80000001C18E2AA0, v9, v10, &v16);
  v11 = v17;
  if (v17)
  {
    v12 = v16;

    outlined consume of MaterialParameters.Texture?(v12, v11);
    v13 = 84148994;
  }

  else
  {
    v13 = 0;
  }

  v14 = *&v8;
  if ((v8 & 0x100000000) != 0)
  {
    v14 = 1.0;
  }

  *a2 = v14;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CustomMaterial.BaseColor.texture.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(v1 + 8);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t (*static CustomMaterial.ClearcoatRoughness.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t *CustomMaterial.ClearcoatRoughness.init(scale:texture:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v3 = *result;
  v4 = *(result + 2);
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

void CustomMaterial.ClearcoatRoughness.init(floatLiteral:)(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void CustomMaterial.Metallic.init(_:)(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = a1[8];
    v6 = *(a1 + 3);
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);

    outlined consume of MaterialParameters.Texture?(v7, v4);
    v9 = 84148994;
  }

  else
  {
    v9 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
}

double CustomMaterial.ClearcoatRoughness.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  if (v6)
  {
    v7 = *(v2 + 1);

    v8 = REMaterialCreateDefaultSamplerDescriptor();
    v9 = 1;
    v10 = 84148994;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = -1;
  }

  *a1 = 0xD000000000000019;
  *(a1 + 8) = 0x80000001C18E2AC0;
  *(a1 + 16) = v8;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v9;
  *a2 = 0xD000000000000017;
  *(a2 + 8) = 0x80000001C18DD830;
  *(a2 + 16) = v5;
  *(a2 + 80) = 2;
  return result;
}

uint64_t CustomMaterial.ClearcoatRoughness.init(material:alternateTintKey:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._object = 0x80000001C18DD830;
  v5._countAndFlagsBits = 0xD000000000000017;
  Material.getFloatParameter(key:)("form1", v5);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  Material.getTextureParameter(key:)(0xD000000000000019, 0x80000001C18E2AC0, v8, v9, &v15);
  v10 = v16;
  if (v16)
  {
    v11 = v15;

    outlined consume of MaterialParameters.Texture?(v11, v10);
    v12 = 84148994;
  }

  else
  {
    v12 = 0;
  }

  v13 = *&v7;
  if ((v7 & 0x100000000) != 0)
  {
    v13 = 1.0;
  }

  *a2 = v13;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*static CustomMaterial.Normal.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x80000001C18E2AE0;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

double CustomMaterial.Normal.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*v2)
  {
    v6 = *v2;

    v7 = REMaterialCreateDefaultSamplerDescriptor();
    v8 = 1;
    v9 = 84148994;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v8 = -1;
  }

  strcpy(a1, "textureNormal");
  *(a1 + 14) = -4864;
  *(a1 + 16) = v7;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = v9;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v8;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  return result;
}

uint64_t CustomMaterial.Normal.init(material:alternateTintKey:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  Material.getTextureParameter(key:)(0x4E65727574786574, 0xED00006C616D726FLL, v4, v5, &v10);
  v6 = v11;
  if (v11)
  {
    v7 = v10;

    outlined consume of MaterialParameters.Texture?(v7, v6);
    v8 = 84148994;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v8;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*static CustomMaterial.AmbientOcclusion.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

double CustomMaterial.AmbientOcclusion.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*v2)
  {
    v6 = *v2;

    v7 = REMaterialCreateDefaultSamplerDescriptor();
    v8 = 1;
    v9 = 84148994;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v8 = -1;
  }

  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001C18DDE20;
  *(a1 + 16) = v7;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = v9;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v8;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  return result;
}

uint64_t CustomMaterial.AmbientOcclusion.init(material:alternateTintKey:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  Material.getTextureParameter(key:)(0xD000000000000017, 0x80000001C18DDE20, v4, v5, &v10);
  v6 = v11;
  if (v11)
  {
    v7 = v10;

    outlined consume of MaterialParameters.Texture?(v7, v6);
    v8 = 84148994;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v8;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CustomMaterial.ClearcoatNormal.texture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t CustomMaterial.ClearcoatNormal.texture.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *v1;

  *v1 = v2;
  *(v1 + 2) = v3;
  return result;
}

uint64_t CustomMaterial.ClearcoatNormal.init(texture:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

void CustomMaterial.Normal.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 16);
    v6 = *a1;
    v7 = *(a1 + 8);

    outlined consume of MaterialParameters.Texture?(v6, v3);
    v8 = 84148994;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v8;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.BlendMode and conformance CustomMaterial.BlendMode()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.BlendMode and conformance CustomMaterial.BlendMode;
  if (!lazy protocol witness table cache variable for type CustomMaterial.BlendMode and conformance CustomMaterial.BlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.BlendMode and conformance CustomMaterial.BlendMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomMaterial.BaseColor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CustomMaterial.BaseColor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation14CustomMaterialV8BlendingO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomMaterial.Blending(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 21))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CustomMaterial.Blending(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 13) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for CustomMaterial.Blending(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomMaterial.Opacity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 21))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CustomMaterial.Opacity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomMaterial.Metallic(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 20))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CustomMaterial.Metallic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double CustomMaterial.ClearcoatNormal.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*v2)
  {
    v6 = *v2;

    v7 = REMaterialCreateDefaultSamplerDescriptor();
    v8 = 1;
    v9 = 84148994;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v8 = -1;
  }

  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x80000001C18E2B00;
  *(a1 + 16) = v7;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = v9;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v8;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  return result;
}

uint64_t CustomMaterial.ClearcoatNormal.init(material:alternateTintKey:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  Material.getTextureParameter(key:)(0xD000000000000016, 0x80000001C18E2B00, v4, v5, &v10);
  v6 = v11;
  if (v11)
  {
    v7 = v10;

    outlined consume of MaterialParameters.Texture?(v7, v6);
    v8 = 84148994;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v8;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CustomComponentProxy.init(with:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  CustomComponentProxy.updateJSON(with:)(a1, a2);
  result = outlined consume of Data?(a1, a2);
  *a3 = 0;
  return result;
}

uint64_t CustomComponentProxy.updateJSON(with:)(uint64_t a1, unint64_t a2)
{
  result = *v2;
  if (*v2)
  {
    result = RECIntrospectionFree();
    *v2 = 0;
  }

  if (a2 >> 60 != 15)
  {
    v6 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_45;
      }

      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = v7 - v8;
      if (!__OFSUB__(v7, v8))
      {
LABEL_14:
        result = outlined copy of Data._Representation(a1, a2);
        if (v9 < 1)
        {
          goto LABEL_45;
        }

LABEL_15:
        if (v6)
        {
          if (v6 != 2)
          {
            LODWORD(v13) = HIDWORD(a1) - a1;
            if (__OFSUB__(HIDWORD(a1), a1))
            {
LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

            v13 = v13;
LABEL_23:
            if (v13 > 2147483646)
            {
              goto LABEL_45;
            }

            if (v6 == 2)
            {
              v16 = *(a1 + 16);
              v15 = *(a1 + 24);
              v12 = __OFSUB__(v15, v16);
              v14 = v15 - v16;
              if (!v12)
              {
                goto LABEL_30;
              }

              __break(1u);
            }

            LODWORD(v14) = HIDWORD(a1) - a1;
            if (__OFSUB__(HIDWORD(a1), a1))
            {
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            v14 = v14;
LABEL_30:
            result = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              __break(1u);
            }

            else if (result >= 0xFFFFFFFF80000000)
            {
              if (result <= 0x7FFFFFFF)
              {
                result = RECIntrospectionAlloc();
                *v2 = result;
                if (result)
                {
                  v17 = result;
                  if (!v6)
                  {
LABEL_40:
                    v20 = BYTE6(a2);
LABEL_43:
                    Data.copyBytes(to:count:)();
LABEL_44:
                    *(v17 + v20) = 0;
                    goto LABEL_45;
                  }

                  if (v6 != 2)
                  {
                    if (!__OFSUB__(HIDWORD(a1), a1))
                    {
                      v20 = HIDWORD(a1) - a1;
                      goto LABEL_43;
                    }

LABEL_55:
                    __break(1u);
                    return result;
                  }

                  if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
                  {
                    Data.copyBytes(to:count:)();
                    v19 = *(a1 + 16);
                    v18 = *(a1 + 24);
                    v20 = v18 - v19;
                    if (!__OFSUB__(v18, v19))
                    {
                      goto LABEL_44;
                    }

                    __break(1u);
                    goto LABEL_40;
                  }

LABEL_54:
                  __break(1u);
                  goto LABEL_55;
                }

LABEL_45:

                return outlined consume of Data?(a1, a2);
              }

              goto LABEL_50;
            }

            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v11 = *(a1 + 16);
          v10 = *(a1 + 24);
          v12 = __OFSUB__(v10, v11);
          v13 = v10 - v11;
          if (!v12)
          {
            goto LABEL_23;
          }

          __break(1u);
        }

        v14 = BYTE6(a2);
        goto LABEL_30;
      }

      __break(1u);
    }

    else if (!v6)
    {
      if (!BYTE6(a2))
      {
        goto LABEL_45;
      }

      goto LABEL_15;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v9 = HIDWORD(a1) - a1;
    goto LABEL_14;
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t CustomComponentProxy.getJSONData()()
{
  v1 = type metadata accessor for Data.Deallocator();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (!*v0)
  {
    return 0;
  }

  v7 = strlen(*v0);
  (*(v2 + 104))(v5, *MEMORY[0x1E6969010], v1);
  return specialized Data.init(bytesNoCopy:count:deallocator:)(v6, v7, v5);
}

uint64_t CustomComponentProxy.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = 0;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance CustomComponentProxy(uint64_t *a1)
{
  if (*a1)
  {
    v3 = *a1;
    RECIntrospectionFree();
    *a1 = 0;
    v1 = vars8;
  }

  JUMPOUT(0x1C6902A30);
}

void static CustomComponentProxy.__free(to:offset:)(uint64_t *a1)
{
  if (*a1)
  {
    v3 = *a1;
    RECIntrospectionFree();
    *a1 = 0;
    v1 = vars8;
  }

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__addIntrospectionData(_:) in conformance CustomComponentProxy(uint64_t result)
{
  if (result)
  {
    return REStructBuilderAddMemberDataTypeWithTag();
  }

  return result;
}

uint64_t static CustomComponentProxy.__addIntrospectionData(_:)(uint64_t result)
{
  if (result)
  {
    return REStructBuilderAddMemberDataTypeWithTag();
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance CustomComponentProxy@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = 0;
  return result;
}

uint64_t CustomComponentProxy.encodeToData(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Data.Deallocator();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1887600;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = 0xD00000000000001FLL;
  *(v11 + 40) = 0x80000001C18E2E90;
  type metadata accessor for OS_os_log();
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  if (a1 == 1852797802 && a2 == 0xE400000000000000 || (v13 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (v10)
    {
      v14 = strlen(v10);
      (*(v6 + 104))(v9, *MEMORY[0x1E6969010], v5);
      return specialized Data.init(bytesNoCopy:count:deallocator:)(v10, v14, v9);
    }

    v13 = 1;
  }

  lazy protocol witness table accessor for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError();
  swift_allocError();
  *v16 = v13;
  return swift_willThrow();
}

unint64_t one-time initialization function for customComponentTypesToHandles()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static SceneManager.customComponentTypesToHandles = result;
  return result;
}

void *one-time initialization function for customComponentTypesToKeys()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static SceneManager.customComponentTypesToKeys = result;
  return result;
}

unint64_t one-time initialization function for handlesToCustomComponentTypes()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit9Component_pXpTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static SceneManager.handlesToCustomComponentTypes = result;
  return result;
}

unint64_t one-time initialization function for customComponentTypeObjectIdToHandles()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static SceneManager.customComponentTypeObjectIdToHandles = result;
  return result;
}

uint64_t SceneManager.builtinComponentRegistry.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t SceneManager.scenes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

void SceneManager.append(scene:)(uint64_t a1)
{
  swift_beginAccess();

  MEMORY[0x1C68F3650](v3);
  if (*((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v9 = *((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v4 = *(v1 + 24);
  v5 = *(a1 + 16);
  REECSManagerAddScene();
  swift_beginAccess();
  v6 = static RealityFusionSession.sharedSession;
  if (static RealityFusionSession.sharedSession)
  {
    swift_beginAccess();
    if (v6[2])
    {
      v7 = RFServiceManagerGetAnchorManagementService();
      if (v7)
      {
        v8 = v7;
        RFAnchorManagementUpdateAnchoringInScene();
      }
    }
  }
}

uint64_t SceneManager.remove(scene:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[4];
  v15 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
LABEL_19:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v14 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C68F41F0](v5, v3);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v1 = v14;
          v9 = v15;
          goto LABEL_17;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_14;
        }
      }

      if (v6 == a1)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v8 = *(v15 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v15;
        specialized ContiguousArray._endMutation()();
      }

      ++v5;
      if (v7 == v4)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v10 = v1[4];
  v1[4] = v9;

  v11 = v1[3];
  v12 = *(a1 + 16);
  return REECSManagerRemoveScene();
}

void *SceneManager.init(coreECSManager:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v1[4] = MEMORY[0x1E69E7CC0];
  v1[5] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_So19REComponentClassPtraTt0g5Tf4g_n(v3);
  v1[6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo19REComponentClassPtra_10RealityKit9Component_pXpTt0g5Tf4g_n(v3);
  type metadata accessor for BuiltInComponentRegistry();
  v4 = swift_allocObject();
  *(v4 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_17RealityFoundation13ComponentInfoVTt0g5Tf4g_n(v3);
  *(v4 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_17RealityFoundation13ComponentInfoVTt0g5Tf4g_n(v3);
  v1[2] = v4;
  RERetain();
  v1[3] = a1;
  REECSManagerSetSwiftObject();
  if (one-time initialization token for sharedManager != -1)
  {
    swift_once();
  }

  SceneManager.registerBuiltInComponents()();
  specialized SceneManager.registerObservableComponents()();
  return v1;
}

uint64_t SceneManager.deinit()
{
  result = swift_beginAccess();
  v2 = v0[4];
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v12 = v0[4];
    }

    result = __CocoaSet.count.getter();
    v3 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
LABEL_10:
      v6 = v0[3];
      REECSManagerSetSwiftObject();
      v7 = v0[3];
      RERelease();
      v8 = v0[2];

      v9 = v0[4];

      v10 = v0[5];

      v11 = v0[6];

      return v0;
    }
  }

  if (v3 >= 1)
  {

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C68F41F0](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      SceneManager.remove(scene:)(v5);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t SceneManager.__deallocating_deinit()
{
  SceneManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t encodeComponent(_:_:_:)(uint64_t a1, uint64_t a2)
{
  result = RECustomComponentGetObject();
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (one-time initialization token for handlesToCustomComponentTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static SceneManager.handlesToCustomComponentTypes;
  if (!*(static SceneManager.handlesToCustomComponentTypes + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v7 & 1) == 0))
  {
    swift_endAccess();
    return 0;
  }

  v18 = *(*(v5 + 56) + 16 * v6);
  swift_endAccess();
  v8 = *(*(&v18 + 1) + 32);
  v24 = v18;
  __swift_allocate_boxed_opaque_existential_1(v23);
  v8(v4);
  outlined init with copy of __REAssetService(v23, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pMd, &_sSE_pMR);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    outlined destroy of BodyTrackingComponent?(v19, &_sSE_pSgMd, &_sSE_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return 0;
  }

  outlined init with take of ForceEffectBase(v19, v22);
  outlined init with copy of __REAssetService(v23, &v21);
  if (swift_dynamicCast())
  {
    v21 = *&v19[0];
    v9 = String.init(cString:)();
    v11 = CustomComponentProxy.encodeToData(_:)(v9, v10);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v16 = String.init(cString:)();
    v11 = Encodable.encodeToData(_:)(v16, v17);
  }

  v13 = v11;
  v14 = v12;

  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return isa;
}

uint64_t @objc decodeComponent(_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = decodeComponent(_:_:_:_:)(a1, a2);

  return v6 & 1;
}

uint64_t decodeComponent(_:_:_:_:)(uint64_t a1, uint64_t a2)
{
  result = RECustomComponentGetObject();
  if (result)
  {
    v4 = result;
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = static SceneManager.handlesToCustomComponentTypes;
    if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v7 & 1) != 0))
    {
      v8 = (*(v5 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
      v11 = swift_endAccess();
      v12 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v11);
      (*(v10 + 32))(v4, v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_pMd, &_sSe_pMR);
      if (swift_dynamicCast())
      {
        outlined init with take of ForceEffectBase(v21, v23);
        v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
        v16 = String.init(cString:)();
        v18 = v17;
        v19 = v24;
        __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
        Decodable.decodeFromData(_:_:)(v13, v15, v16, v18, v19);

        outlined consume of Data._Representation(v13, v15);
        outlined init with copy of __REAssetService(v23, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
        swift_dynamicCast();
        (*(v10 + 40))(v20, v4, 0, 1, v9, v10);
        __swift_destroy_boxed_opaque_existential_1(v20);
        __swift_destroy_boxed_opaque_existential_1(v23);
        return 1;
      }

      v22 = 0;
      memset(v21, 0, sizeof(v21));
      outlined destroy of BodyTrackingComponent?(v21, &_sSe_pSgMd, &_sSe_pSgMR);
    }

    else
    {
      swift_endAccess();
    }

    return 0;
  }

  return result;
}

uint64_t closure #1 in static SceneManager.customComponentTypeHelper(_:typeName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v40 = *MEMORY[0x1E69E9840];
  v31 = 2;
  v33 = 0;
  v34 = 0;
  v32 = a1;
  v35 = @objc deinitComponent(componentTypeHandle:rawPointer:);
  v36 = 0u;
  v37 = 0u;
  v38 = a3;
  v39 = a2;
  v18 = MEMORY[0x1C68F8510](&v31, a4 & 1);
  if (v18)
  {
    v19 = v18;
    REComponentTypeSetCloneCallback();
    if (a5)
    {
      v28 = 0x6F436D6F74737543;
      v29 = 0xEF746E656E6F706DLL;
      MEMORY[0x1C68F3410](a6, a7);
      v20 = String.utf8CString.getter();

      MEMORY[0x1C68FD440](v20 + 32);
    }

    if (a8)
    {
      type metadata accessor for SceneManager();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      LOBYTE(v27) = 0;
      v29 = 0;
      v30 = 0;
      v28 = MEMORY[0x1E69E7CC0];
      static Component.registerBuiltin(bundle:reComponentClass:access:availability:)(v22, 0, &v27, &v28, a10, a11);
    }

    if (one-time initialization token for customComponentTypesToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = static SceneManager.customComponentTypesToHandles;
    static SceneManager.customComponentTypesToHandles = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, a12, a13, isUniquelyReferenced_nonNull_native);
    static SceneManager.customComponentTypesToHandles = v27;
    swift_endAccess();
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = static SceneManager.handlesToCustomComponentTypes;
    static SceneManager.handlesToCustomComponentTypes = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a10, a11, v19, v24);
    static SceneManager.handlesToCustomComponentTypes = v27;
    result = swift_endAccess();
    *a9 = v19;
    v26 = *MEMORY[0x1E69E9840];
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t deinitComponent(componentTypeHandle:rawPointer:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for handlesToCustomComponentTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static SceneManager.handlesToCustomComponentTypes;
  if (!*(static SceneManager.handlesToCustomComponentTypes + 16))
  {
    return swift_endAccess();
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  v7 = (*(v4 + 56) + 16 * v5);
  v8 = *v7;
  v9 = v7[1];
  swift_endAccess();
  return (*(v9 + 56))(a2, 0, v8, v9);
}

Swift::OpaquePointer __swiftcall cloneComponent(_:)(Swift::OpaquePointer a1)
{
  Class = REComponentGetClass();
  v2 = REComponentCreateByClass();
  Object = RECustomComponentGetObject();
  if (!Object || (v4 = Object, (v5 = RECustomComponentGetObject()) == 0))
  {
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v11 = static OS_os_log.default.getter();
    goto LABEL_11;
  }

  v6 = v5;
  if (one-time initialization token for handlesToCustomComponentTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static SceneManager.handlesToCustomComponentTypes;
  if (!*(static SceneManager.handlesToCustomComponentTypes + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v9 & 1) == 0))
  {
    swift_endAccess();
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v11 = static OS_os_log.default.getter();
LABEL_11:
    os_log(_:dso:log:_:_:)();

    return v2;
  }

  v13 = *(*(v7 + 56) + 16 * v8);
  swift_endAccess();
  v10 = *(*(&v13 + 1) + 32);
  v15 = v13;
  __swift_allocate_boxed_opaque_existential_1(v14);
  v10(v4, v13, *(&v13 + 1));
  (*(*(&v13 + 1) + 40))(v14, v6, 0, 1, v13, *(&v13 + 1));
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v2;
}

uint64_t SceneManager.registerBuiltInType(_:typeEnum:)(uint64_t a1, uint64_t a2)
{
  result = REComponentClassFromType();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v2 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + 40);
    *(v2 + 40) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 40) = v11;
    swift_endAccess();
    swift_beginAccess();
    v9 = *(v2 + 48);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + 48);
    *(v2 + 48) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, v6, v10);
    *(v2 + 48) = v12;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SceneManager.componentTypeToComponentClass(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 40);
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
LABEL_6:
      swift_endAccess();
      return v9;
    }
  }

  swift_endAccess();
  (*(a2 + 104))(v20, a1, a2);
  v9 = v20[0];
  if (v20[0])
  {
    swift_beginAccess();
    v10 = *(v3 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v3 + 40);
    *(v3 + 40) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, isUniquelyReferenced_nonNull_native);
    *(v3 + 40) = v19;
    goto LABEL_6;
  }

  v13 = specialized static SceneManager.makeComponentTypeHandleKey(_:typeName:)(a1, a2, 0, 0);
  v15 = v14;
  if (one-time initialization token for customComponentTypesToHandles != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static SceneManager.customComponentTypesToHandles;
  if (*(static SceneManager.customComponentTypesToHandles + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15), (v18 & 1) != 0))
  {
    v9 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    return 0;
  }

  return v9;
}

uint64_t SceneManager.componentClassToComponentType(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  if (*(v3 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v5)
    {
      goto LABEL_7;
    }
  }

  swift_endAccess();
  if (one-time initialization token for handlesToCustomComponentTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static SceneManager.handlesToCustomComponentTypes;
  if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
LABEL_7:
    v7 = (*(v3 + 56) + 16 * v4);
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  return v8;
}

uint64_t protocol witness for __SceneService.scenes.getter in conformance SceneManager()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
}

uint64_t Encodable.encodeToData(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = a1 == 1852797802 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v6 = type metadata accessor for JSONEncoder();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  }

  else
  {
    type metadata accessor for REEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = REEncoderCreate();
    v10 = REEncoder.encode<A>(_:)(v2);
    if (!v3)
    {
      v4 = v10;
    }

    swift_setDeallocating();
    REEncoderDestroy();
  }

  return v4;
}

uint64_t Decodable.decodeFromData(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *(a5 - 8);
  v7 = *(v23 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v23 - v12;
  if (v14 == v15 && v11 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v16 = type metadata accessor for JSONDecoder();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v5)
    {
    }

    v20 = v23;
    v21 = v24;
    (*(v23 + 8))(v24, a5);
  }

  else
  {
    type metadata accessor for REDecoder();
    inited = swift_initStackObject();
    *(inited + 16) = REDecoderCreate();
    REDecoder.decode<A>(_:from:)(a5, v10);
    if (v5)
    {
      swift_setDeallocating();
      return REDecoderDestroy();
    }

    v20 = v23;
    v21 = v24;
    (*(v23 + 8))(v24, a5);
    swift_setDeallocating();
    REDecoderDestroy();
    v13 = v10;
  }

  return (*(v20 + 32))(v21, v13, a5);
}

uint64_t specialized static SceneManager.makeComponentTypeHandleKey(_:typeName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v19 = dispatch thunk of CustomStringConvertible.description.getter();

    MEMORY[0x1C68F3410](95, 0xE100000000000000);

    MEMORY[0x1C68F3410](a3, a4);

    return v19;
  }

  else
  {
    if (one-time initialization token for customComponentTypesToKeys != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = static SceneManager.customComponentTypesToKeys;
    if (*(static SceneManager.customComponentTypesToKeys + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v10 & 1) != 0))
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v13 = *v11;
      v12 = v11[1];
      swift_endAccess();

      return v13;
    }

    else
    {
      swift_endAccess();
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = static SceneManager.customComponentTypesToKeys;
      static SceneManager.customComponentTypesToKeys = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v16, a1, isUniquelyReferenced_nonNull_native);
      static SceneManager.customComponentTypesToKeys = v18;
      swift_endAccess();
      return v14;
    }
  }
}

uint64_t specialized static SceneManager.customComponentTypeHelper(_:typeName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v69 = *MEMORY[0x1E69E9840];
  v8 = specialized static SceneManager.makeComponentTypeHandleKey(_:typeName:)(a1, a2, a3, a4);
  v10 = v9;
  if (one-time initialization token for customComponentTypesToHandles != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static SceneManager.customComponentTypesToHandles;
  if (*(static SceneManager.customComponentTypesToHandles + 16))
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v10);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      swift_endAccess();

      result = v14;
LABEL_47:
      v49 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  swift_endAccess();
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v5 = (*(a2 + 8))(a1, a2);
    v16 = v17;
  }

  v18 = a2 + 24;
  v19 = *(a2 + 24);

  v20 = v19(a1, a2);
  v21 = REStructBuilderCreate();
  if (v20 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v20 > 0x7FFFFFFF)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v22 = v21;
  v50 = v8;
  String.utf8CString.getter();
  v23 = REStructBuilderInit();

  if (!v23)
  {
    goto LABEL_52;
  }

  (*(a2 + 88))(v22, a1, a2);
  v24 = RECIntrospectionStructRegister();
  if (!v24)
  {
    goto LABEL_52;
  }

  v25 = v24;
  REStructBuilderDestroy();
  v26 = dynamic_cast_existential_2_conditional(a1);
  if (v26)
  {
    v63 = a1;
    v64 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pXpMd, &_s10RealityKit9Component_pXpMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13DisableRESync_pMd, &_s17RealityFoundation13DisableRESync_pMR);
    v27 = swift_dynamicCast();
    if ((v27 & 1) == 0)
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
    }

    v28 = v27 ^ 1;
    outlined destroy of BodyTrackingComponent?(&v56, &_s17RealityFoundation13DisableRESync_pSgMd, &_s17RealityFoundation13DisableRESync_pSgMR);
  }

  else
  {
    v28 = 0;
  }

  v63 = 48;
  LODWORD(v64) = 1;
  v65 = 0;
  v66 = @objc ecsNetSyncWriteSnapshot(_:_:_:_:_:);
  v67 = @objc ecsNetSyncReadSnapshot(_:_:_:_:_:_:);
  v68 = v28;
  if (v26)
  {
    RERegisterSwiftCodableCallbacks();
  }

  else
  {
    static os_log_type_t.default.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C1887600;
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1C68F3410](0xD000000000000018, 0x80000001C18E2D00);
    v30 = _typeName(_:qualified:)();
    MEMORY[0x1C68F3410](v30);

    MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18E2D20);

    MEMORY[0x1C68F3410](0xD000000000000027, 0x80000001C18E2D40);

    v31 = v56;
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v29 + 32) = v31;
    type metadata accessor for OS_os_log();
    v32 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  LODWORD(v33) = swift_conformsToProtocol2() != 0;
  v34 = swift_conformsToProtocol2();
  if (a1)
  {
    v33 = v33;
  }

  else
  {
    v33 = 0;
  }

  if (a1)
  {
    v35 = v34 != 0;
  }

  else
  {
    v35 = 0;
  }

  MEMORY[0x1EEE9AC00](v34);
  if ((v16 & 0x1000000000000000) != 0)
  {
LABEL_48:

    _StringGuts._slowWithCString<A>(_:)();
    goto LABEL_46;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {
    v52[0] = v5;
    v52[1] = v16 & 0xFFFFFFFFFFFFFFLL;
    LODWORD(v56) = 2;
    v57 = 0uLL;
    *(&v56 + 1) = v52;
    v58 = @objc deinitComponent(componentTypeHandle:rawPointer:);
    v59 = 0u;
    v60 = 0u;
    v61 = v25;
    v62 = &v63;

    v43 = MEMORY[0x1C68F8510](&v56, v33);
    if (!v43)
    {
      goto LABEL_52;
    }

    v8 = v43;
    REComponentTypeSetCloneCallback();
    if (v26)
    {
      v53 = 0x6F436D6F74737543;
      v54 = 0xEF746E656E6F706DLL;
      MEMORY[0x1C68F3410](v5, v16);
      v44 = String.utf8CString.getter();

      MEMORY[0x1C68FD440](v44 + 32);
    }

    if (v35)
    {
      type metadata accessor for SceneManager();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v46 = [objc_opt_self() bundleForClass_];
      LOBYTE(v51) = 0;
      v54 = 0;
      v55 = 0;
      v53 = MEMORY[0x1E69E7CC0];
      static Component.registerBuiltin(bundle:reComponentClass:access:availability:)(v46, 0, &v51, &v53, a1, a2);
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = static SceneManager.customComponentTypesToHandles;
    v18 = 0x8000000000000000;
    static SceneManager.customComponentTypesToHandles = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v50, v10, isUniquelyReferenced_nonNull_native);
    static SceneManager.customComponentTypesToHandles = v51;
    swift_endAccess();
    if (one-time initialization token for handlesToCustomComponentTypes == -1)
    {
LABEL_44:
      swift_beginAccess();
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v51 = static SceneManager.handlesToCustomComponentTypes;
      static SceneManager.handlesToCustomComponentTypes = v18;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, v8, v48);
      v42 = &v70;
LABEL_45:
      static SceneManager.handlesToCustomComponentTypes = *(v42 - 32);
      swift_endAccess();
      *&v56 = v8;
LABEL_46:
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      result = v56;
      goto LABEL_47;
    }

LABEL_51:
    swift_once();
    goto LABEL_44;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
    goto LABEL_48;
  }

  LODWORD(v56) = 2;
  v57 = 0uLL;
  *(&v56 + 1) = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v58 = @objc deinitComponent(componentTypeHandle:rawPointer:);
  v59 = 0u;
  v60 = 0u;
  v61 = v25;
  v62 = &v63;

  v36 = MEMORY[0x1C68F8510](&v56, v33);
  if (v36)
  {
    v8 = v36;
    REComponentTypeSetCloneCallback();
    if (v26)
    {
      v53 = 0x6F436D6F74737543;
      v54 = 0xEF746E656E6F706DLL;
      MEMORY[0x1C68F3410](v5, v16);
      v37 = String.utf8CString.getter();

      MEMORY[0x1C68FD440](v37 + 32);
    }

    if (v35)
    {
      type metadata accessor for SceneManager();
      v38 = swift_getObjCClassFromMetadata();
      v39 = [objc_opt_self() bundleForClass_];
      LOBYTE(v52[0]) = 0;
      v54 = 0;
      v55 = 0;
      v53 = MEMORY[0x1E69E7CC0];
      static Component.registerBuiltin(bundle:reComponentClass:access:availability:)(v39, 0, v52, &v53, a1, a2);
    }

    swift_beginAccess();
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = static SceneManager.customComponentTypesToHandles;
    static SceneManager.customComponentTypesToHandles = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v50, v10, v40);
    static SceneManager.customComponentTypesToHandles = v52[0];
    swift_endAccess();
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = static SceneManager.handlesToCustomComponentTypes;
    static SceneManager.handlesToCustomComponentTypes = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, v8, v41);
    v42 = &v71;
    goto LABEL_45;
  }

LABEL_52:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static SceneManager.customComponentType(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static SceneManager.customComponentTypeObjectIdToHandles;
  if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    swift_endAccess();
    v7 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(a1, a2, 0, 0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = static SceneManager.customComponentTypeObjectIdToHandles;
    static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a1, isUniquelyReferenced_nonNull_native);
    static SceneManager.customComponentTypeObjectIdToHandles = v10;
  }

  swift_endAccess();
  return v7;
}

uint64_t specialized static CustomComponentProxy.__store(attribute:to:offset:deinitialize:)(uint64_t a1, uint64_t *a2, char a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __REAssetService(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v11 = v18;
  if (v18)
  {
    v12 = strlen(v18);
    (*(v7 + 104))(v10, *MEMORY[0x1E6969010], v6);
    v13 = specialized Data.init(bytesNoCopy:count:deallocator:)(v11, v12, v10);
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  v19[0] = 0;
  CustomComponentProxy.updateJSON(with:)(v13, v15);
  result = outlined consume of Data?(v13, v15);
  v17 = v19[0];
  if (a3)
  {
    result = *a2;
    if (*a2)
    {
      result = RECIntrospectionFree();
    }
  }

  *a2 = v17;
  return result;
}

uint64_t specialized static SceneManager.unregisterCustomComponents()()
{
  if (one-time initialization token for customComponentTypesToHandles != -1)
  {
LABEL_20:
    swift_once();
  }

  swift_beginAccess();
  v0 = static SceneManager.customComponentTypesToHandles;
  v1 = 1 << *(static SceneManager.customComponentTypesToHandles + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(static SceneManager.customComponentTypesToHandles + 64);
  v4 = (v1 + 63) >> 6;

  v5 = 0;
  if (v3)
  {
    while (1)
    {
      v6 = v5;
LABEL_10:
      v7 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v8 = *(*(v0 + 56) + ((v6 << 9) | (8 * v7)));
      RECustomComponentTypeGetObjectIntrospection();
      RECustomComponentTypeDestroy();
      RECIntrospectionStructUnregister();
      if (!v3)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v6 >= v4)
    {
      break;
    }

    v3 = *(v0 + 64 + 8 * v6);
    ++v5;
    if (v3)
    {
      v5 = v6;
      goto LABEL_10;
    }
  }

  if (one-time initialization token for customComponentTypesToKeys != -1)
  {
    swift_once();
  }

  v9 = MEMORY[0x1E69E7CC0];
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  static SceneManager.customComponentTypesToKeys = v10;

  static SceneManager.customComponentTypesToHandles = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s13OpaquePointerVTt0g5Tf4g_n(v9);

  if (one-time initialization token for handlesToCustomComponentTypes != -1)
  {
    swift_once();
  }

  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit9Component_pXpTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  static SceneManager.handlesToCustomComponentTypes = v11;

  if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
  {
    swift_once();
  }

  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  static SceneManager.customComponentTypeObjectIdToHandles = v12;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError()
{
  result = lazy protocol witness table cache variable for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError;
  if (!lazy protocol witness table cache variable for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError;
  if (!lazy protocol witness table cache variable for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomComponentProxy.CustomComponentProxyEncodeError and conformance CustomComponentProxy.CustomComponentProxyEncodeError);
  }

  return result;
}

RealityKit::__RKEntityMoveSelection_optional __swiftcall __RKEntityMoveSelection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveSelection.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityMoveSelection(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "move by distance";
  }

  else
  {
    v2 = "e";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "move by distance";
  }

  else
  {
    v4 = "e";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityMoveSelection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __RKEntityMoveSelection()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityMoveSelection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance __RKEntityMoveSelection@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveSelection.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityMoveSelection(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "move by distance";
  }

  else
  {
    v2 = "e";
  }

  *a1 = 0xD000000000000010;
  a1[1] = v2 | 0x8000000000000000;
}

RealityKit::__RKEntityMoveEase_optional __swiftcall __RKEntityMoveEase.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveEase.init(rawValue:), v3);

  v7 = 10;
  if (v5 < 0xA)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t __RKEntityMoveEase.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 6778732;
    v7 = 0x7265776F70;
    if (v1 != 8)
    {
      v7 = 1701734771;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x746E656E6F707865;
    if (v1 != 5)
    {
      v8 = 0x6574696D726568;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7261656E696CLL;
    v3 = 0x65636E756F62;
    v4 = 0x656C63726963;
    if (v1 != 3)
    {
      v4 = 0x63697473616C65;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 1801675106;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityMoveEase()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityMoveEase()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityMoveEase@<X0>(uint64_t *a1@<X8>)
{
  result = __RKEntityMoveEase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

RealityKit::__RKEntityMoveEaseType_optional __swiftcall __RKEntityMoveEaseType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveEaseType.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t __RKEntityMoveEaseType.rawValue.getter()
{
  v1 = 0x74756F2065736165;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E692065736165;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityMoveEaseType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x74756F2065736165;
  v5 = 0x80000001C18DD6D0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001C18DD6D0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E692065736165;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x74756F2065736165;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E692065736165;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityMoveEaseType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __RKEntityMoveEaseType()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityMoveEaseType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityMoveEaseType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x74756F2065736165;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001C18DD6D0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E692065736165;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t key path setter for __RKEntityTransformAction.relativeToEntity : __RKEntityTransformAction(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 192);
  *(v3 + 192) = v2;
}

uint64_t __RKEntityTransformAction.relativeToEntity.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 192);
}

uint64_t __RKEntityTransformAction.relativeToEntity.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 192);
  *(v1 + 192) = a1;
}

uint64_t __RKEntityTransformAction.__allocating_init(targetEntity:location:orientation:scale:duration:moveType:ease:easeType:respectPhysics:physicsAngularCoefficient:physicsLinearCoefficient:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, float a9, float a10, float a11, char *a12, char *a13, char *a14, char a15)
{
  v23 = *a12;
  v24 = *a13;
  v25 = *a14;
  type metadata accessor for __RKEntityTransformAction();
  v26 = swift_allocObject();
  *(v26 + 192) = 0;
  *(v26 + 208) = 0u;
  *(v26 + 224) = 0u;
  *(v26 + 240) = xmmword_1C1887620;
  *(v26 + 256) = 0;
  *(v26 + 264) = 1;
  *(v26 + 272) = 0u;
  *(v26 + 288) = 0u;
  *(v26 + 304) = 0u;
  *(v26 + 320) = 0u;
  *(v26 + 336) = 0u;
  *(v26 + 352) = 0;
  *(v26 + 112) = a2;
  *(v26 + 120) = a3;
  *(v26 + 128) = a4 & 1;
  *(v26 + 144) = a5;
  *(v26 + 152) = a6;
  *(v26 + 160) = a7 & 1;
  *(v26 + 164) = a8;
  *(v26 + 168) = BYTE4(a8) & 1;
  *(v26 + 172) = a9;
  *(v26 + 176) = v23;
  *(v26 + 177) = v24;
  *(v26 + 178) = v25;
  *(v26 + 180) = a10;
  *(v26 + 184) = a11;
  *(v26 + 179) = a15;
  swift_beginAccess();
  *(v26 + 192) = 0;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityTransformAction.__allocating_init(targetEntity:location:orientation:scale:duration:moveType:ease:easeType:respectPhysics:physicsAngularCoefficient:physicsLinearCoefficient:relativeToEntity:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, float a9, float a10, float a11, char *a12, char *a13, char *a14, char a15, uint64_t a16)
{
  v25 = swift_allocObject();
  v26 = *a12;
  v27 = *a13;
  v28 = *a14;
  *(v25 + 192) = 0;
  *(v25 + 208) = 0u;
  *(v25 + 224) = 0u;
  *(v25 + 240) = xmmword_1C1887620;
  *(v25 + 256) = 0;
  *(v25 + 264) = 1;
  *(v25 + 272) = 0u;
  *(v25 + 288) = 0u;
  *(v25 + 304) = 0u;
  *(v25 + 320) = 0u;
  *(v25 + 336) = 0u;
  *(v25 + 352) = 0;
  *(v25 + 112) = a2;
  *(v25 + 120) = a3;
  *(v25 + 128) = a4 & 1;
  *(v25 + 144) = a5;
  *(v25 + 152) = a6;
  *(v25 + 160) = a7 & 1;
  *(v25 + 164) = a8;
  *(v25 + 168) = BYTE4(a8) & 1;
  *(v25 + 172) = a9;
  *(v25 + 176) = v26;
  *(v25 + 177) = v27;
  *(v25 + 178) = v28;
  *(v25 + 180) = a10;
  *(v25 + 184) = a11;
  *(v25 + 179) = a15;
  swift_beginAccess();
  *(v25 + 192) = a16;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityTransformAction.init(targetEntity:location:orientation:scale:duration:moveType:ease:easeType:respectPhysics:physicsAngularCoefficient:physicsLinearCoefficient:relativeToEntity:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, float a9, float a10, float a11, char *a12, char *a13, char *a14, char a15, uint64_t a16)
{
  v18 = *a12;
  v19 = *a13;
  v20 = *a14;
  *(v16 + 192) = 0;
  *(v16 + 208) = 0u;
  *(v16 + 224) = 0u;
  *(v16 + 240) = xmmword_1C1887620;
  *(v16 + 256) = 0;
  *(v16 + 264) = 1;
  *(v16 + 272) = 0u;
  *(v16 + 288) = 0u;
  *(v16 + 304) = 0u;
  *(v16 + 320) = 0u;
  *(v16 + 336) = 0u;
  *(v16 + 352) = 0;
  *(v16 + 112) = a2;
  *(v16 + 120) = a3;
  *(v16 + 128) = a4 & 1;
  *(v16 + 144) = a5;
  *(v16 + 152) = a6;
  *(v16 + 160) = a7 & 1;
  *(v16 + 164) = a8;
  *(v16 + 168) = BYTE4(a8) & 1;
  *(v16 + 172) = a9;
  *(v16 + 176) = v18;
  *(v16 + 177) = v19;
  *(v16 + 178) = v20;
  *(v16 + 180) = a10;
  *(v16 + 184) = a11;
  *(v16 + 179) = a15;
  swift_beginAccess();
  *(v16 + 192) = a16;
  return __RKEntityAction.init(targetEntity:)(a1);
}