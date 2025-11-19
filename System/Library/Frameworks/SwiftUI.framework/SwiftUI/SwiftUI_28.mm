uint64_t protocol witness for ViewModifier.body(content:) in conformance PlatformItemTintModifier@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = partial apply for implicit closure #2 in implicit closure #1 in PlatformItemTintModifier.body(content:);
  a1[1] = v5;

  return outlined copy of Environment<Color?>.Content(v3, v4);
}

uint64_t sub_18BF364FC()
{
  outlined consume of Environment<Color?>.Content(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t implicit closure #2 in implicit closure #1 in PlatformItemTintModifier.body(content:)(uint64_t result, uint64_t a2, int a3)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v18 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_13:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    v7 = 0;
    v20 = a3;
    v19 = v4;
    do
    {
      if (v7 >= v3[2])
      {
        __break(1u);
        goto LABEL_13;
      }

      v9 = type metadata accessor for PlatformItemList.Item();
      v10 = *(*(v9 - 8) + 80);
      v11 = *(*(v9 - 8) + 72);

      v8 = a2;
      if ((a3 & 1) == 0)
      {
        v12 = static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        if (os_log_type_enabled(v13, v12))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v21[0] = v15;
          *v14 = 136315138;
          *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C616E6F6974704FLL, 0xEF3E726F6C6F433CLL, v21);
          _os_log_impl(&dword_18BD4A000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v15);
          v16 = v15;
          v4 = v19;
          MEMORY[0x18D0110E0](v16, -1, -1);
          v17 = v14;
          a3 = v20;
          MEMORY[0x18D0110E0](v17, -1, -1);
        }

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<Color?>.Content(a2, 0);

        v8 = v21[2];
      }

      *(v3 + ((v10 + 32) & ~v10) + v11 * v7 + *(v9 + 136)) = v8;

      ++v7;
    }

    while (v4 != v7);
    *v18 = v3;
  }

  return result;
}

uint64_t closure #1 in PlatformItemEnabledModifier.PlatformItemListTransform.value.getter(uint64_t *a1, char a2)
{
  v4 = type metadata accessor for PlatformItemList.Item();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  PlatformItemList.mergedContentItem.getter(*a1, &v14 - v9);

  v10[56] = a2;
  outlined init with copy of PlatformItemList.Item(v10, v7);
  type metadata accessor for _ContiguousArrayStorage<PlatformItemList.Item>();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v7, v12 + v11);
  result = outlined destroy of PlatformItemList.Item(v10);
  *a1 = v12;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<PlatformItemList.Item>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>)
  {
    type metadata accessor for PlatformItemList.Item();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>);
    }
  }
}

unint64_t type metadata accessor for PlatformItemListHost()
{
  result = lazy cache variable for type metadata for PlatformItemListHost;
  if (!lazy cache variable for type metadata for PlatformItemListHost)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformItemListHost);
  }

  return result;
}

uint64_t specialized UIKitBarButtonItem.hostingView<A>(_:didChangePlatformItemList:)(void *a1)
{
  v3 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  swift_beginAccess();
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v1 + v7, v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v3, type metadata accessor for ToolbarStorage.Item?);
  v8 = type metadata accessor for PlatformItemList.Item();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v3, type metadata accessor for ToolbarStorage.Item?);
  if (v7 != 1)
  {
    UIKitBarButtonItem.updatePlatformItem(_:)(a1);
  }

  v9 = v1 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_menuDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(a1, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t UIKitBarButtonItem.updateBridging()()
{
  v1 = v0;
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = type metadata accessor for PlatformItemList.Item();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = UIKitBarButtonItem.allowsBridging()();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v9;
  v11 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  swift_beginAccess();
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(&v1[v11], v4, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v4, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
    return 0;
  }

  _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v4, v8, type metadata accessor for PlatformItemList.Item);
  v13 = *(v8 + 52) != 1 && v8[472] == 1;
  [v1 setSpringLoaded_];
  v14 = *v8;
  if (*v8)
  {
    v15 = *v8;
  }

  else
  {
    v16 = *(v8 + 112);
    if (!v16)
    {
      goto LABEL_15;
    }

    v15 = v16;
    v14 = 0;
  }

  v17 = v14;
  if ([v15 length] >= 1)
  {
    v18 = [v15 attributesAtIndex:0 effectiveRange:0];
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 setTitleTextAttributes:v19.super.isa forState:0];

    goto LABEL_16;
  }

LABEL_15:
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 setTitleTextAttributes:v19.super.isa forState:0];
LABEL_16:

  v20 = v8[954];
  if (v20 != 3)
  {
    [v1 setSelected_];
  }

  *&v1[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuChildren] = 0;

  if (!*(v8 + 117))
  {
    goto LABEL_40;
  }

  v21 = *(v8 + 42);
  v22 = 2;
  if (v21 >> 62 == 3 && (v21 & 0xFFFFFFFFFFFFFFFCLL) != 0x3FFFFFFFCLL)
  {
    v22 = 2;
    if (v21 == 0xC000000000000000 && *(v8 + 38) == 4 && !(*(v8 + 40) | *(v8 + 41) | *(v8 + 39)))
    {
      v23 = vorrq_s8(vorrq_s8(*(v8 + 344), *(v8 + 376)), vorrq_s8(*(v8 + 360), *(v8 + 392)));
      if (!*&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)))
      {
        v24 = v8[953];
        v25 = 1;
        if (v24 != 1)
        {
          v25 = 2;
        }

        if (!v8[953])
        {
          v25 = 0;
        }

        if (v24 == 5)
        {
          v22 = 2;
        }

        else
        {
          v22 = v25;
        }
      }
    }
  }

  _ss23_ContiguousArrayStorageCyyXlGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_18CD69590;
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in UIKitBarButtonItem.updateBridging();
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  aBlock[3] = &block_descriptor_76;
  v29 = _Block_copy(aBlock);

  v30 = [v27 elementWithUncachedProvider_];
  _Block_release(v29);
  *(v26 + 32) = v30;
  v31 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v46.value.super.isa = 0;
  v46.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v31, v32, 0, v46, 0, v22, v26, v43);
  v34 = v33;
  [v1 setMenu_];

  v35 = *(v8 + 52);
  if (v35 < 2)
  {
    goto LABEL_38;
  }

  v36 = *(v8 + 53);
  v37 = v8[*(v5 + 124)];
  if (v37 != 2 && (v37 & 1) != 0)
  {
    goto LABEL_38;
  }

  v38 = [v1 title];
  if (!v38)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v35);
LABEL_38:
    [v1 setPrimaryAction_];
    goto LABEL_39;
  }

  v39 = v38;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
  v40 = [v1 image];
  v41 = swift_allocObject();
  *(v41 + 16) = v35;
  *(v41 + 24) = v36;

  v42 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v1 setPrimaryAction_];

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v35);
LABEL_39:
  [v1 setPreferredMenuElementOrder_];
  [v1 setChangesSelectionAsPrimaryAction_];
LABEL_40:
  UIKitBarButtonItem.updateStyleAndTint(isBridged:role:buttonTint:)(1, v10 >> 8, 0);
  specialized PlatformItemList.Item.applyAccessibilityProperties(to:)(v1, v8);
  [v1 resetAccessibilityLabel];
  _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v8, type metadata accessor for PlatformItemList.Item);
  return 1;
}

uint64_t sub_18BF3735C()
{

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for BorderlessButtonStyleEnvironment.UpdateEnvironment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 14) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 14) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithTake for PlatformItemList.Item(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = a2 + 286;
  v7 = *a1;
  *a1 = *a2;

  v8 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v9 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v9;

  *(a1 + 32) = *(a2 + 32);
  v10 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v10;

  *(a1 + 56) = *(a2 + 56);
  if (*(a1 + 192) >> 1 == 4294967294)
  {
LABEL_4:
    v11 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v11;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 235) = *(a2 + 235);
    v12 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v12;
    v13 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v13;
    v14 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v14;
    v15 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v15;
    if (!*(a1 + 264))
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (*(a2 + 192) >> 1 == 4294967294)
  {
    outlined destroy of Image.Resolved(a1 + 64);
    goto LABEL_4;
  }

  v16 = *(a1 + 72);
  if (v16 != 255)
  {
    v17 = *(a2 + 72);
    if (v17 != 255)
    {
      v18 = *(a1 + 64);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v17;
      outlined consume of GraphicsImage.Contents(v18, v16);
      goto LABEL_11;
    }

    outlined destroy of GraphicsImage.Contents(a1 + 64);
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
LABEL_11:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  v19 = *(a1 + 192);
  *(a1 + 170) = *(a2 + 170);
  if (v19 >> 1 == 0xFFFFFFFF)
  {
LABEL_14:
    v21 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v21;
    goto LABEL_16;
  }

  v20 = *(a2 + 192);
  if (v20 >> 1 == 0xFFFFFFFF)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 176);
    goto LABEL_14;
  }

  v22 = *(a2 + 200);
  v23 = *(a1 + 176);
  v24 = *(a1 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v20;
  *(a1 + 200) = v22;
  outlined consume of AccessibilityImageLabel(v23, v24, v19);
LABEL_16:
  *(a1 + 208) = *(a2 + 208);
  swift_unknownObjectRelease();
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 225) = *(a2 + 225);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 232) = *(a2 + 232);
  v25 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 250) = *(a2 + 250);
  if (!*(a1 + 264))
  {
LABEL_21:
    v29 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v29;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_26;
  }

LABEL_17:
  v26 = *(a2 + 264);
  if (!v26)
  {
    outlined destroy of Image.NamedResolved(a1 + 256);
    goto LABEL_21;
  }

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v26;

  v27 = *(a1 + 272);
  v28 = *(a2 + 272);
  if (v27 >= 2)
  {
    if (v28 >= 2)
    {
      *(a1 + 272) = v28;
    }

    else
    {

      *(a1 + 272) = *(a2 + 272);
    }
  }

  else
  {
    *(a1 + 272) = v28;
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 286) = *v6;
  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

LABEL_26:
  v30 = *(a1 + 336);
  if (v30 >> 2 == 0xFFFFFFFF)
  {
LABEL_29:
    v32 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v32;
    *(a1 + 400) = *(a2 + 400);
    v33 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v33;
    v34 = *(a2 + 352);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v34;
    goto LABEL_31;
  }

  v31 = *(a2 + 336);
  if (v31 >> 2 == 0xFFFFFFFF)
  {
    outlined destroy of PlatformItemList.Item.SystemItem(a1 + 304);
    goto LABEL_29;
  }

  v35 = *(a1 + 304);
  v36 = *(a1 + 312);
  v37 = *(a1 + 320);
  v38 = *(a1 + 328);
  v39 = *(a1 + 344);
  v40 = *(a1 + 352);
  v41 = *(a1 + 360);
  v42 = *(a1 + 368);
  v43 = *(a1 + 384);
  v44 = *(a1 + 400);
  v45 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v45;
  *(a1 + 336) = v31;
  v46 = *(v6 + 74);
  *(a1 + 344) = *(v6 + 58);
  *(a1 + 360) = v46;
  v47 = *(v6 + 106);
  *(a1 + 376) = *(v6 + 90);
  *(a1 + 392) = v47;
  outlined consume of PlatformItemList.Item.SystemItem(v35, v36, v37, v38, v30, v39, v40, v41, v42, *(&v42 + 1), v43, SBYTE8(v43), v44);
LABEL_31:
  v48 = *(a1 + 416);
  if (v48 == 1)
  {
LABEL_34:
    v50 = *(v6 + 138);
    v51 = *(v6 + 170);
    *(a1 + 440) = *(v6 + 154);
    *(a1 + 456) = v51;
    *(a1 + 472) = *(v6 + 186);
    *(a1 + 408) = *(v6 + 122);
    *(a1 + 424) = v50;
    goto LABEL_57;
  }

  v49 = *(a2 + 416);
  if (v49 == 1)
  {
    outlined destroy of PlatformItemList.Item.SelectionBehavior(a1 + 408);
    goto LABEL_34;
  }

  *(a1 + 408) = *(v6 + 122);
  *(a1 + 409) = *(v6 + 123);
  *(a1 + 410) = *(v6 + 124);
  *(a1 + 411) = *(v6 + 125);
  *(a1 + 412) = *(a2 + 412);
  if (v48)
  {
    if (v49)
    {
      v52 = *(a2 + 424);
      *(a1 + 416) = v49;
      *(a1 + 424) = v52;

      goto LABEL_42;
    }
  }

  else if (v49)
  {
    v53 = *(a2 + 424);
    *(a1 + 416) = v49;
    *(a1 + 424) = v53;
    goto LABEL_42;
  }

  *(a1 + 416) = *(a2 + 416);
LABEL_42:
  v54 = *(a2 + 432);
  if (*(a1 + 432))
  {
    if (v54)
    {
      v55 = *(a2 + 440);
      *(a1 + 432) = v54;
      *(a1 + 440) = v55;

      goto LABEL_49;
    }
  }

  else if (v54)
  {
    v56 = *(a2 + 440);
    *(a1 + 432) = v54;
    *(a1 + 440) = v56;
    goto LABEL_49;
  }

  *(a1 + 432) = *(a2 + 432);
LABEL_49:
  v57 = *(a2 + 448);
  if (!*(a1 + 448))
  {
    if (v57)
    {
      v59 = *(a2 + 456);
      *(a1 + 448) = v57;
      *(a1 + 456) = v59;
      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_56;
  }

  if (!v57)
  {

    goto LABEL_55;
  }

  v58 = *(a2 + 456);
  *(a1 + 448) = v57;
  *(a1 + 456) = v58;

LABEL_56:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_57:
  v60 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v60;

  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v61 = *(a2 + 512);
  if (*(a1 + 512))
  {
    if (v61)
    {
      v62 = *(a2 + 520);
      *(a1 + 512) = v61;
      *(a1 + 520) = v62;

      goto LABEL_64;
    }
  }

  else if (v61)
  {
    v63 = *(a2 + 520);
    *(a1 + 512) = v61;
    *(a1 + 520) = v63;
    goto LABEL_64;
  }

  *(a1 + 512) = *(a2 + 512);
LABEL_64:
  *(a1 + 528) = *(a2 + 528);
  if (!*(a1 + 816))
  {
LABEL_71:
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_83;
  }

  if (!*(a2 + 816))
  {
    outlined destroy of PlatformItemList.Item.Accessibility(a1 + 536);
    goto LABEL_71;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);

  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v64 = (a1 + 600);
  v65 = (a2 + 600);
  v66 = *(a1 + 624);
  if (v66 == 1)
  {
LABEL_69:
    v68 = *(a2 + 616);
    *v64 = *v65;
    *(a1 + 616) = v68;
    *(a1 + 632) = *(a2 + 632);
    goto LABEL_77;
  }

  v67 = *(a2 + 624);
  if (v67 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 600);
    goto LABEL_69;
  }

  if (v66)
  {
    v69 = a1 + 600;
    if (v67)
    {
      __swift_destroy_boxed_opaque_existential_1(v69);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v69);
    }
  }

  v70 = *(a2 + 616);
  *v64 = *v65;
  *(a1 + 616) = v70;
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);

LABEL_77:
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v71 = (a1 + 664);
  v72 = (a2 + 664);
  if (*(a1 + 776) != 1)
  {
    v73 = *(a2 + 776);
    if (v73 != 1)
    {
      *v71 = *v72;
      *(a1 + 672) = *(a2 + 672);
      *(a1 + 680) = *(a2 + 680);
      *(a1 + 688) = *(a2 + 688);
      *(a1 + 689) = *(a2 + 689);
      *(a1 + 691) = *(v6 + 405);
      *(a1 + 692) = *(a2 + 692);
      *(a1 + 696) = *(a2 + 696);
      v78 = *(a2 + 720);
      *(a1 + 704) = *(a2 + 704);
      *(a1 + 720) = v78;
      *(a1 + 736) = *(a2 + 736);
      *(a1 + 744) = *(v6 + 458);
      *(a1 + 745) = *(v6 + 459);
      *(a1 + 752) = *(a2 + 752);
      *(a1 + 768) = *(a2 + 768);
      *(a1 + 776) = v73;

      *(a1 + 784) = *(a2 + 784);
      *(a1 + 800) = *(a2 + 800);
      *(a1 + 808) = *(a2 + 808);
      goto LABEL_82;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 664);
  }

  v74 = *(a2 + 776);
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 776) = v74;
  *(a1 + 792) = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  v75 = *(a2 + 712);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 712) = v75;
  v76 = *(a2 + 744);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 744) = v76;
  v77 = *(a2 + 680);
  *v71 = *v72;
  *(a1 + 680) = v77;
LABEL_82:
  *(a1 + 816) = *(a2 + 816);

  *(a1 + 824) = *(a2 + 824);

  *(a1 + 832) = *(a2 + 832);

LABEL_83:
  v79 = (a1 + 840);
  v80 = (a2 + 840);
  v81 = *(a1 + 864);
  if (v81 == 1)
  {
LABEL_86:
    v83 = *(a2 + 856);
    *v79 = *v80;
    *(a1 + 856) = v83;
    *(a1 + 872) = *(a2 + 872);
    *(a1 + 888) = *(a2 + 888);
    goto LABEL_87;
  }

  v82 = *(a2 + 864);
  if (v82 == 1)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(a1 + 840);
    goto LABEL_86;
  }

  if (v81)
  {
    v104 = a1 + 840;
    if (v82)
    {
      __swift_destroy_boxed_opaque_existential_1(v104);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(v104);
    }
  }

  v118 = *(a2 + 856);
  *v79 = *v80;
  *(a1 + 856) = v118;
  *(a1 + 872) = *(a2 + 872);
  v119 = *(a2 + 880);
  if (*(a1 + 880))
  {
    if (v119)
    {
      v120 = *(a2 + 888);
      *(a1 + 880) = v119;
      *(a1 + 888) = v120;

      goto LABEL_87;
    }
  }

  else if (v119)
  {
    v121 = *(a2 + 888);
    *(a1 + 880) = v119;
    *(a1 + 888) = v121;
    goto LABEL_87;
  }

  *(a1 + 880) = *(a2 + 880);
LABEL_87:
  v84 = *(a1 + 896);
  *(a1 + 896) = *(a2 + 896);

  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);

  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);

  *(a1 + 936) = *(a2 + 936);

  *(a1 + 944) = *(a2 + 944);

  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  v85 = a3[28];
  v86 = (a1 + v85);
  v87 = (a2 + v85);
  v88 = type metadata accessor for CommandOperation();
  v89 = *(v88 - 8);
  v90 = *(v89 + 48);
  v91 = v90(v86, 1, v88);
  v92 = v90(v87, 1, v88);
  if (!v91)
  {
    if (!v92)
    {
      *v86 = *v87;
      v105 = *(v88 + 20);
      v106 = &v86[v105];
      v107 = &v87[v105];
      LOBYTE(v105) = v87[v105 + 16];
      v108 = *v106;
      v109 = *(v106 + 1);
      v110 = v106[16];
      *v106 = *v107;
      v106[16] = v105;
      outlined consume of Text.Storage(v108, v109, v110);
      *(v106 + 3) = *(v107 + 3);

      v111 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v112 = type metadata accessor for UUID();
      (*(*(v112 - 8) + 40))(&v106[v111], &v107[v111], v112);
      v113 = *(v88 + 24);
      v114 = &v86[v113];
      v115 = &v87[v113];
      v116 = *v115;
      if (*v114)
      {
        if (v116)
        {
          v117 = v115[1];
          *v114 = v116;
          v114[1] = v117;

          goto LABEL_93;
        }
      }

      else if (v116)
      {
        v122 = v115[1];
        *v114 = v116;
        v114[1] = v122;
        goto LABEL_93;
      }

      *v114 = *v115;
      goto LABEL_93;
    }

    _s7SwiftUI16CommandOperationVWOhTm_0(v86, type metadata accessor for CommandOperation);
    goto LABEL_92;
  }

  if (v92)
  {
LABEL_92:
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v86, v87, *(*(v99 - 8) + 64));
    goto LABEL_93;
  }

  *v86 = *v87;
  v93 = *(v88 + 20);
  v94 = &v86[v93];
  v95 = &v87[v93];
  v96 = *&v87[v93 + 16];
  *v94 = *&v87[v93];
  *(v94 + 1) = v96;
  v97 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v98 = type metadata accessor for UUID();
  (*(*(v98 - 8) + 32))(&v94[v97], &v95[v97], v98);
  *&v86[*(v88 + 24)] = *&v87[*(v88 + 24)];
  (*(v89 + 56))(v86, 0, 1, v88);
LABEL_93:
  v100 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  *(a1 + v100) = *(a2 + v100);
  v101 = a3[32];
  *(a1 + a3[31]) = *(a2 + a3[31]);
  *(a1 + v101) = *(a2 + v101);
  v102 = a3[34];
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + v102) = *(a2 + v102);

  return a1;
}

uint64_t ToolbarStorage.Entry.placement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ToolbarStorage.Entry(v2, v12, type metadata accessor for ToolbarStorage.Entry.Kind);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v12, v6, type metadata accessor for ToolbarStorage.GroupItem);
      outlined init with copy of ToolbarItemPlacement.Role((v6 + 80), a1);
      v15 = type metadata accessor for ToolbarStorage.GroupItem;
      v16 = v6;
    }

    else
    {
      _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v12, v9, type metadata accessor for ToolbarStorage.Item);
      outlined init with copy of ToolbarItemPlacement.Role((v9 + 112), a1);
      v15 = type metadata accessor for ToolbarStorage.Item;
      v16 = v9;
    }

    return outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v16, v15);
  }

  else if (result == 2)
  {
    v17 = v12[3];
    v19[2] = v12[2];
    v19[3] = v17;
    v19[4] = v12[4];
    v18 = v12[1];
    v19[0] = *v12;
    v19[1] = v18;
    outlined init with copy of ToolbarItemPlacement.Role(v19 + 8, a1);
    return outlined destroy of ToolbarStorage.SpacerItem(v19);
  }

  else
  {
    if (result == 3)
    {
      *a1 = 29;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      v14 = 2;
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v14 = -1;
    }

    *(a1 + 40) = v14;
  }

  return result;
}

__n128 PlatformBarUpdater.scrollGeometry(edge:)@<Q0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  static ScrollGeometry.zero.getter();
  v5 = *(v2 + 56);
  if (v5)
  {
    v6 = &selRef_topViewController;
  }

  else
  {
    v5 = *(v2 + 64);
    if (!v5)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v6 = &selRef_selectedViewController;
  }

  v7 = [v5 *v6];
LABEL_6:
  v8 = [v7 contentScrollView];

  if (v8)
  {
    goto LABEL_7;
  }

  v13 = *(v2 + 56);
  if (v13)
  {
    v14 = &selRef_topViewController;
  }

  else
  {
    v13 = *(v2 + 64);
    if (!v13)
    {
      goto LABEL_11;
    }

    v14 = &selRef_selectedViewController;
  }

  v15 = [v13 *v14];
  if (v15)
  {
    v16 = (a1 & 1) != 0 ? 4 : 1;
    v17 = v15;
    v8 = [v15 contentScrollViewForEdge_];

    if (v8)
    {
LABEL_7:
      v9 = v8;
      [v9 safeAreaInsets];
      if (v11 == 0.0 && v10 == 0.0)
      {
        [v9 contentInset];
      }

      [v9 contentOffset];
      [v9 bounds];

      ScrollGeometry.contentOffset.setter();
      [v9 contentSize];
      ScrollGeometry.contentSize.setter();
      ScrollGeometry.containerSize.setter();
    }
  }

LABEL_11:
  a2[4] = v22;
  a2[5] = v23;
  a2[6] = v24;
  *a2 = v18;
  a2[1] = v19;
  result = v21;
  a2[2] = v20;
  a2[3] = v21;
  return result;
}

unint64_t InferredToolbarState.update(edge:to:)(char a1)
{
  ScrollGeometry.visibleRect.getter();
  v4 = v3;
  ScrollGeometry.contentSize.getter();
  v6 = v5;
  ScrollGeometry.visibleRect.getter();
  if (a1)
  {
    v8 = v4 + v7;
    if (v6 + -44.0 > v4 + v7)
    {
      v8 = v6 + -44.0;
    }

    if (v6 < v8)
    {
      v8 = v6;
    }

    v9 = vabdd_f64(v8, v6) * 0.25;
  }

  else
  {
    v10 = 44.0;
    if (v4 <= 44.0)
    {
      v10 = v4;
    }

    v9 = v10 * 0.25;
    if (v4 < 0.0)
    {
      v9 = 0.0;
    }
  }

  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  if (v9 <= 1.0)
  {
    v11 = v9;
  }

  else
  {
    v11 = 1.0;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1 & 1, isUniquelyReferenced_nonNull_native, v11);
  *v1 = v14;
  return result;
}

uint64_t specialized PlatformBarUpdater.updateBackgroundHost<A>(host:role:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, SEL *a5)
{
  v8 = v5;
  swift_beginAccess();
  v11 = *(v8 + 16);

  specialized PlatformBarBackgroundHost.update(configuration:barState:)(a3, v11, a4, a5, &v19);

  v12 = v19;
  v13 = v20;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v19 = v12;
    v20 = v13;
    BarAppearanceBridge.didUpdate(bar:barUpdates:)(a2, &v19);
    v16 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastBarUpdates;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v15 + v16);
    *(v15 + v16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12 | (v13 << 8), a2, isUniquelyReferenced_nonNull_native);
    *(v15 + v16) = v18;
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t BarAppearanceBridge.didUpdate(bar:barUpdates:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = a2[1];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v7 = specialized static ToolbarPlacement.Role.== infix(_:_:)(a1, &v26);
  result = outlined destroy of ToolbarPlacement.Role(&v26);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastBarUpdates;
    swift_beginAccess();
    v10 = *(v3 + v9);
    if (*(v10 + 16))
    {

      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if (v12)
      {
        v13 = (*(v10 + 56) + 2 * v11);
        v14 = *v13;
        v15 = v13[1];
      }

      else
      {
        v14 = 0;
        v15 = 2;
      }
    }

    else
    {
      v14 = 0;
      v15 = 2;
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v16 = specialized static ToolbarPlacement.Role.== infix(_:_:)(a1, &v26);
    outlined destroy of ToolbarPlacement.Role(&v26);
    if (v16)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        if (BarAppearanceBridge.uiHasStatusBarOpinion.getter() && (LOBYTE(v26) = v14, BYTE1(v26) = v15, v24 = v5, v25 = v6, (specialized static PlatformBarUpdates.== infix(_:_:)(&v26, &v24) & 1) == 0))
        {
          *(swift_allocObject() + 16) = v18;
          v19 = v18;
          onNextMainRunLoop(do:)();
        }

        else
        {
        }
      }
    }

    LOBYTE(v26) = v14;
    BYTE1(v26) = v15;
    v24 = v5;
    v25 = v6;
    result = specialized static PlatformBarUpdates.== infix(_:_:)(&v26, &v24);
    if ((result & 1) == 0)
    {
      v20 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barBackgroundViewModels;
      swift_beginAccess();
      if (*(*(v3 + v20) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a1), (v21 & 1) != 0))
      {
        swift_endAccess();
        LOBYTE(v26) = 17;
        v22 = swift_allocObject();
        swift_weakInit();
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        *(v23 + 24) = v5;
        *(v23 + 25) = v6;

        static Update.enqueueAction(reason:_:)();
      }

      else
      {
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_18BF388DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18BF38914()
{

  return swift_deallocObject();
}

uint64_t sub_18BF3894C()
{

  return swift_deallocObject();
}

uint64_t specialized static PlatformBarUpdates.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = a1[1];
    v3 = a2[1];
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

int64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int16 a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      *(v16[7] + 2 * v10) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v15 >= result && (a3 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = result;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  outlined init with copy of ToolbarPlacement.Role(a2, v18);
  return specialized _NativeDictionary._insert(at:key:value:)(v10, v18, a1, v16);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, __int16 a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 2 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t specialized PlatformBarUpdater.updateBackgroundHost<A>(host:role:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v4 + 16);

  specialized PlatformBarBackgroundHost.update(configuration:barState:)(a3, v7, &v15);

  v8 = v15;
  v9 = v16;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v15 = v8;
    v16 = v9;
    BarAppearanceBridge.didUpdate(bar:barUpdates:)(a2, &v15);
    v12 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastBarUpdates;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v11 + v12);
    *(v11 + v12) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8 | (v9 << 8), a2, isUniquelyReferenced_nonNull_native);
    *(v11 + v12) = v14;
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t specialized PlatformBarBackgroundHost.update(configuration:barState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 + 24);

  result = Transaction.animation.setter();
  if ((v8 - 1) < 2)
  {

    v10 = *(a1 + 57);
    v11 = 1;
    if (v10 != 2)
    {
      if (v10)
      {
LABEL_4:
        v12 = [objc_opt_self() whiteColor];
        [v4 setTintColor_];

        v13 = 0;
        v14 = 1;
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_27;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(1);
  if ((v15 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = *(*(a2 + 56) + 8 * result);

  if (v16 >= 1.0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v17 = *(a1 + 57);
  if (v17 == 2)
  {
    goto LABEL_16;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_28;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(1);
  if ((v18 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  if (*(*(a2 + 56) + 8 * result) > 0.5)
  {
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_15:
    v19 = [objc_opt_self() blackColor];
    [v4 setTintColor_];

    v13 = 0;
    v14 = 0;
    goto LABEL_17;
  }

LABEL_16:
  [v3 setTintColor_];
  v14 = 2;
  v13 = 1;
LABEL_17:
  v20 = [objc_opt_self() currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if (v21 == 6 || (static _GraphInputs.defaultInterfaceIdiom.getter(), result = static Solarium.isEnabled(for:)(), (result & 1) == 0))
  {
    v22 = 1;
    if (v14)
    {
      v22 = 2;
    }

    if (v13)
    {
      v23 = 0;
    }

    else
    {
      v23 = v22;
    }

    result = [v4 setOverrideUserInterfaceStyle_];
  }

  *a3 = v11;
  a3[1] = v14;
  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v14;
    }

    outlined destroy of ToolbarPlacement.Role(*(v9 + 48) + 40 * v7);
    v10 = (*(v9 + 56) + 80 * v7);
    v11 = v10[3];
    a2[2] = v10[2];
    a2[3] = v11;
    *(a2 + 57) = *(v10 + 57);
    v12 = v10[1];
    *a2 = *v10;
    a2[1] = v12;
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_18CD633F0;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *(a2 + 57) = 0u;
  }

  return result;
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, outlined init with take of Any, type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Any>, outlined init with take of Any, a2);
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined destroy of AnyHashable(*(v9 + 48) + 40 * v7);
    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, outlined init with take of Sendable, type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Sendable>, outlined init with take of Sendable, a2);
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarButtonHoverShape(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t outlined destroy of Environment<ToolbarItemPlacement.Role>.Content(uint64_t a1)
{
  type metadata accessor for Environment<ToolbarItemPlacement.Role>.Content(0, &lazy cache variable for type metadata for Environment<ToolbarItemPlacement.Role>.Content, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E697DCB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance ToolbarButtonStyle(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  closure #1 in ToolbarButtonStyle.iosBody(configuration:)(a1, a2);
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>>();
  closure #2 in ToolbarButtonStyle.iosBody(configuration:)(a1, v2, a2 + *(v5 + 44));
}

uint64_t ToolbarButtonStyle.ResolvedBody.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_7(v2, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  outlined init with take of ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>(v7, v17 + v16, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *v11 = 4;
  v18 = &v11[*(v9 + 44)];
  *v18 = partial apply for implicit closure #4 in implicit closure #3 in PlatformItemListButtonStyle.makeBody(configuration:);
  v18[1] = v17;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  v19 = *(v9 + 48);
  static AnyTransition.opacity.getter();
  static AnyTransition.identity.getter();
  v20 = static AnyTransition.asymmetric(insertion:removal:)();

  specialized View.toolbarButtonLabel()(v20, &v11[v19]);

  v21 = type metadata accessor for ToolbarButtonStyle.ResolvedBody();
  result = specialized Environment.wrappedValue.getter(*(v2 + *(v21 + 24)), *(v2 + *(v21 + 24) + 8));
  if ((result & 0xFF00) != 0x200)
  {
    v23 = result;
    outlined init with take of ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>(v11, v15, type metadata accessor for Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>);
    v24 = &v15[*(v13 + 36)];
    *v24 = v23;
    v24[1] = BYTE1(v23) & 1;
    v24[2] = BYTE2(v23) & 1;
    v24[3] = 0;
    *(v24 + 1) = 8;
    if (*(v2 + *(v21 + 20)) == 1)
    {
      if (one-time initialization token for lift == -1)
      {
        goto LABEL_6;
      }
    }

    else if (one-time initialization token for automatic == -1)
    {
LABEL_6:

      specialized View.hoverEffect<A>(_:isEnabled:)(v25, 1, a1);

      return outlined destroy of ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>(v15, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>);
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void closure #1 in ToolbarButtonContentModifier.body(content:)(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  if (specialized Environment.wrappedValue.getter(a3, a4 & 1))
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = (a2 & 1) != 0;
  v13 = v11 & 0xFF00 | a1;
  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>);
  static UIButton.Configuration.borderless()();
  v16 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  outlined consume of Environment<Color?>.Content(v16, 0);
  outlined consume of Environment<Selector?>.Content(v17, 0);
  *a5 = KeyPath;
  *(a5 + 10) = v12;
  *(a5 + 8) = v13;
  *(a5 + 16) = v14;
  *(a5 + 24) = 0;
  *(a5 + 32) = v15;
  *(a5 + 40) = 0;
  v18 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>>();
  v20 = a5 + *(v19 + 36);
  *v20 = v18;
  *(v20 + 8) = 0;
}

uint64_t initializeWithCopy for ToolbarButtonLabelModifier(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 41))
  {
    if (*(a2 + 40) == 1)
    {
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else
    {
      v5 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
      *(a1 + 25) = *(a2 + 25);
    }

    *(a1 + 41) = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 41) = 0;
  }

  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a2 + 81);
  v11 = *(a2 + 80);
  outlined copy of Environment<ToolbarItemMetrics?>.Content(v6, v7, v8, v9, v11, v10);
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = v11;
  *(a1 + 81) = v10;
  v12 = *(a2 + 88);
  LOBYTE(v7) = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v12, v7);
  *(a1 + 88) = v12;
  *(a1 + 96) = v7;
  v13 = *(a2 + 104);
  LOBYTE(v7) = *(a2 + 112);
  outlined copy of Environment<Selector?>.Content(v13, v7);
  *(a1 + 104) = v13;
  *(a1 + 112) = v7;
  v14 = *(a2 + 120);
  LOBYTE(v7) = *(a2 + 128);
  outlined copy of Environment<Selector?>.Content(v14, v7);
  *(a1 + 120) = v14;
  *(a1 + 128) = v7;
  v15 = *(a2 + 136);
  v16 = *(a2 + 144);
  outlined copy of Environment<Selector?>.Content(v15, v16);
  *(a1 + 136) = v15;
  *(a1 + 144) = v16;
  return a1;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ConfirmationDialog.PreferenceKey(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v43 = a1;
  v44 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v45 = v8;
  v46 = 0;
  v47 = v11 & v9;
  v48 = a2;
  v49 = a3;

  specialized LazyMapSequence.Iterator.next()(&v41);
  if (!v42)
  {
    goto LABEL_25;
  }

  v12 = v41;
  outlined init with take of ConfirmationDialog(&v41 + 8, v40);
  v13 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    specialized _NativeDictionary.copy()();
    result = v24;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 184 * result;
    outlined init with copy of ConfirmationDialog(*(*a5 + 56) + 184 * result, v39);
    outlined destroy of ConfirmationDialog(v40);
    outlined assign with take of ConfirmationDialog(v39, *(v22 + 56) + v23);
    goto LABEL_15;
  }

LABEL_13:
  v25 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v25[6] + 4 * result) = v12;
  result = outlined init with take of ConfirmationDialog(v40, v25[7] + 184 * result);
  v26 = v25[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v25[2] = v27;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v41);
    if (v42)
    {
      v20 = 1;
      do
      {
        v12 = v41;
        outlined init with take of ConfirmationDialog(&v41 + 8, v40);
        v30 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        v32 = *(v30 + 16);
        v33 = (v31 & 1) == 0;
        v18 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v31;
        if (*(v30 + 24) < v34)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v28 = *a5;
          v29 = 184 * result;
          outlined init with copy of ConfirmationDialog(*(*a5 + 56) + 184 * result, v39);
          outlined destroy of ConfirmationDialog(v40);
          outlined assign with take of ConfirmationDialog(v39, *(v28 + 56) + v29);
        }

        else
        {
          v36 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v36[6] + 4 * result) = v12;
          result = outlined init with take of ConfirmationDialog(v40, v36[7] + 184 * result);
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        specialized LazyMapSequence.Iterator.next()(&v41);
      }

      while (v42);
    }

LABEL_25:
    outlined consume of Set<UIPress>.Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  specialized LazyMapSequence.Iterator.next()(v43);
  if (!v44)
  {
    goto LABEL_25;
  }

  v12 = *&v43[0];
  outlined init with take of ScrollEnvironmentTransform(v43 + 8, v42);
  v13 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    specialized _NativeDictionary.copy()();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 40 * result;
    outlined init with copy of _Benchmark(*(*a5 + 56) + 40 * result, v41);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v24 = *(v22 + 56);
    __swift_destroy_boxed_opaque_existential_1(v24 + v23);
    outlined init with take of ScrollEnvironmentTransform(v41, v24 + v23);
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + 8 * result) = v12;
  result = outlined init with take of ScrollEnvironmentTransform(v42, v26[7] + 40 * result);
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(v43);
    if (v44)
    {
      v20 = 1;
      do
      {
        v12 = *&v43[0];
        outlined init with take of ScrollEnvironmentTransform(v43 + 8, v42);
        v32 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        v34 = *(v32 + 16);
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (*(v32 + 24) < v36)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 40 * result;
          outlined init with copy of _Benchmark(*(*a5 + 56) + 40 * result, v41);
          __swift_destroy_boxed_opaque_existential_1(v42);
          v31 = *(v29 + 56);
          __swift_destroy_boxed_opaque_existential_1(v31 + v30);
          outlined init with take of ScrollEnvironmentTransform(v41, v31 + v30);
        }

        else
        {
          v38 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = outlined init with take of ScrollEnvironmentTransform(v42, v38[7] + 40 * result);
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        specialized LazyMapSequence.Iterator.next()(v43);
      }

      while (v44);
    }

LABEL_25:
    outlined consume of Set<UIPress>.Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance ToolbarButtonLabelModifier@<D0>(double (**a1)@<D0>(char a1@<W0>, uint64_t a2@<X8>)@<X8>)
{
  outlined init with copy of ToolbarButtonLabelModifier(v1, v9);
  v3 = swift_allocObject();
  v4 = v9[7];
  *(v3 + 112) = v9[6];
  *(v3 + 128) = v4;
  *(v3 + 144) = v9[8];
  *(v3 + 160) = v10;
  v5 = v9[3];
  *(v3 + 48) = v9[2];
  *(v3 + 64) = v5;
  v6 = v9[5];
  *(v3 + 80) = v9[4];
  *(v3 + 96) = v6;
  result = *v9;
  v8 = v9[1];
  *(v3 + 16) = v9[0];
  *(v3 + 32) = v8;
  *a1 = partial apply for closure #1 in ToolbarButtonLabelModifier.body(content:);
  a1[1] = v3;
  return result;
}

uint64_t sub_18BF39C54()
{
  if (*(v0 + 57))
  {
    if (*(v0 + 56) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }
  }

  else
  {
  }

  outlined consume of Environment<ToolbarItemMetrics?>.Content(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 97));
  outlined consume of Environment<Selector?>.Content(*(v0 + 104), *(v0 + 112));
  outlined consume of Environment<Selector?>.Content(*(v0 + 120), *(v0 + 128));
  outlined consume of Environment<Selector?>.Content(*(v0 + 136), *(v0 + 144));
  outlined consume of Environment<Selector?>.Content(*(v0 + 152), *(v0 + 160));

  return swift_deallocObject();
}

double ToolbarButtonLabelModifier.maxHeight.getter()
{
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    specialized Environment.wrappedValue.getter(*(v0 + 88), *(v0 + 96));
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v1 = static Solarium.isEnabled(for:)();
    result = 36.0;
    if ((v1 & 1) == 0)
    {
      return 30.0;
    }
  }

  else
  {
    specialized Environment.wrappedValue.getter(*(v0 + 120), *(v0 + 128), &v4);
    if (v4 == 2 || (v4 & 1) != 0)
    {
      return INFINITY;
    }

    else
    {
      return 32.0;
    }
  }

  return result;
}

uint64_t outlined init with copy of Environment<HeaderFooterConfiguration>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA08BordereddE0VGMaTm_0(255, &lazy cache variable for type metadata for PartialRangeThrough<DynamicTypeSize>, lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize, MEMORY[0x1E697E738], MEMORY[0x1E69E6ED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>);
  }

  return result;
}

uint64_t ResolvedScrollBehavior.containsLazyScrollableCollection.getter()
{
  type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(0, &lazy cache variable for type metadata for [ScrollableCollection], type metadata accessor for ScrollableCollection, MEMORY[0x1E69E62F8]);
  static Update.ensure<A>(_:)();
  v0 = v9[0];
  result = v9[0] + 32;
  v2 = -*(v9[0] + 16);
  v3 = -1;
  while (1)
  {
    v4 = v2 + v3;
    if (v2 + v3 == -1)
    {
LABEL_5:

      return v4 != -1;
    }

    if (++v3 >= *(v0 + 16))
    {
      break;
    }

    v5 = result + 40;
    outlined init with copy of _Benchmark(result, v9);
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v8 = (*(v7 + 96))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v9);
    result = v5;
    if (v8)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t ScrollBehaviorModifier.LayoutRoleFilter.value.getter()
{
  v1 = *v0;
  type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
  if (*(*AGGraphGetValue() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v1), (v2 & 1) != 0))
  {
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

unint64_t lazy protocol witness table accessor for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role()
{
  result = lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role;
  if (!lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role);
  }

  return result;
}

BOOL ScrollViewCommitMutation.combine<A>(with:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  if (swift_dynamicCast())
  {
    v8[8] = v18;
    v8[9] = v19;
    v8[10] = v20;
    v8[4] = v14;
    v8[5] = v15;
    v8[6] = v16;
    v8[7] = v17;
    v8[0] = v10;
    v8[1] = v11;
    v8[2] = v12;
    v8[3] = v13;
    v6[8] = v18;
    v6[9] = v19;
    v6[10] = v20;
    v6[4] = v14;
    v6[5] = v15;
    v6[6] = v16;
    v6[7] = v17;
    v6[0] = v10;
    v6[1] = v11;
    v9 = v21;
    v7 = v21;
    v6[2] = v12;
    v6[3] = v13;
    v4 = ScrollViewCommitMutation.merge(_:)(v6);
    outlined destroy of ScrollViewCommitMutation(v8);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t CoreInteractionRepresentableAdaptor.appendInteractions(to:)(uint64_t a1, uint64_t a2)
{
  v10 = (*(*(a2 + 24) + 16))(*(a2 + 16), *(a2 + 24));
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00CB20](&v7, v2, WitnessTable);

  v9 = v7;
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  type metadata accessor for EnumeratedSequence.Iterator();
  EnumeratedSequence.Iterator.next()();
  for (i = v8; v8; i = v8)
  {
    v5 = i;
    CoreInteractionRepresentableInteractionsProxy.append(interaction:tag:)();

    EnumeratedSequence.Iterator.next()();
  }
}

uint64_t associated type witness table accessor for CoreInteractionRepresentable.InteractionView : CoreInteractionView in CoreInteractionRepresentableAdaptor<A>()
{
  return swift_getWitnessTable();
}

{
  return swift_getWitnessTable();
}

uint64_t _UIInteractionView.coreInteractions.getter@<X0>(void *a1@<X8>)
{
  v3 = direct field offset for _UIInteractionView.coreInteractions;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

id specialized AppSceneDelegate.stateRestorationActivity(for:)()
{
  v1 = v0;
  AppSceneDelegate.sceneItem()(&v33);
  v2 = v36;
  outlined destroy of SceneList.Item(&v33);
  v3 = 0;
  if (v2 != 2)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E696B090]);
    v5 = MEMORY[0x18D00C850](0xD000000000000022, 0x800000018CD41340);
    v3 = [v4 initWithActivityType_];

    v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (*(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneStorageValues))
    {
      v33 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneStorageValues);
      closure #1 in AppSceneDelegate.stateRestorationActivity(for:)(&v33, &v32);
    }

    v31 = MEMORY[0x1E69E7CD0];
    v6 = MEMORY[0x1E69E6158];
    if (*(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_presentationDataType))
    {
      makeStableTypeData(_:)();
      v29 = v35;
      v7 = StrongHash.description.getter();
      v9 = v8;
      AnyHashable.init<A>(_:)();
      v30 = v6;
      *&v28 = v7;
      *(&v28 + 1) = v9;
      outlined init with take of Any(&v28, v27);
      v10 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, &v33, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(&v33);
      v32 = v10;
      specialized Set._Variant.insert(_:)(&v33, 0xD00000000000001BLL, 0x800000018CD41390);
    }

    v12 = (v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID);
    v13 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID + 16);
    if (v13 != 255)
    {
      v14 = *v12;
      v15 = v12[1];
      if (v13)
      {
        v33 = _typeName(_:qualified:)();
        v34 = v16;
        MEMORY[0x18D00C9B0](45, 0xE100000000000000);
        LOBYTE(v28) = v15;
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v17);

        outlined consume of SceneID?(v14, v15, v13);
        v15 = v34;
        v14 = v33;
      }

      else
      {
      }

      *&v28 = 0xD000000000000019;
      *(&v28 + 1) = 0x800000018CD3D380;
      AnyHashable.init<A>(_:)();
      v30 = v6;
      *&v28 = v14;
      *(&v28 + 1) = v15;
      outlined init with take of Any(&v28, v27);
      v18 = v32;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, &v33, v19);
      outlined destroy of AnyHashable(&v33);
      v32 = v18;
      specialized Set._Variant.insert(_:)(&v33, 0xD000000000000019, 0x800000018CD3D380);
    }

    v20 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_rawPresentationDataValue + 8);
    if (v20 >> 60 != 15)
    {
      v21 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_rawPresentationDataValue);
      *&v28 = 0xD00000000000001CLL;
      *(&v28 + 1) = 0x800000018CD41370;
      outlined copy of Data._Representation(v21, v20);
      AnyHashable.init<A>(_:)();
      v30 = MEMORY[0x1E6969080];
      *&v28 = v21;
      *(&v28 + 1) = v20;
      outlined init with take of Any(&v28, v27);
      outlined copy of Data._Representation(v21, v20);
      v22 = v32;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, &v33, v23);
      outlined destroy of AnyHashable(&v33);
      v32 = v22;
      specialized Set._Variant.insert(_:)(&v33, 0xD00000000000001CLL, 0x800000018CD41370);
      outlined consume of Data?(v21, v20);
    }

    if (*(v31 + 16))
    {
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v3 setRequiredUserInfoKeys_];
    }

    else
    {
    }

    v25 = Dictionary._bridgeToObjectiveC()().super.isa;
    [v3 setUserInfo_];
  }

  return v3;
}

uint64_t closure #1 in AppSceneDelegate.stateRestorationActivity(for:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a1;
  v19 = *(*a1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = *(*(v6 + 56) + ((v12 << 9) | (8 * v13)));
      v15 = v14[6];

      project #1 <A>(type:) in SceneStorageValues.Entry.encode(into:)(v15, v14, &v19, v15);

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v16 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a2;
  *a2 = 0x8000000000000000;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v16, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v19);
  if (!v3)
  {

    *a2 = v19;
  }

LABEL_14:

  *a2 = v19;

  __break(1u);
  return result;
}

_OWORD *specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    outlined init with copy of AnyHashable(*(v3 + 48) + 40 * v13, &v17);
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = outlined init with take of Any(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(&v17, &lazy cache variable for type metadata for (key: AnyHashable, value: Any));
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<AnyHashable, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Any>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Any>);
    }
  }
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = specialized _NativeSet.copy()();
      a3 = v9;
      goto LABEL_15;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v6);
  MEMORY[0x18D00F6F0](a2);
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (v13[1] == a2 && *v13 == v6)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v6;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_18:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = v4;
  v22 = result;
  v23 = a2;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v8 > v7)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v9 = *v4;
  Hasher.init(_seed:)();
  _ViewList_ID.Canonical.hash(into:)();
  result = Hasher._finalize()();
  v10 = -1 << *(v9 + 32);
  a3 = result & ~v10;
  if ((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v11 = ~v10;
    do
    {
      v12 = (*(v9 + 48) + 16 * a3);
      v13 = v12[1];
      v21[0] = *v12;
      v21[1] = v13;

      v14 = MEMORY[0x18D003E10](v21, &v22);

      if (v14)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v15 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  v17 = v23;
  *v16 = v22;
  v16[1] = v17;
  v18 = *(v15 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v15 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined copy of FocusStore?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityRepresentationModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t View.accessibilityAddTraits(_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3 <= 0x3F)
  {
    v4 = 1 << v3;
  }

  else
  {
    v4 = 0;
  }

  v6[2] = v4;
  v6[3] = v4;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityTraits(_:), v6, a2, a3);
}

uint64_t OnScrollVisibilityChangeModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v13 = *(v1 + 3);
  v14 = v13;
  _s7SwiftUI5StateVySbGMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v4 = *v1;
  v6 = v1[1];
  v5 = v1[2];
  v7 = swift_allocObject();
  v8 = *(v2 + 1);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = v2[4];
  v9 = swift_allocObject();
  v10 = *(v2 + 1);
  *(v9 + 16) = *v2;
  *(v9 + 32) = v10;
  *(v9 + 48) = v2[4];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v12;
  *(a1 + 32) = partial apply for closure #1 in OnScrollVisibilityChangeModifier.body(content:);
  *(a1 + 40) = v7;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = partial apply for closure #2 in OnScrollVisibilityChangeModifier.body(content:);
  *(a1 + 88) = v9;
  swift_retain_n();
  outlined init with copy of State<Bool>(&v14, &v13);

  return outlined init with copy of State<Bool>(&v14, &v13);
}

uint64_t outlined init with copy of State<Bool>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI5StateVySbGMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder.updateValue()()
{
  result = AGGraphGetValue();
  if (*(result + 24) == 1)
  {
    v2 = *result;

    if (*(v0 + 44) != *AGGraphGetValue() >> 1)
    {
      *(v0 + 44) = *AGGraphGetValue() >> 1;
      *(v0 + 32) = 0xFFFFFFFFLL;
      *(v0 + 40) = 0;
      *(v0 + 52) = 2;
    }

    ++*(v0 + 48);
    result = AGGraphGetCurrentAttribute();
    if (result == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v18) = *(v0 + 20) == *MEMORY[0x1E698D3F8];
      GeometryProxy.init(owner:size:environment:transform:position:safeAreaInsets:seed:)();
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      v17 = 2;
      GeometryProxy.frameClippedToScrollViews(in:)();
      outlined destroy of CoordinateSpace(v15);
      Value = AGGraphGetValue();
      v4 = Value[1];
      v18 = *Value;
      v19 = v4;
      v5 = MEMORY[0x18D00B390]();
      v7 = v14 / v6;
      v8 = v13 / v5;
      if (v8 >= v7)
      {
        v8 = v7;
      }

      v9 = v2 <= v8;
      v10 = *(v0 + 52);
      if (v10 == 2 || ((v9 ^ v10)) && (*(v0 + 52) = v9, v11 = UpdateCycleDetector.dispatch(label:isDebug:)(), (v11))
      {
        MEMORY[0x1EEE9AC00](v11);
        Attribute.syncMainIfReferences<A>(do:)();
      }

      else
      {
      }
    }
  }

  else
  {
    v12 = *(v0 + 52);
    if (v12 != 2 && (v12 & 1) != 0)
    {
      MEMORY[0x1EEE9AC00](result);

      Attribute.syncMainIfReferences<A>(do:)();

      *(v0 + 52) = 2;
    }
  }

  return result;
}

void closure #1 in _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.didset(float64x2_t *a1, float64x2_t *a2)
{
  v13 = *a1;
  v14 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong traitCollection];
    [v4 displayScale];
    v6 = v5;

    if (v6 < 1.0 || (v7 = 1.0 / v6, 1.0 / v6 == 1.0))
    {
      v8 = vrndaq_f64(v13);
      v9 = vrndaq_f64(v14);
    }

    else
    {
      v11 = vdupq_lane_s64(*&v7, 0);
      v12 = vrndaq_f64(vdivq_f64(v14, v11));
      v8 = vmulq_n_f64(vrndaq_f64(vdivq_f64(v13, v11)), v7);
      v9 = vmulq_n_f64(v12, v7);
    }

    if (v8.f64[0] != v9.f64[0] || v8.f64[1] != v9.f64[1])
    {
      [v3 invalidateIntrinsicContentSize];
    }
  }
}

uint64_t type metadata completion function for ListUpdate()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    v8 = v2;
    v9 = v2;
    swift_getTupleTypeLayout2();
    v10 = &v7;
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v11 = &v6;
      swift_getTupleTypeLayout2();
      v12 = &v5;
      swift_getTupleTypeLayout2();
      swift_getTupleTypeLayout2();
      swift_getTupleTypeLayout2();
      v13 = &v4;
      v14 = v2;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v24 - v12;
  if (MEMORY[0x18D00CD40](a1, TupleTypeMetadata2, v11))
  {
    type metadata accessor for _DictionaryStorage();
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = MEMORY[0x18D00CDF0](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs()
{
  result = lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs;
  if (!lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs);
  }

  return result;
}

void type metadata accessor for (AnyNavigationPath, Bool)()
{
  if (!lazy cache variable for type metadata for (AnyNavigationPath, Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AnyNavigationPath, Bool));
    }
  }
}

uint64_t closure #1 in BoundNavigationPathDetector.updateValue()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for NavigationState.StackContent.Key?(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
  AGGraphGetValue();

  v2 = dispatch thunk of AnyLocation.update()();

  *(a1 + 8) = v2 & 1;
  return result;
}

uint64_t ShadowListDataSource.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  ShadowListUpdateRecorder.init(_:)(v9, a2, a3);
  return (*(v6 + 8))(a1, a2);
}

uint64_t outlined init with copy of ObservationTracking._AccessList?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ObservationTracking?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ShadowListUpdateRecorder.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  updated = type metadata accessor for ShadowListUpdateRecorder();
  v7 = *(updated + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ListUpdate();
  *(a3 + v7) = Array.init()();
  v8 = *(updated + 40);
  *(a3 + v8) = Array.init()();
  return (*(*(a2 - 8) + 32))(a3, a1, a2);
}

uint64_t BoundNavigationPathDetector.PathObservation.tracking.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ObservationTracking();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtCV7SwiftUI27BoundNavigationPathDetector15PathObservation_tracking;
  swift_beginAccess();
  if (!(*(v5 + 48))(v2 + v8, 1, v4))
  {
    (*(v5 + 16))(v7, v2 + v8, v4);
    ObservationTracking.cancel()();
    (*(v5 + 8))(v7, v4);
  }

  *(v2 + OBJC_IVAR____TtCV7SwiftUI27BoundNavigationPathDetector15PathObservation_updateObserved) = 0;
  swift_beginAccess();
  outlined assign with take of ObservationTracking?(a1, v2 + v8);
  return swift_endAccess();
}

uint64_t destroy for CollectionViewListDataSource(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  v4 = *(a2 + 36);
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a1 + *(a2 + 40);
  v7 = *(v6 + 8);
  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_7;
    }
  }

  if (*(v6 + 64))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v6 + 24);
  }

LABEL_7:
}

uint64_t outlined assign with take of ObservationTracking?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ObservationTracking?(0, &lazy cache variable for type metadata for ObservationTracking?, MEMORY[0x1E69E81D8]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ObservationTracking?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for ObservationTracking?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t (*specialized ToolbarAppearanceModifier.PreferenceValue.value.getter(uint64_t a1))(uint64_t *a1)
{
  v2 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter();
  memset(v21, 0, sizeof(v21));
  v22 = xmmword_18CD90770;
  v3 = specialized Sequence<>.contains(_:)(v21, v2);

  outlined destroy of ToolbarPlacement.Role(v21);
  v4 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if (v3)
  {
    AGGraphClearUpdate();
    AGGraphGetValue();

    v20 = Transaction.animation.getter();

    AGGraphSetUpdate();
    v19 = *AGGraphGetValue();
    v5 = *(AGGraphGetValue() + 16);

    v18 = *(AGGraphGetValue() + 24);
    Value = AGGraphGetValue();
    v7 = *(Value + 32);
    v8 = *(Value + 40);
    v9 = AGGraphGetValue();
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    v12 = *(AGGraphGetValue() + 57);
    v13 = *(AGGraphGetValue() + 58);
    v14 = *(AGGraphGetValue() + 8);

    v15 = *(AGGraphGetValue() + 59);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v19;
    *(v16 + 32) = v5;
    *(v16 + 40) = v18;
    *(v16 + 48) = v7;
    *(v16 + 56) = v8;
    *(v16 + 64) = v10;
    *(v16 + 72) = v11;
    *(v16 + 73) = v12;
    *(v16 + 74) = v13;
    *(v16 + 80) = v14;
    *(v16 + 88) = v20;
    *(v16 + 96) = v15;
    return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
  }

  return v4;
}

{
  v2 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter();
  memset(v21, 0, sizeof(v21));
  v22 = xmmword_18CD6A6D0;
  v3 = specialized Sequence<>.contains(_:)(v21, v2);

  outlined destroy of ToolbarPlacement.Role(v21);
  v4 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if (v3)
  {
    AGGraphClearUpdate();
    AGGraphGetValue();

    v20 = Transaction.animation.getter();

    AGGraphSetUpdate();
    v19 = *AGGraphGetValue();
    v5 = *(AGGraphGetValue() + 16);

    v18 = *(AGGraphGetValue() + 24);
    Value = AGGraphGetValue();
    v7 = *(Value + 32);
    v8 = *(Value + 40);
    v9 = AGGraphGetValue();
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    v12 = *(AGGraphGetValue() + 57);
    v13 = *(AGGraphGetValue() + 58);
    v14 = *(AGGraphGetValue() + 8);

    v15 = *(AGGraphGetValue() + 59);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v19;
    *(v16 + 32) = v5;
    *(v16 + 40) = v18;
    *(v16 + 48) = v7;
    *(v16 + 56) = v8;
    *(v16 + 64) = v10;
    *(v16 + 72) = v11;
    *(v16 + 73) = v12;
    *(v16 + 74) = v13;
    *(v16 + 80) = v14;
    *(v16 + 88) = v20;
    *(v16 + 96) = v15;
    return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
  }

  return v4;
}

{
  v2 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter();
  memset(v21, 0, sizeof(v21));
  v22 = xmmword_18CD79D60;
  v3 = specialized Sequence<>.contains(_:)(v21, v2);

  outlined destroy of ToolbarPlacement.Role(v21);
  v4 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if (v3)
  {
    AGGraphClearUpdate();
    AGGraphGetValue();

    v20 = Transaction.animation.getter();

    AGGraphSetUpdate();
    v19 = *AGGraphGetValue();
    v5 = *(AGGraphGetValue() + 16);

    v18 = *(AGGraphGetValue() + 24);
    Value = AGGraphGetValue();
    v7 = *(Value + 32);
    v8 = *(Value + 40);
    v9 = AGGraphGetValue();
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    v12 = *(AGGraphGetValue() + 57);
    v13 = *(AGGraphGetValue() + 58);
    v14 = *(AGGraphGetValue() + 8);

    v15 = *(AGGraphGetValue() + 59);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v19;
    *(v16 + 32) = v5;
    *(v16 + 40) = v18;
    *(v16 + 48) = v7;
    *(v16 + 56) = v8;
    *(v16 + 64) = v10;
    *(v16 + 72) = v11;
    *(v16 + 73) = v12;
    *(v16 + 74) = v13;
    *(v16 + 80) = v14;
    *(v16 + 88) = v20;
    *(v16 + 96) = v15;
    return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
  }

  return v4;
}

{
  v2 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter();
  memset(v21, 0, sizeof(v21));
  v22 = xmmword_18CD79540;
  v3 = specialized Sequence<>.contains(_:)(v21, v2);

  outlined destroy of ToolbarPlacement.Role(v21);
  v4 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if (v3)
  {
    AGGraphClearUpdate();
    AGGraphGetValue();

    v20 = Transaction.animation.getter();

    AGGraphSetUpdate();
    v19 = *AGGraphGetValue();
    v5 = *(AGGraphGetValue() + 16);

    v18 = *(AGGraphGetValue() + 24);
    Value = AGGraphGetValue();
    v7 = *(Value + 32);
    v8 = *(Value + 40);
    v9 = AGGraphGetValue();
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    v12 = *(AGGraphGetValue() + 57);
    v13 = *(AGGraphGetValue() + 58);
    v14 = *(AGGraphGetValue() + 8);

    v15 = *(AGGraphGetValue() + 59);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v19;
    *(v16 + 32) = v5;
    *(v16 + 40) = v18;
    *(v16 + 48) = v7;
    *(v16 + 56) = v8;
    *(v16 + 64) = v10;
    *(v16 + 72) = v11;
    *(v16 + 73) = v12;
    *(v16 + 74) = v13;
    *(v16 + 80) = v14;
    *(v16 + 88) = v20;
    *(v16 + 96) = v15;
    return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
  }

  return v4;
}

{
  v2 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter();
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v3 = specialized Sequence<>.contains(_:)(v21, v2);

  outlined destroy of ToolbarPlacement.Role(v21);
  v4 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if (v3)
  {
    AGGraphClearUpdate();
    AGGraphGetValue();

    v20 = Transaction.animation.getter();

    AGGraphSetUpdate();
    v19 = *AGGraphGetValue();
    v5 = *(AGGraphGetValue() + 16);

    v18 = *(AGGraphGetValue() + 24);
    Value = AGGraphGetValue();
    v7 = *(Value + 32);
    v8 = *(Value + 40);
    v9 = AGGraphGetValue();
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    v12 = *(AGGraphGetValue() + 57);
    v13 = *(AGGraphGetValue() + 58);
    v14 = *(AGGraphGetValue() + 8);

    v15 = *(AGGraphGetValue() + 59);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v19;
    *(v16 + 32) = v5;
    *(v16 + 40) = v18;
    *(v16 + 48) = v7;
    *(v16 + 56) = v8;
    *(v16 + 64) = v10;
    *(v16 + 72) = v11;
    *(v16 + 73) = v12;
    *(v16 + 74) = v13;
    *(v16 + 80) = v14;
    *(v16 + 88) = v20;
    *(v16 + 96) = v15;
    return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
  }

  return v4;
}

{
  v2 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter();
  memset(v21, 0, sizeof(v21));
  v22 = xmmword_18CD7DD20;
  v3 = specialized Sequence<>.contains(_:)(v21, v2);

  outlined destroy of ToolbarPlacement.Role(v21);
  v4 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if (v3)
  {
    AGGraphClearUpdate();
    AGGraphGetValue();

    v20 = Transaction.animation.getter();

    AGGraphSetUpdate();
    v19 = *AGGraphGetValue();
    v5 = *(AGGraphGetValue() + 16);

    v18 = *(AGGraphGetValue() + 24);
    Value = AGGraphGetValue();
    v7 = *(Value + 32);
    v8 = *(Value + 40);
    v9 = AGGraphGetValue();
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    v12 = *(AGGraphGetValue() + 57);
    v13 = *(AGGraphGetValue() + 58);
    v14 = *(AGGraphGetValue() + 8);

    v15 = *(AGGraphGetValue() + 59);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v19;
    *(v16 + 32) = v5;
    *(v16 + 40) = v18;
    *(v16 + 48) = v7;
    *(v16 + 56) = v8;
    *(v16 + 64) = v10;
    *(v16 + 72) = v11;
    *(v16 + 73) = v12;
    *(v16 + 74) = v13;
    *(v16 + 80) = v14;
    *(v16 + 88) = v20;
    *(v16 + 96) = v15;
    return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
  }

  return v4;
}

uint64_t (*specialized ToolbarAppearanceModifier.PreferenceValue.value.getter(unint64_t a1))(uint64_t *a1)
{
  v1 = a1;
  v18 = HIDWORD(a1);
  AGGraphClearUpdate();
  AGGraphGetValue();

  v17 = Transaction.animation.getter();

  AGGraphSetUpdate();
  v16 = *AGGraphGetValue();
  v2 = *(AGGraphGetValue() + 16);

  v15 = *(AGGraphGetValue() + 24);
  Value = AGGraphGetValue();
  v4 = *(Value + 32);
  v5 = *(Value + 40);
  v6 = AGGraphGetValue();
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  v9 = *(AGGraphGetValue() + 57);
  v10 = *(AGGraphGetValue() + 58);
  v11 = *(AGGraphGetValue() + 8);

  v12 = *(AGGraphGetValue() + 59);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 20) = v18;
  *(v13 + 24) = v16;
  *(v13 + 32) = v2;
  *(v13 + 40) = v15;
  *(v13 + 48) = v4;
  *(v13 + 56) = v5;
  *(v13 + 64) = v7;
  *(v13 + 72) = v8;
  *(v13 + 73) = v9;
  *(v13 + 74) = v10;
  *(v13 + 80) = v11;
  *(v13 + 88) = v17;
  *(v13 + 96) = v12;
  return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
}

uint64_t destroy for ListSectionInfo(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

unsigned __int8 *assignWithTake for SelectionManagerBox(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v8 <= v7)
  {
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = a1[v10];
  v12 = v11 - 3;
  if (v11 >= 3)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_25;
      }

      v14 = *a1;
    }

    else if (v13 == 2)
    {
      v14 = *a1;
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
    }

    else
    {
      v14 = *a1;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 3;
    v11 = v14 + 3;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_25:
  if (v11 == 2)
  {
LABEL_28:
    (*(v6 + 8))(a1, v5);
    goto LABEL_30;
  }

  if (v11 == 1)
  {
    if ((*(v6 + 48))(a1, 1, v5))
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_30:
  v16 = *(a2 + v10);
  v17 = v16 - 3;
  if (v16 >= 3)
  {
    if (v10 <= 3)
    {
      v18 = v10;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v19 = *a2;
      }

      else if (v18 == 3)
      {
        v19 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v19 = *a2;
      }

LABEL_42:
      v20 = (v19 | (v17 << (8 * v10))) + 3;
      v16 = v19 + 3;
      if (v10 < 4)
      {
        v16 = v20;
      }

      goto LABEL_44;
    }

    if (v18)
    {
      v19 = *a2;
      goto LABEL_42;
    }
  }

LABEL_44:
  if (v16 == 2)
  {
    (*(v6 + 32))(a1, a2, v5);
    v21 = 2;
  }

  else if (v16 == 1)
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v8);
      v21 = 1;
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      v21 = 1;
      (*(v6 + 56))(a1, 0, 1, v5);
    }
  }

  else
  {
    v21 = 0;
    *a1 = *a2;
  }

  a1[v10] = v21;
  return a1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t UpdateCollectionViewListCoordinator.appIntentsDataSourcePayloadProvider.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?();
  Value = AGGraphGetValue();

  return outlined init with copy of IntelligenceAppIntentsDataSourcePayloadProviding?(Value, a1);
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s21UIIntelligenceSupport26IntelligenceDataSourceItemOACSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of IntelligenceAppIntentsDataSourcePayloadProviding?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UICollectionViewListCoordinatorBase.appIntentsDataSourcePayloadProvider.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x178);
  swift_beginAccess();
  outlined assign with take of IndexPath?(a1, v1 + v3, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding);
  return swift_endAccess();
}

uint64_t outlined assign with take of IndexPath?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation9IndexPathVSgMaTm_1(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowSpacing>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowSpacing>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t UICollectionViewListCoordinatorBase.selectionStorage.setter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x130));
  *v5 = result;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey>, &type metadata for ListDeleteAccessoryVisibilityKey, &protocol witness table for ListDeleteAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t UpdateCollectionViewListCoordinator.subviewSizingOptions.getter@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v5 = Value[2];
  v6 = Value[3];
  v7 = Value[4];
  v8 = Value[5];
  v9 = Value[6];
  *a1 = *Value;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;

  return outlined copy of ResolvedSubviewsSizingOptions(v4, v3, v5);
}

uint64_t outlined copy of ResolvedSubviewsSizingOptions?(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 != 4294967293)
  {
    return outlined copy of ResolvedSubviewsSizingOptions(a1, a2, a3);
  }

  return a1;
}

uint64_t SubviewSizingHandlingForUniform.value.getter@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = HIDWORD(a1);
  Value = AGGraphGetValue();
  v7 = *(Value + 2);
  v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
  if ((v7 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL && ((v9 = v7 & 0xC000000000000000, v8 != 0x1FFFFFFFELL) ? (v10 = v9 == 0x4000000000000000) : (v10 = 0), v10))
  {
    v20 = *Value;
    v21 = *MEMORY[0x1E698D3F8];
    v22 = 0;
    if (*MEMORY[0x1E698D3F8] != a2)
    {
      AGGraphGetValue();
      ScrollGeometry.contentSize.getter();
      v22 = v23;
    }

    if (v21 == v4)
    {
      result = 0;
      v24 = 0;
    }

    else
    {
      v24 = *(AGGraphGetValue() + 8);
    }

    *a3 = v20;
    v25 = 0x4000000000000000;
    if (v21 == a2)
    {
      v25 = 0x4000000000000001;
    }

    a3[1] = v22;
    a3[2] = v25;
    a3[3] = result;
    a3[5] = 0;
    a3[6] = 0;
    a3[4] = v24;
  }

  else
  {
    v11 = AGGraphGetValue();
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    v16 = v11[4];
    v17 = v11[5];
    v18 = v11[6];
    *a3 = *v11;
    a3[1] = v12;
    a3[2] = v14;
    a3[3] = v15;
    a3[4] = v16;
    a3[5] = v17;
    a3[6] = v18;

    return outlined copy of ResolvedSubviewsSizingOptions(v13, v12, v14);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance ResolvedSubviewsSizingOptionsEnvironmentKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x1FFFFFFFCLL;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void *initializeWithCopy for ResolvedSubviewsSizingOptions(void *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 >> 1) + 1 > 0x80000001)
  {
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 1) = v4;
    *(result + 2) = *(a2 + 32);
    result[6] = *(a2 + 48);
  }

  else
  {
    *result = *a2;
    if (v2 >> 1 == 0xFFFFFFFF)
    {
      v3 = *(a2 + 24);
      *(result + 1) = *(a2 + 8);
      *(result + 3) = v3;
      *(result + 5) = *(a2 + 40);
    }

    else
    {
      v5 = *(a2 + 8);
      v6 = *(a2 + 24);
      v7 = *(a2 + 32);
      v8 = *(a2 + 40);
      v9 = *(a2 + 48);
      v10 = result;
      outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v5, v2);
      result = v10;
      v10[1] = v5;
      v10[2] = v2;
      v10[3] = v6;
      v10[4] = v7;
      v10[5] = v8;
      v10[6] = v9;
    }
  }

  return result;
}

uint64_t destroy for ResolvedSubviewsSizingOptions(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 1 != 0xFFFFFFFF && (v1 >> 1) + 0x7FFFFFFF >= 0x7FFFFFFE)
  {
    return outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(*(result + 8), v1);
  }

  return result;
}

uint64_t outlined copy of ResolvedSubviewsSizingOptions(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 != 4294967294)
  {
    return outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource?(a2, a3);
  }

  return result;
}

uint64_t outlined consume of ResolvedSubviewsSizingOptions(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 != 4294967294)
  {
    return outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource?(a2, a3);
  }

  return result;
}

uint64_t outlined init with copy of DialogSuppressionConfiguration?(uint64_t a1, uint64_t a2)
{
  _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_0(0, &lazy cache variable for type metadata for DialogSuppressionConfiguration?, &type metadata for DialogSuppressionConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of ResolvedSubviewsSizingOptions?(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 != 4294967293)
  {
    return outlined consume of ResolvedSubviewsSizingOptions(a1, a2, a3);
  }

  return a1;
}

uint64_t UICollectionViewListCoordinatorBase.subviewsSizingOptions.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x100));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v11;
  *(v3 + 2) = *(a1 + 32);
  v3[6] = v2;
  outlined copy of ResolvedSubviewsSizingOptions?(v4, v5, v6);
  outlined consume of ResolvedSubviewsSizingOptions?(v4, v5, v6);
  v13[0] = v4;
  v13[1] = v5;
  v13[2] = v6;
  v13[3] = v7;
  v13[4] = v8;
  v13[5] = v9;
  v13[6] = v10;
  UICollectionViewListCoordinatorBase.subviewsSizingOptions.didset(v13);

  return outlined consume of ResolvedSubviewsSizingOptions?(v4, v5, v6);
}

uint64_t $defer #1 <A, B>() in MakeConfirmationDialog.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10)
{
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;

  *(a1 + 72) = a4;
  *(a1 + 80) = a5;

  *(a1 + 88) = a6;
  *(a1 + 96) = a7;
  *(a1 + 104) = a8 & 1;
  *(a1 + 105) = a9;
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  v18 = *(a1 + 128);
  v19 = *(a1 + 136);
  v20 = *(a1 + 144);
  v21 = *(a1 + 152);
  v22 = *(a10 + 16);
  *(a1 + 112) = *a10;
  *(a1 + 128) = v22;
  *(a1 + 144) = *(a10 + 32);
  *(a1 + 160) = *(a10 + 48);
  outlined init with copy of DialogSuppressionConfiguration?(a10, v24);
  return outlined consume of DialogSuppressionConfiguration?(v16, v17, v18, v19, v20, v21);
}

void UICollectionViewListCoordinatorBase.subviewsSizingOptions.didset(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x100));
  v11 = *v9;
  v10 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  v14 = v9[4];
  v15 = v9[5];
  v16 = v9[6];
  if (v5 >> 1 == 4294967293)
  {
    v18 = v9[1];
    outlined copy of ResolvedSubviewsSizingOptions?(v11, v10, v13);
    outlined copy of ResolvedSubviewsSizingOptions?(v2, v3, v5);
    if ((v13 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
    {

      outlined consume of ResolvedSubviewsSizingOptions?(v2, v3, v5);
      return;
    }
  }

  else
  {
    v26 = *a1;
    v27 = v3;
    v28 = v5;
    v29 = v4;
    v30 = v7;
    v31 = v6;
    v32 = v8;
    if ((v13 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFALL)
    {
      v19 = v11;
      v20 = v10;
      v21 = v13;
      v22 = v12;
      v23 = v14;
      v24 = v15;
      v25 = v16;
      outlined copy of ResolvedSubviewsSizingOptions?(v11, v10, v13);
      outlined copy of ResolvedSubviewsSizingOptions?(v2, v3, v5);
      outlined copy of ResolvedSubviewsSizingOptions?(v2, v3, v5);
      v17 = specialized static ResolvedSubviewsSizingOptions.== infix(_:_:)(&v26, &v19);
      outlined consume of ResolvedSubviewsSizingOptions(v19, v20, v21);
      outlined consume of ResolvedSubviewsSizingOptions(v26, v27, v28);
      outlined consume of ResolvedSubviewsSizingOptions?(v2, v3, v5);
      if (v17)
      {
        return;
      }

      goto LABEL_9;
    }

    v18 = v10;
    outlined copy of ResolvedSubviewsSizingOptions?(v11, v10, v13);
    outlined copy of ResolvedSubviewsSizingOptions?(v2, v3, v5);
    outlined copy of ResolvedSubviewsSizingOptions?(v2, v3, v5);
    outlined consume of ResolvedSubviewsSizingOptions(v2, v3, v5);
  }

  outlined consume of ResolvedSubviewsSizingOptions?(v2, v3, v5);
  outlined consume of ResolvedSubviewsSizingOptions?(v11, v18, v13);
LABEL_9:

  UICollectionViewListCoordinatorBase.onSubviewsSizingOptionsSet()();
}

Swift::Void __swiftcall UICollectionViewListCoordinatorBase.onSubviewsSizingOptionsSet()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x100));
  v3 = v2[2];
  v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
  {
LABEL_8:
    v10 = v0 + *((*v1 & *v0) + 0x108);
    v11 = *v10;
    v12 = v10[8];
    *v10 = 0;
    v10[8] = 1;

    UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(v11, v12);
    return;
  }

  v6 = *v2;
  v5 = v2[1];
  v8 = v2[3];
  v7 = v2[4];
  if (v4 == 0x1FFFFFFFCLL || v4 == 0x1FFFFFFFELL)
  {
LABEL_7:
    outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v3);
    goto LABEL_8;
  }

  if (v3 >> 62)
  {
    if (v3 >> 62 != 1)
    {
      goto LABEL_8;
    }

    v13 = v2[2];
    outlined copy of ResolvedSubviewsSizingOptions?(v6, v5, v3);
    outlined copy of ResolvedSubviewsSizingOptions(v6, v5, v13);
    v14 = Axis.Set.contains(_:)();
    if (v14)
    {
      if (!v8)
      {
LABEL_17:
        v3 = v13;
        goto LABEL_7;
      }

      if (!(v13 & 1 | (*&v5 <= 0.0)))
      {
        MEMORY[0x1EEE9AC00](v14);
        static Update.ensure<A>(_:)();
        UICollectionViewListCoordinatorBase.subviewUniformHeight.setter(v22, 0);
        outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v13);
        outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v13);
        return;
      }
    }

    outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v13);
    goto LABEL_17;
  }

  v15 = v2[2];
  v16 = Axis.Set.contains(_:)();
  if (v16)
  {
    v17 = v8;
  }

  else
  {
    v17 = 0;
  }

  v18 = v7 | ~v16;
  v19 = v0 + *((*v1 & *v0) + 0x108);
  v20 = *v19;
  v21 = v19[8];
  *v19 = v17;
  v19[8] = v18 & 1;
  UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(v20, v21);

  outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v15);
}

uint64_t outlined destroy of DialogSuppressionConfiguration?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(uint64_t a1, char a2)
{
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = MEMORY[0x1E69E7D40];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v31 = Strong;
  type metadata accessor for UpdateCoalescingCollectionView(0);
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = (v2 + *((*v8 & *v2) + 0x108));
    v12 = *(v11 + 8);
    if (a2)
    {
      if (v11[1])
      {
LABEL_5:

        MEMORY[0x1EEE66BB8]();
        return;
      }
    }

    else
    {
      if (*v11 != *&a1)
      {
        v12 = 1;
      }

      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v32 = MEMORY[0x1E69E7CC0];
    v14 = v10;
    v15 = v31;
    v16 = [(UIView *)v14 visibleCells];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x1EEE9AC00](v18);
    *(&v30 - 4) = v14;
    *(&v30 - 3) = v2;
    *(&v30 - 2) = &v32;
    specialized Sequence.forEach(_:)(partial apply for closure #1 in UICollectionViewListCoordinatorBase.subviewUniformHeight.didset, (&v30 - 6), v17);

    v19 = [objc_allocWithZone(MEMORY[0x1E69DC860]) init];
    type metadata accessor for IndexPath();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v19 invalidateItemsAtIndexPaths_];

    v21 = [(UIView *)v14 collectionViewLayout];
    [v21 invalidateLayoutWithContext_];

    UICollectionViewListCoordinatorBase.enqueueLayoutInvalidationIfNeeded(_:)(v14);
    static Log.listMisc.getter();
    v22 = type metadata accessor for Logger();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v7, 1, v22) == 1)
    {

      _s10Foundation9IndexPathVSgWOhTm_1(v7, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    }

    else
    {
      v24 = v2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = v27;
        *v27 = 134217984;
        v29 = *v11;
        if (*(v11 + 8))
        {
          v29 = -1.0;
        }

        *(v27 + 4) = v29;
        _os_log_impl(&dword_18BD4A000, v25, v26, "subviewUniformHeight = %f", v27, 0xCu);
        MEMORY[0x18D0110E0](v28, -1, -1);
      }

      (*(v23 + 8))(v7, v22);
    }
  }

  else
  {
    v13 = v31;
  }
}

uint64_t initializeWithCopy for ListRepresentable(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  v4 = v3;
  return a1;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t partial apply for closure #2 in MakeConfirmationDialog.updateValue()(uint64_t *a1)
{
  v3 = *(type metadata accessor for ConfirmationDialogModifierCore() - 8);
  v4 = (*(v3 + 80) + 52) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = (v5 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 55) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  return closure #2 in MakeConfirmationDialog.updateValue()(a1, *(v1 + 48), v1 + v4, v9, *(v1 + v6), *(v1 + v7), *(v1 + v7 + 8), *(v1 + v7 + 16), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v8), *(v1 + v10), *(v1 + v10 + 16), *(v1 + v10 + 17), v1 + ((v10 + 25) & 0xFFFFFFFFFFFFFFF8));
}

char *ListRepresentable.makeViewProvider(context:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v42 = a1[1];
  v6 = a1[2];
  v40 = a1[3];
  v7 = *(a1 + 32);
  v8 = *v2;
  v9 = *(*v2 + *((*MEMORY[0x1E69E7D40] & **v2) + 0x90));
  *&v49 = v5;
  *(&v49 + 1) = v42;
  v43 = v5;
  v50 = v6;
  v51 = v40;
  v41 = v6;
  v52 = v7;
  (*(*(a2 - 1) + 16))(&v45, v2, a2);
  swift_getWitnessTable();
  type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.environment.getter();
  v44 = v45;
  specialized ListRepresentable.updateHelper(_:environment:)(v9, &v44);

  *&v45 = v5;
  *(&v45 + 1) = v42;
  v46 = v6;
  v47 = v40;
  LOBYTE(WitnessTable) = v7;
  PlatformViewRepresentableContext.environment.getter();
  v44 = v49;
  v10 = UICollectionViewListCoordinator.createLayout(_:)(&v44);

  v39 = v10;
  v11 = UICollectionViewListCoordinator.createCollectionView(_:)(v10);
  v12 = *&v11[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper];
  *&v11[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper] = v9;
  v13 = v9;

  swift_unknownObjectWeakAssign();
  v14 = *(v3 + 28);
  *&v13[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState] = v14;
  v15 = v11;
  specialized UICollectionViewListCoordinatorBase.collectionView.setter();
  UICollectionViewListCoordinatorBase.setupSizeThatFitsCallback(in:)();
  *&v45 = v5;
  *(&v45 + 1) = v42;
  v46 = v6;
  v47 = v40;
  v16 = v7;
  LOBYTE(WitnessTable) = v7;
  PlatformViewRepresentableContext.environment.getter();
  if (*(&v49 + 1))
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v17 = BYTE9(v44);
  if (v44 <= 1)
  {
    v17 = 0;
  }

  v15[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_isLazyStackBehaviorEnabled] = v17;
  [v15 setDelegate_];
  [v15 setDataSource_];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v21 = a2[5];
  *&v45 = v18;
  *(&v45 + 1) = v19;
  v46 = v20;
  v47 = v21;
  v47 = type metadata accessor for UICollectionViewListCoordinator();
  WitnessTable = swift_getWitnessTable();
  *&v45 = v8;
  UICollectionView._appIntentsDataSourcePayloadProvider.setter();
  *&v15[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_phaseState] = v14;
  [v15 setAllowsSelectionDuringEditing_];
  [v15 setAllowsFocus_];
  [v15 setSelectionFollowsFocus_];
  v22 = UICollectionViewListCoordinatorBase.dragAndDropController.getter();
  [v15 setDragDelegate_];

  [v15 setDropDelegate_];
  *&v45 = v5;
  *(&v45 + 1) = v42;
  v46 = v41;
  v47 = v40;
  LOBYTE(WitnessTable) = v7;
  PlatformViewRepresentableContext.environment.getter();
  if (*(&v44 + 1))
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RefreshAction.Key>, &type metadata for RefreshAction.Key, &protocol witness table for RefreshAction.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RefreshAction.Key>, &type metadata for RefreshAction.Key, &protocol witness table for RefreshAction.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v23 = v49;
  v24 = v50;
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v23;
  *(v26 + 40) = v24;

  outlined copy of AppIntentExecutor?(v23);
  static Update.enqueueAction(reason:_:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v23);

  Attribute = AGWeakAttributeGetAttribute();
  v28 = *MEMORY[0x1E698D3F8];
  if (Attribute != *MEMORY[0x1E698D3F8])
  {
    MEMORY[0x1EEE9AC00](Attribute);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
  }

  v30 = AGWeakAttributeGetAttribute();
  if (v30 != v28)
  {
    MEMORY[0x1EEE9AC00](v30);
    MEMORY[0x1EEE9AC00](v31);
    AGGraphMutateAttribute();
  }

  *&v45 = v43;
  *(&v45 + 1) = v42;
  v46 = v41;
  v47 = v40;
  LOBYTE(WitnessTable) = v16;
  PlatformViewRepresentableContext.environment.getter();
  if (*(&v49 + 1))
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UserInteractionActivityKey>, &type metadata for UserInteractionActivityKey, &protocol witness table for UserInteractionActivityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UserInteractionActivityKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    v32 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
LABEL_15:
      v33 = MEMORY[0x18D00C850](v44, v32);

      goto LABEL_18;
    }
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UserInteractionActivityKey>, &type metadata for UserInteractionActivityKey, &protocol witness table for UserInteractionActivityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UserInteractionActivityKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    v32 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      goto LABEL_15;
    }
  }

  v33 = 0;
LABEL_18:

  [v15 setInteractionActivityTrackingBaseName_];

  v34 = *(v3 + 8);
  v35 = AGWeakAttributeGetAttribute();
  if (v34 != 1)
  {
    if (v35 != v28)
    {
      MEMORY[0x1EEE9AC00](v35);
      MEMORY[0x1EEE9AC00](v37);
      AGGraphMutateAttribute();

      return v15;
    }

    goto LABEL_22;
  }

  if (v35 == v28)
  {
LABEL_22:

    return v15;
  }

  MEMORY[0x1EEE9AC00](v35);
  updated = type metadata accessor for UpdateCollectionViewListCoordinator();
  MEMORY[0x1EEE9AC00](updated);
  AGGraphMutateAttribute();

  return v15;
}

uint64_t sub_18BF3F6B4()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BF3F6EC()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t closure #2 in MakeConfirmationDialog.updateValue()(uint64_t *a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, __int128 a12, char a13, char a14, uint64_t a15)
{
  v19 = *a1;
  if (*(*a1 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v21 & 1) != 0))
  {
    outlined init with copy of ConfirmationDialog(*(v19 + 56) + 184 * v20, v32);
    outlined destroy of DialogSuppressionConfiguration?(v32, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog);
    MEMORY[0x18D009810](0xD000000000000084, 0x800000018CD44640);
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v33 = 0u;
    memset(v34, 0, sizeof(v34));
    memset(v32, 0, sizeof(v32));
    outlined destroy of DialogSuppressionConfiguration?(v32, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog);
  }

  v23 = *(a3 + 8);
  v22 = *(a3 + 16);
  v24 = *(a3 + 24);
  LOBYTE(v32[0]) = *a3;
  *(&v32[0] + 1) = v23;
  *&v32[1] = v22;
  BYTE8(v32[1]) = v24;
  *(&v32[1] + 12) = a4;
  *(&v32[2] + 4) = a5;
  *&v33 = a6;
  *(&v33 + 1) = a7;
  LOBYTE(v34[0]) = a8;
  *(&v34[1] + 1) = a9;
  swift_unknownObjectWeakInit();
  HIBYTE(v40) = 1;
  BYTE8(v35) = a10;
  *&v36 = a11;
  *(v34 + 4) = a12;
  BYTE4(v34[1]) = a13 & 1;
  BYTE8(v36) = a14;
  v25 = *(a15 + 16);
  v37 = *a15;
  v38 = v25;
  v39 = *(a15 + 32);
  LOBYTE(v40) = *(a15 + 48);
  outlined init with copy of ConfirmationDialog(v32, v31);

  outlined init with copy of DialogSuppressionConfiguration?(a15, v30);
  specialized Dictionary.subscript.setter(v31, a2);
  return outlined destroy of ConfirmationDialog(v32);
}

char *protocol witness for CoreViewRepresentable.makeViewProvider(context:) in conformance ListRepresentable<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  result = ListRepresentable.makeViewProvider(context:)(a1, a2);
  *a3 = result;
  return result;
}

void specialized ListRepresentable.updateHelper(_:environment:)(uint64_t a1, void *a2)
{
  v3 = a2[1];
  *&v20[0] = *a2;
  *(&v20[0] + 1) = v3;

  ScrollEnvironmentProperties.init(environment:)(v20, v22);
  v4 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(a1 + v4, v20);
  swift_beginAccess();
  outlined assign with copy of ScrollEnvironmentProperties(v22, a1 + v4);
  swift_endAccess();
  ScrollViewHelper.didChangeProperties(from:)(v20);
  outlined destroy of ScrollEnvironmentProperties(v20);
  outlined destroy of ScrollEnvironmentProperties(v22);
  EnvironmentValues.contentMarginProxy.getter(v22);
  v5 = (a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins);
  v6 = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 208);
  v20[12] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 192);
  v20[13] = v6;
  v21[0] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 224);
  *(v21 + 9) = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 233);
  v7 = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 144);
  v20[8] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 128);
  v20[9] = v7;
  v8 = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 176);
  v20[10] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 160);
  v20[11] = v8;
  v9 = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 80);
  v20[4] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 64);
  v20[5] = v9;
  v10 = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 112);
  v20[6] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 96);
  v20[7] = v10;
  v11 = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 16);
  v20[0] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins);
  v20[1] = v11;
  v12 = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 48);
  v20[2] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 32);
  v20[3] = v12;
  v13 = v22[13];
  v5[12] = v22[12];
  v5[13] = v13;
  v5[14] = v23[0];
  *(v5 + 233) = *(v23 + 9);
  v14 = v22[9];
  v5[8] = v22[8];
  v5[9] = v14;
  v15 = v22[11];
  v5[10] = v22[10];
  v5[11] = v15;
  v16 = v22[5];
  v5[4] = v22[4];
  v5[5] = v16;
  v17 = v22[7];
  v5[6] = v22[6];
  v5[7] = v17;
  v18 = v22[1];
  *v5 = v22[0];
  v5[1] = v18;
  v19 = v22[3];
  v5[2] = v22[2];
  v5[3] = v19;
  ScrollViewHelper.didChangeMargins(from:)();
}

uint64_t ScrollEnvironmentProperties.init(environment:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  *a2 = 257;
  *(a2 + 21) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 67) = 0u;
  *(a2 + 44) = 4;
  v5 = MEMORY[0x1E69E7CC0];
  *(a2 + 12) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a2 + 13) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v5);
  a2[112] = 0;
  a2[120] = 0;
  *(a2 + 16) = 0;
  *(a2 + 68) = 0;
  a2[144] = 0;
  *(a2 + 19) = 0;
  *(a2 + 158) = 0;
  a2[166] = 1;
  *(a2 + 167) = 0u;
  *(a2 + 183) = 0u;
  a2[199] = 0;
  static EdgeInsets.zero.getter();
  *(a2 + 25) = v6;
  *(a2 + 26) = v7;
  *(a2 + 27) = v8;
  *(a2 + 28) = v9;
  static EdgeInsets.zero.getter();
  *(a2 + 29) = v10;
  *(a2 + 30) = v11;
  *(a2 + 31) = v12;
  *(a2 + 32) = v13;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v14 = __src[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(__src[0] + 16, __src);
  swift_getKeyPath();
  v21[0] = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v14 + 280, v21);
  if (v21[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v21, v18);
    v15 = v19;
    v16 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v16 + 8))(__src, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  outlined destroy of ScrollEnvironmentProperties(a2);
  memcpy(a2, __src, 0x108uLL);
  __src[0] = v4;
  __src[1] = v3;
  EnvironmentValues.layoutDirection.getter();

  a2[81] = v21[0];
  if ((*a2 & 1) == 0)
  {
    a2[120] = 3;
    a2[144] = 3;
  }

  return result;
}

uint64_t initializeWithCopy for ConfirmationDialog(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 68) = v6;
  *(a1 + 88) = *(a2 + 88);

  swift_unknownObjectWeakCopyInit();
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v7 = *(a2 + 168);

  if (v7)
  {
    if (*(a2 + 152))
    {
      v8 = *(a2 + 128);
      v9 = *(a2 + 136);
      v10 = *(a2 + 144);
      outlined copy of Text.Storage(v8, v9, v10);
      *(a1 + 128) = v8;
      *(a1 + 136) = v9;
      *(a1 + 144) = v10;
      *(a1 + 152) = *(a2 + 152);
      v7 = *(a2 + 168);
    }

    else
    {
      v12 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v12;
    }

    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = v7;
    *(a1 + 176) = *(a2 + 176);
  }

  else
  {
    v11 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v11;
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
  }

  *(a1 + 177) = *(a2 + 177);
  return a1;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, Swift::UInt32 a2)
{
  v3 = v2;
  if (*(a1 + 16))
  {
    outlined init with take of ConfirmationDialog(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, MEMORY[0x1E69E6720]);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      outlined init with take of ConfirmationDialog(*(v11 + 56) + 184 * v9, v14);
      specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return outlined destroy of TabEntry?(v14, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, MEMORY[0x1E69E6720]);
  }

  return result;
}

uint64_t initializeWithTake for ConfirmationDialog(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  swift_unknownObjectWeakTakeInit();
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v4 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v4;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, Swift::UInt32 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 184 * v9;

    return outlined assign with take of ConfirmationDialog(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = outlined init with take of ConfirmationDialog(a3, a4[7] + 184 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t destroy for ConfirmationDialog(uint64_t a1)
{

  MEMORY[0x18D011290](a1 + 96);

  if (*(a1 + 168))
  {
    if (*(a1 + 152))
    {
      outlined consume of Text.Storage(*(a1 + 128), *(a1 + 136), *(a1 + 144));
    }
  }

  return result;
}

uint64_t *initializeWithCopy for SharingPickerSource(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v13 = a2[9];
  v14 = a2[10];
  v15 = a2[11];
  v16 = a2[12];
  v17 = a2[13];
  v18 = a2[14];
  v19 = a2[15];
  v20 = a2[16];
  outlined copy of SharingPickerSource(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18, v19, v20);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v13;
  a1[10] = v14;
  a1[11] = v15;
  a1[12] = v16;
  a1[13] = v17;
  a1[14] = v18;
  a1[15] = v19;
  a1[16] = v20;
  return a1;
}

uint64_t SharingPickerSource.isPresented.getter()
{
  v1 = *(v0 + 112);
  v16[6] = *(v0 + 96);
  v16[7] = v1;
  v17 = *(v0 + 128);
  v2 = *(v0 + 48);
  v16[2] = *(v0 + 32);
  v16[3] = v2;
  v3 = *(v0 + 80);
  v16[4] = *(v0 + 64);
  v16[5] = v3;
  v4 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v4;
  if (_s7SwiftUI19SharingPickerSourceOWOg(v16) == 1)
  {
    v5 = destructiveProjectEnumData for BridgedPresentation.ContentHost(v16);
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    *&v18 = *v5;
    *(&v18 + 1) = v6;
    LOBYTE(v19) = v7 & 1;
    type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](v14);
    return LOBYTE(v14[0]);
  }

  else
  {
    v9 = destructiveProjectEnumData for BridgedPresentation.ContentHost(v16);
    v22 = v9[4];
    v23 = v9[5];
    v24 = v9[6];
    v25 = v9[7];
    v18 = *v9;
    v19 = v9[1];
    v20 = v9[2];
    v21 = v9[3];
    v14[4] = v22;
    v14[5] = v23;
    v14[6] = v24;
    v14[7] = v25;
    v14[0] = v18;
    v14[1] = v19;
    v14[2] = v20;
    v14[3] = v21;
    type metadata accessor for State<SharingPickerHostModifier.Model?>(0, &lazy cache variable for type metadata for Binding<AnyIdentifiableShareConfiguration?>, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](v10);
    v15[4] = v11;
    v15[5] = v12;
    v15[6] = v13;
    v15[0] = v10[0];
    v15[1] = v10[1];
    v15[2] = v10[2];
    v15[3] = v10[3];
    result = *(&v11 + 1) != 1;
    if (*(&v11 + 1) != 1)
    {
      outlined destroy of SharingPickerHostModifier.Model?(v15, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration);
      return 1;
    }
  }

  return result;
}

__n128 closure #1 in SharingActivityPickerModifier.Child.value.getter(char **a1, uint64_t a2, char a3, __int128 *a4, unint64_t a5)
{
  v5 = a4[7];
  v36 = a4[6];
  v37 = v5;
  v38 = *(a4 + 16);
  v6 = a4[3];
  v32 = a4[2];
  v33 = v6;
  v7 = a4[5];
  v34 = a4[4];
  v35 = v7;
  result = a4[1];
  v30 = *a4;
  v31 = result;
  if (a3)
  {
    v11 = HIDWORD(a5);
    v12 = *a1;
    outlined init with copy of SharingPickerSource(a4, &v21);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
    }

    v23 = v32;
    v24 = v33;
    v29 = v38;
    v27 = v36;
    v28 = v37;
    v25 = v34;
    v26 = v35;
    v21 = v30;
    v22 = v31;
    *(v12 + 2) = v14 + 1;
    v15 = &v12[152 * v14];
    *(v15 + 2) = v21;
    v16 = v22;
    v17 = v23;
    v18 = v25;
    *(v15 + 5) = v24;
    *(v15 + 6) = v18;
    *(v15 + 3) = v16;
    *(v15 + 4) = v17;
    result = v26;
    v19 = v28;
    v20 = v29;
    *(v15 + 8) = v27;
    *(v15 + 9) = v19;
    *(v15 + 7) = result;
    *(v15 + 20) = v20;
    *(v15 + 21) = a2;
    *(v15 + 44) = v11;
    *a1 = v12;
  }

  return result;
}

id UICollectionViewListCoordinator.createLayout(_:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for ShadowListDataSource();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &aBlock[-1] - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = swift_allocObject();
  v11[2] = v1;
  v11[3] = v9;
  v11[4] = v10;
  v12 = *((v4 & v3) + 0x88);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v12], v5);

  v1;

  v13 = ShadowListDataSource.hasGlobalHeader.getter(v5);
  (*(v6 + 8))(v8, v5);
  v14 = UICollectionViewListCoordinator.layoutConfiguration(hasGlobalHeader:)(v13 & 1);
  v15 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  aBlock[4] = partial apply for closure #1 in UICollectionViewListCoordinator.createLayout(_:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  aBlock[3] = &block_descriptor_10;
  v16 = _Block_copy(aBlock);
  v17 = [v15 initWithSectionProvider:v16 configuration:v14];

  _Block_release(v16);

  return v17;
}

uint64_t sub_18BF40E4C()
{

  return swift_deallocObject();
}

uint64_t initializeWithCopy for AccessibilityFocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t Button<>.init<A>(_:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = 4;
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_7(0, &lazy cache variable for type metadata for Button<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Button);
  v11 = v10;
  v12 = &a5[*(v10 + 36)];
  *v12 = a2;
  v12[1] = a3;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  closure #1 in Button<>.init<A>(_:action:)(a1, &a5[*(v11 + 40)]);
  v13 = *(*(a4 - 8) + 8);

  return v13(a1, a4);
}

uint64_t closure #1 in Button<>.init<A>(_:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t ShadowListDataSource.hasGlobalHeader.getter(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  LOBYTE(v1) = (*(*(v1 + 24) + 72))(v2);
  (*(v3 + 8))(v5, v2);
  return v1 & 1;
}

uint64_t outlined init with copy of TableHeaderView?(uint64_t a1, uint64_t a2)
{
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_0(0, &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL CollectionViewListDataSource.hasGlobalHeader.getter(uint64_t a1)
{
  outlined init with copy of TableHeaderView?(v1 + *(a1 + 40), v4);
  v2 = v5 != 1;
  outlined destroy of TableHeaderView?(v4);
  return v2;
}

uint64_t outlined destroy of TableHeaderView?(uint64_t a1)
{
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_0(0, &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableHeaderView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 67))
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

uint64_t destroy for AccessibilityFocusStore.Entry(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

id UICollectionViewListCoordinator.layoutConfiguration(hasGlobalHeader:)(char a1)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
  v13 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v3 = objc_opt_self();
    v4 = [v3 fractionalWidthDimension_];
    v5 = [v3 estimatedDimension_];
    v6 = [objc_opt_self() sizeWithWidthDimension:v4 heightDimension:v5];

    v7 = static UICollectionViewListCoordinatorBase.globalHeaderKind.getter();
    v8 = MEMORY[0x18D00C850](v7);

    v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v6 elementKind:v8 alignment:1];

    [v9 setZIndex_];
    [v9 setPinToVisibleBounds_];
    [v9 setExtendsBoundary_];
    v10 = v9;
    MEMORY[0x18D00CC30]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setBoundarySupplementaryItems_];

  return v2;
}

void *UICollectionViewListCoordinator.createCollectionView(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = MEMORY[0x1E69E7D40];
  v4 = [objc_allocWithZone(type metadata accessor for UpdateCoalescingCollectionView(0)) initWithFrame:a1 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v5 = v4;
  v6 = v1 + *((*v3 & *v1) + 0xF0);
  if (v6[9] == 1 && __PAIR128__(v6[8], *v6) >= 2)
  {
    [v4 _setShouldDeriveVisibleBoundsFromContainingScrollView_];
  }

  [v5 setAlwaysBounceVertical_];
  swift_getAssociatedTypeWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = *MEMORY[0x1E69DDC08];
  v9 = static UITableViewListCoordinator.headerReuseIdentifier.getter();
  v11 = v10;
  v12 = v8;
  v13 = MEMORY[0x18D00C850](v9, v11);

  [v5 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v12 withReuseIdentifier:v13];

  v14 = *MEMORY[0x1E69DDC00];
  v15 = static UITableViewListCoordinator.headerReuseIdentifier.getter();
  v17 = v16;
  v18 = v14;
  v19 = MEMORY[0x18D00C850](v15, v17);

  [v5 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v18 withReuseIdentifier:v19];

  type metadata accessor for TableGlobalHeader();
  v20 = swift_getObjCClassFromMetadata();
  v21 = static UICollectionViewListCoordinatorBase.globalHeaderKind.getter();
  v22 = MEMORY[0x18D00C850](v21);

  v24 = static UICollectionViewListCoordinatorBase.globalHeaderReuseIdentifier.getter(v23);
  v25 = MEMORY[0x18D00C850](v24);

  [v5 registerClass:v20 forSupplementaryViewOfKind:v22 withReuseIdentifier:v25];

  return v5;
}

id UpdateCoalescingCollectionView.init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = &v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_safeAreaTransitionState];
  type metadata accessor for FalseSafeAreaTransitionState();
  v12 = swift_allocObject();
  *v11 = v12;
  v11[1] = &protocol witness table for FalseSafeAreaTransitionState;
  *&v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper] = 0;
  *(v12 + 16) = 0;
  v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_isLazyStackBehaviorEnabled] = 0;
  v13 = &v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_postUpdateInvalidations] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates] = 0;
  v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate] = 0;
  v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingScrollTarget] = 0;
  v14 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingDeselectedItem;
  v15 = type metadata accessor for IndexPath();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  *&v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_lastUpdateSeed] = 0;
  *&v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_bridgedState] = 0;
  *&v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_phaseState] = 0;
  *&v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView__layoutContainer + 8] = 0;
  swift_unknownObjectWeakInit();
  v18.receiver = v5;
  v18.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_collectionViewLayout_, a1, a2, a3, a4, a5);
  [v16 _setShouldSkipForcedLayoutBeforeBatchUpdates_];

  return v16;
}

void one-time initialization function for cancelAction()
{
  static KeyboardShortcut.cancelAction = 27;
  *algn_1EAA38FF8 = 0xE100000000000000;
  qword_1EAA39000 = 0;
  byte_1EAA39008 = 0;
}

void type metadata completion function for ListCollectionViewCellBase()
{
  type metadata accessor for UIListContentConfiguration?(319);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void type metadata accessor for UIListContentConfiguration?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void specialized UICollectionViewListCoordinatorBase.collectionView.setter()
{
  swift_unknownObjectWeakAssign();

  UICollectionViewListCoordinatorBase.onSubviewsSizingOptionsSet()();
}

uint64_t UICollectionViewListCoordinatorBase.setupSizeThatFitsCallback(in:)()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v0;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = *((v3 & v2) + 0x60);
  *(v7 + 24) = *(v4 + 104);
  *(v7 + 40) = *((v3 & v2) + 0x78);
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;
  v8 = (v0 + *((*v1 & *v0) + 0x98));
  v9 = *v8;
  *v8 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.setupSizeThatFitsCallback(in:);
  v8[1] = v7;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v9);
}

uint64_t sub_18BF41FA0()
{

  return swift_deallocObject();
}

uint64_t closure #1 in UICollectionViewListCoordinatorBase.dragAndDropController.getter(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = type metadata accessor for ShadowListDataSource();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  type metadata accessor for CollectionViewListDragAndDropController();
  v8 = *((v3 & v2) + 0x88);
  swift_beginAccess();
  (*(v5 + 16))(v7, &a1[v8], v4);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = specialized CollectionViewListDragAndDropController.__allocating_init(dataSource:dispatchUpdate:)(v7, partial apply for closure #1 in PlatformViewCoordinator.weakDispatchUpdate.getter, v9);
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_18BF421A0()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

id UICollectionViewListCoordinatorBase.dragAndDropController.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x170);
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = *&v0[v1];
  }

  else
  {
    v4 = closure #1 in UICollectionViewListCoordinatorBase.dragAndDropController.getter(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t View.alert<A, B, C>(_:isPresented:presenting:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v32 = a5;
  v28 = a6;
  v29 = a2;
  v31 = a4;
  v30 = a3;
  v27 = a11;
  v17 = MEMORY[0x1EEE9AC00](a1);
  (*(v19 + 16))(&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  View.alert<A, B>(_:isPresented:presenting:actions:)(v20, v21, v23 & 1, v25, v29, v30, v31, v32, a9, v28, a7, a8, v27, *(&v27 + 1), a12, a14);
  outlined consume of Text.Storage(v20, v22, v24 & 1);
}

uint64_t View.alert<A, B>(_:isPresented:presenting:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v28 = a12;
  v29 = a13;
  v30 = a14;
  v31 = a15;
  v32 = a16;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a8;
  v37 = a10;
  v38 = a11;
  v23 = type metadata accessor for Optional();
  WitnessTable = swift_getWitnessTable();
  return View.alert<A>(_:isPresented:actions:)(a1, a2, a3 & 1, a4, a5, a6, a7, partial apply for closure #1 in View.alert<A, B>(_:isPresented:presenting:actions:), a9, v27, a12, v23, a15, WitnessTable);
}

uint64_t type metadata completion function for ListDragAndDropControllerBase()
{
  result = type metadata accessor for ShadowListUpdateRecorder();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in View.alert<A, B>(_:isPresented:presenting:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45[1] = a6;
  v46 = a5;
  v49 = a4;
  v55 = a8;
  v54 = a11;
  v14 = *(a7 - 8);
  v52 = a2;
  v53 = v14;
  MEMORY[0x1EEE9AC00](a1);
  v47 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v45[0] = v45 - v17;
  v18 = type metadata accessor for Optional();
  v48 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v45 - v19;
  v50 = a9;
  v51 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v45 - v29;
  v58 = a1;
  v59 = v52;
  v60 = a3;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v57);
  if (v57 == 1)
  {
    v31 = v48;
    (*(v48 + 16))(v20, v49, v18);
    if ((*(v51 + 48))(v20, 1, v50) != 1)
    {
      v35 = v51;
      v36 = v20;
      v37 = v50;
      (*(v51 + 32))(v23, v36, v50);
      v38 = v47;
      v46(v23);
      (*(v35 + 8))(v23, v37);
      v52 = v25;
      v39 = v45[0];
      v33 = v54;
      static ViewBuilder.buildExpression<A>(_:)(v38, a7, v54);
      v34 = v53;
      v40 = *(v53 + 8);
      v40(v38, a7);
      static ViewBuilder.buildExpression<A>(_:)(v39, a7, v33);
      v41 = v39;
      v25 = v52;
      v40(v41, a7);
      (*(v34 + 32))(v27, v38, a7);
      v32 = 0;
      goto LABEL_6;
    }

    (*(v31 + 8))(v20, v18);
  }

  v32 = 1;
  v34 = v53;
  v33 = v54;
LABEL_6:
  (*(v34 + 56))(v27, v32, 1, a7);
  static ToolbarContentBuilder.buildIf<A>(_:)(v27, v30);
  v42 = *(v25 + 8);
  v42(v27, v24);
  v56 = v33;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v30, v24, WitnessTable);
  return (v42)(v30, v24);
}

id specialized ListDragAndDropControllerBase.init(dataSource:dispatchUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x70)) = 0;
  v8 = (v3 + *((*v7 & *v3) + 0x78));
  *v8 = xmmword_18CD633F0;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  *(v8 + 57) = 0u;
  v9 = MEMORY[0x1E69E7CC0];
  *(v3 + *((*v7 & *v3) + 0x80)) = MEMORY[0x1E69E7CC0];
  *(v3 + *((*v7 & *v3) + 0x88)) = v9;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v7 & *v3) + 0x98)) = 0;
  v10 = *((*v7 & *v3) + 0x60);
  v11 = type metadata accessor for ShadowListDataSource();
  (*(*(v11 - 8) + 16))(v3 + v10, a1, v11);
  v12 = (v3 + *((*v7 & *v3) + 0x68));
  *v12 = a2;
  v12[1] = a3;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for ListDragAndDropControllerBase();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t partial apply for closure #1 in ListRepresentable.makeViewProvider(context:)()
{
  return swift_unknownObjectWeakAssign();
}

{
  return swift_unknownObjectWeakAssign();
}

uint64_t protocol witness for static CoreViewRepresentable.platformView(for:) in conformance ListRepresentable<A, B>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  WitnessTable = swift_getWitnessTable();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v3, a2, WitnessTable, v5);

  return swift_unknownObjectRetain();
}

{
  v3 = *a1;
  WitnessTable = swift_getWitnessTable();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v3, a2, WitnessTable, v5);

  return swift_unknownObjectRetain();
}

Class @objc UICollectionViewListCoordinatorBase.indexTitles(for:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = specialized UICollectionViewListCoordinatorBase.indexTitles(for:)();

  if (v6)
  {
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

uint64_t specialized UICollectionViewListCoordinatorBase.indexTitles(for:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v4 = type metadata accessor for ShadowListDataSource();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *((v2 & v1) + 0x88);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v8], v4);
  v9 = ShadowListDataSource<>.sectionIndexLabels.getter(v4, v3);
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t ShadowListDataSource<>.sectionIndexLabels.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppIntentExecutingLocation.get()(v7, v6);
  v8 = (*(a2 + 32))(v3, a2);
  (*(v4 + 8))(v6, v3);
  return v8;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t CollectionViewListDataSource.sectionIndexLabels.getter(uint64_t a1)
{
  if (*(v1 + *(a1 + 44) + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>, &type metadata for EnvironmentValues.__Key_listSectionIndexVisibility, &protocol witness table for EnvironmentValues.__Key_listSectionIndexVisibility, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>, &type metadata for EnvironmentValues.__Key_listSectionIndexVisibility, &protocol witness table for EnvironmentValues.__Key_listSectionIndexVisibility);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>, &type metadata for EnvironmentValues.__Key_listSectionIndexVisibility, &protocol witness table for EnvironmentValues.__Key_listSectionIndexVisibility, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>, &type metadata for EnvironmentValues.__Key_listSectionIndexVisibility, &protocol witness table for EnvironmentValues.__Key_listSectionIndexVisibility);
    v3 = PropertyList.subscript.getter();
  }

  if (v8 > 1u)
  {
    return MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v3);
  v6[1] = *(a1 + 16);
  v7 = v1;
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI17SectionIndexLabelOG_SSs5NeverOTg5(partial apply for closure #1 in CollectionViewListDataSource.sectionIndexLabels.getter, v6, v4);
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI17SectionIndexLabelOG_SSs5NeverOTg5(void (*a1)(void *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v20;
  for (i = (a3 + 32); ; i += 2)
  {
    v9 = i[1];
    v17 = *i;
    v18 = v9;
    outlined copy of SectionIndexLabel(v17, *(&v17 + 1), v9);
    a1(v19, &v17);
    if (v4)
    {
      break;
    }

    v4 = 0;
    outlined consume of SectionIndexLabel(v17, *(&v17 + 1), v18);
    v11 = v19[0];
    v10 = v19[1];
    v20 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v6 = v20;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  outlined consume of SectionIndexLabel(v17, *(&v17 + 1), v18);

  __break(1u);
  return result;
}

id closure #1 in ListRepresentable.updateViewProvider(_:context:)()
{
  type metadata accessor for ListRepresentable();
  swift_getWitnessTable();
  type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.environment.getter();
  if (EnvironmentValues.scrollContentBackgroundColor.getter())
  {

    PlatformViewRepresentableContext.environment.getter();
    dispatch thunk of AnyColorBox.resolve(in:)();

    v0 = Color.Resolved.cgColor.getter();
    v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {

    return 0;
  }

  return v1;
}

uint64_t ListRepresentable.updateViewProvider(_:context:)(char *a1, __int128 *a2)
{
  v4 = a2[1];
  v26 = *a2;
  v27 = v4;
  v28 = *(a2 + 32);
  v5 = *v2;
  v6 = OBJC_IVAR____TtC7SwiftUI39UICollectionViewListCoordinatorBaseBase_backgroundColor;
  v7 = *(*v2 + OBJC_IVAR____TtC7SwiftUI39UICollectionViewListCoordinatorBaseBase_backgroundColor);
  v8 = v7;
  v9 = closure #1 in ListRepresentable.updateViewProvider(_:context:)();
  v10 = *(v5 + v6);
  *(v5 + v6) = v9;

  v11 = *(v5 + v6);
  if (v7)
  {
    if (v11)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
      v12 = v8;
      v13 = v11;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        goto LABEL_7;
      }
    }
  }

  else if (!v11)
  {
    goto LABEL_7;
  }

  v15 = [a1 collectionViewLayout];
  [v15 invalidateLayout];

  [a1 setBackgroundColor_];
LABEL_7:
  v23 = v26;
  v24 = v27;
  v25 = v28;
  swift_getWitnessTable();
  type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.environment.getter();
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SafeAreaTransitionStateKey>, &type metadata for SafeAreaTransitionStateKey, &protocol witness table for SafeAreaTransitionStateKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>();
  if (*(&v22 + 1))
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = *(&v21 + 1);

  outlined destroy of weak FallbackResponderProvider?(&v21);
  if (Strong)
  {
    v18 = &a1[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_safeAreaTransitionState];
    *v18 = Strong;
    v18[1] = v17;
    swift_unknownObjectRelease();
  }

  v19 = *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x90));
  v23 = v26;
  v24 = v27;
  v25 = v28;
  PlatformViewRepresentableContext.environment.getter();
  v21 = v22;
  specialized ListRepresentable.updateHelper(_:environment:)(v19, &v21);
}

uint64_t EnvironmentValues.scrollContentBackgroundColor.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>);
    PropertyList.subscript.getter();
  }

  if (v4 == 2)
  {
    static Color.clear.getter();
    AnyShapeStyle.init<A>(_:)();
  }

  else if (!v3)
  {
    return 0;
  }

  v1 = ShapeStyle.fallbackColor(in:level:)();

  return v1;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeWithTake for SafeAreaTransitionStateKey.Value(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> Section<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static PubliclyPrimitiveView.defaultMakeViewList(view:inputs:)()
{
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  swift_getAssociatedTypeWitness();
  type metadata accessor for MakeBody();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getAssociatedConformanceWitness();
  return static View.makeDebuggableViewList(view:inputs:)();
}

BOOL specialized static ResolvedSubviewsSizingOptions.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v10 = *a2;
  v9 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v34 = a2[6];
  v15 = v12 & 0xFFFFFFFFFFFFFFFELL;
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFCLL)
  {
    if (v15 == 0x1FFFFFFFCLL)
    {
      v16 = *a2;
      v17 = a2[1];
      outlined consume of ResolvedSubviewsSizingOptions(v2, v3, v5);
      outlined consume of ResolvedSubviewsSizingOptions(v16, v17, v12);
      return 1;
    }

    goto LABEL_5;
  }

  if (v15 == 0x1FFFFFFFCLL)
  {
LABEL_5:
    v19 = *a2;
    v32 = a2[1];
    v20 = *a1;
    outlined copy of ResolvedSubviewsSizingOptions(v10, v9, v12);
    outlined copy of ResolvedSubviewsSizingOptions(v20, v3, v5);
    outlined consume of ResolvedSubviewsSizingOptions(v20, v3, v5);
    v21 = v19;
    v22 = v32;
    v23 = v12;
LABEL_6:
    outlined consume of ResolvedSubviewsSizingOptions(v21, v22, v23);
    return 0;
  }

  v33 = a2[1];
  v30 = *a2;
  if (*a1 != v10)
  {
    v25 = *a1;
    outlined copy of ResolvedSubviewsSizingOptions(v10, v9, v12);
    outlined copy of ResolvedSubviewsSizingOptions(v25, v3, v5);
    outlined consume of ResolvedSubviewsSizingOptions(v25, v3, v5);
    v21 = v30;
    v22 = v33;
    v23 = v12;
    goto LABEL_6;
  }

  v29 = *a1;
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
  {
    v24 = a2[1];
    outlined copy of ResolvedSubviewsSizingOptions(v2, v3, v5);
    outlined copy of ResolvedSubviewsSizingOptions(v30, v24, v12);
    outlined copy of ResolvedSubviewsSizingOptions(v30, v24, v12);
    outlined copy of ResolvedSubviewsSizingOptions(v29, v3, v5);
    outlined consume of ResolvedSubviewsSizingOptions(v29, v3, v5);
    outlined consume of ResolvedSubviewsSizingOptions(v30, v33, v12);
    if (v15 == 0x1FFFFFFFELL)
    {
      outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource?(v3, v5);
      return 1;
    }

LABEL_15:
    outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource?(v3, v5);
    outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource?(v33, v12);
    return 0;
  }

  v41 = a1[1];
  v42 = v5;
  v43 = v4;
  v44 = v7;
  v45 = v6;
  v46 = v8;
  if (v15 == 0x1FFFFFFFELL)
  {
    v26 = v10;
    v27 = v9;
    outlined copy of ResolvedSubviewsSizingOptions(v2, v3, v5);
    outlined copy of ResolvedSubviewsSizingOptions(v26, v27, v12);
    outlined copy of ResolvedSubviewsSizingOptions(v26, v27, v12);
    outlined copy of ResolvedSubviewsSizingOptions(v29, v3, v5);
    outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource?(v3, v5);
    outlined consume of ResolvedSubviewsSizingOptions(v29, v3, v5);
    outlined consume of ResolvedSubviewsSizingOptions(v30, v33, v12);
    outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v5);
    goto LABEL_15;
  }

  v35 = v9;
  v36 = v12;
  v37 = v11;
  v38 = v14;
  v39 = v13;
  v40 = v34;
  v28 = v2;
  outlined copy of ResolvedSubviewsSizingOptions(v10, v9, v12);
  outlined copy of ResolvedSubviewsSizingOptions(v28, v3, v5);
  outlined copy of ResolvedSubviewsSizingOptions(v28, v3, v5);
  outlined copy of ResolvedSubviewsSizingOptions(v30, v33, v12);
  outlined copy of ResolvedSubviewsSizingOptions(v30, v33, v12);
  outlined copy of ResolvedSubviewsSizingOptions(v29, v3, v5);
  outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource?(v3, v5);
  v31 = specialized static ResolvedSubviewsSizingOptions.UniformSizeSource.== infix(_:_:)(&v41, &v35);
  outlined consume of ResolvedSubviewsSizingOptions(v29, v3, v5);
  outlined consume of ResolvedSubviewsSizingOptions(v30, v33, v12);
  outlined consume of ResolvedSubviewsSizingOptions(v30, v33, v12);
  outlined consume of ResolvedSubviewsSizingOptions(v29, v3, v5);
  outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(v35, v36);
  outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(v41, v42);
  outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource?(v3, v5);
  return v31;
}

uint64_t closure #1 in UpdateCollectionViewListCoordinator.updateValue()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  updated = type metadata accessor for UpdateCollectionViewListCoordinator();
  v5 = *(updated - 8);
  v6 = MEMORY[0x1EEE9AC00](updated);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, updated, v6);
  v9 = *AGGraphGetValue();
  v10 = *(v5 + 8);

  result = v10(v8, updated);
  *a2 = v9;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SectionStyleConfiguration.Header(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header();
  *(a1 + 8) = result;
  return result;
}

void UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v121 = a4;
  v122 = a3;
  v128 = a2;
  v126 = a1;
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v107 = *MEMORY[0x1E69E7D40] & *v4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v123 = *(v7 - 8);
  v124 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v89[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = type metadata accessor for DispatchQoS();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v89[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v119 = *(v10 - 8);
  v120 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v118 = &v89[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v117 = &v89[-v13];
  v14 = *((v6 & v5) + 0x338);
  v15 = *(v14 + 8);
  v16 = *(v15 + 8);
  v17 = *((v6 & v5) + 0x328);
  swift_getAssociatedTypeWitness();
  v18 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v104 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v102 = &v89[-v19];
  v20 = swift_checkMetadataState();
  v99 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v98 = &v89[-v21];
  v101 = v16;
  v22 = type metadata accessor for ShadowSectionCollection();
  WitnessTable = swift_getWitnessTable();
  v115 = type metadata accessor for DefaultIndices();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v89[-v23];
  v112 = v22;
  v109 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v108 = &v89[-v25];
  v103 = v18;
  v100 = v20;
  v125 = swift_getAssociatedTypeWitness();
  v26 = type metadata accessor for Optional();
  v127 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v96 = &v89[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v110 = &v89[-v29];
  v30 = type metadata accessor for ShadowListDataSource();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v89[-v33];
  if ((v4[*((v6 & v5) + 0xC8)] & 1) == 0)
  {
    v35 = v4;
    v36 = (*(v15 + 72))(v17, v15, v32);
    v97 = v26;
    v37 = v36;
    v38 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x88);
    swift_beginAccess();
    v106 = v17;
    v91 = v14;
    v39 = *(v31 + 16);
    v39(v34, &v4[v38], v30);
    v40 = ShadowListDataSource.hasGlobalHeader.getter(v30);
    v41 = *(v31 + 8);
    v41(v34, v30);
    v90 = v37;
    v116 = v37 ^ v40;
    v42 = v97;
    v39(v34, &v35[v38], v30);
    v43 = v91;
    v44 = v108;
    ShadowListDataSource.sectionIDs.getter(v108);
    v41(v34, v30);
    v45 = v113;
    v46 = v112;
    Collection<>.indices.getter();
    v47 = (*(v109 + 8))(v44, v46);
    MEMORY[0x1EEE9AC00](v47);
    *&v89[-16] = v35;
    v48 = v115;
    swift_getWitnessTable();
    v49 = v110;
    Sequence.first(where:)();
    v114[1](v45, v48);
    v50 = *(*(v125 - 8) + 48);
    v51 = *(v125 - 8) + 48;
    LODWORD(v46) = (v50)(v49, 1);
    v52 = v127 + 8;
    v53 = *(v127 + 8);
    v53(v49, v42);
    if (v46 == 1)
    {
      v54 = *(v101 + 56);
      v55 = v98;
      v114 = v50;
      v56 = v106;
      v57 = v128;
      v127 = v52;
      v54(v106);
      v115 = v35;
      v58 = v102;
      v59 = v100;
      v113 = v51;
      dispatch thunk of Collection.indices.getter();
      v60 = (*(v99 + 8))(v55, v59);
      v112 = v89;
      MEMORY[0x1EEE9AC00](v60);
      v61 = v107;
      v62 = *(v107 + 816);
      *&v89[-48] = v56;
      *&v89[-40] = v62;
      v63 = *(v61 + 832);
      *&v89[-32] = v43;
      *&v89[-24] = v63;
      *&v89[-16] = v57;
      v64 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      v65 = v96;
      Sequence.first(where:)();
      (*(v104 + 8))(v58, v64);
      LODWORD(v55) = (v114)(v65, 1, v125) != 1;
      v53(v65, v97);
      v116 |= v55;
    }

    v66 = v117;
    UICollectionViewListCoordinator.listAppearance.getter();
    v67 = v118;
    v68 = v128;
    (*(v43 + 16))(v106, v43);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UICollectionLayoutListConfiguration.Appearance and conformance UICollectionLayoutListConfiguration.Appearance, MEMORY[0x1E69DC260]);
    v69 = v120;
    v70 = dispatch thunk of static Equatable.== infix(_:_:)();
    v71 = *(v119 + 8);
    v71(v67, v69);
    v71(v66, v69);
    UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(v126, v68, v122, v121 & 1);
    v73 = v123;
    v72 = v124;
    v74 = v116;
    if (v70 & 1) == 0 || (v116)
    {
      v75 = [v126 collectionViewLayout];
      [v75 invalidateLayout];

      if (v74)
      {
        v76 = v126;
        v77 = [v126 collectionViewLayout];
        objc_opt_self();
        v78 = swift_dynamicCastObjCClassUnconditional();
        v79 = v90 & 1;
        v80 = UICollectionViewListCoordinator.layoutConfiguration(hasGlobalHeader:)(v90 & 1);
        [v78 setConfiguration_];

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v81 = static OS_dispatch_queue.main.getter();
        v82 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v83 = swift_allocObject();
        *(v83 + 16) = v106;
        v84 = v107;
        *(v83 + 24) = *(v107 + 816);
        *(v83 + 32) = v43;
        *(v83 + 40) = *(v84 + 832);
        *(v83 + 48) = v82;
        *(v83 + 56) = v76;
        *(v83 + 64) = v79;
        aBlock[4] = partial apply for closure #3 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:);
        aBlock[5] = v83;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_43;
        v85 = _Block_copy(aBlock);
        v86 = v76;

        v87 = v92;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
        _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v88 = v94;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x18D00DA20](0, v87, v88, v85);
        _Block_release(v85);

        (*(v73 + 8))(v88, v72);
        (*(v93 + 8))(v87, v95);
      }
    }
  }
}

uint64_t sub_18BF45638()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BF45670()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header()
{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header);
  }

  return result;
}

uint64_t type metadata completion function for ShadowSectionCollection()
{
  result = type metadata accessor for ShadowListUpdateRecorder();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ShadowListDataSource.sectionIDs.getter@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for ShadowListUpdateRecorder();

  return ShadowListUpdateRecorder.sectionIDs.getter(updated, a1);
}

unint64_t instantiation function for generic protocol witness table for SectionStyleConfiguration.Footer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer();
  *(a1 + 8) = result;
  return result;
}

uint64_t ShadowListUpdateRecorder.sectionIDs.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return ShadowSectionCollection.init(_:)(v6, *(a1 + 16), *(a1 + 24), a2);
}

unint64_t lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer()
{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer);
  }

  return result;
}

uint64_t ShadowSectionCollection.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v33 = a4;
  swift_getAssociatedTypeWitness();
  v34 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = AssociatedTypeWitness;
  v44 = MEMORY[0x1E69E6530];
  v45 = AssociatedConformanceWitness;
  v46 = MEMORY[0x1E69E6548];
  v8 = type metadata accessor for ListUpdate();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = swift_checkMetadataState();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  updated = type metadata accessor for ShadowListUpdateRecorder();
  v28 = *(updated - 8);
  (*(v28 + 16))(v33, v32, updated);
  v19 = *(a3 + 56);
  v30 = a2;
  v31 = a3;
  v19(a2);
  v34 = dispatch thunk of Collection.count.getter();
  (*(v15 + 8))(v17, v14);
  v29 = updated;
  ShadowListUpdateRecorder.updates.getter();
  v35 = v37;
  v36 = v38;
  v39 = v37;
  v40 = v38;
  v20 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  v43 = v20;
  v44 = v20;
  v45 = WitnessTable;
  v46 = WitnessTable;
  type metadata accessor for ConcatenatedCollection();
  ConcatenatedCollection.startIndex.getter();

  ConcatenatedCollection.endIndex.getter();
  if (static ConcatenatedCollectionIndex.== infix(_:_:)())
  {
LABEL_2:
    (*(v28 + 8))(v32, v29);

    result = type metadata accessor for ShadowSectionCollection();
    *(v33 + *(result + 36)) = v34;
    return result;
  }

  v23 = (v27 + 32);
  v24 = (v27 + 8);
  while (1)
  {
    ConcatenatedCollection.subscript.getter();
    v43 = v41;
    LOBYTE(v44) = v42;
    ConcatenatedCollection.index(after:)();
    (*v23)(v10, v13, v8);
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v25 = v34 - 1;
      if (__OFSUB__(v34, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (result == 1)
    {
      break;
    }

LABEL_6:
    (*v24)(v10, v8);
    ConcatenatedCollection.endIndex.getter();
    if (static ConcatenatedCollectionIndex.== infix(_:_:)())
    {
      goto LABEL_2;
    }
  }

  v25 = v34 + 1;
  if (!__OFADD__(v34, 1))
  {
LABEL_12:
    v34 = v25;
    goto LABEL_6;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t protocol witness for ListDiffable.sectionIDs.getter in conformance CollectionViewListDataSource<A>@<X0>(uint64_t *a1@<X8>)
{
  result = CollectionViewListDataSource.sectionIDs.getter();
  *a1 = result;
  a1[1] = specialized implicit closure #1 in ListSectionInfo.sectionIDs.getter;
  a1[2] = 0;
  return result;
}

uint64_t ShadowListUpdateRecorder.updates.getter()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ListUpdate();
  type metadata accessor for Array();
  swift_getWitnessTable();
  return concatenate<A, B>(_:_:)();
}

unint64_t instantiation function for generic protocol witness table for SectionStyleConfiguration.RawContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent()
{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent);
  }

  return result;
}

uint64_t initializeWithCopy for ShadowSectionCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *((a1 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t ShadowSectionCollection.startIndex.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(v1 + 56))(v2, v1, v5);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.startIndex.getter();
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

uint64_t sub_18BF4632C()
{
  lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ResolvedSectionStyle and conformance ResolvedSectionStyle();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t ShadowSectionCollection.endIndex.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(v1 + 56))(v2, v1, v5);
  swift_getAssociatedConformanceWitness();
  Collection.index(atOffset:)();
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

uint64_t associated type witness table accessor for Collection.Index : Comparable in ShadowSectionCollection<A>()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SectionActionsTraitKey>, &type metadata for SectionActionsTraitKey, &protocol witness table for SectionActionsTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance ShadowSectionCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, AssociatedTypeWitness, v9);
  a4(v11, a2);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t ShadowSectionCollection.index(after:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(v2 + 56))(v3, v2, v6);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.index(after:)();
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

unint64_t lazy protocol witness table accessor for type ResolvedSectionStyle and conformance ResolvedSectionStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedSectionStyle and conformance ResolvedSectionStyle;
  if (!lazy protocol witness table cache variable for type ResolvedSectionStyle and conformance ResolvedSectionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedSectionStyle and conformance ResolvedSectionStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedSectionStyle and conformance ResolvedSectionStyle;
  if (!lazy protocol witness table cache variable for type ResolvedSectionStyle and conformance ResolvedSectionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedSectionStyle and conformance ResolvedSectionStyle);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedSectionStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedSectionStyle and conformance ResolvedSectionStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

BOOL closure #1 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(uint64_t a1, char *a2)
{
  v15 = a1;
  v3 = *a2;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for ShadowListDataSource();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ShadowRowCollection();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  v13 = *((v4 & v3) + 0x88);
  swift_beginAccess();
  (*(v6 + 16))(v8, &a2[v13], v5);
  ShadowListDataSource.rowIDs(forSectionAt:)(v15, v12);
  (*(v6 + 8))(v8, v5);
  swift_getWitnessTable();
  LOBYTE(v4) = Collection.isEmpty.getter();
  (*(v10 + 8))(v12, v9);
  return (v4 & 1) == 0;
}

uint64_t type metadata completion function for ShadowRowCollection()
{
  result = type metadata accessor for ShadowListUpdateRecorder();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      result = swift_getAssociatedTypeWitness();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t ShadowListDataSource.rowIDs(forSectionAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  updated = type metadata accessor for ShadowListUpdateRecorder();

  return ShadowListUpdateRecorder.rowIDs(forSectionAt:)(a1, updated, a2);
}

uint64_t ShadowListUpdateRecorder.rowIDs(forSectionAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v11 = &v18 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v3, a2, v13);
  ShadowListUpdateRecorder.initialIndex(_:)(a1, a2, v11);
  return ShadowRowCollection.init(_:section:)(v15, v11, v8, v7, a3);
}

uint64_t ShadowListUpdateRecorder.initialIndex(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v21 = a3;
  v22 = a1;
  ShadowListUpdateRecorder.updates.getter();
  v26 = v27;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for ListUpdate();
  v7 = type metadata accessor for Array();
  *&v23 = v7;
  *(&v23 + 1) = v7;
  WitnessTable = swift_getWitnessTable();
  v25 = WitnessTable;
  v8 = type metadata accessor for ConcatenatedCollection();
  v9 = swift_getWitnessTable();
  v10 = Collection.isEmpty.getter();

  if (v10)
  {
    return (*(*(AssociatedTypeWitness - 8) + 16))(v21, v22, AssociatedTypeWitness);
  }

  updated = ShadowListUpdateRecorder.updates.getter();
  v27 = v23;
  MEMORY[0x1EEE9AC00](updated);
  v19[5] = v4;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v19[2] = v5;
  v19[3] = v4;
  v19[4] = v14;
  v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #2 in implicit closure #1 in UIKitWheelPicker.updateUIView(_:context:), v19, v8, v20, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v15);

  *&v27 = v16;
  v17 = swift_getWitnessTable();
  MEMORY[0x18D00C6D0](&v23, v7, v17);
  *&v27 = v23;
  v18 = type metadata accessor for ReversedCollection();
  swift_getWitnessTable();
  ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(&v27, v22, a2, v18, v21);
}

__n128 sub_18BF47558(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t ShadowRowCollection.init(_:section:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x1E69E6530];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v53 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v86 = AssociatedTypeWitness;
  v87 = v10;
  v73 = AssociatedConformanceWitness;
  v88 = AssociatedConformanceWitness;
  v89 = MEMORY[0x1E69E6548];
  v15 = type metadata accessor for ListUpdate();
  v60 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v77 = &v53 - v25;
  updated = type metadata accessor for ShadowListUpdateRecorder();
  v64 = *(updated - 8);
  (*(v64 + 16))(a5, v68, updated);
  v27 = type metadata accessor for ShadowRowCollection();
  v28 = *(v27 + 40);
  v67 = *(AssociatedTypeWitness - 8);
  v29 = *(v67 + 16);
  v74 = AssociatedTypeWitness;
  v29(a5 + v28, a2, AssociatedTypeWitness);
  v30 = *(a4 + 80);
  v63 = v27;
  v75 = a2;
  v30(a2, a3, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v66 = a5;
  v31 = dispatch thunk of Collection.count.getter();
  v65 = updated;
  ShadowListUpdateRecorder.updates.getter();
  v78 = v80;
  v79 = v81;
  v82 = v80;
  v83 = v81;
  v32 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  v86 = v32;
  v87 = v32;
  v88 = WitnessTable;
  v89 = WitnessTable;
  type metadata accessor for ConcatenatedCollection();
  ConcatenatedCollection.startIndex.getter();

  ConcatenatedCollection.endIndex.getter();
  v76 = v32;
  if (static ConcatenatedCollectionIndex.== infix(_:_:)())
  {
    v34 = v67;
    goto LABEL_30;
  }

  v35 = (v60 + 4);
  v72 = (v60 + 2);
  v71 = (v67 + 8);
  v36 = (v60 + 1);
  v60 = (v62 + 32);
  v56 = (v62 + 8);
  while (2)
  {
    v62 = v31;
    while (1)
    {
      v41 = v77;
      ConcatenatedCollection.subscript.getter();
      v86 = v84;
      LOBYTE(v87) = v85;
      ConcatenatedCollection.index(after:)();
      (*v35)(v23, v41, v15);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 3)
      {
        break;
      }

      v43 = v69;
      (*v72)(v69, v23, v15);
      v44 = v74;
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      result = (*v71)(v43, v44);
      if (v45)
      {
        v31 = v62 - 1;
        v34 = v67;
        if (!__OFSUB__(v62, 1))
        {
          goto LABEL_27;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

LABEL_6:
      (*v36)(v23, v15);
      ConcatenatedCollection.endIndex.getter();
      if (static ConcatenatedCollectionIndex.== infix(_:_:)())
      {
        v34 = v67;
        v31 = v62;
        goto LABEL_30;
      }
    }

    if (EnumCaseMultiPayload == 4)
    {
      v37 = v70;
      (*v72)(v70, v23, v15);
      v38 = v74;
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      result = (*v71)(v37, v38);
      if (v39)
      {
        v31 = v62 + 1;
        v34 = v67;
        if (!__OFADD__(v62, 1))
        {
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_31;
      }

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload != 5)
    {
      goto LABEL_6;
    }

    v46 = v57;
    (*v72)(v57, v23, v15);
    v47 = TupleTypeMetadata2;
    v54 = *(swift_getTupleTypeMetadata2() + 48);
    v55 = *v60;
    v55(v61, v46, v47);
    v55(v59, &v46[v54], v47);
    v48 = *(v73 + 8);
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    v34 = v67;
    if ((v49 & 1) != 0 && (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v55 = *v56;
      v52 = TupleTypeMetadata2;
      (v55)(v59, TupleTypeMetadata2);
      result = (v55)(v61, v52);
      v31 = v62 - 1;
      if (__OFSUB__(v62, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v55 = v48;
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = v62;
      if ((v50 & 1) == 0)
      {
        LODWORD(v54) = dispatch thunk of static Equatable.== infix(_:_:)();
        v55 = *v56;
        (v55)(v59, TupleTypeMetadata2);
        result = (v55)(v61, TupleTypeMetadata2);
        if ((v54 & 1) == 0)
        {
          goto LABEL_27;
        }

        if (!__OFADD__(v31++, 1))
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }

      v55 = *v56;
      (v55)(v59, TupleTypeMetadata2);
      (v55)(v61, TupleTypeMetadata2);
    }

LABEL_27:
    (*v36)(v23, v15);
    ConcatenatedCollection.endIndex.getter();
    if ((static ConcatenatedCollectionIndex.== infix(_:_:)() & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_30:
  (*(v34 + 8))(v75, v74);
  (*(v64 + 8))(v68, v65);

  *(v66 + *(v63 + 44)) = v31;
  return result;
}

void type metadata accessor for SectionStyleModifier<DefaultSectionStyle>()
{
  if (!lazy cache variable for type metadata for SectionStyleModifier<DefaultSectionStyle>)
  {
    lazy protocol witness table accessor for type DefaultSectionStyle and conformance DefaultSectionStyle();
    v0 = type metadata accessor for SectionStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SectionStyleModifier<DefaultSectionStyle>);
    }
  }
}

unint64_t CollectionViewListDataSource.rowIDs(forSectionAt:)@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 64);
    if (*(v3 + 16) > result)
    {
      *a2 = *(v3 + 152 * result + 136);
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultSectionStyle and conformance DefaultSectionStyle()
{
  result = lazy protocol witness table cache variable for type DefaultSectionStyle and conformance DefaultSectionStyle;
  if (!lazy protocol witness table cache variable for type DefaultSectionStyle and conformance DefaultSectionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultSectionStyle and conformance DefaultSectionStyle);
  }

  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance ShadowRowCollection<A>@<X0>(uint64_t *a1@<X8>)
{
  result = ShadowRowCollection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t ShadowRowCollection.startIndex.getter()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.startIndex.getter();
  return v1;
}

uint64_t Menu.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v58 = lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label();
  v52 = *(a1 + 16);
  v46 = *(a1 + 32);
  *&v74 = &type metadata for MenuStyleConfiguration.Label;
  *(&v74 + 1) = v52;
  *&v75 = v58;
  *(&v75 + 1) = v46;
  type metadata accessor for StaticSourceWriter();
  v4 = type metadata accessor for ModifiedContent();
  v60 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v45 - v5;
  *&v47 = *(a1 + 24);
  type metadata accessor for StyleContextWriter<MenuStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v6 = type metadata accessor for ModifiedContent();
  v53 = v6;
  v7 = lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content();
  v54 = v7;
  v8 = *(a1 + 40);
  v9 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v79 = v8;
  v80 = v9;
  v49 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  *&v74 = &type metadata for MenuStyleConfiguration.Content;
  *(&v74 + 1) = v6;
  *&v75 = v7;
  *(&v75 + 1) = WitnessTable;
  type metadata accessor for StaticSourceWriter();
  v11 = type metadata accessor for ModifiedContent();
  v59 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v45 - v12;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>();
  v13 = type metadata accessor for ModifiedContent();
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v45 - v18;
  v19 = v2;
  v20 = (v2 + *(a1 + 56));
  v21 = *v20;
  v22 = v20[1];
  v23 = (v19 + *(a1 + 60));
  v25 = *v23;
  v24 = v23[1];
  outlined copy of AppIntentExecutor?(v21);
  outlined copy of AppIntentExecutor?(v25);
  *&v26 = v21;
  *(&v26 + 1) = v22;
  *&v27 = v25;
  *(&v27 + 1) = v24;
  v74 = v26;
  v75 = v27;
  v28 = v52;
  *&v26 = v52;
  *(&v26 + 1) = v47;
  v47 = v26;
  *&v27 = v46;
  *(&v27 + 1) = v8;
  v45 = v27;
  v67 = v26;
  v68 = v27;
  v69 = v19;
  v29 = lazy protocol witness table accessor for type ResolvedMenuStyle and conformance ResolvedMenuStyle();
  v30 = v51;
  View.viewAlias<A, B>(_:_:)(&type metadata for MenuStyleConfiguration.Label, partial apply for closure #1 in Menu.body.getter, v66, &type metadata for ResolvedMenuStyle, &type metadata for MenuStyleConfiguration.Label, v28, v29);
  v31 = v75;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v74);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v31);
  v64 = v45;
  v63 = v47;
  v65 = v19;
  v77 = v29;
  v78 = &protocol witness table for StaticSourceWriter<A, B>;
  v32 = swift_getWitnessTable();
  v33 = v48;
  View.viewAlias<A, B>(_:_:)(&type metadata for MenuStyleConfiguration.Content, partial apply for closure #2 in Menu.body.getter, v62, v4, &type metadata for MenuStyleConfiguration.Content, v53, v32);
  (*(v60 + 8))(v30, v4);
  KeyPath = swift_getKeyPath();
  v35 = swift_getKeyPath();
  *&v74 = 0;
  *(&v74 + 1) = KeyPath;
  LOBYTE(v75) = 0;
  *(&v75 + 1) = v35;
  v76 = 0;
  v72 = v32;
  v73 = &protocol witness table for StaticSourceWriter<A, B>;
  v36 = swift_getWitnessTable();
  lazy protocol witness table accessor for type PlatformItemListMenuStyle and conformance PlatformItemListMenuStyle();
  v37 = v50;
  View.menuStyle<A, B>(_:in:)(&v74, v38, v11, &type metadata for PlatformItemListMenuStyle, MEMORY[0x1E697EA18], v36, MEMORY[0x1E697EA10], v50);

  (*(v59 + 8))(v33, v11);
  v39 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v70 = v36;
  v71 = v39;
  v40 = swift_getWitnessTable();
  v41 = v55;
  ModifiedContent<>.accessibility()(v13, v55);
  v42 = *(v56 + 8);
  v42(v37, v13);
  v43 = v57;
  static ViewBuilder.buildExpression<A>(_:)(v41, v13, v40);
  v42(v41, v13);
  static ViewBuilder.buildExpression<A>(_:)(v43, v13, v40);
  return (v42)(v43, v13);
}

uint64_t protocol witness for Collection.endIndex.getter in conformance ShadowRowCollection<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ShadowRowCollection.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t ShadowRowCollection.endIndex.getter(uint64_t a1)
{
  v2 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v13 - v6;
  v8 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.endIndex.getter();
  v9 = v13[1];
  updated = type metadata accessor for ShadowListUpdateRecorder();
  v11 = ShadowListUpdateRecorder.finalIndex(_:)(v7, v2 + v8, v9, updated);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v11;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SectionStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t ShadowListUpdateRecorder.finalIndex(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v25 = a3;
  v27 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  (*(v14 + 16))(&v24 - v12, v24, AssociatedTypeWitness, v11);
  *&v13[*(TupleTypeMetadata2 + 48)] = v25;
  v24 = a4;
  v25 = v4;
  ShadowListUpdateRecorder.updates.getter();
  v31 = v32;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v28 = AssociatedTypeWitness;
  *(&v28 + 1) = MEMORY[0x1E69E6530];
  v29 = AssociatedConformanceWitness;
  v30 = MEMORY[0x1E69E6548];
  type metadata accessor for ListUpdate();
  v16 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  *&v28 = v16;
  *(&v28 + 1) = v16;
  v29 = WitnessTable;
  v30 = WitnessTable;
  v18 = type metadata accessor for ConcatenatedCollection();
  v19 = swift_getWitnessTable();
  LOBYTE(v16) = Collection.isEmpty.getter();

  if (v16)
  {
    (*(v26 + 32))(v9, v13, TupleTypeMetadata2);
    v20 = *(v9 + *(TupleTypeMetadata2 + 48));
    (*(v14 + 32))(v27, v9, AssociatedTypeWitness);
  }

  else
  {
    v21 = v24;
    ShadowListUpdateRecorder.updates.getter();
    v32 = v28;
    v22 = v26;
    (*(v26 + 16))(v9, v13, TupleTypeMetadata2);
    v20 = ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(v27, &v32, v9, *(v9 + *(TupleTypeMetadata2 + 48)), v21, v18, v19);

    (*(v22 + 8))(v13, TupleTypeMetadata2);
    (*(v14 + 8))(v9, AssociatedTypeWitness);
  }

  return v20;
}

uint64_t closure #1 in Menu.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v7, v10, v11);
  static ViewBuilder.buildExpression<A>(_:)(v9, a2, a4);
  return (*(v6 + 8))(v9, a2);
}

uint64_t destroy for ShadowRowCollection(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56) + 7;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6 + 8;
  v8 = (a1 + *(v6 + 80) + (((v4 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v6 + 80);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  v9 = v8 + *(v7 + 56);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v13 = (v9 + *(v11 + 80)) & ~*(v11 + 80);

  return v12(v13, v10);
}

uint64_t closure #2 in Menu.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  type metadata accessor for StyleContextWriter<MenuStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  type metadata accessor for Menu();
  View.styleContext<A>(_:)();
  v16 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v20[2] = a4;
  v20[3] = v16;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, WitnessTable);
  v18 = *(v10 + 8);
  v18(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)(v15, v9, WitnessTable);
  return (v18)(v15, v9);
}

uint64_t UICollectionViewListCoordinator.listAppearance.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x338);
  v4 = type metadata accessor for ShadowListDataSource();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *((v2 & v1) + 0x88);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v8], v4);
  ShadowListDataSource<>.style.getter(v4, v3);
  return (*(v5 + 8))(v7, v4);
}

uint64_t ShadowListDataSource<>.style.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppIntentExecutingLocation.get()(v7, v6);
  (*(a2 + 16))(v3, a2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_18BF49654()
{
  swift_getAssociatedTypeWitness();
  v0 = MEMORY[0x1E697F410];
  v1 = MEMORY[0x1E697F408];
  type metadata accessor for _TraitWritingModifier<IsExpandedTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsExpandedTraitKey>, MEMORY[0x1E697F410], MEMORY[0x1E697F408], MEMORY[0x1E697FDB8]);
  type metadata accessor for ModifiedContent();
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<IsExpandedTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<IsExpandedTraitKey>, v0, v1);
  return swift_getWitnessTable();
}

uint64_t protocol witness for CollectionViewListDataSourceBase.style.getter in conformance CollectionViewListDataSource<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t View.menuStyle<A, B>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v36 = a6;
  v32 = a2;
  v33 = a7;
  v34 = a8;
  v35 = a3;
  v10 = *(a5 - 8);
  v30 = a1;
  v31 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MenuStyleModifier();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  type metadata accessor for StyleContextAcceptsPredicate();
  v21 = type metadata accessor for StaticIf();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v29 - v24;
  (*(v13 + 16))(v16, v30, a4, v23);
  (*(v13 + 32))(v20, v16, a4);
  v26 = v31;
  v27 = v29;
  (*(v31 + 16))(v29, v32, a5);
  v38 = a5;
  v39 = v27;
  v37 = v33;
  ViewModifier.requiring<A>(_:)();
  (*(v18 + 8))(v20, v17);
  (*(v26 + 8))(v27, a5);
  MEMORY[0x18D00A570](v25, v35, v21, v36);
  return (*(v22 + 8))(v25, v21);
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v79 = a4;
  v90 = a3;
  v92 = a2;
  v7 = *v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & v7) + 0x60);
  v11 = type metadata accessor for Optional();
  v86 = *(v11 - 8);
  v87 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v74[-v12];
  v89 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v74[-v14];
  v15 = *(*((v9 & v7) + 0x70) + 8);
  v16 = type metadata accessor for ShadowListDataSource();
  v91 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v74[-v17];
  v80 = v15;
  v18 = type metadata accessor for ListCoreBatchUpdates();
  v19 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v74[-v20];
  v93[48] = 17;
  LOBYTE(v15) = UICollectionViewListCoordinatorBase.hasMultipleSelection.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v15 & 1;
  v84 = a1;
  static Update.enqueueAction(reason:_:)();

  v23 = *((*v8 & *v5) + 0xA0);
  swift_beginAccess();
  v24 = *&v5[v23];
  *&v5[v23] = v90;
  outlined consume of ListItemTint?(v24);
  v25 = *((*v8 & *v5) + 0xB8);
  swift_beginAccess();
  v83 = *(v19 + 16);
  v83(v21, &v5[v25], v18);

  LOBYTE(v23) = ListCoreBatchUpdates.isEmpty.getter(v18);
  v26 = *(v19 + 8);
  v81 = v21;
  v90 = v19 + 8;
  v82 = v26;
  v26(v21, v18);
  if (v23)
  {
    v27 = v18;
    v76 = v10;
    v28 = v91;
    v77 = v16;
    UICollectionViewListCoordinatorBase.resolvedEditMode.getter(v93);
    if (v93[0] == 1)
    {
      v29 = 0;
    }

    else
    {
      UICollectionViewListCoordinatorBase.resolvedEditMode.getter(v93);
      v39 = v93[0];
      v29 = (v39 != 0) ^ [v84 isEditing];
    }

    v40 = v92;
    v41 = v28;
    v42 = v25;
    v43 = *MEMORY[0x1E69E7D40] & *v5;
    v44 = *(v43 + 0xC0);
    if (v5[v44] == 1)
    {
      v5[v44] = 0;
      UICollectionViewListCoordinatorBase.resolvedEditMode.getter(v93);
      if (v93[0])
      {
        [v84 setEditing_];
      }
    }

    else
    {
      v75 = v29;
      if (v79)
      {
        v45 = *(v43 + 136);
        swift_beginAccess();
        v46 = v88;
        v47 = v77;
        (*(v28 + 2))(v88, &v5[v45], v77);
        swift_beginAccess();
        WitnessTable = swift_getWitnessTable();
        ListCoreBatchUpdates.formUpdates<A>(from:to:)(v46, v40, v27, v47, WitnessTable);
        swift_endAccess();
        v49 = v47;
        v41 = v28;
        (*(v28 + 1))(v46, v49);
      }

      v50 = v81;
      v83(v81, &v5[v25], v27);
      v51 = ListCoreBatchUpdates.isEmpty.getter(v27);
      v82(v50, v27);
      v52 = v89;
      v53 = *(v89 + 16);
      if (v51)
      {
        v91 = v27;
        v54 = v78;
        v55 = v76;
        v53(v78, v92, v76);
        v56 = v88;
        ShadowListDataSource.init(_:)(v54, v55, v88);
        specialized UICollectionViewListCoordinatorBase.dataSource.setter(v56);
        (*(v41 + 1))(v56, v77);
        v57 = UICollectionViewListCoordinatorBase.dragAndDropController.getter();
        v53(v54, v92, v55);
        v58 = v54;
        v27 = v91;
        ShadowListDataSource.init(_:)(v58, v55, v56);
        v59 = MEMORY[0x1E69E7D40];
        v60 = *((*MEMORY[0x1E69E7D40] & *v57) + 0x60);
        swift_beginAccess();
        (*(v41 + 5))(&v57[v60], v56, v77);
        swift_endAccess();
      }

      else
      {
        v61 = v85;
        v62 = v76;
        v53(v85, v92, v76);
        (*(v52 + 56))(v61, 0, 1, v62);
        v59 = MEMORY[0x1E69E7D40];
        v63 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xD0);
        swift_beginAccess();
        (*(v86 + 40))(&v5[v63], v61, v87);
        swift_endAccess();
      }

      v64 = v81;
      v83(v81, &v5[v42], v27);
      v65 = ListCoreBatchUpdates.isEmpty.getter(v27);
      v82(v64, v27);
      v66 = *v5;
      v67 = *v59;
      if ((v65 & 1) == 0 || (v5[*((v67 & v66) + 0xD8)] & 1) == 0)
      {
        v5[*((v67 & v66) + 0xD8)] = 1;
        v68 = UICollectionViewListCoordinatorBase.isAnimated.getter();
        v93[0] = 17;
        v69 = swift_allocObject();
        *(v69 + 16) = v68 & 1;
        v70 = v84;
        *(v69 + 24) = v5;
        *(v69 + 32) = v70;
        *(v69 + 40) = v75;
        v71 = v70;
        v72 = v5;
        static Update.enqueueAction(reason:_:)();
      }
    }
  }

  else
  {
    v30 = MEMORY[0x1E69E7D40];
    v31 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x88);
    swift_beginAccess();
    v32 = v91;
    v33 = v88;
    (*(v91 + 2))(v88, &v5[v31], v16);
    swift_beginAccess();
    v34 = swift_getWitnessTable();
    v35 = v92;
    ListCoreBatchUpdates.formUpdates<A>(from:to:)(v33, v92, v18, v16, v34);
    swift_endAccess();
    (*(v32 + 1))(v33, v16);
    v36 = v89;
    v37 = v85;
    (*(v89 + 16))(v85, v35, v10);
    (*(v36 + 56))(v37, 0, 1, v10);
    v38 = *((*v30 & *v5) + 0xD0);
    swift_beginAccess();
    (*(v86 + 40))(&v5[v38], v37, v87);
    swift_endAccess();
  }

  return $defer #1 <A, B>() in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(v5);
}

uint64_t sub_18BF4A5BC()
{

  return swift_deallocObject();
}

uint64_t sub_18BF4A5F4()
{

  return swift_deallocObject();
}

uint64_t initializeWithCopy for PlatformItemListMenuStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  v5 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content(v4, v5);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of Environment<Color?>.Content(v6, v7);
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t UICollectionViewListCoordinatorBase.hasMultipleSelection.getter()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = *(v1 + 0x68);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  UICollectionViewListCoordinatorBase.currentSelection.getter(&v10 - v5);
  v7 = *(v2 - 8);
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(*(v1 + 120) + 72))(v2);
    v4 = v7;
    v3 = v2;
  }

  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t destroy for SystemHoverEffectViewModifier(uint64_t a1)
{
  outlined consume of Environment<Bool>.Content(*(a1 + 8), *(a1 + 16));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);

  return outlined consume of Environment<Color?>.Content(v2, v3);
}

uint64_t UICollectionViewListCoordinatorBase.currentSelection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Binding();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  if (static CoreTesting.isRunning.getter())
  {
    v13 = *((*v3 & *v1) + 0x110);
    swift_beginAccess();
    if ((*(v10 + 48))(&v1[v13], 1, v9))
    {
      return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
    }

    else
    {
      (*(v10 + 16))(v12, &v1[v13], v9);
      MEMORY[0x18D00ACC0](v9);
      (*(v10 + 8))(v12, v9);
      return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
    }
  }

  else
  {
    v15 = *((*v3 & *v1) + 0x118);
    swift_beginAccess();
    v22 = v6;
    v23 = v5;
    (*(v6 + 16))(v8, &v1[v15], v5);
    v16 = *(v4 - 8);
    v17 = *(v16 + 48);
    if (v17(v8, 1, v4) == 1)
    {
      v20 = v17;
      v21 = a1;
      v18 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x110);
      swift_beginAccess();
      v19 = 1;
      if (!(*(v10 + 48))(&v1[v18], 1, v9))
      {
        (*(v10 + 16))(v12, &v1[v18], v9);
        MEMORY[0x18D00ACC0](v9);
        (*(v10 + 8))(v12, v9);
        v19 = 0;
      }

      (*(v16 + 56))(v21, v19, 1, v4);
      result = v20(v8, 1, v4);
      if (result != 1)
      {
        return (*(v22 + 8))(v8, v23);
      }
    }

    else
    {
      (*(v16 + 32))(a1, v8, v4);
      return (*(v16 + 56))(a1, 0, 1, v4);
    }
  }

  return result;
}

__n128 ResolvedMenuStyle.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  outlined copy of AppIntentExecutor?(v3);
  outlined copy of AppIntentExecutor?(v3);
  outlined copy of AppIntentExecutor?(v6);
  specialized AccessibilityMenuModifier.body(content:)(v3, v4, v6, v5, v3, v4, v14);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v3);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v3);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6);
  v7 = v15;
  v8 = v16;
  _s7SwiftUI25SharingPickerHostModifier33_16FA549D504C127F429806EC47FAADE4LLV5ModelVSgWOi0_(v18);
  v17[4] = v18[4];
  v17[5] = v18[5];
  v17[6] = v18[6];
  v17[7] = v18[7];
  v17[0] = v18[0];
  v17[1] = v18[1];
  v17[2] = v18[2];
  v17[3] = v18[3];
  specialized SharingPickerHostModifier.init(model:)(v17, v19);
  v9 = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = v9;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v10 = v19[7];
  *(a1 + 144) = v19[6];
  *(a1 + 160) = v10;
  *(a1 + 176) = v20;
  v11 = v19[3];
  *(a1 + 80) = v19[2];
  *(a1 + 96) = v11;
  v12 = v19[5];
  *(a1 + 112) = v19[4];
  *(a1 + 128) = v12;
  result = v19[1];
  *(a1 + 48) = v19[0];
  *(a1 + 64) = result;
  return result;
}

uint64_t initializeWithCopy for ListCoreBatchUpdates(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v7(a1 + a3[9], a2 + a3[9], v6);
  v8 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v9) = *(a2 + v9);
  v10 = a3[14];

  v7(a1 + v10, a2 + v10, v6);
  v11 = a3[15];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = v13[3];
  v12[2] = v13[2];
  v12[3] = v15;
  v12[4] = v13[4];

  return a1;
}

uint64_t ListCoreBatchUpdates.isEmpty.getter(int *a1)
{
  if ((IndexSet.isEmpty.getter() & 1) == 0 || (IndexSet.isEmpty.getter() & 1) == 0 || *(*(v1 + a1[10]) + 16) || *(*(v1 + a1[11]) + 16) || *(*(v1 + a1[12]) + 16) || *(*(v1 + a1[13]) + 16))
  {
    return 0;
  }

  else
  {
    return IndexSet.isEmpty.getter() & 1;
  }
}

uint64_t destroy for ListCoreBatchUpdates(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(*(v4 - 8) + 8);
  v5(a1, v4);
  v5(a1 + *(a2 + 36), v4);

  v5(a1 + *(a2 + 56), v4);
}

uint64_t specialized AccessibilityMenuModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for MenuStyleModifier<DefaultMenuStyle>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v14 = swift_allocObject();
  *(v14 + 16) = 8;
  outlined copy of AppIntentExecutor?(a1);
  outlined copy of AppIntentExecutor?(a3);
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v24);
  type metadata accessor for MutableBox<AccessibilityAttachment>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v15 = swift_allocObject();
  memcpy((v15 + 16), __src, 0x128uLL);
  *&__src[0] = a1;
  *(&__src[0] + 1) = a2;
  *&__src[1] = a3;
  *(&__src[1] + 1) = a4;
  *&__src[2] = v15;
  *(&__src[2] + 1) = v14;
  outlined copy of AppIntentExecutor?(a1);
  outlined copy of AppIntentExecutor?(a3);
  AccessibilityTraitSet.init(traits:)();
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v15 + 16, 0, v22);
  outlined init with copy of ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(__src, v24);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a1);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a3);

  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v15 + 16, 0x4000000040uLL);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a1);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a3);
  AccessibilityTraitSet.init(traits:)();
  result = closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v15 + 16, v21, v21);
  if (a5)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a5;
    *(v17 + 24) = a6;
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #1 in UIKitSearchScopeCoordinating<>.onChange(selectedScope:);
    *(v18 + 24) = v17;
    outlined init with copy of ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(__src, v24);
    outlined copy of AppIntentExecutor?(a5);

    specialized ModifiedContent<>.accessibilityAction(_:_:)(0, 0, 0, 0, _sytIegr_Ieg_TRTA_0, v18, v24);

    outlined destroy of ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(__src);
    outlined destroy of ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(__src);

    v19 = v24[0];
    v20 = v24[1];
    v15 = v25;
    v14 = v26;
  }

  else
  {
    v19 = __src[0];
    v20 = __src[1];
  }

  *a7 = v19;
  *(a7 + 16) = v20;
  *(a7 + 32) = v15;
  *(a7 + 40) = v14;
  return result;
}

uint64_t sub_18BF4B3EC()
{

  return swift_deallocObject();
}

void *UICollectionViewListCoordinatorBase.resolvedEditMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x128);
  v4 = *(v3 + 1);
  if (v4)
  {
    v5 = *v3;
    v6 = v3[16];
    v9 = v5;
    v10 = v4;
    v11 = v6;
    _s7SwiftUI16PlatformItemListVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
    result = MEMORY[0x18D00ACC0](&v8);
    LOBYTE(v4) = v8;
  }

  *a1 = v4;
  return result;
}

void type metadata accessor for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>)
  {
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    type metadata accessor for SectionStyleModifier<SidebarSectionStyle>(255, &lazy cache variable for type metadata for SectionStyleModifier<SidebarSectionStyle>, lazy protocol witness table accessor for type SidebarSectionStyle and conformance SidebarSectionStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for PlatformItemList?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI16PlatformItemListVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for SectionStyleModifier<SidebarSectionStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for SectionStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t $defer #1 <A, B>() in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = 1;
  return outlined consume of ListItemTint?(v3);
}

unint64_t lazy protocol witness table accessor for type SidebarSectionStyle and conformance SidebarSectionStyle()
{
  result = lazy protocol witness table cache variable for type SidebarSectionStyle and conformance SidebarSectionStyle;
  if (!lazy protocol witness table cache variable for type SidebarSectionStyle and conformance SidebarSectionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarSectionStyle and conformance SidebarSectionStyle);
  }

  return result;
}

double specialized SharingPickerHostModifier.init(model:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI25SharingPickerHostModifier33_16FA549D504C127F429806EC47FAADE4LLV5ModelVSgWOi0_(v14);
  v19 = v14[4];
  v20 = v14[5];
  v21 = v14[6];
  v22 = v14[7];
  v15 = v14[0];
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[7];
  v13[6] = a1[6];
  v13[7] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a1[3];
  v13[2] = a1[2];
  v13[3] = v7;
  outlined destroy of SharingPickerHostModifier.Model?(v13, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
  v8 = v20;
  *(a2 + 64) = v19;
  *(a2 + 80) = v8;
  v9 = v22;
  *(a2 + 96) = v21;
  *(a2 + 112) = v9;
  v10 = v16;
  *a2 = v15;
  *(a2 + 16) = v10;
  result = *&v17;
  v12 = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v12;
  *(a2 + 128) = 0;
  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
    type metadata accessor for SectionStyleModifier<SidebarSectionStyle>(255, &lazy cache variable for type metadata for SectionStyleModifier<MenuSectionStyle>, lazy protocol witness table accessor for type MenuSectionStyle and conformance MenuSectionStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>);
    }
  }
}

uint64_t assignWithCopy for ListRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    type metadata accessor for SectionStyleModifier<SidebarSectionStyle>(255, &lazy cache variable for type metadata for SectionStyleModifier<InlineActionsSectionStyle>, lazy protocol witness table accessor for type InlineActionsSectionStyle and conformance InlineActionsSectionStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>);
    }
  }
}

uint64_t specialized ListRepresentable.sizeThatFits(_:provider:context:)(uint64_t a1, char a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a6 + 32);
  v14 = *(a6 + 16);
  v23[0] = *a6;
  v23[1] = v14;
  v24 = v13;
  type metadata accessor for ListRepresentable();
  swift_getWitnessTable();
  type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.environment.getter();
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();
  if (a8)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v21 == 1 && !(v19 | v20))
  {
    return 0;
  }

  if (a4)
  {
    v15 = 10.0;
    if (a2)
    {
      v16 = 10.0;
    }

    else
    {
      v16 = *&a1;
    }

    if (!v21)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      return 0;
    }

    v15 = *&a3;
    v16 = 10.0;
    if (!v21)
    {
      goto LABEL_15;
    }
  }

  if (v19 > 1)
  {
    [a5 contentSize];
    if ((a2 & 1) == 0)
    {
      v17 = v16;
    }

    return *&v17;
  }

LABEL_15:
  AGGraphClearUpdate();
  closure #1 in UpdateCoalescingCollectionView.idealSize(in:)(a5, v23, v16, v15);
  AGGraphSetUpdate();
  v17 = *v23;
  if ((a2 & 1) == 0)
  {
    v17 = v16;
  }

  if ((a4 & 1) != 0 && v21 && !(v19 | v20))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return 0;
  }

  return *&v17;
}

unint64_t lazy protocol witness table accessor for type InlineActionsSectionStyle and conformance InlineActionsSectionStyle()
{
  result = lazy protocol witness table cache variable for type InlineActionsSectionStyle and conformance InlineActionsSectionStyle;
  if (!lazy protocol witness table cache variable for type InlineActionsSectionStyle and conformance InlineActionsSectionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InlineActionsSectionStyle and conformance InlineActionsSectionStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlainSectionStyle and conformance PlainSectionStyle()
{
  result = lazy protocol witness table cache variable for type PlainSectionStyle and conformance PlainSectionStyle;
  if (!lazy protocol witness table cache variable for type PlainSectionStyle and conformance PlainSectionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainSectionStyle and conformance PlainSectionStyle);
  }

  return result;
}

Swift::Void __swiftcall UpdateBridgedState.updateValue()()
{
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_4;
  }

  v0 = type metadata accessor for BridgedListState(0);
  Value = AGGraphGetValue();
  OutputValue = AGGraphGetOutputValue();
  if (!OutputValue)
  {
    __break(1u);
    return;
  }

  if (*(Value + *(v0 + 28)) != *OutputValue)
  {
LABEL_4:
    AGGraphClearUpdate();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      *(Strong + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_bridgedState) = AGCreateWeakAttribute();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      static Update.enqueueAction(reason:_:)();
    }

    AGGraphSetUpdate();
    type metadata accessor for BridgedListState(0);
    AGGraphGetValue();
    AGGraphSetOutputValue();
  }
}

uint64_t sub_18BF4BFCC()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t NavigableListModifier.BoundListSelectionDetector.updateValue()(uint64_t a1)
{
  v3 = *(a1 + 24);
  v73 = *(a1 + 16);
  v69 = v3;
  v4 = type metadata accessor for SelectionManagerBox();
  v5 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v70 = &v58 - v6;
  v75 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v58 - v12;
  v76 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v58 - v16;
  v78 = v4;
  v17 = type metadata accessor for Binding();
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v58 - v20;
  v22 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - v24;
  NavigableListModifier.BoundListSelectionDetector.selection.getter(v21);
  if ((*(v22 + 48))(v21, 1, v17) == 1)
  {
    return (*(v19 + 8))(v21, v18);
  }

  (*(v22 + 32))(v25, v21, v17);
  NavigableListModifier.BoundListSelectionDetector.listKey.getter(v82);
  if ((v84 - 1) < 2)
  {
    return (*(v22 + 8))(v25, v17);
  }

  v85[0] = v82[0];
  v85[1] = v82[1];
  v86 = v83;
  v87 = v84;
  if (*(v1 + 56) != *AGGraphGetValue() >> 1)
  {
    *(v1 + 56) = *AGGraphGetValue() >> 1;
    *(v1 + 44) = 0xFFFFFFFFLL;
    *(v1 + 52) = 0;
  }

  v27 = NavigableListModifier.BoundListSelectionDetector.navigationAuthority.getter(&v79);
  v28 = v78;
  if (v80 == 1)
  {
    (*(v22 + 8))(v25, v17, v27);
    return outlined destroy of NavigationAuthority?(&v79);
  }

  if (v80 == 2)
  {
    (*(v22 + 8))(v25, v17, v27);
    return outlined destroy of NavigationAuthority??(&v79);
  }

  outlined init with take of NavigationAuthority(&v79, v81);
  v29 = *(v1 + 12);
  v30 = *MEMORY[0x1E698D3F8];
  v63 = v22;
  if (v29 == v30)
  {
    v62 = 0;
  }

  else
  {
    v62 = *AGGraphGetValue();
  }

  v61 = *(v1 + *(a1 + 76));
  v31 = v77;
  v64 = v25;
  MEMORY[0x18D00ACC0](v17);
  v32 = *(a1 + 72);
  v33 = v74;
  v34 = *(v75 + 16);
  v58 = v1;
  v59 = v34;
  v34(v74, (v1 + v32), v5);
  v35 = v76;
  v36 = v72;
  (*(v76 + 16))(v72, v31, v28);
  (*(v35 + 56))(v36, 0, 1, v28);
  v37 = *(TupleTypeMetadata2 + 48);
  v38 = v28;
  v39 = v70;
  v40 = v33;
  v41 = v59;
  v59(v70, v40, v5);
  v65 = v37;
  v41(&v39[v37], v36, v5);
  v60 = *(v35 + 48);
  if (v60(v39, 1, v38) != 1)
  {
    v46 = v67;
    v41(v67, v39, v5);
    v47 = v78;
    v48 = (v35 + 8);
    if (v60(&v39[v65], 1, v78) != 1)
    {
      v54 = v66;
      (*(v35 + 32))(v66, &v39[v65], v47);
      v45 = static SelectionManagerBox.== infix(_:_:)(v46, v54, v73, v69);
      v55 = *(v35 + 8);
      v55(v54, v47);
      v56 = *(v75 + 8);
      v56(v72, v5);
      v56(v74, v5);
      v55(v46, v47);
      v56(v70, v5);
      v44 = v58;
      goto LABEL_28;
    }

    v49 = *(v75 + 8);
    v49(v72, v5);
    v49(v74, v5);
    (*v48)(v46, v47);
    v44 = v58;
LABEL_19:
    (*(v68 + 8))(v39, TupleTypeMetadata2);
    v45 = 0;
    v50 = v62;
    v51 = v62 ^ v61;
    goto LABEL_20;
  }

  v42 = *(v75 + 8);
  v42(v36, v5);
  v42(v74, v5);
  v43 = v60(&v39[v65], 1, v78);
  v44 = v58;
  if (v43 != 1)
  {
    goto LABEL_19;
  }

  v42(v39, v5);
  v45 = 1;
LABEL_28:
  v50 = v62;
  v51 = v62 ^ v61;
  if (v45 & 1) == 0 || (v51)
  {
LABEL_20:
    if (UpdateCycleDetector.dispatch(label:isDebug:)())
    {
      if (((v45 | v50) & 1) == 0)
      {
        AGGraphClearUpdate();
        v52 = v73;
        closure #1 in NavigableListModifier.BoundListSelectionDetector.updateValue()(v44, &v79);
        AGGraphSetUpdate();
        Value = AGGraphGetValue();
        static NavigationRequest.boundSelectionChange<A>(list:newValue:selectionPopsSubsequentColumn:transaction:)(v85, *Value, v52, &v79);
        if ((*(v44 + 36) & 1) == 0)
        {
          NavigationAuthority.enqueueRequest(_:)(&v79);
        }

        outlined destroy of NavigationRequest(&v79);
      }

      if (v51)
      {
        static NavigationRequest.editingChanged<A>(forSelectionType:list:newValue:)(v85, v50, v73, &v79);
        NavigationAuthority.enqueueRequest(_:)(&v79);
        outlined destroy of NavigationRequest(&v79);
      }
    }
  }

  v57 = v77;
  $defer #2 <A>() in NavigableListModifier.BoundListSelectionDetector.updateValue()(v44, v77);
  (*(v76 + 8))(v57, v78);
  outlined destroy of NavigationAuthority(v81);
  (*(v63 + 8))(v64, v17);
  result = type metadata accessor for NavigableListModifier.BoundListSelectionDetector();
  *(v44 + *(result + 76)) = v50;
  return result;
}

uint64_t NavigableListModifier.BoundListSelectionDetector.selection.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, &type metadata for SectionStyleConfiguration.RawContent, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

__int128 *NavigableListModifier.BoundListSelectionDetector.listKey.getter@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
  }

  else
  {
    v5 = xmmword_18CD874C0;
    v3 = 0uLL;
    v4 = 0uLL;
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t NavigableListModifier.ListKey.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  type metadata accessor for SelectionManagerBox();
  v8 = type metadata accessor for Binding();
  v35 = type metadata accessor for Optional();
  v9 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v29 - v13;
  v29[0] = a1;
  v29[1] = a3;
  v15 = NavigableListModifier.ListKey.inheritedStackKey.getter();
  if (v16 == 7)
  {
    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  v19 = 6;
  if (v16 != 7)
  {
    v19 = v16;
  }

  v33 = v19;
  v34 = v18;
  if (v16 == 7)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  v32 = v20;
  v31 = *AGGraphGetValue();
  NavigableListModifier.ListKey.selection.getter(v14);
  v21 = *(*(v8 - 8) + 48);
  v30 = v21(v14, 1, v8) != 1;
  v22 = *(v9 + 8);
  v23 = v14;
  v24 = v35;
  v22(v23, v35);
  NavigableListModifier.ListKey.selection.getter(v11);
  if (v21(v11, 1, v8) == 1)
  {
    a2 = 0;
  }

  result = (v22)(v11, v24);
  v26 = v33;
  v27 = v34;
  *a4 = v31;
  a4[1] = v27;
  a4[2] = v26;
  v28 = v30;
  a4[3] = v32;
  a4[4] = v28;
  a4[5] = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

double protocol witness for Rule.value.getter in conformance NavigableListModifier<A>.ListKey@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  NavigableListModifier.ListKey.value.getter(*v2, *(a1 + 16), *(a1 + 24), v6);
  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  result = *&v7;
  a2[2] = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t NavigableListModifier.ListKey.inheritedStackKey.getter()
{
  type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t NavigableListModifier.ListKey.selection.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

double NavigableListModifier.BoundListSelectionDetector.navigationAuthority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t NavigableListModifier.EnsureNavigationAuthority.updateValue()(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v18 = *(a1 + 16);
  type metadata accessor for SelectionManagerBox();
  v3 = type metadata accessor for Binding();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  NavigableListModifier.EnsureNavigationAuthority.selection.getter(v7);
  if ((*(v8 + 48))(v7, 1, v3) != 1)
  {
    (*(v8 + 32))(v11, v7, v3);
    NavigableListModifier.EnsureNavigationAuthority.inheritedAuthority.getter(v19);
    if (*&v19[8] == 1)
    {
      outlined destroy of NavigationAuthority?(v19);
    }

    else
    {
      if (*&v19[8] != 2)
      {
LABEL_12:
        outlined init with take of NavigationAuthority(v19, v21);
        if (*(v1 + 48))
        {
LABEL_17:
          outlined init with copy of NavigationAuthority(v21, v19);
          type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
          AGGraphSetOutputValue();
          outlined destroy of NavigationAuthority?(v19);
          outlined destroy of NavigationAuthority(v21);
          return (*(v8 + 8))(v11, v3);
        }

        *(v1 + 48) = 1;
        outlined init with copy of NavigationAuthority(v21, v20);
        type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6720]);
        result = AGGraphGetValue();
        v14 = *(result + 40);
        if (v14 != 1)
        {
          v15 = *(result + 32);
          v16 = *(result + 16);
          v22[0] = *result;
          v22[1] = v16;
          v23 = v15;
          v24 = v14;
          static NavigationRequest.setSelection<A>(_:list:)(v11, v22, v18, v2, v19);
          if ((*(v1 + 20) & 1) == 0)
          {
            NavigationAuthority.enqueueRequest(_:)(v19);
          }

          outlined destroy of NavigationRequest(v19);
          outlined destroy of NavigationAuthority(v20);
          goto LABEL_17;
        }

        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      outlined destroy of NavigationAuthority??(v19);
    }

    outlined init with copy of NavigationAuthority?(v1 + 24, v19);
    if (*&v19[8] == 1)
    {
      outlined destroy of NavigationAuthority?(v19);
      type metadata accessor for NavigationStateHost();
      AGGraphGetValue();

      EnvironmentValues.init()();
      v13 = v22[0];
      swift_weakInit();
      swift_weakAssign();

      *&v19[8] = v13;
      outlined assign with take of NavigationAuthority?(v19, v1 + 24);
      result = outlined init with copy of NavigationAuthority?(v1 + 24, v19);
      if (*&v19[8] == 1)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_12;
  }

  (*(v5 + 8))(v7, v4);
  NavigableListModifier.EnsureNavigationAuthority.inheritedAuthority.getter(v22);
  if (*(&v22[0] + 1) == 2)
  {
    *v19 = xmmword_18CD633F0;
    *&v19[16] = 0;
  }

  else
  {
    outlined init with take of NavigationAuthority?(v22, v19);
  }

  type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  AGGraphSetOutputValue();
  return outlined destroy of NavigationAuthority?(v19);
}

uint64_t NavigableListModifier.EnsureNavigationAuthority.selection.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

double NavigableListModifier.EnsureNavigationAuthority.inheritedAuthority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

__n128 static NavigationRequest.setSelection<A>(_:list:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a3, a4, a3, a4);
  type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  type metadata accessor for ToAnyListSelection();
  swift_getWitnessTable();
  v12 = *(a2 + 16);
  v13 = *a2;
  Binding.projecting<A>(_:)();
  *(a5 + 56) = *(a1 + 8);
  *(a5 + 64) = a3;
  *(a5 + 96) = 2;
  result = v13;
  *(a5 + 120) = v12;
  *(a5 + 104) = v13;
  *(a5 + 136) = v9 & 1 | 0x4000000000000000;
  *(a5 + 144) = v10;
  *(a5 + 152) = 0;
  *(a5 + 160) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarSection and conformance SidebarSection()
{
  result = lazy protocol witness table cache variable for type SidebarSection and conformance SidebarSection;
  if (!lazy protocol witness table cache variable for type SidebarSection and conformance SidebarSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarSection and conformance SidebarSection);
  }

  return result;
}

BOOL NavigableListModifier.IsEditing.value.getter()
{
  NavigableListModifier.IsEditing.editMode.getter(&v8);
  v1 = v8;
  v0 = v9;
  v2 = v10;
  if (v9)
  {

    outlined consume of Binding<NavigationSplitViewColumn>?(v1, v0);
    v5 = v1;
    v6 = v0;
    v7 = v2;
    type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v4);
    outlined consume of Binding<NavigationSplitViewColumn>?(v1, v0);
    return v4 != 0;
  }

  else
  {
    outlined consume of Binding<NavigationSplitViewColumn>?(v8, 0);
    return 0;
  }
}

uint64_t NavigableListModifier.IsEditing.editMode.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Binding<EditMode>?();
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(Value + 16);

  return outlined copy of Binding<Int>?(v4, v3);
}

BOOL protocol witness for Rule.value.getter in conformance NavigableListModifier<A>.IsEditing@<W0>(_BYTE *a1@<X8>)
{
  result = NavigableListModifier.IsEditing.value.getter();
  *a1 = result;
  return result;
}

uint64_t closure #1 in NavigableListModifier.BoundListSelectionDetector.updateValue()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for NavigableListModifier.BoundListSelectionDetector();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = *AGGraphGetValue();
  v10 = *(v5 + 8);

  result = v10(v8, v4);
  *a2 = v9;
  return result;
}

__n128 static NavigationRequest.boundSelectionChange<A>(list:newValue:selectionPopsSubsequentColumn:transaction:)@<Q0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *a4 = a3;
  *(a4 + 8) = a2;
  *(a4 + 96) = 7;
  v8 = v6 & 1 | 0x4000000000000000;
  v9 = Transaction.disablesAnimations.getter();
  result = *a1;
  *(a4 + 120) = *(a1 + 16);
  *(a4 + 104) = result;
  *(a4 + 136) = v8;
  *(a4 + 144) = v7;
  *(a4 + 152) = v9 & 1;
  *(a4 + 160) = 0;
  return result;
}

uint64_t $defer #2 <A>() in NavigableListModifier.BoundListSelectionDetector.updateValue()(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for NavigableListModifier.BoundListSelectionDetector() + 72);
  v5 = type metadata accessor for SelectionManagerBox();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(a1 + v4, v6);
  v9 = *(v5 - 8);
  (*(v9 + 16))(a1 + v4, a2, v5);
  v7 = *(v9 + 56);

  return v7(a1 + v4, 0, 1, v5);
}

uint64_t partial apply for specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)()
{
  return partial apply for specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:));
}

{
  return partial apply for specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:));
}

{
  return partial apply for specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:));
}

uint64_t specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  outlined init with copy of NavigationState.StackContent?(a1, v13, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (v13[448] == 255)
  {
    return outlined destroy of PPTTestCase?(v13, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  }

  memcpy(__dst, v13, 0x1C1uLL);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    specialized NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(__dst, a3, a4, a5, a6 & 1);
  }

  return outlined destroy of NavigationState.StackContent(__dst);
}

{
  outlined init with copy of NavigationState.StackContent?(a1, __src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (__src[448] == 255)
  {
    return outlined destroy of PPTTestCase?(__src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  }

  memcpy(__dst, __src, 0x1C1uLL);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    specialized NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(__dst, a3, a4, a5, a6 & 1, &unk_1F00023E8, implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:), partial apply for specialized closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:), specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:), partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:), partial apply for specialized closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:), partial apply for specialized closure #3 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:), &unk_1F0002618, implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply, &unk_1F0002320, closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply, &block_descriptor_80_0, closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply, &block_descriptor_75_1, closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)specialized partial apply, closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply, &block_descriptor_70_1, &unk_1F0002488, &unk_1F00024B0, partial apply for closure #2 in DragAndDropBridge.dragInteraction(_:sessionWillBegin:), partial apply for specialized closure #1 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:));
  }

  return outlined destroy of NavigationState.StackContent(__dst);
}

{
  outlined init with copy of NavigationState.StackContent?(a1, __src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (__src[448] == 255)
  {
    return outlined destroy of PPTTestCase?(__src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  }

  memcpy(__dst, __src, 0x1C1uLL);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    specialized NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(__dst, a3, a4, a5, a6 & 1, &unk_1F0002A78, implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:), partial apply for specialized closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:), specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:), partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:), partial apply for specialized closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:), partial apply for specialized closure #3 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:), &unk_1F0002B68, implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply, &unk_1F00029D8, closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply, &block_descriptor_249, closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply, &block_descriptor_244, closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)specialized partial apply, partial apply for specialized closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:), &block_descriptor_239, &unk_1F0002B18, &unk_1F0002B40, closure #1 in NavigationHostingControllerCache_UIKit.ejectDeferred<A>(at:)partial apply, partial apply for specialized closure #1 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:));
  }

  return outlined destroy of NavigationState.StackContent(__dst);
}

void type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>)
  {
    type metadata accessor for StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>);
    }
  }
}