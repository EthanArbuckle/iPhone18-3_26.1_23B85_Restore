uint64_t sub_395E0C(uint64_t a1)
{
  if (a1 == 4)
  {
    sub_394524();
  }

  v2 = OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_attributeStack;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3[2])
  {
    __break(1u);
LABEL_8:
    result = sub_2A5210(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v3[2];
  if (v5)
  {
LABEL_6:
    v3[2] = v5 - 1;
    *(v1 + v2) = v3;
    swift_endAccess();

    return [*(v1 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_accumulator) endEditing];
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_395EE8()
{
  v0 = objc_allocWithZone(NSMutableString);
  v1 = sub_3ED204();
  v2 = [v0 initWithString:v1];

  if (qword_4E8C28 != -1)
  {
    swift_once();
  }

  v3 = qword_5044A0;
  if (qword_5044A0)
  {
    v4 = [v2 length];
    v5 = sub_3ED204();
    [v3 replaceMatchesInString:v2 options:0 range:0 withTemplate:{v4, v5}];
  }

  sub_3ED244();
  sub_394524();
}

uint64_t sub_396008()
{
  [*(v0 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_accumulator) beginEditing];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5630;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v2 = *(v0 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_configuration + 48);
  *(inited + 64) = sub_36174(0, &unk_504570);
  *(inited + 40) = v2;
  v3 = NSParagraphStyleAttributeName;
  v4 = v2;
  v5 = sub_619F4(inited);
  swift_setDeallocating();
  sub_FCF8(inited + 32, &qword_4EC478);
  sub_394150(v5);
}

uint64_t sub_396108()
{
  sub_394524();
  v1 = OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_attributeStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_2A5210(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v2[2] = v4 - 1;
    *(v0 + v1) = v2;
    swift_endAccess();

    return [*(v0 + OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_accumulator) endEditing];
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_3961DC(unint64_t *a1, void (*a2)(uint64_t))
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

id static NSParagraphStyle.listItem(withIndentation:)(double a1)
{
  v2 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v2 setFirstLineHeadIndent:0.0];
  [v2 setHeadIndent:a1];
  [v2 setDefaultTabInterval:a1];
  sub_61C44(_swiftEmptyArrayStorage);
  v3 = objc_allocWithZone(NSTextTab);
  type metadata accessor for OptionKey(0);
  sub_396424();
  isa = sub_3ED084().super.isa;

  v5 = [v3 initWithTextAlignment:4 location:isa options:a1];

  [v2 addTabStop:v5];
  return v2;
}

BOOL NSParagraphStyle.isListItem.getter()
{
  [v0 firstLineHeadIndent];
  if (v1 != 0.0)
  {
    return 0;
  }

  [v0 headIndent];
  if (v2 <= 0.0)
  {
    return 0;
  }

  [v0 defaultTabInterval];
  if (v3 <= 0.0)
  {
    return 0;
  }

  v4 = [v0 tabStops];
  sub_39647C();
  v5 = sub_3ED584();

  if (v5 >> 62)
  {
    v6 = sub_3EE5A4();
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  return v6 != 0;
}

unint64_t sub_396424()
{
  result = qword_4E9150;
  if (!qword_4E9150)
  {
    type metadata accessor for OptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9150);
  }

  return result;
}

unint64_t sub_39647C()
{
  result = qword_5045B8;
  if (!qword_5045B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_5045B8);
  }

  return result;
}

char *sub_3964C8(void *a1)
{
  result = [v1 length];
  v4 = result;
  if (result < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      result = [a1 characterIsMember:{objc_msgSend(v1, "characterAtIndex:", v5)}];
      if (!result)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_18;
      }
    }
  }

  if (v5 == v4)
  {
    goto LABEL_18;
  }

  v6 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  while (v6 >= v5)
  {
    result = [a1 characterIsMember:{objc_msgSend(v1, "characterAtIndex:", v6)}];
    if (!result)
    {
      break;
    }

    if (__OFSUB__(v6--, 1))
    {
      __break(1u);
      break;
    }
  }

  if (__OFADD__(v6, 1))
  {
    goto LABEL_22;
  }

  v8 = (v4 - v6);
  if (__OFSUB__(v4, v6))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (__OFSUB__(v8, 1))
  {
LABEL_24:
    __break(1u);
    return result;
  }

  [v1 deleteCharactersInRange:{v6 + 1, v8 - 1}];
  v4 = v5;
LABEL_18:

  return [v1 deleteCharactersInRange:{0, v4}];
}

uint64_t OAuthController.__allocating_init(endpointSubscriber:hudViewHandler:)(uint64_t a1, __int128 *a2)
{
  v3 = swift_allocObject();
  OAuthController.init(endpointSubscriber:hudViewHandler:)(v3, a2);
  return v3;
}

uint64_t OAuthController.init(endpointSubscriber:hudViewHandler:)(uint64_t a1, __int128 *a2)
{
  v12 = a2;
  v11 = sub_3EDBB4();
  v3 = *(v11 - 8);
  __chkstk_darwin(v11);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EDB54();
  __chkstk_darwin(v6);
  v7 = sub_3EBC14();
  __chkstk_darwin(v7 - 8);
  v8 = sub_801B4();
  v10[1] = "ShelfKit.NqmlStringGenerator";
  v10[2] = v8;
  sub_3EBBE4();
  v13 = _swiftEmptyArrayStorage;
  sub_3974F4(&qword_4F1CA8, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CB0);
  sub_318924(&qword_4F1CB8, &qword_4F1CB0);
  sub_3EE244();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *(v2 + 16) = sub_3EDBF4();
  *(v2 + 24) = 0;
  sub_1D4F0(v12, v2 + 32);
  return v2;
}

uint64_t OAuthController.authenticateThirdPartySubscription(authorizationURL:oAuthAdamId:window:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v44 = a4;
  v45 = a6;
  v52 = a2;
  v8 = sub_3EBBC4();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBC14();
  v47 = *(v10 - 8);
  v48 = v10;
  __chkstk_darwin(v10);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_3E5DC4();
  v12 = *(v41 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v41);
  v14 = sub_3E9A04();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();

  v18 = sub_3E99F4();
  v19 = sub_3ED9F4();
  v53 = a3;

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40 = a1;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    *(v20 + 14) = sub_2EDD0(v52, v53, aBlock);
    _os_log_impl(&dword_0, v18, v19, "%{private,mask.hash}s: Authenticating OAuth from PurchaseController.", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    a1 = v40;
  }

  (*(v15 + 8))(v17, v14);
  v23 = v43;
  v40 = *(v43 + 16);
  v24 = v41;
  (*(v12 + 16))(&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v41);
  v25 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  (*(v12 + 32))(v28 + v25, &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v29 = (v28 + v26);
  v30 = v53;
  *v29 = v52;
  v29[1] = v30;
  v32 = v44;
  v31 = v45;
  *(v28 + v27) = v44;
  v33 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v33 = v42;
  v33[1] = v31;
  aBlock[4] = sub_3974C4;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_30;
  v34 = _Block_copy(aBlock);

  v35 = v32;

  v36 = v46;
  sub_3EBBE4();
  v54 = _swiftEmptyArrayStorage;
  sub_3974F4(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_318924(&qword_506A30, &unk_503DE0);
  v37 = v49;
  v38 = v51;
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v34);
  (*(v50 + 8))(v37, v38);
  (*(v47 + 8))(v36, v48);
}

uint64_t sub_396E20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v69 = a6;
  v70 = a7;
  v75 = a5;
  v77 = a3;
  v73 = a2;
  v9 = sub_3E5FC4();
  v68 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_3E5DC4();
  v72 = *(v74 - 8);
  v12 = *(v72 + 64);
  __chkstk_darwin(v74);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v71 = sub_3E9A04();
  v17 = *(v71 - 8);
  __chkstk_darwin(v71);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v65 - v21;
  v76 = a1;
  if (*(a1 + 24))
  {
    v68 = a4;

    sub_3E99E4();
    v23 = sub_3E99F4();
    v24 = sub_3ED9D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "There already exists an OAuthSession. This should never happen. Cancelling existing session.", v25, 2u);
    }

    (*(v17 + 8))(v19, v71);
    v26 = v72;
    v27 = v74;
    (*(v72 + 16))(v13, v73, v74);
    v28 = (*(v26 + 80) + 24) & ~*(v26 + 80);
    v29 = (v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 16) = v76;
    (*(v26 + 32))(v31 + v28, v13, v27);
    v32 = (v31 + v29);
    v33 = v68;
    *v32 = v77;
    v32[1] = v33;
    v34 = v75;
    *(v31 + v30) = v75;
    v35 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
    v36 = v70;
    *v35 = v69;
    v35[1] = v36;

    v37 = v34;

    sub_39D348(sub_398F7C, v31);
  }

  v65 = v16;
  v66 = v11;
  v67 = v9;
  sub_3E99E4();

  v38 = sub_3E99F4();
  v39 = sub_3ED9F4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v78[0] = v41;
    *v40 = 141558275;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    *(v40 + 14) = sub_2EDD0(v77, a4, v78);
    _os_log_impl(&dword_0, v38, v39, "%{private,mask.hash}s: Initializing an OAuth session in PurchaseController", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  (*(v17 + 8))(v22, v71);
  v42 = v76;
  v43 = v72;
  v44 = *(v72 + 16);
  v45 = v65;
  v46 = v74;
  v44(v65, v73, v74);
  sub_1F958(v42 + 32, v78);
  v47 = *(v42 + 16);
  sub_801B4();
  v48 = sub_3EDBC4();
  type metadata accessor for OAuthSession();
  v49 = swift_allocObject();
  *(v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oauthSession) = 0;
  *(v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession) = 0;
  v44((v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_authorizationURL), v45, v46);
  v50 = (v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId);
  *v50 = v77;
  v50[1] = a4;
  sub_1F958(v78, v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler);
  v51 = v75;
  *(v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_window) = v75;
  *(v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue) = v47;
  *(v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue) = v48;

  v52 = v51;
  v53 = v47;
  v54 = v48;
  v55 = sub_3E5D64();
  if (v56)
  {
    v57 = v55;
  }

  else
  {
    v57 = 0;
  }

  v58 = 0xE000000000000000;
  if (v56)
  {
    v58 = v56;
  }

  v59 = (v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId);
  *v59 = v57;
  v59[1] = v58;
  v60 = v66;
  sub_3E5FB4();

  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  (*(v43 + 8))(v45, v46);
  (*(v68 + 32))(v49 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_state, v60, v67);
  *(v42 + 24) = v49;

  if (*(v42 + 24))
  {
    v62 = swift_allocObject();
    v63 = v69;
    v64 = v70;
    v62[2] = v42;
    v62[3] = v63;
    v62[4] = v64;

    sub_39B740(sub_398F70, v62);
  }

  return result;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3974F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_39753C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v40 = sub_3EBBC4();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_3EBC14();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E5DC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a1 + 16);
  (*(v13 + 16))(v16, a2, v12, v15);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  (*(v13 + 32))(v20 + v17, v16, v12);
  v21 = (v20 + v18);
  v22 = v33;
  *v21 = v32;
  v21[1] = v22;
  v24 = v34;
  v23 = v35;
  *(v20 + v19) = v34;
  v25 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v36;
  *v25 = v23;
  v25[1] = v26;
  aBlock[4] = sub_39909C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_20;
  v27 = _Block_copy(aBlock);

  v28 = v24;

  sub_3EBBE4();
  v43 = _swiftEmptyArrayStorage;
  sub_3974F4(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_318924(&qword_506A30, &unk_503DE0);
  v29 = v38;
  v30 = v40;
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v27);
  (*(v42 + 8))(v29, v30);
  (*(v39 + 8))(v11, v41);
}

uint64_t sub_397930(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v53 = a6;
  v54 = a7;
  v58 = a5;
  v55 = a2;
  v56 = a3;
  v9 = sub_3E5FC4();
  v62 = *(v9 - 8);
  v63 = v9;
  __chkstk_darwin(v9);
  v61 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3E5DC4();
  v59 = *(v11 - 8);
  v60 = v11;
  __chkstk_darwin(v11);
  v57 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3E9A04();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v52 - v18;
  *(a1 + 24) = 0;

  sub_3E99E4();
  v20 = sub_3E99F4();
  v21 = sub_3ED9F4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Canceled existing OAuth session before starting a new one.", v22, 2u);
  }

  v64 = a4;

  v23 = *(v14 + 8);
  v23(v19, v13);
  sub_3E99E4();

  v24 = sub_3E99F4();
  v25 = sub_3ED9F4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v65[0] = v27;
    *v26 = 141558275;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    v28 = v56;
    *(v26 + 14) = sub_2EDD0(v56, v64, v65);
    _os_log_impl(&dword_0, v24, v25, "%{private,mask.hash}s: Initializing an OAuth session in PurchaseController", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);

    v23(v16, v13);
  }

  else
  {

    v23(v16, v13);
    v28 = v56;
  }

  v30 = v59;
  v29 = v60;
  v31 = *(v59 + 16);
  v32 = v57;
  v31(v57, v55, v60);
  sub_1F958(a1 + 32, v65);
  v33 = *(a1 + 16);
  sub_801B4();
  v34 = sub_3EDBC4();
  type metadata accessor for OAuthSession();
  v35 = swift_allocObject();
  *(v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oauthSession) = 0;
  *(v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession) = 0;
  v31((v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_authorizationURL), v32, v29);
  v36 = (v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId);
  v37 = v64;
  *v36 = v28;
  v36[1] = v37;
  sub_1F958(v65, v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler);
  v38 = v58;
  *(v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_window) = v58;
  *(v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue) = v33;
  *(v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue) = v34;

  v39 = v38;
  v40 = v33;
  v41 = v34;
  v42 = sub_3E5D64();
  if (v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  v45 = 0xE000000000000000;
  if (v43)
  {
    v45 = v43;
  }

  v46 = (v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId);
  *v46 = v44;
  v46[1] = v45;
  v47 = v61;
  sub_3E5FB4();

  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  (*(v30 + 8))(v32, v29);
  (*(v62 + 32))(v35 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_state, v47, v63);
  *(a1 + 24) = v35;

  if (*(a1 + 24))
  {
    v49 = swift_allocObject();
    v50 = v53;
    v51 = v54;
    v49[2] = a1;
    v49[3] = v50;
    v49[4] = v51;

    sub_39B740(sub_3992A0, v49);
  }

  return result;
}

uint64_t OAuthController.resumeThirdPartySubscription(redirectURL:)(uint64_t a1)
{
  v3 = sub_3EBBC4();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EBC14();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E5DC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v17[1] = *(v1 + 16);
  (*(v10 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v10 + 32))(v14 + v13, v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_398EB8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_6_1;
  v15 = _Block_copy(aBlock);

  sub_3EBBE4();
  v21 = _swiftEmptyArrayStorage;
  sub_3974F4(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_318924(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
}

uint64_t sub_39824C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E9A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {

    sub_39B1A4(a2);
  }

  else
  {
    sub_3E99E4();
    v9 = sub_3E99F4();
    v10 = sub_3ED9D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Resume OAuthSession called but there is no OAuthSession to resume.", v11, 2u);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_3983D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_3EBBC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_3EBC14();
  v14 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(a3 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a2;
  aBlock[4] = sub_399200;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_30;
  v18 = _Block_copy(aBlock);

  swift_errorRetain();
  sub_3EBBE4();
  v22 = _swiftEmptyArrayStorage;
  sub_3974F4(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_318924(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_3986B4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504678);
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_3E9A04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  sub_3E99E4();
  v17 = sub_3E99F4();
  v18 = sub_3ED9F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = v36 & 1;
    _os_log_impl(&dword_0, v17, v18, "OAuthSession Authentication completed with subscribed: %{BOOL}d", v19, 8u);
  }

  v20 = *(v11 + 8);
  v20(v16, v10);
  if (a5)
  {
    swift_errorRetain();
    sub_3E99E4();
    swift_errorRetain();
    v21 = sub_3E99F4();
    v22 = sub_3ED9D4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = a4;
      v25 = swift_slowAlloc();
      *v23 = 138412290;
      v26 = sub_3E5B74();
      *(v23 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&dword_0, v21, v22, "OAuthSession Authentication failed with error: %@", v23, 0xCu);
      sub_D1C44(v25);
      a4 = v24;
    }

    v20(v13, v10);
    swift_errorRetain();
    sub_398A7C(0, a5, v37, v38, a4);
  }

  else
  {
    if (v36)
    {
      sub_3E9154();
      v28 = sub_3E9144();
      v29 = sub_3E9134();

      v31 = v34;
      v30 = v35;
      (*(v34 + 104))(v9, enum case for PurchaseController.RefreshCondition.always<A>(_:), v35);
      sub_3E8844();

      (*(v31 + 8))(v9, v30);
      v32 = 1;
    }

    else
    {
      v32 = 0;
    }

    return sub_398A7C(v32, 0, v37, v38, a4);
  }
}

uint64_t sub_398A7C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_3EBBC4();
  v21 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_3EBC14();
  v13 = *(v20 - 8);
  __chkstk_darwin(v20);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 24) = 0;

  sub_801B4();
  v16 = sub_3EDBC4();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  aBlock[4] = sub_399250;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_36;
  v18 = _Block_copy(aBlock);

  swift_errorRetain();

  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_3974F4(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_318924(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v18);

  (*(v21 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v20);
}

uint64_t OAuthController.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  return v0;
}

uint64_t OAuthController.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_398DF4()
{
  v1 = sub_3E5DC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_398EB8()
{
  v1 = *(sub_3E5DC4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_39824C(v2, v3);
}

uint64_t objectdestroyTm_13()
{
  v1 = sub_3E5DC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_3990B4(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_3E5DC4() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = (v1 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v5);
  v11 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return a1(v6, v1 + v3, v8, v9, v10, v12, v13);
}

uint64_t objectdestroy_10Tm()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3991B8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_399210()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t OAuthHUDViewHandler.spinnerIsActive.getter()
{
  v1 = v0;
  v2 = sub_3EBC24();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_801B4();
  *v5 = sub_3EDBC4();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = sub_3EBC34();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    sub_FBD0(v1 + 24, v11, &qword_504680);
    if (v11[0])
    {
      v8 = 0;
    }

    else
    {
      v8 = v11[1] == 1;
    }

    v9 = !v8;
    sub_FCF8(v11, &qword_504680);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double OAuthHUDViewHandler.__allocating_init(asPartOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = xmmword_40BCD0;
  *(v2 + 16) = a1;
  return result;
}

uint64_t OAuthHUDViewHandler.init(asPartOf:)(uint64_t a1)
{
  *(v1 + 24) = xmmword_40BCD0;
  *(v1 + 16) = a1;
  return v1;
}

Swift::Void __swiftcall OAuthHUDViewHandler.start()()
{
  v1 = v0;
  v2 = sub_3E5FC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EC1F4();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_3EBC24();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_801B4();
  *v15 = sub_3EDBC4();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_3EBC34();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v29 = v3;
  v30 = v2;
  if (qword_4E8900 != -1)
  {
LABEL_5:
    swift_once();
  }

  v18 = qword_4ECD18;
  v17 = unk_4ECD20;
  v19 = byte_4ECD28;
  v20 = qword_4ECD30;
  v21 = byte_4ECD38;
  type metadata accessor for LoadingAction();
  v22 = swift_allocObject();
  v23 = v22 + OBJC_IVAR____TtC8ShelfKit13LoadingAction_config;
  *v23 = v18;
  *(v23 + 8) = v17;
  *(v23 + 16) = v19;
  *(v23 + 24) = v20;
  *(v23 + 32) = v21;
  v24 = (v22 + OBJC_IVAR____TtC8ShelfKit13LoadingAction_updateHandler);
  *v24 = sub_399908;
  v24[1] = v1;
  v25 = sub_3EC634();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);

  swift_retain_n();
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v26 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v28 = v27;

  (*(v29 + 8))(v5, v30);
  *(v22 + 16) = v26;
  *(v22 + 24) = v28;
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  *(v22 + 48) = 32;
  (*(v31 + 32))(v22 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v8, v32);
  sub_14A10(v11, v22 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_39A600(v22, v1, type metadata accessor for LoadingAction, &qword_504738, type metadata accessor for LoadingAction);
}

uint64_t sub_3998B0(uint64_t a1, uint64_t a2)
{
  sub_39AD5C(a1, v4);
  swift_beginAccess();
  sub_39A590(v4, a2 + 24);
  return swift_endAccess();
}

Swift::Void __swiftcall OAuthHUDViewHandler.dismiss(success:)(Swift::Bool success)
{
  v2 = v1;
  v4 = sub_3E9A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_3EBC24();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_801B4();
  *v14 = sub_3EDBC4();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_3EBC34();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  swift_beginAccess();
  sub_FBD0(v2 + 24, &v32, &qword_504680);
  if (v32 || v33 != 1)
  {
    sub_39A4E0(&v32, v38);
    sub_3E99E4();
    v19 = sub_3E99F4();
    v20 = sub_3ED9F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = success;
      _os_log_impl(&dword_0, v19, v20, "Dismissing spinner with OAuth success: %{BOOL}d", v21, 8u);
    }

    (*(v5 + 8))(v10, v4);
    if (!success)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = v39;
        ObjectType = swift_getObjectType();
        (*(v29 + 8))(ObjectType, v29);
        goto LABEL_15;
      }

LABEL_16:
      sub_39A53C(v38);
      v37 = xmmword_40BCD0;
      swift_beginAccess();
      sub_39A590(&v37, v2 + 24);
      swift_endAccess();
      return;
    }

    if (qword_4E8908 == -1)
    {
LABEL_11:
      v22 = qword_4ECD40;
      v23 = *algn_4ECD48;
      v24 = byte_4ECD50;
      v25 = qword_4ECD58;
      v26 = byte_4ECD60;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = v39;
        v28 = swift_getObjectType();
        v32 = v22;
        v33 = v23;
        v34 = v24;
        v35 = v25;
        v36 = v26;
        (*(v27 + 16))(&v32, v28, v27);
LABEL_15:
        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      goto LABEL_16;
    }

LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  sub_FCF8(&v32, &qword_504680);
  sub_3E99E4();
  v16 = sub_3E99F4();
  v17 = sub_3ED9D4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "Dismiss called on HUDViewHandler but there is no view token.", v18, 2u);
  }

  (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall OAuthHUDViewHandler.displayAlert(title:description:)(Swift::String title, Swift::String_optional description)
{
  countAndFlagsBits = title._countAndFlagsBits;
  object = description.value._object;
  v36 = description.value._countAndFlagsBits;
  v2 = title._object;
  v3 = sub_3E5FC4();
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_3EC1F4();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v6 - 8);
  v37 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_3E9A04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3EBC24();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_801B4();
  *v18 = sub_3EDBC4();
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v19 = sub_3EBC34();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v35 = v3;
    sub_3E99E4();

    v20 = sub_3E99F4();
    v21 = sub_3ED9F4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2EDD0(countAndFlagsBits, v2, &v46);
      _os_log_impl(&dword_0, v20, v21, "Displaying OAuth alert with title: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
    }

    (*(v12 + 8))(v14, v11);
    v24 = sub_3E7784();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    type metadata accessor for AlertAction();
    v25 = swift_allocObject();
    v26 = (v25 + OBJC_IVAR____TtC8ShelfKit11AlertAction_message);
    v27 = object;
    *v26 = v36;
    v26[1] = v27;
    *(v25 + OBJC_IVAR____TtC8ShelfKit11AlertAction_isCancelable) = 1;
    *(v25 + OBJC_IVAR____TtC8ShelfKit11AlertAction_buttonActions) = 0;
    *(v25 + OBJC_IVAR____TtC8ShelfKit11AlertAction_style) = 0;
    sub_FBD0(v10, v25 + OBJC_IVAR____TtC8ShelfKit11AlertAction_artwork, &qword_4F1D50);
    v28 = sub_3EC634();
    v29 = v37;
    (*(*(v28 - 8) + 56))(v37, 1, 1, v28);

    v30 = v38;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v31 = v39;
    sub_3E5FB4();
    v32 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v34 = v33;
    (*(v42 + 8))(v31, v35);
    sub_FCF8(v10, &qword_4F1D50);
    *(v25 + 16) = v32;
    *(v25 + 24) = v34;
    *(v25 + 32) = countAndFlagsBits;
    *(v25 + 40) = v2;
    *(v25 + 48) = 32;
    (*(v41 + 32))(v25 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v30, v43);
    sub_14A10(v29, v25 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

    sub_39A600(v25, v44, type metadata accessor for AlertAction, &qword_504730, type metadata accessor for AlertAction);
  }

  else
  {
    __break(1u);
  }
}

uint64_t OAuthHUDViewHandler.deinit()
{

  sub_FCF8(v0 + 24, &qword_504680);
  return v0;
}

uint64_t OAuthHUDViewHandler.__deallocating_deinit()
{

  sub_FCF8(v0 + 24, &qword_504680);

  return swift_deallocClassInstance();
}

uint64_t sub_39A590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_39A600(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void, double), unint64_t *a4, void (*a5)(uint64_t))
{
  v54 = *a2;
  v10 = sub_3ECE84();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin(v10);
  v51 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E6654();
  v56 = *(v12 - 8);
  v57 = v12;
  __chkstk_darwin(v12);
  v55 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v51 - v15;
  v17 = sub_3E9A04();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v51 - v23;
  v59[3] = a3(0, v22);
  v59[4] = sub_39AD08(a4, a5);
  v59[0] = a1;
  v25 = objc_opt_self();

  v26 = [v25 sharedApplication];
  v27 = [v26 delegate];

  if (!v27)
  {
    goto LABEL_8;
  }

  if (([v27 respondsToSelector:"window"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v28 = [v27 window];
  swift_unknownObjectRelease();
  if (!v28)
  {
LABEL_8:
    sub_3E99E4();
    v40 = sub_3E99F4();
    v41 = sub_3ED9D4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "Unable to present OAuth HUD because we could not get the current window.", v42, 2u);
    }

    v43 = *(v18 + 8);
    v44 = v24;
    goto LABEL_11;
  }

  v29 = [v28 rootViewController];
  if (!v29)
  {
    sub_3E99E4();
    v46 = sub_3E99F4();
    v47 = sub_3ED9D4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "Unable to present OAuth HUD because we could not get the root view controller.", v48, 2u);
    }

    v43 = *(v18 + 8);
    v44 = v20;
LABEL_11:
    v43(v44, v17);
    return __swift_destroy_boxed_opaque_existential_1Tm(v59);
  }

  v30 = v29;
  v31 = UIResponder.nearestActionRunner.getter();
  v33 = v32;

  if (v31)
  {
    type metadata accessor for ActionRunnerOptions();

    sub_3EC464();
    v34 = sub_3E6434();
    (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
    v58[3] = v54;
    v58[0] = a2;

    v35 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v16, v58, 0);

    sub_FCF8(v16, &qword_5005B0);
    sub_FCF8(v58, &unk_501090);
    ObjectType = swift_getObjectType();
    v38 = v55;
    v37 = v56;
    v39 = v57;
    (*(v56 + 104))(v55, enum case for ActionMetricsBehavior.fromAction(_:), v57);
    ActionRunner.perform(_:withMetrics:asPartOf:)(v59, v38, v35, ObjectType, v33);

    swift_unknownObjectRelease();

    (*(v37 + 8))(v38, v39);
  }

  else
  {
    v49 = v51;
    sub_3ECE34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
    sub_3EBE94();
    *(swift_allocObject() + 16) = xmmword_3F5630;
    sub_3EBE14();
    v50 = v53;
    sub_3ECB94();

    (*(v52 + 8))(v49, v50);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v59);
}

uint64_t sub_39AD08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OAuthSession.__allocating_init(authorizationURL:oAuthAdamId:hudViewHandler:endpointSubscriber:window:workQueue:uiQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oauthSession) = 0;
  *(v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession) = 0;
  v15 = OBJC_IVAR____TtC8ShelfKit12OAuthSession_authorizationURL;
  v16 = sub_3E5DC4();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v14 + v15, a1, v16);
  v18 = (v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId);
  *v18 = a2;
  v18[1] = a3;
  sub_1F958(a4, v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler);
  *(v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_window) = a6;
  *(v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue) = a7;
  *(v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue) = a8;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = sub_3E5D64();
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (v23)
  {
    v25 = v23;
  }

  v26 = (v14 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId);
  *v26 = v24;
  v26[1] = v25;
  sub_3E5FB4();

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  (*(v17 + 8))(a1, v16);
  return v14;
}

uint64_t OAuthSession.init(authorizationURL:oAuthAdamId:hudViewHandler:endpointSubscriber:window:workQueue:uiQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v35 = a3;
  v36 = a8;
  v33 = a2;
  v34 = a4;
  v37 = sub_3E5FC4();
  v14 = *(v37 - 8);
  __chkstk_darwin(v37);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oauthSession) = 0;
  *(v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession) = 0;
  v17 = OBJC_IVAR____TtC8ShelfKit12OAuthSession_authorizationURL;
  v18 = sub_3E5DC4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v9 + v17, a1, v18);
  v20 = (v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId);
  v21 = v35;
  *v20 = v33;
  v20[1] = v21;
  sub_1F958(a4, v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler);
  *(v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_window) = a6;
  *(v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue) = a7;
  v22 = v36;
  *(v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue) = v36;
  v23 = a6;
  v24 = a7;
  v25 = v22;
  v26 = sub_3E5D64();
  if (v27)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v27)
  {
    v29 = v27;
  }

  v30 = (v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId);
  *v30 = v28;
  v30[1] = v29;
  sub_3E5FB4();

  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  (*(v19 + 8))(a1, v18);
  (*(v14 + 32))(v9 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_state, v16, v37);
  return v9;
}

uint64_t sub_39B1A4(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_3E9A04();
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EBBC4();
  v30 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EBC14();
  v28 = *(v9 - 8);
  v29 = v9;
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E5DC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  if (*(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession))
  {
    v26 = *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue);
    (*(v13 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v12, v15);
    v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    (*(v13 + 32))(v17 + v16, &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    aBlock[4] = sub_3A19F4;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1279E4;
    aBlock[3] = &block_descriptor_31;
    v18 = _Block_copy(aBlock);

    sub_3EBBE4();
    v31 = _swiftEmptyArrayStorage;
    sub_3A20D0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
    sub_886BC(&qword_506A30, &unk_503DE0);
    sub_3EE244();
    sub_3EDBE4();
    _Block_release(v18);
    (*(v30 + 8))(v8, v6);
    (*(v28 + 8))(v11, v29);
  }

  else
  {
    v20 = v26;
    v21 = v3;
    sub_3E99E4();

    v22 = sub_3E99F4();
    v23 = sub_3ED9F4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      *(v24 + 14) = sub_2EDD0(*(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), aBlock);
      _os_log_impl(&dword_0, v22, v23, "%{private,mask.hash}s: Resume OAuth called but there is no web authentication session to resume in OAuthSession", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }

    return (*(v20 + 8))(v5, v21);
  }
}

void sub_39B6D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession);
  if (v2)
  {
    v4 = v2;
    sub_3E4464(a2);
  }
}

uint64_t sub_39B740(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504790);
  v60 = *(v6 - 8);
  v61 = v6;
  __chkstk_darwin(v6);
  v59 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504798);
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v62 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5047A0);
  v66 = *(v10 - 8);
  v67 = v10;
  __chkstk_darwin(v10);
  v65 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5047A8);
  v69 = *(v12 - 8);
  v70 = v12;
  __chkstk_darwin(v12);
  v68 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5047B0);
  v72 = *(v14 - 8);
  v73 = v14;
  __chkstk_darwin(v14);
  v71 = &v57 - v15;
  v16 = sub_3E9A04();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_3EBC24();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = (&v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue);
  *v24 = v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20, v22);
  v26 = v25;
  LOBYTE(v25) = sub_3EBC34();
  result = (*(v21 + 8))(v24, v20);
  if (v25)
  {
    v57 = a1;
    v58 = a2;
    sub_3E99E4();

    v28 = sub_3E99F4();
    v29 = sub_3ED9F4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v30 = 141558787;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      *(v30 + 14) = sub_2EDD0(*(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v74);
      *(v30 + 22) = 2160;
      *(v30 + 24) = 1752392040;
      *(v30 + 32) = 2081;
      *(v30 + 34) = sub_2EDD0(*(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId), *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId + 8), &v74);
      _os_log_impl(&dword_0, v28, v29, "%{private,mask.hash}s: Starting OAuth flow for oauth adamId: %{private,mask.hash}s", v30, 0x2Au);
      swift_arrayDestroy();
    }

    (*(v17 + 8))(v19, v16);
    v31 = v59;
    sub_39DAB8(v59);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_3A1A70;
    *(v32 + 24) = v3;
    sub_886BC(&qword_5047B8, &qword_504790);

    v33 = v61;
    v34 = v62;
    sub_3EA0C4();

    (*(v60 + 8))(v31, v33);
    v35 = swift_allocObject();
    *(v35 + 16) = sub_3A1AF4;
    *(v35 + 24) = v3;

    sub_3E9C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F66B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5047C0);
    v61 = &protocol conformance descriptor for Publishers.TryMap<A, B>;
    sub_886BC(&qword_5047C8, &qword_504798);
    sub_886BC(&qword_5047D0, &qword_5047C0);
    v36 = v64;
    v37 = v65;
    sub_3EA0F4();

    (*(v63 + 8))(v34, v36);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_3A1AF8;
    *(v38 + 24) = v3;
    sub_3E5DC4();
    sub_886BC(&qword_5047D8, &qword_5047A0);

    v39 = v67;
    v40 = v68;
    sub_3EA0C4();

    (*(v66 + 8))(v37, v39);
    v42 = *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId);
    v41 = *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8);
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = v41;

    sub_3E9C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5047E0);
    sub_886BC(&qword_5047E8, &qword_5047A8);
    sub_886BC(&qword_5047F0, &qword_5047E0);
    v44 = v70;
    v45 = v71;
    sub_3EA0F4();

    (*(v69 + 8))(v40, v44);
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue);
    v48 = swift_allocObject();
    v50 = v57;
    v49 = v58;
    v48[2] = v57;
    v48[3] = v49;
    v48[4] = v47;
    v48[5] = v46;
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    v52[2] = v47;
    v52[3] = v51;
    v52[4] = v50;
    v52[5] = v49;
    sub_886BC(&qword_5047F8, &qword_5047B0);
    v53 = v47;
    swift_retain_n();
    v54 = v53;
    v55 = v73;
    v56 = sub_3EA044();

    (*(v72 + 8))(v45, v55);
    *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oauthSession) = v56;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_39C1F0(uint64_t *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v44 = a2;
  v8 = sub_3EBBC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBC14();
  v42 = *(v12 - 8);
  v43 = v12;
  __chkstk_darwin(v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3E9A04();
  v40 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504978);
  __chkstk_darwin(v18 - 8);
  v20 = v37 - v19;
  v21 = *a1;
  if (v21)
  {
    v37[1] = a4;
    v38 = v9;
    v39 = v8;
    aBlock[0] = v21;
    swift_errorRetain();
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v22 = sub_3E8604();
    v23 = swift_dynamicCast();
    v24 = *(*(v22 - 8) + 56);
    if (!v23)
    {
      v24(v20, 1, 1, v22);
      sub_FCF8(v20, &qword_504978);
LABEL_9:
      v32 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v33 = swift_allocObject();
      v34 = v44;
      v33[2] = v32;
      v33[3] = v34;
      v33[4] = a3;
      v33[5] = v21;
      aBlock[4] = sub_3A20C4;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1279E4;
      aBlock[3] = &block_descriptor_71;
      v35 = _Block_copy(aBlock);
      swift_errorRetain();

      sub_3EBBE4();
      v45 = _swiftEmptyArrayStorage;
      sub_3A20D0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
      sub_886BC(&qword_506A30, &unk_503DE0);
      v36 = v39;
      sub_3EE244();
      sub_3EDBE4();
      _Block_release(v35);

      (*(v38 + 8))(v11, v36);
      (*(v42 + 8))(v14, v43);

      return;
    }

    v25 = *(v22 - 8);
    v24(v20, 0, 1, v22);
    v26 = (*(v25 + 88))(v20, v22);
    v37[0] = a3;
    v27 = enum case for OAuthSessionError.userCancelledLogin(_:);
    (*(v25 + 8))(v20, v22);
    v28 = v26 == v27;
    a3 = v37[0];
    if (!v28)
    {
      goto LABEL_9;
    }

    sub_3E99E4();
    v29 = sub_3E99F4();
    v30 = sub_3ED9F4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "User cancelled OAuth login.", v31, 2u);
    }

    (*(v40 + 8))(v17, v15);
    v44(0, 0);
  }
}

uint64_t sub_39C7F8(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = sub_3E9A04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = a4;
    v33 = a2;
    v17 = (Strong + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler);
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler), *(Strong + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler + 24));
    if (sub_3E9294())
    {
      sub_3E99E4();
      v18 = sub_3E99F4();
      v19 = sub_3ED9F4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_0, v18, v19, "Dismissing the spinner and displaying an error alert.", v20, 2u);
      }

      (*(v7 + 8))(v12, v6);
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      sub_3E92B4();
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      v21 = [objc_opt_self() mainBundle];
      v30._countAndFlagsBits = 0xE000000000000000;
      v34._object = 0x800000000042FBC0;
      v34._countAndFlagsBits = 0xD000000000000013;
      v35.value._countAndFlagsBits = 0;
      v35.value._object = 0;
      v22.super.isa = v21;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      sub_3E5A74(v34, v35, v22, v36, v30);

      sub_3E9284();
    }

    else
    {
      sub_3E99E4();
      v27 = sub_3E99F4();
      v28 = sub_3ED9F4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Spinner is not active.", v29, 2u);
      }

      (*(v7 + 8))(v9, v6);
    }

    v33(0, v32);
  }

  else
  {
    sub_3E99E4();
    v23 = sub_3E99F4();
    v24 = sub_3ED9D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Unable to unwrap self in OAuth promise completion!.", v25, 2u);
    }

    (*(v7 + 8))(v15, v6);
    return (a2)(0, 0);
  }
}

uint64_t sub_39CC0C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a3;
  v31 = a2;
  v7 = sub_3EBBC4();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBC14();
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3E9A04();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_3E99E4();
  v18 = sub_3E99F4();
  v19 = sub_3ED9F4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v25 = v12;
    *v20 = 67109120;
    *(v20 + 4) = v17;
    _os_log_impl(&dword_0, v18, v19, "User is subscribed to content: %{BOOL}d", v20, 8u);
    v12 = v25;
  }

  (*(v14 + 8))(v16, v13);
  v21 = swift_allocObject();
  v22 = v26;
  *(v21 + 16) = v27;
  *(v21 + 24) = v22;
  *(v21 + 32) = a5;
  *(v21 + 40) = v17;
  aBlock[4] = sub_3A206C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_64;
  v23 = _Block_copy(aBlock);

  sub_3EBBE4();
  v32 = _swiftEmptyArrayStorage;
  sub_3A20D0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_886BC(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v23);
  (*(v30 + 8))(v9, v7);
  (*(v28 + 8))(v12, v29);
}

uint64_t sub_39D028(uint64_t a1, void (*a2)(void, void), uint64_t a3, char a4)
{
  v7 = sub_3E9A04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = (Strong + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler);
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler), *(Strong + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler + 24));
    sub_3E92B4();
    if ((a4 & 1) == 0)
    {
      v17 = v12[3];
      v26[1] = v12[4];
      v26[0] = __swift_project_boxed_opaque_existential_1(v12, v17);
      v18 = objc_opt_self();
      v19 = [v18 mainBundle];
      v26[2] = a3;
      v20 = v19;
      v24._countAndFlagsBits = 0xE000000000000000;
      v27._object = 0x800000000042FB70;
      v27._countAndFlagsBits = 0xD00000000000001FLL;
      v29.value._countAndFlagsBits = 0;
      v29.value._object = 0;
      v21.super.isa = v20;
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      sub_3E5A74(v27, v29, v21, v31, v24);

      v22 = [v18 mainBundle];
      v25._countAndFlagsBits = 0xE000000000000000;
      v28._countAndFlagsBits = 0xD000000000000025;
      v28._object = 0x800000000042FB90;
      v30.value._countAndFlagsBits = 0;
      v30.value._object = 0;
      v23.super.isa = v22;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      sub_3E5A74(v28, v30, v23, v32, v25);

      sub_3E9284();
    }

    a2(a4 & 1, 0);
  }

  else
  {
    sub_3E99E4();
    v13 = sub_3E99F4();
    v14 = sub_3ED9D4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Unable to unwrap self in OAuth promise completion.", v15, 2u);
    }

    (*(v8 + 8))(v10, v7);
    return (a2)(a4 & 1, 0);
  }
}

uint64_t sub_39D348(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_3EBBC4();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3EBC14();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_3A1CA4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_29_0;
  v14 = _Block_copy(aBlock);

  sub_3EBBE4();
  v19 = _swiftEmptyArrayStorage;
  sub_3A20D0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_886BC(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_39D668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3EBBC4();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_3EBC14();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3E9A04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession;
    v18 = *(Strong + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession);
    if (v18)
    {
      v19 = v18;
      sub_3E47AC();

      v18 = *(v16 + v17);
    }

    *(v16 + v17) = 0;

    v26[1] = *(v16 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue);
    v20 = swift_allocObject();
    v20[2] = v16;
    v20[3] = a2;
    v20[4] = a3;
    aBlock[4] = sub_3A1FB4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1279E4;
    aBlock[3] = &block_descriptor_58;
    v21 = _Block_copy(aBlock);

    sub_3EBBE4();
    v29 = _swiftEmptyArrayStorage;
    sub_3A20D0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
    sub_886BC(&qword_506A30, &unk_503DE0);
    sub_3EE244();
    sub_3EDBE4();
    _Block_release(v21);
    (*(v28 + 8))(v7, v5);
    (*(v8 + 8))(v10, v27);
  }

  else
  {
    sub_3E99E4();
    v23 = sub_3E99F4();
    v24 = sub_3ED9D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Unable to unwrap self in cancelSession completion in OAuthSession.", v25, 2u);
    }

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_39DAB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v3 - 8);
  v89 = &v70 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504980);
  v77 = *(v78 - 1);
  __chkstk_darwin(v78);
  v76 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504988);
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v79 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504990);
  v84 = *(v8 - 8);
  v85 = v8;
  __chkstk_darwin(v8);
  v82 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504998);
  v87 = *(v10 - 8);
  v88 = v10;
  __chkstk_darwin(v10);
  v86 = &v70 - v11;
  v12 = sub_3E5DC4();
  v13 = *(v12 - 8);
  v91 = v12;
  v92 = v13;
  __chkstk_darwin(v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v70 - v17;
  v19 = sub_3E9A04();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v73 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v70 - v23;
  sub_3E99E4();

  v25 = sub_3E99F4();
  v26 = sub_3ED9F4();

  v27 = os_log_type_enabled(v25, v26);
  v75 = v20;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v83 = v15;
    v29 = v28;
    v30 = swift_slowAlloc();
    v93 = v30;
    *v29 = 141558275;
    *(v29 + 4) = 1752392040;
    *(v29 + 12) = 2081;
    *(v29 + 14) = sub_2EDD0(*(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v93);
    _os_log_impl(&dword_0, v25, v26, "%{private,mask.hash}s: Retrieving short lived token from provider.", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);

    v15 = v83;
  }

  else
  {
  }

  v72 = v20[1];
  v72(v24, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA898);
  sub_3E5994();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  sub_3E5964();

  sub_3E5DA4();

  v31 = v92;
  v32 = *(v92 + 16);
  v83 = v18;
  v33 = v18;
  v34 = v91;
  v32(v15, v33, v91);
  v35 = *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_window);
  v36 = type metadata accessor for WebAuthenticationSession();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession] = 0;
  v38 = &v37[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &v37[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_callbackURLScheme];
  *v39 = 0x7374736163646F70;
  *(v39 + 1) = 0xE800000000000000;
  v32(&v37[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL], v15, v34);
  *&v37[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_window] = v35;
  v97.receiver = v37;
  v97.super_class = v36;
  v40 = v35;
  v41 = objc_msgSendSuper2(&v97, "init");
  v42 = *(v31 + 8);
  v92 = v31 + 8;
  v74 = v42;
  v42(v15, v34);
  v43 = *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession);
  *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_webAuthenticationSession) = v41;
  v44 = v41;

  v45 = v73;
  sub_3E99E4();

  v46 = sub_3E99F4();
  v47 = sub_3ED9F4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v93 = v49;
    *v48 = 141558275;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    *(v48 + 14) = sub_2EDD0(*(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v93);
    _os_log_impl(&dword_0, v46, v47, "%{private,mask.hash}s: Created Web Authentication Session.", v48, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  v72(v45, v19);
  v93 = v44;
  v75 = v44;
  v50 = v76;
  sub_3E9DF4();
  v93 = *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_uiQueue);
  v51 = v93;
  v72 = sub_3EDB64();
  v52 = *(v72 - 1);
  v71 = *(v52 + 56);
  v73 = (v52 + 56);
  v53 = v89;
  v71(v89, 1, 1, v72);
  v54 = sub_801B4();
  v55 = sub_886BC(&qword_5049A0, &qword_504980);
  v56 = sub_3A20D0(&qword_4F1D30, sub_801B4);
  v57 = v51;
  v59 = v78;
  v58 = v79;
  v70 = v54;
  sub_3E9F54();
  sub_FCF8(v53, &qword_4F69E0);

  (*(v77 + 8))(v50, v59);
  sub_3E9C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5049A8);
  v93 = v59;
  v94 = v54;
  v95 = v55;
  v96 = v56;
  v78 = &opaque type descriptor for <<opaque return type of Publisher.receiveAndSubscribe<A>(on:options:)>>;
  swift_getOpaqueTypeConformance2();
  sub_886BC(&qword_5049B0, &qword_5049A8);
  v60 = v81;
  v61 = v82;
  sub_3EA1C4();
  (*(v80 + 8))(v58, v60);
  v93 = *(v2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue);
  v62 = v93;
  v71(v53, 1, 1, v72);
  v63 = sub_886BC(&qword_5049B8, &qword_504990);
  v64 = v62;
  v66 = v85;
  v65 = v86;
  v67 = v70;
  sub_3E9F54();
  sub_FCF8(v53, &qword_4F69E0);

  (*(v84 + 8))(v61, v66);
  swift_retain_n();
  v93 = v66;
  v94 = v67;
  v95 = v63;
  v96 = v56;
  swift_getOpaqueTypeConformance2();
  v68 = v88;
  sub_3E9FB4();

  (*(v87 + 8))(v65, v68);
  return v74(v83, v91);
}

uint64_t sub_39E6F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *(swift_allocObject() + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5049C0);
  swift_allocObject();
  v4 = v3;
  sub_3E9E34();
  sub_886BC(&qword_5049C8, &qword_5049C0);
  v5 = sub_3E9F94();

  *a2 = v5;
  return result;
}

uint64_t sub_39E7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3E9A04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();
  (*(v5 + 16))(v7, a1, v4);

  v12 = sub_3E99F4();
  v13 = sub_3ED9F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = v9;
    v25 = v16;
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    *(v15 + 14) = sub_2EDD0(*(a2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(a2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v25);
    *(v15 + 22) = 2080;
    v17 = sub_3E5CD4();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v20 = sub_2EDD0(v17, v19, &v25);

    *(v15 + 24) = v20;
    _os_log_impl(&dword_0, v12, v13, "%{private,mask.hash}s: Redirect URL acquired: %s", v15, 0x20u);
    swift_arrayDestroy();

    return (*(v23 + 8))(v11, v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }
}

void sub_39EAF8(void *a1, uint64_t a2)
{
  v4 = sub_3E9A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    sub_3E99E4();

    swift_errorRetain();
    v8 = sub_3E99F4();
    v9 = sub_3ED9D4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v10 = 141558531;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      *(v10 + 14) = sub_2EDD0(*(a2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(a2 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v15);
      *(v10 + 22) = 2112;
      v13 = sub_3E5B74();
      *(v10 + 24) = v13;
      *v11 = v13;
      _os_log_impl(&dword_0, v8, v9, "%{private,mask.hash}s: OAuth Authentication failed with error: %@", v10, 0x20u);
      sub_FCF8(v11, &unk_502160);

      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_39ED24(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_504970);
  __chkstk_darwin(v3 - 8);
  v111 = &v103 - v4;
  v109 = sub_3E9414();
  v112 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E5DC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3E9A04();
  v11 = *(v10 - 8);
  v114 = v10;
  v115 = v11;
  __chkstk_darwin(v10);
  v113 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v103 - v14;
  __chkstk_darwin(v15);
  v104 = &v103 - v16;
  __chkstk_darwin(v17);
  v105 = &v103 - v18;
  __chkstk_darwin(v19);
  v21 = &v103 - v20;
  sub_3E99E4();
  (*(v7 + 16))(v9, a1, v6);

  v22 = sub_3E99F4();
  v23 = sub_3ED9F4();

  v24 = os_log_type_enabled(v22, v23);
  v110 = v1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v107 = a1;
    v26 = v25;
    v103 = swift_slowAlloc();
    v116 = v103;
    *v26 = 141558531;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    *(v26 + 14) = sub_2EDD0(*(v1 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v1 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v116);
    *(v26 + 22) = 2080;
    v27 = sub_3E5CD4();
    v29 = v28;
    (*(v7 + 8))(v9, v6);
    v30 = sub_2EDD0(v27, v29, &v116);

    *(v26 + 24) = v30;
    _os_log_impl(&dword_0, v22, v23, "%{private,mask.hash}s: Validating redirectUrl parameters: %s.", v26, 0x20u);
    swift_arrayDestroy();

    a1 = v107;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v32 = v114;
  v31 = v115;
  v33 = *(v115 + 8);
  v33(v21, v114);
  v34 = sub_39FBC4();
  v35 = v112;
  v36 = v113;
  v37 = v111;
  if (!v34)
  {
    goto LABEL_14;
  }

  v38 = v34;

  sub_3E9404();
  v39 = v109;
  if ((*(v35 + 48))(v37, 1, v109) != 1)
  {

    v46 = v108;
    (*(v35 + 32))(v108, v37, v39);
    sub_3E8604();
    sub_3A20D0(&qword_502BF0, &type metadata accessor for OAuthSessionError);
    swift_allocError();
    sub_3E93F4();
    swift_willThrow();
    (*(v35 + 8))(v46, v39);
    return v31;
  }

  sub_FCF8(v37, &qword_504970);
  if (!*(v38 + 16))
  {
LABEL_13:

LABEL_14:
    sub_3E99E4();
    v47 = v110;

    v48 = sub_3E99F4();
    v49 = sub_3ED9D4();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v116 = v51;
      *v50 = 141558275;
      *(v50 + 4) = 1752392040;
      *(v50 + 12) = 2081;
      *(v50 + 14) = sub_2EDD0(*(v47 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v47 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v116);
      _os_log_impl(&dword_0, v48, v49, "%{private,mask.hash}s: State UUIDs do not match.", v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
    }

    v33(v36, v32);
    v52 = sub_3E8604();
    sub_3A20D0(&qword_502BF0, &type metadata accessor for OAuthSessionError);
    swift_allocError();
    v54 = v53;
    v55 = &enum case for OAuthSessionError.stateMismatch(_:);
    goto LABEL_17;
  }

  v40 = sub_552A8(0x6574617473, 0xE500000000000000);
  if ((v41 & 1) == 0)
  {

    goto LABEL_13;
  }

  v107 = a1;
  v42 = (*(v38 + 56) + 16 * v40);
  v44 = *v42;
  v43 = v42[1];

  if (v44 == _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0() && v43 == v45)
  {

    goto LABEL_20;
  }

  v57 = sub_3EE804();

  if ((v57 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_20:
  if (!*(v38 + 16) || (v58 = sub_552A8(1701080931, 0xE400000000000000), (v59 & 1) == 0))
  {

    v68 = v106;
    sub_3E99E4();
    v69 = v110;

    v70 = sub_3E99F4();
    v71 = sub_3ED9D4();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v116 = v73;
      *v72 = 141558275;
      *(v72 + 4) = 1752392040;
      *(v72 + 12) = 2081;
      *(v72 + 14) = sub_2EDD0(*(v69 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v69 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v116);
      _os_log_impl(&dword_0, v70, v71, "%{private,mask.hash}s: Missing short-lived token from response.", v72, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
    }

    v33(v68, v32);
    v52 = sub_3E8604();
    sub_3A20D0(&qword_502BF0, &type metadata accessor for OAuthSessionError);
    swift_allocError();
    v54 = v74;
    v55 = &enum case for OAuthSessionError.missingShortLivedToken(_:);
    goto LABEL_17;
  }

  v60 = (*(v38 + 56) + 16 * v58);
  v31 = *v60;
  v61 = v60[1];

  v62 = v105;
  sub_3E99E4();
  v63 = v110;

  v64 = sub_3E99F4();
  v65 = sub_3ED9F4();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *v66 = 141558531;
    *(v66 + 4) = 1752392040;
    *(v66 + 12) = 2081;
    *(v66 + 14) = sub_2EDD0(*(v63 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v63 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v116);
    *(v66 + 22) = 2080;
    *(v66 + 24) = sub_2EDD0(v31, v61, &v116);
    _os_log_impl(&dword_0, v64, v65, "%{private,mask.hash}s: short-lived token acquired: %s.", v66, 0x20u);
    swift_arrayDestroy();

    v67 = v105;
  }

  else
  {

    v67 = v62;
  }

  v33(v67, v32);
  result = sub_3E5CE4();
  v75 = result;
  v76 = *(result + 16);
  if (v76)
  {
    v77 = 0;
    v78 = result + 40;
    v111 = v76 - 1;
    v112 = result + 40;
    v113 = _swiftEmptyArrayStorage;
    do
    {
      v79 = (v78 + 16 * v77);
      v80 = v77;
      while (1)
      {
        if (v80 >= *(v75 + 16))
        {
          __break(1u);
          return result;
        }

        v81 = *(v79 - 1);
        v82 = *v79;
        if (v81 != 47 || v82 != 0xE100000000000000)
        {
          result = sub_3EE804();
          if ((result & 1) == 0 && (v81 != 0x687475616FLL || v82 != 0xE500000000000000))
          {
            result = sub_3EE804();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        ++v80;
        v79 += 2;
        if (v76 == v80)
        {
          goto LABEL_49;
        }
      }

      v84 = v113;
      result = swift_isUniquelyReferenced_nonNull_native();
      v116 = v84;
      if ((result & 1) == 0)
      {
        result = sub_41BA8(0, *(v113 + 2) + 1, 1);
        v113 = v116;
      }

      v86 = *(v113 + 2);
      v85 = *(v113 + 3);
      v87 = v86 + 1;
      if (v86 >= v85 >> 1)
      {
        v108 = *(v113 + 2);
        v109 = v86 + 1;
        result = sub_41BA8((v85 > 1), v86 + 1, 1);
        v86 = v108;
        v87 = v109;
        v113 = v116;
      }

      v77 = v80 + 1;
      v88 = v113;
      *(v113 + 2) = v87;
      v89 = &v88[2 * v86];
      v89[4] = v81;
      v89[5] = v82;
      v78 = v112;
    }

    while (v111 != v80);
  }

  else
  {
    v113 = _swiftEmptyArrayStorage;
  }

LABEL_49:

  if (!*(v113 + 2))
  {

    v93 = v114;
    goto LABEL_57;
  }

  v91 = *(v113 + 4);
  v90 = *(v113 + 5);

  v92 = v91 == *(v110 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId) && v90 == *(v110 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId + 8);
  v93 = v114;
  if (v92)
  {

    return v31;
  }

  v94 = sub_3EE804();

  if ((v94 & 1) == 0)
  {

LABEL_57:
    v95 = v104;
    sub_3E99E4();
    v96 = v110;

    v97 = sub_3E99F4();
    v98 = sub_3ED9D4();

    v99 = os_log_type_enabled(v97, v98);
    v31 = v115;
    if (v99)
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v116 = v101;
      *v100 = 141558275;
      *(v100 + 4) = 1752392040;
      *(v100 + 12) = 2081;
      *(v100 + 14) = sub_2EDD0(*(v96 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v96 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v116);
      _os_log_impl(&dword_0, v97, v98, "%{private,mask.hash}s: oAuthAdamId's do not match.", v100, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
    }

    v33(v95, v93);
    v52 = sub_3E8604();
    sub_3A20D0(&qword_502BF0, &type metadata accessor for OAuthSessionError);
    swift_allocError();
    v54 = v102;
    v55 = &enum case for OAuthSessionError.oAuthAdamIdMismatch(_:);
LABEL_17:
    (*(*(v52 - 8) + 104))(v54, *v55, v52);
    swift_willThrow();
  }

  return v31;
}

uint64_t sub_39FBC4()
{
  v0 = sub_3E5994();
  v51 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D70);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_3E59F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E59C4();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_FCF8(v5, &qword_503D70);
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  v10 = sub_3E59A4();
  if (!v10)
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  v41 = v9;
  v42 = v7;
  v43 = v6;
  v11 = v10;
  v50 = *(v10 + 16);
  if (!v50)
  {
    v13 = _swiftEmptyDictionarySingleton;
LABEL_29:

    (*(v42 + 8))(v41, v43);
    return v13;
  }

  v12 = 0;
  v49 = v10 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v48 = v51 + 16;
  v46 = (v51 + 8);
  v13 = _swiftEmptyDictionarySingleton;
  v47 = v2;
  v44 = v10;
  v45 = v0;
  while (v12 < *(v11 + 16))
  {
    (*(v51 + 16))(v2, v49 + *(v51 + 72) * v12, v0);
    v14 = sub_3E5974();
    v16 = v15;
    v17 = sub_3E5984();
    if (!v18)
    {
      v30 = sub_552A8(v14, v16);
      v32 = v31;

      if (v32)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v13;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_58CC4();
          v13 = v52;
        }

        sub_682B0(v30, v13);
      }

      v2 = v47;
      (*v46)(v47, v0);
      goto LABEL_8;
    }

    v19 = v18;
    v20 = v17;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v13;
    v23 = sub_552A8(v14, v16);
    v24 = v13[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_32;
    }

    v27 = v22;
    if (v13[3] >= v26)
    {
      if (v21)
      {
        v2 = v47;
        if ((v22 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_58CC4();
        v2 = v47;
        if ((v27 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_55E4C(v26, v21);
      v28 = sub_552A8(v14, v16);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_34;
      }

      v23 = v28;
      v2 = v47;
      if ((v27 & 1) == 0)
      {
LABEL_23:
        v13 = v52;
        v52[(v23 >> 6) + 8] |= 1 << v23;
        v35 = (v13[6] + 16 * v23);
        *v35 = v14;
        v35[1] = v16;
        v36 = (v13[7] + 16 * v23);
        *v36 = v20;
        v36[1] = v19;
        v0 = v45;
        (*v46)(v2, v45);
        v37 = v13[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_33;
        }

        v13[2] = v39;
        goto LABEL_25;
      }
    }

    v13 = v52;
    v34 = (v52[7] + 16 * v23);
    *v34 = v20;
    v34[1] = v19;

    v0 = v45;
    (*v46)(v2, v45);
LABEL_25:
    v11 = v44;
LABEL_8:
    if (v50 == ++v12)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_3EE894();
  __break(1u);
  return result;
}

uint64_t sub_3A00CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v5 = sub_3EBBC4();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBC14();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3E9A04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();

  v15 = sub_3E99F4();
  v16 = sub_3ED9F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    *(v17 + 14) = sub_2EDD0(*(v4 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v4 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), aBlock);
    _os_log_impl(&dword_0, v15, v16, "%{private,mask.hash}s: Getting commerce verification url from bag. Starting UI spinner.", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  (*(v12 + 8))(v14, v11);
  aBlock[4] = sub_3A1EA4;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_40;
  v19 = _Block_copy(aBlock);

  sub_3EBBE4();
  v32 = _swiftEmptyArrayStorage;
  sub_3A20D0(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_886BC(&qword_506A30, &unk_503DE0);
  v20 = v28;
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v19);
  (*(v27 + 8))(v7, v20);
  (*(v25 + 8))(v10, v26);

  v21 = swift_allocObject();
  v22 = v29;
  v23 = v30;
  v21[2] = v4;
  v21[3] = v22;
  v21[4] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5047C0);
  swift_allocObject();

  result = sub_3E9E34();
  *v31 = result;
  return result;
}

void sub_3A0584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = objc_opt_self();

  v12 = [v11 sharedInstance];
  v13 = [v12 commerceOAuthVerificationUrl];

  v14 = [v13 asyncValuePromiseOnQueue:*(a3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_workQueue)];
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = sub_3A1F18;
  v15[4] = v10;
  v15[5] = a4;
  v15[6] = a5;
  v17[4] = sub_3A1FA4;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_63B88;
  v17[3] = &block_descriptor_52;
  v16 = _Block_copy(v17);

  [v14 addFinishBlock:v16];
  _Block_release(v16);
}

void sub_3A0734(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a5;
  v52 = sub_3E9A04();
  v13 = *(v52 - 8);
  __chkstk_darwin(a1);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  if (v22 && (v54 = 0, v55 = 0, sub_3ED234(), (v23 = v55) != 0))
  {
    v24 = v54;
    sub_3E99E4();

    v25 = sub_3E99F4();
    v26 = sub_3ED9F4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v51 = a4;
      v28 = v27;
      v29 = swift_slowAlloc();
      v50 = a6;
      v54 = v29;
      *v28 = 141558531;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      *(v28 + 14) = sub_2EDD0(*(a3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(a3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v54);
      *(v28 + 22) = 2080;
      v30 = v24;
      a6 = v50;
      *(v28 + 24) = sub_2EDD0(v24, v23, &v54);
      _os_log_impl(&dword_0, v25, v26, "%{private,mask.hash}s: Acquired OAuth commerce verification endpoint from bag: %s.", v28, 0x20u);
      swift_arrayDestroy();

      a4 = v51;

      (*(v13 + 8))(v21, v52);
    }

    else
    {

      (*(v13 + 8))(v21, v52);
      v30 = v24;
    }

    v54 = v30;
    v55 = v23;
    v56 = a6;
    v57 = a7;
    v58 = 0;

    a4(&v54);
  }

  else if (a2)
  {
    v31 = sub_3E5B74();
    sub_3E99E4();

    v32 = v31;
    v33 = sub_3E99F4();
    v34 = sub_3ED9D4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = a4;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54 = v38;
      *v35 = 141558531;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      *(v35 + 14) = sub_2EDD0(*(a3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(a3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v54);
      *(v35 + 22) = 2112;
      *(v35 + 24) = v32;
      *v37 = v32;
      v39 = v32;
      _os_log_impl(&dword_0, v33, v34, "%{private,mask.hash}s Could not get commerce OAuth verification endpoint from bag with error: %@", v35, 0x20u);
      sub_FCF8(v37, &unk_502160);
      a4 = v36;

      __swift_destroy_boxed_opaque_existential_1Tm(v38);
    }

    (*(v13 + 8))(v18, v52);
    v54 = v32;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 1;
    v40 = v32;
    a4(&v54);
  }

  else
  {
    v41 = a4;
    sub_3E99E4();

    v42 = sub_3E99F4();
    v43 = sub_3ED9D4();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v54 = v45;
      *v44 = 141558275;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2081;
      *(v44 + 14) = sub_2EDD0(*(a3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(a3 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), &v54);
      _os_log_impl(&dword_0, v42, v43, "%{private,mask.hash}s Could not get commerce OAuth verification endpoint from bag.", v44, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
    }

    (*(v13 + 8))(v15, v52);
    v46 = sub_3E8604();
    sub_3A20D0(&qword_502BF0, &type metadata accessor for OAuthSessionError);
    v47 = swift_allocError();
    (*(*(v46 - 8) + 104))(v48, enum case for OAuthSessionError.unableToGetCommerceVerificationEndpointFromBag(_:), v46);
    v54 = v47;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 1;
    v41(&v54);
  }
}

uint64_t sub_3A0D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v36 = a4;
  v5 = v4;
  v35[1] = a3;
  v42 = sub_3E9A04();
  v38 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v12 - 8);
  v14 = v35 - v13;
  v15 = sub_3E5DC4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[0] = a1;
  v41[1] = a2;
  v39 = 0x612D687475616F7BLL;
  v40 = 0xEF7D64692D6D6164;
  v19 = *(v5 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId + 8);
  v41[3] = *(v5 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oAuthAdamId);
  v41[4] = v19;
  sub_68DC4();
  sub_3EE194();
  sub_3E5D94();

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_FCF8(v14, &unk_4E9EE0);
    sub_3E99E4();

    v20 = sub_3E99F4();
    v21 = sub_3ED9D4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41[0] = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      *(v22 + 14) = sub_2EDD0(*(v5 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v5 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), v41);
      _os_log_impl(&dword_0, v20, v21, "%{private,mask.hash}s Could not form verification endpoint with oauth id.", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
    }

    (*(v38 + 8))(v9, v42);
    v24 = sub_3E8604();
    sub_3A20D0(&qword_502BF0, &type metadata accessor for OAuthSessionError);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, enum case for OAuthSessionError.cannotReformCommerceVerificationUrl(_:), v24);
    return swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA898);
    sub_3E5994();
    v27 = swift_allocObject();
    v27[1] = xmmword_3F5630;
    sub_3E5964();
    v28._rawValue = v27;
    sub_3E5D84(v28);

    sub_3E99E4();

    v29 = sub_3E99F4();
    v30 = sub_3ED9F4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v31 = 141558531;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      *(v31 + 14) = sub_2EDD0(*(v5 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId), *(v5 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_sessionId + 8), v41);
      *(v31 + 22) = 2080;
      swift_beginAccess();
      sub_3A20D0(&qword_500D00, &type metadata accessor for URL);
      v32 = sub_3EE7A4();
      v34 = sub_2EDD0(v32, v33, v41);

      *(v31 + 24) = v34;
      _os_log_impl(&dword_0, v29, v30, "%{private,mask.hash}s Got commerce verification endpoint from the bag and appended short-lived token: %s", v31, 0x20u);
      swift_arrayDestroy();
    }

    (*(v38 + 8))(v37, v42);
    swift_beginAccess();
    (*(v16 + 16))(v36, v18, v15);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t OAuthSession.deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit12OAuthSession_authorizationURL;
  v2 = sub_3E5DC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC8ShelfKit12OAuthSession_state;
  v4 = sub_3E5FC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit12OAuthSession_hudViewHandler);

  return v0;
}

uint64_t OAuthSession.__deallocating_deinit()
{
  OAuthSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_3A15FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502FC8);
  __chkstk_darwin(v6);
  v8 = (&v20 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_3E5DC4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_189AC(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_FCF8(v11, &unk_4E9EE0);
    if (a2)
    {
      *v8 = a2;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
    }

    else
    {
      v17 = sub_3E8604();
      sub_3A20D0(&qword_502BF0, &type metadata accessor for OAuthSessionError);
      v18 = swift_allocError();
      (*(*(v17 - 8) + 104))(v19, enum case for OAuthSessionError.missingRedirectUrlFromWebAuthenticationSession(_:), v17);
      *v8 = v18;
      swift_storeEnumTagMultiPayload();
    }

    a3(v8);
    return sub_FCF8(v8, &qword_502FC8);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v8, v15, v12);
    swift_storeEnumTagMultiPayload();
    a3(v8);
    sub_FCF8(v8, &qword_502FC8);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_3A1930()
{
  v1 = sub_3E5DC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_3A19F4()
{
  v1 = *(sub_3E5DC4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_39B6D8(v2, v3);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3A1A88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3A1AC0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_3A1B44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3A1B7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AMSOAuthEndpointSubscriber.subscribe(to:for:)(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_3A1BA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3A1BE0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3A1C34()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t type metadata accessor for OAuthSession()
{
  result = qword_504828;
  if (!qword_504828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3A1D04()
{
  result = sub_3E5DC4();
  if (v1 <= 0x3F)
  {
    result = sub_3E5FC4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_3A1F18(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

uint64_t sub_3A1F5C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3A1FB4()
{
  v1 = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC8ShelfKit12OAuthSession_oauthSession) = 0;

  return v1(v2);
}

uint64_t objectdestroy_25Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_3A207C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3A20D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3A2128()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3A2160(void (*a1)(uint64_t *), uint64_t a2)
{
  v5 = *(v2 + 16);

  sub_3E4C04(v5, a1, a2);
}

uint64_t Promise<A>.observerPublisher(receiveOn:)(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v37 = a1;
  v3 = *v2;
  v4 = type metadata accessor for ObserverQueue();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v3 + class metadata base offset for Promise);
  swift_getAssociatedTypeWitness();
  v7 = sub_3E9C74();
  v40 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4E9DE8);
  WitnessTable = swift_getWitnessTable();
  v43 = v7;
  v44 = v8;
  v45 = WitnessTable;
  v46 = &protocol self-conformance witness table for Error;
  v9 = sub_3E9B94();
  v10 = sub_3E9E24();
  v31 = v10;
  v11 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v43 = v9;
  v44 = v10;
  v45 = v11;
  v46 = v30;
  v12 = sub_3E9C24();
  v36 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = sub_3E9C74();
  v16 = sub_3E9DE4();
  v34 = v15;
  v17 = swift_getWitnessTable();
  v33 = v17;
  v35 = v16;
  v32 = swift_getWitnessTable();
  v43 = v15;
  v44 = v16;
  v45 = v17;
  v46 = v32;
  v18 = sub_3E9C14();
  v38 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v29 - v19;
  v43 = sub_3ECD54();
  sub_3A30DC(v37, v6);
  v21 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v22 = swift_allocObject();
  v23 = v29;
  v24 = v41;
  *(v22 + 16) = v29;
  *(v22 + 24) = v24;
  sub_3A3260(v6, v22 + v21);
  sub_3E9C64();
  sub_3EA0E4();

  swift_getWitnessTable();
  v25 = sub_3E9F34();
  (*(v36 + 8))(v14, v12);
  v43 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  sub_3EA054();

  swift_getWitnessTable();
  v27 = sub_3E9F94();
  (*(v38 + 8))(v20, v18);
  return v27;
}

uint64_t type metadata accessor for ObserverQueue()
{
  result = qword_504A78;
  if (!qword_504A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Observer.eraseToAnyObserver()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AnyObserver();
  v9 = a1;
  v10 = a2;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v8);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0Tm, v2, a1);
  v6 = swift_allocObject();
  sub_1D4F0(&v8, v6 + 16);
  return v6;
}

uint64_t sub_3A281C(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D4F0(a1, v2 + 16);
  return v2;
}

uint64_t sub_3A2860()
{
  v1 = sub_3EDBB4();
  v2 = *(v1 - 8);
  v23 = v1;
  v24 = v2;
  __chkstk_darwin(v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3EDB54();
  __chkstk_darwin(v5);
  v6 = sub_3EBC14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v22 - v11;
  v13 = type metadata accessor for ObserverQueue();
  __chkstk_darwin(v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A30DC(v0, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    sub_801B4();
    return sub_3EDBC4();
  }

  else if (EnumCaseMultiPayload)
  {
    return *v15;
  }

  else
  {
    v17 = *v15;
    v22[1] = *(v15 + 1);
    v22[2] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6150);
    v19 = v7;
    (*(v7 + 32))(v12, &v15[*(v18 + 48)], v6);
    sub_801B4();
    (*(v7 + 16))(v9, v12, v6);
    v25 = _swiftEmptyArrayStorage;
    sub_3A4370(&qword_4F1CA8, &type metadata accessor for OS_dispatch_queue.Attributes);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CB0);
    sub_3A43B8();
    sub_3EE244();
    (*(v24 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v23);
    v20 = sub_3EDBF4();
    (*(v19 + 8))(v12, v6);
    return v20;
  }
}

uint64_t Observer.publisher(receiveOn:)(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v3 - 8);
  v42 = &v37 - v4;
  swift_getAssociatedTypeWitness();
  v5 = sub_3E9C74();
  v6 = sub_801B4();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_3A4370(&qword_4F1D30, sub_801B4);
  v47 = v5;
  v48 = v6;
  v37 = v6;
  v45 = WitnessTable;
  v49 = WitnessTable;
  v50 = v8;
  v39 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  v41 = OpaqueTypeMetadata2;
  __chkstk_darwin(OpaqueTypeMetadata2);
  v38 = &v37 - v10;
  v11 = type metadata accessor for ObserverQueue();
  __chkstk_darwin(v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 - 8);
  __chkstk_darwin(v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ObserverProducer();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v37 - v21;
  (*(v14 + 16))(v17, v43, a2, v20);
  (*(v14 + 32))(v22, v17, a2);
  swift_getWitnessTable();
  v23 = sub_3E9F34();
  v24 = v22;
  v25 = v44;
  (*(v19 + 8))(v24, v18);
  sub_3A30DC(v25, v13);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v47 = v23;
    swift_checkMetadataState();
    v26 = sub_3E9F94();
  }

  else
  {
    sub_3A3484(v13);
    v47 = v23;
    v27 = sub_3A2860();
    v46 = v27;
    v28 = sub_3EDB64();
    v29 = v42;
    (*(*(v28 - 8) + 56))(v42, 1, 1, v28);
    v30 = swift_checkMetadataState();
    v31 = swift_checkMetadataState();
    v33 = v38;
    v32 = v39;
    v34 = v45;
    sub_3E9F54();
    sub_1F7C94(v29);

    v47 = v30;
    v48 = v31;
    v49 = v34;
    v50 = v32;
    swift_getOpaqueTypeConformance2();
    v35 = v41;
    v26 = sub_3E9F94();

    (*(v40 + 8))(v33, v35);
  }

  return v26;
}

uint64_t sub_3A30DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObserverQueue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3A3140()
{
  v1 = *(type metadata accessor for ObserverQueue() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6150) + 48);
    v8 = sub_3EBC14();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3A3260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObserverQueue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3A32C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for ObserverQueue() - 8);
  result = Observer.publisher(receiveOn:)(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);
  *a1 = result;
  return result;
}

uint64_t sub_3A334C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return sub_3E9DF4();
}

uint64_t sub_3A3484(uint64_t a1)
{
  v2 = type metadata accessor for ObserverQueue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3A3548()
{
  swift_beginAccess();
  sub_1F958(v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 24))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_3A35D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v9 = *(a1 + a2 - 16);
  result = sub_3A378C();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 32) = v6;
    *(result + 40) = v7;
    v8 = sub_3A4348;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t sub_3A3660(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    *(v7 + 16) = *(v6 - 16);
    *(v7 + 32) = v4;
    *(v7 + 40) = v5;
    v8 = sub_3A4320;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_7A6C8(v4);
  return sub_3A36FC(v8, v7);
}

uint64_t sub_3A36FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, v5);
  (*(v6 + 40))(a1, a2, v5, v6);
  return swift_endAccess();
}

uint64_t sub_3A378C()
{
  swift_beginAccess();
  sub_1F958(v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v3;
}

uint64_t (*sub_3A3820(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_3A378C();
  a1[1] = v3;
  return sub_3A3868;
}

uint64_t sub_3A3868(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_3A36FC(*a1, v3);
  }

  sub_7A6C8(*a1);
  sub_3A36FC(v2, v3);

  return sub_16AC0(v2);
}

void (*sub_3A3950(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_3A3820(v2);
  return sub_EBB14;
}

uint64_t sub_3A39FC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + 16);
  v10 = *(a6 + 24);

  sub_3A4194(a1, a2, a3, v9, v10);
}

uint64_t sub_3A3A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return PFProducer.receive<A>(subscriber:)(a1, a4, a2, WitnessTable, a3);
}

uint64_t sub_3A3AFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Array.observerErrorValue.getter(*(a1 + 16));
  *a2 = result;
  return result;
}

__n128 sub_3A3B84(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_3A3BF4()
{
  sub_3A3C68();
  if (v0 <= 0x3F)
  {
    sub_801B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_3A3C68()
{
  if (!qword_504A88)
  {
    sub_3EBC14();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_504A88);
    }
  }
}

uint64_t sub_3A3DC0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_3A3E30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_3A3F70(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_3A4194(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v15 - v11;
  v13 = *(a5 + 40);

  v13(a2, a3, a4, a5);
  (*(a5 + 24))(a4, a5);
  a2(v12);
  return (*(v10 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_3A42E8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3A4370(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_3A43B8()
{
  result = qword_4F1CB8;
  if (!qword_4F1CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1CB8);
  }

  return result;
}

uint64_t Page.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v196 = a2;
  v191 = a1;
  v166 = sub_3EC164();
  v176 = *(v166 - 8);
  v2 = __chkstk_darwin(v166);
  v165 = &v152 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v178 = &v152 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v6 = __chkstk_darwin(v5 - 8);
  v164 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v186 = &v152 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0);
  v10 = __chkstk_darwin(v9 - 8);
  v162 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v161 = &v152 - v13;
  __chkstk_darwin(v12);
  v185 = &v152 - v14;
  v15 = sub_3E63E4();
  v16 = __chkstk_darwin(v15 - 8);
  v160 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v184 = &v152 - v18;
  v195 = sub_3EBF94();
  v188 = *(v195 - 8);
  v19 = __chkstk_darwin(v195);
  v175 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v187 = &v152 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98);
  v23 = __chkstk_darwin(v22 - 8);
  v169 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v152 - v25;
  v197 = sub_3EBDF4();
  v201 = *(v197 - 8);
  v27 = __chkstk_darwin(v197);
  v174 = &v152 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v173 = &v152 - v30;
  v31 = __chkstk_darwin(v29);
  v179 = &v152 - v32;
  v33 = __chkstk_darwin(v31);
  v172 = &v152 - v34;
  v35 = __chkstk_darwin(v33);
  v171 = &v152 - v36;
  v37 = __chkstk_darwin(v35);
  v170 = &v152 - v38;
  v39 = __chkstk_darwin(v37);
  v168 = &v152 - v40;
  v41 = __chkstk_darwin(v39);
  v190 = &v152 - v42;
  __chkstk_darwin(v41);
  v182 = &v152 - v43;
  v44 = sub_3ECED4();
  v192 = *(v44 - 8);
  v193 = v44;
  v45 = __chkstk_darwin(v44);
  v163 = &v152 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v167 = &v152 - v48;
  __chkstk_darwin(v47);
  v183 = &v152 - v49;
  v194 = sub_3E97B4();
  v50 = *(v194 - 1);
  v51 = __chkstk_darwin(v194);
  v53 = &v152 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v55 = &v152 - v54;
  v56 = sub_3E9854();
  v57 = *(v56 - 8);
  v58 = __chkstk_darwin(v56);
  v60 = &v152 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v62 = &v152 - v61;
  sub_3E97D4();
  sub_3E97D4();
  sub_3E9834();
  sub_3E9784();
  v63 = *(v57 + 8);
  v181 = v56;
  v180 = v63;
  (v63)(v60, v56);
  v64 = sub_3E9834();
  v65 = sub_3EDC84();
  if (sub_3EE014())
  {
    v66 = swift_slowAlloc();
    v159 = v26;
    v67 = v66;
    *v66 = 0;
    v68 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v64, v65, v68, "Page.Deserialize", "", v67, 2u);
    v26 = v159;
  }

  v69 = v194;
  (*(v50 + 16))(v53, v55, v194);
  sub_3E98A4();
  swift_allocObject();
  v70 = sub_3E9894();
  (*(v50 + 8))(v55, v69);
  v180(v62, v181);
  v71 = v182;
  v72 = v191;
  sub_3EBE04();
  sub_3EBD54();
  v74 = v201 + 8;
  v73 = *(v201 + 8);
  v75 = v197;
  v73(v71, v197);
  v77 = v192;
  v76 = v193;
  v180 = *(v192 + 48);
  v78 = (v180)(v26, 1, v193);
  v194 = v73;
  v201 = v74;
  if (v78 == 1)
  {
    sub_FCF8(v26, &qword_4EDC98);
    v79 = sub_3ECEE4();
    sub_3A7DCC(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v80 = 0x7365766C656873;
    v81 = v177;
    v80[1] = 0xE700000000000000;
    v80[2] = v81;
    (*(*(v79 - 8) + 104))(v80, enum case for JSONError.missingProperty(_:), v79);
    swift_willThrow();
    v83 = v195;
    v82 = v196;
LABEL_25:
    sub_3A7314();

    (v194)(v72, v75);
    (*(v188 + 8))(v82, v83);
    return v72;
  }

  v159 = v70;
  v84 = v75;
  v85 = *(v77 + 32);
  v86 = v183;
  v156 = v77 + 32;
  v155 = v85;
  v85(v183, v26, v76);
  (*(v77 + 16))(v167, v86, v76);
  v87 = *(v188 + 16);
  v182 = (v188 + 16);
  v181 = v87;
  v87(v187, v196, v195);
  type metadata accessor for Shelf(0);
  sub_3A7DCC(&qword_4F1F88, type metadata accessor for Shelf);
  v167 = sub_3ED654();
  v88 = v190;
  sub_3EBE04();
  v154 = sub_3EBDC4();
  v158 = v89;
  v73(v88, v84);
  sub_3EBE04();
  v153 = _sSo26ASKPagePresentationOptionsV8ShelfKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v88);
  sub_3EBE04();
  v152 = sub_3EBDC4();
  v157 = v90;
  v73(v88, v84);
  v91 = v168;
  sub_3EBE04();
  v92 = v169;
  sub_3EBD54();
  v73(v91, v84);
  v93 = v193;
  if ((v180)(v92, 1, v193) == 1)
  {
    sub_FCF8(v92, &qword_4EDC98);
    v180 = _swiftEmptyArrayStorage;
    v94 = v196;
  }

  else
  {
    v95 = v163;
    v155(v163, v92, v93);
    v96 = type metadata accessor for Action();
    v97 = __chkstk_darwin(v96);
    v94 = v196;
    *(&v152 - 2) = v97;
    *(&v152 - 1) = v94;
    v98 = v189;
    v180 = sub_3ECE94();
    v189 = v98;
    (*(v192 + 8))(v95, v93);
  }

  v99 = v191;
  sub_3EBE04();
  v100 = v187;
  v101 = v195;
  v102 = v181;
  v181(v187, v94, v195);
  sub_98100();
  sub_3EC574();
  LODWORD(v168) = v198;
  LODWORD(v163) = BYTE4(v198);
  sub_3EBE04();
  v103 = v94;
  v104 = v99;
  v102(v100, v103, v101);
  type metadata accessor for HeaderButtonItem();
  sub_3A7DCC(&qword_503440, type metadata accessor for HeaderButtonItem);
  v169 = sub_3ED644();
  v105 = v170;
  sub_3EBE04();
  sub_3EBDC4();
  v106 = v197;
  v107 = v194;
  if (v108)
  {
    v109 = v189;
    sub_3E9494();
    if (v109)
    {

      sub_3E9484();

      v107(v105, v106);
      v189 = 0;
    }

    else
    {
      v189 = 0;
      v107(v105, v106);
    }
  }

  else
  {
    (v194)(v105, v197);
  }

  v110 = v190;
  sub_3EBE04();
  sub_3EBDC4();
  v107(v110, v106);
  sub_3E63D4();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8);
  sub_3EBE04();
  v112 = v187;
  v113 = v104;
  v114 = v195;
  v115 = v196;
  v116 = v181;
  v181(v187, v196, v195);
  sub_3A7D14(&qword_4F29F0);
  v170 = v111;
  sub_3EC574();
  sub_3E7784();
  sub_3EBE04();
  v117 = v115;
  v72 = v113;
  v116(v112, v117, v114);
  v118 = v197;
  sub_3A7DCC(&qword_4EECC8, &type metadata accessor for ArtworkModel);
  sub_3EC574();
  v119 = v171;
  sub_3EBE04();
  v120 = sub_3EBD24();
  v121 = v194;
  (v194)(v119, v118);
  v122 = v172;
  sub_3EBE04();
  LODWORD(v187) = sub_3EBD24();
  v121(v122, v118);
  v123 = v179;
  sub_3EBE04();
  sub_3EBDC4();
  v171 = v124;
  if (v124)
  {
    v125 = v189;
    v126 = sub_3E9494();
    v127 = v125;
    v128 = v173;
    if (v125)
    {

      v172 = sub_3E9484();

      v121(v179, v118);
      v127 = 0;
    }

    else
    {
      v172 = v126;
      v121(v179, v118);
    }
  }

  else
  {
    v121(v123, v118);
    v172 = 0;
    v127 = v189;
    v128 = v173;
  }

  sub_3EBE04();
  sub_3EBDC4();
  v130 = v129;
  if (v129)
  {
    v131 = sub_3E9494();
    if (v127)
    {

      v189 = sub_3E9484();

      (v194)(v128, v197);
      v127 = 0;
    }

    else
    {
      v189 = v131;
      (v194)(v128, v197);
    }
  }

  else
  {
    v121(v128, v197);
    v189 = 0;
  }

  sub_3EBE04();
  v83 = v195;
  v82 = v196;
  v181(v175, v196, v195);
  v132 = v178;
  sub_3EC0E4();
  if (v127)
  {

    sub_FCF8(v186, &qword_4F1D50);
    sub_FCF8(v185, &qword_4F29E0);
    sub_3A7E7C(v184, &type metadata accessor for InteractionContext.Page);
    (*(v192 + 8))(v183, v193);
    v75 = v197;
    goto LABEL_25;
  }

  LODWORD(v181) = v120;
  v134 = v190;
  v135 = v132;
  sub_3EBE04();
  LODWORD(v182) = sub_3EBD24();
  (v194)(v134, v197);
  v136 = v160;
  sub_3A7E14(v184, v160, &type metadata accessor for InteractionContext.Page);
  v137 = v161;
  sub_FBD0(v185, v161, &qword_4F29E0);
  sub_FBD0(v186, v164, &qword_4F1D50);
  (*(v176 + 16))(v165, v135, v166);
  v72 = swift_allocObject();
  v138 = v154;
  *(v72 + 16) = v167;
  *(v72 + 24) = v138;
  v139 = v152;
  *(v72 + 32) = v158;
  *(v72 + 40) = v139;
  v140 = v180;
  *(v72 + 48) = v157;
  *(v72 + 56) = v140;
  *(v72 + 64) = v168;
  *(v72 + 68) = v163;
  v141 = v153;
  *(v72 + 72) = v169;
  *(v72 + 80) = v141;
  sub_3A7E14(v136, v72 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, &type metadata accessor for InteractionContext.Page);
  v142 = v162;
  sub_FBD0(v137, v162, &qword_4F29E0);
  v143 = v170;
  if ((*(*(v170 - 1) + 48))(v142, 1, v170) == 1)
  {
    sub_FCF8(v137, &qword_4F29E0);
    sub_3A7E7C(v136, &type metadata accessor for InteractionContext.Page);
    v144 = v166;
    (*(v176 + 8))(v178, v166);
    sub_FCF8(v186, &qword_4F1D50);
    sub_FCF8(v185, &qword_4F29E0);
    sub_3A7E7C(v184, &type metadata accessor for InteractionContext.Page);
    (*(v192 + 8))(v183, v193);
    sub_FCF8(v142, &qword_4F29E0);
    v198 = 0u;
    v199 = 0u;
    v200 = 0;
  }

  else
  {
    *(&v199 + 1) = v143;
    v200 = sub_3A7D14(&unk_503DB0);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v198);
    sub_FACC(v142, boxed_opaque_existential_0Tm, &qword_4F29E8);
    sub_FCF8(v137, &qword_4F29E0);
    sub_3A7E7C(v136, &type metadata accessor for InteractionContext.Page);
    v144 = v166;
    (*(v176 + 8))(v178, v166);
    sub_FCF8(v186, &qword_4F1D50);
    sub_FCF8(v185, &qword_4F29E0);
    sub_3A7E7C(v184, &type metadata accessor for InteractionContext.Page);
    (*(v192 + 8))(v183, v193);
  }

  v146 = v144;
  v147 = v171 == 0;
  v148 = v72 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent;
  v149 = v199;
  *v148 = v198;
  *(v148 + 16) = v149;
  *(v148 + 32) = v200;
  *(v72 + OBJC_IVAR____TtC8ShelfKit4Page_isIncomplete) = v181 & 1;
  *(v72 + OBJC_IVAR____TtC8ShelfKit4Page_isExplicit) = v187 & 1;
  sub_FACC(v164, v72 + OBJC_IVAR____TtC8ShelfKit4Page_uber, &qword_4F1D50);
  v150 = v72 + OBJC_IVAR____TtC8ShelfKit4Page_showAdamId;
  *v150 = v172;
  *(v150 + 8) = v147;
  v151 = v72 + OBJC_IVAR____TtC8ShelfKit4Page_channelAdamId;
  *v151 = v189;
  *(v151 + 8) = v130 == 0;
  *(v72 + OBJC_IVAR____TtC8ShelfKit4Page_mapiInLibrary) = v182;
  (*(v176 + 32))(v72 + OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics, v165, v146);
  sub_3A7314();

  (v194)(v191, v197);
  (*(v188 + 8))(v196, v83);
  return v72;
}

void *Page.modernShelves.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5670);
  __chkstk_darwin(v1 - 8);
  v3 = &v51 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v52 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v6 - 8);
  v8 = (&v51 - v7);
  v9 = sub_3E7784();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v51 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v13 - 8);
  v15 = (&v51 - v14);
  v63 = type metadata accessor for ModernShelf();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v51 - v18;
  v57 = v0;
  v19 = *(v0 + 16);
  if (v19 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)); ; i = sub_3EE5A4())
  {
    v56 = v8;
    v53 = v3;
    if (!i)
    {
      break;
    }

    v3 = i;
    v21 = 0;
    v8 = (v61 + 48);
    v22 = _swiftEmptyArrayStorage;
    v60 = i;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = sub_3EE3F4();
      }

      else
      {
        if (v21 >= *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_27;
        }

        v23 = *(v19 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      Shelf.mapToModernShelf()(v15);

      if ((*v8)(v15, 1, v63) == 1)
      {
        sub_FCF8(v15, &unk_503DA0);
      }

      else
      {
        sub_3A7D64(v15, v62, type metadata accessor for ModernShelf);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_E02B0(0, v22[2] + 1, 1, v22);
        }

        v27 = v22[2];
        v26 = v22[3];
        if (v27 >= v26 >> 1)
        {
          v22 = sub_E02B0(v26 > 1, v27 + 1, 1, v22);
        }

        v22[2] = v27 + 1;
        sub_3A7D64(v62, v22 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v27, type metadata accessor for ModernShelf);
        v3 = v60;
      }

      ++v21;
      if (v25 == v3)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_19:
  v28 = v56;
  sub_FBD0(v57 + OBJC_IVAR____TtC8ShelfKit4Page_uber, v56, &qword_4F1D50);
  if ((*(v54 + 48))(v28, 1, v55) == 1)
  {
    sub_FCF8(v28, &qword_4F1D50);
  }

  else
  {
    v29 = v59;
    sub_3A7D64(v28, v59, &type metadata accessor for ArtworkModel);
    v30 = v63;
    v31 = *(v63 + 20);
    v32 = type metadata accessor for Header(0);
    v33 = v58;
    (*(*(v32 - 8) + 56))(&v58[v31], 1, 1, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_3F5630;
    v35 = v51;
    sub_3A7E14(v29, v51, &type metadata accessor for ArtworkModel);
    v36 = type metadata accessor for RoomUber();
    *(v34 + 56) = v36;
    *(v34 + 64) = sub_3A7DCC(&qword_4F74A8, type metadata accessor for RoomUber);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v34 + 32));
    sub_3E5FB4();
    sub_3A7D64(v35, boxed_opaque_existential_0Tm + *(v36 + 20), &type metadata accessor for ArtworkModel);
    v38 = sub_3E5DC4();
    v39 = *(*(v38 - 8) + 56);
    v40 = v52;
    v39(v52, 1, 1, v38);
    v41 = &v33[v30[12]];
    *(v41 + 4) = 0;
    *v41 = 0u;
    *(v41 + 1) = 0u;
    v42 = v30[13];
    v43 = sub_3EC634();
    (*(*(v43 - 8) + 56))(&v33[v42], 1, 1, v43);
    v44 = v30[9];
    v45 = &v33[v30[8]];
    v39(&v33[v44], 1, 1, v38);
    *v33 = 0x726562556D6F6F52;
    *(v33 + 1) = 0xE800000000000000;
    v46 = &v33[v30[6]];
    *v46 = 34;
    *(v46 + 3) = 256;
    *(v46 + 2) = 0;
    *(v46 + 1) = 1;
    *&v33[v30[7]] = v34;
    sub_17F4C4(v40, &v33[v44]);
    v33[v30[10]] = 1;
    v33[v30[11]] = 0;
    *v45 = 0;
    *(v45 + 1) = 0;
    v47 = v53;
    sub_3A7E14(v33, v53, type metadata accessor for ModernShelf);
    v48 = v22[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v22;
    if (!isUniquelyReferenced_nonNull_native || v48 >= v22[3] >> 1)
    {
      v22 = sub_E02B0(isUniquelyReferenced_nonNull_native, v48 + 1, 1, v22);
      v64 = v22;
    }

    sub_17C550(0, 0, 1, v47);
    sub_3A7E7C(v59, &type metadata accessor for ArtworkModel);
    sub_3A7E7C(v58, type metadata accessor for ModernShelf);
  }

  return v22;
}

uint64_t Page.uberStyle.getter()
{
  v0 = type metadata accessor for ModernShelf();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Page.modernShelves.getter();
  if (v4[2])
  {
    sub_3A7E14(v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v3, type metadata accessor for ModernShelf);

    v5 = v3[*(v0 + 24)];
    if (v5 <= 0x2A)
    {
      switch(v5)
      {
        case '""':
          v6 = 6;
          goto LABEL_20;
        case '#':
          v6 = 2;
          goto LABEL_20;
        case '$':
          v6 = 1;
          goto LABEL_20;
      }
    }

    else if (v3[*(v0 + 24)] > 0x32u)
    {
      if (v5 == 51)
      {
        v6 = 0;
        goto LABEL_20;
      }

      if (v5 == 74)
      {
        v6 = 7;
        goto LABEL_20;
      }
    }

    else
    {
      if (v5 == 43)
      {
        v6 = 3;
        goto LABEL_20;
      }

      if (v5 == 44)
      {
        v6 = 4;
LABEL_20:
        sub_3A7E7C(v3, type metadata accessor for ModernShelf);
        return v6;
      }
    }

    v6 = 8;
    goto LABEL_20;
  }

  return 8;
}

uint64_t Page.__allocating_init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, unsigned __int8 a18, unsigned __int8 a19, uint64_t a20)
{
  v40 = a6;
  v41 = a8;
  v39 = a5;
  v50 = a20;
  v48 = a18;
  v49 = a19;
  v47 = a17;
  v46 = a16;
  v44 = a14;
  v45 = a15;
  v42 = a12;
  v43 = a13;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0);
  __chkstk_darwin(v25 - 8);
  v27 = &v39 - v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  *(v28 + 32) = a3;
  *(v28 + 40) = a4;
  v29 = v40;
  *(v28 + 48) = v39;
  *(v28 + 56) = v29;
  *(v28 + 64) = a7;
  *(v28 + 68) = BYTE4(a7) & 1;
  *(v28 + 72) = v41;
  *(v28 + 80) = a9;
  sub_3A7E14(a10, v28 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, &type metadata accessor for InteractionContext.Page);
  sub_FBD0(a11, v27, &qword_4F29E0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8);
  if ((*(*(v30 - 8) + 48))(v27, 1, v30) == 1)
  {
    sub_FCF8(a11, &qword_4F29E0);
    sub_3A7E7C(a10, &type metadata accessor for InteractionContext.Page);
    sub_FCF8(v27, &qword_4F29E0);
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
  }

  else
  {
    *(&v52 + 1) = v30;
    v53 = sub_3A7D14(&unk_503DB0);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v51);
    sub_FACC(v27, boxed_opaque_existential_0Tm, &qword_4F29E8);
    sub_FCF8(a11, &qword_4F29E0);
    sub_3A7E7C(a10, &type metadata accessor for InteractionContext.Page);
  }

  v32 = v28 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent;
  v33 = v52;
  *v32 = v51;
  *(v32 + 16) = v33;
  *(v32 + 32) = v53;
  *(v28 + OBJC_IVAR____TtC8ShelfKit4Page_isIncomplete) = v42 & 1;
  *(v28 + OBJC_IVAR____TtC8ShelfKit4Page_isExplicit) = v43 & 1;
  sub_FACC(v44, v28 + OBJC_IVAR____TtC8ShelfKit4Page_uber, &qword_4F1D50);
  v34 = v28 + OBJC_IVAR____TtC8ShelfKit4Page_showAdamId;
  *v34 = v45;
  *(v34 + 8) = v46 & 1;
  v35 = v28 + OBJC_IVAR____TtC8ShelfKit4Page_channelAdamId;
  *v35 = v47;
  *(v35 + 8) = v48 & 1;
  *(v28 + OBJC_IVAR____TtC8ShelfKit4Page_mapiInLibrary) = v49;
  v36 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  v37 = sub_3EC164();
  (*(*(v37 - 8) + 32))(v28 + v36, v50, v37);
  return v28;
}

uint64_t sub_3A6B44(uint64_t a1, uint64_t *a2)
{
  v3 = sub_3E9A04();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  result = sub_3EBDC4();
  if (v11)
  {
    v12 = result;
    v13 = v11;
    if (result == 0xD00000000000001ALL && 0x800000000042FCD0 == v11 || (sub_3EE804() & 1) != 0 || v12 == 0xD000000000000011 && 0x800000000042FCF0 == v13 || (sub_3EE804() & 1) != 0)
    {

      if (*a2)
      {
        return result;
      }

      v14 = *a2 | 1;
      goto LABEL_10;
    }

    if (v12 == 0xD000000000000022 && 0x800000000042FD10 == v13 || (sub_3EE804() & 1) != 0 || v12 == 0xD000000000000019 && 0x800000000042FD40 == v13 || (sub_3EE804() & 1) != 0)
    {

      if ((*a2 & 2) == 0)
      {
        v14 = *a2 | 2;
LABEL_10:
        *a2 = v14;
      }
    }

    else if (v12 == 0x72666552776F6873 && v13 == 0xED00004955687365 || (sub_3EE804() & 1) != 0)
    {

      if ((*a2 & 8) == 0)
      {
        v14 = *a2 | 8;
        goto LABEL_10;
      }
    }

    else if (v12 == 0xD000000000000017 && 0x800000000042FD60 == v13 || (sub_3EE804() & 1) != 0)
    {

      sub_3E98D4();
      v15 = sub_3E99F4();
      v16 = sub_3ED9D4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_0, v15, v16, "prefersPageHeaderHidden is no longer supported, ignoring", v17, 2u);
      }

      return (*(v4 + 8))(v9, v3);
    }

    else
    {
      sub_3E98D4();

      v18 = sub_3E99F4();
      v19 = sub_3ED9D4();

      v25 = v18;
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26 = v21;
        *v20 = 136315138;
        v22 = sub_2EDD0(v12, v13, &v26);

        *(v20 + 4) = v22;
        v23 = v25;
        _os_log_impl(&dword_0, v25, v19, "Unknown presentation option %s, ignoring", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
      }

      else
      {
      }

      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t Page.init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, unsigned __int8 a18, unsigned __int8 a19, uint64_t a20)
{
  v40 = a6;
  v41 = a8;
  v39 = a5;
  v50 = a20;
  v48 = a18;
  v49 = a19;
  v47 = a17;
  v46 = a16;
  v44 = a14;
  v45 = a15;
  v42 = a12;
  v43 = a13;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0);
  __chkstk_darwin(v26 - 8);
  v28 = &v39 - v27;
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  v29 = v40;
  *(v20 + 48) = v39;
  *(v20 + 56) = v29;
  *(v20 + 64) = a7;
  *(v20 + 68) = BYTE4(a7) & 1;
  *(v20 + 72) = v41;
  *(v20 + 80) = a9;
  sub_3A7E14(a10, v20 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, &type metadata accessor for InteractionContext.Page);
  sub_FBD0(a11, v28, &qword_4F29E0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8);
  if ((*(*(v30 - 8) + 48))(v28, 1, v30) == 1)
  {
    sub_FCF8(a11, &qword_4F29E0);
    sub_3A7E7C(a10, &type metadata accessor for InteractionContext.Page);
    sub_FCF8(v28, &qword_4F29E0);
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
  }

  else
  {
    *(&v52 + 1) = v30;
    v53 = sub_3A7D14(&unk_503DB0);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v51);
    sub_FACC(v28, boxed_opaque_existential_0Tm, &qword_4F29E8);
    sub_FCF8(a11, &qword_4F29E0);
    sub_3A7E7C(a10, &type metadata accessor for InteractionContext.Page);
  }

  v32 = v20 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent;
  v33 = v52;
  *v32 = v51;
  *(v32 + 16) = v33;
  *(v32 + 32) = v53;
  *(v20 + OBJC_IVAR____TtC8ShelfKit4Page_isIncomplete) = v42 & 1;
  *(v20 + OBJC_IVAR____TtC8ShelfKit4Page_isExplicit) = v43 & 1;
  sub_FACC(v44, v20 + OBJC_IVAR____TtC8ShelfKit4Page_uber, &qword_4F1D50);
  v34 = v20 + OBJC_IVAR____TtC8ShelfKit4Page_showAdamId;
  *v34 = v45;
  *(v34 + 8) = v46 & 1;
  v35 = v20 + OBJC_IVAR____TtC8ShelfKit4Page_channelAdamId;
  *v35 = v47;
  *(v35 + 8) = v48 & 1;
  *(v20 + OBJC_IVAR____TtC8ShelfKit4Page_mapiInLibrary) = v49;
  v36 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  v37 = sub_3EC164();
  (*(*(v37 - 8) + 32))(v20 + v36, v50, v37);
  return v20;
}

uint64_t sub_3A7314()
{
  v0 = sub_3E9864();
  v18 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v16[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_3E97B4();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_3E9854();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_3E97D4();
  v10 = sub_3E9834();
  sub_3E9884();
  v17 = sub_3EDC74();
  if (sub_3EE014())
  {

    sub_3E98B4();

    v11 = v18;
    if ((*(v18 + 88))(v2, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v11 + 8))(v2, v0);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v10, v17, v14, "Page.Deserialize", v12, v13, 2u);
  }

  (*(v3 + 8))(v5, v19);
  return (*(v7 + 8))(v9, v6);
}

__n128 Page.nextPageIntent.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent;
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent + 24))
  {
    sub_1F958(v2, a1);
  }

  else
  {
    result = *v2;
    v4 = *(v2 + 16);
    *a1 = *v2;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(v2 + 32);
  }

  return result;
}

uint64_t Page.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  swift_beginAccess();
  v4 = sub_3EC164();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t Page.pageMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  swift_beginAccess();
  v4 = sub_3EC164();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t Page.deinit()
{

  sub_3A7E7C(v0 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, &type metadata accessor for InteractionContext.Page);
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent);
  }

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit4Page_uber, &qword_4F1D50);
  v1 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  v2 = sub_3EC164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Page.__deallocating_deinit()
{
  Page.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_3A79E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Page.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_3A7A14@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  swift_beginAccess();
  v5 = sub_3EC164();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_3A7AA0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_3A7AB0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sSo26ASKPagePresentationOptionsV8ShelfKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_3ECED4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  sub_3EBD54();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = sub_3EBDF4();
    (*(*(v9 - 8) + 8))(a1, v9);
    sub_FCF8(v4, &qword_4EDC98);
  }

  else
  {
    v10 = (*(v6 + 32))(v8, v4, v5);
    __chkstk_darwin(v10);
    *(&v13 - 2) = &v14;
    sub_3ECEC4();
    v11 = sub_3EBDF4();
    (*(*(v11 - 8) + 8))(a1, v11);
    (*(v6 + 8))(v8, v5);
  }

  return v14;
}

uint64_t sub_3A7D14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F29E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3A7D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_3A7DCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3A7E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3A7E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for Page()
{
  result = qword_504BE0;
  if (!qword_504BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3A7F30()
{
  sub_3E63E4();
  if (v0 <= 0x3F)
  {
    sub_4EC44();
    if (v1 <= 0x3F)
    {
      sub_3EC164();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of Page.__allocating_init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = *(v7 + 208);
  v10 = a7 | ((HIDWORD(a7) & 1) << 32);

  return v9(a1, a2, a3, a4, a5, a6, v10);
}

uint64_t Paragraph.Text.languageAwareObject()(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v1 = a1;
  }

  v2 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  return v1;
}

uint64_t Paragraph.__allocating_init(text:alignment:style:isCollapsed:isLinkDetectionEnabled:shareSheetContentSource:impressionMetrics:)(uint64_t a1, char a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v24 = sub_3E5FC4();
  v14 = *(v24 - 8);
  __chkstk_darwin(v24);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 41) = a3;
  *(v17 + 42) = a4;
  *(v17 + 43) = a5;
  sub_FBD0(a6, v17 + OBJC_IVAR____TtC8ShelfKit9Paragraph_shareSheetContentSource, &qword_4F74B0);
  sub_FBD0(a7, v17 + OBJC_IVAR____TtC8ShelfKit9Paragraph_impressionMetrics, &unk_4E9170);
  v18 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  sub_3E5FB4();
  v19 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v21 = v20;

  sub_FCF8(a7, &unk_4E9170);
  sub_FCF8(a6, &qword_4F74B0);
  (*(v14 + 8))(v16, v24);
  *(v17 + 16) = v19;
  *(v17 + 24) = v21;
  return v17;
}

void sub_3A8380()
{
  v0 = objc_opt_self();
  v1 = UIContentSizeCategoryLarge;
  v2 = [v0 traitCollectionWithPreferredContentSizeCategory:v1];

  qword_504CE8 = v2;
}

void Paragraph.Style.nqmlConfiguration.getter(char a1@<W0>, ShelfKit::NqmlConfiguration *a2@<X8>)
{
  v3 = &UIFontTextStyleTitle3;
  if (a1 != 1)
  {
    v3 = &UIFontTextStyleBody;
  }

  v4 = *v3;
  v5 = objc_opt_self();
  if (qword_4E8C40 != -1)
  {
    v7 = v5;
    swift_once();
    v5 = v7;
  }

  v6 = [v5 preferredFontForTextStyle:v4 compatibleWithTraitCollection:qword_504CE8];

  NqmlConfiguration.init(font:)(a2, v6);
}

uint64_t static Paragraph.Text.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1 && a2 >> 62 == 1)
    {
      goto LABEL_6;
    }
  }

  else if (!(a2 >> 62))
  {
LABEL_6:
    sub_36174(0, &qword_4F22C0);
    return sub_3EDEC4() & 1;
  }

  return 0;
}

BOOL Paragraph.Text.isEmpty.getter(uint64_t a1)
{
  v1 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  v2 = sub_3E9A44();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v5 == 0;
}

uint64_t sub_3A85C4(void *a1, void *a2)
{
  v2 = *a1 >> 62;
  v3 = *a2 >> 62;
  if (v2)
  {
    if (v2 != 1 || v3 != 1)
    {
      return 0;
    }

LABEL_9:
    sub_36174(0, &qword_4F22C0);
    return sub_3EDEC4() & 1;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t Paragraph.MediaType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x616C702F74786574;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x6D74682F74786574;
}

uint64_t sub_3A86B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x80000000004236B0;
  if (v2 == 1)
  {
    v5 = 0x80000000004236B0;
  }

  else
  {
    v3 = 0x6D74682F74786574;
    v5 = 0xE90000000000006CLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x616C702F74786574;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006E69;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 0x6D74682F74786574;
    v4 = 0xE90000000000006CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x616C702F74786574;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000006E69;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_3A87B4()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_3A8864()
{
  sub_3ED394();
}

Swift::Int sub_3A8900()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_3A89AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8ShelfKit9ParagraphC9MediaTypeO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_3A89DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E69;
  v4 = 0x80000000004236B0;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0x6D74682F74786574;
    v4 = 0xE90000000000006CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x616C702F74786574;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Paragraph.Alignment.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1952867692;
  v2 = 0x7468676972;
  if (a1 != 2)
  {
    v2 = 0x656966697473756ALL;
  }

  if (a1)
  {
    v1 = 0x7265746E6563;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_3A8ABC(_BYTE *a1, _BYTE *a2)
{
  v2 = 1952867692;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 0xE500000000000000;
  v6 = 0x7468676972;
  if (v3 != 2)
  {
    v6 = 0x656966697473756ALL;
    v5 = 0xE900000000000064;
  }

  v7 = 0x7265746E6563;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v7 = 1952867692;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE400000000000000;
  v11 = 0xE500000000000000;
  v12 = 0x7468676972;
  if (*a2 != 2)
  {
    v12 = 0x656966697473756ALL;
    v11 = 0xE900000000000064;
  }

  if (*a2)
  {
    v2 = 0x7265746E6563;
    v10 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_3EE804();
  }

  return v15 & 1;
}

Swift::Int sub_3A8BF0()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_3A8CA8()
{
  sub_3ED394();
}

Swift::Int sub_3A8D4C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_3A8E00@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8ShelfKit9ParagraphC9AlignmentO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_3A8E30(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1952867692;
  v4 = 0xE500000000000000;
  v5 = 0x7468676972;
  if (*v1 != 2)
  {
    v5 = 0x656966697473756ALL;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x7265746E6563;
    v2 = 0xE600000000000000;
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

id Paragraph.Style.textStyle.getter(char a1)
{
  v1 = &UIFontTextStyleTitle3;
  if (a1 != 1)
  {
    v1 = &UIFontTextStyleBody;
  }

  return *v1;
}

uint64_t Paragraph.Style.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x647261646E617473;
  }

  if (a1 == 1)
  {
    return 0x656C6369747261;
  }

  return 0x656E696C6E69;
}

uint64_t sub_3A8F20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x656C6369747261;
  if (v2 != 1)
  {
    v4 = 0x656E696C6E69;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x656C6369747261;
  if (*a2 != 1)
  {
    v8 = 0x656E696C6E69;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x647261646E617473;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_3A901C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_3A90BC()
{
  sub_3ED394();
}

Swift::Int sub_3A9148()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_3A91E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8ShelfKit9ParagraphC5StyleO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_3A9214(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6369747261;
  if (v2 != 1)
  {
    v5 = 0x656E696C6E69;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x647261646E617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Paragraph.init(text:alignment:style:isCollapsed:isLinkDetectionEnabled:shareSheetContentSource:impressionMetrics:)(uint64_t a1, char a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v25 = sub_3E5FC4();
  v16 = *(v25 - 8);
  __chkstk_darwin(v25);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 41) = a3;
  *(v8 + 42) = a4;
  *(v8 + 43) = a5;
  sub_FBD0(a6, v8 + OBJC_IVAR____TtC8ShelfKit9Paragraph_shareSheetContentSource, &qword_4F74B0);
  sub_FBD0(a7, v8 + OBJC_IVAR____TtC8ShelfKit9Paragraph_impressionMetrics, &unk_4E9170);
  v19 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  sub_3E5FB4();
  v20 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v22 = v21;

  sub_FCF8(a7, &unk_4E9170);
  sub_FCF8(a6, &qword_4F74B0);
  (*(v16 + 8))(v18, v25);
  *(v8 + 16) = v20;
  *(v8 + 24) = v22;
  return v8;
}

uint64_t Paragraph.text.getter()
{
  v1 = *(v0 + 32);
  v2 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  return v1;
}

uint64_t Paragraph.isCollapsed.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 42) = a1;
  return result;
}

uint64_t Paragraph.isLinkDetectionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 43) = a1;
  return result;
}

uint64_t Paragraph.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit9Paragraph_shareSheetContentSource, &qword_4F74B0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit9Paragraph_impressionMetrics, &unk_4E9170);
  return v0;
}

uint64_t Paragraph.__deallocating_deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit9Paragraph_shareSheetContentSource, &qword_4F74B0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit9Paragraph_impressionMetrics, &unk_4E9170);

  return swift_deallocClassInstance();
}

uint64_t sub_3A976C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_3A9C90(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id _s8ShelfKit9ParagraphC4TextO4text9mediaType5styleAESSSg_AC05MediaG0OAC5StyleOtcfC_0(uint64_t a1, void *a2, char a3, char a4)
{
  if (!a2 || !a3)
  {
    v25 = sub_3E9A64();
    sub_3E9A34();
    sub_3E9A24();
    v26 = objc_allocWithZone(v25);
    return sub_3E9A84();
  }

  if (a3 != 1)
  {
    v27 = objc_opt_self();
    v28 = sub_3ED204();
    v29 = [v27 safeAttributedStringWithHTML:v28 attributes:0];

    if (v29)
    {
      result = [v29 attributedStringWithDefaultLineSpacing];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v30 = result;
      v31 = [result attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters];

      v32 = v31;
      if (v32)
      {

        v33 = sub_3E9A64();
        sub_3E9A24();
        v34 = objc_allocWithZone(v33);
        v35 = sub_3E9A74();

        return (v35 | 0x8000000000000000);
      }
    }

    v36 = sub_3E9A64();
    sub_3E9A34();
    sub_3E9A24();
    v37 = objc_allocWithZone(v36);
    return (sub_3E9A84() | 0x8000000000000000);
  }

  v6 = &UIFontTextStyleTitle3;
  if (a4 != 1)
  {
    v6 = &UIFontTextStyleBody;
  }

  v7 = *v6;
  v39 = sub_36174(0, &qword_504E20);
  v8 = objc_opt_self();
  if (qword_4E8C40 != -1)
  {
    v38 = v8;
    swift_once();
    v8 = v38;
  }

  v9 = [v8 preferredFontForTextStyle:v7 compatibleWithTraitCollection:{qword_504CE8, v39}];

  v10 = sub_619F4(_swiftEmptyArrayStorage);
  v11 = sub_61B1C(_swiftEmptyArrayStorage);
  v12 = objc_opt_self();
  v13 = v9;
  v14 = [v12 defaultParagraphStyle];
  [v13 pointSize];
  v16 = v15;
  v17 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v17 setFirstLineHeadIndent:0.0];
  [v17 setHeadIndent:v16];
  [v17 setDefaultTabInterval:v16];
  sub_61C44(_swiftEmptyArrayStorage);
  v18 = objc_allocWithZone(NSTextTab);
  type metadata accessor for OptionKey(0);
  sub_3AAC5C(&qword_4E9150, type metadata accessor for OptionKey);
  isa = sub_3ED084().super.isa;

  v20 = [v18 initWithTextAlignment:4 location:isa options:v16];

  [v17 addTabStop:v20];
  configuration.newline._countAndFlagsBits = 10;
  configuration.newline._object = 0xE100000000000000;
  configuration.font.super.isa = v13;
  configuration.paragraphStyle.super.isa = v14;
  configuration.listItemBullet._countAndFlagsBits = 547520738;
  configuration.listItemBullet._object = 0xA400000000000000;
  configuration.listItemStyle.super.isa = v17;
  configuration.markAttributes._rawValue = v10;
  configuration.markFontAttributes._rawValue = v11;
  v21._countAndFlagsBits = a1;
  v21._object = a2;
  NSAttributedString.init(nqml:configuration:)(v21, &configuration);
  v22 = sub_3E9A64();
  sub_3E9A24();
  v23 = objc_allocWithZone(v22);
  return (sub_3E9A74() | 0x4000000000000000);
}

uint64_t sub_3A9C90(char *a1, uint64_t a2)
{
  v87 = a2;
  v3 = sub_3E5FC4();
  v81 = *(v3 - 8);
  v82 = v3;
  __chkstk_darwin(v3);
  v80 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDEA8);
  __chkstk_darwin(v5 - 8);
  v67 = &v64 - v6;
  v7 = type metadata accessor for EpisodeOffer();
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  __chkstk_darwin(v7);
  v64 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F74B0);
  __chkstk_darwin(v10 - 8);
  v79 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v84 = &v64 - v13;
  v86 = sub_3EBF94();
  v14 = *(v86 - 8);
  __chkstk_darwin(v86);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v17 - 8);
  v77 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  v22 = sub_3EBDF4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v72 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v71 = &v64 - v26;
  __chkstk_darwin(v27);
  v70 = &v64 - v28;
  __chkstk_darwin(v29);
  v31 = &v64 - v30;
  sub_3EBE04();
  v66 = sub_3EBDC4();
  v65 = v32;
  v33 = *(v23 + 8);
  v33(v31, v22);
  sub_3EBE04();
  sub_3AAB60();
  sub_3EBCC4();
  v33(v31, v22);
  v89 = v92;
  v88 = a1;
  sub_3EBE04();
  sub_3AABB4();
  sub_3EBCC4();
  v74 = v23 + 8;
  v75 = v22;
  v73 = v33;
  v33(v31, v22);
  LODWORD(v83) = v91;
  sub_3EC634();
  sub_3EBE04();
  v78 = v14;
  v34 = *(v14 + 16);
  v35 = v16;
  v36 = v16;
  v38 = v86;
  v37 = v87;
  v34(v36, v87, v86);
  v85 = v21;
  v39 = v67;
  sub_3EC574();
  sub_3EBE04();
  v34(v35, v37, v38);
  sub_3AAC5C(&qword_4F2298, type metadata accessor for EpisodeOffer);
  v40 = v68;
  sub_3EC574();
  if (v69[6](v39, 1, v40) == 1)
  {
    sub_FCF8(v39, &qword_4EDEA8);
    v41 = type metadata accessor for ShareSheetContentSource(0);
    v42 = v84;
    (*(*(v41 - 8) + 56))(v84, 1, 1, v41);
  }

  else
  {
    v43 = v39;
    v44 = v64;
    sub_3D978(v43, v64);
    v42 = v84;
    sub_3D978(v44, v84);
    v45 = type metadata accessor for ShareSheetContentSource(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v45 - 8) + 56))(v42, 0, 1, v45);
  }

  v69 = _s8ShelfKit9ParagraphC4TextO4text9mediaType5styleAESSSg_AC05MediaG0OAC5StyleOtcfC_0(v66, v65, v89, v83);
  v46 = v70;
  sub_3EBE04();
  sub_3AAC08();
  v47 = v76;
  sub_3EBCD4();
  if (v47)
  {

    v76 = 0;
    LODWORD(v68) = 4;
  }

  else
  {
    LODWORD(v68) = v90;
    v76 = 0;
  }

  v48 = v46;
  v49 = v75;
  v50 = v73;
  v73(v48, v75);
  v51 = v71;
  sub_3EBE04();
  v52 = sub_3EBD24();
  v50(v51, v49);
  v53 = (v52 == 2) | v52;
  v54 = v72;
  sub_3EBE04();
  v55 = sub_3EBD24();
  v50(v54, v49);
  v56 = v79;
  sub_FBD0(v42, v79, &qword_4F74B0);
  v57 = v77;
  sub_FBD0(v85, v77, &unk_4E9170);
  type metadata accessor for Paragraph();
  v58 = swift_allocObject();
  *(v58 + 32) = v69;
  *(v58 + 40) = v68;
  *(v58 + 41) = v83;
  *(v58 + 42) = v53 & 1;
  *(v58 + 43) = v55 & 1;
  sub_FBD0(v56, v58 + OBJC_IVAR____TtC8ShelfKit9Paragraph_shareSheetContentSource, &qword_4F74B0);
  sub_FBD0(v57, v58 + OBJC_IVAR____TtC8ShelfKit9Paragraph_impressionMetrics, &unk_4E9170);
  v59 = v80;
  sub_3E5FB4();
  v60 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v83 = v61;
  (*(v78 + 8))(v87, v86);
  v50(v88, v49);
  (*(v81 + 8))(v59, v82);
  sub_FCF8(v57, &unk_4E9170);
  sub_FCF8(v56, &qword_4F74B0);
  sub_FCF8(v84, &qword_4F74B0);
  sub_FCF8(v85, &unk_4E9170);
  v62 = v83;
  *(v58 + 16) = v60;
  *(v58 + 24) = v62;
  return v58;
}

uint64_t _s8ShelfKit9ParagraphC9MediaTypeO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B3008;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t _s8ShelfKit9ParagraphC9AlignmentO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B3070;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t _s8ShelfKit9ParagraphC5StyleO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B30F0;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_3AA788()
{
  result = qword_504CF0;
  if (!qword_504CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504CF0);
  }

  return result;
}

unint64_t sub_3AA7E0()
{
  result = qword_504CF8;
  if (!qword_504CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504CF8);
  }

  return result;
}

unint64_t sub_3AA838()
{
  result = qword_504D00;
  if (!qword_504D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504D00);
  }

  return result;
}

uint64_t sub_3AA88C(uint64_t a1)
{
  result = sub_3AAC5C(&qword_504D08, type metadata accessor for Paragraph);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for Paragraph()
{
  result = qword_504D38;
  if (!qword_504D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3AA938()
{
  sub_3AAAC0(319, &unk_504D48, type metadata accessor for ShareSheetContentSource);
  if (v0 <= 0x3F)
  {
    sub_3AAAC0(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_3AAAC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_3AAB60()
{
  result = qword_504E08;
  if (!qword_504E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504E08);
  }

  return result;
}

unint64_t sub_3AABB4()
{
  result = qword_504E10;
  if (!qword_504E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504E10);
  }

  return result;
}

unint64_t sub_3AAC08()
{
  result = qword_504E18;
  if (!qword_504E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504E18);
  }

  return result;
}

uint64_t sub_3AAC5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PodcastDetail.lockup.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v1 - 8);
  v145 = &v121 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v146 = &v121 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v5 - 8);
  v126 = &v121 - v6;
  v143 = sub_3E5FC4();
  v7 = *(v143 - 8);
  __chkstk_darwin(v143);
  v124 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EC1F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v125 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v136 = &v121 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v14 - 8);
  v138 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v139 = &v121 - v17;
  __chkstk_darwin(v18);
  v144 = &v121 - v19;
  __chkstk_darwin(v20);
  v22 = &v121 - v21;
  v155 = *(v0 + 88);
  v23 = *(v0 + 112);
  v156 = *(v0 + 96);
  v157 = v23;

  v24 = 0;
  v148 = _swiftEmptyArrayStorage;
  v132 = v9;
  v133 = v0;
LABEL_2:
  v25 = &v156 + v24;
  while (++v24 != 3)
  {
    v26 = v25 + 1;
    v27 = *v25++;
    if (v27)
    {
      v28 = v22;
      v29 = *(v26 - 3);

      v30 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v148 = sub_DFAE8(0, *(v148 + 2) + 1, 1, v148);
      }

      v32 = *(v148 + 2);
      v31 = *(v148 + 3);
      if (v32 >= v31 >> 1)
      {
        v148 = sub_DFAE8((v31 > 1), v32 + 1, 1, v148);
      }

      v33 = v148;
      *(v148 + 2) = v32 + 1;
      v34 = &v33[16 * v32];
      *(v34 + 4) = v29;
      *(v34 + 5) = v27;
      v22 = v28;
      v0 = v133;
      v10 = v30;
      v9 = v132;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9950);
  swift_arrayDestroy();
  v131 = v10;
  v36 = *(v0 + 32);
  v35 = *(v0 + 40);
  type metadata accessor for LibraryFollowAction();
  v37 = swift_allocObject();
  v38 = (v37 + OBJC_IVAR____TtC8ShelfKit19LibraryFollowAction_podcastUuid);
  v134 = v36;
  *v38 = v36;
  v38[1] = v35;
  *(v37 + OBJC_IVAR____TtC8ShelfKit19LibraryFollowAction_displaySuccessHUD) = 1;
  v39 = sub_3EC634();
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v141 = v40 + 56;
  v142 = v41;
  v41(v22, 1, 1, v39);
  v135 = v35;
  swift_bridgeObjectRetain_n();
  v42 = v136;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v43 = v124;
  sub_3E5FB4();
  v44 = v9;
  v45 = v42;
  v46 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v48 = v47;
  v129 = *(v7 + 8);
  v130 = v7 + 8;
  (v129)(v43, v143);
  *(v37 + 16) = v46;
  *(v37 + 24) = v48;
  v49 = v131;
  *(v37 + 32) = 0;
  *(v37 + 40) = 0;
  *(v37 + 48) = 32;
  v128 = *(v49 + 32);
  v128(v37 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v45, v44);
  v137 = v37;
  v50 = v37 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v51 = v39;
  v52 = v133;
  sub_FACC(v22, v50, &unk_4E9170);
  v53 = *(v52 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeToPlay);
  v140 = v51;
  v147 = v22;
  v127 = v49 + 32;
  if (v53)
  {
    v54 = *(v53 + 64);
    v55 = *(v53 + 72);
    v121 = *(v53 + 16);
    v56 = *(v53 + 24);
    v123 = *(v53 + 32);
    v122 = *(v53 + 40);
    v57 = sub_3E8944();
    v58 = v126;
    (*(*(v57 - 8) + 56))(v126, 1, 1, v57);

    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for LibraryPlayAction();
    v59 = swift_allocObject();
    v60 = (v59 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid);
    *v60 = v54;
    v60[1] = v55;
    v61 = v59 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId;
    *v61 = v121;
    *(v61 + 8) = v56;
    v62 = v59 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_channelAdamId;
    *v62 = v123;
    *(v62 + 8) = v122;
    sub_FBD0(v58, v59 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_settings, &qword_4E9FD0);
    *(v59 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_showPlayerIfPlaying) = 2;
    v63 = v59 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_timestamp;
    *v63 = 0;
    *(v63 + 8) = 1;
    v65 = v131;
    v64 = v132;
    (*(v131 + 16))(v125, v45, v132);
    v142(v147, 1, 1, v140);
    sub_3E5FB4();
    v66 = v45;
    v67 = v43;
    v68 = v64;
    v69 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v71 = v70;

    (v129)(v67, v143);
    v72 = v65;
    v22 = v147;
    (*(v72 + 8))(v66, v68);
    sub_FCF8(v126, &qword_4E9FD0);
    *(v59 + 16) = v69;
    *(v59 + 24) = v71;
    v51 = v140;
    *(v59 + 32) = 0;
    *(v59 + 40) = 0;
    *(v59 + 48) = 32;
    v128(v59 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v125, v68);
    v131 = v59;
    v73 = v143;
    sub_FACC(v22, v59 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  }

  else
  {
    v131 = 0;
    v67 = v43;
    v68 = v132;
    v73 = v143;
  }

  type metadata accessor for LibraryPodcastContextAction();
  v74 = swift_allocObject();
  v75 = (v74 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_podcastUuid);
  v76 = v135;
  *v75 = v134;
  v75[1] = v76;
  v77 = v74 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType;
  *(v77 + 32) = 0u;
  *(v77 + 48) = 0u;
  *v77 = 0u;
  *(v77 + 16) = 0u;
  *(v77 + 64) = -1;
  v142(v22, 1, 1, v51);
  v78 = v136;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v79 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v81 = v80;
  (v129)(v67, v73);
  *(v74 + 16) = v79;
  *(v74 + 24) = v81;
  *(v74 + 32) = 0;
  *(v74 + 40) = 0;
  *(v74 + 48) = 32;
  v128(v74 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v78, v68);
  sub_FACC(v22, v74 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  if (*(v52 + 24) == 1)
  {
    v82 = sub_3E9484();
  }

  else
  {
    v82 = *(v52 + 16);
  }

  sub_FBD0(v52 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, v146, &qword_4F1D50);
  v84 = *(v52 + 48);
  v83 = *(v52 + 56);
  v85 = *(v52 + 64);
  v86 = *(v52 + 72);
  v154 = 0;
  memset(v153, 0, sizeof(v153));
  LODWORD(v136) = *(v52 + OBJC_IVAR____TtC8ShelfKit7Podcast_isExplicit);
  sub_FBD0(v52 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_impressionMetrics, v144, &unk_4E9170);
  type metadata accessor for LibraryShowLockup();
  v87 = swift_allocObject();
  v88 = (v87 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
  v89 = v134;
  v90 = v135;
  *v88 = v134;
  v88[1] = v90;
  v91 = (v87 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);
  *v91 = v84;
  v91[1] = v83;
  *(v87 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_providerAction) = 0;
  v92 = v87 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate;
  *v92 = v85;
  *(v92 + 8) = v86;
  *(v87 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed) = 2;
  v143 = v84;
  if (v83)
  {
    v93 = v84;
  }

  else
  {
    v93 = 0;
  }

  if (v83)
  {
    v94 = v83;
  }

  else
  {
    v94 = 0xE000000000000000;
  }

  v151 = v89;
  v152 = v90;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v95 = v148;

  v158._countAndFlagsBits = v93;
  v158._object = v94;
  sub_3ED3D4(v158);

  v96 = *(v95 + 2);
  if (v96)
  {
    v97 = (v148 + 40);
    do
    {
      v98 = *(v97 - 1);
      v99 = *v97;

      v159._countAndFlagsBits = v98;
      v159._object = v99;
      sub_3ED3D4(v159);

      v97 += 2;
      --v96;
    }

    while (v96);
  }

  v132 = v151;
  v130 = v152;
  v100 = sub_3E8284();
  v133 = v102;
  v134 = v101;
  LODWORD(v135) = v103;
  v129 = v100;
  sub_FBD0(v146, v145, &qword_4F1D50);
  sub_FBD0(v153, &v151, &qword_4EDE00);
  sub_FBD0(v144, v147, &unk_4E9170);
  *(v87 + 32) = 0u;
  *(v87 + 48) = 0u;
  *(v87 + 64) = 0;
  v128 = v82;
  v104 = v139;
  v142(v139, 1, 1, v140);
  sub_FBD0(v104, v138, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v104, &unk_4E9170);
  v150[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  memset(v150, 0, sizeof(v150));
  sub_FBD0(v150, v149, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v150, &qword_4EDE00);
  v150[0] = 0;
  sub_3ECAE4();
  v150[0] = 0;
  sub_3ECAE4();
  v150[0] = 0;
  sub_3ECAE4();
  v150[0] = 0;
  sub_3ECAE4();
  v105 = v130;
  *(v87 + 16) = v132;
  *(v87 + 24) = v105;
  v106 = v129;
  *(v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v128;
  v107 = v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v108 = v133;
  v109 = v134;
  *v107 = v106;
  *(v107 + 8) = v109;
  *(v107 + 16) = v108;
  *(v107 + 24) = v135;
  *(v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v136;
  *(v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v145, v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v110 = (v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v111 = v143;
  *v110 = v143;
  v110[1] = v83;
  *(v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v148;
  v112 = (v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v112 = 0;
  v112[1] = 0;
  v113 = (v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v113 = v111;
  v113[1] = v83;
  *(v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v114 = (v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v114 = 0;
  v114[1] = 0;
  *(v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v115 = (v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v115 = 0;
  v115[1] = 0;
  v116 = v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v116 = 0;
  *(v116 + 4) = 1;
  v117 = v87 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v117 = 0;
  *(v117 + 8) = 1;
  v149[0] = v137;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(&v151, v150, &qword_4EDE00);
  sub_FBD0(v150, v149, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v150, &qword_4EDE00);
  v149[0] = v74;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v149[0] = v131;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v149[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v149[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v118 = v147;
  v119 = v139;
  sub_FBD0(v147, v139, &unk_4E9170);
  sub_FBD0(v119, v138, &unk_4E9170);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();
  swift_endAccess();

  sub_FCF8(v119, &unk_4E9170);
  sub_FCF8(v118, &unk_4E9170);
  sub_FCF8(&v151, &qword_4EDE00);
  sub_FCF8(v145, &qword_4F1D50);
  sub_FCF8(v144, &unk_4E9170);
  sub_FCF8(v153, &qword_4EDE00);
  sub_FCF8(v146, &qword_4F1D50);
  return v87;
}

void *Podcast.summary.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t Podcast.newEpisodeCount.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t Podcast.__allocating_init(uuid:adamId:title:addedDate:summary:author:provider:newEpisodeCount:artwork:uberArtwork:logoArtwork:paidSubscriptionActive:storeUrl:webpageUrl:isExplicit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  v26 = swift_allocObject();
  *(v26 + 32) = a1;
  *(v26 + 40) = a2;
  if (a4)
  {
    a3 = sub_3E9484();
  }

  *(v26 + 16) = a3;
  *(v26 + 24) = 0;
  *(v26 + 48) = a5;
  *(v26 + 56) = a6;
  *(v26 + 64) = a7;
  *(v26 + 72) = a8 & 1;
  *(v26 + 80) = a9;
  *(v26 + 88) = a10;
  *(v26 + 96) = a11;
  *(v26 + 104) = a12;
  *(v26 + 112) = a13;
  *(v26 + 120) = a14;
  *(v26 + 128) = a15;
  sub_FACC(a16, v26 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, &qword_4F1D50);
  sub_FACC(a17, v26 + OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork, &qword_4F1D50);
  sub_FACC(a18, v26 + OBJC_IVAR____TtC8ShelfKit7Podcast_logoArtwork, &qword_4F1D50);
  *(v26 + OBJC_IVAR____TtC8ShelfKit7Podcast_paidSubscriptionActive) = a19 & 1;
  sub_FACC(a20, v26 + OBJC_IVAR____TtC8ShelfKit7Podcast_storeUrl, &unk_4E9EE0);
  sub_FACC(a21, v26 + OBJC_IVAR____TtC8ShelfKit7Podcast_webpageUrl, &unk_4E9EE0);
  *(v26 + OBJC_IVAR____TtC8ShelfKit7Podcast_isExplicit) = a22 & 1;
  return v26;
}

uint64_t Podcast.init(uuid:adamId:title:addedDate:summary:author:provider:newEpisodeCount:artwork:uberArtwork:logoArtwork:paidSubscriptionActive:storeUrl:webpageUrl:isExplicit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  v26 = a16;
  v27 = a12;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  if (a4)
  {
    v30 = a5;
    v28 = sub_3E9484();
    a5 = v30;
    v27 = a12;
    v26 = a16;
    a3 = v28;
  }

  *(v22 + 16) = a3;
  *(v22 + 24) = 0;
  *(v22 + 48) = a5;
  *(v22 + 56) = a6;
  *(v22 + 64) = a7;
  *(v22 + 72) = a8 & 1;
  *(v22 + 80) = a9;
  *(v22 + 88) = a10;
  *(v22 + 96) = a11;
  *(v22 + 104) = v27;
  *(v22 + 112) = a13;
  *(v22 + 120) = a14;
  *(v22 + 128) = a15;
  sub_FACC(v26, v22 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, &qword_4F1D50);
  sub_FACC(a17, v22 + OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork, &qword_4F1D50);
  sub_FACC(a18, v22 + OBJC_IVAR____TtC8ShelfKit7Podcast_logoArtwork, &qword_4F1D50);
  *(v22 + OBJC_IVAR____TtC8ShelfKit7Podcast_paidSubscriptionActive) = a19 & 1;
  sub_FACC(a20, v22 + OBJC_IVAR____TtC8ShelfKit7Podcast_storeUrl, &unk_4E9EE0);
  sub_FACC(a21, v22 + OBJC_IVAR____TtC8ShelfKit7Podcast_webpageUrl, &unk_4E9EE0);
  *(v22 + OBJC_IVAR____TtC8ShelfKit7Podcast_isExplicit) = a22 & 1;
  return v22;
}

uint64_t Podcast.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, &qword_4F1D50);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork, &qword_4F1D50);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Podcast_logoArtwork, &qword_4F1D50);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Podcast_storeUrl, &unk_4E9EE0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Podcast_webpageUrl, &unk_4E9EE0);
  return v0;
}

uint64_t PodcastDetail.shelfUniqueId.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_shelfUniqueId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PodcastDetail.shelfUniqueId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_shelfUniqueId);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t PodcastDetail.episodeUserFilter.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter);
  sub_1A9FF8(v1, *(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter + 8));
  return v1;
}

uint64_t PodcastDetail.hasEverPlayed.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hasEverPlayed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PodcastDetail.hasEverPlayed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hasEverPlayed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PodcastDetail.hidesPlayedEpisodes.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hidesPlayedEpisodes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PodcastDetail.hidesPlayedEpisodes.setter(int a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hidesPlayedEpisodes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PodcastDetail.displayType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_displayType;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t PodcastDetail.displayType.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_displayType;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_3ACA68(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

ShelfKit::PodcastDetail::DisplayType_optional __swiftcall PodcastDetail.DisplayType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B3158;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t PodcastDetail.DisplayType.rawValue.getter()
{
  v1 = 1684627824;
  if (*v0 != 1)
  {
    v1 = 0x646972627968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701147238;
  }
}

uint64_t sub_3ACC00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684627824;
  if (v2 != 1)
  {
    v5 = 0x646972627968;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701147238;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1684627824;
  if (*a2 != 1)
  {
    v8 = 0x646972627968;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701147238;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_3ACCE0()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_3ACD70()
{
  sub_3ED394();
}

Swift::Int sub_3ACDEC()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

void sub_3ACE84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684627824;
  if (v2 != 1)
  {
    v5 = 0x646972627968;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701147238;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PodcastDetail.__allocating_init(uuid:adamId:title:podcastState:addedDate:summary:author:provider:newEpisodeCount:artwork:uberArtwork:logoArtwork:paidSubscriptionActive:episodeToPlay:seasonToShow:isSerialShowTypeInFeed:episodeUserFilter:episodes:storeUrl:webpageUrl:feedUrl:offerAction:darkModeOptions:hasEverPlayed:hidesPlayedEpisodes:sort:displayType:channel:isExplicit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, unsigned __int8 a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t *a32, unsigned __int8 a33, int a34, unsigned __int8 a35, unsigned __int8 *a36, uint64_t a37, unsigned __int8 a38, uint64_t a39)
{
  v106 = a8;
  v82 = a7;
  v104 = a5;
  v105 = a6;
  v92 = a4;
  v109 = a3;
  v85 = a2;
  v84 = a1;
  v87 = a39;
  v108 = a38;
  v112 = a30;
  v90 = a29;
  v107 = a20;
  v88 = a19;
  v110 = a18;
  v111 = a17;
  v102 = a15;
  v103 = a16;
  v100 = a13;
  v101 = a14;
  v98 = a11;
  v99 = a12;
  v97 = a10;
  v96 = a9;
  LODWORD(v94) = a34;
  LODWORD(v93) = a35;
  LODWORD(v91) = a33;
  LODWORD(v89) = a26;
  v83 = a25;
  v81 = a24;
  v80 = a23;
  v79 = a22;
  v78 = a21;
  v86 = a28;
  v95 = a37;
  v77 = a31;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v39 - 8);
  v41 = &v75[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v44 = &v75[-v43];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v45 - 8);
  v47 = &v75[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v48);
  v50 = &v75[-v49];
  __chkstk_darwin(v51);
  v53 = &v75[-v52];
  v54 = swift_allocObject();
  v55 = *a32;
  v76 = *a36;
  v56 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodes;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodes) = 0;
  v57 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel) = 0;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_podcastState) = v82;
  swift_beginAccess();
  *(v54 + v56) = a27;
  v58 = v44;
  sub_FBD0(v112, v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_feedUrl, &unk_4E9EE0);
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_offerAction) = v77;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeToPlay) = v78;
  v59 = v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_seasonToShow;
  *v59 = v79;
  *(v59 + 8) = v80 & 1;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_isSerialShowTypeInFeed) = v81;
  v60 = v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter;
  *v60 = v83;
  *(v60 + 8) = v89;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_darkModeOptions) = v55;
  v61 = (v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_shelfUniqueId);
  v62 = v84;
  v63 = v85;
  *v61 = v84;
  v61[1] = v63;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hasEverPlayed) = v91;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_sort) = v93;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hidesPlayedEpisodes) = v94;
  *(v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_displayType) = v76;
  swift_beginAccess();
  *(v54 + v57) = v95;
  v64 = v87;
  sub_FBD0(v87, v54 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_impressionMetrics, &unk_4E9170);
  v89 = v53;
  sub_FBD0(v111, v53, &qword_4F1D50);
  v91 = v50;
  sub_FBD0(v110, v50, &qword_4F1D50);
  v65 = v88;
  v93 = v47;
  v66 = v47;
  v67 = v86;
  sub_FBD0(v88, v66, &qword_4F1D50);
  v94 = v58;
  v68 = v58;
  v69 = v90;
  sub_FBD0(v67, v68, &unk_4E9EE0);
  v95 = v41;
  sub_FBD0(v69, v41, &unk_4E9EE0);
  *(v54 + 32) = v62;
  *(v54 + 40) = v63;

  if (v92)
  {
    v109 = sub_3E9484();
  }

  sub_FCF8(v64, &unk_4E9170);
  sub_FCF8(v112, &unk_4E9EE0);
  sub_FCF8(v69, &unk_4E9EE0);
  sub_FCF8(v67, &unk_4E9EE0);
  sub_FCF8(v65, &qword_4F1D50);
  sub_FCF8(v110, &qword_4F1D50);
  sub_FCF8(v111, &qword_4F1D50);
  *(v54 + 16) = v109;
  *(v54 + 24) = 0;
  v70 = v105;
  *(v54 + 48) = v104;
  *(v54 + 56) = v70;
  *(v54 + 64) = v106;
  *(v54 + 72) = v96 & 1;
  v71 = v98;
  *(v54 + 80) = v97;
  *(v54 + 88) = v71;
  v72 = v100;
  *(v54 + 96) = v99;
  *(v54 + 104) = v72;
  v73 = v102;
  *(v54 + 112) = v101;
  *(v54 + 120) = v73;
  *(v54 + 128) = v103;
  sub_FACC(v89, v54 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, &qword_4F1D50);
  sub_FACC(v91, v54 + OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork, &qword_4F1D50);
  sub_FACC(v93, v54 + OBJC_IVAR____TtC8ShelfKit7Podcast_logoArtwork, &qword_4F1D50);
  *(v54 + OBJC_IVAR____TtC8ShelfKit7Podcast_paidSubscriptionActive) = v107 & 1;
  sub_FACC(v94, v54 + OBJC_IVAR____TtC8ShelfKit7Podcast_storeUrl, &unk_4E9EE0);
  sub_FACC(v95, v54 + OBJC_IVAR____TtC8ShelfKit7Podcast_webpageUrl, &unk_4E9EE0);
  *(v54 + OBJC_IVAR____TtC8ShelfKit7Podcast_isExplicit) = v108 & 1;
  return v54;
}

uint64_t PodcastDetail.init(uuid:adamId:title:podcastState:addedDate:summary:author:provider:newEpisodeCount:artwork:uberArtwork:logoArtwork:paidSubscriptionActive:episodeToPlay:seasonToShow:isSerialShowTypeInFeed:episodeUserFilter:episodes:storeUrl:webpageUrl:feedUrl:offerAction:darkModeOptions:hasEverPlayed:hidesPlayedEpisodes:sort:displayType:channel:isExplicit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, unsigned __int8 a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t *a32, unsigned __int8 a33, int a34, unsigned __int8 a35, unsigned __int8 *a36, uint64_t a37, unsigned __int8 a38, uint64_t a39)
{
  v107 = a8;
  v83 = a7;
  v105 = a5;
  v106 = a6;
  v93 = a4;
  v110 = a3;
  v87 = a2;
  v86 = a1;
  v85 = a39;
  v109 = a38;
  v113 = a30;
  v91 = a29;
  v108 = a20;
  v89 = a19;
  v111 = a18;
  v112 = a17;
  v103 = a15;
  v104 = a16;
  v101 = a13;
  v102 = a14;
  v99 = a11;
  v100 = a12;
  v98 = a10;
  v97 = a9;
  LODWORD(v95) = a34;
  LODWORD(v94) = a35;
  LODWORD(v92) = a33;
  LODWORD(v90) = a26;
  v84 = a25;
  v82 = a24;
  v81 = a23;
  v80 = a22;
  v79 = a21;
  v88 = a28;
  v96 = a37;
  v78 = a31;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v40 - 8);
  v42 = &v76[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v43);
  v45 = &v76[-v44];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v46 - 8);
  v48 = &v76[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v49);
  v51 = &v76[-v50];
  __chkstk_darwin(v52);
  v54 = &v76[-v53];
  v55 = *a32;
  v77 = *a36;
  v56 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodes;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodes) = 0;
  v57 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel) = 0;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_podcastState) = v83;
  swift_beginAccess();
  *(v39 + v56) = a27;
  v58 = v45;
  sub_FBD0(v113, v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_feedUrl, &unk_4E9EE0);
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_offerAction) = v78;
  v59 = v42;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeToPlay) = v79;
  v60 = v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_seasonToShow;
  *v60 = v80;
  *(v60 + 8) = v81 & 1;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_isSerialShowTypeInFeed) = v82;
  v61 = v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter;
  *v61 = v84;
  *(v61 + 8) = v90;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_darkModeOptions) = v55;
  v62 = v85;
  v63 = (v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_shelfUniqueId);
  v64 = v86;
  v65 = v87;
  *v63 = v86;
  v63[1] = v65;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hasEverPlayed) = v92;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_sort) = v94;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hidesPlayedEpisodes) = v95;
  *(v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_displayType) = v77;
  swift_beginAccess();
  *(v39 + v57) = v96;
  sub_FBD0(v62, v39 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_impressionMetrics, &unk_4E9170);
  v90 = v54;
  sub_FBD0(v112, v54, &qword_4F1D50);
  v92 = v51;
  sub_FBD0(v111, v51, &qword_4F1D50);
  v66 = v89;
  v94 = v48;
  v67 = v48;
  v68 = v88;
  sub_FBD0(v89, v67, &qword_4F1D50);
  v95 = v58;
  v69 = v58;
  v70 = v91;
  sub_FBD0(v68, v69, &unk_4E9EE0);
  v96 = v59;
  sub_FBD0(v70, v59, &unk_4E9EE0);
  *(v39 + 32) = v64;
  *(v39 + 40) = v65;

  if (v93)
  {
    v110 = sub_3E9484();
  }

  sub_FCF8(v62, &unk_4E9170);
  sub_FCF8(v113, &unk_4E9EE0);
  sub_FCF8(v70, &unk_4E9EE0);
  sub_FCF8(v68, &unk_4E9EE0);
  sub_FCF8(v66, &qword_4F1D50);
  sub_FCF8(v111, &qword_4F1D50);
  sub_FCF8(v112, &qword_4F1D50);
  *(v39 + 16) = v110;
  *(v39 + 24) = 0;
  v71 = v106;
  *(v39 + 48) = v105;
  *(v39 + 56) = v71;
  *(v39 + 64) = v107;
  *(v39 + 72) = v97 & 1;
  v72 = v99;
  *(v39 + 80) = v98;
  *(v39 + 88) = v72;
  v73 = v101;
  *(v39 + 96) = v100;
  *(v39 + 104) = v73;
  v74 = v103;
  *(v39 + 112) = v102;
  *(v39 + 120) = v74;
  *(v39 + 128) = v104;
  sub_FACC(v90, v39 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, &qword_4F1D50);
  sub_FACC(v92, v39 + OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork, &qword_4F1D50);
  sub_FACC(v94, v39 + OBJC_IVAR____TtC8ShelfKit7Podcast_logoArtwork, &qword_4F1D50);
  *(v39 + OBJC_IVAR____TtC8ShelfKit7Podcast_paidSubscriptionActive) = v108 & 1;
  sub_FACC(v95, v39 + OBJC_IVAR____TtC8ShelfKit7Podcast_storeUrl, &unk_4E9EE0);
  sub_FACC(v96, v39 + OBJC_IVAR____TtC8ShelfKit7Podcast_webpageUrl, &unk_4E9EE0);
  *(v39 + OBJC_IVAR____TtC8ShelfKit7Podcast_isExplicit) = v109 & 1;
  return v39;
}

uint64_t sub_3ADCCC()
{

  sub_3ADF60(*(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter), *(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter + 8));

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_feedUrl, &unk_4E9EE0);

  return sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_impressionMetrics, &unk_4E9170);
}

uint64_t PodcastDetail.deinit()
{
  Podcast.deinit();

  sub_3ADF60(*(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter), *(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeUserFilter + 8));

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_feedUrl, &unk_4E9EE0);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_impressionMetrics, &unk_4E9170);
  return v0;
}

uint64_t sub_3ADE6C(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_3ADEC8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_shelfUniqueId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_3ADF60(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_6BF60(a1, a2);
  }

  return a1;
}

unint64_t sub_3ADF78()
{
  result = qword_504E28;
  if (!qword_504E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504E28);
  }

  return result;
}

unint64_t sub_3ADFD0()
{
  result = qword_504E30;
  if (!qword_504E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504E30);
  }

  return result;
}

unint64_t sub_3AE028()
{
  result = qword_504E38;
  if (!qword_504E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504E38);
  }

  return result;
}

unint64_t sub_3AE080()
{
  result = qword_504E40;
  if (!qword_504E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504E40);
  }

  return result;
}

unint64_t sub_3AE0D8()
{
  result = qword_504E48;
  if (!qword_504E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504E48);
  }

  return result;
}

unint64_t sub_3AE12C(uint64_t a1)
{
  result = sub_3AE154();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_3AE154()
{
  result = qword_504E50;
  if (!qword_504E50)
  {
    type metadata accessor for PodcastDetail(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_504E50);
  }

  return result;
}

void sub_3AE1F4()
{
  sub_C3114(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v0 <= 0x3F)
  {
    sub_C3114(319, &qword_4E9918, &type metadata accessor for URL);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_3AE3D8()
{
  sub_C3114(319, &qword_4E9918, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    sub_C3114(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of PodcastDetail.__allocating_init(uuid:adamId:title:podcastState:addedDate:summary:author:provider:newEpisodeCount:artwork:uberArtwork:logoArtwork:paidSubscriptionActive:episodeToPlay:seasonToShow:isSerialShowTypeInFeed:episodeUserFilter:episodes:storeUrl:webpageUrl:feedUrl:offerAction:darkModeOptions:hasEverPlayed:hidesPlayedEpisodes:sort:displayType:channel:isExplicit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 336);
  v6 = a4 & 1;

  return v5(a1, a2, a3, v6);
}

uint64_t Review.shelfUniqueId.getter()
{
  v1 = sub_3E5FC4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[4])
  {
    v5 = v0[3];
  }

  else
  {
    if (v0[6])
    {
      v5 = v0[5];
      v6 = v0[6];
    }

    else
    {
      sub_3E5FB4();
      v5 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v6 = v7;
      (*(v2 + 8))(v4, v1);
    }

    v0[3] = v5;
    v0[4] = v6;
  }

  return v5;
}

uint64_t Review.shelfUniqueId.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t (*Review.shelfUniqueId.modify(uint64_t *a1))(void *a1)
{
  a1[2] = v1;
  *a1 = Review.shelfUniqueId.getter();
  a1[1] = v3;
  return sub_3AE95C;
}

uint64_t sub_3AE95C(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 24) = *a1;
  *(v1 + 32) = v2;
}

uint64_t Review.clickAction.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_3AF5D8(&qword_4EDDF8, 255, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t Review.__allocating_init(id:title:date:contents:rating:reviewerName:response:moreAction:topLevelAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v45 = a7;
  v46 = a8;
  v47 = a14;
  v43 = a13;
  v44 = a6;
  v41 = a11;
  v42 = a12;
  v39 = a9;
  v40 = a10;
  v19 = sub_3E6B04();
  v37 = *(v19 - 8);
  v38 = v19;
  __chkstk_darwin(v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v22 - 8);
  v24 = &v36 - v23;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 40) = a1;
  *(v25 + 48) = a2;
  *(v25 + 56) = a3;
  *(v25 + 64) = a4;
  sub_FBD0(a5, v24, &qword_4EF460);
  v26 = sub_3E5F84();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v24, 1, v26) == 1)
  {
    sub_FCF8(a5, &qword_4EF460);
    sub_FCF8(v24, &qword_4EF460);
    v28 = 0;
  }

  else
  {
    (*(v27 + 16))(v21, v24, v26);
    (*(v37 + 104))(v21, enum case for LazyDate.State.valid(_:), v38);
    v28 = sub_3E6AF4();
    sub_FCF8(a5, &qword_4EF460);
    (*(v27 + 8))(v24, v26);
  }

  v29 = v44;
  v30 = v45;
  *(v25 + 72) = v28;
  *(v25 + 80) = v29;
  v32 = v46;
  v31 = v47;
  *(v25 + 88) = v30;
  *(v25 + 96) = v32;
  v33 = v40;
  *(v25 + 104) = v39;
  *(v25 + 112) = v33;
  v34 = v42;
  *(v25 + 120) = v41;
  *(v25 + 128) = v34;
  *(v25 + 136) = v43;
  sub_FACC(v31, v25 + OBJC_IVAR____TtC8ShelfKit6Review_impressionMetrics, &unk_4E9170);
  return v25;
}

uint64_t Review.init(id:title:date:contents:rating:reviewerName:response:moreAction:topLevelAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v45 = a7;
  v46 = a8;
  v47 = a14;
  v43 = a13;
  v44 = a6;
  v41 = a11;
  v42 = a12;
  v39 = a9;
  v40 = a10;
  v20 = sub_3E6B04();
  v37 = *(v20 - 8);
  v38 = v20;
  __chkstk_darwin(v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v23 - 8);
  v25 = &v36 - v24;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = a1;
  *(v14 + 48) = a2;
  *(v14 + 56) = a3;
  *(v14 + 64) = a4;
  sub_FBD0(a5, &v36 - v24, &qword_4EF460);
  v26 = sub_3E5F84();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_FCF8(a5, &qword_4EF460);
    sub_FCF8(v25, &qword_4EF460);
    v28 = 0;
  }

  else
  {
    (*(v27 + 16))(v22, v25, v26);
    (*(v37 + 104))(v22, enum case for LazyDate.State.valid(_:), v38);
    v28 = sub_3E6AF4();
    sub_FCF8(a5, &qword_4EF460);
    (*(v27 + 8))(v25, v26);
  }

  v29 = v44;
  v30 = v45;
  *(v14 + 72) = v28;
  *(v14 + 80) = v29;
  v32 = v46;
  v31 = v47;
  *(v14 + 88) = v30;
  *(v14 + 96) = v32;
  v33 = v40;
  *(v14 + 104) = v39;
  *(v14 + 112) = v33;
  v34 = v42;
  *(v14 + 120) = v41;
  *(v14 + 128) = v34;
  *(v14 + 136) = v43;
  sub_FACC(v31, v14 + OBJC_IVAR____TtC8ShelfKit6Review_impressionMetrics, &unk_4E9170);
  return v14;
}

uint64_t Review.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Review.init(deserializing:using:)(a1, a2);
  return v4;
}

void *Review.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v41 = &v40 - v6;
  v48 = sub_3EBF94();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  sub_3EBE04();
  v15 = sub_3EBDC4();
  v17 = v16;
  v18 = *(v9 + 8);
  v42 = v8;
  v18(v14, v8);
  v3[5] = v15;
  v3[6] = v17;
  sub_3EBE04();
  v19 = sub_3EBDC4();
  v21 = v20;
  v18(v14, v8);
  v3[7] = v19;
  v3[8] = v21;
  sub_3EBE04();
  v22 = *(v45 + 16);
  v43 = v45 + 16;
  v44 = v22;
  v22(v47, v46, v48);
  sub_A72A8();
  sub_3EC574();
  v3[9] = v49;
  sub_3EBE04();
  v23 = sub_3EBDC4();
  v25 = v24;
  v26 = v42;
  v18(v14, v42);
  v3[10] = v23;
  v3[11] = v25;
  sub_3EBE04();
  v27 = sub_3EBD44();
  LOBYTE(v25) = v28;
  v18(v11, v26);
  if (v25)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  v3[12] = v29;
  sub_3EBE04();
  v30 = sub_3EBDC4();
  v32 = v31;
  v18(v14, v26);
  v3[13] = v30;
  v3[14] = v32;
  type metadata accessor for Response();
  sub_3EBE04();
  v33 = v46;
  v44(v47, v46, v48);
  sub_3AF5D8(&qword_505120, v34, type metadata accessor for Response);
  sub_3EC574();
  v3[15] = v49;
  sub_3EBE04();
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v40 = v18;
  v18(v14, v26);
  v3[16] = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  sub_3EBE04();
  v36 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v18(v14, v26);
  v3[17] = v36;
  sub_3EC634();
  sub_3EBE04();
  v37 = v48;
  v44(v47, v33, v48);
  v38 = v41;
  sub_3EC574();
  (*(v45 + 8))(v33, v37);
  v40(a1, v42);
  sub_FACC(v38, v3 + OBJC_IVAR____TtC8ShelfKit6Review_impressionMetrics, &unk_4E9170);
  return v3;
}

uint64_t sub_3AF5D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Review.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Review_impressionMetrics, &unk_4E9170);
  return v0;
}

void *sub_3AF6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = Review.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

BOOL sub_3AF760()
{
  v1 = *v0;
  swift_beginAccess();
  return (*(v1 + 16) & 1) == 0;
}

uint64_t sub_3AF7A8()
{
  v1 = *v0;
  result = swift_beginAccess();
  *(v1 + 16) = (*(v1 + 16) & 1) == 0;
  return result;
}

uint64_t sub_3AF7F4()
{
  v1 = *v0;
  result = swift_beginAccess();
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_3AF834@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 128);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_3AF5D8(&qword_4EDDF8, 255, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

void *Response.__allocating_init(id:date:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v8 = sub_3E6B04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  sub_FBD0(a3, v14, &qword_4EF460);
  v16 = sub_3E5F84();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_FCF8(a3, &qword_4EF460);
    sub_FCF8(v14, &qword_4EF460);
    v18 = 0;
  }

  else
  {
    (*(v17 + 16))(v11, v14, v16);
    (*(v9 + 104))(v11, enum case for LazyDate.State.valid(_:), v8);
    v18 = sub_3E6AF4();
    sub_FCF8(a3, &qword_4EF460);
    (*(v17 + 8))(v14, v16);
  }

  v20 = v22;
  v19 = v23;
  v15[4] = v18;
  v15[5] = v20;
  v15[6] = v19;
  return v15;
}

void *Response.init(id:date:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v9 = sub_3E6B04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v5[2] = a1;
  v5[3] = a2;
  sub_FBD0(a3, &v22 - v14, &qword_4EF460);
  v16 = sub_3E5F84();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_FCF8(a3, &qword_4EF460);
    sub_FCF8(v15, &qword_4EF460);
    v18 = 0;
  }

  else
  {
    (*(v17 + 16))(v12, v15, v16);
    (*(v10 + 104))(v12, enum case for LazyDate.State.valid(_:), v9);
    v18 = sub_3E6AF4();
    sub_FCF8(a3, &qword_4EF460);
    (*(v17 + 8))(v15, v16);
  }

  v20 = v22;
  v19 = v23;
  v5[4] = v18;
  v5[5] = v20;
  v5[6] = v19;
  return v5;
}

uint64_t Response.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Response.init(deserializing:using:)(a1, a2);
  return v4;
}

void *Response.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v27 = a2;
  v3 = v2;
  v26 = sub_3EBF94();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBDF4();
  v25 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3EBE04();
  v11 = sub_3EBDC4();
  v13 = v12;
  v14 = *(v8 + 8);
  v14(v10, v7);
  v3[2] = v11;
  v3[3] = v13;
  v15 = a1;
  sub_3EBE04();
  v17 = v26;
  v16 = v27;
  (*(v28 + 16))(v6, v27, v26);
  sub_A72A8();
  sub_3EC574();
  v3[4] = v29;
  v18 = v15;
  sub_3EBE04();
  v19 = sub_3EBDC4();
  v21 = v20;
  (*(v28 + 8))(v16, v17);
  v22 = v25;
  v14(v18, v25);
  v14(v10, v22);
  v3[5] = v19;
  v3[6] = v21;
  return v3;
}

uint64_t Response.deinit()
{

  return v0;
}

uint64_t Response.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_3B0150@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = Response.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t Ratings.shelfUniqueId.getter()
{
  v1 = sub_3E5FC4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[3])
  {
    v5 = v0[2];
  }

  else
  {
    if (v0[5])
    {
      v5 = v0[4];
      v6 = v0[5];
    }

    else
    {
      sub_3E5FB4();
      v5 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v6 = v7;
      (*(v2 + 8))(v4, v1);
    }

    v0[2] = v5;
    v0[3] = v6;
  }

  return v5;
}

uint64_t (*Ratings.shelfUniqueId.modify(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = Ratings.shelfUniqueId.getter();
  a1[1] = v3;
  return sub_3B3130;
}

uint64_t Ratings.__allocating_init(productId:ratingAverage:ratingCounts:formattedCount:totalNumberOfRatings:totalNumberOfReviews:reviews:actions:nextPageIntent:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a7;
  v30 = a8;
  v31 = a12;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0);
  __chkstk_darwin(v19 - 8);
  v21 = &v28 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  *(v22 + 48) = a9;
  *(v22 + 56) = a3;
  *(v22 + 64) = a6;
  *(v22 + 72) = a4;
  *(v22 + 80) = a5;
  v23 = v30;
  *(v22 + 88) = v29;
  *(v22 + 96) = v23;
  *(v22 + 104) = a10;
  sub_FBD0(a11, v21, &qword_4F29E0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8);
  if ((*(*(v24 - 8) + 48))(v21, 1, v24) == 1)
  {
    sub_FCF8(a11, &qword_4F29E0);
    sub_FCF8(v21, &qword_4F29E0);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  else
  {
    *(&v33 + 1) = v24;
    v34 = sub_3A7D14(&unk_503DB0);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v32);
    sub_FACC(v21, boxed_opaque_existential_0Tm, &qword_4F29E8);
    sub_FCF8(a11, &qword_4F29E0);
  }

  v26 = v33;
  *(v22 + 112) = v32;
  *(v22 + 128) = v26;
  *(v22 + 144) = v34;
  sub_FACC(v31, v22 + OBJC_IVAR____TtC8ShelfKit7Ratings_impressionMetrics, &unk_4E9170);
  return v22;
}

uint64_t Ratings.init(productId:ratingAverage:ratingCounts:formattedCount:totalNumberOfRatings:totalNumberOfReviews:reviews:actions:nextPageIntent:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a7;
  v30 = a8;
  v31 = a12;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0);
  __chkstk_darwin(v20 - 8);
  v22 = &v28 - v21;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a9;
  *(v12 + 56) = a3;
  *(v12 + 64) = a6;
  *(v12 + 72) = a4;
  *(v12 + 80) = a5;
  v23 = v30;
  *(v12 + 88) = v29;
  *(v12 + 96) = v23;
  *(v12 + 104) = a10;
  sub_FBD0(a11, v22, &qword_4F29E0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8);
  if ((*(*(v24 - 8) + 48))(v22, 1, v24) == 1)
  {
    sub_FCF8(a11, &qword_4F29E0);
    sub_FCF8(v22, &qword_4F29E0);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  else
  {
    *(&v33 + 1) = v24;
    v34 = sub_3A7D14(&unk_503DB0);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v32);
    sub_FACC(v22, boxed_opaque_existential_0Tm, &qword_4F29E8);
    sub_FCF8(a11, &qword_4F29E0);
  }

  v26 = v33;
  *(v12 + 112) = v32;
  *(v12 + 128) = v26;
  *(v12 + 144) = v34;
  sub_FACC(v31, v12 + OBJC_IVAR____TtC8ShelfKit7Ratings_impressionMetrics, &unk_4E9170);
  return v12;
}

__n128 Ratings.nextPageIntent.getter@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + 136))
  {
    sub_1F958(v1 + 112, a1);
  }

  else
  {
    result = *(v1 + 112);
    v3 = *(v1 + 128);
    *a1 = result;
    *(a1 + 16) = v3;
    *(a1 + 32) = *(v1 + 144);
  }

  return result;
}

uint64_t Ratings.deinit()
{

  if (*(v0 + 136))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 112);
  }

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Ratings_impressionMetrics, &unk_4E9170);
  return v0;
}

uint64_t sub_3B08E0(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_3B093C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_3B1680(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t TapToRate.__allocating_init(title:rating:rateAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v10 = sub_3E5FC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_3E5FB4();
  v15 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  *(v14 + 16) = v15;
  *(v14 + 24) = v17;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a5;
  *(v14 + 52) = 0;
  *(v14 + 56) = a3;
  sub_FACC(a4, v14 + OBJC_IVAR____TtC8ShelfKit9TapToRate_impressionMetrics, &unk_4E9170);
  return v14;
}

uint64_t TapToRate.init(title:rating:rateAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v6 = v5;
  v12 = sub_3E5FC4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E5FB4();
  v16 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  *(v6 + 16) = v16;
  *(v6 + 24) = v18;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = a5;
  *(v6 + 52) = 0;
  *(v6 + 56) = a3;
  sub_FACC(a4, v6 + OBJC_IVAR____TtC8ShelfKit9TapToRate_impressionMetrics, &unk_4E9170);
  return v6;
}

uint64_t TapToRate.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit9TapToRate_impressionMetrics, &unk_4E9170);
  return v0;
}

uint64_t TapToRate.__deallocating_deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit9TapToRate_impressionMetrics, &unk_4E9170);

  return swift_deallocClassInstance();
}

uint64_t sub_3B0DA8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_3B22F4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t ReviewActions.shelfUniqueId.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_3B0E90(v0);
    *(v0 + 16) = v1;
    *(v0 + 24) = v2;
  }

  return v1;
}

uint64_t ReviewActions.shelfUniqueId.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_3B0E90(uint64_t a1)
{
  v2 = sub_3E5FC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  if (v6)
  {
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);

    v9 = *(a1 + 40);
    if (v9)
    {
LABEL_3:
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);

      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0xE000000000000000;
    v9 = *(a1 + 40);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  v10 = 0xE000000000000000;
LABEL_6:
  v12 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v12 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    goto LABEL_12;
  }

  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
LABEL_12:
    strcpy(v16, "reviewActions:");
    HIBYTE(v16[1]) = -18;
    v17._countAndFlagsBits = v8;
    v17._object = v7;
    sub_3ED3D4(v17);

    v18._countAndFlagsBits = 58;
    v18._object = 0xE100000000000000;
    sub_3ED3D4(v18);

    v19._countAndFlagsBits = v11;
    v19._object = v10;
    sub_3ED3D4(v19);

    return v16[0];
  }

  else
  {

    sub_3E5FB4();
    v15 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    (*(v3 + 8))(v5, v2);
    return v15;
  }
}

uint64_t (*ReviewActions.shelfUniqueId.modify(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = ReviewActions.shelfUniqueId.getter();
  a1[1] = v3;
  return sub_3B10D4;
}

uint64_t sub_3B10D8(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
}

void *ReviewActions.__allocating_init(writeReview:support:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  v6[5] = a2;
  sub_FACC(a3, v6 + OBJC_IVAR____TtC8ShelfKit13ReviewActions_impressionMetrics, &unk_4E9170);
  return v6;
}

void *ReviewActions.init(writeReview:support:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = a1;
  v3[5] = a2;
  sub_FACC(a3, v3 + OBJC_IVAR____TtC8ShelfKit13ReviewActions_impressionMetrics, &unk_4E9170);
  return v3;
}

uint64_t ReviewActions.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13ReviewActions_impressionMetrics, &unk_4E9170);
  return v0;
}

uint64_t ReviewActions.__deallocating_deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13ReviewActions_impressionMetrics, &unk_4E9170);

  return swift_deallocClassInstance();
}

void *sub_3B12D4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_3B1360(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_3B1360(char *a1, uint64_t a2)
{
  v23 = sub_3EBF94();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v6 - 8);
  v26 = &v19 - v7;
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3EBE04();
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v12 = *(v9 + 8);
  v21 = v8;
  v12(v11, v8);
  v20 = v12;
  sub_3EBE04();
  v24 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v12(v11, v8);
  sub_3EC634();
  sub_3EBE04();
  v13 = v23;
  v14 = a2;
  (*(v4 + 16))(v22, a2, v23);
  v15 = v26;
  sub_3EC574();
  (*(v4 + 8))(v14, v13);
  v20(a1, v21);
  type metadata accessor for ReviewActions(0);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v17 = v24;
  v16[4] = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  v16[5] = v17;
  sub_FACC(v15, v16 + OBJC_IVAR____TtC8ShelfKit13ReviewActions_impressionMetrics, &unk_4E9170);
  return v16;
}

uint64_t sub_3B1680(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v102 = &v85 - v5;
  v112 = sub_3EBF94();
  v108 = *(v112 - 8);
  __chkstk_darwin(v112);
  v105 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0);
  __chkstk_darwin(v7 - 8);
  v101 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = &v85 - v10;
  __chkstk_darwin(v11);
  v110 = &v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98);
  __chkstk_darwin(v13 - 8);
  v97 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v85 - v16;
  v18 = sub_3EBDF4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v99 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v98 = &v85 - v22;
  __chkstk_darwin(v23);
  v94 = &v85 - v24;
  __chkstk_darwin(v25);
  v93 = &v85 - v26;
  __chkstk_darwin(v27);
  v88 = &v85 - v28;
  __chkstk_darwin(v29);
  v87 = &v85 - v30;
  __chkstk_darwin(v31);
  v103 = &v85 - v32;
  __chkstk_darwin(v33);
  v35 = &v85 - v34;
  v36 = sub_3ECED4();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v85 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  sub_3EBE04();
  sub_3EBD54();
  v40 = *(v19 + 8);
  v107 = v19 + 8;
  v40(v35, v18);
  v86 = *(v37 + 48);
  v41 = v86(v17, 1, v36);
  v104 = v40;
  v85 = v37;
  if (v41 == 1)
  {
    sub_FCF8(v17, &qword_4EDC98);
    v96 = _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v37 + 32))(v39, v17, v36);
    v42 = type metadata accessor for Action();
    __chkstk_darwin(v42);
    *(&v85 - 2) = v43;
    *(&v85 - 1) = a2;
    v44 = v109;
    v96 = sub_3ECE94();
    v109 = v44;
    (*(v37 + 8))(v39, v36);
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8);
  sub_3EBE04();
  v46 = *(v108 + 16);
  v111 = a2;
  v92 = v108 + 16;
  v91 = v46;
  v46(v105, a2, v112);
  sub_3A7D14(&qword_4F29F0);
  v95 = v45;
  sub_3EC574();
  v47 = v87;
  sub_3EBE04();
  v90 = sub_3EBDC4();
  v89 = v48;
  v49 = v104;
  v104(v47, v18);
  v50 = v88;
  sub_3EBE04();
  v51 = sub_3EBD64();
  v49(v50, v18);
  if ((v51 & 0x100000000) != 0)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = *&v51;
  }

  v53 = v93;
  sub_3EBE04();
  v54 = v97;
  sub_3EBD54();
  v49(v53, v18);
  if (v86(v54, 1, v36) == 1)
  {
    sub_FCF8(v54, &qword_4EDC98);
    v93 = 0;
  }

  else
  {
    sub_127870();
    v93 = sub_3ECEA4();
    (*(v85 + 8))(v54, v36);
  }

  v55 = v94;
  sub_3EBE04();
  v56 = sub_3EBDC4();
  v58 = v57;
  v49(v55, v18);
  if (v58)
  {
    v59 = v56;
  }

  else
  {
    v59 = 0;
  }

  v97 = v59;
  v60 = 0xE000000000000000;
  if (v58)
  {
    v60 = v58;
  }

  v94 = v60;
  v61 = v98;
  sub_3EBE04();
  v62 = sub_3EBD04();
  v64 = v63;
  v49(v61, v18);
  if (v64)
  {
    v65 = 0;
  }

  else
  {
    v65 = v62;
  }

  v98 = v65;
  v66 = v99;
  sub_3EBE04();
  v67 = sub_3EBD04();
  v69 = v68;
  v49(v66, v18);
  if (v69)
  {
    v70 = 0;
  }

  else
  {
    v70 = v67;
  }

  v88 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5055C0);
  sub_3EBE04();
  v71 = v105;
  v99 = v18;
  v72 = v91;
  v91(v105, v111, v112);
  sub_3B3068();
  sub_3EC574();
  v73 = v116;
  v74 = v100;
  sub_FBD0(v110, v100, &qword_4F29E0);
  sub_3EC634();
  sub_3EBE04();
  v72(v71, v111, v112);
  v75 = v102;
  sub_3EC574();
  type metadata accessor for Ratings(0);
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  *(v76 + 24) = 0;
  v77 = v89;
  *(v76 + 32) = v90;
  *(v76 + 40) = v77;
  *(v76 + 48) = v52;
  v78 = v98;
  *(v76 + 56) = v93;
  *(v76 + 64) = v78;
  v79 = v94;
  *(v76 + 72) = v97;
  *(v76 + 80) = v79;
  *(v76 + 88) = v88;
  *(v76 + 96) = v73;
  *(v76 + 104) = v96;
  v80 = v101;
  sub_FBD0(v74, v101, &qword_4F29E0);
  v81 = v95;
  if ((*(*(v95 - 8) + 48))(v80, 1, v95) == 1)
  {
    v104(v106, v99);
    sub_FCF8(v74, &qword_4F29E0);
    sub_FCF8(v110, &qword_4F29E0);
    sub_FCF8(v80, &qword_4F29E0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  else
  {
    *(&v114 + 1) = v81;
    v115 = sub_3A7D14(&unk_503DB0);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v113);
    sub_FACC(v80, boxed_opaque_existential_0Tm, &qword_4F29E8);
    v104(v106, v99);
    sub_FCF8(v74, &qword_4F29E0);
    sub_FCF8(v110, &qword_4F29E0);
  }

  v83 = v114;
  *(v76 + 112) = v113;
  *(v76 + 128) = v83;
  *(v76 + 144) = v115;
  sub_FACC(v75, v76 + OBJC_IVAR____TtC8ShelfKit7Ratings_impressionMetrics, &unk_4E9170);
  (*(v108 + 8))(v111, v112);
  return v76;
}

uint64_t sub_3B22F4(char *a1, uint64_t a2)
{
  v54 = a2;
  v3 = sub_3E5FC4();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v49 = &v39 - v6;
  v55 = sub_3EBF94();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v11 = sub_3EBDF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  __chkstk_darwin(v20);
  v22 = &v39 - v21;
  sub_3EBE04();
  v44 = sub_3EBDC4();
  v50 = v23;
  v24 = *(v12 + 8);
  v24(v22, v11);
  sub_3EBE04();
  v25 = sub_3EBD64();
  v52 = v11;
  v24(v19, v11);
  sub_3EBE04();
  v26 = v53 + 16;
  v27 = *(v53 + 16);
  v27(v10, v54, v55);
  type metadata accessor for HttpTemplateAction();
  swift_allocObject();
  v28 = v51;
  v29 = HttpTemplateAction.init(deserializing:using:)(v16, v10);
  if (v28)
  {

    (*(v53 + 8))(v54, v55);
    v24(a1, v52);
  }

  else
  {
    v51 = v29;
    sub_3EC634();
    v41 = a1;
    sub_3EBE04();
    v40 = v24;
    v42 = v25;
    v30 = v54;
    v27(v45, v54, v55);
    sub_3EC574();
    type metadata accessor for TapToRate(0);
    v26 = swift_allocObject();
    v31 = v46;
    sub_3E5FB4();
    v32 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v34 = v33;
    (*(v53 + 8))(v30, v55);
    v40(v41, v52);
    (*(v47 + 8))(v31, v48);
    *(v26 + 16) = v32;
    *(v26 + 24) = v34;
    v35 = v49;
    v36 = v50;
    *(v26 + 32) = v44;
    *(v26 + 40) = v36;
    v37 = v42;
    if ((v42 & 0x100000000) != 0)
    {
      v37 = 0;
    }

    *(v26 + 48) = v37;
    *(v26 + 52) = 0;
    *(v26 + 56) = v51;
    sub_FACC(v35, v26 + OBJC_IVAR____TtC8ShelfKit9TapToRate_impressionMetrics, &unk_4E9170);
  }

  return v26;
}

uint64_t sub_3B2810(uint64_t a1)
{
  result = sub_3AF5D8(&qword_4FCAF8, 255, type metadata accessor for Review);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3B288C(uint64_t a1)
{
  result = sub_3AF5D8(&qword_505128, 255, type metadata accessor for Review);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3B28E8(uint64_t a1)
{
  result = sub_3AF5D8(&qword_505130, 255, type metadata accessor for Ratings);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3B2964(uint64_t a1)
{
  result = sub_3AF5D8(&qword_505138, 255, type metadata accessor for TapToRate);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3B29E0(uint64_t a1)
{
  result = sub_3AF5D8(&qword_505140, 255, type metadata accessor for ReviewActions);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3B2A5C@<X0>(uint64_t *a1@<X8>)
{
  result = Review.shelfUniqueId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_3B2A88(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_3B2ACC@<X0>(uint64_t *a1@<X8>)
{
  result = Ratings.shelfUniqueId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_3B2AFC@<X0>(uint64_t *a1@<X8>)
{
  result = ReviewActions.shelfUniqueId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t keypath_set_3Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

void sub_3B2B74()
{
  sub_4D334();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_3B2D10()
{
  sub_4D334();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_3B2E58()
{
  sub_4D334();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_3B2F6C()
{
  sub_4D334();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_3B3068()
{
  result = qword_5055C8;
  if (!qword_5055C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5055C0);
    sub_3AF5D8(&qword_5055D0, 255, type metadata accessor for Review);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5055C8);
  }

  return result;
}

uint64_t static SeparatorStyle.== infix(_:_:)(int a1, int a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) != 0x40)
      {
        return 0;
      }

      return (a1 ^ a2 ^ 1) & 1;
    }

    if (a1 == 128)
    {
      if (a2 == 128)
      {
        return 1;
      }
    }

    else if (a2 == 129)
    {
      return 1;
    }
  }

  else if (a2 < 0x40u)
  {
    return (a1 ^ a2 ^ 1) & 1;
  }

  return 0;
}

uint64_t sub_3B31AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 < 0x40)
    {
      return (v2 ^ v3 ^ 1) & 1;
    }

    return 0;
  }

  if (v2 >> 6 == 1)
  {
    if ((v3 & 0xC0) != 0x40)
    {
      return 0;
    }

    return (v2 ^ v3 ^ 1) & 1;
  }

  if (v2 == 128)
  {
    if (v3 != 128)
    {
      return 0;
    }
  }

  else if (v3 != 129)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_3B3228(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    _s7EpisodeVMa();
    return a2;
  }

  return result;
}

id Shelf.__allocating_init(id:contentType:title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:seeAllAction:headerButtonItems:isHorizontal:items:url:backgroundColor:rowsPerColumn:mergeWhenFetched:hideFromCarPlay:headerArtwork:shelvesIntent:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = v22;

  v42 = v23;
  v29 = objc_allocWithZone(v23);
  v30 = &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
  *v30 = a1;
  v30[1] = a2;
  *&v29[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType] = a3;
  v31 = &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
  *v31 = a4;
  v31[1] = a5;
  v32 = &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
  *v32 = a6;
  v32[1] = a7;
  v29[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow] = a8;
  sub_FBD0(a9, &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &qword_4F1AB8);
  *&v29[OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction] = a10;
  v29[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal] = a12;
  *&v29[OBJC_IVAR____TtC8ShelfKit5Shelf_items] = a13;
  sub_FBD0(a14, &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &unk_4E9EE0);
  v33 = &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
  *v33 = a15;
  v33[8] = a16;
  *&v29[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn] = a17;
  v29[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched] = a18;
  v29[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay] = a19;
  sub_FBD0(a20, &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &qword_4F1D50);
  v34 = &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
  if (*(a21 + 24))
  {
    sub_1F958(a21, v34);
  }

  else
  {
    v35 = *a21;
    v36 = *(a21 + 16);
    *(v34 + 32) = *(a21 + 32);
    *v34 = v35;
    *(v34 + 16) = v36;
  }

  sub_FBD0(a22, &v29[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &unk_4E9170);
  v43.receiver = v29;
  v43.super_class = v42;
  v37 = objc_msgSendSuper2(&v43, "init");
  sub_FCF8(a22, &unk_4E9170);
  if (*(a21 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a21);
  }

  sub_FCF8(a20, &qword_4F1D50);
  sub_FCF8(a14, &unk_4E9EE0);
  sub_FCF8(a9, &qword_4F1AB8);
  return v37;
}

uint64_t ShelfContentType.string.getter(uint64_t a1)
{
  result = 0x74616D726F666E69;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return 0x65646F73697065;
    case 2:
    case 6:
      return 0xD000000000000012;
    case 3:
    case 4:
      return 0x5365646F73697065;
    case 5:
      return 0xD000000000000011;
    case 7:
      return 0x6867696C68676968;
    case 8:
      return 0xD00000000000001BLL;
    case 9:
    case 13:
    case 37:
      return 0xD000000000000010;
    case 10:
      v3 = 0x4C6C6C616D73;
      goto LABEL_36;
    case 11:
      return 0x6F4C6D756964656DLL;
    case 12:
      v3 = 0x4C656772616CLL;
LABEL_36:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
      break;
    case 14:
      result = 0x656C626174696465;
      break;
    case 15:
    case 42:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x6E6F69746361;
      break;
    case 17:
      result = 0x7374736163646F70;
      break;
    case 18:
      result = 0x656C626174696465;
      break;
    case 19:
      result = 0x6B726F77747261;
      break;
    case 20:
      result = 0x7061726761726170;
      break;
    case 21:
      result = 0x6169726F74696465;
      break;
    case 22:
      result = 0x65736163776F6873;
      break;
    case 23:
      result = 0x6B63697262;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
      result = 0xD000000000000014;
      break;
    case 26:
      result = 0x4865646F73697065;
      break;
    case 27:
      result = 0x73676E69746172;
      break;
    case 28:
      result = 0x7461526F54706174;
      break;
    case 29:
      result = 0x73776569766572;
      break;
    case 30:
      result = 0x6341776569766572;
      break;
    case 31:
      result = 0x6E6F73726570;
      break;
    case 32:
      result = 0x656C746974;
      break;
    case 33:
      result = 0x7473694C6B6E696CLL;
      break;
    case 34:
    case 49:
      result = 0xD000000000000016;
      break;
    case 35:
      result = 0x614C686372616573;
      break;
    case 36:
      result = 0x6F77737265776F70;
      break;
    case 38:
      result = 0x6C656E6E616863;
      break;
    case 39:
      result = 0x4F6C656E6E616863;
      break;
    case 40:
      result = 0x486C656E6E616863;
      break;
    case 41:
      result = 0x61426C6C65737075;
      break;
    case 43:
      result = 0xD000000000000018;
      break;
    case 44:
      result = 0x6C6562616CLL;
      break;
    case 45:
      result = 0x4865646F73697065;
      break;
    case 46:
      result = 0x6F726548776F6873;
      break;
    case 47:
      result = 0x616553646578696DLL;
      break;
    case 48:
      result = 0xD000000000000015;
      break;
    case 50:
      result = 0x7045686372616573;
      break;
    case 51:
      result = 0x6853686372616573;
      break;
    case 52:
      result = 0x6843686372616573;
      break;
    case 53:
      result = 0x6143686372616573;
      break;
    case 54:
      result = 0x6948686372616573;
      break;
    case 55:
      result = 0xD000000000000011;
      break;
    case 56:
      result = 0xD000000000000011;
      break;
    case 57:
      result = 0x676E6964616F6CLL;
      break;
    case 58:
      result = 0x636E657265666572;
      break;
    case 59:
      result = 0x79726F6765746163;
      break;
    default:
      sub_3EE854();
      __break(1u);
      JUMPOUT(0x3B3C80);
  }

  return result;
}

uint64_t Shelf.__allocating_init(deserializing:using:)(uint64_t a1, char *a2)
{
  v225 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v3 - 8);
  v212 = &v175 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505618);
  __chkstk_darwin(v5 - 8);
  v200 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v203 = &v175 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v9 - 8);
  v202 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v211 = &v175 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v13 - 8);
  v209 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v210 = &v175 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98);
  __chkstk_darwin(v17 - 8);
  v188 = &v175 - v18;
  v190 = sub_3ECED4();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v182 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = type metadata accessor for LegacyActionMenu(0);
  v184 = *(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 - 8);
  __chkstk_darwin(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0);
  v181 = (&v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v180 = &v175 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v23 - 8);
  v207 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v208 = (&v175 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505620);
  __chkstk_darwin(v27 - 8);
  v183 = &v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v201 = &v175 - v30;
  v31 = sub_3EBF94();
  v32 = *(v31 - 8);
  v219 = v31;
  v220 = v32;
  __chkstk_darwin(v31);
  v191 = &v175 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v205 = &v175 - v35;
  __chkstk_darwin(v36);
  v206 = &v175 - v37;
  v38 = sub_3EBDF4();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v199 = &v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v198 = &v175 - v42;
  __chkstk_darwin(v43);
  v197 = &v175 - v44;
  __chkstk_darwin(v45);
  v196 = &v175 - v46;
  __chkstk_darwin(v47);
  v195 = &v175 - v48;
  __chkstk_darwin(v49);
  v194 = &v175 - v50;
  __chkstk_darwin(v51);
  v193 = &v175 - v52;
  __chkstk_darwin(v53);
  v192 = &v175 - v54;
  __chkstk_darwin(v55);
  v187 = &v175 - v56;
  __chkstk_darwin(v57);
  v186 = &v175 - v58;
  __chkstk_darwin(v59);
  v61 = &v175 - v60;
  __chkstk_darwin(v62);
  v213 = &v175 - v63;
  __chkstk_darwin(v64);
  v66 = &v175 - v65;
  __chkstk_darwin(v67);
  v69 = &v175 - v68;
  v70 = a1;
  sub_3EBE04();
  v71 = sub_3EBDC4();
  v73 = v72;
  v76 = *(v39 + 8);
  v74 = v39 + 8;
  v75 = v76;
  v76(v69, v38);
  if (!v73)
  {
    v79 = sub_3ECEE4();
    sub_3BC234(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v85 = 0x54746E65746E6F63;
    v85[1] = 0xEB00000000657079;
    v85[2] = v217;
    (*(*(v79 - 8) + 104))(v85, enum case for JSONError.missingProperty(_:), v79);
    swift_willThrow();
    v75(v70, v38);
    goto LABEL_5;
  }

  v215 = v75;
  v216 = v74;
  v214 = v38;
  v218 = v70;

  v77 = sub_3BA6F4(v71, v73);
  if (v78)
  {
    v79 = sub_3ECEE4();
    sub_3BC234(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v81 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_3F5630;
    *(v82 + 32) = swift_allocError();
    *v83 = v71;
    v83[1] = v73;
    v83[2] = &type metadata for ShelfContentType;
    v84 = *(*(v79 - 8) + 104);
    v84(v83, enum case for JSONError.unknownCase(_:), v79);
    *v81 = 0x54746E65746E6F63;
    v81[1] = 0xEB00000000657079;
    v81[2] = v217;
    v81[3] = v82;
    v84(v81, enum case for JSONError.malformedProperty(_:), v79);
    swift_willThrow();
    v215(v218, v214);
LABEL_5:
    v86 = v225;
    v87 = v219;
    v88 = v220;
LABEL_8:
    (*(v88 + 8))(v86, v87);
    return v79;
  }

  v89 = v77;

  v90 = v218;
  sub_3EBE04();
  v91 = v89;
  v92 = v89;
  v86 = v225;
  v93 = v204;
  v94 = sub_3B80A8(v66, v91, v225);
  v87 = v219;
  v88 = v220;
  if (v93)
  {
    v79 = v214;
    v95 = v215;
    v215(v90, v214);
    v95(v66, v79);
    goto LABEL_8;
  }

  v97 = v94;
  v215(v66, v214);
  v179 = v92;
  *&v222 = v92;
  if (qword_4E8970 != -1)
  {
    swift_once();
  }

  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1538);
  __swift_project_value_buffer(v98, qword_539620);
  v99 = v205;
  sub_3EBF04();
  v175 = v97;
  *&v222 = v97;
  v100 = v206;
  if (qword_4E8978 != -1)
  {
    swift_once();
  }

  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1528);
  __swift_project_value_buffer(v101, qword_539638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1530);
  sub_3EBF04();
  v102 = *(v88 + 8);
  v177 = v88 + 8;
  v176 = v102;
  v102(v99, v87);
  v103 = v99;
  sub_3EBE04();
  v178 = *(v88 + 16);
  v178(v99, v100, v87);
  sub_3BC234(&qword_505630, type metadata accessor for LegacyActionMenu);
  v104 = v88 + 16;
  v105 = v201;
  v106 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  sub_3EC574();
  v107 = v105;
  v108 = v183;
  sub_FBD0(v107, v183, &qword_505620);
  v109 = (*(v184 + 48))(v108, 1, v106);
  v220 = v104;
  if (v109 == 1)
  {
    sub_FCF8(v108, &qword_505620);
    v204 = type metadata accessor for ActionMenu(0);
    v110 = v213;
    sub_3EBE04();
    v178(v103, v206, v87);
    sub_3BC234(&qword_505638, type metadata accessor for ActionMenu);
    sub_3EC574();
  }

  else
  {
    v111 = v180;
    sub_3BB9B0(v108, v180);
    v112 = v181;
    sub_3BBAC0(v111, v181, type metadata accessor for LegacyActionMenu);
    v113 = v208;
    ActionMenu.init(from:)(v112, v208);
    sub_3BBB28(v111, type metadata accessor for LegacyActionMenu);
    v114 = type metadata accessor for ActionMenu(0);
    (*(*(v114 - 8) + 56))(v113, 0, 1, v114);
    v110 = v213;
  }

  sub_3EBE04();
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v115 = v110;
  v116 = v214;
  v117 = v215;
  v215(v115, v214);
  sub_3EBE04();
  v118 = v188;
  sub_3EBD54();
  v119 = v61;
  v120 = v118;
  v117(v119, v116);
  v121 = v189;
  v122 = v190;
  if ((*(v189 + 48))(v120, 1, v190) == 1)
  {
    v204 = 0;
    sub_FCF8(v120, &qword_4EDC98);
  }

  else
  {
    v123 = v182;
    v124 = (*(v121 + 32))(v182, v120, v122);
    __chkstk_darwin(v124);
    *(&v175 - 2) = v225;
    type metadata accessor for HeaderButtonItem();
    sub_3ECE94();
    v204 = 0;

    v86 = v225;
    (*(v121 + 8))(v123, v122);
  }

  v125 = v186;
  sub_3EBE04();
  v126 = sub_3EBD04();
  v128 = v127;
  v215(v125, v116);
  if ((v128 & 1) != 0 || v126 <= 0)
  {
    if (v179 - 1 > 0xF)
    {
      v126 = 1;
    }

    else
    {
      v126 = qword_4202E8[v179 - 1];
    }
  }

  v190 = v126;
  sub_3E7784();
  sub_3EBE04();
  v129 = v205;
  v130 = v178;
  (v178)();
  sub_3BC234(&qword_4EECC8, &type metadata accessor for ArtworkModel);
  sub_3EC574();
  sub_3EC634();
  sub_3EBE04();
  v130(v129, v86, v87);
  sub_3EC574();
  v131 = v187;
  sub_3EBE04();
  v132 = v191;
  v130(v191, v86, v87);
  v133 = v204;
  v134 = sub_3DC304(v131, v132);
  if (v133)
  {

    v191 = 0;
    v204 = 0;
    LODWORD(v189) = 255;
  }

  else
  {
    LODWORD(v189) = v135;
    v191 = v134;
    v204 = 0;
  }

  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505640);
  sub_3EBE04();
  v130(v205, v225, v219);
  sub_886BC(&qword_505648, &qword_505640);
  v137 = v203;
  sub_3EC574();
  v138 = v192;
  sub_3EBE04();
  v220 = sub_3EBDC4();
  v213 = v139;
  v140 = v214;
  v141 = v215;
  v215(v138, v214);
  v142 = v193;
  sub_3EBE04();
  v205 = sub_3EBDC4();
  v192 = v143;
  v141(v142, v140);
  v144 = v194;
  sub_3EBE04();
  v193 = sub_3EBDC4();
  v188 = v145;
  v141(v144, v140);
  v146 = v195;
  sub_3EBE04();
  LODWORD(v194) = sub_3EBD24();
  v141(v146, v140);
  sub_FBD0(v208, v207, &qword_4F1AB8);
  v147 = v196;
  sub_3EBE04();
  LODWORD(v195) = sub_3EBD24();
  v141(v147, v140);
  v148 = v197;
  sub_3EBE04();
  sub_3EBD14();
  v141(v148, v140);
  v149 = v198;
  sub_3EBE04();
  v150 = sub_3EBD24();
  v141(v149, v140);
  v151 = v199;
  sub_3EBE04();
  v152 = sub_3EBD24();
  v141(v151, v140);
  sub_FBD0(v210, v209, &qword_4F1D50);
  v153 = v137;
  v154 = v200;
  sub_FBD0(v153, v200, &qword_505618);
  v155 = *(v136 - 8);
  if ((*(v155 + 48))(v154, 1, v136) == 1)
  {
    sub_FCF8(v154, &qword_505618);
    v222 = 0u;
    v223 = 0u;
    v224 = 0;
  }

  else
  {
    *(&v223 + 1) = v136;
    v224 = sub_886BC(&qword_505650, &qword_505640);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v222);
    (*(v155 + 32))(boxed_opaque_existential_0Tm, v154, v136);
  }

  v157 = v175;
  v158 = v179;
  sub_FBD0(v211, v202, &unk_4E9170);
  v159 = v217;
  v160 = objc_allocWithZone(v217);
  v161 = &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
  v162 = v213;
  *v161 = v220;
  v161[1] = v162;
  *&v160[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType] = v158;
  v163 = &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
  v164 = v192;
  *v163 = v205;
  v163[1] = v164;
  v165 = &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
  v166 = v188;
  *v165 = v193;
  v165[1] = v166;
  v160[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow] = v194 & 1;
  sub_FBD0(v207, &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &qword_4F1AB8);
  *&v160[OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction] = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  v160[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal] = v195 & 1;
  *&v160[OBJC_IVAR____TtC8ShelfKit5Shelf_items] = v157;
  sub_FBD0(v212, &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &unk_4E9EE0);
  v167 = &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
  *v167 = v191;
  v167[8] = v189;
  *&v160[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn] = v190;
  v160[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched] = v150 & 1;
  v160[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay] = v152 & 1;
  sub_FBD0(v209, &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &qword_4F1D50);
  v168 = &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
  if (*(&v223 + 1))
  {
    sub_1F958(&v222, v168);
  }

  else
  {
    v169 = v222;
    v170 = v223;
    *(v168 + 32) = v224;
    *v168 = v169;
    *(v168 + 16) = v170;
  }

  v171 = v218;
  v172 = v202;
  sub_FBD0(v202, &v160[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &unk_4E9170);
  v221.receiver = v160;
  v221.super_class = v159;
  v79 = objc_msgSendSuper2(&v221, "init");
  v215(v171, v214);
  sub_FCF8(v172, &unk_4E9170);
  sub_FCF8(v209, &qword_4F1D50);
  sub_FCF8(v212, &unk_4E9EE0);
  sub_FCF8(v207, &qword_4F1AB8);
  sub_FCF8(v203, &qword_505618);
  sub_FCF8(v211, &unk_4E9170);
  sub_FCF8(v210, &qword_4F1D50);
  sub_FCF8(v208, &qword_4F1AB8);
  sub_FCF8(v201, &qword_505620);
  v173 = v219;
  v174 = v176;
  v176(v206, v219);
  if (*(&v223 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v222);
  }

  v174(v225, v173);
  return v79;
}

BOOL ShelfContentType.isCompatible(with:)(Swift::UInt a1, char a2, unint64_t a3)
{
  if (a2)
  {
    return 0;
  }

  v6 = sub_34ABC(&off_4AFCC8);
  if (a3 <= 0x27 && ((1 << a3) & 0xC000003C00) != 0)
  {
    v7 = sub_33C67C(a1, v6);

    return v7;
  }

  else
  {

    return a3 == a1;
  }
}

uint64_t sub_3B5950@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v325 = a2;
  v324 = a1;
  v319 = a4;
  v5 = sub_3EBF94();
  v6 = *(v5 - 8);
  v320 = v5;
  v321 = v6;
  __chkstk_darwin(v5);
  v308 = &v282 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v309 = &v282 - v9;
  __chkstk_darwin(v10);
  v310 = &v282 - v11;
  __chkstk_darwin(v12);
  v307 = &v282 - v13;
  __chkstk_darwin(v14);
  v306 = &v282 - v15;
  __chkstk_darwin(v16);
  v305 = &v282 - v17;
  __chkstk_darwin(v18);
  v304 = &v282 - v19;
  __chkstk_darwin(v20);
  v303 = &v282 - v21;
  __chkstk_darwin(v22);
  v313 = &v282 - v23;
  __chkstk_darwin(v24);
  v314 = &v282 - v25;
  __chkstk_darwin(v26);
  v312 = &v282 - v27;
  __chkstk_darwin(v28);
  v302 = &v282 - v29;
  __chkstk_darwin(v30);
  v300 = &v282 - v31;
  __chkstk_darwin(v32);
  v301 = &v282 - v33;
  __chkstk_darwin(v34);
  v299 = &v282 - v35;
  __chkstk_darwin(v36);
  v298 = &v282 - v37;
  __chkstk_darwin(v38);
  v297 = &v282 - v39;
  __chkstk_darwin(v40);
  v296 = &v282 - v41;
  __chkstk_darwin(v42);
  v295 = &v282 - v43;
  __chkstk_darwin(v44);
  v293 = &v282 - v45;
  __chkstk_darwin(v46);
  v292 = &v282 - v47;
  __chkstk_darwin(v48);
  v291 = &v282 - v49;
  __chkstk_darwin(v50);
  v294 = &v282 - v51;
  __chkstk_darwin(v52);
  v317 = &v282 - v53;
  __chkstk_darwin(v54);
  v289 = &v282 - v55;
  __chkstk_darwin(v56);
  v290 = &v282 - v57;
  __chkstk_darwin(v58);
  v315 = &v282 - v59;
  __chkstk_darwin(v60);
  v316 = &v282 - v61;
  __chkstk_darwin(v62);
  v318 = &v282 - v63;
  v64 = sub_3EBDF4();
  v322 = *(v64 - 8);
  v323 = v64;
  __chkstk_darwin(v64);
  v66 = &v282 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  __chkstk_darwin(v68);
  __chkstk_darwin(v69);
  __chkstk_darwin(&v282 - v70);
  __chkstk_darwin(v71);
  __chkstk_darwin(v72);
  __chkstk_darwin(v73);
  __chkstk_darwin(v74);
  __chkstk_darwin(v75);
  __chkstk_darwin(v76);
  v311 = &v282 - v77;
  __chkstk_darwin(v78);
  v288 = &v282 - v79;
  __chkstk_darwin(v80);
  v287 = &v282 - v81;
  __chkstk_darwin(v82);
  v286 = &v282 - v83;
  __chkstk_darwin(v84);
  v284 = &v282 - v85;
  __chkstk_darwin(v86);
  v283 = &v282 - v87;
  __chkstk_darwin(v88);
  v285 = &v282 - v89;
  __chkstk_darwin(v90);
  v282 = &v282 - v91;
  __chkstk_darwin(v92);
  __chkstk_darwin(v93);
  v95 = &v282 - v94;
  __chkstk_darwin(v96);
  v98 = &v282 - v97;
  __chkstk_darwin(v99);
  v101 = &v282 - v100;
  __chkstk_darwin(v102);
  __chkstk_darwin(v103);
  v105 = &v282 - v104;
  __chkstk_darwin(v106);
  v108 = &v282 - v107;
  __chkstk_darwin(v109);
  v111 = &v282 - v110;
  __chkstk_darwin(v112);
  v114 = &v282 - v113;
  __chkstk_darwin(v115);
  v117 = &v282 - v116;
  v131 = __chkstk_darwin(v118);
  v132 = a3;
  v133 = &v282 - v127;
  switch(v132)
  {
    case 0:
      v238 = v288;
      (*(v322 + 16))(v288, v324, v323, v131);
      v239 = v302;
      (*(v321 + 16))(v302, v325, v320);
      v240 = type metadata accessor for Information();
      v154 = v319;
      v319[3] = v240;
      v154[4] = sub_3BC234(&qword_505798, type metadata accessor for Information);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v154);
      v242 = v326;
      result = Information.init(deserializing:using:)(v238, v239, boxed_opaque_existential_0Tm);
      if (v242)
      {
        goto LABEL_40;
      }

      return result;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 45:
      (*(v322 + 16))(&v282 - v127, v324, v323, v131);
      v135 = v318;
      (*(v321 + 16))(v318, v325, v320);
      v136 = type metadata accessor for LegacyEpisodeLockup();
      swift_allocObject();
      v137 = v326;
      result = LegacyEpisodeLockup.init(deserializing:using:)(v133, v135);
      if (v137)
      {
        return result;
      }

      v138 = result;
      v139 = v319;
      v319[3] = v136;
      v140 = &qword_4F2460;
      v141 = type metadata accessor for LegacyEpisodeLockup;
      goto LABEL_57;
    case 7:
      v220 = v128;
      (*(v322 + 16))(v128, v324, v323, v131);
      v221 = v295;
      (*(v321 + 16))(v295, v325, v320);
      v222 = v326;
      result = sub_372638(v220, v221);
      if (v222)
      {
        return result;
      }

      v166 = result;
      v223 = type metadata accessor for HighlightItem();
      v167 = v319;
      v319[3] = v223;
      v168 = &unk_503AC8;
      v169 = type metadata accessor for HighlightItem;
      goto LABEL_62;
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
      v148 = v323;
      v149 = [objc_opt_self() supportsShowLockup];
      v150 = *(v322 + 16);
      v151 = (v321 + 16);
      if (v149)
      {
        v150(v117, v324, v148);
        v152 = v316;
        (*v151)(v316, v325, v320);
        v153 = type metadata accessor for ShowLockup();
        v154 = v319;
        v319[3] = v153;
        v154[4] = sub_3BC234(&qword_5057C0, type metadata accessor for ShowLockup);
        v155 = __swift_allocate_boxed_opaque_existential_0Tm(v154);
        v156 = v326;
        result = ShowLockup.init(deserializing:using:)(v117, v152, v155);
        if (v156)
        {
LABEL_40:
          v147 = v154;
LABEL_41:
          result = __swift_deallocate_boxed_opaque_existential_0Tm(v147);
        }
      }

      else
      {
        v150(v114, v324, v148);
        v157 = v315;
        (*v151)(v315, v325, v320);
        v158 = type metadata accessor for LegacyLockup();
        swift_allocObject();
        v159 = v114;
        v160 = v157;
LABEL_55:
        v268 = v326;
        result = LegacyLockup.init(deserializing:using:)(v159, v160);
        if (!v268)
        {
          v138 = result;
          v139 = v319;
          v319[3] = v158;
          v140 = &qword_4EF840;
          v141 = type metadata accessor for LegacyLockup;
LABEL_57:
          v190 = v141;
LABEL_58:
          result = sub_3BC234(v140, v190);
          v139[4] = result;
          *v139 = v138;
        }
      }

      break;
    case 16:
    case 17:
    case 18:
    case 33:
    case 34:
    case 36:
    case 37:
      (*(v322 + 16))(v105, v324, v323, v131);
      v142 = v317;
      (*(v321 + 16))(v317, v325, v320);
      v143 = type metadata accessor for Link();
      v144 = v319;
      v319[3] = v143;
      v144[4] = sub_3BC234(&qword_4F09D0, type metadata accessor for Link);
      v145 = __swift_allocate_boxed_opaque_existential_0Tm(v144);
      v146 = v326;
      result = Link.init(deserializing:using:)(v105, v142, v145);
      if (!v146)
      {
        return result;
      }

      v147 = v144;
      goto LABEL_41;
    case 19:
      (*(v322 + 16))(v121, v324, v323, v131);
      (*(v321 + 16))(v294, v325, v320);
      v206 = sub_3E7784();
      v154 = v319;
      v319[3] = v206;
      v154[4] = sub_3BC234(&qword_4EECC8, &type metadata accessor for ArtworkModel);
      __swift_allocate_boxed_opaque_existential_0Tm(v154);
      v207 = v326;
      result = sub_3E76C4();
      if (!v207)
      {
        return result;
      }

      goto LABEL_40;
    case 20:
      (*(v322 + 16))(v101, v324, v323, v131);
      v204 = v291;
      (*(v321 + 16))(v291, v325, v320);
      v205 = v101;
      goto LABEL_60;
    case 21:
      (*(v322 + 16))(v98, v324, v323, v131);
      v243 = v292;
      (*(v321 + 16))(v292, v325, v320);
      v244 = v326;
      result = sub_35E4B4(v98, v243);
      if (v244)
      {
        return result;
      }

      v166 = result;
      v245 = type metadata accessor for EditorialCard();
      v167 = v319;
      v319[3] = v245;
      v168 = &qword_503090;
      v169 = type metadata accessor for EditorialCard;
      goto LABEL_62;
    case 22:
      (*(v322 + 16))(v95, v324, v323, v131);
      v260 = v293;
      (*(v321 + 16))(v293, v325, v320);
      v261 = v326;
      result = sub_3BD014(v95, v260);
      if (v261)
      {
        return result;
      }

      v166 = result;
      v262 = type metadata accessor for Showcase();
      v167 = v319;
      v319[3] = v262;
      v168 = &unk_5057B8;
      v169 = type metadata accessor for Showcase;
      goto LABEL_62;
    case 23:
      v229 = v282;
      (*(v322 + 16))(v282, v324, v323, v131);
      v230 = v296;
      (*(v321 + 16))(v296, v325, v320);
      v231 = v326;
      result = sub_356B10(v229, v230);
      if (v231)
      {
        return result;
      }

      v166 = result;
      v232 = type metadata accessor for Brick();
      v167 = v319;
      v319[3] = v232;
      v168 = &qword_502C00;
      v169 = type metadata accessor for Brick;
      goto LABEL_62;
    case 24:
      v233 = v322;
      v234 = type metadata accessor for ShowHeader();
      v235 = v285;
      (*(v233 + 16))(v285, v324, v323);
      v236 = v297;
      (*(v321 + 16))(v297, v325, v320);
      v237 = v326;
      result = ShowHeader.__allocating_init(deserializing:using:)(v235, v236);
      if (v237)
      {
        return result;
      }

      v139 = v319;
      v319[3] = v234;
      v190 = type metadata accessor for ShowHeader;
      v138 = result;
      v140 = &unk_5057B0;
      goto LABEL_58;
    case 25:
    case 26:
      v161 = v322;
      v162 = type metadata accessor for EpisodeHeader();
      v163 = v311;
      (*(v161 + 16))(v311, v324, v323);
      v164 = v312;
      (*(v321 + 16))(v312, v325, v320);
      v165 = v326;
      result = EpisodeHeader.__allocating_init(deserializing:using:)(v163, v164);
      if (v165)
      {
        return result;
      }

      v166 = result;
      v167 = v319;
      v319[3] = v162;
      v168 = &unk_505790;
      v169 = type metadata accessor for EpisodeHeader;
      goto LABEL_62;
    case 27:
      v216 = v283;
      (*(v322 + 16))(v283, v324, v323, v131);
      v217 = v298;
      (*(v321 + 16))(v298, v325, v320);
      v218 = v326;
      result = sub_3B1680(v216, v217);
      if (v218)
      {
        return result;
      }

      v138 = result;
      v219 = type metadata accessor for Ratings(0);
      v139 = v319;
      v319[3] = v219;
      v140 = &unk_503850;
      v190 = type metadata accessor for Ratings;
      goto LABEL_58;
    case 28:
      v191 = v284;
      (*(v322 + 16))(v284, v324, v323, v131);
      v192 = v299;
      (*(v321 + 16))(v299, v325, v320);
      v193 = v326;
      result = sub_3B22F4(v191, v192);
      if (v193)
      {
        return result;
      }

      v138 = result;
      v194 = type metadata accessor for TapToRate(0);
      v139 = v319;
      v319[3] = v194;
      v140 = &unk_5057A8;
      v190 = type metadata accessor for TapToRate;
      goto LABEL_58;
    case 29:
      v186 = v286;
      (*(v322 + 16))(v286, v324, v323, v131);
      v187 = v301;
      (*(v321 + 16))(v301, v325, v320);
      v188 = type metadata accessor for Review(0);
      swift_allocObject();
      v189 = v326;
      result = Review.init(deserializing:using:)(v186, v187);
      if (v189)
      {
        return result;
      }

      v138 = result;
      v139 = v319;
      v319[3] = v188;
      v140 = &qword_5055D0;
      v190 = type metadata accessor for Review;
      goto LABEL_58;
    case 30:
      v263 = v287;
      (*(v322 + 16))(v287, v324, v323, v131);
      v264 = v300;
      (*(v321 + 16))(v300, v325, v320);
      v265 = v326;
      result = sub_3B1360(v263, v264);
      if (v265)
      {
        return result;
      }

      v166 = result;
      v266 = type metadata accessor for ReviewActions(0);
      v167 = v319;
      v319[3] = v266;
      v168 = &unk_5057A0;
      v169 = type metadata accessor for ReviewActions;
      goto LABEL_62;
    case 31:
      (*(v322 + 16))(v111, v324, v323, v131);
      v267 = v290;
      (*(v321 + 16))(v290, v325, v320);
      v158 = type metadata accessor for LegacyLockup();
      swift_allocObject();
      v159 = v111;
      v160 = v267;
      goto LABEL_55;
    case 32:
      (*(v322 + 16))(v108, v324, v323, v131);
      v204 = v289;
      (*(v321 + 16))(v289, v325, v320);
      v205 = v108;
LABEL_60:
      v269 = v326;
      result = sub_3A9C90(v205, v204);
      if (v269)
      {
        return result;
      }

      v166 = result;
      v270 = type metadata accessor for Paragraph();
      v167 = v319;
      v319[3] = v270;
      v168 = &qword_4F74B8;
      v169 = type metadata accessor for Paragraph;
      goto LABEL_62;
    case 35:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 55:
    case 56:
      return sub_3B772C(v319);
    case 38:
    case 39:
      v170 = v323;
      v318 = *(v322 + 16);
      v171 = v120;
      v172 = v122;
      (v318)(v120, v324, v323, v131);
      v173 = v320;
      v174 = v321;
      v324 = *(v321 + 16);
      v175 = v314;
      v324(v314, v325, v320);
      v176 = type metadata accessor for LegacyChannelLockup();
      v317 = swift_allocObject();
      v325 = v171;
      v177 = v170;
      v178 = v173;
      (v318)(v172, v171, v177);
      v179 = v313;
      v324(v313, v175, v173);
      v180 = v326;
      v181 = LegacyLockup.init(deserializing:using:)(v172, v179);
      if (v180)
      {
        (*(v174 + 8))(v175, v173);
        return (*(v322 + 8))(v325, v323);
      }

      else
      {
        v280 = v181;
        (*(v174 + 8))(v175, v178);
        (*(v322 + 8))(v325, v323);
        v281 = v319;
        v319[3] = v176;
        result = sub_3BC234(&qword_4F23C0, type metadata accessor for LegacyChannelLockup);
        v281[4] = result;
        *v281 = v280;
      }

      return result;
    case 40:
      v211 = v322;
      v212 = v126;
      v213 = type metadata accessor for ChannelHeader();
      (*(v211 + 16))(v212, v324, v323);
      v214 = v303;
      (*(v321 + 16))(v303, v325, v320);
      v215 = v326;
      result = ChannelHeader.__allocating_init(deserializing:using:)(v212, v214);
      if (v215)
      {
        return result;
      }

      v166 = result;
      v167 = v319;
      v319[3] = v213;
      v168 = &unk_505788;
      v169 = type metadata accessor for ChannelHeader;
      goto LABEL_62;
    case 41:
      v224 = v322;
      v225 = v125;
      v226 = type metadata accessor for UpsellBanner();
      (*(v224 + 16))(v225, v324, v323);
      v227 = v304;
      (*(v321 + 16))(v304, v325, v320);
      v228 = v326;
      result = UpsellBanner.__allocating_init(deserializing:using:)(v225, v227);
      if (v228)
      {
        return result;
      }

      v166 = result;
      v167 = v319;
      v319[3] = v226;
      v168 = &qword_502F38;
      v169 = type metadata accessor for UpsellBanner;
      goto LABEL_62;
    case 42:
      v246 = v124;
      (*(v322 + 16))(v124, v324, v323, v131);
      v247 = v305;
      (*(v321 + 16))(v305, v325, v320);
      v248 = v326;
      result = sub_160EA4(v246, v247);
      if (v248)
      {
        return result;
      }

      v138 = result;
      v249 = type metadata accessor for EpisodeUpsellBannerModel();
      v139 = v319;
      v319[3] = v249;
      v140 = &unk_505780;
      v190 = type metadata accessor for EpisodeUpsellBannerModel;
      goto LABEL_58;
    case 43:
      v271 = v123;
      (*(v322 + 16))(v123, v324, v323, v131);
      v272 = v306;
      (*(v321 + 16))(v306, v325, v320);
      v273 = v326;
      result = sub_38103C(v271, v272);
      if (!v273)
      {
        v276 = result;
        v277 = v274;
        v278 = v275;
        v279 = v319;
        v319[3] = &type metadata for Label;
        result = sub_3BC1E0();
        v279[4] = result;
        *v279 = v276;
        v279[1] = v277;
        *(v279 + 16) = v278 & 1;
      }

      return result;
    case 44:
      v195 = v119;
      (*(v322 + 16))(v131);
      v196 = v307;
      (*(v321 + 16))(v307, v325, v320);
      v197 = v326;
      result = sub_38103C(v195, v196);
      if (!v197)
      {
        v200 = v319;
        v319[3] = &type metadata for Label;
        v201 = result;
        v202 = v198;
        v203 = v199;
        result = sub_3BC1E0();
        v200[4] = result;
        *v200 = v201;
        v200[1] = v202;
        *(v200 + 16) = v203 & 1;
      }

      return result;
    case 54:
      v182 = v129;
      v183 = v322;
      type metadata accessor for SearchHint();
      (*(v183 + 16))(v182, v324, v323);
      (*(v321 + 16))(v310, v325, v320);
      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505768);
      v185 = v319;
      v319[3] = v184;
      v185[4] = sub_3BC12C();
      __swift_allocate_boxed_opaque_existential_0Tm(v185);
      sub_3BC234(&qword_4F3FE0, type metadata accessor for SearchHint);
      return sub_3EC574();
    case 57:
      v250 = type metadata accessor for EmptyModel();
      v251 = v319;
      v319[3] = v250;
      v251[4] = sub_3BC234(&qword_505760, type metadata accessor for EmptyModel);
      v252 = __swift_allocate_boxed_opaque_existential_0Tm(v251);
      v253 = *(v250 + 20);
      v254 = sub_3EC634();
      result = (*(*(v254 - 8) + 56))(v252 + v253, 1, 1, v254);
      *v252 = 0x676E6964616F6CLL;
      v252[1] = 0xE700000000000000;
      return result;
    case 58:
      v208 = v130;
      (*(v322 + 16))(v130, v324, v323, v131);
      v209 = v309;
      (*(v321 + 16))(v309, v325, v320);
      v154 = v319;
      v319[3] = &type metadata for AnyReferenceLink;
      v154[4] = sub_112C60();
      *v154 = swift_allocObject();
      v210 = v326;
      result = sub_3DEED8(v208, v209);
      if (!v210)
      {
        return result;
      }

      goto LABEL_40;
    case 59:
      v255 = v322;
      v256 = type metadata accessor for CategoryHeader();
      (*(v255 + 16))(v66, v324, v323);
      v257 = v308;
      (*(v321 + 16))(v308, v325, v320);
      v258 = v66;
      v259 = v326;
      result = CategoryHeader.__allocating_init(deserializing:using:)(v258, v257);
      if (v259)
      {
        return result;
      }

      v166 = result;
      v167 = v319;
      v319[3] = v256;
      v168 = &unk_505758;
      v169 = type metadata accessor for CategoryHeader;
LABEL_62:
      result = sub_3BC234(v168, v169);
      v167[4] = result;
      *v167 = v166;
      break;
    default:
      v327 = v132;
      sub_3EE854();
      __break(1u);
      JUMPOUT(0x3B763CLL);
  }

  return result;
}

uint64_t sub_3B772C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_4E8C48 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5057C8);
  __swift_project_value_buffer(v3, qword_5055D8);
  sub_886BC(&qword_5057D0, &qword_5057C8);
  sub_3BC27C();
  sub_3BC2D0();
  result = sub_3EC474();
  if (!v1)
  {
    sub_1F958(v17, v13);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5057E8);
    if (swift_dynamicCast())
    {
      sub_2688E4(v12, &v14);
      v6 = v15;
      v7 = v16;
      v8 = __swift_project_boxed_opaque_existential_1(&v14, v15);
      a1[3] = v6;
      a1[4] = v7;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);
      (*(*(v6 - 8) + 16))(boxed_opaque_existential_0Tm, v8, v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    }

    else
    {
      memset(v12, 0, sizeof(v12));
      sub_FCF8(v12, &qword_5057F0);
      v10 = sub_3ECEE4();
      sub_3BC234(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      *v11 = v5;
      v11[1] = _swiftEmptyArrayStorage;
      (*(*(v10 - 8) + 104))(v11, enum case for JSONError.malformedDocument(_:), v10);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1Tm(v17);
    }
  }

  return result;
}

uint64_t sub_3B79E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5057C8);
  __swift_allocate_value_buffer(v0, qword_5055D8);
  __swift_project_value_buffer(v0, qword_5055D8);
  sub_3BC324();
  sub_3BC27C();
  sub_3BC2D0();
  return sub_3EC2F4();
}

unint64_t sub_3B7A90@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_3BBAB0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t Shelf.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit5Shelf_id);

  return v1;
}

uint64_t Shelf.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit5Shelf_title);

  return v1;
}

uint64_t Shelf.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle);

  return v1;
}

void *Shelf.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor);
  sub_1F7418(v1, *(v0 + OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor + 8));
  return v1;
}

__n128 Shelf.shelvesIntent.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent;
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent + 24))
  {
    sub_1F958(v2, a1);
  }

  else
  {
    result = *v2;
    v4 = *(v2 + 16);
    *a1 = *v2;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(v2 + 32);
  }

  return result;
}

id Shelf.init(id:contentType:title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:seeAllAction:headerButtonItems:isHorizontal:items:url:backgroundColor:rowsPerColumn:mergeWhenFetched:hideFromCarPlay:headerArtwork:shelvesIntent:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = v22;
  ObjectType = swift_getObjectType();

  v28 = &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
  *v28 = a1;
  v28[1] = a2;
  *&v23[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType] = a3;
  v29 = &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
  *v29 = a4;
  v29[1] = a5;
  v30 = &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
  *v30 = a6;
  v30[1] = a7;
  v23[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow] = a8;
  sub_FBD0(a9, &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &qword_4F1AB8);
  *&v23[OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction] = a10;
  v23[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal] = a12;
  *&v23[OBJC_IVAR____TtC8ShelfKit5Shelf_items] = a13;
  sub_FBD0(a14, &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &unk_4E9EE0);
  v31 = &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
  *v31 = a15;
  v31[8] = a16;
  *&v23[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn] = a17;
  v23[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched] = a18;
  v23[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay] = a19;
  sub_FBD0(a20, &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &qword_4F1D50);
  v32 = &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
  if (*(a21 + 24))
  {
    sub_1F958(a21, v32);
  }

  else
  {
    v33 = *(a21 + 16);
    *v32 = *a21;
    *(v32 + 16) = v33;
    *(v32 + 32) = *(a21 + 32);
  }

  sub_FBD0(a22, &v23[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &unk_4E9170);
  v41.receiver = v23;
  v41.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v41, "init");
  sub_FCF8(a22, &unk_4E9170);
  if (*(a21 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a21);
  }

  sub_FCF8(a20, &qword_4F1D50);
  sub_FCF8(a14, &unk_4E9EE0);
  sub_FCF8(a9, &qword_4F1AB8);
  return v34;
}

char *sub_3B80A8(uint64_t a1, unint64_t a2, char *a3)
{
  v41 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D0);
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v34 - v5;
  v6 = sub_3ECEE4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = sub_3ECED4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3EBD54();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v19 = (*(v14 + 32))(v16, v12, v13);
    __chkstk_darwin(v19);
    v20 = v41;
    *(&v34 - 2) = a2;
    *(&v34 - 1) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9B70);
    v12 = sub_3ECE94();
    (*(v14 + 8))(v16, v13);
    return v12;
  }

  sub_FCF8(v12, &qword_4EDC98);
  v17 = sub_3EBDC4();
  if (!v18)
  {
    goto LABEL_15;
  }

  if (v17 != 0xD000000000000010 || v18 != 0x8000000000427530)
  {
    v21 = sub_3EE804();

    if (v21)
    {
      goto LABEL_8;
    }

LABEL_15:
    sub_3BC234(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v25 = v24;
    v26 = type metadata accessor for Shelf(0);
    *v25 = 0x736D657469;
    v25[1] = 0xE500000000000000;
    v25[2] = v26;
    (*(v7 + 104))(v25, enum case for JSONError.missingProperty(_:), v6);
    swift_willThrow();
    return v12;
  }

LABEL_8:
  if (qword_4E8978 != -1)
  {
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1528);
  __swift_project_value_buffer(v22, qword_539638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1530);
  sub_3EBFA4();
  v12 = v39;
  if (v39)
  {
    if (qword_4E8970 != -1)
    {
      swift_once();
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1538);
    __swift_project_value_buffer(v23, qword_539620);
    sub_3EBFB4();
    if ((v40 & 1) == 0)
    {
      v27 = v39;
      v28 = sub_34ABC(&off_4AFCC8);
      if (a2 <= 0x27 && ((1 << a2) & 0xC000003C00) != 0)
      {
        v29 = sub_33C67C(v27, v28);

        if (v29)
        {
          return v12;
        }
      }

      else
      {

        if (v27 == a2)
        {
          return v12;
        }
      }
    }
  }

  v30 = type metadata accessor for Shelf(0);
  *v9 = 0xD000000000000010;
  v9[1] = 0x8000000000427530;
  v9[2] = v30;
  v9[3] = _swiftEmptyArrayStorage;
  (*(v7 + 104))(v9, enum case for JSONError.malformedProperty(_:), v6);
  v31 = v34;
  sub_3EBF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D8);
  sub_3EBFB4();
  (*(v35 + 8))(v31, v36);
  sub_FBD0(&v39, v37, qword_4EB0E0);
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(v37, v38);
    sub_3BC234(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    (*(v7 + 16))(v32, v9, v6);
    sub_3EC854();
    sub_FCF8(&v39, qword_4EB0E0);
    (*(v7 + 8))(v9, v6);

    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    sub_FCF8(&v39, qword_4EB0E0);
    (*(v7 + 8))(v9, v6);
    sub_FCF8(v37, qword_4EB0E0);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_3B8818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_3EBF94();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EBDF4();
  v12 = __chkstk_darwin(v11);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, a1, v12);
  (*(v8 + 16))(v10, a2, v7);
  HeaderButtonItem.init(deserializing:using:)(v14, v10, a3);
  if (v3)
  {

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for HeaderButtonItem();
  return (*(*(v17 - 8) + 56))(a3, v16, 1, v17);
}

id Shelf.init(merging:with:)(_BYTE *a1, _BYTE *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType];
  if (v7 == *&a2[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType])
  {
    v31 = ObjectType;
    v8 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_id + 8];
    v9 = &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
    *v9 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
    v9[1] = v8;
    *&v3[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType] = v7;
    v10 = OBJC_IVAR____TtC8ShelfKit5Shelf_items;
    swift_beginAccess();
    v11 = *&a1[v10];
    swift_beginAccess();
    v33 = v11;

    sub_418E8(v12);
    *&v3[OBJC_IVAR____TtC8ShelfKit5Shelf_items] = v11;
    v13 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_title + 8];
    v14 = &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
    *v14 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
    v14[1] = v13;
    sub_FBD0(&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &qword_4F1AB8);
    v15 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle + 8];
    v16 = &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
    *v16 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
    v16[1] = v15;
    v3[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow] = a1[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow];
    v17 = OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction;
    v18 = *&a2[OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction];
    if (!v18)
    {
    }

    *&v3[v17] = v18;
    v3[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal] = a1[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal];
    sub_FBD0(&a2[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &unk_4E9EE0);
    v3[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched] = a2[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched];
    v3[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay] = a2[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay];
    v19 = OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor;
    v20 = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
    v21 = a1[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor + 8];
    v22 = v20;
    v23 = a1[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor + 8];
    if (v21 == 255)
    {
      v22 = *&a2[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
      v23 = a2[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor + 8];
      sub_1F7418(v22, v23);
      v19 = OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor;
    }

    v24 = &v3[v19];
    *v24 = v22;
    v24[8] = v23;
    *&v3[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn] = *&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn];
    sub_FBD0(&a2[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &qword_4F1D50);
    sub_FBD0(&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &unk_4E9170);
    v25 = &a1[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
    v26 = &v3[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
    if (*&a1[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent + 24])
    {
      sub_1F958(v25, v26);
    }

    else
    {
      v28 = *v25;
      v29 = *(v25 + 16);
      *(v26 + 32) = *(v25 + 32);
      *v26 = v28;
      *(v26 + 16) = v29;
    }

    sub_1F7418(v20, v21);
    v32.receiver = v3;
    v32.super_class = v31;
    v30 = objc_msgSendSuper2(&v32, "init");

    return v30;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_3B8F24@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  result = Shelf.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t Shelf.__allocating_init(contentType:seeAllContentType:title:allItems:maxItems:isHorizontal:preferredNumberOfRows:horizontalLayoutFollowsVerticalLayoutRules:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8, unsigned __int8 a9, unint64_t a10, unsigned __int8 a11)
{
  v12 = v11;
  v149 = a8;
  v150 = a7;
  v160 = a4;
  v161 = a5;
  LODWORD(v168) = a3;
  v147 = sub_3E5FC4();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v143 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_3EC1F4();
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v144 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = &v127 - v19;
  v136 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v136);
  v141 = (&v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = sub_3E63E4();
  __chkstk_darwin(v130);
  v132 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_3EC164();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0);
  __chkstk_darwin(v23 - 8);
  v131 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v129 = &v127 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v27 - 8);
  v29 = &v127 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v30 - 8);
  v166 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v127 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v35 - 8);
  v37 = &v127 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v38 - 8);
  v151 = &v127 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v127 - v41;
  v128 = a1;
  if ((v168 & 1) == 0)
  {
    a1 = a2;
  }

  v43 = type metadata accessor for ActionMenu(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v140 = v43;
  v139 = v45;
  v138 = v44 + 56;
  (v45)(v42, 1, 1);
  v46 = sub_3E5DC4();
  v47 = *(v46 - 8);
  v163 = *(v47 + 56);
  v164 = v46;
  v162 = v47 + 56;
  v163(v37, 1, 1);
  v48 = sub_3E7784();
  v49 = *(v48 - 8);
  v158 = *(v49 + 56);
  v159 = v48;
  v157 = v49 + 56;
  v158(v34, 1, 1);
  v50 = sub_3EC634();
  v171 = 0u;
  v172 = 0u;
  v173 = 0;
  v51 = *(v50 - 8);
  v52 = *(v51 + 56);
  v156 = v50;
  v155 = v52;
  v154 = v51 + 56;
  (v52)(v29, 1, 1);
  v53 = v12;
  v54 = objc_allocWithZone(v12);
  v55 = &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
  *v55 = 0;
  v55[1] = 0;
  *&v54[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType] = a1;
  v56 = &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
  *v56 = 0;
  v56[1] = 0;
  v57 = &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
  *v57 = 0;
  v57[1] = 0;
  v54[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow] = 0;
  sub_FBD0(v42, &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &qword_4F1AB8);
  *&v54[OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction] = 0;
  v54[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal] = 0;
  v167 = a6;
  *&v54[OBJC_IVAR____TtC8ShelfKit5Shelf_items] = a6;
  v165 = v37;
  sub_FBD0(v37, &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &unk_4E9EE0);
  v58 = &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
  *v58 = 3;
  v58[8] = 2;
  *&v54[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn] = 1;
  v54[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched] = 0;
  v54[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay] = 0;
  v168 = v34;
  sub_FBD0(v34, &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &qword_4F1D50);
  v59 = &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
  if (*(&v172 + 1))
  {
    sub_1F958(&v171, v59);
  }

  else
  {
    v60 = v171;
    v61 = v172;
    *(v59 + 32) = v173;
    *v59 = v60;
    *(v59 + 16) = v61;
  }

  sub_FBD0(v29, &v54[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &unk_4E9170);
  v170.receiver = v54;
  v170.super_class = v53;
  v153 = v53;

  v62 = objc_msgSendSuper2(&v170, "init");
  v152 = v29;
  sub_FCF8(v29, &unk_4E9170);
  v63 = v132;
  if (*(&v172 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v171);
  }

  v137 = a9;
  sub_FCF8(v168, &qword_4F1D50);
  sub_FCF8(v165, &unk_4E9EE0);
  sub_FCF8(v42, &qword_4F1AB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_3F7950;
  *(v64 + 32) = v62;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8);
  v66 = *(v65 - 8);
  v67 = v129;
  (*(v66 + 56))(v129, 1, 1, v65);
  (v158)(v166, 1, 1, v159);
  v68 = v161;

  v127 = v62;
  v69 = v133;
  sub_3EC154();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Page();
  v70 = swift_allocObject();
  *(v70 + 16) = v64;
  v71 = v67;
  *(v70 + 24) = v160;
  *(v70 + 32) = v68;
  *(v70 + 40) = 0;
  *(v70 + 48) = 0;
  *(v70 + 56) = _swiftEmptyArrayStorage;
  *(v70 + 64) = 0;
  *(v70 + 68) = 1;
  *(v70 + 72) = _swiftEmptyArrayStorage;
  *(v70 + 80) = 0;
  sub_3BBAC0(v63, v70 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, &type metadata accessor for InteractionContext.Page);
  v72 = v67;
  v73 = v131;
  sub_FBD0(v72, v131, &qword_4F29E0);
  if ((*(v66 + 48))(v73, 1, v65) == 1)
  {
    sub_3BBB28(v63, &type metadata accessor for InteractionContext.Page);
    sub_FCF8(v71, &qword_4F29E0);
    sub_FCF8(v73, &qword_4F29E0);
    v171 = 0u;
    v172 = 0u;
    v173 = 0;
  }

  else
  {
    *(&v172 + 1) = v65;
    v173 = sub_886BC(&unk_503DB0, &qword_4F29E8);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v171);
    sub_FACC(v73, boxed_opaque_existential_0Tm, &qword_4F29E8);
    sub_3BBB28(v63, &type metadata accessor for InteractionContext.Page);
    sub_FCF8(v71, &qword_4F29E0);
  }

  v75 = v152;
  v76 = v70 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent;
  v77 = v171;
  v78 = v172;
  *(v76 + 32) = v173;
  *v76 = v77;
  *(v76 + 16) = v78;
  *(v70 + OBJC_IVAR____TtC8ShelfKit4Page_isIncomplete) = 0;
  *(v70 + OBJC_IVAR____TtC8ShelfKit4Page_isExplicit) = 0;
  sub_FACC(v166, v70 + OBJC_IVAR____TtC8ShelfKit4Page_uber, &qword_4F1D50);
  v79 = v70 + OBJC_IVAR____TtC8ShelfKit4Page_showAdamId;
  *v79 = 0;
  *(v79 + 8) = 1;
  v80 = v70 + OBJC_IVAR____TtC8ShelfKit4Page_channelAdamId;
  *v80 = 0;
  *(v80 + 8) = 1;
  *(v70 + OBJC_IVAR____TtC8ShelfKit4Page_mapiInLibrary) = 2;
  (*(v134 + 32))(v70 + OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics, v69, v135);
  v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9860) + 48);
  v82 = v141;
  *v141 = v70;
  (v163)(v82 + v81, 1, 1, v164);
  swift_storeEnumTagMultiPayload();
  v83 = objc_opt_self();
  v135 = v70;

  v84 = [v83 mainBundle];
  v126._countAndFlagsBits = 0xE000000000000000;
  v174._countAndFlagsBits = 0x535F4E4F49544341;
  v174._object = 0xEE004C4C415F4545;
  v175.value._countAndFlagsBits = 0;
  v175.value._object = 0;
  v85.super.isa = v84;
  v176._countAndFlagsBits = 0;
  v176._object = 0xE000000000000000;
  v166 = sub_3E5A74(v174, v175, v85, v176, v126);
  v152 = v86;

  v87 = v142;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for FlowAction(0);
  v88 = swift_allocObject();
  v136 = type metadata accessor for FlowDestination;
  sub_3BBAC0(v82, v88 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v89 = (v88 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v89 = 0;
  v89[1] = 0;
  *(v88 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v88 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v88 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v90 = v146;
  v91 = v144;
  v92 = v148;
  (*(v146 + 16))(v144, v87, v148);
  v155(v75, 1, 1, v156);
  v93 = v143;
  sub_3E5FB4();
  v94 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v96 = v95;
  (*(v145 + 8))(v93, v147);
  (*(v90 + 8))(v87, v92);
  sub_3BBB28(v82, v136);
  *(v88 + 16) = v94;
  *(v88 + 24) = v96;
  v97 = v152;
  *(v88 + 32) = v166;
  *(v88 + 40) = v97;
  *(v88 + 48) = 48;
  (*(v90 + 32))(v88 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v91, v92);
  sub_FACC(v75, v88 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v98 = v150;
  v99 = v167;
  if (v149)
  {
    v98 = *(v167 + 16);
  }

  v100 = a10;
  v101 = *(v167 + 16);
  v102 = v151;
  v103 = v137;
  if (v137)
  {
    v104 = v101 >> 3;
    if (v101 >> 3 >= a10)
    {
      v104 = a10;
    }

    if (v104 <= 1)
    {
      v100 = 1;
    }

    else
    {
      v100 = v104;
    }

    if (12 * v100 >= v101)
    {
      v93 = *(v167 + 16);
    }

    else
    {
      v93 = 12 * v100;
    }

    if (v101 <= 8 * v100 || (a11 & (v98 == v101)) != 0)
    {

      v88 = 0;
      if ((a11 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if ((a11 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v98 == v101)
  {

    v88 = 0;
    v93 = v98;
    goto LABEL_31;
  }

  v139(v102, 1, 1, v140);
  if ((v98 & 0x8000000000000000) == 0)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_31:
  v139(v102, 1, 1, v140);
  v98 = v93;
LABEL_32:
  v105 = *(v99 + 16);
  if (v105 >= v98)
  {
    v105 = v98;
  }

  v106 = 2 * v105;
  if (v98)
  {
    v107 = v106 + 1;
  }

  else
  {
    v107 = 1;
  }

  sub_3EE824();
  swift_unknownObjectRetain_n();

  v108 = swift_dynamicCastClass();
  if (!v108)
  {
    swift_unknownObjectRelease();
    v108 = _swiftEmptyArrayStorage;
  }

  v109 = v108[2];

  if (v109 == v107 >> 1)
  {
    v110 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v111 = v153;
    v112 = v165;
    if (v110)
    {
      goto LABEL_43;
    }

    v110 = _swiftEmptyArrayStorage;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_269038(v99, v99 + 32, 0, v107);
    v110 = v125;
    v111 = v153;
    v112 = v165;
  }

  swift_unknownObjectRelease();
LABEL_43:
  result = (v163)(v112, 1, 1, v164);
  if (v100 < 0)
  {
    __break(1u);
  }

  else
  {
    v114 = v168;
    (v158)(v168, 1, 1, v159);
    v173 = 0;
    v171 = 0u;
    v172 = 0u;
    v155(v75, 1, 1, v156);
    v115 = objc_allocWithZone(v111);
    v116 = &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_id];
    *v116 = 0;
    v116[1] = 0;
    *&v115[OBJC_IVAR____TtC8ShelfKit5Shelf_contentType] = v128;
    v117 = &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_title];
    v118 = v161;
    *v117 = v160;
    v117[1] = v118;
    v119 = &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_subtitle];
    *v119 = 0;
    v119[1] = 0;
    v115[OBJC_IVAR____TtC8ShelfKit5Shelf_displaySubtitleAsEyebrow] = 0;
    sub_FBD0(v102, &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_titleContextMenu], &qword_4F1AB8);
    *&v115[OBJC_IVAR____TtC8ShelfKit5Shelf_seeAllAction] = v88;
    v115[OBJC_IVAR____TtC8ShelfKit5Shelf_isHorizontal] = v103 & 1;
    *&v115[OBJC_IVAR____TtC8ShelfKit5Shelf_items] = v110;
    sub_FBD0(v112, &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_url], &unk_4E9EE0);
    v120 = &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_backgroundColor];
    *v120 = 3;
    v120[8] = 2;
    *&v115[OBJC_IVAR____TtC8ShelfKit5Shelf_rowsPerColumn] = v100;
    v115[OBJC_IVAR____TtC8ShelfKit5Shelf_mergeWhenFetched] = 0;
    v115[OBJC_IVAR____TtC8ShelfKit5Shelf_hideFromCarPlay] = 0;
    sub_FBD0(v114, &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_headerArtwork], &qword_4F1D50);
    v121 = &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_shelvesIntent];
    if (*(&v172 + 1))
    {
      sub_1F958(&v171, v121);
    }

    else
    {
      v122 = v171;
      v123 = v172;
      *(v121 + 32) = v173;
      *v121 = v122;
      *(v121 + 16) = v123;
    }

    sub_FBD0(v75, &v115[OBJC_IVAR____TtC8ShelfKit5Shelf_impressionMetrics], &unk_4E9170);
    v169.receiver = v115;
    v169.super_class = v153;

    v124 = objc_msgSendSuper2(&v169, "init");

    sub_FCF8(v75, &unk_4E9170);
    if (*(&v172 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v171);
    }

    sub_FCF8(v168, &qword_4F1D50);
    sub_FCF8(v112, &unk_4E9EE0);
    sub_FCF8(v102, &qword_4F1AB8);
    return v124;
  }

  return result;
}

uint64_t sub_3BA340@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D0);
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v23 - v10;
  v24 = sub_3ECEE4();
  v12 = *(v24 - 8);
  __chkstk_darwin(v24);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = a4;
  result = sub_3B5950(a1, a3, a2, a4);
  if (v4)
  {
    v16 = type metadata accessor for Shelf(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_3F5630;
    *(v17 + 32) = v4;
    *v14 = 0x736D657469;
    v14[1] = 0xE500000000000000;
    v14[2] = v16;
    v14[3] = v17;
    v18 = v12;
    v19 = *(v12 + 104);
    v20 = v24;
    v19(v14, enum case for JSONError.malformedProperty(_:), v24);
    swift_errorRetain();
    sub_3EBF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D8);
    sub_3EBFB4();
    (*(v9 + 8))(v11, v23);
    sub_FBD0(v27, v25, qword_4EB0E0);
    if (v26)
    {
      __swift_project_boxed_opaque_existential_1(v25, v26);
      sub_3BC234(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      (*(v18 + 16))(v21, v14, v20);
      sub_3EC854();

      sub_FCF8(v27, qword_4EB0E0);
      (*(v18 + 8))(v14, v20);

      result = __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }

    else
    {

      sub_FCF8(v27, qword_4EB0E0);
      (*(v18 + 8))(v14, v20);
      result = sub_FCF8(v25, qword_4EB0E0);
    }

    v22 = v28;
    v28[4] = 0;
    *v22 = 0u;
    *(v22 + 1) = 0u;
  }

  return result;
}

uint64_t sub_3BA6F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616D726F666E69 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_3EE804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F73697065 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000004302A0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5365646F73697065 && a2 == 0xED000068736F6F77 || (sub_3EE804() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5365646F73697065 && a2 == 0xED00006863726165 || (sub_3EE804() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000430280 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000430260 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6867696C68676968 && a2 == 0xED00006D65744974 || (sub_3EE804() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x636F4C6C6C616D73 && a2 == 0xEB0000000070756BLL || (sub_3EE804() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F4C6D756964656DLL && a2 == 0xEC00000070756B63 || (sub_3EE804() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x636F4C656772616CLL && a2 == 0xEB0000000070756BLL || (sub_3EE804() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000430200 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7374736163646F70 && a2 == 0xEE006E6F69746341 || (sub_3EE804() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x656C626174696465 && a2 == 0xEE006E6F69746341 || (sub_3EE804() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x80000000004301E0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x7061726761726170 && a2 == 0xE900000000000068 || (sub_3EE804() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6169726F74696465 && a2 == 0xED0000647261436CLL || (sub_3EE804() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x65736163776F6873 && a2 == 0xE800000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6B63697262 && a2 == 0xE500000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000423340 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x4865646F73697065 && a2 == 0xED00007265646165 || (sub_3EE804() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x73676E69746172 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x7461526F54706174 && a2 == 0xE900000000000065 || (sub_3EE804() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x73776569766572 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6341776569766572 && a2 == 0xED0000736E6F6974 || (sub_3EE804() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x657370696C6C65 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x7473694C6B6E696CLL && a2 == 0xEE00656E696C6E49 || (sub_3EE804() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000004231C0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x614C686372616573 && a2 == 0xED0000676E69646ELL || (sub_3EE804() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x6F77737265776F70 && a2 == 0xEB0000000068736FLL || (sub_3EE804() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000004232B0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000423360 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x4F6C656E6E616863 && a2 == 0xEE006C616E696472 || (sub_3EE804() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x486C656E6E616863 && a2 == 0xED00007265646165 || (sub_3EE804() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0x61426C6C65737075 && a2 == 0xEC00000072656E6ELL || (sub_3EE804() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000423430 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000000423450 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x4865646F73697065 && a2 == 0xEB000000006F7265 || (sub_3EE804() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x6F726548776F6873 && a2 == 0xE800000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0x616553646578696DLL && a2 == 0xEB00000000686372 || (sub_3EE804() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000004234A0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000423480 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0x7045686372616573 && a2 == 0xED000065646F7369 || (sub_3EE804() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0x6853686372616573 && a2 == 0xEA0000000000776FLL || (sub_3EE804() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0x6843686372616573 && a2 == 0xED00006C656E6E61 || (sub_3EE804() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0x6143686372616573 && a2 == 0xEE0079726F676574 || (sub_3EE804() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000004234F0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000423530 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0x6948686372616573 && a2 == 0xEA0000000000746ELL || (sub_3EE804() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 57;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006B6E694C65 || (sub_3EE804() & 1) != 0)
  {

    return 58;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xEE00726564616548)
  {

    return 59;
  }

  else
  {
    v6 = sub_3EE804();

    if (v6)
    {
      return 59;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_3BB9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyActionMenu(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3BBA14(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_3ED3C4();

    return sub_3ED494();
  }

  return result;
}

unint64_t sub_3BBAB0(unint64_t result)
{
  if (result > 0x3B)
  {
    return 0;
  }

  return result;
}

uint64_t sub_3BBAC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3BBB28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_3BBB8C()
{
  result = qword_505658;
  if (!qword_505658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_505658);
  }

  return result;
}

void sub_3BBC00()
{
  sub_3BBCE0(319, &qword_5056E0, type metadata accessor for Shelf);
  if (v0 <= 0x3F)
  {
    sub_3BBCE0(319, &qword_5056E8, type metadata accessor for ModernShelf);
    if (v1 <= 0x3F)
    {
      sub_3BBD44();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_3BBCE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_3BBD44()
{
  if (!qword_5056F0)
  {
    v0 = type metadata accessor for Shelf(0);
    if (!v1)
    {
      atomic_store(v0, &qword_5056F0);
    }
  }
}

void sub_3BBDA4()
{
  sub_3BC084(319, &qword_4FC8B0, type metadata accessor for ActionMenu);
  if (v0 <= 0x3F)
  {
    sub_3BC084(319, &qword_4E9918, &type metadata accessor for URL);
    if (v1 <= 0x3F)
    {
      sub_3BC084(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
      if (v2 <= 0x3F)
      {
        sub_3BC084(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_3BC084(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_3BC0F4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_3BC12C()
{
  result = qword_505770;
  if (!qword_505770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_505768);
    sub_3BC234(&qword_4F3FE0, type metadata accessor for SearchHint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_505770);
  }

  return result;
}

unint64_t sub_3BC1E0()
{
  result = qword_505778;
  if (!qword_505778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_505778);
  }

  return result;
}

uint64_t sub_3BC234(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_3BC27C()
{
  result = qword_5057D8;
  if (!qword_5057D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5057D8);
  }

  return result;
}

unint64_t sub_3BC2D0()
{
  result = qword_5057E0;
  if (!qword_5057E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5057E0);
  }

  return result;
}

unint64_t sub_3BC324()
{
  result = qword_5057F8;
  if (!qword_5057F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5057F8);
  }

  return result;
}

uint64_t Showcase.showName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit8Showcase_showName);

  return v1;
}

BOOL Showcase.hasThumbnailArtwork.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  sub_FBD0(v0 + OBJC_IVAR____TtC8ShelfKit8Showcase_thumbnailArtwork, &v7 - v2, &qword_4F1D50);
  v4 = sub_3E7784();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_FCF8(v3, &qword_4F1D50);
  return v5;
}

void *Showcase.__allocating_init(caption:title:subtitle:overlayingCaption:artwork:showArtwork:showAdamId:showName:showMetadata:thumbnailArtwork:clickAction:playAction:impressionMetrics:shelfUniqueId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v28 = swift_allocObject();
  v28[4] = a1;
  v28[5] = a2;
  v28[6] = a3;
  v28[7] = a4;
  v28[8] = a5;
  v28[9] = a6;
  v28[10] = a7;
  v28[11] = a8;
  sub_FACC(a9, v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_artwork, &qword_4F1D50);
  sub_FACC(a10, v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_showArtwork, &qword_4F1D50);
  v29 = v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_showAdamId;
  *v29 = a11;
  v29[8] = a12 & 1;
  v30 = (v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_showName);
  *v30 = a13;
  v30[1] = a14;
  *(v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_showMetadata) = a15;
  sub_FACC(a16, v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_thumbnailArtwork, &qword_4F1D50);
  v31 = v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_clickAction;
  v32 = *(a17 + 16);
  *v31 = *a17;
  *(v31 + 1) = v32;
  *(v31 + 4) = *(a17 + 32);
  *(v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_playAction) = a18;
  sub_FACC(a19, v28 + OBJC_IVAR____TtC8ShelfKit8Showcase_impressionMetrics, &unk_4E9170);
  v28[2] = a20;
  v28[3] = a21;
  return v28;
}

void *Showcase.init(caption:title:subtitle:overlayingCaption:artwork:showArtwork:showAdamId:showName:showMetadata:thumbnailArtwork:clickAction:playAction:impressionMetrics:shelfUniqueId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a4;
  v21[8] = a5;
  v21[9] = a6;
  v21[10] = a7;
  v21[11] = a8;
  sub_FACC(a9, v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_artwork, &qword_4F1D50);
  sub_FACC(a10, v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_showArtwork, &qword_4F1D50);
  v22 = v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_showAdamId;
  *v22 = a11;
  v22[8] = a12 & 1;
  v23 = (v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_showName);
  *v23 = a13;
  v23[1] = a14;
  *(v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_showMetadata) = a15;
  sub_FACC(a16, v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_thumbnailArtwork, &qword_4F1D50);
  v24 = v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_clickAction;
  v25 = *(a17 + 16);
  *v24 = *a17;
  *(v24 + 1) = v25;
  *(v24 + 4) = *(a17 + 32);
  *(v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_playAction) = a18;
  sub_FACC(a19, v21 + OBJC_IVAR____TtC8ShelfKit8Showcase_impressionMetrics, &unk_4E9170);
  v21[2] = a20;
  v21[3] = a21;
  return v21;
}

uint64_t Showcase.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit8Showcase_artwork, &qword_4F1D50);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit8Showcase_showArtwork, &qword_4F1D50);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit8Showcase_thumbnailArtwork, &qword_4F1D50);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit8Showcase_clickAction, &qword_4EDE00);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit8Showcase_impressionMetrics, &unk_4E9170);
  return v0;
}

uint64_t Showcase.__deallocating_deinit()
{
  Showcase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_3BCB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_3BD014(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t Showcase.displayCaption.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503088);
  __chkstk_darwin(v1 - 8);
  v3 = v8 - v2;
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (v4)
  {
    v8[0] = *(v0 + 32);
    v8[1] = v4;

    sub_3E6034();
    v6 = sub_3E6044();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_68DC4();
    v5 = sub_3EE144();
    sub_FCF8(v3, &qword_503088);
  }

  return v5;
}

uint64_t Showcase.appEntityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit8Showcase_showAdamId + 8))
  {
    v3 = sub_3E5764();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 1, 1, v3);
  }

  else
  {
    sub_3E6D44();
    sub_17A28();
    sub_3EE1F4();
    sub_3BE120(&qword_4E9B80, &type metadata accessor for ShowEntity);
    sub_3E5754();
    v6 = sub_3E5764();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }
}

uint64_t sub_3BCEB0@<X0>(uint64_t a1@<X8>)
{
  if (*(*v1 + OBJC_IVAR____TtC8ShelfKit8Showcase_showAdamId + 8))
  {
    v3 = sub_3E5764();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 1, 1, v3);
  }

  else
  {
    sub_3E6D44();
    sub_17A28();
    sub_3EE1F4();
    sub_3BE120(&qword_4E9B80, &type metadata accessor for ShowEntity);
    sub_3E5754();
    v6 = sub_3E5764();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }
}

uint64_t sub_3BD014(uint64_t a1, uint64_t a2)
{
  v132 = a2;
  v3 = sub_3E5FC4();
  v122 = *(v3 - 8);
  v123 = v3;
  __chkstk_darwin(v3);
  v121 = &v103[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v129 = &v103[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v7 - 8);
  v128 = &v103[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v127 = &v103[-v10];
  __chkstk_darwin(v11);
  v126 = &v103[-v12];
  v137 = sub_3EBF94();
  v131 = *(v137 - 8);
  __chkstk_darwin(v137);
  v134 = &v103[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v116 = &v103[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98);
  __chkstk_darwin(v16 - 8);
  v18 = &v103[-v17];
  v19 = sub_3EBDF4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v120 = &v103[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v119 = &v103[-v23];
  __chkstk_darwin(v24);
  v133 = &v103[-v25];
  __chkstk_darwin(v26);
  v125 = &v103[-v27];
  __chkstk_darwin(v28);
  v124 = &v103[-v29];
  __chkstk_darwin(v30);
  v118 = &v103[-v31];
  __chkstk_darwin(v32);
  v117 = &v103[-v33];
  __chkstk_darwin(v34);
  v36 = &v103[-v35];
  v37 = sub_3ECED4();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v103[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v41);
  v43 = &v103[-v42];
  v138 = a1;
  sub_3EBE04();
  sub_3EBD54();
  v44 = *(v20 + 8);
  v130 = v19;
  v136 = v44;
  v44(v36, v19);
  if ((*(v38 + 48))(v18, 1, v37) == 1)
  {
    v45 = v137;
    sub_FCF8(v18, &qword_4EDC98);
    v116 = _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v38 + 32))(v43, v18, v37);
    (*(v38 + 16))(v40, v43, v37);
    v47 = v131;
    v46 = v132;
    v48 = v137;
    (*(v131 + 16))(v116, v132, v137);
    sub_3BE168();
    v49 = v135;
    v50 = sub_3ED634();
    if (v49)
    {
      (*(v47 + 8))(v46, v48);
      v136(v138, v130);
      return (*(v38 + 8))(v43, v37);
    }

    v116 = v50;
    v45 = v48;
    v135 = 0;
    (*(v38 + 8))(v43, v37);
  }

  v52 = v117;
  sub_3EBE04();
  v115 = sub_3EBDC4();
  v114 = v53;
  v54 = v130;
  v55 = v136;
  v136(v52, v130);
  v56 = v118;
  sub_3EBE04();
  v117 = sub_3EBDC4();
  v113 = v57;
  v55(v56, v54);
  v58 = v124;
  sub_3EBE04();
  v118 = sub_3EBDC4();
  v112 = v59;
  v55(v58, v54);
  v60 = v125;
  sub_3EBE04();
  v111 = sub_3EBDC4();
  v110 = v61;
  v55(v60, v54);
  v62 = sub_3E7784();
  sub_3EBE04();
  v63 = (v131 + 16);
  v64 = *(v131 + 16);
  v108 = v20 + 8;
  v65 = v134;
  v66 = v132;
  (v64)(v134, v132, v45);
  v67 = sub_3BE120(&qword_4EECC8, &type metadata accessor for ArtworkModel);
  v106 = v62;
  sub_3EC574();
  sub_3EBE04();
  v124 = v64;
  v125 = v63;
  (v64)(v65, v66, v45);
  v107 = v67;
  sub_3EC574();
  v68 = v119;
  sub_3EBE04();
  sub_3EBDC4();
  v70 = v69;
  if (v69)
  {
    v71 = v135;
    v72 = sub_3E9494();
    if (v71)
    {

      v109 = sub_3E9484();

      v73 = v68;
      v74 = v130;
      v75 = v136;
      v136(v73, v130);
      v135 = 0;
    }

    else
    {
      v109 = v72;
      v135 = 0;
      v77 = v68;
      v74 = v130;
      v75 = v136;
      v136(v77, v130);
    }
  }

  else
  {
    v76 = v68;
    v74 = v130;
    v75 = v136;
    v136(v76, v130);
    v109 = 0;
  }

  v78 = v120;
  sub_3EBE04();
  v119 = sub_3EBDC4();
  v108 = v79;
  v75(v78, v74);
  v80 = v133;
  sub_3EBE04();
  v81 = v132;
  (v124)(v134, v132, v137);
  sub_3EC574();
  sub_3EBE04();
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v75(v80, v74);
  v120 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  if (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0)
  {
    v107 = type metadata accessor for Action();
    v106 = sub_3BE120(&qword_4EDDF8, type metadata accessor for Action);
  }

  else
  {
    v107 = 0;
    v106 = 0;
  }

  v104 = v70 == 0;
  v83 = v133;
  v84 = v138;
  sub_3EBE04();
  v105 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v85 = v136;
  v136(v83, v74);
  sub_3EC634();
  v86 = v81;
  sub_3EBE04();
  v87 = v74;
  v88 = v137;
  (v124)(v134, v81, v137);
  sub_3EC574();
  v89 = v121;
  sub_3E5FB4();
  v90 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v92 = v91;
  (*(v131 + 8))(v86, v88);
  v85(v84, v87);
  (*(v122 + 8))(v89, v123);
  type metadata accessor for Showcase();
  v93 = swift_allocObject();
  v94 = v114;
  v93[4] = v115;
  v93[5] = v94;
  v95 = v113;
  v93[6] = v117;
  v93[7] = v95;
  v96 = v112;
  v93[8] = v118;
  v93[9] = v96;
  v97 = v110;
  v93[10] = v111;
  v93[11] = v97;
  sub_FACC(v126, v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_artwork, &qword_4F1D50);
  sub_FACC(v127, v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_showArtwork, &qword_4F1D50);
  v98 = v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_showAdamId;
  *v98 = v109;
  v98[8] = v104;
  v99 = (v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_showName);
  v100 = v108;
  *v99 = v119;
  v99[1] = v100;
  *(v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_showMetadata) = v116;
  sub_FACC(v128, v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_thumbnailArtwork, &qword_4F1D50);
  v101 = (v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_clickAction);
  *v101 = v120;
  v101[1] = 0;
  v102 = v107;
  v101[2] = 0;
  v101[3] = v102;
  v101[4] = v106;
  *(v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_playAction) = v105;
  sub_FACC(v129, v93 + OBJC_IVAR____TtC8ShelfKit8Showcase_impressionMetrics, &unk_4E9170);
  result = v93;
  v93[2] = v90;
  v93[3] = v92;
  return result;
}

uint64_t sub_3BDE38(uint64_t a1)
{
  result = sub_3BE120(&qword_5057B8, type metadata accessor for Showcase);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for Showcase()
{
  result = qword_505830;
  if (!qword_505830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3BDEDC(uint64_t a1)
{
  result = sub_3BE120(&qword_505800, type metadata accessor for Showcase);
  *(a1 + 8) = result;
  return result;
}

void sub_3BDF3C()
{
  sub_95A68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v0 <= 0x3F)
  {
    sub_95A68(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_3BE120(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_3BE168()
{
  result = qword_505928;
  if (!qword_505928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_505928);
  }

  return result;
}

void *ShowHeader.merging(with:preferredEpisodeToPlay:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v9 = v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v195 = v153 - v11;
  __chkstk_darwin(v12);
  v14 = v153 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v15 - 8);
  v17 = v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v153 - v19;
  __chkstk_darwin(v21);
  v194 = v153 - v22;
  __chkstk_darwin(v23);
  v201 = v153 - v24;
  __chkstk_darwin(v25);
  v27 = v153 - v26;
  __chkstk_darwin(v28);
  v200 = v153 - v29;
  if (a1)
  {
    v191 = v14;
    v192 = v6;
    v30 = v3[3];
    v202 = v3[2];
    v203 = v30;

    v204._countAndFlagsBits = 45;
    v204._object = 0xE100000000000000;
    sub_3ED3D4(v204);
    v31 = *(a1 + 2);
    v32 = *(a1 + 3);

    v205._countAndFlagsBits = v31;
    v205._object = v32;
    sub_3ED3D4(v205);

    v33 = *&a1[OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata];
    v189 = v202;
    v188 = v203;
    v34 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata);
    v35 = (v34 + 48);
    v36 = *(v34 + 16) + 1;
    v193 = a2;
    do
    {
      if (!--v36)
      {

        goto LABEL_13;
      }

      v37 = v35 + 24;
      v38 = *v35;
      v35 += 24;
    }

    while (v38 != 6);
    v39 = *(v37 - 5);
    v40 = *(v37 - 4);

    sub_3C1D48(v39, v40, 6u);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_E0458(0, *(v33 + 2) + 1, 1, v33);
    }

    v42 = *(v33 + 2);
    v41 = *(v33 + 3);
    if (v42 >= v41 >> 1)
    {
      v33 = sub_E0458((v41 > 1), v42 + 1, 1, v33);
    }

    *(v33 + 2) = v42 + 1;
    v43 = &v33[24 * v42];
    *(v43 + 4) = v39;
    *(v43 + 5) = v40;
    v43[48] = 6;
LABEL_13:
    v77 = v3[4];
    v78 = *(a1 + 4);
    if (*(v77 + 16))
    {
      v79 = 1869049708;
    }

    else
    {
      v79 = 0x7265766F63;
    }

    if (*(v77 + 16))
    {
      v80 = 0xE400000000000000;
    }

    else
    {
      v80 = 0xE500000000000000;
    }

    if (*(v78 + 16))
    {
      v81 = 1869049708;
    }

    else
    {
      v81 = 0x7265766F63;
    }

    if (*(v78 + 16))
    {
      v82 = 0xE400000000000000;
    }

    else
    {
      v82 = 0xE500000000000000;
    }

    v83 = v79 == v81 && v80 == v82;
    v190 = v33;
    v199 = a1;
    if (v83)
    {
      v198 = v77;
    }

    else
    {
      v84 = sub_3EE804();

      if ((v84 & 1) == 0)
      {
        v77 = v78;
      }

      v198 = v77;
    }

    v86 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID);
    v85 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 8);
    v87 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 16);
    sub_FBD0(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, v27, &qword_4F1D50);
    v88 = sub_3E7784();
    v89 = *(v88 - 8);
    v90 = *(v89 + 48);
    v91 = v90(v27, 1, v88);
    v187 = v86;
    v186 = v85;
    v185 = v87;
    if (v91 == 1)
    {
      sub_FBD0(&v199[OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork], v200, &qword_4F1D50);
      v92 = v90(v27, 1, v88);

      sub_3DE90(v86, v85, v87);
      if (v92 != 1)
      {
        sub_FCF8(v27, &qword_4F1D50);
      }
    }

    else
    {
      v93 = v27;
      v94 = v200;
      sub_83F9C(v93, v200);
      (*(v89 + 56))(v94, 0, 1, v88);

      sub_3DE90(v86, v85, v87);
    }

    v197 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor);
    LODWORD(v196) = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor + 8);
    LODWORD(v184) = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle);
    v95 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title + 8);
    if (v95)
    {
      v183 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
      v182 = v95;
      v96 = v199;
    }

    else
    {
      v96 = v199;
      v97 = *&v199[OBJC_IVAR____TtC8ShelfKit10ShowHeader_title + 8];
      v183 = *&v199[OBJC_IVAR____TtC8ShelfKit10ShowHeader_title];
      v182 = v97;
    }

    v98 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description + 8);
    if (v98)
    {
      v181 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
      v180 = v98;
    }

    else
    {
      v99 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_description + 8];
      v181 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_description];
      v180 = v99;
    }

    v100 = v194;
    sub_FBD0(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, v194, &qword_4F1D50);
    if (v90(v100, 1, v88) == 1)
    {
      sub_FBD0(&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork], v201, &qword_4F1D50);
      v101 = v90(v100, 1, v88);
      sub_1F7418(v197, v196);

      if (v101 != 1)
      {
        sub_FCF8(v100, &qword_4F1D50);
      }
    }

    else
    {
      v102 = v201;
      sub_83F9C(v100, v201);
      (*(v89 + 56))(v102, 0, 1, v88);
      sub_1F7418(v197, v196);
    }

    v103 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction);
    v165 = v103;
    if (!v103)
    {
      v103 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction];
    }

    v104 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle + 8);
    v163 = v104;
    if (v104)
    {
      v179 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
      v178 = v104;
    }

    else
    {
      v105 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle + 8];
      v179 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle];
      v178 = v105;
    }

    v106 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction);
    v107 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction);
    v159 = v107;
    if (!v107)
    {
      v107 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction];
    }

    v108 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle + 8);
    v158 = v108;
    if (v108)
    {
      v176 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
      v175 = v108;
    }

    else
    {
      v109 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle + 8];
      v176 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle];
      v175 = v109;
    }

    v110 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner);
    v155 = v110;
    if (!v110)
    {
      v110 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner];
    }

    v111 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge);
    if (v111 == 2)
    {
      v111 = v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge];
    }

    LODWORD(v173) = v111;
    v112 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction);
    v153[3] = v112;
    if (!v112)
    {
    }

    v172 = v112;
    v194 = v103;
    v113 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction);
    v153[2] = v113;
    if (!v113)
    {
    }

    v171 = v113;
    v114 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
    swift_beginAccess();
    v170 = *(v3 + v114);
    v115 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId;
    swift_beginAccess();
    LODWORD(v169) = *(v3 + v115);
    v116 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction);
    if (!v116)
    {
      v116 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction];
    }

    v117 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId + 8);
    v153[1] = v117;
    if (v117)
    {
      v167 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
      v166 = v117;
    }

    else
    {
      v118 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId + 8];
      v167 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId];
      v166 = v118;
    }

    v119 = v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID;
    v83 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID + 8) == 1;
    v174 = v110;
    if (v83)
    {
      v119 = &v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID];
      v164 = v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID + 8];
    }

    else
    {
      v164 = 0;
    }

    v162 = *v119;
    v120 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID + 8);
    v168 = v116;
    if (v120)
    {
      v161 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
      v160 = v120;
    }

    else
    {
      v121 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID + 8];
      v161 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID];
      v160 = v121;
    }

    v177 = v107;
    v122 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink + 8);
    v123 = v106;
    if (v122)
    {
      v157 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
      v156 = v122;
    }

    else
    {
      v124 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink + 8];
      v157 = *&v96[OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink];
      v156 = v124;
    }

    v154 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp);
    v125 = v195;
    sub_FBD0(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, v195, &unk_4E9170);
    v126 = sub_3EC634();
    v127 = *(v126 - 8);
    v128 = *(v127 + 48);
    if (v128(v125, 1, v126) == 1)
    {
      v129 = v191;
      sub_FBD0(&v199[OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics], v191, &unk_4E9170);

      v130 = v129;

      v131 = v123;
      if (v128(v125, 1, v126) != 1)
      {
        sub_FCF8(v125, &unk_4E9170);
      }
    }

    else
    {

      v131 = v123;

      v130 = v191;
      (*(v127 + 32))(v191, v125, v126);
      (*(v127 + 56))(v130, 0, 1, v126);
    }

    v3 = swift_allocObject();
    v132 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed) = 0;
    v133 = v188;
    v3[2] = v189;
    v3[3] = v133;
    v134 = v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID;
    v135 = v186;
    *v134 = v187;
    *(v134 + 1) = v135;
    v134[16] = v185;
    v3[4] = v198;
    sub_FACC(v200, v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &qword_4F1D50);
    v136 = v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor;
    *v136 = v197;
    v136[8] = v196;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle) = v184;
    v137 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
    v138 = v182;
    *v137 = v183;
    v137[1] = v138;
    v139 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
    v140 = v180;
    *v139 = v181;
    v139[1] = v140;
    sub_FACC(v201, v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, &qword_4F1D50);
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction) = v194;
    v141 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
    v142 = v178;
    *v141 = v179;
    v141[1] = v142;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction) = v131;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction) = v177;
    v143 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
    v144 = v175;
    *v143 = v176;
    v143[1] = v144;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata) = v190;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner) = v174;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge) = v173;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction) = v172;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction) = v171;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay) = v193;
    swift_beginAccess();
    *(v3 + v132) = v170;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId) = v169;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction) = v168;
    v145 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
    v146 = v166;
    *v145 = v167;
    v145[1] = v146;
    v147 = v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID;
    *v147 = v162;
    v147[8] = v164;
    v148 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
    v149 = v160;
    *v148 = v161;
    v148[1] = v149;
    v150 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
    v151 = v156;
    *v150 = v157;
    v150[1] = v151;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp) = v154;
    sub_FACC(v130, v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, &unk_4E9170);
    goto LABEL_84;
  }

  if (!a2)
  {
LABEL_84:

    return v3;
  }

  v44 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 8);
  v199 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID);
  v200 = v44;
  v201 = v3[4];
  LODWORD(v195) = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 16);
  sub_FBD0(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, v20, &qword_4F1D50);
  v189 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor);
  v185 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle);
  v45 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title + 8);
  v184 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
  v190 = v45;
  v46 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description + 8);
  v183 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
  v191 = v46;
  LODWORD(v192) = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor + 8);
  sub_FBD0(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, v17, &qword_4F1D50);
  v182 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction);
  v181 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction);
  v188 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction);
  v47 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle + 8);
  v179 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
  v177 = v47;
  v48 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle + 8);
  v180 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
  v187 = v48;
  v49 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner);
  v197 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata);
  v198 = v49;
  LODWORD(v178) = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge);
  v194 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction);
  v196 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction);
  v51 = v3[2];
  v186 = v3[3];
  v50 = v186;
  v52 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
  swift_beginAccess();
  LODWORD(v176) = *(v3 + v52);
  v53 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId;
  swift_beginAccess();
  LODWORD(v175) = *(v3 + v53);
  v174 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction);
  v54 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId + 8);
  v173 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
  v172 = v54;
  v171 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID);
  v170 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID + 8);
  v55 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID + 8);
  v169 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
  v168 = v55;
  v56 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink + 8);
  v167 = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
  v166 = v56;
  LODWORD(v165) = *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp);
  sub_FBD0(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, v9, &unk_4E9170);
  v3 = swift_allocObject();
  v57 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed) = 0;
  v3[2] = v51;
  v3[3] = v50;
  v58 = v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID;
  v59 = v200;
  *v58 = v199;
  *(v58 + 1) = v59;
  v58[16] = v195;
  v3[4] = v201;
  sub_FACC(v20, v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &qword_4F1D50);
  v60 = v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor;
  *v60 = v189;
  v60[8] = v192;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle) = v185;
  v61 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
  v62 = v190;
  *v61 = v184;
  v61[1] = v62;
  v63 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
  v64 = v191;
  *v63 = v183;
  v63[1] = v64;
  sub_FACC(v17, v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, &qword_4F1D50);
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction) = v182;
  v65 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
  v66 = v177;
  *v65 = v179;
  v65[1] = v66;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction) = v181;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction) = v188;
  v67 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
  v68 = v187;
  *v67 = v180;
  v67[1] = v68;
  v69 = v198;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata) = v197;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner) = v69;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge) = v178;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction) = v194;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction) = v196;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay) = a2;
  swift_beginAccess();
  *(v3 + v57) = v176;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId) = v175;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction) = v174;
  v70 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
  v71 = v172;
  *v70 = v173;
  v70[1] = v71;
  v72 = v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID;
  *v72 = v171;
  v72[8] = v170;
  v73 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
  v74 = v168;
  *v73 = v169;
  v73[1] = v74;
  v75 = (v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
  v76 = v166;
  *v75 = v167;
  v75[1] = v76;
  *(v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp) = v165;
  sub_FACC(v9, v3 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, &unk_4E9170);

  sub_3DE90(v199, v200, v195);

  sub_1F7418(v189, v192);

  return v3;
}

uint64_t *ShowHeader.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v184 = sub_3E5FC4();
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v182 = &v150[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v187 = &v150[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v7 - 8);
  v186 = &v150[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v185 = &v150[-v10];
  __chkstk_darwin(v11);
  v195 = &v150[-v12];
  __chkstk_darwin(v13);
  v194 = &v150[-v14];
  v208 = sub_3EBF94();
  v206 = *(v208 - 8);
  __chkstk_darwin(v208);
  v178 = &v150[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v191 = &v150[-v17];
  __chkstk_darwin(v18);
  v189 = &v150[-v19];
  __chkstk_darwin(v20);
  v199 = &v150[-v21];
  __chkstk_darwin(v22);
  v197 = &v150[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98);
  __chkstk_darwin(v24 - 8);
  v26 = &v150[-v25];
  v27 = sub_3ECED4();
  v210 = *(v27 - 8);
  __chkstk_darwin(v27);
  v190 = &v150[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v205 = &v150[-v30];
  v31 = sub_3EBDF4();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v180 = &v150[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v179 = &v150[-v35];
  __chkstk_darwin(v36);
  v177 = &v150[-v37];
  __chkstk_darwin(v38);
  v176 = &v150[-v39];
  __chkstk_darwin(v40);
  v188 = &v150[-v41];
  __chkstk_darwin(v42);
  v196 = &v150[-v43];
  __chkstk_darwin(v44);
  v46 = &v150[-v45];
  __chkstk_darwin(v47);
  v49 = &v150[-v48];
  __chkstk_darwin(v50);
  v52 = &v150[-v51];
  sub_3EBE04();
  v207 = a2;
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v55 = *(v32 + 8);
  v53 = v32 + 8;
  v54 = v55;
  v193 = v52;
  v56 = v52;
  v57 = a1;
  v55(v56, v31);
  sub_3EBE04();
  sub_3EBD54();
  v58 = v210;
  v55(v49, v31);
  if ((*(v58 + 48))(v26, 1, v27) == 1)
  {
    sub_FCF8(v26, &qword_4EDC98);
    v59 = sub_3ECEE4();
    sub_3C3958(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v60 = 0x617461646174656DLL;
    v61 = v200;
    v60[1] = 0xE800000000000000;
    v60[2] = v61;
    (*(*(v59 - 1) + 104))(v60, enum case for JSONError.missingProperty(_:), v59);
    swift_willThrow();

    (*(v206 + 8))(v207, v208);
    v54(v57, v31);
  }

  else
  {
    v201 = v54;
    v202 = v53;
    v62 = *(v58 + 32);
    v181 = v27;
    v62(v205, v26, v27);
    sub_3EBE04();
    sub_3EBDC4();
    v203 = v57;
    v192 = v31;
    if (v63)
    {
      v64 = v198;
      v65 = sub_3E9494();
      v66 = v64;
      v68 = v206;
      v67 = v207;
      if (v64)
      {

        v175 = sub_3E9484();

        v201(v46, v31);
        v173 = 0;
        v174 = 0;
        v66 = 0;
      }

      else
      {
        v175 = v65;
        v201(v46, v31);

        v173 = 0;
        v174 = 0;
      }
    }

    else
    {
      v201(v46, v31);
      v175 = 0;
      v174 = 2;
      v173 = 0xE000000000000000;
      v68 = v206;
      v67 = v207;
      v66 = v198;
    }

    v59 = type metadata accessor for HeaderModel.PrimaryArtwork();
    v69 = v196;
    sub_3EBE04();
    v71 = (v68 + 16);
    v70 = *(v68 + 16);
    v72 = v197;
    v73 = v68;
    v74 = v208;
    v198 = v70;
    v70(v197, v67, v208);
    v75 = HeaderModel.PrimaryArtwork.__allocating_init(deserializing:using:)(v69, v72);
    if (v66)
    {

      sub_3DEF8(v175, v173, v174);
      (*(v73 + 8))(v67, v74);
      v201(v203, v192);
      (*(v210 + 8))(v205, v181);
    }

    else
    {
      v196 = v75;
      v76 = sub_3E7784();
      v77 = v193;
      v165 = 0xD000000000000011;
      sub_3EBE04();
      v78 = v198;
      v198(v199, v67, v74);
      v169 = sub_3C3958(&qword_4EECC8, &type metadata accessor for ArtworkModel);
      v170 = v76;
      sub_3EC574();
      v79 = v188;
      sub_3EBE04();
      v80 = v189;
      v197 = v71;
      v78(v189, v67, v74);
      v81 = sub_3DC304(v79, v80);
      LODWORD(v188) = v82;
      v189 = v81;
      v166 = 0;
      sub_3EBE04();
      sub_35ACD0();
      sub_3EBCC4();
      v83 = v192;
      v84 = v201;
      v201(v77, v192);
      v164 = v209;
      sub_3EBE04();
      v163 = sub_3EBDC4();
      v172 = v85;
      v84(v77, v83);
      sub_3EBE04();
      v162 = sub_3EBDC4();
      v171 = v86;
      v84(v77, v83);
      sub_3EBE04();
      v87 = v207;
      v198(v199, v207, v208);
      sub_3EC574();
      sub_3EBE04();
      v169 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
      v84(v77, v83);
      sub_3EBE04();
      v161 = sub_3EBDC4();
      v170 = v88;
      v84(v77, v83);
      sub_3EBE04();
      v89 = v87;
      v168 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
      v84(v77, v83);
      sub_3EBE04();
      v90 = sub_3EBDC4();
      v167 = v91;
      v84(v77, v83);
      v92 = v210;
      v93 = v181;
      (*(v210 + 16))(v190, v205, v181);
      v94 = v208;
      v95 = v198;
      v198(v191, v89, v208);
      sub_3BE168();
      v96 = v166;
      v97 = sub_3ED634();
      v98 = v195;
      if (v96)
      {

        sub_3DEF8(v175, v173, v174);

        sub_234D4C(v189, v188);

        (*(v206 + 8))(v207, v94);
        v201(v203, v192);
        v59 = &qword_4F1D50;
        sub_FCF8(v98, &qword_4F1D50);
        sub_FCF8(v194, &qword_4F1D50);
        (*(v92 + 8))(v205, v93);
      }

      else
      {
        v166 = v97;
        v190 = v90;
        v99 = v176;
        v191 = 0;
        sub_3EBE04();
        v159 = sub_3EBD24();
        v100 = v192;
        v101 = v201;
        v201(v99, v192);
        type metadata accessor for UpsellBanner();
        sub_3EBE04();
        v102 = v94;
        v103 = v207;
        v95(v199, v207, v102);
        sub_3C3958(&qword_502F38, type metadata accessor for UpsellBanner);
        sub_3EC574();
        v176 = v209;
        sub_3EBE04();
        v160 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
        v101(v77, v100);
        v104 = v177;
        sub_3EBE04();
        v105 = v178;
        v95(v178, v103, v208);
        type metadata accessor for PodcastOfferAction();
        swift_allocObject();
        v106 = v191;
        v107 = PodcastOfferAction.init(deserializing:using:)(v104, v105);
        v108 = v201;
        if (v106)
        {

          v178 = 0;
        }

        else
        {
          v178 = v107;
        }

        v191 = 0;
        v109 = v193;
        sub_3EBE04();
        v177 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
        v108(v109, v100);
        sub_3EBE04();
        v158 = sub_3EBDC4();
        v157 = v110;
        v108(v109, v100);
        v111 = v179;
        sub_3EBE04();
        sub_3EBDC4();
        v113 = v112;
        if (v112)
        {
          v114 = v191;
          v115 = sub_3E9494();
          if (v114)
          {

            v156 = sub_3E9484();

            v108(v111, v100);
            v191 = 0;
          }

          else
          {
            v191 = 0;
            v156 = v115;
            v108(v111, v100);
          }
        }

        else
        {
          v108(v111, v100);
          v156 = 0;
        }

        LODWORD(v179) = v113 == 0;
        v116 = v193;
        v117 = v203;
        sub_3EBE04();
        v155 = sub_3EBDC4();
        v154 = v118;
        v108(v116, v100);
        sub_3EBE04();
        v153 = sub_3EBDC4();
        v152 = v119;
        v108(v116, v100);
        v120 = v180;
        sub_3EBE04();
        v151 = sub_3EBD24();
        v108(v120, v100);
        sub_3EC634();
        sub_3EBE04();
        v122 = v207;
        v121 = v208;
        v198(v199, v207, v208);
        v123 = v121;
        sub_3EC574();
        v124 = v194;
        sub_FBD0(v194, v185, &qword_4F1D50);
        v125 = v195;
        sub_FBD0(v195, v186, &qword_4F1D50);
        LODWORD(v199) = v159 & 1;
        v126 = v182;
        sub_3E5FB4();
        v198 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
        v127 = v122;
        v129 = v128;
        (*(v206 + 8))(v127, v123);
        v108(v117, v192);
        (*(v183 + 8))(v126, v184);
        sub_FCF8(v125, &qword_4F1D50);
        sub_FCF8(v124, &qword_4F1D50);
        (*(v210 + 8))(v205, v181);
        v59 = swift_allocObject();
        v130 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed) = 0;
        v59[2] = v198;
        v59[3] = v129;
        v131 = v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID;
        v132 = v173;
        *v131 = v175;
        *(v131 + 1) = v132;
        v131[16] = v174;
        v59[4] = v196;
        sub_FACC(v185, v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &qword_4F1D50);
        v133 = v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor;
        *v133 = v189;
        v133[8] = v188;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle) = v164;
        v134 = (v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
        v135 = v172;
        *v134 = v163;
        v134[1] = v135;
        v136 = (v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
        v137 = v171;
        *v136 = v162;
        v136[1] = v137;
        sub_FACC(v186, v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, &qword_4F1D50);
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction) = v169;
        v138 = (v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
        v139 = v170;
        *v138 = v161;
        v138[1] = v139;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction) = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction) = v168;
        v140 = (v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
        v141 = v167;
        *v140 = v190;
        v140[1] = v141;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata) = v166;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner) = v176;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge) = v199;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction) = v160;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction) = v178;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay) = 0;
        swift_beginAccess();
        *(v59 + v130) = 0;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId) = 1;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction) = v177;
        v142 = (v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
        v143 = v157;
        *v142 = v158;
        v142[1] = v143;
        v144 = v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID;
        *v144 = v156;
        v144[8] = v179;
        v145 = (v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
        v146 = v154;
        *v145 = v155;
        v145[1] = v146;
        v147 = (v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
        v148 = v152;
        *v147 = v153;
        v147[1] = v148;
        *(v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp) = v151 & 1;
        sub_FACC(v187, v59 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, &unk_4E9170);
      }
    }
  }

  return v59;
}

void *ShowHeader.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor);
  sub_1F7418(v1, *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor + 8));
  return v1;
}

uint64_t ShowHeader.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);

  return v1;
}

uint64_t ShowHeader.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);

  return v1;
}

uint64_t ShowHeader.providerTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);

  return v1;
}

uint64_t ShowHeader.secondaryButtonSubtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);

  return v1;
}

uint64_t ShowHeader.hasEverPlayed.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ShowHeader.hasEverPlayed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ShowHeader.hasAdamId.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ShowHeader.hasAdamId.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ShowHeader.appBundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);

  return v1;
}

uint64_t ShowHeader.customProductPageID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);

  return v1;
}

uint64_t ShowHeader.externalAppOfferDeeplink.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);

  return v1;
}

void *ShowHeader.showID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID);
  sub_3DE90(v1, *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 8), *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 16));
  return v1;
}

void *ShowHeader.__allocating_init(showID:primaryArtwork:backgroundArtwork:backgroundColor:interfaceStyle:title:description:providerIconArtwork:providerAction:providerTitle:primaryButtonAction:secondaryButtonAction:secondaryButtonSubtitle:metadata:upsellBanner:entitlementBadge:contextAction:followAction:shelfUniqueId:hasEverPlayed:episodeToPlay:hasAdamId:subtitleAction:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:isForFirstPartyApp:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, _BYTE *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41)
{
  v44 = swift_allocObject();
  v45 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed) = 0;
  LOBYTE(a8) = *a8;
  v44[2] = a26;
  v44[3] = a27;
  v46 = v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID;
  *v46 = a1;
  *(v46 + 1) = a2;
  v46[16] = a3;
  v44[4] = a4;
  sub_FACC(a5, v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &qword_4F1D50);
  v47 = v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor;
  *v47 = a6;
  v47[8] = a7;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle) = a8;
  v48 = (v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
  *v48 = a9;
  v48[1] = a10;
  v49 = (v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
  *v49 = a11;
  v49[1] = a12;
  sub_FACC(a13, v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, &qword_4F1D50);
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction) = a14;
  v50 = (v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
  *v50 = a15;
  v50[1] = a16;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction) = a17;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction) = a18;
  v51 = (v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
  *v51 = a19;
  v51[1] = a20;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata) = a21;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner) = a22;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge) = a23;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction) = a24;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction) = a25;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay) = a29;
  swift_beginAccess();
  *(v44 + v45) = a28;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId) = a30;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction) = a31;
  v52 = (v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
  *v52 = a32;
  v52[1] = a33;
  v53 = v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID;
  *v53 = a34;
  v53[8] = a35 & 1;
  v54 = (v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
  *v54 = a36;
  v54[1] = a37;
  v55 = (v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
  *v55 = a38;
  v55[1] = a39;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp) = a40;
  sub_FACC(a41, v44 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, &unk_4E9170);
  return v44;
}

void *ShowHeader.init(showID:primaryArtwork:backgroundArtwork:backgroundColor:interfaceStyle:title:description:providerIconArtwork:providerAction:providerTitle:primaryButtonAction:secondaryButtonAction:secondaryButtonSubtitle:metadata:upsellBanner:entitlementBadge:contextAction:followAction:shelfUniqueId:hasEverPlayed:episodeToPlay:hasAdamId:subtitleAction:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:isForFirstPartyApp:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41)
{
  v42 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed) = 0;
  v41[2] = a26;
  v41[3] = a27;
  v43 = v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID;
  *v43 = a1;
  *(v43 + 1) = a2;
  v43[16] = a3;
  v44 = *a8;
  v41[4] = a4;
  sub_FACC(a5, v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &qword_4F1D50);
  v45 = v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor;
  *v45 = a6;
  v45[8] = a7;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle) = v44;
  v46 = (v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
  *v46 = a9;
  v46[1] = a10;
  v47 = (v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
  *v47 = a11;
  v47[1] = a12;
  sub_FACC(a13, v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, &qword_4F1D50);
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction) = a14;
  v48 = (v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
  *v48 = a15;
  v48[1] = a16;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction) = a17;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction) = a18;
  v49 = (v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
  *v49 = a19;
  v49[1] = a20;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata) = a21;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner) = a22;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge) = a23;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction) = a24;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction) = a25;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay) = a29;
  swift_beginAccess();
  *(v41 + v42) = a28;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId) = a30;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction) = a31;
  v50 = (v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
  *v50 = a32;
  v50[1] = a33;
  v51 = v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID;
  *v51 = a34;
  v51[8] = a35 & 1;
  v52 = (v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
  *v52 = a36;
  v52[1] = a37;
  v53 = (v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
  *v53 = a38;
  v53[1] = a39;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp) = a40;
  sub_FACC(a41, v41 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, &unk_4E9170);
  return v41;
}

uint64_t sub_3C1D48(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (!a3)
    {
    }

    if (a3 == 1 || a3 == 2)
    {
    }
  }

  else if (a3 > 4u)
  {
    if (a3 == 5 || a3 == 6)
    {
    }
  }

  else if (a3 == 3 || a3 == 4)
  {
  }

  return result;
}

uint64_t ShowHeader.preferredBackgroundColor.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = (v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor);
  v8 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor + 8);
  if (v8 == 255)
  {
    sub_FBD0(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &v17 - v5, &qword_4F1D50);
    v11 = sub_3E7784();
    v12 = *(*(v11 - 8) + 48);
    if (v12(v6, 1, v11) == 1)
    {
      sub_FCF8(v6, &qword_4F1D50);
      v13 = 0;
    }

    else
    {
      v13 = *(v6 + 7);
      v14 = v6[64];
      sub_1F7418(v13, v6[64]);
      sub_3C37FC(v6, &type metadata accessor for ArtworkModel);
      if (v14 != 255)
      {
        sub_1F742C(v13, v14);
        goto LABEL_11;
      }
    }

    sub_FBD0(*(v0 + 32) + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork, v3, &qword_4F1D50);
    if (v12(v3, 1, v11) == 1)
    {
      sub_FCF8(v3, &qword_4F1D50);
      sub_234D4C(v13, 255);
      return 0;
    }

    v15 = *(v3 + 7);
    v14 = v3[64];
    sub_1F7418(v15, v3[64]);
    sub_3C37FC(v3, &type metadata accessor for ArtworkModel);
    sub_234D4C(v13, 255);
    if (v14 == 255)
    {
      return 0;
    }

    sub_1F742C(v15, v14);
    v13 = v15;
LABEL_11:
    v10 = sub_3E9454();
    sub_234D4C(v13, v14);
    sub_F2260(v13, v14);
    return v10;
  }

  v9 = *v7;
  sub_1F742C(*v7, v8);
  v10 = sub_3E9454();
  sub_234D4C(v9, v8);
  return v10;
}

uint64_t ShowHeader.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &qword_4F1D50);
  sub_234D4C(*(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor), *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor + 8));

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, &qword_4F1D50);

  sub_3DEF8(*(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID), *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 8), *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID + 16));

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, &unk_4E9170);
  return v0;
}

uint64_t ShowHeader.__deallocating_deinit()
{
  ShowHeader.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_3C22A4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  result = ShowHeader.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t ShowHeader.fullDescriptionAction.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v2 - 8);
  v75 = &v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F74B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v68 - v5;
  v7 = sub_3E5FC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v78 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EC1F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v77);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay);
  if (v16 && (v17 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed, swift_beginAccess(), *(v1 + v17) == 1))
  {
    v18 = *(v16 + 64);
    v19 = *(v16 + 72);
    v80 = 1;
    v79 = 1;
    *v15 = v18;
    *(v15 + 1) = v19;
    *(v15 + 3) = 0;
    *(v15 + 4) = 0;
    *(v15 + 2) = 0;
    v15[40] = 1;
    *(v15 + 6) = 0;
    v15[56] = 1;
    swift_storeEnumTagMultiPayload();
    v20 = v11;
    v21 = objc_opt_self();
    v76 = v8;
    v22 = v10;
    v23 = v21;

    v24 = [v23 mainBundle];
    v67._countAndFlagsBits = 0xE000000000000000;
    v81._object = 0x800000000042E990;
    v81._countAndFlagsBits = 0xD00000000000001BLL;
    v82.value._countAndFlagsBits = 0;
    v82.value._object = 0;
    v25.super.isa = v24;
    v83._countAndFlagsBits = 0;
    v83._object = 0xE000000000000000;
    v77 = sub_3E5A74(v81, v82, v25, v83, v67);
    v75 = v26;

    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for FlowAction(0);
    v27 = v13;
    v28 = swift_allocObject();
    sub_FC38(v15, v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
    type metadata accessor for FlowAction.DestinationType(0);
    swift_storeEnumTagMultiPayload();
    v29 = (v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
    *v29 = 0;
    v29[1] = 0;
    *(v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
    *(v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
    *(v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
    (*(v20 + 16))(v28 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v27, v22);
    v30 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
    v31 = sub_3EC634();
    (*(*(v31 - 8) + 56))(v28 + v30, 1, 1, v31);
    v32 = v78;
    sub_3E5FB4();
    v33 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v35 = v34;

    (*(v76 + 8))(v32, v7);
    (*(v20 + 8))(v27, v22);
    sub_3C37FC(v15, type metadata accessor for FlowDestination);
    result = v28;
    *(v28 + 16) = v33;
    *(v28 + 24) = v35;
    v37 = v75;
    *(v28 + 32) = v77;
    *(v28 + 40) = v37;
    *(v28 + 48) = 48;
  }

  else if (*(v1 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description + 8))
  {
    v71 = v13;
    v72 = v11;
    v73 = v10;
    v38 = sub_3E9A64();

    sub_3E9A34();
    v74 = v7;
    sub_3E9A24();
    v39 = objc_allocWithZone(v38);
    v40 = sub_3E9A84();
    v41 = type metadata accessor for ShareSheetContentSource(0);
    (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
    v42 = sub_3EC634();
    v43 = *(v42 - 8);
    v44 = v75;
    v69 = *(v43 + 56);
    v70 = v42;
    v68 = v43 + 56;
    v69(v75, 1, 1);
    type metadata accessor for Paragraph();
    v45 = swift_allocObject();
    *(v45 + 32) = v40;
    *(v45 + 40) = 16777728;
    sub_FBD0(v6, v45 + OBJC_IVAR____TtC8ShelfKit9Paragraph_shareSheetContentSource, &qword_4F74B0);
    sub_FBD0(v44, v45 + OBJC_IVAR____TtC8ShelfKit9Paragraph_impressionMetrics, &unk_4E9170);
    v46 = v40;
    v47 = v78;
    sub_3E5FB4();
    v48 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v50 = v49;

    v51 = *(v8 + 8);
    v76 = v8 + 8;
    v51(v47, v74);
    sub_FCF8(v44, &unk_4E9170);
    sub_FCF8(v6, &qword_4F74B0);
    *(v45 + 16) = v48;
    *(v45 + 24) = v50;
    if (*(v1 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title + 8))
    {
      v52 = *(v1 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
      v53 = *(v1 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title + 8);
    }

    else
    {
      v52 = 0;
      v53 = 0xE000000000000000;
    }

    v54 = v1 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle;
    v56 = *(v1 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
    v55 = *(v54 + 8);
    type metadata accessor for LongDescription();
    v57 = swift_allocObject();
    v57[2] = v52;
    v57[3] = v53;
    v57[4] = v56;
    v57[5] = v55;
    v57[6] = v45;
    *v15 = v57;
    swift_storeEnumTagMultiPayload();

    v58 = v71;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for FlowAction(0);
    v59 = swift_allocObject();
    sub_FC38(v15, v59 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
    type metadata accessor for FlowAction.DestinationType(0);
    swift_storeEnumTagMultiPayload();
    v60 = (v59 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
    *v60 = 0;
    v60[1] = 0;
    *(v59 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 4;
    *(v59 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
    *(v59 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
    v62 = v72;
    v61 = v73;
    (*(v72 + 16))(v59 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v58, v73);
    (v69)(v59 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, 1, 1, v70);
    v63 = v78;
    sub_3E5FB4();
    v64 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v66 = v65;

    v51(v63, v74);
    (*(v62 + 8))(v58, v61);
    sub_3C37FC(v15, type metadata accessor for FlowDestination);
    result = v59;
    *(v59 + 16) = v64;
    *(v59 + 24) = v66;
    *(v59 + 32) = 0;
    *(v59 + 40) = 0;
    *(v59 + 48) = 48;
  }

  else
  {
    return 0;
  }

  return result;
}

NSAttributedString __swiftcall ShowHeader.richDescription(standardFont:emphasizedFont:)(UIFont standardFont, UIFont emphasizedFont)
{
  isa = emphasizedFont.super.isa;
  v4 = sub_3E5934();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_3E7D14();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_3E7CB4();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505930);
  inited = swift_initStackObject();
  v52 = xmmword_3F5630;
  *(inited + 16) = xmmword_3F5630;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 40) = standardFont;
  v12 = NSFontAttributeName;
  v13 = standardFont.super.isa;
  v59 = sub_63264(inited);
  swift_setDeallocating();
  sub_FCF8(inited + 32, &qword_505938);
  v14 = *(v2 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
    swift_beginAccess();
    if (*(v2 + v15) == 1)
    {
      v16 = objc_allocWithZone(NSMutableAttributedString);

      v17 = [v16 init];
      v18 = swift_initStackObject();
      *(v18 + 16) = v52;
      *(v18 + 32) = v12;
      v19 = isa;
      *(v18 + 40) = isa;
      v20 = v12;
      v21 = v19;
      v22 = sub_63264(v18);
      swift_setDeallocating();
      sub_FCF8(v18 + 32, &qword_505938);
      v63 = type metadata accessor for Episode();
      v64 = sub_3C3958(&qword_503428, type metadata accessor for Episode);
      v61 = v14;
      (*(v53 + 104))(v10, enum case for EyebrowBuilder.ListContext.single(_:), v54);
      v56[13](v58, enum case for EyebrowBuilder.Style.short(_:), v57);
      sub_3E7D44();
      swift_allocObject();

      v58 = sub_3E7D34();
      v23 = sub_3E7D24();
      v25 = &swift_continuation_init_ptr;
      if (v24)
      {
        v61 = v23;
        v62 = v24;

        v65._countAndFlagsBits = 8250;
        v65._object = 0xE200000000000000;
        sub_3ED3D4(v65);

        sub_81FF4(v22);
        v26 = objc_allocWithZone(NSAttributedString);
        v27 = sub_3ED204();

        type metadata accessor for Key(0);
        sub_3C3958(&qword_4E9140, type metadata accessor for Key);
        v28 = sub_3ED084().super.isa;

        v29 = [v26 initWithString:v27 attributes:v28];

        [v17 appendAttributedString:v29];
        v25 = &swift_continuation_init_ptr;
      }

      sub_81FF4(v22);

      v30 = objc_allocWithZone(v25[416]);
      v31 = sub_3ED204();
      type metadata accessor for Key(0);
      v33 = v32;
      sub_3C3958(&qword_4E9140, type metadata accessor for Key);
      v57 = v33;
      v34 = sub_3ED084().super.isa;

      v35 = [v30 initWithString:v31 attributes:v34];

      [v17 appendAttributedString:v35];
      v36 = sub_3612F4();
      if (v36)
      {
        v37 = v36;
        if ((sub_3E9A54() & 1) == 0)
        {
          v44 = sub_3E9A14();
          [v44 mutableCopy];

          sub_3EE204();
          swift_unknownObjectRelease();
          sub_A1960();
          if (swift_dynamicCast())
          {
            v45 = v60;
            v46 = v59;
            sub_81FF4(v59);
            v56 = objc_allocWithZone(NSAttributedString);
            v47 = sub_3ED204();
            v48 = sub_3ED084().super.isa;

            v49 = [v56 initWithString:v47 attributes:v48];

            [v17 appendAttributedString:v49];
            v50 = [v45 length];
            sub_81FF4(v46);

            v51 = sub_3ED084().super.isa;

            [v45 setAttributes:v51 range:{0, v50}];

            [v17 appendAttributedString:v45];

            goto LABEL_10;
          }

LABEL_9:

LABEL_10:

          return v17;
        }
      }

      goto LABEL_9;
    }
  }

  v38 = *(v2 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description + 8);
  if (v38)
  {
    v61 = *(v2 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
    v62 = v38;

    sub_3E5924();
    sub_68DC4();
    v39 = sub_3EE124();
    (*(v5 + 8))(v7, v4);

    v61 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
    sub_9809C();
    sub_3ED134();
  }

  sub_81FF4(v59);

  v40 = objc_allocWithZone(NSAttributedString);
  v41 = sub_3ED204();

  type metadata accessor for Key(0);
  sub_3C3958(&qword_4E9140, type metadata accessor for Key);
  v42 = sub_3ED084().super.isa;

  v17 = [v40 initWithString:v41 attributes:v42];

  return v17;
}

void *ShowHeader.impressionableActions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction);
    v11 = *(v1 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_action);
    v12 = v2;
    v13 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction);
    v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitleAction);
  }

  else
  {
    v3 = 0;
    v4 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction);
    v11 = 0;
    v12 = v4;
    v13 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction);
  }

  v5 = *(v0 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction);
  v14 = v3;
  v15 = v5;

  v7 = 0;
LABEL_5:
  if (v7 <= 5)
  {
    v8 = 5;
  }

  else
  {
    v8 = v7;
  }

  while (1)
  {
    if (v7 == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF4C8);
      swift_arrayDestroy();
      return _swiftEmptyArrayStorage;
    }

    if (v8 == v7)
    {
      break;
    }

    if (v10[v7++ + 4])
    {

      sub_3ED564();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_3ED5A4();
      }

      result = sub_3ED604();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_3C37FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_3C385C(uint64_t a1)
{
  result = sub_3C3958(&qword_505940, type metadata accessor for ShowHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ShowHeader()
{
  result = qword_505970;
  if (!qword_505970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3C3900(uint64_t a1)
{
  result = sub_3C3958(&qword_4F6868, type metadata accessor for ShowHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3C3958(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_3C39A8()
{
  sub_95A68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v0 <= 0x3F)
  {
    sub_95A68(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of ShowHeader.__allocating_init(showID:primaryArtwork:backgroundArtwork:backgroundColor:interfaceStyle:title:description:providerIconArtwork:providerAction:providerTitle:primaryButtonAction:secondaryButtonAction:secondaryButtonSubtitle:metadata:upsellBanner:entitlementBadge:contextAction:followAction:shelfUniqueId:hasEverPlayed:episodeToPlay:hasAdamId:subtitleAction:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:isForFirstPartyApp:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v27 = *(v26 + 320);

  return v27(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void *sub_3C3CC8(uint64_t a1, uint64_t a2)
{
  v106 = a1;
  v107 = a2;
  v3 = sub_3E5FC4();
  v101 = *(v3 - 8);
  v102 = v3;
  __chkstk_darwin(v3);
  v96 = &v84[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_3EC1F4();
  v99 = *(v5 - 8);
  v100 = v5;
  __chkstk_darwin(v5);
  v94 = &v84[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v109 = &v84[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v9 - 8);
  v108 = &v84[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v84[-v12];
  __chkstk_darwin(v14);
  v16 = &v84[-v15];
  __chkstk_darwin(v17);
  v19 = &v84[-v18];
  v91 = v2;
  v20 = *(v2 + 16);
  v21 = *(v20 + 40);
  v104 = *(v20 + 32);
  v22 = OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork;
  sub_4E45C(v20 + OBJC_IVAR____TtC8ShelfKit7Podcast_uberArtwork, &v84[-v18]);
  v23 = sub_3E7784();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v19, 1, v23) != 1;
  v103 = v21;

  sub_FCF8(v19, &qword_4F1D50);
  sub_4E45C(v20 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, v16);
  type metadata accessor for HeaderModel.PrimaryArtwork();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v95 = v26;
  sub_FACC(v16, v26 + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork, &qword_4F1D50);
  v105 = v13;
  sub_4E45C(v20 + v22, v13);
  v27 = *(v20 + 56);
  v98 = *(v20 + 48);
  v28 = *(v20 + 80);
  v97 = v27;

  if (v28)
  {
    v29 = v28;
    v93 = sub_3E9A44();
    v92 = v30;
  }

  else
  {
    v93 = 0;
    v92 = 0;
  }

  v87 = type metadata accessor for PodcastDetail(0);
  v31 = swift_dynamicCastClass();
  if (!v31)
  {
    (*(v24 + 56))(v108, 1, 1, v23);
    v90 = sub_3C4758();
    goto LABEL_19;
  }

  v32 = v31;
  v33 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel;
  swift_beginAccess();
  v34 = *(v32 + v33);
  if (v34)
  {
    v35 = *(v34 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount);
    if (v35 < 1)
    {
      if (*(v34 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount) > 1)
      {
        goto LABEL_8;
      }
    }

    else if (v35 > 1)
    {
LABEL_8:
      sub_4E45C(v34 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_iconArtwork, v108);
      goto LABEL_12;
    }
  }

  (*(v24 + 56))(v108, 1, 1, v23);
LABEL_12:
  v90 = sub_3C4758();
  v36 = *(v32 + v33);
  if (v36)
  {
    v37 = *(v36 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount);
    if (v37 < 1)
    {
      if (*(v36 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount) <= 1)
      {
        goto LABEL_19;
      }
    }

    else if (v37 <= 1)
    {
      goto LABEL_19;
    }

    v38 = *(v36 + 32);
    if (v38)
    {
      v39 = *(v36 + 24);
      goto LABEL_20;
    }
  }

LABEL_19:
  v39 = *(v20 + 88);
  v38 = *(v20 + 96);
LABEL_20:
  v88 = v39;
  v89 = v38;

  v91 = sub_3C4B08();
  v40 = *(v20 + 128);
  if (v40)
  {
    v41 = *(v20 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14C8);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_3F5630;
    *(v42 + 32) = v41;
    *(v42 + 40) = v40;
    v86 = v42;
    *(v42 + 48) = 6;
  }

  else
  {
    v86 = _swiftEmptyArrayStorage;
  }

  v85 = *(v20 + OBJC_IVAR____TtC8ShelfKit7Podcast_paidSubscriptionActive);
  v43 = *(v20 + 32);
  v44 = *(v20 + 40);
  type metadata accessor for LibraryPodcastContextAction();
  v45 = swift_allocObject();
  v46 = (v45 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_podcastUuid);
  *v46 = v43;
  v46[1] = v44;
  v47 = v45 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType;
  *(v47 + 32) = 0u;
  *(v47 + 48) = 0u;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  *(v47 + 64) = -1;
  v48 = sub_3EC634();
  v49 = *(*(v48 - 8) + 56);
  v50 = v109;
  v49(v109, 1, 1, v48);

  v51 = v94;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v52 = v96;
  sub_3E5FB4();
  v53 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v55 = v54;
  (*(v101 + 8))(v52, v102);
  *(v45 + 16) = v53;
  *(v45 + 24) = v55;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  *(v45 + 48) = 32;
  (*(v99 + 32))(v45 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v51, v100);
  sub_FACC(v50, v45 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  type metadata accessor for LibraryPodcastOfferAction();
  swift_allocObject();

  v57 = sub_6C3CC(v56, 1);

  v58 = swift_dynamicCastClass();
  if (v58)
  {
    v59 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_hasEverPlayed;
    v60 = v58;
    swift_beginAccess();
    LODWORD(v102) = *(v60 + v59);
    v61 = *(v60 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeToPlay);
  }

  else
  {
    v61 = 0;
    LODWORD(v102) = 0;
  }

  v62 = *(v20 + 16);
  v63 = *(v20 + 24);
  v64 = v63 | (v62 != sub_3E9484());
  v65 = v109;
  v49(v109, 1, 1, v48);
  type metadata accessor for ShowHeader();
  v66 = swift_allocObject();
  v67 = OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasEverPlayed) = 0;
  v68 = v107;
  v66[2] = v106;
  v66[3] = v68;
  v69 = v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_showID;
  v70 = v103;
  *v69 = v104;
  *(v69 + 1) = v70;
  v69[16] = 2;
  v66[4] = v95;
  sub_FACC(v105, v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundArtwork, &qword_4F1D50);
  v71 = v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_backgroundColor;
  *v71 = 0;
  v71[8] = -1;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_interfaceStyle) = 0;
  v72 = (v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_title);
  v73 = v97;
  *v72 = v98;
  v72[1] = v73;
  v74 = (v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_description);
  v75 = v92;
  *v74 = v93;
  v74[1] = v75;
  sub_FACC(v108, v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerIconArtwork, &qword_4F1D50);
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerAction) = v90;
  v76 = (v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_providerTitle);
  v77 = v89;
  *v76 = v88;
  v76[1] = v77;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_primaryButtonAction) = v91;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction) = 0;
  v78 = (v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonSubtitle);
  *v78 = 0;
  v78[1] = 0;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_metadata) = v86;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_upsellBanner) = 0;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_entitlementBadge) = v85;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_contextAction) = v45;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_followAction) = v57;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_episodeToPlay) = v61;
  swift_beginAccess();
  *(v66 + v67) = v102;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_hasAdamId) = v64 & 1;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_subtitleAction) = 0;
  v79 = (v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appBundleId);
  *v79 = 0;
  v79[1] = 0;
  v80 = v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_appAdamID;
  *v80 = 0;
  v80[8] = 1;
  v81 = (v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_customProductPageID);
  *v81 = 0;
  v81[1] = 0;
  v82 = (v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_externalAppOfferDeeplink);
  *v82 = 0;
  v82[1] = 0;
  *(v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_isForFirstPartyApp) = 0;
  sub_FACC(v65, v66 + OBJC_IVAR____TtC8ShelfKit10ShowHeader_impressionMetrics, &unk_4E9170);

  return v66;
}

uint64_t sub_3C4758()
{
  v0 = sub_3E5FC4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3EC1F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v8);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PodcastDetail(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v12 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel;
    v13 = result;
    swift_beginAccess();
    v14 = *(v13 + v12);
    if (v14)
    {
      v15 = *(v14 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount);
      if (v15 < 1)
      {
        if (*(v14 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount) > 1)
        {
          goto LABEL_5;
        }
      }

      else if (v15 > 1)
      {
LABEL_5:
        *v10 = v14;
        swift_storeEnumTagMultiPayload();
        v16 = *(v14 + 24);
        v27 = *(v14 + 32);
        v28 = v16;

        swift_retain_n();
        _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
        type metadata accessor for FlowAction(0);
        v17 = swift_allocObject();
        v26 = v1;
        v18 = v17;
        sub_FC38(v10, v17 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
        type metadata accessor for FlowAction.DestinationType(0);
        swift_storeEnumTagMultiPayload();
        v19 = (v18 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
        *v19 = 0;
        v19[1] = 0;
        *(v18 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
        *(v18 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
        *(v18 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 1;
        (*(v5 + 16))(v18 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v7, v4);
        v20 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
        v21 = sub_3EC634();
        (*(*(v21 - 8) + 56))(v18 + v20, 1, 1, v21);
        sub_3E5FB4();
        v22 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
        v24 = v23;

        (*(v26 + 8))(v3, v0);
        (*(v5 + 8))(v7, v4);
        sub_FC9C(v10);
        result = v18;
        *(v18 + 16) = v22;
        *(v18 + 24) = v24;
        v25 = v27;
        *(v18 + 32) = v28;
        *(v18 + 40) = v25;
        *(v18 + 48) = 48;
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_3C4B08()
{
  v0 = sub_3E5FC4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_3EC1F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  type metadata accessor for PodcastDetail(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v18 = v1;
    v55 = v3;
    v19 = *(result + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_episodeToPlay);
    if (v19)
    {
      v53 = v0;
      v20 = *(v19 + 72);
      v47 = *(v19 + 64);
      v49 = *(v19 + 16);
      v48 = *(v19 + 24);
      v21 = *(v19 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeEntitlementState);

      v54 = v6;
      v51 = v7;
      v52 = v18;
      v50 = v8;
      if (v21 == 2)
      {
        v46 = *(v19 + 32);
        v22 = *(v19 + 40);
      }

      else
      {
        v46 = 0;
        v22 = 1;
      }

      v45 = v22;
      v23 = sub_3E8944();
      v24 = *(*(v23 - 8) + 56);
      v24(v16, 1, 1, v23);

      v25 = v13;
      v44 = v13;
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      type metadata accessor for LibraryPlayPauseAction();
      v26 = swift_allocObject();
      v27 = OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings;
      v24((v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings), 1, 1, v23);
      v28 = (v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);
      *v28 = v47;
      v28[1] = v20;
      v29 = v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId;
      *v29 = v49;
      *(v29 + 8) = v48;
      v30 = v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId;
      *v30 = v46;
      *(v30 + 8) = v45;
      swift_beginAccess();
      sub_3B520(v16, v26 + v27);
      swift_endAccess();
      *(v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_showPlayerIfPlaying) = 0;
      v31 = sub_3E8474();
      v32 = (v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_playState);
      *v32 = v31;
      v32[1] = v33;
      *(v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton) = 1;
      *(v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isWidgetPlayButton) = 0;
      *(v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_waitForEngine) = 0;
      v34 = v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_timestamp;
      *v34 = 0;
      *(v34 + 8) = 1;
      *(v26 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_shouldPreventQueueing) = 0;
      v36 = v50;
      v35 = v51;
      (*(v50 + 16))(v10, v25, v51);
      v37 = sub_3EC634();
      v38 = v54;
      (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
      v39 = v55;
      sub_3E5FB4();
      v40 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v42 = v41;

      (*(v52 + 8))(v39, v53);
      (*(v36 + 8))(v44, v35);
      sub_FCF8(v16, &qword_4E9FD0);
      *(v26 + 16) = v40;
      *(v26 + 24) = v42;
      *(v26 + 32) = 0;
      *(v26 + 40) = 0;
      *(v26 + 48) = 32;
      (*(v36 + 32))(v26 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v10, v35);
      sub_FACC(v38, v26 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
      return v26;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ShowInformation.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShowInformation() + 20);

  return sub_7EA24(v3, a1);
}

uint64_t type metadata accessor for ShowInformation()
{
  result = qword_505CA0;
  if (!qword_505CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowInformation.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowInformation() + 24));

  return v1;
}

uint64_t ShowInformation.genreName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowInformation() + 36));

  return v1;
}

uint64_t ShowInformation.copyright.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowInformation() + 44));

  return v1;
}

uint64_t sub_3C52EC()
{
  v1 = *v0;
  v2 = 0x7470697263736564;
  v3 = 0x52746E65746E6F63;
  if (v1 != 6)
  {
    v3 = 0x6867697279706F63;
  }

  v4 = 0x6F43676E69746172;
  if (v1 != 4)
  {
    v4 = 0x6D614E65726E6567;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (v1 != 2)
  {
    v2 = 0x676E69746172;
  }

  v5 = 0xD000000000000010;
  if (*v0)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_3C5410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_3C605C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_3C5444(uint64_t a1)
{
  v2 = sub_3C59D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3C5480(uint64_t a1)
{
  v2 = sub_3C59D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void ShowInformation.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505C30);
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for ShowInformation();
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_3C59D0();
  v36 = v9;
  sub_3EE9F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v13 = v34;
    v14 = v12;
    v40 = 0;
    sub_BA90C();
    v15 = v35;
    sub_3EE6C4();
    v16 = v39;
    *v14 = v37;
    *(v14 + 8) = v38;
    *(v14 + 24) = v16;
    sub_3EC634();
    v37 = 1;
    sub_3C5BC4(&qword_4F0198, &type metadata accessor for ImpressionMetrics);
    sub_3EE684();
    sub_14A10(v6, v14 + v10[5]);
    v37 = 2;
    v17 = sub_3EE644();
    v18 = (v14 + v10[6]);
    *v18 = v17;
    v18[1] = v19;
    v37 = 3;
    v20 = sub_3EE664();
    v21 = v14 + v10[7];
    *v21 = v20;
    *(v21 + 8) = v22 & 1;
    v37 = 4;
    v23 = sub_3EE674();
    v24 = v14 + v10[8];
    *v24 = v23;
    *(v24 + 8) = v25 & 1;
    v37 = 5;
    v26 = sub_3EE644();
    v27 = (v14 + v10[9]);
    *v27 = v26;
    v27[1] = v28;
    v40 = 6;
    sub_BA960();
    sub_3EE684();
    *(v14 + v10[10]) = v37;
    v37 = 7;
    v29 = sub_3EE644();
    v31 = v30;
    (*(v13 + 8))(v36, v15);
    v32 = (v14 + v10[11]);
    *v32 = v29;
    v32[1] = v31;
    sub_3C5A24(v14, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_3C5A88(v14);
  }
}

unint64_t sub_3C59D0()
{
  result = qword_505C38;
  if (!qword_505C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_505C38);
  }

  return result;
}

uint64_t sub_3C5A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowInformation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3C5A88(uint64_t a1)
{
  v2 = type metadata accessor for ShowInformation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3C5B6C(uint64_t a1)
{
  result = sub_3C5BC4(&qword_505C40, type metadata accessor for ShowInformation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3C5BC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3C5C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_3C5D58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_3C5E24()
{
  sub_4D334();
  if (v0 <= 0x3F)
  {
    sub_5FBE4(319, &qword_4E9978);
    if (v1 <= 0x3F)
    {
      sub_5FBE4(319, &qword_4ED9F8);
      if (v2 <= 0x3F)
      {
        sub_5FBE4(319, &qword_4F0DF0);
        if (v3 <= 0x3F)
        {
          sub_5FBE4(319, &qword_4F0350);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_3C5F58()
{
  result = qword_505CF0;
  if (!qword_505CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_505CF0);
  }

  return result;
}

unint64_t sub_3C5FB0()
{
  result = qword_505CF8;
  if (!qword_505CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_505CF8);
  }

  return result;
}

unint64_t sub_3C6008()
{
  result = qword_505D00;
  if (!qword_505D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_505D00);
  }

  return result;
}

uint64_t sub_3C605C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000000004272B0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000422950 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_3EE804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F43676E69746172 && a2 == 0xEB00000000746E75 || (sub_3EE804() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E65726E6567 && a2 == 0xE900000000000065 || (sub_3EE804() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461 || (sub_3EE804() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6867697279706F63 && a2 == 0xE900000000000074)
  {

    return 7;
  }

  else
  {
    v5 = sub_3EE804();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t ShowListType.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x6465776F6C6C6F66;
    v3 = 0x6B72616D6B6F6F62;
    if (a1 != 5)
    {
      v3 = 0xD000000000000011;
    }

    v4 = 0x64616F6C6E776F64;
    if (a1 != 3)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 <= 4)
    {
      v3 = v4;
    }

    v5 = 0x776F6C6C6F666E75;
    if (a1 != 1)
    {
      v5 = 7105633;
    }

    if (a1)
    {
      v2 = v5;
    }

    if (a1 <= 2)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    sub_C2A70();
    v7._countAndFlagsBits = sub_3EE7A4();
    sub_3ED3D4(v7);

    v8._countAndFlagsBits = 41;
    v8._object = 0xE100000000000000;
    sub_3ED3D4(v8);
    return 0x286C656E6E616863;
  }
}

uint64_t sub_3C64B0(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if ((a4 & 1) != 0 && a3 == 1)
        {
          return 1;
        }
      }

      else if ((a4 & 1) != 0 && a3 == 2)
      {
        return 1;
      }
    }

    else if ((a4 & 1) != 0 && !a3)
    {
      return 1;
    }

    return 0;
  }

  if (a1 <= 4)
  {
    if (a1 == 3)
    {
      return (a4 & 1) != 0 && a3 == 3;
    }

    return (a4 & 1) != 0 && a3 == 4;
  }

  if (a1 == 5)
  {
    return (a4 & 1) != 0 && a3 == 5;
  }

  return (a4 & 1) != 0 && a3 > 5;
}

uint64_t ShowOffer.init(adamId:title:showType:artwork:author:category:contentRating:displayType:dzcPageLocation:feedUrl:provider:providerId:providerUrl:storeUrl:subscribable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  v26 = type metadata accessor for ShowOffer();
  sub_FACC(a5, a9 + v26[7], &qword_4F1D50);
  v27 = (a9 + v26[8]);
  *v27 = a6;
  v27[1] = a7;
  v28 = (a9 + v26[9]);
  *v28 = a8;
  v28[1] = a10;
  *(a9 + v26[10]) = a11;
  v29 = (a9 + v26[11]);
  *v29 = a12;
  v29[1] = a13;
  v30 = (a9 + v26[12]);
  *v30 = a14;
  v30[1] = a15;
  sub_FACC(a16, a9 + v26[13], &unk_4E9EE0);
  v31 = (a9 + v26[14]);
  *v31 = a17;
  v31[1] = a18;
  v32 = (a9 + v26[15]);
  *v32 = a19;
  v32[1] = a20;
  sub_FACC(a21, a9 + v26[16], &unk_4E9EE0);
  result = sub_FACC(a22, a9 + v26[17], &unk_4E9EE0);
  *(a9 + v26[18]) = a23;
  return result;
}

uint64_t type metadata accessor for ShowOffer()
{
  result = qword_505D68;
  if (!qword_505D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowOffer.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v144 = a3;
  v151 = a2;
  v4 = 0x64496D616461;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v143 = &v119 - v10;
  __chkstk_darwin(v9);
  v142 = &v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v12 - 8);
  v147 = &v119 - v13;
  v150 = sub_3EBF94();
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v146 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3EBDF4();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v141 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v140 = &v119 - v20;
  v21 = __chkstk_darwin(v19);
  v139 = &v119 - v22;
  v23 = __chkstk_darwin(v21);
  v138 = &v119 - v24;
  v25 = __chkstk_darwin(v23);
  v137 = &v119 - v26;
  v27 = __chkstk_darwin(v25);
  v136 = &v119 - v28;
  v29 = __chkstk_darwin(v27);
  v135 = &v119 - v30;
  v31 = __chkstk_darwin(v29);
  v134 = &v119 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v119 - v34;
  v36 = __chkstk_darwin(v33);
  v133 = &v119 - v37;
  v38 = __chkstk_darwin(v36);
  v132 = &v119 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v119 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = &v119 - v44;
  __chkstk_darwin(v43);
  v47 = &v119 - v46;
  v149 = a1;
  sub_3EBE04();
  sub_3EBDC4();
  if (!v48)
  {
    v53 = v15;
    v54 = *(v16 + 8);
    v54(v47, v15);
    v55 = 0xE600000000000000;
    v56 = v149;
LABEL_11:
    v71 = sub_3ECEE4();
    sub_3C74DC(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v73 = v72;
    v74 = type metadata accessor for ShowOffer();
    *v73 = v4;
    v73[1] = v55;
    v73[2] = v74;
    (*(*(v71 - 8) + 104))(v73, enum case for JSONError.missingProperty(_:), v71);
    swift_willThrow();
    (*(v148 + 8))(v151, v150);
    return (v54)(v56, v53);
  }

  v127 = v42;
  v131 = v8;
  v49 = v145;
  v50 = sub_3E9494();
  v128 = v35;
  if (v49)
  {

    v130 = sub_3E9484();

    v51 = *(v16 + 8);
    v52 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51(v47, v15);
    v145 = 0;
  }

  else
  {
    v130 = v50;
    v145 = 0;
    v51 = *(v16 + 8);
    v52 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51(v47, v15);
  }

  v56 = v149;
  sub_3EBE04();
  v57 = sub_3EBDC4();
  v59 = v58;
  v60 = v45;
  v61 = v15;
  v62 = v15;
  v54 = v51;
  v63 = v52;
  v51(v60, v62);
  v129 = v59;
  if (!v59)
  {
    v4 = 0x656C746974;
    v53 = v61;
    v55 = 0xE500000000000000;
    goto LABEL_11;
  }

  v126 = v57;
  v64 = v127;
  sub_3EBE04();
  v65 = v56;
  v66 = *(v148 + 16);
  v125 = v148 + 16;
  v124 = v66;
  v66(v146, v151, v150);
  sub_CCCD8();
  sub_3EC574();
  v67 = v153;
  v68 = v61;
  if (v153 == 2)
  {
    v69 = v132;
    sub_3EBE04();
    v70 = sub_3EBD24();
    v54(v69, v61);
    if (v70 == 2)
    {
      v67 = 2;
    }

    else if (v70)
    {
      v67 = 1;
    }

    else
    {
      v67 = 2;
    }

    v65 = v149;
  }

  LODWORD(v132) = v67;
  sub_3EBE04();
  v76 = sub_3EBD24();
  v54(v64, v68);
  if (v76 == 2)
  {
    v77 = v133;
    sub_3EBE04();
    v78 = sub_3EBD24();
    v76 = v78;
    v54(v77, v68);
    if (v78 != 2)
    {
      v76 = (v78 & 1) == 0;
    }

    v65 = v149;
  }

  LODWORD(v149) = v76;
  sub_3EBE04();
  v79 = v146;
  v80 = v151;
  v121 = v63;
  v120 = v54;
  v119 = v68;
  v81 = v150;
  v82 = v124;
  v124(v146, v151, v150);
  sub_3C7488();
  sub_3EC574();
  LODWORD(v133) = v152;
  sub_3E7784();
  sub_3EBE04();
  v82(v79, v80, v81);
  sub_3C74DC(&qword_4EECC8, &type metadata accessor for ArtworkModel);
  sub_3EC574();
  v83 = v128;
  sub_3EBE04();
  v146 = sub_3EBDC4();
  v127 = v84;
  v85 = v119;
  v86 = v120;
  v120(v83, v119);
  v87 = v134;
  sub_3EBE04();
  v128 = sub_3EBDC4();
  v125 = v88;
  v86(v87, v85);
  v89 = v135;
  sub_3EBE04();
  v134 = sub_3EBDC4();
  v124 = v90;
  v86(v89, v85);
  v91 = v136;
  sub_3EBE04();
  v135 = sub_3EBDC4();
  v123 = v92;
  v86(v91, v85);
  v93 = v137;
  sub_3EBE04();
  v94 = v142;
  sub_3EBD14();
  v86(v93, v85);
  v95 = v138;
  sub_3EBE04();
  v96 = sub_3EBDC4();
  v136 = v97;
  v137 = v96;
  v86(v95, v85);
  v98 = v139;
  sub_3EBE04();
  v138 = sub_3EBDC4();
  v122 = v99;
  v86(v98, v85);
  v100 = v140;
  sub_3EBE04();
  v101 = v143;
  sub_3EBD14();
  v86(v100, v85);
  v102 = v141;
  sub_3EBE04();
  v103 = v131;
  sub_3EBD14();
  (*(v148 + 8))(v151, v150);
  v86(v65, v85);
  v86(v102, v85);
  v104 = v144;
  v105 = v126;
  *v144 = v130;
  v104[1] = v105;
  v104[2] = v129;
  *(v104 + 24) = v133 & 1;
  v106 = type metadata accessor for ShowOffer();
  sub_FACC(v147, v104 + v106[7], &qword_4F1D50);
  v107 = (v104 + v106[8]);
  v108 = v127;
  *v107 = v146;
  v107[1] = v108;
  v109 = (v104 + v106[9]);
  v110 = v125;
  *v109 = v128;
  v109[1] = v110;
  *(v104 + v106[10]) = v132;
  v111 = (v104 + v106[11]);
  v112 = v124;
  *v111 = v134;
  v111[1] = v112;
  v113 = (v104 + v106[12]);
  v114 = v123;
  *v113 = v135;
  v113[1] = v114;
  sub_FACC(v94, v104 + v106[13], &unk_4E9EE0);
  v115 = (v104 + v106[14]);
  v116 = v136;
  *v115 = v137;
  v115[1] = v116;
  v117 = (v104 + v106[15]);
  v118 = v122;
  *v117 = v138;
  v117[1] = v118;
  sub_FACC(v101, v104 + v106[16], &unk_4E9EE0);
  result = sub_FACC(v103, v104 + v106[17], &unk_4E9EE0);
  *(v104 + v106[18]) = v149;
  return result;
}

unint64_t sub_3C7488()
{
  result = qword_505D08;
  if (!qword_505D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_505D08);
  }

  return result;
}

uint64_t sub_3C74DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ShowOffer.isExplicit.getter()
{
  if (*(v0 + *(type metadata accessor for ShowOffer() + 40)) == 2)
  {
    v1 = 0;
  }

  else
  {
    v2 = sub_3E79D4();
    v4 = v3;
    v1 = 1;
    if (v2 != sub_3E79D4() || v4 != v5)
    {
      v1 = sub_3EE804();
    }
  }

  return v1 & 1;
}

uint64_t ShowOffer.author.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowOffer() + 32));

  return v1;
}

uint64_t ShowOffer.category.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowOffer() + 36));

  return v1;
}

uint64_t ShowOffer.displayType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowOffer() + 44));

  return v1;
}

uint64_t ShowOffer.dzcPageLocation.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowOffer() + 48));

  return v1;
}

uint64_t ShowOffer.provider.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowOffer() + 56));

  return v1;
}

uint64_t ShowOffer.providerId.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowOffer() + 60));

  return v1;
}

uint64_t ShowOffer.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v13 - 8);
  v15 = &v45 - v14;
  v16 = sub_3E7674();
  v18 = v17;
  if (v16 == sub_3E7674() && v18 == v19)
  {
  }

  else
  {
    v20 = sub_3EE804();

    if ((v20 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (!*(a1 + 40))
  {
    v50 = *(a1 + 24);
    v24 = type metadata accessor for PodcastsReferenceLink();
    v25 = v24[6];
    v26 = (a1 + v24[7]);
    v28 = *v26;
    v27 = v26[1];
    v47 = v28;
    v45 = v27;
    sub_A18FC(a1 + v25, v15);
    v29 = sub_3E7784();
    (*(*(v29 - 8) + 56))(v15, 0, 1, v29);
    v48 = *(a1 + v24[11]);
    v30 = sub_3E5DC4();
    v31 = *(v30 - 8);
    v49 = v9;
    v32 = v12;
    v46 = v12;
    v33 = v6;
    v34 = *(v31 + 56);
    v34(v32, 1, 1, v30);
    v34(v9, 1, 1, v30);
    v35 = v33;
    (*(v31 + 16))(v33, a1 + v24[14], v30);
    v36 = v45;

    sub_3C7D44(a1);
    v34(v35, 0, 1, v30);
    v37 = v47;
    *a2 = v50;
    *(a2 + 8) = v37;
    *(a2 + 16) = v36;
    *(a2 + 24) = 0;
    v38 = type metadata accessor for ShowOffer();
    sub_FACC(v15, a2 + v38[7], &qword_4F1D50);
    v39 = (a2 + v38[8]);
    *v39 = 0;
    v39[1] = 0;
    v40 = (a2 + v38[9]);
    *v40 = 0;
    v40[1] = 0;
    *(a2 + v38[10]) = v48;
    v41 = (a2 + v38[11]);
    *v41 = 0;
    v41[1] = 0;
    v42 = (a2 + v38[12]);
    *v42 = 0;
    v42[1] = 0;
    sub_FACC(v46, a2 + v38[13], &unk_4E9EE0);
    v43 = (a2 + v38[14]);
    *v43 = 0;
    v43[1] = 0;
    v44 = (a2 + v38[15]);
    *v44 = 0;
    v44[1] = 0;
    sub_FACC(v49, a2 + v38[16], &unk_4E9EE0);
    sub_FACC(v35, a2 + v38[17], &unk_4E9EE0);
    *(a2 + v38[18]) = 2;
    return (*(*(v38 - 1) + 56))(a2, 0, 1, v38);
  }

LABEL_6:
  sub_3C7D44(a1);
  v21 = type metadata accessor for ShowOffer();
  v22 = *(*(v21 - 8) + 56);

  return v22(a2, 1, 1, v21);
}

uint64_t sub_3C7D44(uint64_t a1)
{
  v2 = type metadata accessor for PodcastsReferenceLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3C7DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_3C7F1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_3C8058()
{
  sub_3C81CC(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v0 <= 0x3F)
  {
    sub_5FBE4(319, &qword_4E9978);
    if (v1 <= 0x3F)
    {
      sub_5FBE4(319, &qword_4F0350);
      if (v2 <= 0x3F)
      {
        sub_3C81CC(319, &qword_4E9918, &type metadata accessor for URL);
        if (v3 <= 0x3F)
        {
          sub_5FBE4(319, &unk_505D78);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_3C81CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Link.init(station:presentationContext:showChevron:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v79 = a4;
  v7 = sub_3E5DC4();
  v88 = *(v7 - 8);
  v89 = v7;
  __chkstk_darwin(v7);
  v87 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E5FC4();
  v85 = *(v9 - 8);
  v86 = v9;
  __chkstk_darwin(v9);
  v84 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v11 - 8);
  v83 = &v66 - v12;
  v82 = sub_3EC1F4();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v90 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v66 - v15;
  v17 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v17);
  v19 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v74) = *a2;
  v20 = *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount);
  if (v20 < 1)
  {
    v22 = 0;
    v24 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_3F5630;
    *(v21 + 56) = &type metadata for Int;
    *(v21 + 64) = &protocol witness table for Int;
    *(v21 + 32) = v20;
    v22 = sub_3ED214();
    v24 = v23;
  }

  v72 = v22;
  v73 = v24;
  if (a3)
  {
    v25 = 8;
  }

  else
  {
    v25 = 32;
  }

  v81 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_3F52F0;
  v27 = a1[3];
  *(v26 + 32) = a1[2];
  *(v26 + 40) = v27;
  v28 = a1[5];
  *(v26 + 48) = a1[4];
  *(v26 + 56) = v28;
  LOBYTE(v91) = v25;

  *(v26 + 64) = sub_3EE7A4();
  *(v26 + 72) = v29;
  v30 = 48;
  if (v24)
  {
    v30 = v22;
  }

  v31 = 0xE100000000000000;
  if (v24)
  {
    v31 = v24;
  }

  *(v26 + 80) = v30;
  *(v26 + 88) = v31;
  v91 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_886BC(&qword_4EED78, &unk_5010E0);
  v32 = sub_3ED134();
  v77 = v33;
  v78 = v32;

  v34 = a1[4];
  v75 = a1[5];
  v76 = v34;
  v35 = type metadata accessor for Link();
  v36 = *(v35 + 28);
  v37 = v35;
  v70 = v35;

  v38 = v79;
  sub_3E7774();
  v39 = sub_3E7784();
  (*(*(v39 - 8) + 56))(&v38[v36], 0, 1, v39);
  v69 = &v38[*(v37 + 36)];
  v40 = v19;
  v71 = a1;
  *v19 = a1;
  swift_storeEnumTagMultiPayload();

  v66 = v16;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v68 = type metadata accessor for FlowAction(0);
  v41 = swift_allocObject();
  sub_FC38(v19, v41 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v42 = (v41 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v42 = 0;
  v42[1] = 0;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = v74;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v41 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v43 = v80;
  v44 = v16;
  v45 = v82;
  (*(v80 + 16))(v90, v44, v82);
  v46 = sub_3EC634();
  v47 = *(v46 - 8);
  v67 = *(v47 + 56);
  v74 = v47 + 56;
  v48 = v83;
  v67(v83, 1, 1, v46);
  v49 = v84;
  sub_3E5FB4();
  v50 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v52 = v51;
  (*(v85 + 8))(v49, v86);
  (*(v43 + 8))(v66, v45);
  sub_FC9C(v40);
  *(v41 + 16) = v50;
  *(v41 + 24) = v52;
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  *(v41 + 48) = 48;
  (*(v43 + 32))(v41 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v90, v45);
  sub_FACC(v48, v41 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v53 = v69;
  v69[3] = v68;
  v53[4] = sub_3C9F54(&qword_4F8A40, type metadata accessor for FlowAction);
  *v53 = v41;
  v54 = v70;
  v67(&v38[*(v70 + 40)], 1, 1, v46);
  v55 = *(v54 + 44);
  sub_3E6F24();
  v56 = [*(v71 + OBJC_IVAR____TtC8ShelfKit13StationDetail_objectID) URIRepresentation];
  v57 = v87;
  sub_3E5D44();

  v58 = sub_3E5CD4();
  v60 = v59;
  (*(v88 + 8))(v57, v89);
  v91 = v58;
  v92 = v60;
  sub_3C9F54(&qword_4F1638, &type metadata accessor for StationEntity);
  sub_3E5754();

  v61 = sub_3E5764();
  result = (*(*(v61 - 8) + 56))(&v38[v55], 0, 1, v61);
  v63 = v77;
  *v38 = v78;
  *(v38 + 1) = v63;
  v64 = v75;
  *(v38 + 2) = v76;
  *(v38 + 3) = v64;
  v65 = v73;
  *(v38 + 4) = v72;
  *(v38 + 5) = v65;
  v38[*(v54 + 32)] = v81;
  return result;
}

uint64_t StationSortOrder.displayTitle.getter()
{
  v1 = 0xD000000000000022;
  v2 = *v0;
  if (v2 > 2)
  {
    if (v2 - 4 >= 2)
    {
      if (v2 != 3)
      {
        return 0;
      }

      v5 = "SORT_MENU_OPTION_BY_DATE_SAVED";
    }

    else
    {
      v5 = "isNotSubscribeable";
      v1 = 0xD00000000000001ALL;
    }
  }

  else
  {
    v3 = "SORT_MENU_OPTION_BY_DATE_SAVED";
    if (v2 == 1)
    {
      v4 = 0xD000000000000022;
    }

    else
    {
      v3 = "STATION_SORT_BY_SHOW_TITLE";
      v4 = 0xD000000000000013;
    }

    if (*v0)
    {
      v5 = v3;
    }

    else
    {
      v5 = "STATION_SORT_MANUAL";
    }

    if (v2)
    {
      v1 = v4;
    }

    else
    {
      v1 = 0xD000000000000017;
    }
  }

  v6 = [objc_opt_self() mainBundle];
  v10._countAndFlagsBits = 0xE000000000000000;
  v11._object = (v5 | 0x8000000000000000);
  v11._countAndFlagsBits = v1;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v7.super.isa = v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v8 = sub_3E5A74(v11, v12, v7, v13, v10);

  return v8;
}

Swift::String_optional __swiftcall StationSortOrder.displaySubtitle(currentSortOrder:)(ShelfKit::StationSortOrder currentSortOrder)
{
  v2 = *currentSortOrder;
  v3 = *v1;
  v4 = 1;
  if (v3 != 3)
  {
    v4 = *v1;
  }

  if (v3 == 5)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (v2 == 3)
  {
    if (v5 != 1)
    {
      goto LABEL_19;
    }

    v6 = [objc_opt_self() mainBundle];
    v18._countAndFlagsBits = 0x800000000042EB60;
    v11 = 1701080143;
LABEL_13:
    v7._countAndFlagsBits = v11 | 0x4620747300000000;
    v7._object = 0xEC00000074737269;
    v8.value._countAndFlagsBits = 0;
    v8.value._object = 0;
    v9.super.isa = v6;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    goto LABEL_14;
  }

  if (v2 != 5)
  {
    if (v5 != v2)
    {
      goto LABEL_19;
    }

    v15 = 0;
    if (v2 > 3)
    {
      if (v2 != 4)
      {
        v16 = 0;
        goto LABEL_24;
      }

      v6 = [objc_opt_self() mainBundle];
      v18._countAndFlagsBits = 0x800000000042EBA0;
      v7._countAndFlagsBits = 0x6E69646E65637341;
      v7._object = 0xE900000000000067;
      goto LABEL_10;
    }

    v16 = 0;
    if (v2 != 1)
    {
      goto LABEL_24;
    }

    v6 = [objc_opt_self() mainBundle];
    v18._countAndFlagsBits = 0x800000000042EB80;
    v11 = 1702323534;
    goto LABEL_13;
  }

  if (v5 != 4)
  {
LABEL_19:
    v15 = 0;
    v16 = 0;
    goto LABEL_24;
  }

  v6 = [objc_opt_self() mainBundle];
  v18._countAndFlagsBits = 0x800000000042F100;
  v7._countAndFlagsBits = 0x69646E6563736544;
  v7._object = 0xEA0000000000676ELL;
LABEL_10:
  v8.value._countAndFlagsBits = 0;
  v8.value._object = 0;
  v9.super.isa = v6;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
LABEL_14:
  v12 = sub_3E5A74(v7, v8, v9, v10, v18);
  v14 = v13;

  v15 = v12;
  v16 = v14;
LABEL_24:
  result.value._object = v16;
  result.value._countAndFlagsBits = v15;
  return result;
}

Swift::Bool __swiftcall StationSortOrder.isSelected(currentSort:)(ShelfKit::StationSortOrder currentSort)
{
  v2 = *currentSort;
  v3 = *v1;
  v4 = 1;
  if (v3 != 3)
  {
    v4 = *v1;
  }

  if (v3 == 5)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = 1;
  if (v2 != 3)
  {
    v6 = *currentSort;
  }

  if (v2 == 5)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  return v5 == v7;
}

uint64_t StationDetail.accessoryText.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) < 1)
  {
    return 0;
  }

  sub_301088();
  return sub_3EE1D4();
}

uint64_t sub_3C8F94(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_3C9054(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

void *sub_3C9108()
{
  v1 = OBJC_IVAR____TtC8ShelfKit13StationDetail_shows;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
LABEL_4:

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_3EE3F4();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v7 = _swiftEmptyArrayStorage;
          goto LABEL_19;
        }
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_22:
          v3 = sub_3EE5A4();
          goto LABEL_4;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_15;
        }
      }

      swift_beginAccess();
      if (*(v5 + 56) <= 0)
      {
      }

      else
      {
        sub_3EE494();
        sub_3EE4D4();
        sub_3EE4E4();
        sub_3EE4A4();
      }

      ++v4;
      if (v6 == v3)
      {
        goto LABEL_16;
      }
    }
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_19:

  return v7;
}

void *StationDetail.predicateForEpisodes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13StationDetail_predicateForEpisodes);
  v2 = v1;
  return v1;
}

uint64_t StationDetail.dateCreated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit13StationDetail_dateCreated;
  v4 = sub_3E5F84();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *StationDetail.__allocating_init(uuid:type:title:artwork:sortOrder:grouped:hidePlayedEpisodes:episodeCount:showCount:unplayedCount:episodes:shows:predicateForEpisodes:objectID:dateCreated:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = swift_allocObject();
  v25 = *a3;
  LOBYTE(a7) = *a7;
  v26 = OBJC_IVAR____TtC8ShelfKit13StationDetail_episodes;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodes) = 0;
  v27 = OBJC_IVAR____TtC8ShelfKit13StationDetail_shows;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_shows) = 0;
  v24[2] = a1;
  v24[3] = a2;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_type) = v25;
  v24[4] = a4;
  v24[5] = a5;
  sub_FACC(a6, v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_artwork, &qword_4F1D50);
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_sortOrder) = a7;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_grouped) = a8;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_hidePlayedEpisodes) = a9;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) = a10;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_showCount) = a11;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount) = a12;
  swift_beginAccess();
  *(v24 + v26) = a13;
  swift_beginAccess();
  *(v24 + v27) = a14;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_predicateForEpisodes) = a15;
  *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_objectID) = a16;
  v28 = OBJC_IVAR____TtC8ShelfKit13StationDetail_dateCreated;
  v29 = sub_3E5F84();
  (*(*(v29 - 8) + 32))(v24 + v28, a17, v29);
  return v24;
}

void *StationDetail.init(uuid:type:title:artwork:sortOrder:grouped:hidePlayedEpisodes:episodeCount:showCount:unplayedCount:episodes:shows:predicateForEpisodes:objectID:dateCreated:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *a3;
  v20 = *a7;
  v21 = OBJC_IVAR____TtC8ShelfKit13StationDetail_episodes;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodes) = 0;
  v22 = OBJC_IVAR____TtC8ShelfKit13StationDetail_shows;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_shows) = 0;
  v17[2] = a1;
  v17[3] = a2;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_type) = v19;
  v17[4] = a4;
  v17[5] = a5;
  sub_FACC(a6, v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_artwork, &qword_4F1D50);
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_sortOrder) = v20;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_grouped) = a8;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_hidePlayedEpisodes) = a9;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) = a10;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_showCount) = a11;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount) = a12;
  swift_beginAccess();
  *(v17 + v21) = a13;
  swift_beginAccess();
  *(v17 + v22) = a14;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_predicateForEpisodes) = a15;
  *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_objectID) = a16;
  v23 = OBJC_IVAR____TtC8ShelfKit13StationDetail_dateCreated;
  v24 = sub_3E5F84();
  (*(*(v24 - 8) + 32))(v17 + v23, a17, v24);
  return v17;
}

void sub_3C973C()
{
  sub_3ED394();
  sub_3ED394();
  sub_3EE964(*(v0 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount));
  sub_3EE994(*(v0 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount));
}

uint64_t StationDetail.deinit()
{

  sub_1433A4(v0 + OBJC_IVAR____TtC8ShelfKit13StationDetail_artwork);

  v1 = OBJC_IVAR____TtC8ShelfKit13StationDetail_dateCreated;
  v2 = sub_3E5F84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t StationDetail.__deallocating_deinit()
{
  StationDetail.deinit();

  return swift_deallocClassInstance();
}

Swift::Int sub_3C98B0()
{
  sub_3EE954();
  sub_3ED394();
  sub_3ED394();
  sub_3EE964(*(v0 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount));
  sub_3EE994(*(v0 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount));
  return sub_3EE9A4();
}

Swift::Int sub_3C992C()
{
  v1 = *v0;
  sub_3EE954();
  sub_3ED394();
  sub_3ED394();
  sub_3EE964(*(v1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount));
  sub_3EE994(*(v1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount));
  return sub_3EE9A4();
}

void sub_3C99A8()
{
  v1 = *v0;
  sub_3ED394();
  sub_3ED394();
  sub_3EE964(*(v1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount));
  sub_3EE994(*(v1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount));
}

Swift::Int sub_3C9A0C()
{
  sub_3EE954();
  v1 = *v0;
  sub_3ED394();
  sub_3ED394();
  sub_3EE964(*(v1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount));
  sub_3EE994(*(v1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount));
  return sub_3EE9A4();
}

uint64_t StationSortOrder.episodeSort.getter()
{
  v1 = *v0;
  if (v1 == 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = 17;
  }

  if (v1 == 1)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

Swift::Bool __swiftcall StationSortOrder.supportsUsingFRP(isGrouped:)(Swift::Bool isGrouped)
{
  if (*v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = isGrouped;
  }

  return *v1 != 2 && v2;
}

ShelfKit::StationSortOrder_optional __swiftcall StationSortOrder.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FlowAction.__allocating_init(station:presentationContext:showChevron:)(void *a1, unsigned __int8 *a2, char a3)
{
  v6 = sub_3EC1F4();
  __chkstk_darwin(v6 - 8);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v9);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = *a2;
  v12 = *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount);
  if (v12 < 1)
  {
    v14 = 0;
    v16 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_3F5630;
    *(v13 + 56) = &type metadata for Int;
    *(v13 + 64) = &protocol witness table for Int;
    *(v13 + 32) = v12;
    v14 = sub_3ED214();
    v16 = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_3F52F0;
  v18 = a1[3];
  *(v17 + 32) = a1[2];
  *(v17 + 40) = v18;
  v19 = a1[5];
  *(v17 + 48) = a1[4];
  *(v17 + 56) = v19;
  if (a3)
  {
    v20 = 8;
  }

  else
  {
    v20 = 32;
  }

  v37 = v20;

  *(v17 + 64) = sub_3EE7A4();
  *(v17 + 72) = v21;
  v22 = 48;
  if (v16)
  {
    v22 = v14;
  }

  v23 = 0xE100000000000000;
  if (v16)
  {
    v23 = v16;
  }

  *(v17 + 80) = v22;
  *(v17 + 88) = v23;
  v36 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_886BC(&qword_4EED78, &unk_5010E0);
  v24 = sub_3ED134();
  v26 = v25;

  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  v27 = a1[4];
  v28 = a1[5];
  v35 = v32;
  v34 = 0;

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v29 = (*(v33 + 176))(v11, v24, v26, v27, v28, &v35, 0, v20, &v34, v8);

  return v29;
}

BOOL _s8ShelfKit13StationDetailC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (sub_3EE804()) && (a1[4] == a2[4] ? (v5 = a1[5] == a2[5]) : (v5 = 0), (v5 || (sub_3EE804()) && *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) == *(a2 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount)))
  {
    return *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount) == *(a2 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_3C9EB8()
{
  result = qword_505DE0;
  if (!qword_505DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_505DE0);
  }

  return result;
}

uint64_t sub_3C9F54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for StationDetail()
{
  result = qword_505E30;
  if (!qword_505E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_3C9FEC()
{
  result = qword_505DF0;
  if (!qword_505DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_505DF0);
  }

  return result;
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_3CA14C()
{
  sub_4EC44();
  if (v0 <= 0x3F)
  {
    sub_3E5F84();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t StationEpisode.stationUuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid);

  return v1;
}

uint64_t StationEpisode.__allocating_init(title:numberedTitle:uuid:podcastUuid:podcastAdamId:stationUuid:adamId:channelAdamId:channelName:artwork:episodeArtwork:author:summary:releaseDate:streamUrl:assetUrl:mediaType:isExplicit:guid:duration:seasonNumber:episodeNumber:episodeType:showTitle:showTypeIsSerial:showTypeSetting:listenNowReason:episodeEntitlementState:hasFreeVersion:subscriptionName:storeTrackId:upNextScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  v51 = swift_allocObject();
  v52 = (v51 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid);
  *v52 = a12;
  v52[1] = a13;
  v53 = OBJC_IVAR____TtC8ShelfKit7Episode_showUberArtwork;
  v54 = sub_3E7784();
  (*(*(v54 - 8) + 56))(v51 + v53, 1, 1, v54);
  v55 = (v51 + OBJC_IVAR____TtC8ShelfKit7Episode_title);
  *v55 = a1;
  v55[1] = a2;
  v56 = (v51 + OBJC_IVAR____TtC8ShelfKit7Episode_numberedTitle);
  *v56 = a3;
  v56[1] = a4;
  *(v51 + 16) = a14;
  *(v51 + 24) = a15 & 1;
  *(v51 + 32) = a16;
  *(v51 + 40) = a17 & 1;
  *(v51 + 48) = a18;
  *(v51 + 56) = a19;
  sub_FACC(a20, v51 + OBJC_IVAR____TtC8ShelfKit7Episode_artwork, &qword_4F1D50);
  sub_FACC(a21, v51 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeArtwork, &qword_4F1D50);
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_summary) = a24;
  v57 = (v51 + OBJC_IVAR____TtC8ShelfKit7Episode_author);
  *v57 = a22;
  v57[1] = a23;
  sub_FACC(a25, v51 + OBJC_IVAR____TtC8ShelfKit7Episode_releaseDate, &qword_4EF460);
  sub_FACC(a26, v51 + OBJC_IVAR____TtC8ShelfKit7Episode_streamUrl, &unk_4E9EE0);
  sub_FACC(a27, v51 + OBJC_IVAR____TtC8ShelfKit7Episode_assetUrl, &unk_4E9EE0);
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_mediaType) = a28;
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_isExplicit) = a29;
  v58 = (v51 + OBJC_IVAR____TtC8ShelfKit7Episode_guid);
  *v58 = a30;
  v58[1] = a31;
  v59 = v51 + OBJC_IVAR____TtC8ShelfKit7Episode_duration;
  *v59 = a32;
  *(v59 + 8) = a33 & 1;
  v60 = v51 + OBJC_IVAR____TtC8ShelfKit7Episode_seasonNumber;
  *v60 = a34;
  *(v60 + 8) = a35 & 1;
  v61 = v51 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeNumber;
  *v61 = a36;
  *(v61 + 8) = a37 & 1;
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeType) = a38;
  v62 = (v51 + OBJC_IVAR____TtC8ShelfKit7Episode_showTitle);
  *v62 = a39;
  v62[1] = a40;
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_showDisplayType) = 3;
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeIsSerial) = a41;
  v63 = v51 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeSetting;
  *v63 = a42;
  *(v63 + 8) = a43 & 1;
  *(v51 + 64) = a5;
  *(v51 + 72) = a6;
  *(v51 + 80) = a7;
  *(v51 + 88) = a8;
  *(v51 + 96) = a10;
  *(v51 + 104) = a11 & 1;
  sub_FACC(a44, v51 + OBJC_IVAR____TtC8ShelfKit7Episode_listenNowReason, &qword_4EF470);
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeEntitlementState) = a45;
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_hasFreeVersion) = a46;
  v64 = (v51 + OBJC_IVAR____TtC8ShelfKit7Episode_subscriptionName);
  *v64 = a47;
  v64[1] = a48;
  v65 = v51 + OBJC_IVAR____TtC8ShelfKit7Episode_storeTrackId;
  *v65 = a49;
  *(v65 + 8) = a50 & 1;
  *(v51 + OBJC_IVAR____TtC8ShelfKit7Episode_upNextScore) = a9;
  return v51;
}

uint64_t StationEpisode.init(title:numberedTitle:uuid:podcastUuid:podcastAdamId:stationUuid:adamId:channelAdamId:channelName:artwork:episodeArtwork:author:summary:releaseDate:streamUrl:assetUrl:mediaType:isExplicit:guid:duration:seasonNumber:episodeNumber:episodeType:showTitle:showTypeIsSerial:showTypeSetting:listenNowReason:episodeEntitlementState:hasFreeVersion:subscriptionName:storeTrackId:upNextScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  v52 = (v50 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid);
  *v52 = a12;
  v52[1] = a13;
  v53 = OBJC_IVAR____TtC8ShelfKit7Episode_showUberArtwork;
  v54 = sub_3E7784();
  (*(*(v54 - 8) + 56))(v50 + v53, 1, 1, v54);
  v55 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_title);
  *v55 = a1;
  v55[1] = a2;
  v56 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_numberedTitle);
  *v56 = a3;
  v56[1] = a4;
  *(v50 + 16) = a14;
  *(v50 + 24) = a15 & 1;
  *(v50 + 32) = a16;
  *(v50 + 40) = a17 & 1;
  *(v50 + 48) = a18;
  *(v50 + 56) = a19;
  sub_FACC(a20, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_artwork, &qword_4F1D50);
  sub_FACC(a21, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeArtwork, &qword_4F1D50);
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_summary) = a24;
  v57 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_author);
  *v57 = a22;
  v57[1] = a23;
  sub_FACC(a25, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_releaseDate, &qword_4EF460);
  sub_FACC(a26, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_streamUrl, &unk_4E9EE0);
  sub_FACC(a27, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_assetUrl, &unk_4E9EE0);
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_mediaType) = a28;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_isExplicit) = a29;
  v58 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_guid);
  *v58 = a30;
  v58[1] = a31;
  v59 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_duration;
  *v59 = a32;
  *(v59 + 8) = a33 & 1;
  v60 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_seasonNumber;
  *v60 = a34;
  *(v60 + 8) = a35 & 1;
  v61 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeNumber;
  *v61 = a36;
  *(v61 + 8) = a37 & 1;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeType) = a38;
  v62 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_showTitle);
  *v62 = a39;
  v62[1] = a40;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_showDisplayType) = 3;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeIsSerial) = a41;
  v63 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeSetting;
  *v63 = a42;
  *(v63 + 8) = a43 & 1;
  *(v50 + 64) = a5;
  *(v50 + 72) = a6;
  *(v50 + 80) = a7;
  *(v50 + 88) = a8;
  *(v50 + 96) = a10;
  *(v50 + 104) = a11 & 1;
  sub_FACC(a44, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_listenNowReason, &qword_4EF470);
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeEntitlementState) = a45;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_hasFreeVersion) = a46;
  v64 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_subscriptionName);
  *v64 = a47;
  v64[1] = a48;
  v65 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_storeTrackId;
  *v65 = a49;
  *(v65 + 8) = a50 & 1;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_upNextScore) = a9;
  return v50;
}

void sub_3CAF98()
{
  sub_3EE3C4(60);
  v0._countAndFlagsBits = 0xD000000000000195;
  v0._object = 0x80000000004307C0;
  sub_3ED3D4(v0);
  v1._object = 0x8000000000430960;
  v1._countAndFlagsBits = 0xD00000000000003ALL;
  sub_3ED3D4(v1);
  sub_3EE574();
  __break(1u);
}

uint64_t sub_3CB044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v278 = a3;
  v6 = sub_3E6B04();
  v218 = *(v6 - 8);
  v219 = v6;
  __chkstk_darwin(v6);
  v217 = &v217 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF420);
  __chkstk_darwin(v8 - 8);
  v291 = &v217 - v9;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v269);
  v250 = &v217 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v11 - 8);
  v254 = &v217 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v252 = &v217 - v14;
  __chkstk_darwin(v15);
  v270 = &v217 - v16;
  __chkstk_darwin(v17);
  v290 = &v217 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF470);
  __chkstk_darwin(v19 - 8);
  v271 = &v217 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v251 = &v217 - v22;
  __chkstk_darwin(v23);
  v293 = &v217 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v25 - 8);
  v27 = &v217 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v288 = &v217 - v29;
  __chkstk_darwin(v30);
  v289 = &v217 - v31;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v266);
  v242 = &v217 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v33 - 8);
  v282 = &v217 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v268 = &v217 - v36;
  __chkstk_darwin(v37);
  v267 = &v217 - v38;
  __chkstk_darwin(v39);
  v284 = &v217 - v40;
  __chkstk_darwin(v41);
  v287 = &v217 - v42;
  __chkstk_darwin(v43);
  v286 = &v217 - v44;
  __chkstk_darwin(v45);
  v285 = &v217 - v46;
  v47 = sub_3EC544();
  __chkstk_darwin(v47 - 8);
  v244 = (&v217 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v49 - 8);
  v283 = &v217 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v243 = &v217 - v52;
  v273 = sub_3E5FC4();
  v53 = *(v273 - 8);
  __chkstk_darwin(v273);
  v259 = &v217 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_3EC1F4();
  v279 = *(v272 - 8);
  __chkstk_darwin(v272);
  v247 = &v217 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v258 = &v217 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v58 - 8);
  v264 = &v217 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v265 = &v217 - v61;
  __chkstk_darwin(v62);
  v280 = &v217 - v63;
  __chkstk_darwin(v64);
  v281 = &v217 - v65;
  __chkstk_darwin(v66);
  v294 = &v217 - v67;
  sub_3E67A4();
  v249 = a2;
  v260 = sub_360B08(a1, a2, &v301);
  v307 = v301;
  sub_FCF8(&v307, &unk_4F8A10);
  v306 = v302;
  sub_FCF8(&v306, &qword_4E94E0);
  v305 = v303;
  sub_FCF8(&v305, &unk_4F8A20);
  sub_16AC0(v304);
  v68 = *(v3 + 64);
  v69 = *(v3 + 72);
  v70 = *(v3 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid);
  v71 = *(v3 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid + 8);
  v72 = *(v3 + 16);
  v248 = v3;
  v73 = *(v3 + 24);
  type metadata accessor for LibraryStationEpisodeOfferAction();
  v74 = swift_allocObject();
  v75 = (v74 + OBJC_IVAR____TtC8ShelfKit32LibraryStationEpisodeOfferAction_stationUuid);
  v257 = v70;
  *v75 = v70;
  v75[1] = v71;
  v292 = v74;
  v76 = (v74 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_episodeUuid);
  v274 = v68;
  *v76 = v68;
  v76[1] = v69;
  v261 = v69;
  swift_bridgeObjectRetain_n();
  v256 = v71;
  swift_bridgeObjectRetain_n();
  v263 = v72;
  v77 = v73;
  v253 = v27;
  if ((v73 & 1) != 0 || v72 == sub_3E9484())
  {
    v72 = 0;
    v78 = 1;
  }

  else
  {
    v78 = 0;
  }

  v79 = v292;
  v80 = v292 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_contentId;
  *v80 = v72;
  *(v80 + 8) = v78;
  v81 = sub_3EC634();
  v82 = *(v81 - 8);
  v83 = v294;
  v276 = *(v82 + 56);
  v277 = v81;
  v275 = v82 + 56;
  v276(v294, 1, 1);
  v84 = v258;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v85 = v259;
  sub_3E5FB4();
  v86 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v88 = v87;
  v89 = *(v53 + 8);
  v262 = v53 + 8;
  v255 = v89;
  v89(v85, v273);
  *(v79 + 16) = v86;
  *(v79 + 24) = v88;
  *(v79 + 32) = 0;
  *(v79 + 40) = 0;
  *(v79 + 48) = 32;
  v245 = *(v279 + 32);
  v246 = v279 + 32;
  v245(v79 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v84, v272);
  sub_FACC(v83, v79 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  sub_3E8594();
  v90 = v77;
  if (v77)
  {

    v91 = v247;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v92 = v263;
  }

  else
  {
    v92 = v263;
    if (sub_3E94A4())
    {

      v91 = v247;
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
      sub_3EC044();
      *(swift_allocObject() + 16) = xmmword_3F5630;
      v300[0] = v92;
      sub_17A28();
      sub_3EE1F4();
      v241 = sub_3E8474();
      v93 = sub_3E5DC4();
      v94 = v243;
      (*(*(v93 - 8) + 56))(v243, 1, 1, v93);
      sub_3EBFC4();

      v92 = v263;

      sub_FCF8(v94, &unk_4E9EE0);
      sub_3EC534();
      v91 = v247;
      sub_3EC1C4();
    }
  }

  type metadata accessor for PlayStationAction();
  v95 = swift_allocObject();
  v96 = (v95 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_stationUUID);
  v97 = v256;
  *v96 = v257;
  v96[1] = v97;
  v98 = (v95 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID);
  v99 = v261;
  *v98 = v274;
  v98[1] = v99;
  v100 = v95 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeAdamID;
  *v100 = v92;
  *(v100 + 8) = v90;
  v101 = v279;
  v102 = v258;
  v103 = v272;
  (*(v279 + 16))(v258, v91, v272);
  (v276)(v294, 1, 1, v277);

  v104 = v259;
  sub_3E5FB4();
  v105 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v107 = v106;
  v255(v104, v273);
  (*(v101 + 8))(v91, v103);
  *(v95 + 16) = v105;
  *(v95 + 24) = v107;
  *(v95 + 32) = 0;
  *(v95 + 40) = 0;
  *(v95 + 48) = 32;
  v108 = v245;
  v245(v95 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v102, v103);
  v263 = v95;
  v109 = v294;
  sub_FACC(v294, v95 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v279 = sub_3CF59C(v278);
  type metadata accessor for LibraryEpisodeContextAction();
  v110 = swift_allocObject();
  v111 = (v110 + OBJC_IVAR____TtC8ShelfKit27LibraryEpisodeContextAction_episodeUuid);
  *v111 = v274;
  v111[1] = v99;
  v112 = (v110 + OBJC_IVAR____TtC8ShelfKit27LibraryEpisodeContextAction_stationUuid);
  v113 = v256;
  *v112 = v257;
  v112[1] = v113;
  (v276)(v109, 1, 1, v277);

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v114 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v116 = v115;
  v255(v104, v273);
  *(v110 + 16) = v114;
  *(v110 + 24) = v116;
  *(v110 + 32) = 0;
  *(v110 + 40) = 0;
  *(v110 + 48) = 32;
  v108(v110 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v102, v272);
  v278 = v110;
  sub_FACC(v109, v110 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v117 = v260;
  v118 = *(v260 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid + 8);
  v223 = *(v260 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
  v222 = *(v260 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastAdamId);
  v221 = *(v260 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId);
  v248 = *(v260 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  v220 = *(v260 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId + 8);
  v239 = *(v260 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType);
  v241 = *(v260 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration);
  v240 = *(v260 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration + 8);
  v237 = *(v260 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber);
  v236 = *(v260 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber + 8);
  v235 = *(v260 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber);
  v234 = *(v260 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber + 8);
  v238 = *(v260 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType);
  sub_FBD0(v260 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, v285, &qword_4F1D50);
  sub_FBD0(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, v286, &qword_4F1D50);
  sub_FBD0(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, v287, &qword_4F1D50);
  v119 = *(v117 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8);
  v272 = *(v117 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v120 = *(v117 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles);
  v121 = *(v117 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal + 8);
  v245 = *(v117 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  LODWORD(v247) = *(v117 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating);
  LODWORD(v246) = *(v117 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating + 4);
  v262 = type metadata accessor for Action();
  v300[3] = v262;
  v300[4] = sub_3CFBEC();
  v300[0] = v279;
  v122 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
  swift_beginAccess();
  v123 = v117 + v122;
  v124 = v242;
  sub_FBD0(v123, v242, &qword_4EED80);
  v244 = v121;

  swift_retain_n();

  v125 = v118;

  v273 = v119;

  v243 = v120;

  sub_3ECAF4();
  sub_FCF8(v124, &qword_4EED80);
  v255 = v298;
  v126 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary);
  v127 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v128 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption + 8);
  LODWORD(v242) = *(v117 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit);
  v233 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial);
  sub_FBD0(v117 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, v283, &unk_4E9EE0);
  if (*(v117 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate))
  {
    v129 = v126;

    sub_3E6B14();
  }

  else
  {
    v130 = sub_3E5F84();
    (*(*(v130 - 8) + 56))(v289, 1, 1, v130);
    v131 = v126;
  }

  v259 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState);
  v227 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion);
  v132 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName + 8);
  v226 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v258 = v132;
  v133 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName + 8);
  v225 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v257 = v133;
  v134 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle + 8);
  v224 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v256 = v134;
  sub_FBD0(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, v293, &qword_4EF470);
  v135 = sub_3E7DF4();
  v136 = v249;
  v137 = (*(*(v135 - 8) + 48))(v249, 1, v135);
  v229 = v126;
  if (v137 == 1)
  {
    v138 = sub_3E7CB4();
    (*(*(v138 - 8) + 56))(v290, 1, 1, v138);
  }

  else
  {
    v139 = v290;
    sub_FBD0(v136, v290, &qword_4EF428);
    v140 = enum case for EyebrowBuilder.ListContext.show(_:);
    v141 = sub_3E7CB4();
    v142 = *(v141 - 8);
    (*(v142 + 104))(v139, v140, v141);
    (*(v142 + 56))(v139, 0, 1, v141);
  }

  v249 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime);
  v232 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime + 8);
  v231 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime);
  v230 = *(v117 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime + 8);

  v143 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  swift_beginAccess();
  v144 = v117 + v143;
  v145 = v250;
  sub_FBD0(v144, v250, &qword_4EED90);
  sub_3ECAF4();

  sub_FCF8(v145, &qword_4EED90);
  type metadata accessor for LibraryEpisodeLockup();
  v146 = swift_allocObject();
  v147 = (v146 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);
  v148 = v274;
  v149 = v261;
  *v147 = v274;
  v147[1] = v149;
  v150 = (v146 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
  v151 = v222;
  *v150 = v223;
  v150[1] = v125;
  *(v146 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastAdamId) = v151;
  v152 = v146 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId;
  *v152 = v221;
  *(v152 + 8) = v220;
  *(v146 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_presentDetailsAction) = v279;
  sub_FBD0(v283, v146 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, &unk_4E9EE0);
  v298 = v148;
  v299 = v149;

  v308._countAndFlagsBits = 45;
  v308._object = 0xE100000000000000;
  sub_3ED3D4(v308);
  if (v128)
  {
    v153 = v127;
  }

  else
  {
    v153 = 7104878;
  }

  if (v128)
  {
    v154 = v128;
  }

  else
  {
    v154 = 0xE300000000000000;
  }

  v274 = v128;

  v309._countAndFlagsBits = v153;
  v309._object = v154;
  sub_3ED3D4(v309);

  v310._countAndFlagsBits = 45;
  v310._object = 0xE100000000000000;
  sub_3ED3D4(v310);
  v297[0] = v259;
  v311._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v311);

  v312._countAndFlagsBits = 45;
  v312._object = 0xE100000000000000;
  sub_3ED3D4(v312);
  if (v273)
  {
    v155 = v272;
  }

  else
  {
    v155 = 7104878;
  }

  if (v273)
  {
    v156 = v273;
  }

  else
  {
    v156 = 0xE300000000000000;
  }

  v313._countAndFlagsBits = v155;
  v313._object = v156;
  sub_3ED3D4(v313);

  v314._countAndFlagsBits = 45;
  v314._object = 0xE100000000000000;
  sub_3ED3D4(v314);
  v157 = v251;
  sub_FBD0(v293, v251, &qword_4EF470);
  v158 = sub_3E8D24();
  v159 = *(v158 - 8);
  v222 = *(v159 + 48);
  v223 = v159 + 48;
  v160 = v222(v157, 1, v158);
  v228 = v127;
  v250 = v158;
  if (v160 == 1)
  {
    sub_FCF8(v157, &qword_4EF470);
    v161 = 0xE400000000000000;
    v162._countAndFlagsBits = 1701736302;
  }

  else
  {
    v163 = sub_3E8D14();
    v161 = v164;
    (*(v159 + 8))(v157, v158);
    v162._countAndFlagsBits = v163;
  }

  v162._object = v161;
  sub_3ED3D4(v162);

  v261 = v298;
  v251 = v299;
  sub_FBD0(v285, v284, &qword_4F1D50);
  v165 = v267;
  sub_FBD0(v286, v267, &qword_4F1D50);
  v166 = v268;
  sub_FBD0(v287, v268, &qword_4F1D50);
  sub_FBD0(v300, &v298, &qword_4EDE00);
  sub_FBD0(v289, v288, &qword_4EF460);
  v167 = v271;
  sub_FBD0(v293, v271, &qword_4EF470);
  v168 = v270;
  sub_FBD0(v290, v270, &qword_4EF468);
  v169 = sub_3E9104();
  (*(*(v169 - 8) + 56))(v291, 1, 1, v169);
  sub_FBD0(v281, v280, &unk_4E9170);
  v170 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  v297[0] = 0;
  sub_3ECAE4();
  *(v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled) = 0;
  v171 = v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber;
  *v171 = v235;
  *(v171 + 8) = v234;
  v172 = v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber;
  *v172 = v237;
  *(v172 + 8) = v236;
  *(v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType) = v239;
  sub_FBD0(v165, v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, &qword_4F1D50);
  *(v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType) = v238;
  v173 = (v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v174 = v274;
  *v173 = v228;
  v173[1] = v174;
  *(v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary) = v229;
  *(v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_transcript) = 0;
  swift_beginAccess();
  sub_FCF8(v146 + v170, &qword_4EED80);
  v296[0] = 0;
  sub_3ECAE4();
  swift_endAccess();
  v175 = v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration;
  *v175 = v241;
  *(v175 + 8) = v240;
  *(v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState) = v259;
  *(v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion) = v227;
  v176 = (v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v177 = v258;
  *v176 = v226;
  v176[1] = v177;
  v178 = (v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v179 = v257;
  *v178 = v225;
  v178[1] = v179;
  v180 = (v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v181 = v256;
  *v180 = v224;
  v180[1] = v181;
  *(v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showDisplayType) = 3;
  *(v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial) = v233;
  sub_FBD0(v167, v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, &qword_4EF470);
  sub_FBD0(v166, v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, &qword_4F1D50);
  v182 = v254;
  sub_FBD0(v168, v254, &qword_4EF468);
  v183 = sub_3E7CB4();
  v184 = *(v183 - 8);
  v185 = *(v184 + 48);
  if (v185(v182, 1, v183) == 1)
  {
    v186 = 1;
    v187 = v222(v167, 1, v250);
    v188 = v252;
    v189 = v253;
    if (v187 != 1)
    {
      *v252 = 0;
      (*(v184 + 104))(v188, enum case for EyebrowBuilder.ListContext.listenNow(_:), v183);
      v186 = 0;
    }

    (*(v184 + 56))(v188, v186, 1, v183);
    v190 = v254;
    if (v185(v254, 1, v183) != 1)
    {
      sub_FCF8(v190, &qword_4EF468);
    }
  }

  else
  {
    v188 = v252;
    (*(v184 + 32))(v252, v182, v183);
    (*(v184 + 56))(v188, 0, 1, v183);
    v189 = v253;
  }

  sub_FACC(v188, v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, &qword_4EF468);
  v191 = v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime;
  *v191 = v249;
  *(v191 + 8) = v232;
  v192 = v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime;
  *v192 = v231;
  *(v192 + 8) = v230;
  sub_FBD0(v291, v146 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_thinClientEpisodeState, &qword_4EF420);
  v193 = v248;
  v194 = sub_3E82A4();
  v274 = v195;
  v259 = v196;
  LODWORD(v258) = v197;
  sub_FBD0(v284, v282, &qword_4F1D50);
  sub_FBD0(v288, v189, &qword_4EF460);
  v198 = sub_3E5F84();
  v199 = *(v198 - 8);
  if ((*(v199 + 48))(v189, 1, v198) == 1)
  {
    sub_FCF8(v189, &qword_4EF460);
    v257 = 0;
  }

  else
  {
    v200 = v217;
    (*(v199 + 16))(v217, v189, v198);
    (*(v218 + 104))(v200, enum case for LazyDate.State.valid(_:), v219);
    v257 = sub_3E6AF4();
    (*(v199 + 8))(v189, v198);
  }

  sub_FBD0(&v298, v297, &qword_4EDE00);
  sub_FBD0(v280, v294, &unk_4E9170);
  *(v146 + 32) = 0u;
  *(v146 + 48) = 0u;
  *(v146 + 64) = 0;
  v201 = v265;
  (v276)(v265, 1, 1, v277);
  sub_FBD0(v201, v264, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v201, &unk_4E9170);
  v296[0] = 0;
  sub_3ECAE4();
  memset(v296, 0, sizeof(v296));
  sub_FBD0(v296, v295, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v296, &qword_4EDE00);
  v296[0] = 0;
  sub_3ECAE4();
  v296[0] = 0;
  sub_3ECAE4();
  v296[0] = 0;
  sub_3ECAE4();
  v296[0] = 0;
  sub_3ECAE4();
  v202 = v251;
  *(v146 + 16) = v261;
  *(v146 + 24) = v202;
  *(v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v193;
  v203 = v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v204 = v274;
  *v203 = v194;
  *(v203 + 8) = v204;
  *(v203 + 16) = v259;
  *(v203 + 24) = v258;
  *(v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v242;
  *(v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v282, v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v205 = (v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v206 = v273;
  *v205 = v272;
  v205[1] = v206;
  *(v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v243;
  v207 = (v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v207 = 0;
  v207[1] = 0;
  v208 = (v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v208 = 0;
  v208[1] = 0;
  *(v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v209 = (v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v210 = v244;
  *v209 = v245;
  v209[1] = v210;
  *(v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = v257;
  v211 = (v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v211 = 0;
  v211[1] = 0;
  v212 = v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v212 = v247;
  *(v212 + 4) = v246;
  v213 = v146 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v213 = 0;
  *(v213 + 8) = 1;
  v295[0] = v292;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v297, v296, &qword_4EDE00);
  sub_FBD0(v296, v295, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v296, &qword_4EDE00);
  v295[0] = v278;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v295[0] = v263;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v295[0] = v279;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v295[0] = v255;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v214 = v294;
  v215 = v265;
  sub_FBD0(v294, v265, &unk_4E9170);
  sub_FBD0(v215, v264, &unk_4E9170);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();

  sub_FCF8(v215, &unk_4E9170);
  sub_FCF8(v214, &unk_4E9170);
  sub_FCF8(v297, &qword_4EDE00);
  sub_FCF8(v282, &qword_4F1D50);
  sub_FCF8(v280, &unk_4E9170);
  sub_FCF8(v291, &qword_4EF420);
  sub_FCF8(v270, &qword_4EF468);
  sub_FCF8(v288, &qword_4EF460);
  sub_FCF8(&v298, &qword_4EDE00);
  sub_FCF8(v268, &qword_4F1D50);
  sub_FCF8(v267, &qword_4F1D50);
  sub_FCF8(v284, &qword_4F1D50);
  sub_FCF8(v281, &unk_4E9170);
  sub_FCF8(v290, &qword_4EF468);
  sub_FCF8(v293, &qword_4EF470);
  sub_FCF8(v289, &qword_4EF460);
  sub_FCF8(v283, &unk_4E9EE0);
  sub_FCF8(v287, &qword_4F1D50);
  sub_FCF8(v286, &qword_4F1D50);
  sub_FCF8(v285, &qword_4F1D50);
  sub_FCF8(v300, &qword_4EDE00);
  sub_FCF8(v271, &qword_4EF470);
  return v146;
}

uint64_t sub_3CD600()
{
  v1 = v0;
  v2 = sub_3E6B04();
  v161 = *(v2 - 8);
  v162 = v2;
  __chkstk_darwin(v2);
  v160 = &v159 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF420);
  __chkstk_darwin(v4 - 8);
  v235 = &v159 - v5;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v224);
  v194 = &v159 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v220 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v223 = &v159 - v10;
  __chkstk_darwin(v11);
  v222 = &v159 - v12;
  __chkstk_darwin(v13);
  v232 = &v159 - v14;
  __chkstk_darwin(v15);
  v234 = &v159 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v17 - 8);
  v203 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v204 = &v159 - v20;
  __chkstk_darwin(v21);
  v221 = &v159 - v22;
  __chkstk_darwin(v23);
  v233 = &v159 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF470);
  __chkstk_darwin(v25 - 8);
  v225 = &v159 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v195 = &v159 - v28;
  __chkstk_darwin(v29);
  v237 = &v159 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v31 - 8);
  v205 = &v159 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v230 = &v159 - v34;
  __chkstk_darwin(v35);
  v231 = &v159 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v37 - 8);
  v219 = &v159 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v39 - 8);
  v226 = &v159 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v217 = &v159 - v42;
  __chkstk_darwin(v43);
  v216 = &v159 - v44;
  __chkstk_darwin(v45);
  v227 = &v159 - v46;
  __chkstk_darwin(v47);
  v229 = &v159 - v48;
  __chkstk_darwin(v49);
  v228 = &v159 - v50;
  __chkstk_darwin(v51);
  v53 = &v159 - v52;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v236);
  v55 = &v159 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v56 - 8);
  v58 = &v159 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF428);
  __chkstk_darwin(v59 - 8);
  v61 = &v159 - v60;
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  v251 = 1;
  v255 = 0;
  v256 = 10;
  v62 = sub_3E7DF4();
  (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
  sub_3E67A4();
  sub_3E8954();
  v63 = sub_3E8944();
  (*(*(v63 - 8) + 56))(v58, 0, 1, v63);
  v64 = sub_3CB044(v58, v61, &v244);
  v250 = v244;
  sub_FCF8(&v250, &unk_4F8A10);
  v249 = v245;
  sub_FCF8(&v249, &qword_4E94E0);
  v248 = v246;
  sub_FCF8(&v248, &unk_4F8A20);
  sub_16AC0(v247);
  sub_FCF8(v58, &qword_4E9FD0);
  sub_FCF8(v61, &qword_4EF428);
  v65 = v64 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  swift_beginAccess();
  v213 = v65;
  sub_FBD0(v65, v55, &qword_4EED80);

  sub_3ECAF4();
  sub_FCF8(v55, &qword_4EED80);
  v66 = v243[0];
  v67 = *(v1 + 72);
  v177 = *(v1 + 64);
  v209 = v67;
  v68 = *(v64 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid + 8);
  v168 = *(v64 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
  v207 = v68;
  v167 = *(v64 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastAdamId);
  v166 = *(v64 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId);
  v212 = *(v64 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  v165 = *(v64 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId + 8);
  v190 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType);
  v192 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration);
  v191 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration + 8);
  v188 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber);
  v187 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber + 8);
  v186 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber);
  v185 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber + 8);
  v189 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType);
  v218 = v53;
  sub_FBD0(v64 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, v53, &qword_4F1D50);
  sub_FBD0(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, v228, &qword_4F1D50);
  sub_FBD0(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, v229, &qword_4F1D50);
  v69 = *(v64 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8);
  v210 = *(v64 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v70 = *(v64 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles);
  v71 = *(v64 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal + 8);
  v198 = *(v64 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v200 = *(v64 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating);
  v199 = *(v64 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating + 4);
  v72 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction;
  swift_beginAccess();
  sub_FBD0(v64 + v72, v55, &qword_4EED80);
  v197 = v71;

  v211 = v69;

  v196 = v70;

  sub_3ECAF4();
  sub_FCF8(v55, &qword_4EED80);
  v215 = v243[0];
  if (v66)
  {
    v73 = type metadata accessor for Action();
    v74 = sub_3CFBEC();
  }

  else
  {
    v73 = 0;
    v74 = 0;
    v243[2] = 0;
    v243[1] = 0;
  }

  v243[0] = v66;
  v243[3] = v73;
  v243[4] = v74;
  v75 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  swift_beginAccess();
  sub_FBD0(v64 + v75, v55, &qword_4EED80);
  v206 = v66;

  sub_3ECAF4();
  sub_FCF8(v55, &qword_4EED80);
  v214 = v241;
  sub_FBD0(v213, v55, &qword_4EED80);
  sub_3ECAF4();
  sub_FCF8(v55, &qword_4EED80);
  v202 = v241;
  v76 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  swift_beginAccess();
  sub_FBD0(v64 + v76, v55, &qword_4EED80);
  sub_3ECAF4();
  sub_FCF8(v55, &qword_4EED80);
  v213 = v241;
  v164 = *(v64 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_presentDetailsAction);
  v77 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
  swift_beginAccess();
  sub_FBD0(v64 + v77, v55, &qword_4EED80);

  sub_3ECAF4();
  sub_FCF8(v55, &qword_4EED80);
  v201 = v241;
  v78 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary);
  v80 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v79 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption + 8);
  v193 = *(v64 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit);
  v178 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial);
  v81 = v219;
  sub_FBD0(v64 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, v219, &unk_4E9EE0);
  v82 = sub_3E5F84();
  v183 = *(v82 - 8);
  v184 = v82;
  (*(v183 + 56))(v231, 1, 1);
  v208 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState);
  v175 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion);
  v83 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName + 8);
  v173 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v84 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName + 8);
  v171 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v85 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle + 8);
  v169 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v86 = sub_3E8D24();
  v163 = *(v86 - 8);
  (*(v163 + 56))(v237, 1, 1, v86);
  sub_FBD0(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, v233, &qword_4EF468);
  v182 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime);
  v181 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime + 8);
  v180 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime);
  v179 = *(v64 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime + 8);
  v170 = v85;

  v176 = v78;
  v87 = v78;
  v174 = v83;

  v172 = v84;

  v88 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  swift_beginAccess();
  v89 = v64 + v88;
  v90 = v194;
  sub_FBD0(v89, v194, &qword_4EED90);
  sub_3ECAF4();

  sub_FCF8(v90, &qword_4EED90);
  type metadata accessor for LibraryEpisodeLockup();
  v91 = swift_allocObject();
  v92 = (v91 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);
  v93 = v177;
  v94 = v209;
  *v92 = v177;
  v92[1] = v94;
  v95 = (v91 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
  v96 = v207;
  *v95 = v168;
  v95[1] = v96;
  v97 = v166;
  *(v91 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastAdamId) = v167;
  v98 = v91 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId;
  *v98 = v97;
  *(v98 + 8) = v165;
  *(v91 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_presentDetailsAction) = v164;
  sub_FBD0(v81, v91 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, &unk_4E9EE0);
  v241 = v93;
  v242 = v94;

  v257._countAndFlagsBits = 45;
  v257._object = 0xE100000000000000;
  sub_3ED3D4(v257);
  v194 = v80;
  if (v79)
  {
    v99 = v79;
  }

  else
  {
    v80 = 7104878;
    v99 = 0xE300000000000000;
  }

  v177 = v79;
  v100 = v163;

  v258._countAndFlagsBits = v80;
  v258._object = v99;
  sub_3ED3D4(v258);

  v259._countAndFlagsBits = 45;
  v259._object = 0xE100000000000000;
  sub_3ED3D4(v259);
  v240[0] = v208;
  v260._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v260);

  v261._countAndFlagsBits = 45;
  v261._object = 0xE100000000000000;
  sub_3ED3D4(v261);
  if (v211)
  {
    v101 = v210;
  }

  else
  {
    v101 = 7104878;
  }

  if (v211)
  {
    v102 = v211;
  }

  else
  {
    v102 = 0xE300000000000000;
  }

  v262._countAndFlagsBits = v101;
  v262._object = v102;
  sub_3ED3D4(v262);

  v263._countAndFlagsBits = 45;
  v263._object = 0xE100000000000000;
  sub_3ED3D4(v263);
  v103 = v195;
  sub_FBD0(v237, v195, &qword_4EF470);
  if ((*(v100 + 48))(v103, 1, v86) == 1)
  {
    sub_FCF8(v103, &qword_4EF470);
    v104 = 0xE400000000000000;
    v105._countAndFlagsBits = 1701736302;
  }

  else
  {
    v106 = sub_3E8D14();
    v104 = v107;
    (*(v100 + 8))(v103, v86);
    v105._countAndFlagsBits = v106;
  }

  v105._object = v104;
  sub_3ED3D4(v105);

  v209 = v241;
  v207 = v242;
  sub_FBD0(v218, v227, &qword_4F1D50);
  v108 = v216;
  sub_FBD0(v228, v216, &qword_4F1D50);
  v109 = v217;
  sub_FBD0(v229, v217, &qword_4F1D50);
  sub_FBD0(v243, &v241, &qword_4EDE00);
  sub_FBD0(v231, v230, &qword_4EF460);
  v110 = v225;
  sub_FBD0(v237, v225, &qword_4EF470);
  v111 = v221;
  sub_FBD0(v233, v221, &qword_4EF468);
  v112 = sub_3E9104();
  (*(*(v112 - 8) + 56))(v235, 1, 1, v112);
  sub_FBD0(v234, v232, &unk_4E9170);
  v113 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  v240[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  *(v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled) = 0;
  v114 = v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber;
  *v114 = v186;
  *(v114 + 8) = v185;
  v115 = v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber;
  *v115 = v188;
  *(v115 + 8) = v187;
  *(v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType) = v190;
  sub_FBD0(v108, v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, &qword_4F1D50);
  *(v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType) = v189;
  v116 = (v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v117 = v176;
  v118 = v177;
  *v116 = v194;
  v116[1] = v118;
  *(v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary) = v117;
  *(v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_transcript) = 0;
  swift_beginAccess();
  v119 = v214;

  sub_FCF8(v91 + v113, &qword_4EED80);
  v239[0] = v119;
  sub_3ECAE4();
  swift_endAccess();
  v120 = v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration;
  *v120 = v192;
  *(v120 + 8) = v191;
  *(v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState) = v208;
  *(v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion) = v175;
  v121 = (v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v122 = v174;
  *v121 = v173;
  v121[1] = v122;
  v123 = (v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v124 = v172;
  *v123 = v171;
  v123[1] = v124;
  v125 = (v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v126 = v170;
  *v125 = v169;
  v125[1] = v126;
  *(v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showDisplayType) = 3;
  *(v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial) = v178;
  sub_FBD0(v110, v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, &qword_4EF470);
  sub_FBD0(v109, v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, &qword_4F1D50);
  v127 = v203;
  sub_FBD0(v111, v203, &qword_4EF468);
  v128 = sub_3E7CB4();
  v129 = *(v128 - 8);
  v130 = *(v129 + 48);
  if (v130(v127, 1, v128) == 1)
  {
    v131 = v204;
    (*(v129 + 56))(v204, 1, 1, v128);
    if (v130(v127, 1, v128) != 1)
    {
      sub_FCF8(v127, &qword_4EF468);
    }
  }

  else
  {
    v131 = v204;
    (*(v129 + 32))(v204, v127, v128);
    (*(v129 + 56))(v131, 0, 1, v128);
  }

  sub_FACC(v131, v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, &qword_4EF468);
  v132 = v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime;
  *v132 = v182;
  *(v132 + 8) = v181;
  v133 = v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime;
  *v133 = v180;
  *(v133 + 8) = v179;
  sub_FBD0(v235, v91 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_thinClientEpisodeState, &qword_4EF420);
  v134 = sub_3E82A4();
  v208 = v135;
  v204 = v136;
  LODWORD(v203) = v137;
  sub_FBD0(v227, v226, &qword_4F1D50);
  v138 = v205;
  sub_FBD0(v230, v205, &qword_4EF460);
  v140 = v183;
  v139 = v184;
  if ((*(v183 + 48))(v138, 1, v184) == 1)
  {
    sub_FCF8(v138, &qword_4EF460);
    v195 = 0;
  }

  else
  {
    v141 = v160;
    (*(v140 + 16))(v160, v138, v139);
    (*(v161 + 104))(v141, enum case for LazyDate.State.valid(_:), v162);
    v195 = sub_3E6AF4();
    (*(v140 + 8))(v138, v139);
  }

  sub_FBD0(&v241, v240, &qword_4EDE00);
  sub_FBD0(v232, v222, &unk_4E9170);
  v205 = v134;
  *(v91 + 32) = 0u;
  *(v91 + 48) = 0u;
  *(v91 + 64) = 0;
  v142 = sub_3EC634();
  v143 = v223;
  (*(*(v142 - 8) + 56))(v223, 1, 1, v142);
  sub_FBD0(v143, v220, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v143, &unk_4E9170);
  v239[0] = 0;
  sub_3ECAE4();
  memset(v239, 0, sizeof(v239));
  sub_FBD0(v239, v238, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v239, &qword_4EDE00);
  v239[0] = 0;
  sub_3ECAE4();
  v239[0] = 0;
  sub_3ECAE4();
  v239[0] = 0;
  sub_3ECAE4();
  v239[0] = 0;
  sub_3ECAE4();
  v144 = v207;
  *(v91 + 16) = v209;
  *(v91 + 24) = v144;
  *(v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v212;
  v145 = v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v146 = v208;
  *v145 = v205;
  *(v145 + 8) = v146;
  *(v145 + 16) = v204;
  *(v145 + 24) = v203;
  *(v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v193;
  *(v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v226, v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v147 = (v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v148 = v211;
  *v147 = v210;
  v147[1] = v148;
  *(v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v196;
  v149 = (v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v149 = 0;
  v149[1] = 0;
  v150 = (v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v150 = 0;
  v150[1] = 0;
  *(v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v151 = (v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v152 = v197;
  *v151 = v198;
  v151[1] = v152;
  *(v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = v195;
  v153 = (v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v153 = 0;
  v153[1] = 0;
  v154 = v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v154 = v200;
  *(v154 + 4) = v199;
  v155 = v91 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v155 = 0;
  *(v155 + 8) = 1;
  v238[0] = v215;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v240, v239, &qword_4EDE00);
  sub_FBD0(v239, v238, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v239, &qword_4EDE00);
  v238[0] = v213;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v238[0] = v202;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v238[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v238[0] = v201;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v157 = v222;
  v156 = v223;
  sub_FBD0(v222, v223, &unk_4E9170);
  sub_FBD0(v156, v220, &unk_4E9170);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();

  sub_FCF8(v156, &unk_4E9170);
  sub_FCF8(v157, &unk_4E9170);
  sub_FCF8(v240, &qword_4EDE00);
  sub_FCF8(v226, &qword_4F1D50);
  sub_FCF8(v232, &unk_4E9170);
  sub_FCF8(v235, &qword_4EF420);
  sub_FCF8(v221, &qword_4EF468);
  sub_FCF8(v230, &qword_4EF460);
  sub_FCF8(&v241, &qword_4EDE00);
  sub_FCF8(v217, &qword_4F1D50);
  sub_FCF8(v216, &qword_4F1D50);
  sub_FCF8(v227, &qword_4F1D50);
  sub_FCF8(v234, &unk_4E9170);
  sub_FCF8(v233, &qword_4EF468);
  sub_FCF8(v237, &qword_4EF470);
  sub_FCF8(v231, &qword_4EF460);
  sub_FCF8(v219, &unk_4E9EE0);
  sub_FCF8(v229, &qword_4F1D50);
  sub_FCF8(v228, &qword_4F1D50);
  sub_FCF8(v218, &qword_4F1D50);
  sub_FCF8(v243, &qword_4EDE00);
  sub_FCF8(v225, &qword_4EF470);
  return v91;
}

uint64_t sub_3CF59C(uint64_t a1)
{
  v41[3] = a1;
  v2 = sub_3E5FC4();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v42);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EC544();
  __chkstk_darwin(v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v7 - 8);
  v9 = v41 - v8;
  v10 = sub_3EC1F4();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v43 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  if (*(v1 + 24))
  {
    v15 = sub_3E80D4();
  }

  else
  {
    v49 = *(v1 + 16);
    sub_17A28();
    v15 = sub_3EE1F4();
  }

  v41[2] = v15;
  v41[1] = sub_3E85B4();
  v16 = sub_3E5DC4();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8504();
  sub_3EBFC4();

  sub_3EC534();
  sub_3EC1C4();
  sub_FCF8(v9, &unk_4E9EE0);
  v17 = *(v1 + 64);
  v18 = *(v1 + 72);
  v19 = *(v1 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid);
  v20 = *(v1 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid + 8);
  v51 = 1;
  v50 = 1;
  *v5 = v17;
  *(v5 + 1) = v18;
  *(v5 + 2) = v19;
  *(v5 + 3) = v20;
  *(v5 + 4) = 0;
  v5[40] = 1;
  *(v5 + 6) = 0;
  v5[56] = 1;
  swift_storeEnumTagMultiPayload();
  v21 = objc_opt_self();

  v22 = [v21 mainBundle];
  v40._countAndFlagsBits = 0xE000000000000000;
  v52._object = 0x800000000042E990;
  v52._countAndFlagsBits = 0xD00000000000001BLL;
  v53.value._countAndFlagsBits = 0;
  v53.value._object = 0;
  v23.super.isa = v22;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v42 = sub_3E5A74(v52, v53, v23, v54, v40);
  v25 = v24;

  v26 = v43;
  v27 = v44;
  v28 = *(v44 + 16);
  v29 = v45;
  v28(v43, v14, v45);
  type metadata accessor for FlowAction(0);
  v30 = swift_allocObject();
  sub_FC38(v5, v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v31 = (v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v31 = 0;
  v31[1] = 0;
  *(v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v28((v30 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics), v26, v29);
  v32 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v33 = sub_3EC634();
  (*(*(v33 - 8) + 56))(v30 + v32, 1, 1, v33);
  v34 = v46;
  sub_3E5FB4();
  v35 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v37 = v36;
  (*(v47 + 8))(v34, v48);
  v38 = *(v27 + 8);
  v38(v26, v29);
  sub_FC9C(v5);
  v38(v14, v29);
  *(v30 + 16) = v35;
  *(v30 + 24) = v37;
  *(v30 + 32) = v42;
  *(v30 + 40) = v25;
  *(v30 + 48) = 48;
  return v30;
}

unint64_t sub_3CFBEC()
{
  result = qword_4EDDF8;
  if (!qword_4EDDF8)
  {
    type metadata accessor for Action();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EDDF8);
  }

  return result;
}

uint64_t StationEpisode.deinit()
{
  v0 = Episode.deinit();

  return v0;
}

uint64_t StationEpisode.__deallocating_deinit()
{
  Episode.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StationEpisode()
{
  result = qword_505F98;
  if (!qword_505F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of StationEpisode.__allocating_init(title:numberedTitle:uuid:podcastUuid:podcastAdamId:stationUuid:adamId:channelAdamId:channelName:artwork:episodeArtwork:author:summary:releaseDate:streamUrl:assetUrl:mediaType:isExplicit:guid:duration:seasonNumber:episodeNumber:episodeType:showTitle:showTypeIsSerial:showTypeSetting:listenNowReason:episodeEntitlementState:hasFreeVersion:subscriptionName:storeTrackId:upNextScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  LOBYTE(a35) = a35 & 1;
  LOBYTE(a33) = a33 & 1;
  LOBYTE(a31) = a31 & 1;
  LOBYTE(a10) = a10 & 1;
  LOBYTE(a14) = a14 & 1;
  LOBYTE(a16) = a16 & 1;
  v39 = *(v38 + 440);

  return v39(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t dispatch thunk of StationEpisode.__allocating_init(title:numberedTitle:uuid:podcastUuid:podcastAdamId:adamId:channelAdamId:channelName:artwork:showUberArtwork:episodeArtwork:author:summary:releaseDate:streamUrl:assetUrl:mediaType:isExplicit:guid:duration:seasonNumber:episodeNumber:episodeType:showTitle:showDisplayType:showTypeIsSerial:showTypeSetting:listenNowReason:episodeEntitlementState:hasFreeVersion:subscriptionName:storeTrackId:upNextScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  LOBYTE(a34) = a34 & 1;
  LOBYTE(a32) = a32 & 1;
  LOBYTE(a30) = a30 & 1;
  LOBYTE(a10) = a10 & 1;
  LOBYTE(a12) = a12 & 1;
  LOBYTE(a14) = a14 & 1;
  v38 = *(v37 + 448);

  return v38(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_3D02D0(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

void *StationShow.__allocating_init(uuid:stationUuid:podcast:episodeCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *StationShow.init(uuid:stationUuid:podcast:episodeCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t sub_3D03DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v1 - 8);
  v118 = &v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v124 = &v103 - v4;
  v117 = sub_3E5FC4();
  v120 = *(v117 - 8);
  __chkstk_darwin(v117);
  v110 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v6 - 8);
  v112 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v113 = &v103 - v9;
  __chkstk_darwin(v10);
  v123 = &v103 - v11;
  __chkstk_darwin(v12);
  v126 = &v103 - v13;
  v119 = sub_3EC1F4();
  v125 = *(v119 - 8);
  __chkstk_darwin(v119);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v15;
  __chkstk_darwin(v16);
  v18 = &v103 - v17;
  v19 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v19);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v103 - v23);
  v25 = v0[4];
  v26 = v0[5];
  v28 = v0[3];
  v108 = v0[2];
  v27 = v108;
  v109 = v25;
  v115 = v0;
  v29 = v0[6];
  v30 = *(v29 + 48);
  v31 = *(v29 + 56);
  v32 = *(v29 + 32);
  v33 = *(v29 + 40);
  *v24 = v25;
  v24[1] = v26;
  v106 = v28;
  v107 = v26;
  v24[2] = v27;
  v24[3] = v28;
  v24[4] = v30;
  v24[5] = v31;
  v24[6] = v32;
  v24[7] = v33;
  swift_storeEnumTagMultiPayload();
  v114 = v24;
  v111 = v21;
  sub_FC38(v24, v21);

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v34 = v18;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for FlowAction(0);
  v35 = swift_allocObject();
  sub_FC38(v21, v35 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v36 = (v35 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v36 = 0;
  v36[1] = 0;
  *(v35 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v35 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v35 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  (*(v125 + 16))(v15, v18, v119);
  v116 = sub_3EC634();
  v37 = *(v116 - 8);
  v38 = *(v37 + 56);
  v121 = v37 + 56;
  v122 = v38;
  v39 = v126;
  v38(v126, 1, 1, v116);
  v40 = v110;
  sub_3E5FB4();
  v41 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v43 = v42;
  v44 = *(v120 + 8);
  v120 += 8;
  v105 = v44;
  v44(v40, v117);
  v45 = v125;
  v46 = v119;
  (*(v125 + 8))(v34, v119);
  sub_FC9C(v111);
  *(v35 + 16) = v41;
  *(v35 + 24) = v43;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  *(v35 + 48) = 48;
  v47 = *(v45 + 32);
  v125 = v45 + 32;
  v104 = v47;
  v47(v35 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v103, v46);
  v111 = v35;
  v48 = v39;
  sub_14A10(v39, v35 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v49 = *(v29 + 32);
  v50 = *(v29 + 40);
  v51 = *(v29 + 48);
  v52 = *(v29 + 56);
  *&v133 = v109;
  *(&v133 + 1) = v107;
  *&v134 = v108;
  *(&v134 + 1) = v106;
  *&v135 = v51;
  *(&v135 + 1) = v52;
  *&v136 = v49;
  *(&v136 + 1) = v50;
  type metadata accessor for LibraryPodcastContextAction();
  v53 = swift_allocObject();
  v54 = (v53 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_podcastUuid);
  *v54 = v49;
  v54[1] = v50;
  v55 = v53 + OBJC_IVAR____TtC8ShelfKit27LibraryPodcastContextAction_groupedEpisodeListType;
  v56 = v136;
  *(v55 + 32) = v135;
  *(v55 + 48) = v56;
  v57 = v134;
  *v55 = v133;
  *(v55 + 16) = v57;
  *(v55 + 64) = 5;
  v122(v48, 1, 1, v116);
  swift_bridgeObjectRetain_n();
  sub_FBD0(&v133, v131, &qword_506190);

  v58 = v34;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v59 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v61 = v60;
  sub_FCF8(&v133, &qword_506190);
  v105(v40, v117);
  *(v53 + 16) = v59;
  *(v53 + 24) = v61;
  *(v53 + 32) = 0;
  *(v53 + 40) = 0;
  *(v53 + 48) = 32;
  v104(v53 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v58, v119);
  v125 = v53;
  sub_14A10(v126, v53 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v62 = *(v29 + 32);
  v63 = *(v29 + 40);
  if (*(v29 + 24))
  {

    v120 = sub_3E9484();
  }

  else
  {
    v120 = *(v29 + 16);
  }

  sub_FBD0(v29 + OBJC_IVAR____TtC8ShelfKit7Podcast_artwork, v124, &qword_4F1D50);
  v64 = *(v29 + 48);
  v65 = *(v29 + 56);
  v66 = *(v29 + 64);
  v67 = *(v29 + 72);
  v132 = 0;
  memset(v131, 0, sizeof(v131));
  LODWORD(v119) = *(v29 + OBJC_IVAR____TtC8ShelfKit7Podcast_isExplicit);
  v68 = v116;
  v122(v123, 1, 1, v116);
  type metadata accessor for LibraryShowLockup();
  v69 = swift_allocObject();
  v70 = (v69 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
  *v70 = v62;
  v70[1] = v63;
  v71 = (v69 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);
  v117 = v64;
  *v71 = v64;
  v71[1] = v65;
  v110 = v65;
  *(v69 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_providerAction) = 0;
  v72 = v69 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate;
  *v72 = v66;
  *(v72 + 8) = v67;
  *(v69 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed) = 2;
  if (v65)
  {
    v73 = v64;
  }

  else
  {
    v73 = 0;
  }

  if (v65)
  {
    v74 = v65;
  }

  else
  {
    v74 = 0xE000000000000000;
  }

  v129 = v62;
  v130 = v63;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v137._countAndFlagsBits = v73;
  v137._object = v74;
  sub_3ED3D4(v137);

  v105 = v130;
  v106 = v129;
  v75 = v120;
  v76 = sub_3E8284();
  v107 = v78;
  v108 = v77;
  LODWORD(v109) = v79;
  v80 = v76;
  sub_FBD0(v124, v118, &qword_4F1D50);
  sub_FBD0(v131, &v129, &qword_4EDE00);
  sub_FBD0(v123, v126, &unk_4E9170);
  *(v69 + 32) = 0u;
  *(v69 + 48) = 0u;
  *(v69 + 64) = 0;
  v81 = v113;
  v122(v113, 1, 1, v68);
  v82 = v112;
  sub_FBD0(v81, v112, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v81, &unk_4E9170);
  v128[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  memset(v128, 0, sizeof(v128));
  sub_FBD0(v128, v127, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v128, &qword_4EDE00);
  v128[0] = 0;
  sub_3ECAE4();
  v128[0] = 0;
  sub_3ECAE4();
  v128[0] = 0;
  sub_3ECAE4();
  v128[0] = 0;
  sub_3ECAE4();
  v83 = v105;
  *(v69 + 16) = v106;
  *(v69 + 24) = v83;
  *(v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v75;
  v84 = v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v85 = v107;
  v86 = v108;
  *v84 = v80;
  *(v84 + 8) = v86;
  *(v84 + 16) = v85;
  *(v84 + 24) = v109;
  *(v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v119;
  *(v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  v87 = v118;
  sub_FBD0(v118, v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v88 = (v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v89 = v117;
  v90 = v110;
  *v88 = v117;
  v88[1] = v90;
  *(v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = 0;
  v91 = (v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v91 = 0;
  v91[1] = 0;
  v92 = (v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v92 = v89;
  v92[1] = v90;
  *(v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v93 = (v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v93 = 0;
  v93[1] = 0;
  *(v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v94 = (v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v94 = 0;
  v94[1] = 0;
  v95 = v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v95 = 0;
  *(v95 + 4) = 1;
  v96 = v69 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v96 = 0;
  *(v96 + 8) = 1;
  v127[0] = 0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(&v129, v128, &qword_4EDE00);
  sub_FBD0(v128, v127, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v128, &qword_4EDE00);
  v127[0] = v125;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v127[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v127[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v127[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v97 = v126;
  sub_FBD0(v126, v81, &unk_4E9170);
  sub_FBD0(v81, v82, &unk_4E9170);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();
  swift_endAccess();

  sub_FCF8(v81, &unk_4E9170);
  sub_FCF8(v97, &unk_4E9170);
  sub_FCF8(&v129, &qword_4EDE00);
  sub_FCF8(v87, &qword_4F1D50);
  sub_FCF8(v123, &unk_4E9170);
  sub_FCF8(v131, &qword_4EDE00);
  sub_FCF8(v124, &qword_4F1D50);
  v98 = v115;
  swift_beginAccess();
  v99 = v98[7];
  v100 = v111;

  v101 = LibraryShowLockup.groupedEpisodesVariant(episodeCount:clickAction:)(v99, v100);

  swift_setDeallocating();
  LegacyLockup.deinit();

  swift_deallocClassInstance();
  sub_FC9C(v114);
  return v101;
}

uint64_t StationShow.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_3D139C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_3D13E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

uint64_t StoreTab.Identifier.init(navigationTab:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result - 1) >= 0x12)
  {
    result = sub_29EB8(result);
    v3 = 4;
  }

  else
  {
    v3 = byte_420F02[result - 1];
  }

  *a2 = v3;
  return result;
}

ShelfKit::StoreTab::Identifier_optional __swiftcall StoreTab.Identifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B31E8;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t StoreTab.Identifier.rawValue.getter()
{
  v1 = 0x686372616573;
  v2 = 0x6573616863727570;
  if (*v0 != 2)
  {
    v2 = 0x64616F6C6E776F64;
  }

  if (*v0)
  {
    v1 = 0x737472616863;
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

Swift::Int sub_3D1630()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_3D16F0()
{
  sub_3ED394();
}

Swift::Int sub_3D179C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

void sub_3D1864(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x686372616573;
  v4 = 0x6573616863727570;
  v5 = 0xE900000000000064;
  if (*v1 != 2)
  {
    v4 = 0x64616F6C6E776F64;
    v5 = 0xE900000000000073;
  }

  if (*v1)
  {
    v3 = 0x737472616863;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t StoreTab.pageContext.getter()
{
  sub_68DC4();
  v0 = sub_3EE154();

  return v0;
}

uint64_t StoreTab.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoreTab() + 20);

  return sub_189AC(v3, a1);
}

uint64_t type metadata accessor for StoreTab()
{
  result = qword_5062D8;
  if (!qword_5062D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StoreTab.init(identifier:url:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v4 = &a3[*(type metadata accessor for StoreTab() + 20)];

  return sub_1893C(a2, v4);
}

uint64_t StoreTab.init(jsonObject:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-v5];
  v7 = sub_3EBDF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_3EBE04();
  sub_3D1CE8();
  sub_3EBCF4();
  v11 = *(v8 + 8);
  v11(v10, v7);
  v12 = v17;
  if (v17 == 4)
  {
    v11(a1, v7);
    v13 = type metadata accessor for StoreTab();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  else
  {
    sub_3EBE04();
    sub_3EBD14();
    v11(a1, v7);
    v11(v10, v7);
    *a2 = v12;
    v15 = type metadata accessor for StoreTab();
    sub_1893C(v6, &a2[*(v15 + 20)]);
    return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }
}

unint64_t sub_3D1CE8()
{
  result = qword_506270;
  if (!qword_506270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_506270);
  }

  return result;
}

unint64_t sub_3D1D40()
{
  result = qword_506278;
  if (!qword_506278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_506278);
  }

  return result;
}

uint64_t sub_3D1DA8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_3D1E70(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3D1F1C()
{
  sub_1F630();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t SubscriptionConfirmationSheetHandler.__allocating_init(asPartOf:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_3D5254(a1);

  return v2;
}

uint64_t SubscriptionConfirmationSheetHandler.init(asPartOf:)(uint64_t a1)
{
  v1 = sub_3D5254(a1);

  return v1;
}

void SubscriptionConfirmationSheetHandler.presentSubscriptionConfirmation(for:)(uint64_t a1)
{
  v3 = sub_3E9A04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v39 - v8;
  __chkstk_darwin(v10);
  v12 = v39 - v11;
  v13 = sub_3E7424();
  v41 = v13;
  v42 = sub_3D5844(&qword_4F07A0, &type metadata accessor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(aBlock);
  (*(*(v13 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.entitlements(_:), v13);
  LOBYTE(v13) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  if (v13)
  {
    if (*(a1 + 16))
    {
      v39[1] = v1;
      sub_3E99E4();

      v15 = sub_3E99F4();
      v16 = sub_3ED9F4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock[0] = v18;
        *v17 = 136315138;
        v19 = sub_3ED804();
        v21 = sub_2EDD0(v19, v20, aBlock);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_0, v15, v16, "Attempting to present subscription confirmation sheet for channel id's: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
      }

      (*(v4 + 8))(v12, v3);
      v22 = [objc_opt_self() sharedInstance];
      v23 = [v22 privateQueueContext];

      v24 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTChannelEntityName];
      v25 = objc_opt_self();
      isa = sub_3ED7E4().super.isa;
      v27 = [v25 predicateForChannelStoreIds:isa];

      [v24 setPredicate:v27];
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = swift_allocObject();
      v29[2] = v28;
      v29[3] = v23;
      v29[4] = v24;
      v42 = sub_3D55A8;
      v43 = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1279E4;
      v41 = &block_descriptor_32;
      v30 = _Block_copy(aBlock);
      v31 = v23;
      v32 = v24;

      [v31 performBlock:v30];
      _Block_release(v30);
    }

    else
    {
      sub_3E99E4();
      v36 = sub_3E99F4();
      v37 = sub_3ED9F4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_0, v36, v37, "Not displaying subscription confirmation sheets because there are no channel subscriptions that were just activated.", v38, 2u);
      }

      (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    sub_3E99E4();
    v33 = sub_3E99F4();
    v34 = sub_3ED9F4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "Not displaying subscription confirmation sheet because the Entitlements feature flag is not enabled.", v35, 2u);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_3D25B0(uint64_t a1, unint64_t a2)
{
  v3 = sub_3EBBC4();
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EBC14();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E9A04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = sub_3D2D80();
    v19 = v18;
    v20 = (v18 >> 62);
    if (v18 >> 62)
    {
      v21 = sub_3EE5A4();
      if (v21 != 1)
      {
LABEL_4:
        if (!v21)
        {
        }

        v39 = v3;
        v26 = v17[7];
        v27 = v17[8];
        __swift_project_boxed_opaque_existential_1(v17 + 4, v26);
        a2 = (*(v27 + 8))(v19, v26, v27);

        sub_3E99E4();

        v20 = sub_3E99F4();
        LOBYTE(v19) = sub_3ED9F4();
        if (!os_log_type_enabled(v20, v19))
        {

          goto LABEL_14;
        }

        v3 = swift_slowAlloc();
        *v3 = 134217984;
        if (!(a2 >> 62))
        {
          v28 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
LABEL_12:
          *(v3 + 4) = v28;

          _os_log_impl(&dword_0, v20, v19, "Created %ld channel lockups for the multiple subscription confirmation sheet.", v3, 0xCu);

LABEL_14:
          (*(v10 + 8))(v12, v9);
          sub_36174(0, &qword_4F10B0);
          v29 = sub_3EDBC4();
          v30 = swift_allocObject();
          *(v30 + 16) = v17;
          *(v30 + 24) = a2;
          v48 = sub_3D565C;
          v49 = v30;
          aBlock = _NSConcreteStackBlock;
          v45 = 1107296256;
          v46 = sub_1279E4;
          v47 = &block_descriptor_11;
          v31 = _Block_copy(&aBlock);

          sub_3EBBE4();
          aBlock = _swiftEmptyArrayStorage;
          sub_3D5844(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
          sub_318924(&qword_506A30, &unk_503DE0);
          v32 = v39;
          sub_3EE244();
          sub_3EDBE4();
          _Block_release(v31);

          (*(v42 + 8))(v5, v32);
          return (*(v40 + 8))(v8, v41);
        }

LABEL_27:
        v28 = sub_3EE5A4();
        goto LABEL_12;
      }
    }

    else
    {
      v21 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
      if (v21 != 1)
      {
        goto LABEL_4;
      }
    }

    if (v20)
    {
      if (sub_3EE5A4())
      {
        goto LABEL_18;
      }
    }

    else if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_18:
      if ((v19 & 0xC000000000000001) != 0)
      {
        v33 = v3;
        v34 = sub_3EE3F4();
      }

      else
      {
        if (!*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_27;
        }

        v33 = v3;
        v34 = *(v19 + 32);
      }

      v35 = v34;

      v39 = v17[2];
      v36 = swift_allocObject();
      *(v36 + 16) = v17;
      *(v36 + 24) = v35;
      v48 = sub_3D56C4;
      v49 = v36;
      aBlock = _NSConcreteStackBlock;
      v45 = 1107296256;
      v46 = sub_1279E4;
      v47 = &block_descriptor_17;
      v37 = _Block_copy(&aBlock);

      v38 = v35;
      sub_3EBBE4();
      v43 = _swiftEmptyArrayStorage;
      sub_3D5844(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
      sub_318924(&qword_506A30, &unk_503DE0);
      sub_3EE244();
      sub_3EDBE4();
      _Block_release(v37);

      (*(v42 + 8))(v5, v33);
      (*(v40 + 8))(v8, v41);
    }
  }

  sub_3E99E4();
  v23 = sub_3E99F4();
  v24 = sub_3ED9D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "Could not unwrap self in SubscriptionConfirmationSheetHandler. Cannot present subscription confirmation sheet.", v25, 2u);
  }

  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_3D2D80()
{
  v0 = sub_3E9A04();
  __chkstk_darwin(v0);
  sub_36174(0, &qword_4F2EA0);
  return sub_3EDDA4();
}

uint64_t sub_3D2F0C(uint64_t a1)
{
  v3 = sub_3E9A04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();
  v7 = sub_3E99F4();
  v8 = sub_3ED9F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v26 = v3;
    v10 = v9;
    v11 = swift_slowAlloc();
    v27 = a1;
    v28[0] = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_17A28();
    v12 = sub_3EE1F4();
    v14 = sub_2EDD0(v12, v13, v28);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_0, v7, v8, "Fetching UpsellInformation for confirmation sheet for channel id: %{private,mask.hash}s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);

    (*(v4 + 8))(v6, v26);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v15;
  v17 = v1[12];
  v18 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v17);
  v19 = *(v18 + 40);

  v19(a1, v17, v18);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a1;
  v21[4] = sub_3D5738;
  v21[5] = v16;
  v22 = sub_36174(0, &qword_4F10B0);

  v23 = sub_3EDBC4();
  v28[3] = v22;
  v28[4] = &protocol witness table for OS_dispatch_queue;
  v28[0] = v23;
  sub_3ECD44();

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

char *sub_3D324C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_3E5FC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v10 = &v62 - v9;
  v11 = sub_3EC1F4();
  v71 = *(v11 - 8);
  __chkstk_darwin(v11);
  v70 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v69 = &v62 - v14;
  v67 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v67);
  v68 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_3E9A04();
  v66 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v11;
  if (a1 >> 62)
  {
    v19 = sub_3EE5A4();
  }

  else
  {
    v19 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v75 = v4;
  v76 = v2;
  v77 = v10;
  v73 = v7;
  v74 = v5;
  if (v19)
  {
    v79 = _swiftEmptyArrayStorage;
    result = sub_41BA8(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return result;
    }

    v64 = v18;
    v65 = v16;
    v21 = v79;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v22 = a1;
      v23 = 0;
      do
      {
        v78 = *(sub_3EE3F4() + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
        sub_17A28();
        v24 = sub_3EE1F4();
        v26 = v25;
        swift_unknownObjectRelease();
        v79 = v21;
        v28 = v21[2];
        v27 = v21[3];
        if (v28 >= v27 >> 1)
        {
          sub_41BA8((v27 > 1), v28 + 1, 1);
          v21 = v79;
        }

        ++v23;
        v21[2] = v28 + 1;
        v29 = &v21[2 * v28];
        v29[4] = v24;
        v29[5] = v26;
      }

      while (v19 != v23);
    }

    else
    {
      v22 = a1;
      v30 = (a1 + 32);
      sub_17A28();
      do
      {
        v78 = *(*v30 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
        v31 = sub_3EE1F4();
        v79 = v21;
        v34 = v21[2];
        v33 = v21[3];
        if (v34 >= v33 >> 1)
        {
          v63 = v31;
          v36 = v32;
          sub_41BA8((v33 > 1), v34 + 1, 1);
          v32 = v36;
          v31 = v63;
          v21 = v79;
        }

        v21[2] = v34 + 1;
        v35 = &v21[2 * v34];
        v35[4] = v31;
        v35[5] = v32;
        ++v30;
        --v19;
      }

      while (v19);
    }

    v10 = v77;
    a1 = v22;
    v18 = v64;
    v16 = v65;
  }

  sub_3E99E4();

  v37 = sub_3E99F4();
  v38 = sub_3ED9F4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v79 = v40;
    *v39 = 136315138;
    v41 = sub_3ED594();
    v42 = v18;
    v44 = v43;

    v45 = sub_2EDD0(v41, v44, &v79);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_0, v37, v38, "Presenting multiple subscription confirmation sheet for channel id's: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);

    v46 = v42;
    v10 = v77;
    (*(v66 + 8))(v46, v16);
  }

  else
  {

    (*(v66 + 8))(v18, v16);
  }

  v47 = [objc_opt_self() currentTraitCollection];
  v48 = [v47 userInterfaceIdiom];

  if (v48 == &dword_0 + 1)
  {
    v49 = 5;
  }

  else
  {
    v49 = 4;
  }

  v50 = v68;
  *v68 = a1;
  swift_storeEnumTagMultiPayload();

  v51 = v69;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for FlowAction(0);
  v52 = swift_allocObject();
  sub_FC38(v50, v52 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v53 = (v52 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v53 = 0;
  v53[1] = 0;
  *(v52 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = v49;
  *(v52 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v52 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v55 = v70;
  v54 = v71;
  v56 = v72;
  (*(v71 + 16))(v70, v51, v72);
  v57 = sub_3EC634();
  (*(*(v57 - 8) + 56))(v10, 1, 1, v57);
  v58 = v73;
  sub_3E5FB4();
  v59 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v61 = v60;
  (*(v74 + 8))(v58, v75);
  (*(v54 + 8))(v51, v56);
  sub_FC9C(v50);
  *(v52 + 16) = v59;
  *(v52 + 24) = v61;
  *(v52 + 32) = 0;
  *(v52 + 40) = 0;
  *(v52 + 48) = 48;
  (*(v54 + 32))(v52 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v55, v56);
  sub_14A10(v10, v52 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_3D4B84(v52, v76);
}

uint64_t sub_3D39E4(void *a1, uint64_t a2)
{
  v4 = sub_3E9A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();
  v8 = sub_3E99F4();
  v9 = sub_3ED9F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = a2;
    v20[0] = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_17A28();
    v13 = sub_3EE1F4();
    v15 = sub_2EDD0(v13, v14, v20);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_0, v8, v9, "Fetched UpsellInformation for confirmation sheet for channel id: %{private,mask.hash}s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);

    a1 = v18;
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_3D3BF4(a1);
  }

  return result;
}

uint64_t sub_3D3BF4(void *a1)
{
  v22 = a1;
  v1 = sub_3EBBC4();
  v24 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_3EBC14();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3E9A04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();
  v11 = sub_3E99F4();
  v12 = sub_3ED9F4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = v6;
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Presenting single subscription confirmation sheet.", v13, 2u);
    v6 = v21;
  }

  (*(v8 + 8))(v10, v7);
  sub_36174(0, &qword_4F10B0);
  v14 = sub_3EDBC4();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v22;
  *(v16 + 24) = v15;
  aBlock[4] = sub_3D583C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_38_0;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_3D5844(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_318924(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v18);

  (*(v24 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v23);
}

uint64_t sub_3D402C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3EBBC4();
  v24 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBC14();
  v22 = *(v12 - 8);
  v23 = v12;
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 16);

    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    *(v19 + 24) = v16;
    *(v19 + 32) = a3;
    *(v19 + 40) = a4;
    *(v19 + 48) = a5;
    aBlock[4] = sub_3D57DC;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1279E4;
    aBlock[3] = &block_descriptor_31_0;
    v20 = _Block_copy(aBlock);
    sub_3D57F0(v15, v16);

    sub_3EBBE4();
    v25 = _swiftEmptyArrayStorage;
    sub_3D5844(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
    sub_318924(&qword_506A30, &unk_503DE0);
    sub_3EE244();
    sub_3EDBE4();
    _Block_release(v20);

    (*(v24 + 8))(v11, v9);
    (*(v22 + 8))(v14, v23);
  }

  return result;
}

uint64_t sub_3D434C(void *a1, char a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_3E9A04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  if (a2)
  {
    sub_3E99E4();
    swift_errorRetain();
    v15 = sub_3E99F4();
    v16 = sub_3ED9D4();
    sub_3D57D0(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_3EE8F4();
      v21 = sub_2EDD0(v19, v20, &v35);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_0, v15, v16, "Could not fetch channel upsell information from MAPI with error: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
    }

    return (*(v9 + 8))(v14, v8);
  }

  else
  {
    sub_3E99E4();
    v23 = sub_3E99F4();
    v24 = sub_3ED9F4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = v8;
      v26 = v25;
      v27 = swift_slowAlloc();
      v33 = a4;
      v28 = v27;
      v34 = a3;
      v35 = v27;
      *v26 = 136315138;
      sub_17A28();
      v29 = sub_3EE1F4();
      v31 = sub_2EDD0(v29, v30, &v35);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_0, v23, v24, "Received upsell information from MAPI for channel id: %s. Proceeding to display single subscription confirmation sheet.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      a4 = v33;

      (*(v9 + 8))(v11, v32);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    return a4(a1);
  }
}

uint64_t sub_3D467C(void *a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_3E5FC4();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v6 - 8);
  v32 = &v31 - v7;
  v8 = sub_3EC1F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v15);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = [objc_opt_self() currentTraitCollection];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == &dword_0 + 1)
  {
    v20 = 5;
  }

  else
  {
    v20 = 4;
  }

  *v17 = a1;
  swift_storeEnumTagMultiPayload();
  v21 = a1;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for FlowAction(0);
  v22 = swift_allocObject();
  sub_FC38(v17, v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v23 = (v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v23 = 0;
  v23[1] = 0;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = v20;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  (*(v9 + 16))(v11, v14, v8);
  v24 = sub_3EC634();
  v25 = v32;
  (*(*(v24 - 8) + 56))(v32, 1, 1, v24);
  sub_3E5FB4();
  v26 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v28 = v27;
  (*(v33 + 8))(v5, v34);
  (*(v9 + 8))(v14, v8);
  sub_FC9C(v17);
  *(v22 + 16) = v26;
  *(v22 + 24) = v28;
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  *(v22 + 48) = 48;
  (*(v9 + 32))(v22 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v11, v8);
  sub_14A10(v25, v22 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_3D4B84(v22, Strong);
  }
}

uint64_t SubscriptionConfirmationSheetHandler.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);
  return v0;
}

uint64_t SubscriptionConfirmationSheetHandler.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_3D4B54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_3D4B84(uint64_t a1, uint64_t *a2)
{
  v49 = *a2;
  v4 = sub_3ECE84();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3E6654();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v13 = sub_3E9A04();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  v53[3] = type metadata accessor for FlowAction(0);
  v53[4] = sub_3D5844(&qword_4F8A40, type metadata accessor for FlowAction);
  v53[0] = a1;
  v20 = objc_opt_self();

  v21 = [v20 sharedApplication];
  v22 = [v21 delegate];

  if (!v22)
  {
    goto LABEL_8;
  }

  if (([v22 respondsToSelector:"window"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v23 = [v22 window];
  swift_unknownObjectRelease();
  if (!v23)
  {
LABEL_8:
    sub_3E99E4();
    v34 = sub_3E99F4();
    v35 = sub_3ED9D4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "Unable to present subscription confirmation because we could not get the current window.", v36, 2u);
    }

    v37 = *(v14 + 8);
    v38 = v19;
    goto LABEL_11;
  }

  v24 = [v23 rootViewController];
  if (!v24)
  {
    v40 = v23;
    sub_3E99E4();
    v41 = sub_3E99F4();
    v42 = sub_3ED9D4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "Unable to present subscription confirmation because we could not get the root view controller.", v43, 2u);
    }

    v37 = *(v14 + 8);
    v38 = v16;
LABEL_11:
    v37(v38, v13);
    return __swift_destroy_boxed_opaque_existential_1Tm(v53);
  }

  v46 = v23;
  v25 = v24;
  v26 = UIResponder.nearestActionRunner.getter();
  v28 = v27;

  if (v26)
  {
    type metadata accessor for ActionRunnerOptions();

    sub_3EC464();
    v29 = sub_3E6434();
    (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
    v52[3] = v49;
    v52[0] = a2;

    v30 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v12, v52, 0);

    sub_FCF8(v12, &qword_5005B0);
    sub_FCF8(v52, &unk_501090);
    ObjectType = swift_getObjectType();
    v33 = v50;
    v32 = v51;
    (*(v50 + 104))(v9, enum case for ActionMetricsBehavior.fromAction(_:), v51);
    ActionRunner.perform(_:withMetrics:asPartOf:)(v53, v9, v30, ObjectType, v28);

    swift_unknownObjectRelease();

    (*(v33 + 8))(v9, v32);
  }

  else
  {
    sub_3ECE34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
    sub_3EBE94();
    *(swift_allocObject() + 16) = xmmword_3F5630;
    sub_3EBE14();
    v44 = v48;
    sub_3ECB94();

    (*(v47 + 8))(v6, v44);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v53);
}

uint64_t sub_3D5254(uint64_t a1)
{
  v3 = sub_3EDB54();
  __chkstk_darwin(v3);
  v4 = sub_3EDBB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBC14();
  __chkstk_darwin(v8 - 8);
  v9 = sub_36174(0, &qword_4F10B0);
  v11[1] = &OBJC_IVAR____TtC8ShelfKit36SubscriptionConfirmationSheetHandler_channelLockupGenerator;
  v11[2] = v9;
  sub_3EBC04();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  *&v12[0] = _swiftEmptyArrayStorage;
  sub_3D5844(&qword_4F1CA8, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CB0);
  sub_318924(&qword_4F1CB8, &qword_4F1CB0);
  sub_3EE244();
  *(v1 + 16) = sub_3EDBF4();
  *(v1 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5063C8);

  sub_3EC394();
  sub_1D4F0(v12, v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28);
  sub_3EC394();
  sub_1D4F0(v12, v1 + 72);
  return v1;
}

uint64_t sub_3D5528()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3D5560()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3D561C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3D5684()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3D56C4()
{
  [*(v0 + 24) storeId];
  v1 = sub_3E94B4();
  return sub_3D2F0C(v1);
}

uint64_t sub_3D5700()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3D5740()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3D578C()
{
  sub_3D57D0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

void sub_3D57D0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_3D57F0(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_3D57FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3D5844(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_3D58B0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v6 = objc_opt_self();
  v7 = &selRef_configurationPreferringMulticolor;
  if ((a4 & 1) == 0)
  {
    v7 = &selRef_unspecifiedConfiguration;
  }

  v8 = [v6 *v7];
  v9 = sub_3ED204();
  v10 = objc_opt_self();
  if (a3)
  {
    v11 = [v10 imageNamed:v9 inBundle:0 withConfiguration:v8];
  }

  else
  {
    v11 = [v10 systemImageNamed:v9 withConfiguration:v8];
  }

  v12 = v11;

  if (v12)
  {
    if (a4)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = v12;
    v15 = [v14 imageWithRenderingMode:v13];
  }

  else
  {

    return 0;
  }

  return v15;
}

id _s8ShelfKit11SystemGlyphC4load7artworkSo7UIImageCSg18PodcastsFoundation12ArtworkModelVSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_3E5DC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_3E7784();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4E45C(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_FCF8(v11, &qword_4F1D50);
    return 0;
  }

  sub_83F9C(v11, v15);
  if ((sub_3E7704() & 1) == 0)
  {
LABEL_11:
    sub_86F48(v15);
    return 0;
  }

  sub_3E5D94();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_86F48(v15);
    sub_FCF8(v4, &unk_4E9EE0);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  v16 = sub_3E5D64();
  if (!v17)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_11;
  }

  v18 = sub_3D58B0(v16, v17, v15[v12[14]], v15[v12[15]]);

  if (v18)
  {
    v19 = *&v15[v12[12] + 8];
    v20 = v18;
    if (v19)
    {
      v19 = sub_3ED204();
    }

    [v18 setAccessibilityLabel:v19];
  }

  (*(v6 + 8))(v8, v5);
  sub_86F48(v15);
  return v18;
}

uint64_t UnifiedMessagingProvider.bannerShelfPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_506470);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider____lazy_storage___bannerShelfPublisher;
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider____lazy_storage___bannerShelfPublisher))
  {
    v6 = *(v0 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider____lazy_storage___bannerShelfPublisher);
  }

  else
  {
    v9[1] = *(v0 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_amsDialogRequestSubject);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506488);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
    sub_886BC(&qword_506498, &unk_506488);
    v7 = v0;
    sub_3EA024();

    sub_886BC(&qword_5064A0, &qword_506470);
    v6 = sub_3E9F94();
    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

id UnifiedMessagingProvider.init(placement:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_engagement;
  *&v3[v7] = [objc_allocWithZone(AMSEngagement) init];
  v8 = OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_amsDialogRequestSubject;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506488);
  swift_allocObject();
  *&v3[v8] = sub_3E9D94();
  *&v3[OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider____lazy_storage___bannerShelfPublisher] = 0;
  v9 = &v3[OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_placement];
  *v9 = a1;
  *(v9 + 1) = a2;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v14, "init");
  sub_3E9384();
  v11 = v10;
  v12 = sub_3E9364();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_3E9374();

  return v11;
}

void sub_3D614C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_3D6238();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_engagement);
    v4 = v2;
    v5 = sub_3ED204();
    v6 = sub_3ED204();
    [v3 addObserver:v4 placement:v5 serviceType:v6];
  }
}

void sub_3D6238()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5630;
  v2 = *(v0 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_placement + 8);
  *(inited + 32) = *(v0 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_placement);
  *(inited + 40) = v2;

  sub_3600C(inited);
  swift_setDeallocating();
  sub_3D74AC(inited + 32);
  v3 = objc_allocWithZone(AMSEngagementMessageEvent);
  v4 = sub_3ED204();
  isa = sub_3ED7E4().super.isa;

  v6 = [v3 initWithServiceType:v4 placements:isa];

  v7 = [*(v0 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_engagement) enqueueMessageEvent:v6];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_3D7500;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_63B88;
  v10[3] = &block_descriptor_10;
  v9 = _Block_copy(v10);

  [v7 addFinishBlock:v9];
  _Block_release(v9);
}

uint64_t sub_3D643C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  if (*a1)
  {
    v7 = *a1;
    v8 = [v7 identifier];
    if (v8)
    {
      v9 = v8;
      v28 = sub_3ED244();
      v11 = v10;
    }

    else
    {
      v28 = 0;
      v11 = 0xE000000000000000;
    }

    v15 = type metadata accessor for ModernShelf();
    v16 = v15[5];
    v17 = type metadata accessor for Header(0);
    (*(*(v17 - 8) + 56))(a2 + v16, 1, 1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_3F5630;
    *(v18 + 56) = sub_36174(0, &qword_4F06F0);
    *(v18 + 64) = sub_3D7554();
    *(v18 + 32) = v7;
    v19 = sub_3E5DC4();
    v20 = *(*(v19 - 8) + 56);
    v20(v6, 1, 1, v19);
    v21 = a2 + v15[12];
    *(v21 + 4) = 0;
    *v21 = 0u;
    *(v21 + 1) = 0u;
    v22 = v15[13];
    v23 = sub_3EC634();
    (*(*(v23 - 8) + 56))(a2 + v22, 1, 1, v23);
    v24 = v15[9];
    v25 = (a2 + v15[8]);
    v20(a2 + v24, 1, 1, v19);
    *a2 = v28;
    a2[1] = v11;
    v26 = a2 + v15[6];
    *v26 = 58;
    *(v26 + 3) = 256;
    *(v26 + 2) = 0;
    *(v26 + 1) = 1;
    *(a2 + v15[7]) = v18;
    sub_17F4C4(v6, a2 + v24);
    *(a2 + v15[10]) = 1;
    *(a2 + v15[11]) = 0;
    *v25 = 0;
    v25[1] = 0;
    return (*(*(v15 - 1) + 56))(a2, 0, 1, v15);
  }

  else
  {
    v12 = type metadata accessor for ModernShelf();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }
}

uint64_t sub_3D677C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t (*UnifiedMessagingProvider.bannerShelfPublisher.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = UnifiedMessagingProvider.bannerShelfPublisher.getter();
  return sub_3D6804;
}

void sub_3D681C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v54 = sub_3EBBC4();
  v5 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_3EBC14();
  v8 = a1;
  v52 = v7;
  v9 = *(v7 - 8);
  v11 = __chkstk_darwin(v8);
  v51 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    v13 = [v10 messageActions];
    if (v13)
    {
      v14 = v13;
      sub_36174(0, &qword_506548);
      v15 = sub_3ED584();

      if (v15 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3EE5A4())
      {
        v17 = 0;
        v18 = v15 & 0xC000000000000001;
        v45 = v15 & 0xFFFFFFFFFFFFFF8;
        v44 = v15 + 32;
        v48 = v60;
        v47 = v5 + 1;
        v46 = v9 + 1;
        v42 = a3;
        v41 = v15;
        v40 = i;
        v39 = v15 & 0xC000000000000001;
        v19 = v51;
        while (1)
        {
          if (v18)
          {
            v20 = sub_3EE3F4();
          }

          else
          {
            if (v17 >= *(v45 + 16))
            {
              goto LABEL_35;
            }

            v20 = *(v44 + 8 * v17);
          }

          v56 = v20;
          if (__OFADD__(v17++, 1))
          {
            break;
          }

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            goto LABEL_8;
          }

          v5 = Strong;
          v23 = [v56 placementsMap];
          if (!v23)
          {
            goto LABEL_7;
          }

          v24 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506550);
          v9 = sub_3ED094();

          if (!v9[2])
          {

LABEL_7:

            goto LABEL_8;
          }

          v43 = v17;
          v25 = *(v5 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_placement);
          v26 = *(v5 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider_placement + 8);

          v27 = sub_552A8(v25, v26);
          v29 = v28;

          if (v29)
          {
            v30 = *(v9[7] + v27);

            v55 = v5;
            if (v30 >> 62)
            {
              v15 = sub_3EE5A4();
              if (v15)
              {
LABEL_19:
                v31 = 0;
                v49 = v30 & 0xFFFFFFFFFFFFFF8;
                v50 = v30 & 0xC000000000000001;
                while (1)
                {
                  if (v50)
                  {
                    v32 = sub_3EE3F4();
                  }

                  else
                  {
                    if (v31 >= *(v49 + 16))
                    {
                      goto LABEL_33;
                    }

                    v32 = *(v30 + 8 * v31 + 32);
                  }

                  v33 = v32;
                  if (__OFADD__(v31, 1))
                  {
                    break;
                  }

                  v58 = v31 + 1;
                  sub_36174(0, &qword_4F10B0);
                  v57 = sub_3EDBC4();
                  v34 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v35 = swift_allocObject();
                  *(v35 + 16) = v34;
                  *(v35 + 24) = v33;
                  v60[2] = sub_3D754C;
                  v60[3] = v35;
                  aBlock[0] = _NSConcreteStackBlock;
                  aBlock[1] = 1107296256;
                  v60[0] = sub_1279E4;
                  v60[1] = &block_descriptor_17_0;
                  v36 = _Block_copy(aBlock);
                  v37 = v33;

                  sub_3EBBE4();
                  aBlock[0] = _swiftEmptyArrayStorage;
                  a3 = sub_2D9760();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
                  sub_886BC(&qword_506A30, &unk_503DE0);
                  v5 = v53;
                  v38 = v54;
                  sub_3EE244();
                  v9 = v57;
                  sub_3EDBE4();
                  _Block_release(v36);

                  (*v47)(v5, v38);
                  (*v46)(v19, v52);
                  ++v31;
                  if (v58 == v15)
                  {
                    goto LABEL_30;
                  }
                }

                __break(1u);
LABEL_33:
                __break(1u);
                break;
              }
            }

            else
            {
              v15 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
              if (v15)
              {
                goto LABEL_19;
              }
            }

LABEL_30:
          }

          else
          {
          }

          a3 = v42;
          v15 = v41;
          i = v40;
          v17 = v43;
          v18 = v39;
LABEL_8:

          if (v17 == i)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        ;
      }

LABEL_37:
    }
  }
}

uint64_t sub_3D6E58(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    v5 = [a2 makeDialogRequest];
    sub_3E9D44();
  }

  return result;
}

uint64_t sub_3D6FD4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_3E9D44();
  }

  return result;
}

uint64_t sub_3D70D8(void *a1)
{
  v2 = sub_3EBBC4();
  v15 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3EBC14();
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_36174(0, &qword_4F10B0);
  v8 = sub_3EDBC4();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_3D748C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_33;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_2D9760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_886BC(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v11);

  (*(v15 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v14);
}

uint64_t sub_3D73C4@<X0>(uint64_t *a1@<X8>)
{
  result = UnifiedMessagingProvider.bannerShelfPublisher.getter();
  *a1 = result;
  return result;
}

uint64_t sub_3D73F0(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC8ShelfKit24UnifiedMessagingProvider____lazy_storage___bannerShelfPublisher) = *a1;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_5Tm_0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_3D7554()
{
  result = qword_506570;
  if (!qword_506570)
  {
    sub_36174(255, &qword_4F06F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_506570);
  }

  return result;
}

double *UpNextScoringWeights.__allocating_init(percentOfEpisodesFromShowPlayedWeight:percentOfTotalListeningWeight:modifiedDateWeight:)(double a1, double a2, double a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

double *UpNextScoringWeights.init(percentOfEpisodesFromShowPlayedWeight:percentOfTotalListeningWeight:modifiedDateWeight:)(double a1, double a2, double a3)
{
  result = v3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return result;
}

double *sub_3D7650@<X0>(char *a1@<X0>, uint64_t a2@<X1>, double **a3@<X8>)
{
  result = sub_3D767C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

double *sub_3D767C(char *a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_3EBDF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  sub_3EBE04();
  v13 = COERCE_DOUBLE(sub_3EBD94());
  v15 = v14;
  v16 = *(v4 + 8);
  v16(v12, v3);
  v17 = 0.0;
  if (v15)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v13;
  }

  sub_3EBE04();
  v19 = COERCE_DOUBLE(sub_3EBD94());
  v21 = v20;
  v16(v9, v3);
  if (v21)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v19;
  }

  sub_3EBE04();
  v23 = COERCE_DOUBLE(sub_3EBD94());
  v25 = v24;
  v26 = sub_3EBF94();
  (*(*(v26 - 8) + 8))(v28, v26);
  v16(a1, v3);
  v16(v6, v3);
  if ((v25 & 1) == 0)
  {
    v17 = v23;
  }

  type metadata accessor for UpNextScoringWeights();
  result = swift_allocObject();
  result[2] = v18;
  result[3] = v22;
  result[4] = v17;
  return result;
}

void static UpNextScoringWeightsManager.recalculateUpNext()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 privateQueueContext];

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v5[4] = sub_3D83BC;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1279E4;
  v5[3] = &block_descriptor_34;
  v3 = _Block_copy(v5);
  v4 = v1;

  [v4 performBlock:v3];
  _Block_release(v3);
}

void static UpNextScoringWeightsManager.resetToDefaultValues()()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  [v0 setBool:1 forKey:kMTUpNextScoreUsesRemotelyConfiguredValues];

  sub_3D807C();
}

void sub_3D7B0C(void *a1)
{
  v2 = sub_3E9A04();
  __chkstk_darwin(v2);
  v20 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  v3 = [objc_opt_self() predicateForSubscribedPodcasts];
  [v20 setPredicate:v3];

  sub_F7D88();
  v4 = sub_3EDDA4();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = sub_3EE5A4();
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v9 = &selRef_setDefaultTabInterval_;
  do
  {
    if (v8)
    {
      v10 = sub_3EE3F4();
    }

    else
    {
      v10 = *(v5 + 8 * v7 + 32);
    }

    v11 = v10;
    v12 = [v10 v9[109]];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() upNextForPodcastUuid:v12 ctx:a1];

      if (v14)
      {
        v15 = [v14 upNextScore];
        if (v15)
        {
          v16 = v15;
          v17 = v9;
          v18 = [v14 episodeUuid];
          if (!v18)
          {
            sub_3ED244();
            v18 = sub_3ED204();
          }

          v19 = [a1 episodeForUuid:v18];

          if (v19)
          {
            [v19 setListenNowEpisode:1];
            [v16 combinedScore];
            [v19 setUpNextScore:?];

            v16 = v19;
          }

          v9 = v17;
          v8 = v5 & 0xC000000000000001;
        }
      }
    }

    ++v7;
  }

  while (v6 != v7);
LABEL_19:

  [a1 saveInCurrentBlock];
}

void sub_3D7F84(double *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 _applePodcastsFoundationSharedUserDefaults];
  [v3 setDouble:kMTUpNextScoreDefaultModifiedDateWeight forKey:a1[4]];

  v4 = [v2 _applePodcastsFoundationSharedUserDefaults];
  [v4 setDouble:kMTUpNextScoreDefaultPercentEpsTotalPlayedWeight forKey:a1[3]];

  v5 = [v2 _applePodcastsFoundationSharedUserDefaults];
  [v5 setDouble:kMTUpNextScoreDefaultPercentEpsFromShowPlayedWeight forKey:a1[2]];
}

void sub_3D807C()
{
  v0 = objc_opt_self();
  v1 = [v0 _applePodcastsFoundationSharedUserDefaults];
  [v1 doubleForKey:kMTUpNextScoreDefaultModifiedDateWeight];
  v3 = v2;

  v4 = [v0 _applePodcastsFoundationSharedUserDefaults];
  [v4 setDouble:kMTUpNextScoreModifiedDateWeight forKey:v3];

  v5 = [v0 _applePodcastsFoundationSharedUserDefaults];
  [v5 doubleForKey:kMTUpNextScoreDefaultPercentEpsFromShowPlayedWeight];
  v7 = v6;

  v8 = [v0 _applePodcastsFoundationSharedUserDefaults];
  [v8 setDouble:kMTUpNextScorePercentEpsFromShowPlayedWeight forKey:v7];

  v9 = [v0 _applePodcastsFoundationSharedUserDefaults];
  [v9 doubleForKey:kMTUpNextScoreDefaultPercentEpsTotalPlayedWeight];
  v11 = v10;

  v12 = [v0 _applePodcastsFoundationSharedUserDefaults];
  [v12 setDouble:kMTUpNextScorePercentEpsTotalPlayedWeight forKey:v11];
}

void _s8ShelfKit27UpNextScoringWeightsManagerO013updateDefaultF04withyAA0cdeF0C_tFZ_0(double *a1)
{
  sub_3D7F84(a1);
  v1 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v2 = [v1 BOOLForKey:kMTUpNextScoreUsesRemotelyConfiguredValues];

  if (v2)
  {
    sub_3D807C();
    v3 = [objc_opt_self() sharedInstance];
    v4 = [v3 privateQueueContext];

    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v8[4] = sub_3D83F4;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1279E4;
    v8[3] = &block_descriptor_11_0;
    v6 = _Block_copy(v8);
    v7 = v4;

    [v7 performBlock:v6];
    _Block_release(v6);
  }
}

uint64_t sub_3D8384()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *UpsellBanner.__allocating_init(deserializing:using:)(void *a1, uint64_t a2)
{
  v4 = sub_3E5FC4();
  v178 = *(v4 - 8);
  v179 = v4;
  __chkstk_darwin(v4);
  v177 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v6 - 8);
  v183 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v176 = &v148 - v9;
  v192 = sub_3EBF94();
  v190 = *(v192 - 8);
  __chkstk_darwin(v192);
  v173 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v11 - 8);
  v182 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v181 = &v148 - v14;
  __chkstk_darwin(v15);
  v186 = &v148 - v16;
  __chkstk_darwin(v17);
  v185 = &v148 - v18;
  v19 = sub_3EBDF4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v175 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v174 = &v148 - v23;
  __chkstk_darwin(v24);
  v172 = &v148 - v25;
  __chkstk_darwin(v26);
  v171 = &v148 - v27;
  __chkstk_darwin(v28);
  v169 = &v148 - v29;
  __chkstk_darwin(v30);
  v168 = &v148 - v31;
  __chkstk_darwin(v32);
  v170 = &v148 - v33;
  __chkstk_darwin(v34);
  v36 = &v148 - v35;
  __chkstk_darwin(v37);
  v39 = &v148 - v38;
  __chkstk_darwin(v40);
  v42 = &v148 - v41;
  __chkstk_darwin(v43);
  v45 = &v148 - v44;
  __chkstk_darwin(v46);
  v48 = &v148 - v47;
  v189 = a1;
  sub_3EBE04();
  v191 = a2;
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v52 = *(v20 + 8);
  v51 = v20 + 8;
  v50 = v52;
  v193 = v19;
  v52(v48, v19);
  if (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0)
  {
    v188 = v50;
    type metadata accessor for ExternalUrlAction();
    v180 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
    v167 = swift_dynamicCastClass();
    if (!v167)
    {
      v66 = v193;
      v59 = v189;
      sub_3EBE04();
      Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = sub_3EBDC4();
      v68 = v67;
      v50 = v188;
      v188(v45, v66);
      if (v68)
      {
        v170 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
        Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = v68;
        sub_3EBE04();
        v69 = sub_3EBDC4();
        v71 = v70;
        v188(v39, v66);
        if (v71)
        {
          v161 = 0;
          v162 = 0;
          v169 = 0;
          v163 = 0;
          v168 = 0;
          v165 = 0;
          v164 = 0;
          v166 = 0;
          v160 = 0;
          v157 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
          v158 = v69;
          v159 = v71;
LABEL_28:
          v148 = v51;
          LODWORD(v167) = v167 == 0;
          sub_3EBE04();
          v105 = v191;
          v156 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
          v106 = v193;
          v107 = v188;
          v188(v48, v193);
          sub_3EBE04();
          v152 = sub_3EBDC4();
          v151 = v108;
          v107(v48, v106);
          sub_3EBE04();
          v109 = v105;
          v155 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
          v107(v48, v106);
          v150 = 0xD000000000000010;
          sub_3EBE04();
          v154 = sub_3EBDC4();
          v153 = v110;
          v107(v48, v106);
          sub_3E7784();
          sub_3EBE04();
          v111 = *(v190 + 16);
          v112 = v173;
          v111(v173, v109, v192);
          sub_3DA764(&qword_4EECC8, &type metadata accessor for ArtworkModel);
          sub_3EC574();
          sub_3EBE04();
          v113 = v192;
          v111(v112, v109, v192);
          sub_3EC574();
          sub_3EC634();
          v114 = v189;
          sub_3EBE04();
          v111(v112, v109, v113);
          v115 = v176;
          sub_3EC574();
          v116 = v171;
          v117 = v114;
          sub_3EBE04();
          v173 = sub_3EBDC4();
          v149 = v118;
          v119 = v193;
          v120 = v188;
          v188(v116, v193);
          sub_FBD0(v185, v181, &qword_4F1D50);
          sub_FBD0(v186, v182, &qword_4F1D50);
          v121 = v172;
          sub_3EBE04();
          LODWORD(v171) = sub_3EBD24();
          v120(v121, v119);
          v122 = v174;
          sub_3EBE04();
          v172 = sub_3EBDC4();
          v150 = v123;
          v120(v122, v119);
          v124 = v175;
          sub_3EBE04();
          LODWORD(v174) = sub_3EBD24();
          v120(v124, v119);
          sub_FBD0(v115, v183, &unk_4E9170);
          Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = swift_allocObject();
          v125 = v177;
          sub_3E5FB4();
          v126 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
          v128 = v127;
          (*(v190 + 8))(v191, v192);
          v120(v117, v119);
          (*(v178 + 8))(v125, v179);
          sub_FCF8(v115, &unk_4E9170);
          sub_FCF8(v186, &qword_4F1D50);
          sub_FCF8(v185, &qword_4F1D50);
          Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0[2] = v126;
          Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0[3] = v128;
          v129 = v151;
          Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0[4] = v152;
          Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0[5] = v129;
          v130 = v149;
          Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0[6] = v173;
          Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0[7] = v130;
          sub_FACC(v181, Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_artwork, &qword_4F1D50);
          sub_FACC(v182, Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_wordmarkArtwork, &qword_4F1D50);
          *(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_artworkShowsPlus) = v171 & 1;
          v131 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_shortTitle);
          v132 = v150;
          *v131 = v172;
          v131[1] = v132;
          v133 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitle);
          v134 = v159;
          *v133 = v158;
          v133[1] = v134;
          v135 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_cta);
          v136 = v157;
          *v135 = v170;
          v135[1] = v136;
          *(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_action) = v180;
          *(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitleAction) = v156;
          *(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_channelLinkAction) = v155;
          v137 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_channelLinkTitle);
          v138 = v153;
          *v137 = v154;
          v137[1] = v138;
          v139 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appBundleId);
          v140 = v160;
          *v139 = v166;
          v139[1] = v140;
          v141 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appAdamID;
          *v141 = v161;
          v141[8] = v167;
          v142 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_customProductPageID);
          v143 = v168;
          *v142 = v163;
          v142[1] = v143;
          v144 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_externalAppOfferDeeplink);
          v145 = v169;
          *v144 = v162;
          v144[1] = v145;
          v146 = (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appName);
          v147 = v164;
          *v146 = v165;
          v146[1] = v147;
          *(Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_isForFirstPartyApp) = v174 & 1;
          sub_FACC(v183, Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_impressionMetrics, &unk_4E9170);
          return Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
        }

        v85 = sub_3ECEE4();
        sub_3DA764(&qword_4E9AB8, &type metadata accessor for JSONError);
        swift_allocError();
        *v86 = 0x656C746974627573;
        v87 = v187;
        v86[1] = 0xE800000000000000;
        v86[2] = v87;
        v88 = *(*(v85 - 8) + 104);
        v89 = v85;
        v50 = v188;
        v88(v86, enum case for JSONError.missingProperty(_:), v89);
      }

      else
      {
        v76 = sub_3ECEE4();
        sub_3DA764(&qword_4E9AB8, &type metadata accessor for JSONError);
        swift_allocError();
        *v77 = 6386787;
        v78 = v187;
        v77[1] = 0xE300000000000000;
        v77[2] = v78;
        (*(*(v76 - 8) + 104))(v77, enum case for JSONError.missingProperty(_:), v76);
      }

      goto LABEL_17;
    }

    Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = v189;
    sub_3EBE04();
    v166 = sub_3EBDC4();
    v54 = v53;
    v50 = v188;
    v188(v42, v193);
    if (v54)
    {
      v55 = v50;
      sub_3EBE04();
      v165 = sub_3EBDC4();
      v57 = v56;
      v55(v36, v193);
      if (v57)
      {
        v164 = v57;
        v58 = v170;
        sub_3EBE04();
        sub_3EBDC4();
        v59 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
        Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = v187;
        if (v60)
        {
          v61 = v184;
          v62 = sub_3E9494();
          if (v61)
          {

            v161 = sub_3E9484();

            v188(v58, v193);
            v184 = 0;
          }

          else
          {
            v161 = v62;
            v184 = 0;
            v188(v58, v193);
          }

          v91 = v168;
          sub_3EBE04();
          v92 = sub_3EBDC4();
          v94 = v93;
          v95 = v91;
          v96 = v193;
          v97 = v188;
          v188(v95, v193);
          v168 = v94;
          if (v94)
          {
            v98 = v92;
          }

          else
          {
            v98 = 0;
          }

          v163 = v98;
          v99 = v169;
          sub_3EBE04();
          v100 = sub_3EBDC4();
          v102 = v101;
          v97(v99, v96);
          v169 = v102;
          if (v102)
          {
            v103 = v100;
          }

          else
          {
            v103 = 0;
          }

          v162 = v103;
          sub_3EBE04();
          v158 = sub_3EBDC4();
          v159 = v104;
          v97(v48, v96);
          v170 = 0;
          v157 = 0;
          v160 = v54;
          goto LABEL_28;
        }

        v79 = v58;
        v80 = v188;
        v188(v79, v193);

        v81 = sub_3ECEE4();
        sub_3DA764(&qword_4E9AB8, &type metadata accessor for JSONError);
        swift_allocError();
        *v82 = 0x496D616441707061;
        v82[1] = 0xE900000000000064;
        v82[2] = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
        v83 = *(*(v81 - 8) + 104);
        v84 = v81;
        v50 = v80;
        v83(v82, enum case for JSONError.missingProperty(_:), v84);
LABEL_17:
        swift_willThrow();

        goto LABEL_18;
      }

      v74 = sub_3ECEE4();
      sub_3DA764(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      *v75 = 0x656D614E707061;
      v75[1] = 0xE700000000000000;
      v75[2] = v187;
      (*(*(v74 - 8) + 104))(v75, enum case for JSONError.missingProperty(_:), v74);
      swift_willThrow();

      v59 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
      v50 = v188;
    }

    else
    {
      v72 = sub_3ECEE4();
      sub_3DA764(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      *v73 = 0x6C646E7542707061;
      v73[1] = 0xEB00000000644965;
      v73[2] = v187;
      (*(*(v72 - 8) + 104))(v73, enum case for JSONError.missingProperty(_:), v72);
      swift_willThrow();

      v59 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
    }
  }

  else
  {
    v63 = sub_3ECEE4();
    sub_3DA764(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v64 = 0x6E6F69746361;
    v65 = v187;
    v64[1] = 0xE600000000000000;
    v64[2] = v65;
    (*(*(v63 - 8) + 104))(v64, enum case for JSONError.missingProperty(_:), v63);
    swift_willThrow();
    v59 = v189;
  }

LABEL_18:
  (*(v190 + 8))(v191, v192);
  v50(v59, v193);
  return Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
}

uint64_t UpsellBanner.shortTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_shortTitle);

  return v1;
}

uint64_t UpsellBanner.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitle);

  return v1;
}

uint64_t UpsellBanner.cta.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_cta);

  return v1;
}

uint64_t UpsellBanner.channelLinkTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_channelLinkTitle);

  return v1;
}

uint64_t UpsellBanner.appBundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appBundleId);

  return v1;
}

uint64_t UpsellBanner.customProductPageID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_customProductPageID);

  return v1;
}

uint64_t UpsellBanner.externalAppOfferDeeplink.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_externalAppOfferDeeplink);

  return v1;
}

uint64_t UpsellBanner.appName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appName);

  return v1;
}

void *UpsellBanner.__allocating_init(subscriptionTitle:longTitle:artwork:wordmarkArtwork:artworkShowsPlus:shortTitle:subtitle:cta:action:subtitleAction:channelLinkAction:channelLinkTitle:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:appName:isForFirstPartyApp:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, uint64_t a30)
{
  v73 = a8;
  v71 = a7;
  v68 = a6;
  v63 = a5;
  v87 = a30;
  v86 = a29;
  v84 = a27;
  v85 = a28;
  v82 = a25;
  v83 = a26;
  v80 = a23;
  v81 = a24;
  v79 = a22;
  v77 = a20;
  v78 = a21;
  v75 = a18;
  v76 = a19;
  v74 = a17;
  v72 = a16;
  v69 = a14;
  v70 = a15;
  v67 = a13;
  v66 = a12;
  v65 = a11;
  v64 = a10;
  v62 = a9;
  v34 = sub_3E5FC4();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v61 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = swift_allocObject();
  sub_3E5FB4();
  v39 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v41 = v40;
  (*(v35 + 8))(v37, v34);
  v38[2] = v39;
  v38[3] = v41;
  v38[4] = a1;
  v38[5] = a2;
  v38[6] = a3;
  v38[7] = a4;
  sub_FACC(v63, v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_artwork, &qword_4F1D50);
  sub_FACC(v68, v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_wordmarkArtwork, &qword_4F1D50);
  *(v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_artworkShowsPlus) = v71;
  v42 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_shortTitle);
  v43 = v62;
  *v42 = v73;
  v42[1] = v43;
  v44 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitle);
  v45 = v65;
  *v44 = v64;
  v44[1] = v45;
  v46 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_cta);
  v47 = v67;
  *v46 = v66;
  v46[1] = v47;
  v48 = v70;
  *(v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_action) = v69;
  *(v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitleAction) = v48;
  *(v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_channelLinkAction) = v72;
  v49 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_channelLinkTitle);
  v50 = v75;
  *v49 = v74;
  v49[1] = v50;
  v51 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appBundleId);
  v52 = v77;
  *v51 = v76;
  v51[1] = v52;
  v53 = v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appAdamID;
  *v53 = v78;
  v53[8] = v79 & 1;
  v54 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_customProductPageID);
  v55 = v81;
  *v54 = v80;
  v54[1] = v55;
  v56 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_externalAppOfferDeeplink);
  v57 = v83;
  *v56 = v82;
  v56[1] = v57;
  v58 = (v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appName);
  v59 = v85;
  *v58 = v84;
  v58[1] = v59;
  *(v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_isForFirstPartyApp) = v86;
  sub_FACC(v87, v38 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_impressionMetrics, &unk_4E9170);
  return v38;
}

void *UpsellBanner.init(subscriptionTitle:longTitle:artwork:wordmarkArtwork:artworkShowsPlus:shortTitle:subtitle:cta:action:subtitleAction:channelLinkAction:channelLinkTitle:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:appName:isForFirstPartyApp:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, uint64_t a30)
{
  v31 = v30;
  v74 = a8;
  v72 = a7;
  v69 = a6;
  v64 = a5;
  v88 = a30;
  v87 = a29;
  v85 = a27;
  v86 = a28;
  v83 = a25;
  v84 = a26;
  v81 = a23;
  v82 = a24;
  v80 = a22;
  v78 = a20;
  v79 = a21;
  v76 = a18;
  v77 = a19;
  v75 = a17;
  v73 = a16;
  v70 = a14;
  v71 = a15;
  v68 = a13;
  v67 = a12;
  v66 = a11;
  v65 = a10;
  v63 = a9;
  v36 = sub_3E5FC4();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v62 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E5FB4();
  v40 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v42 = v41;
  (*(v37 + 8))(v39, v36);
  v31[2] = v40;
  v31[3] = v42;
  v31[4] = a1;
  v31[5] = a2;
  v31[6] = a3;
  v31[7] = a4;
  sub_FACC(v64, v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_artwork, &qword_4F1D50);
  sub_FACC(v69, v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_wordmarkArtwork, &qword_4F1D50);
  *(v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_artworkShowsPlus) = v72;
  v43 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_shortTitle);
  v44 = v63;
  *v43 = v74;
  v43[1] = v44;
  v45 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitle);
  v46 = v66;
  *v45 = v65;
  v45[1] = v46;
  v47 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_cta);
  v48 = v68;
  *v47 = v67;
  v47[1] = v48;
  v49 = v71;
  *(v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_action) = v70;
  *(v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitleAction) = v49;
  *(v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_channelLinkAction) = v73;
  v50 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_channelLinkTitle);
  v51 = v76;
  *v50 = v75;
  v50[1] = v51;
  v52 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appBundleId);
  v53 = v78;
  *v52 = v77;
  v52[1] = v53;
  v54 = v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appAdamID;
  *v54 = v79;
  v54[8] = v80 & 1;
  v55 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_customProductPageID);
  v56 = v82;
  *v55 = v81;
  v55[1] = v56;
  v57 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_externalAppOfferDeeplink);
  v58 = v84;
  *v57 = v83;
  v57[1] = v58;
  v59 = (v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appName);
  v60 = v86;
  *v59 = v85;
  v59[1] = v60;
  *(v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_isForFirstPartyApp) = v87;
  sub_FACC(v88, v31 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_impressionMetrics, &unk_4E9170);
  return v31;
}

uint64_t UpsellBanner.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_artwork, &qword_4F1D50);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_wordmarkArtwork, &qword_4F1D50);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_impressionMetrics, &unk_4E9170);
  return v0;
}

uint64_t UpsellBanner.__deallocating_deinit()
{
  UpsellBanner.deinit();

  return swift_deallocClassInstance();
}

void *sub_3DA478@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = UpsellBanner.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *UpsellBanner.impressionableActions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitleAction);
  v5[4] = *(v0 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_action);
  v5[5] = v1;

  for (i = 0; i != 2; ++i)
  {
    if (v5[i + 4])
    {

      sub_3ED564();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_3ED5A4();
      }

      sub_3ED604();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF4C8);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_3DA668(uint64_t a1)
{
  result = sub_3DA764(&qword_506638, type metadata accessor for UpsellBanner);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for UpsellBanner()
{
  result = qword_506668;
  if (!qword_506668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3DA70C(uint64_t a1)
{
  result = sub_3DA764(&qword_4FCAD8, type metadata accessor for UpsellBanner);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3DA764(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_3DA7B4()
{
  sub_95A68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v0 <= 0x3F)
  {
    sub_95A68(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of UpsellBanner.__allocating_init(subscriptionTitle:longTitle:artwork:wordmarkArtwork:artworkShowsPlus:shortTitle:subtitle:cta:action:subtitleAction:channelLinkAction:channelLinkTitle:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:appName:isForFirstPartyApp:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *(v13 + 248);

  return v15(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t *UpsellInformation.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v222 = a2;
  v193 = sub_3E5FC4();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v191 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_3EC164();
  v198 = *(v199 - 8);
  v4 = __chkstk_darwin(v199);
  v197 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v207 = &v167 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98);
  v8 = __chkstk_darwin(v7 - 8);
  v203 = (&v167 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v211 = &v167 - v10;
  v11 = sub_3ECED4();
  v215 = *(v11 - 8);
  v216 = v11;
  v12 = __chkstk_darwin(v11);
  v194 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v200 = &v167 - v14;
  v15 = sub_3EBF94();
  v220 = *(v15 - 8);
  v221 = v15;
  v16 = __chkstk_darwin(v15);
  v204 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v212 = &v167 - v19;
  __chkstk_darwin(v18);
  v208 = &v167 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v22 = __chkstk_darwin(v21 - 8);
  v196 = &v167 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v206 = &v167 - v25;
  v26 = __chkstk_darwin(v24);
  v218 = &v167 - v27;
  __chkstk_darwin(v26);
  v219 = &v167 - v28;
  v29 = sub_3EBDF4();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v190 = &v167 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v189 = &v167 - v34;
  v35 = __chkstk_darwin(v33);
  v202 = &v167 - v36;
  v37 = __chkstk_darwin(v35);
  v201 = &v167 - v38;
  v39 = __chkstk_darwin(v37);
  v41 = &v167 - v40;
  v42 = __chkstk_darwin(v39);
  v213 = &v167 - v43;
  v44 = __chkstk_darwin(v42);
  v210 = &v167 - v45;
  v46 = __chkstk_darwin(v44);
  v209 = &v167 - v47;
  v48 = __chkstk_darwin(v46);
  v50 = &v167 - v49;
  v51 = __chkstk_darwin(v48);
  v53 = &v167 - v52;
  v54 = __chkstk_darwin(v51);
  v56 = &v167 - v55;
  v57 = __chkstk_darwin(v54);
  v59 = &v167 - v58;
  __chkstk_darwin(v57);
  v61 = &v167 - v60;
  v223 = a1;
  sub_3EBE04();
  v188 = sub_3EBDC4();
  v63 = v62;
  v65 = *(v30 + 8);
  v64 = v30 + 8;
  v226 = v29;
  v224 = v65;
  v65(v61, v29);
  if (!v63)
  {
    v85 = sub_3ECEE4();
    sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v86 = 0x656C746974;
    v87 = v217;
    v86[1] = 0xE500000000000000;
    v86[2] = v87;
    (*(*(v85 - 1) + 104))(v86, enum case for JSONError.missingProperty(_:), v85);
    swift_willThrow();
    v224(v223, v226);
LABEL_7:
    v90 = v221;
    v91 = v222;
    goto LABEL_22;
  }

  v183 = v50;
  v184 = v41;
  v205 = v63;
  sub_3EBE04();
  v179 = sub_3EBDC4();
  v67 = v66;
  v68 = v226;
  v69 = v224;
  v224(v59, v226);
  sub_3EBE04();
  v178 = sub_3EBDC4();
  v71 = v70;
  v69(v56, v68);
  v72 = v64;
  if (!v71)
  {

    v85 = sub_3ECEE4();
    sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v88 = 0x656C746954617463;
    v89 = v217;
    v88[1] = 0xE800000000000000;
    v88[2] = v89;
    (*(*(v85 - 1) + 104))(v88, enum case for JSONError.missingProperty(_:), v85);
    swift_willThrow();
    v224(v223, v226);
    goto LABEL_7;
  }

  v181 = v71;
  v182 = v67;
  sub_3EBE04();
  v176 = sub_3EBD24();
  v224(v53, v226);
  v195 = sub_3E7784();
  sub_3EBE04();
  v74 = v220 + 16;
  v73 = *(v220 + 16);
  v75 = v208;
  v76 = v222;
  v187 = v72;
  v77 = v221;
  v73(v208, v222, v221);
  sub_3E23D0(&qword_4EECC8, &type metadata accessor for ArtworkModel);
  sub_3EC574();
  sub_3EBE04();
  v186 = v74;
  v185 = v73;
  v73(v75, v76, v77);
  v180 = v59;
  sub_3EC574();
  v78 = v183;
  sub_3EBE04();
  v79 = v211;
  sub_3EBD54();
  v224(v78, v226);
  v81 = v215;
  v80 = v216;
  v82 = *(v215 + 48);
  v208 = (v215 + 48);
  v183 = v82;
  if (v82(v79, 1, v216) == 1)
  {
    sub_FCF8(v79, &qword_4EDC98);
    v211 = _swiftEmptyArrayStorage;
    v83 = v222;
    v84 = v214;
  }

  else
  {
    v92 = v200;
    v93 = (*(v81 + 32))(v200, v79, v80);
    __chkstk_darwin(v93);
    *(&v167 - 2) = v222;
    v94 = v214;
    v211 = sub_3ECE94();
    v84 = v94;
    v83 = v222;
    (*(v81 + 8))(v92, v80);
  }

  v95 = v209;
  sub_3EBE04();
  v175 = sub_3EBD24();
  v96 = v95;
  v97 = v226;
  v98 = v224;
  v224(v96, v226);
  v99 = v210;
  sub_3EBE04();
  v100 = v212;
  v185(v212, v83, v221);
  v101 = sub_3DC304(v99, v100);
  v103 = v180;
  if (v84)
  {

    v214 = 0;
    LODWORD(v212) = 255;
  }

  else
  {
    LODWORD(v212) = v102;
    v214 = v101;
  }

  v104 = v213;
  sub_3EBE04();
  v174 = sub_3EBDC4();
  v213 = v105;
  v98(v103, v97);
  sub_3EBE04();
  v173 = sub_3EBDC4();
  v210 = v106;
  v98(v103, v97);
  sub_3EBE04();
  sub_3EBDC4();
  v168 = v107;
  if (v107)
  {
    v108 = sub_3E9494();
    v200 = 0;
    v172 = v108;
    v98(v104, v97);
  }

  else
  {
    v200 = 0;
    v98(v104, v97);
    v172 = 0;
  }

  v109 = v223;
  sub_3EBE04();
  v171 = sub_3EBDC4();
  v209 = v110;
  v98(v103, v97);
  sub_3EBE04();
  v170 = sub_3EBDC4();
  v112 = v111;
  v98(v103, v97);
  v113 = v184;
  sub_3EBE04();
  v169 = sub_3EBDC4();
  v115 = v114;
  v98(v113, v97);
  if (v115)
  {
    v184 = v115;
    v195 = v112;
    sub_3EBE04();
    Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
    v98(v103, v97);
    v116 = v201;
    sub_3EBE04();
    v117 = v203;
    sub_3EBD54();
    v98(v116, v97);
    v118 = v216;
    v119 = v109;
    if (v183(v117, 1, v216) == 1)
    {
      sub_FCF8(v117, &qword_4EDC98);
      v208 = _swiftEmptyArrayStorage;
      v90 = v221;
      v91 = v222;
      v120 = v200;
    }

    else
    {
      v124 = v215;
      v125 = v194;
      v126 = (*(v215 + 32))(v194, v117, v118);
      __chkstk_darwin(v126);
      *(&v167 - 2) = v222;
      type metadata accessor for UpsellSubscriptionPlan();
      v127 = v200;
      v208 = sub_3ECE94();
      v120 = v127;
      v128 = v118;
      v91 = v222;
      (*(v124 + 8))(v125, v128);
      v90 = v221;
    }

    sub_3EBE04();
    v185(v204, v91, v90);
    v129 = v207;
    sub_3EC0E4();
    if (!v120)
    {
      LODWORD(v215) = v168 == 0;
      sub_3EBE04();
      v216 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
      v131 = v103;
      v132 = v224;
      v224(v131, v226);
      sub_4E45C(v219, v206);
      sub_4E45C(v218, v196);
      v203 = *(v198 + 16);
      v204 = (v198 + 16);
      v203(v197, v129, v199);
      v133 = v189;
      sub_3EBE04();
      LODWORD(v202) = sub_3EBD24();
      v134 = v226;
      v132(v133, v226);
      v135 = v190;
      sub_3EBE04();
      v136 = sub_3EBD24();
      v137 = v217;
      LODWORD(v201) = v136;
      v132(v135, v134);
      v138 = v137;
      v139 = objc_allocWithZone(v137);
      v140 = v191;
      sub_3E5FB4();
      v141 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v143 = v142;
      (*(v192 + 8))(v140, v193);
      v144 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_shelfUniqueId];
      *v144 = v141;
      v144[1] = v143;
      v145 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_title];
      v146 = v205;
      *v145 = v188;
      v145[1] = v146;
      v147 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subtitle];
      v148 = v182;
      *v147 = v179;
      v147[1] = v148;
      v149 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_ctaTitle];
      v150 = v181;
      *v149 = v178;
      v149[1] = v150;
      v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundArtworkIsFromEditorial] = v176 & 1;
      sub_4E45C(v206, &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundArtwork]);
      v151 = v196;
      sub_4E45C(v196, &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_logoArtwork]);
      *&v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_showGridArtworks] = v211;
      v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_showGridArtworksHasReferralShow] = v175 & 1;
      v152 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundColor];
      *v152 = v214;
      v152[8] = v212;
      v153 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_productId];
      v154 = v213;
      *v153 = v174;
      v153[1] = v154;
      v155 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_appBundleId];
      v156 = v210;
      *v155 = v173;
      v155[1] = v156;
      v157 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_appAdamID];
      *v157 = v172;
      v157[8] = v215;
      v158 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_customProductPageID];
      v159 = v209;
      *v158 = v171;
      v158[1] = v159;
      v160 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalAppOfferDeeplink];
      v161 = v195;
      *v160 = v170;
      v160[1] = v161;
      v162 = &v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_caption];
      v163 = v184;
      *v162 = v169;
      v162[1] = v163;
      *&v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_seeAllAction] = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
      *&v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subscriptionPlans] = v208;
      v164 = v197;
      v165 = v199;
      v203(&v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_pageMetrics], v197, v199);
      v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_isForConfirmationSheet] = v202 & 1;
      *&v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalUrlAction] = v216;
      v139[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_isForFirstPartyApp] = v201 & 1;
      v225.receiver = v139;
      v225.super_class = v138;
      v85 = objc_msgSendSuper2(&v225, "init");
      v224(v223, v226);
      v166 = *(v198 + 8);
      v166(v164, v165);
      sub_FCF8(v151, &qword_4F1D50);
      sub_FCF8(v206, &qword_4F1D50);
      v166(v207, v165);
      sub_FCF8(v218, &qword_4F1D50);
      sub_FCF8(v219, &qword_4F1D50);
      (*(v220 + 8))(v222, v221);
      return v85;
    }

    sub_234D4C(v214, v212);
    v224(v119, v226);
    v85 = &qword_4F1D50;
    sub_FCF8(v218, &qword_4F1D50);
    sub_FCF8(v219, &qword_4F1D50);
  }

  else
  {

    v121 = sub_3ECEE4();
    sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v122 = 0x6E6F6974706163;
    v123 = v217;
    v122[1] = 0xE700000000000000;
    v122[2] = v123;
    (*(*(v121 - 8) + 104))(v122, enum case for JSONError.missingProperty(_:), v121);
    swift_willThrow();
    sub_234D4C(v214, v212);
    v98(v109, v97);
    v85 = &qword_4F1D50;
    sub_FCF8(v218, &qword_4F1D50);
    sub_FCF8(v219, &qword_4F1D50);
    v90 = v221;
    v91 = v222;
  }

LABEL_22:
  (*(v220 + 8))(v91, v90);
  return v85;
}

uint64_t sub_3DC304(uint64_t a1, uint64_t a2)
{
  v5 = sub_3EE444();
  v27 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_3EBF94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  sub_3ED0B4();
  sub_3E24C0();
  sub_3EBD84();
  if (v2)
  {
    v25 = a2;
    v26 = a1;

    v28 = v2;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    if (swift_dynamicCast())
    {

      v13 = v27;
      (*(v27 + 32))(v29, v9, v5);
      v14 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_3F5630;
      *(v17 + 32) = swift_allocError();
      v18 = v29;
      (*(v13 + 16))(v19, v29, v5);
      *v16 = &type metadata for Color;
      v16[1] = v17;
      (*(*(v14 - 8) + 104))(v16, enum case for JSONError.malformedDocument(_:), v14);
      swift_willThrow();
      (*(v11 + 8))(v25, v10);
      v20 = sub_3EBDF4();
      (*(*(v20 - 8) + 8))(v26, v20);
      (*(v13 + 8))(v18, v5);
    }

    else
    {
      (*(v11 + 8))(v25, v10);
      v23 = sub_3EBDF4();
      (*(*(v23 - 8) + 8))(v26, v23);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v21 = sub_3EBDF4();
    (*(*(v21 - 8) + 8))(a1, v21);
    return v28;
  }
}

uint64_t sub_3DC834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v37 = a6;
  v35 = a5;
  v34 = sub_3EE444();
  v32 = *(v34 - 8);
  v10 = __chkstk_darwin(v34);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v14 = sub_3EBF94();
  v15 = *(v14 - 1);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3(0);
  (*(v15 + 16))(v17, a2, v14);
  sub_3ED0B4();
  sub_3E23D0(a4, v35);
  v37 = a1;
  v19 = v36;
  sub_3EBD84();
  if (v19)
  {
    v35 = v14;
    v36 = a2;

    v38 = v19;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v20 = v34;
    if (swift_dynamicCast())
    {

      v21 = v32;
      (*(v32 + 32))(v33, v13, v20);
      v22 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_3F5630;
      *(v25 + 32) = swift_allocError();
      v26 = v33;
      (*(v21 + 16))(v27, v33, v20);
      *v24 = v18;
      v24[1] = v25;
      (*(*(v22 - 8) + 104))(v24, enum case for JSONError.malformedDocument(_:), v22);
      swift_willThrow();
      (*(v15 + 8))(v36, v35);
      v28 = sub_3EBDF4();
      (*(*(v28 - 8) + 8))(v37, v28);
      (*(v21 + 8))(v26, v20);
    }

    else
    {
      (*(v15 + 8))(v36, v35);
      v31 = sub_3EBDF4();
      (*(*(v31 - 8) + 8))(v37, v31);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v29 = sub_3EBDF4();
    return (*(*(v29 - 8) + 8))(v37, v29);
  }
}

uint64_t sub_3DD068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_3EE444();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = sub_3EBF94();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  (*(v13 + 16))(&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12, v14);
  sub_3ED0B4();
  sub_3E2130();
  sub_3EBD84();
  if (v3)
  {
    v27 = a1;
    v28 = a2;

    v30 = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    if (swift_dynamicCast())
    {

      v16 = v32;
      v17 = v29;
      (*(v32 + 32))(v29, v11, v7);
      v18 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_3F5630;
      *(v21 + 32) = swift_allocError();
      (*(v16 + 16))(v22, v17, v7);
      *v20 = &type metadata for NewsFromYourShowsShelfIntent;
      v20[1] = v21;
      (*(*(v18 - 8) + 104))(v20, enum case for JSONError.malformedDocument(_:), v18);
      swift_willThrow();
      (*(v13 + 8))(v28, v12);
      v23 = sub_3EBDF4();
      (*(*(v23 - 8) + 8))(v27, v23);
      (*(v16 + 8))(v17, v7);
    }

    else
    {
      (*(v13 + 8))(v28, v12);
      v26 = sub_3EBDF4();
      (*(*(v26 - 8) + 8))(v27, v26);
    }
  }

  else
  {

    (*(v13 + 8))(a2, v12);
    v24 = sub_3EBDF4();
    result = (*(*(v24 - 8) + 8))(a1, v24);
    *a3 = v30;
    *(a3 + 8) = v31;
  }

  return result;
}

uint64_t sub_3DD520@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v34 = a5;
  v35 = sub_3EE444();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = sub_3EBF94();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  (*(v15 + 16))(&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14, v16);
  sub_3ED0B4();
  a3();
  v31 = a4;
  sub_3EBD84();
  if (v5)
  {
    v30 = a2;
    v34 = a1;

    v36 = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v18 = v35;
    if (swift_dynamicCast())
    {

      v19 = v32;
      v20 = v33;
      (*(v33 + 32))(v32, v13, v18);
      v21 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_3F5630;
      *(v24 + 32) = swift_allocError();
      (*(v20 + 16))(v25, v19, v18);
      *v23 = v31;
      v23[1] = v24;
      (*(*(v21 - 8) + 104))(v23, enum case for JSONError.malformedDocument(_:), v21);
      swift_willThrow();
      (*(v15 + 8))(v30, v14);
      v26 = sub_3EBDF4();
      (*(*(v26 - 8) + 8))(v34, v26);
      (*(v20 + 8))(v19, v18);
    }

    else
    {
      (*(v15 + 8))(v30, v14);
      v29 = sub_3EBDF4();
      (*(*(v29 - 8) + 8))(v34, v29);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v27 = sub_3EBDF4();
    result = (*(*(v27 - 8) + 8))(a1, v27);
    *v34 = v36;
  }

  return result;
}

uint64_t sub_3DDB00(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = sub_3EE444();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_3EBF94();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  (*(v15 + 16))(&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14, v16);
  sub_3ED0B4();
  a3();
  v34 = a4;
  sub_3EBD84();
  if (v4)
  {
    v33 = a2;

    v38 = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v18 = v36;
    if (swift_dynamicCast())
    {

      v19 = v35;
      (*(v35 + 32))(v37, v13, v18);
      v20 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
      v23 = swift_allocObject();
      v32 = a1;
      v24 = v23;
      *(v23 + 16) = xmmword_3F5630;
      *(v23 + 32) = swift_allocError();
      v25 = v37;
      (*(v19 + 16))(v26, v37, v18);
      *v22 = v34;
      v22[1] = v24;
      (*(*(v20 - 8) + 104))(v22, enum case for JSONError.malformedDocument(_:), v20);
      swift_willThrow();
      (*(v15 + 8))(v33, v14);
      v27 = sub_3EBDF4();
      (*(*(v27 - 8) + 8))(v32, v27);
      (*(v19 + 8))(v25, v18);
    }

    else
    {
      (*(v15 + 8))(v33, v14);
      v30 = sub_3EBDF4();
      (*(*(v30 - 8) + 8))(a1, v30);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v28 = sub_3EBDF4();
    (*(*(v28 - 8) + 8))(a1, v28);
    return v39;
  }
}

uint64_t sub_3DDFDC(uint64_t a1, uint64_t a2)
{
  v5 = sub_3EE444();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_3EBF94();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  (*(v11 + 16))(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10, v12);
  sub_3ED0B4();
  sub_BA90C();
  sub_3EBD84();
  if (v2)
  {
    v26 = a2;
    v27 = a1;

    v29 = v2;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    if (swift_dynamicCast())
    {

      v14 = v28;
      (*(v28 + 32))(v30, v9, v5);
      v15 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_3F5630;
      *(v18 + 32) = swift_allocError();
      v19 = v30;
      (*(v14 + 16))(v20, v30, v5);
      *v17 = &type metadata for ContentReference;
      v17[1] = v18;
      (*(*(v15 - 8) + 104))(v17, enum case for JSONError.malformedDocument(_:), v15);
      swift_willThrow();
      (*(v11 + 8))(v26, v10);
      v21 = sub_3EBDF4();
      (*(*(v21 - 8) + 8))(v27, v21);
      (*(v14 + 8))(v19, v5);
    }

    else
    {
      (*(v11 + 8))(v26, v10);
      v24 = sub_3EBDF4();
      (*(*(v24 - 8) + 8))(v27, v24);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v22 = sub_3EBDF4();
    (*(*(v22 - 8) + 8))(a1, v22);
    return v29;
  }
}

uint64_t sub_3DE48C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = sub_3EE444();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v38 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_3EBF94();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  (*(v15 + 16))(&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14, v16);
  sub_3ED0B4();
  a3();
  v34 = a4;
  sub_3EBD84();
  if (v4)
  {
    v33 = a2;

    v37 = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v18 = v36;
    if (swift_dynamicCast())
    {

      v19 = v35;
      (*(v35 + 32))(v38, v13, v18);
      v20 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
      v23 = swift_allocObject();
      v32 = a1;
      v24 = v23;
      *(v23 + 16) = xmmword_3F5630;
      *(v23 + 32) = swift_allocError();
      v25 = v38;
      (*(v19 + 16))(v26, v38, v18);
      *v22 = v34;
      v22[1] = v24;
      (*(*(v20 - 8) + 104))(v22, enum case for JSONError.malformedDocument(_:), v20);
      swift_willThrow();
      (*(v15 + 8))(v33, v14);
      v27 = sub_3EBDF4();
      (*(*(v27 - 8) + 8))(v32, v27);
      (*(v19 + 8))(v25, v18);
    }

    else
    {
      (*(v15 + 8))(v33, v14);
      v30 = sub_3EBDF4();
      (*(*(v30 - 8) + 8))(a1, v30);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v28 = sub_3EBDF4();
    (*(*(v28 - 8) + 8))(a1, v28);
    return v37;
  }
}

uint64_t sub_3DE90C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v29 = a3;
  v6 = sub_3EE444();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = sub_3EBF94();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  (*(v12 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11, v13);
  sub_3ED0B4();
  sub_141724();
  sub_3EBD84();
  if (v3)
  {
    v27 = a2;
    v29 = a1;

    v31 = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    if (swift_dynamicCast())
    {

      v15 = v28;
      (*(v28 + 32))(v30, v10, v6);
      v16 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_3F5630;
      *(v19 + 32) = swift_allocError();
      v20 = v30;
      (*(v15 + 16))(v21, v30, v6);
      *v18 = &type metadata for ActionButton.Role;
      v18[1] = v19;
      (*(*(v16 - 8) + 104))(v18, enum case for JSONError.malformedDocument(_:), v16);
      swift_willThrow();
      (*(v12 + 8))(v27, v11);
      v22 = sub_3EBDF4();
      (*(*(v22 - 8) + 8))(v29, v22);
      (*(v15 + 8))(v20, v6);
    }

    else
    {
      (*(v12 + 8))(v27, v11);
      v25 = sub_3EBDF4();
      (*(*(v25 - 8) + 8))(v29, v25);
    }
  }

  else
  {

    (*(v12 + 8))(a2, v11);
    v23 = sub_3EBDF4();
    result = (*(*(v23 - 8) + 8))(a1, v23);
    *v29 = v32;
  }

  return result;
}

uint64_t sub_3DEF0C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_3EE444();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_3EBF94();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  (*(v14 + 16))(&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13, v15);
  sub_3ED0B4();
  a3();
  v17 = a1;
  v32 = a4;
  v18 = v36;
  sub_3EBD84();
  if (v18)
  {
    v31 = v13;
    v36 = a2;

    v37 = v18;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v19 = v35;
    if (swift_dynamicCast())
    {

      v21 = v33;
      v20 = v34;
      (*(v34 + 32))(v33, v12, v19);
      v22 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_3F5630;
      *(v25 + 32) = swift_allocError();
      (*(v20 + 16))(v26, v21, v19);
      *v24 = v32;
      v24[1] = v25;
      (*(*(v22 - 8) + 104))(v24, enum case for JSONError.malformedDocument(_:), v22);
      swift_willThrow();
      (*(v14 + 8))(v36, v31);
      v27 = sub_3EBDF4();
      (*(*(v27 - 8) + 8))(v17, v27);
      (*(v20 + 8))(v21, v19);
    }

    else
    {
      (*(v14 + 8))(v36, v31);
      v30 = sub_3EBDF4();
      (*(*(v30 - 8) + 8))(v17, v30);
    }
  }

  else
  {

    (*(v14 + 8))(a2, v13);
    v28 = sub_3EBDF4();
    return (*(*(v28 - 8) + 8))(a1, v28);
  }
}

uint64_t sub_3DF3F8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = sub_3EE444();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_3EBF94();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  (*(v15 + 16))(&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14, v16);
  sub_3ED0B4();
  a3();
  v34 = a4;
  sub_3EBD84();
  if (v4)
  {
    v33 = a2;

    v38 = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v18 = v36;
    if (swift_dynamicCast())
    {

      v19 = v35;
      (*(v35 + 32))(v37, v13, v18);
      v20 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
      v23 = swift_allocObject();
      v32 = a1;
      v24 = v23;
      *(v23 + 16) = xmmword_3F5630;
      *(v23 + 32) = swift_allocError();
      v25 = v37;
      (*(v19 + 16))(v26, v37, v18);
      *v22 = v34;
      v22[1] = v24;
      (*(*(v20 - 8) + 104))(v22, enum case for JSONError.malformedDocument(_:), v20);
      swift_willThrow();
      (*(v15 + 8))(v33, v14);
      v27 = sub_3EBDF4();
      (*(*(v27 - 8) + 8))(v32, v27);
      (*(v19 + 8))(v25, v18);
    }

    else
    {
      (*(v15 + 8))(v33, v14);
      v30 = sub_3EBDF4();
      (*(*(v30 - 8) + 8))(a1, v30);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v28 = sub_3EBDF4();
    (*(*(v28 - 8) + 8))(a1, v28);
    return v39;
  }
}

uint64_t sub_3DF8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_3EE444();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_3EBF94();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  (*(v13 + 16))(&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12, v14);
  sub_3ED0B4();
  sub_3E2280();
  sub_3EBD84();
  if (v3)
  {
    v29 = a1;
    v30 = a2;

    v32 = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    if (swift_dynamicCast())
    {

      v16 = v34;
      v17 = v31;
      (*(v34 + 32))(v31, v11, v7);
      v18 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_3F5630;
      *(v21 + 32) = swift_allocError();
      (*(v16 + 16))(v22, v17, v7);
      *v20 = &type metadata for ChannelPageIntent;
      v20[1] = v21;
      (*(*(v18 - 8) + 104))(v20, enum case for JSONError.malformedDocument(_:), v18);
      swift_willThrow();
      (*(v13 + 8))(v30, v12);
      v23 = sub_3EBDF4();
      (*(*(v23 - 8) + 8))(v29, v23);
      (*(v16 + 8))(v17, v7);
    }

    else
    {
      (*(v13 + 8))(v30, v12);
      v27 = sub_3EBDF4();
      (*(*(v27 - 8) + 8))(v29, v27);
    }
  }

  else
  {

    (*(v13 + 8))(a2, v12);
    v24 = sub_3EBDF4();
    result = (*(*(v24 - 8) + 8))(a1, v24);
    v26 = v33;
    *a3 = v32;
    *(a3 + 8) = v26;
  }

  return result;
}

uint64_t sub_3DFE78@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v36 = a5;
  v37 = sub_3EE444();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_3EBF94();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  (*(v15 + 16))(&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14, v16);
  sub_3ED0B4();
  a3();
  v34 = a4;
  sub_3EBD84();
  if (v5)
  {
    v33 = a2;
    v36 = a1;

    *&v38 = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v18 = v37;
    if (swift_dynamicCast())
    {

      v19 = v35;
      (*(v35 + 32))(v40, v13, v18);
      v20 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_3F5630;
      *(v23 + 32) = swift_allocError();
      v24 = v40;
      (*(v19 + 16))(v25, v40, v18);
      *v22 = v34;
      v22[1] = v23;
      (*(*(v20 - 8) + 104))(v22, enum case for JSONError.malformedDocument(_:), v20);
      swift_willThrow();
      (*(v15 + 8))(v33, v14);
      v26 = sub_3EBDF4();
      (*(*(v26 - 8) + 8))(v36, v26);
      (*(v19 + 8))(v24, v18);
    }

    else
    {
      (*(v15 + 8))(v33, v14);
      v31 = sub_3EBDF4();
      (*(*(v31 - 8) + 8))(v36, v31);
    }
  }

  else
  {

    (*(v15 + 8))(a2, v14);
    v27 = sub_3EBDF4();
    result = (*(*(v27 - 8) + 8))(a1, v27);
    v29 = v39;
    v30 = v36;
    *v36 = v38;
    *(v30 + 2) = v29;
  }

  return result;
}

uint64_t sub_3E036C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_3EE444();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_3EBF94();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  (*(v13 + 16))(&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12, v14);
  sub_3ED0B4();
  sub_3E20DC();
  sub_3EBD84();
  if (v3)
  {
    v29 = a1;
    v30 = a2;

    v32 = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    if (swift_dynamicCast())
    {

      v16 = v34;
      v17 = v31;
      (*(v34 + 32))(v31, v11, v7);
      v18 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_3F5630;
      *(v21 + 32) = swift_allocError();
      (*(v16 + 16))(v22, v17, v7);
      *v20 = &type metadata for SearchHintsPageIntent;
      v20[1] = v21;
      (*(*(v18 - 8) + 104))(v20, enum case for JSONError.malformedDocument(_:), v18);
      swift_willThrow();
      (*(v13 + 8))(v30, v12);
      v23 = sub_3EBDF4();
      (*(*(v23 - 8) + 8))(v29, v23);
      (*(v16 + 8))(v17, v7);
    }

    else
    {
      (*(v13 + 8))(v30, v12);
      v27 = sub_3EBDF4();
      (*(*(v27 - 8) + 8))(v29, v27);
    }
  }

  else
  {

    (*(v13 + 8))(a2, v12);
    v24 = sub_3EBDF4();
    result = (*(*(v24 - 8) + 8))(a1, v24);
    v26 = v33;
    *a3 = v32;
    a3[1] = v26;
  }

  return result;
}

uint64_t sub_3E0844@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v6 = sub_3EE444();
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = sub_3EBF94();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  (*(v12 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11, v13);
  sub_3ED0B4();
  sub_3E21D8();
  sub_3EBD84();
  if (v3)
  {
    v26 = a2;
    v28 = a1;

    v30 = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    if (swift_dynamicCast())
    {

      v15 = v27;
      (*(v27 + 32))(v29, v10, v6);
      v16 = sub_3ECEE4();
      sub_3E23D0(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_505628);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_3F5630;
      *(v19 + 32) = swift_allocError();
      v20 = v29;
      (*(v15 + 16))(v21, v29, v6);
      *v18 = &type metadata for FromChannelShelvesIntent;
      v18[1] = v19;
      (*(*(v16 - 8) + 104))(v18, enum case for JSONError.malformedDocument(_:), v16);
      swift_willThrow();
      (*(v12 + 8))(v26, v11);
      v22 = sub_3EBDF4();
      (*(*(v22 - 8) + 8))(v28, v22);
      (*(v15 + 8))(v20, v6);
    }

    else
    {
      (*(v12 + 8))(v26, v11);
      v25 = sub_3EBDF4();
      (*(*(v25 - 8) + 8))(v28, v25);
    }
  }

  else
  {

    (*(v12 + 8))(a2, v11);
    v23 = sub_3EBDF4();
    result = (*(*(v23 - 8) + 8))(a1, v23);
    *v28 = v30;
  }

  return result;
}

uint64_t UpsellInformation.shelfUniqueId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_shelfUniqueId);

  return v1;
}

uint64_t UpsellInformation.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_title);

  return v1;
}

uint64_t UpsellInformation.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subtitle);

  return v1;
}

uint64_t UpsellInformation.ctaTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_ctaTitle);

  return v1;
}

void *UpsellInformation.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundColor);
  sub_1F7418(v1, *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundColor + 8));
  return v1;
}

uint64_t UpsellInformation.productId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_productId);

  return v1;
}

uint64_t UpsellInformation.appBundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_appBundleId);

  return v1;
}

uint64_t UpsellInformation.customProductPageID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_customProductPageID);

  return v1;
}

uint64_t UpsellInformation.externalAppOfferDeeplink.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalAppOfferDeeplink);

  return v1;
}

uint64_t UpsellInformation.caption.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_caption);

  return v1;
}

uint64_t UpsellInformation.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit17UpsellInformation_pageMetrics;
  v4 = sub_3EC164();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL UpsellInformation.hasTwoSubscriptionPlans.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subscriptionPlans);
  if (v1 >> 62)
  {
    v2 = sub_3EE5A4();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  return v2 == 2;
}

id UpsellInformation.__allocating_init(title:subtitle:ctaTitle:backgroundArtworkIsFromEditorial:backgroundArtwork:logoArtwork:showGridArtworks:showGridArtworksHasReferralShow:backgroundColor:productId:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:caption:seeAllAction:subscriptionPlans:pageMetrics:isForConfirmationSheet:externalUrlAction:isForFirstPartyApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, uint64_t a30, unsigned __int8 a31)
{
  v32 = v31;
  v78 = a8;
  v76 = a7;
  v74 = a6;
  v72 = a5;
  v70 = a4;
  v97 = a31;
  v96 = a30;
  v95 = a29;
  v93 = a27;
  v94 = a28;
  v91 = a25;
  v92 = a26;
  v90 = a24;
  v87 = a22;
  v88 = a23;
  v85 = a20;
  v86 = a21;
  v84 = a19;
  v82 = a17;
  v83 = a18;
  v80 = a15;
  v81 = a16;
  v79 = a14;
  v77 = a13;
  v75 = a12;
  v73 = a11;
  v71 = a10;
  v36 = sub_3E5FC4();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = objc_allocWithZone(v32);
  sub_3E5FB4();
  v41 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v43 = v42;
  (*(v37 + 8))(v39, v36);
  v44 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_shelfUniqueId];
  *v44 = v41;
  v44[1] = v43;
  v45 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_title];
  *v45 = a1;
  v45[1] = a2;
  v46 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subtitle];
  v47 = v70;
  *v46 = a3;
  v46[1] = v47;
  v48 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_ctaTitle];
  v49 = v74;
  *v48 = v72;
  v48[1] = v49;
  v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundArtworkIsFromEditorial] = v76;
  v50 = v78;
  sub_4E45C(v78, &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundArtwork]);
  sub_4E45C(a9, &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_logoArtwork]);
  *&v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_showGridArtworks] = v71;
  v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_showGridArtworksHasReferralShow] = v73;
  v51 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundColor];
  *v51 = v75;
  v51[8] = v77;
  v52 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_productId];
  v53 = v80;
  *v52 = v79;
  v52[1] = v53;
  v54 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_appBundleId];
  v55 = v82;
  *v54 = v81;
  v54[1] = v55;
  v56 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_appAdamID];
  *v56 = v83;
  v56[8] = v84 & 1;
  v57 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_customProductPageID];
  v58 = v86;
  *v57 = v85;
  v57[1] = v58;
  v59 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalAppOfferDeeplink];
  v60 = v88;
  *v59 = v87;
  v59[1] = v60;
  v61 = &v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_caption];
  v62 = v91;
  *v61 = v90;
  v61[1] = v62;
  v63 = v93;
  *&v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_seeAllAction] = v92;
  *&v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subscriptionPlans] = v63;
  v64 = OBJC_IVAR____TtC8ShelfKit17UpsellInformation_pageMetrics;
  v65 = sub_3EC164();
  v66 = *(v65 - 8);
  v67 = v94;
  (*(v66 + 16))(&v40[v64], v94, v65);
  v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_isForConfirmationSheet] = v95;
  *&v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalUrlAction] = v96;
  v40[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_isForFirstPartyApp] = v97;
  v98.receiver = v40;
  v98.super_class = v89;
  v68 = objc_msgSendSuper2(&v98, "init");
  (*(v66 + 8))(v67, v65);
  sub_FCF8(a9, &qword_4F1D50);
  sub_FCF8(v50, &qword_4F1D50);
  return v68;
}

id UpsellInformation.init(title:subtitle:ctaTitle:backgroundArtworkIsFromEditorial:backgroundArtwork:logoArtwork:showGridArtworks:showGridArtworksHasReferralShow:backgroundColor:productId:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:caption:seeAllAction:subscriptionPlans:pageMetrics:isForConfirmationSheet:externalUrlAction:isForFirstPartyApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, uint64_t a30, unsigned __int8 a31)
{
  v32 = v31;
  v77 = a8;
  v75 = a7;
  v73 = a6;
  v71 = a5;
  v69 = a4;
  v96 = a31;
  v95 = a30;
  v94 = a29;
  v93 = a28;
  v90 = a26;
  v91 = a27;
  v88 = a24;
  v89 = a25;
  v86 = a22;
  v87 = a23;
  v84 = a20;
  v85 = a21;
  v83 = a19;
  v81 = a17;
  v82 = a18;
  v79 = a15;
  v80 = a16;
  v78 = a14;
  v76 = a13;
  v74 = a12;
  v72 = a11;
  v70 = a10;
  ObjectType = swift_getObjectType();
  v36 = sub_3E5FC4();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E5FB4();
  v40 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v42 = v41;
  (*(v37 + 8))(v39, v36);
  v43 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_shelfUniqueId];
  *v43 = v40;
  v43[1] = v42;
  v44 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_title];
  *v44 = a1;
  v44[1] = a2;
  v45 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subtitle];
  v46 = v69;
  *v45 = a3;
  v45[1] = v46;
  v47 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_ctaTitle];
  v48 = v73;
  *v47 = v71;
  v47[1] = v48;
  v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundArtworkIsFromEditorial] = v75;
  v49 = v77;
  sub_4E45C(v77, &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundArtwork]);
  sub_4E45C(a9, &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_logoArtwork]);
  *&v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_showGridArtworks] = v70;
  v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_showGridArtworksHasReferralShow] = v72;
  v50 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_backgroundColor];
  *v50 = v74;
  v50[8] = v76;
  v51 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_productId];
  v52 = v79;
  *v51 = v78;
  v51[1] = v52;
  v53 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_appBundleId];
  v54 = v81;
  *v53 = v80;
  v53[1] = v54;
  v55 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_appAdamID];
  *v55 = v82;
  v55[8] = v83 & 1;
  v56 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_customProductPageID];
  v57 = v85;
  *v56 = v84;
  v56[1] = v57;
  v58 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalAppOfferDeeplink];
  v59 = v87;
  *v58 = v86;
  v58[1] = v59;
  v60 = &v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_caption];
  v61 = v89;
  *v60 = v88;
  v60[1] = v61;
  v62 = v91;
  *&v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_seeAllAction] = v90;
  *&v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_subscriptionPlans] = v62;
  v63 = OBJC_IVAR____TtC8ShelfKit17UpsellInformation_pageMetrics;
  v64 = sub_3EC164();
  v65 = *(v64 - 8);
  v66 = v93;
  (*(v65 + 16))(&v32[v63], v93, v64);
  v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_isForConfirmationSheet] = v94;
  *&v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalUrlAction] = v95;
  v32[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_isForFirstPartyApp] = v96;
  v97.receiver = v32;
  v97.super_class = ObjectType;
  v67 = objc_msgSendSuper2(&v97, "init");
  (*(v65 + 8))(v66, v64);
  sub_FCF8(a9, &qword_4F1D50);
  sub_FCF8(v49, &qword_4F1D50);
  return v67;
}

uint64_t *sub_3E1C98@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  result = UpsellInformation.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_3E1CC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8ShelfKit17UpsellInformation_pageMetrics;
  v5 = sub_3EC164();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for UpsellInformation()
{
  result = qword_5067E0;
  if (!qword_5067E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3E1E04()
{
  sub_4EC44();
  if (v0 <= 0x3F)
  {
    sub_3EC164();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of UpsellInformation.__allocating_init(title:subtitle:ctaTitle:backgroundArtworkIsFromEditorial:backgroundArtwork:logoArtwork:showGridArtworks:showGridArtworksHasReferralShow:backgroundColor:productId:appBundleId:appAdamID:customProductPageID:externalAppOfferDeeplink:caption:seeAllAction:subscriptionPlans:pageMetrics:isForConfirmationSheet:externalUrlAction:isForFirstPartyApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 256);

  return v12(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

unint64_t sub_3E2034()
{
  result = qword_5067F8;
  if (!qword_5067F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5067F8);
  }

  return result;
}

unint64_t sub_3E2088()
{
  result = qword_506868;
  if (!qword_506868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_506868);
  }

  return result;
}

unint64_t sub_3E20DC()
{
  result = qword_506878;
  if (!qword_506878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_506878);
  }

  return result;
}

unint64_t sub_3E2130()
{
  result = qword_506888;
  if (!qword_506888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_506888);
  }

  return result;
}

unint64_t sub_3E2184()
{
  result = qword_506898;
  if (!qword_506898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_506898);
  }

  return result;
}

unint64_t sub_3E21D8()
{
  result = qword_5068A0;
  if (!qword_5068A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5068A0);
  }

  return result;
}

unint64_t sub_3E222C()
{
  result = qword_5068A8;
  if (!qword_5068A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5068A8);
  }

  return result;
}

unint64_t sub_3E2280()
{
  result = qword_5068B8;
  if (!qword_5068B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5068B8);
  }

  return result;
}

unint64_t sub_3E22D4()
{
  result = qword_5068C0;
  if (!qword_5068C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5068C0);
  }

  return result;
}

unint64_t sub_3E2328()
{
  result = qword_5068D8;
  if (!qword_5068D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5068D8);
  }

  return result;
}

unint64_t sub_3E237C()
{
  result = qword_5068E0;
  if (!qword_5068E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5068E0);
  }

  return result;
}

uint64_t sub_3E23D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_3E2418()
{
  result = qword_5068F0;
  if (!qword_5068F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5068F0);
  }

  return result;
}

unint64_t sub_3E246C()
{
  result = qword_5068F8;
  if (!qword_5068F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5068F8);
  }

  return result;
}

unint64_t sub_3E24C0()
{
  result = qword_506900;
  if (!qword_506900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_506900);
  }

  return result;
}

uint64_t UpsellSubscriptionPlan.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_title);

  return v1;
}

uint64_t UpsellSubscriptionPlan.ctaTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_ctaTitle);

  return v1;
}

uint64_t UpsellSubscriptionPlan.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_subtitle);

  return v1;
}

uint64_t UpsellSubscriptionPlan.callout.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_callout);

  return v1;
}

id UpsellSubscriptionPlan.__allocating_init(offerAction:isRecommended:title:ctaTitle:subtitle:callout:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = objc_allocWithZone(v10);
  *&v18[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_offerAction] = a1;
  v18[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_isRecommended] = a2;
  v19 = &v18[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_title];
  *v19 = a3;
  v19[1] = a4;
  v20 = &v18[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_ctaTitle];
  *v20 = a5;
  v20[1] = a6;
  v21 = &v18[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_subtitle];
  *v21 = a7;
  v21[1] = a8;
  v22 = &v18[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_callout];
  *v22 = a9;
  v22[1] = a10;
  v25.receiver = v18;
  v25.super_class = v10;
  return objc_msgSendSuper2(&v25, "init");
}

id UpsellSubscriptionPlan.init(offerAction:isRecommended:title:ctaTitle:subtitle:callout:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *&v10[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_offerAction] = a1;
  v10[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_isRecommended] = a2;
  v11 = &v10[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_title];
  *v11 = a3;
  v11[1] = a4;
  v12 = &v10[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_ctaTitle];
  *v12 = a5;
  v12[1] = a6;
  v13 = &v10[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_subtitle];
  *v13 = a7;
  v13[1] = a8;
  v14 = &v10[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_callout];
  *v14 = a9;
  v14[1] = a10;
  v16.receiver = v10;
  v16.super_class = type metadata accessor for UpsellSubscriptionPlan();
  return objc_msgSendSuper2(&v16, "init");
}

id UpsellSubscriptionPlan.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v81 = a2;
  v3 = sub_3EBF94();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_3EBDF4();
  v79 = *(v76 - 8);
  v7 = __chkstk_darwin(v76);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v66 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v66 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v66 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v66 - v19;
  __chkstk_darwin(v18);
  v22 = &v66 - v21;
  v77 = a1;
  sub_3EBE04();
  v78 = v4;
  v23 = *(v4 + 16);
  v73 = v3;
  v23(v6, v81, v3);
  type metadata accessor for ChannelOfferAction();
  swift_allocObject();
  v24 = v74;
  v25 = ChannelOfferAction.init(deserializing:using:)(v22, v6);
  if (v24)
  {

    v26 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    *v27 = 0x746341726566666FLL;
    v27[1] = 0xEB000000006E6F69;
    v27[2] = v75;
    (*(*(v26 - 8) + 104))(v27, enum case for JSONError.missingProperty(_:), v26);
    swift_willThrow();
    v28 = v76;
    v29 = v77;
LABEL_9:
    v63 = v79;
    (*(v78 + 8))(v81, v73);
    v64 = *(v63 + 8);
    v58 = (v63 + 8);
    v64(v29, v28);
    return v58;
  }

  v69 = v14;
  v70 = v11;
  v30 = v75;
  v74 = v25;
  v31 = v77;
  sub_3EBE04();
  v68 = sub_3EBDC4();
  v33 = v32;
  v34 = v31;
  v35 = *(v79 + 8);
  v28 = v76;
  v35(v20, v76);
  v71 = v33;
  if (!v33)
  {
    v29 = v34;
    v59 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v61 = v60;
    *v60 = 0x656C746974;
    v62 = 0xE500000000000000;
LABEL_8:
    v60[1] = v62;
    v60[2] = v30;
    (*(*(v59 - 8) + 104))(v61, enum case for JSONError.missingProperty(_:), v59);
    swift_willThrow();

    goto LABEL_9;
  }

  v36 = v17;
  v29 = v34;
  sub_3EBE04();
  v37 = sub_3EBDC4();
  v39 = v38;
  v35(v36, v28);
  if (!v39)
  {

    v59 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v61 = v60;
    *v60 = 0x656C746954617463;
    v62 = 0xE800000000000000;
    goto LABEL_8;
  }

  v40 = v69;
  v79 = v37;
  sub_3EBE04();
  LODWORD(v75) = sub_3EBD24();
  v35(v40, v28);
  v41 = v35;
  v42 = v70;
  sub_3EBE04();
  v43 = v28;
  v69 = sub_3EBDC4();
  v67 = v44;
  v41(v42, v28);
  v45 = v41;
  v46 = v72;
  sub_3EBE04();
  v47 = sub_3EBDC4();
  v49 = v48;
  v45(v46, v43);
  v50 = type metadata accessor for UpsellSubscriptionPlan();
  v51 = objc_allocWithZone(v50);
  *&v51[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_offerAction] = v74;
  v51[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_isRecommended] = v75 & 1;
  v52 = &v51[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_title];
  v53 = v71;
  *v52 = v68;
  v52[1] = v53;
  v54 = &v51[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_ctaTitle];
  *v54 = v79;
  v54[1] = v39;
  v55 = &v51[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_subtitle];
  v56 = v67;
  *v55 = v69;
  v55[1] = v56;
  v57 = &v51[OBJC_IVAR____TtC8ShelfKit22UpsellSubscriptionPlan_callout];
  *v57 = v47;
  v57[1] = v49;
  v80.receiver = v51;
  v80.super_class = v50;
  v58 = objc_msgSendSuper2(&v80, "init");
  (*(v78 + 8))(v81, v73);
  v45(v29, v43);
  return v58;
}

id UpsellSubscriptionPlan.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellSubscriptionPlan();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_3E2FAC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = UpsellSubscriptionPlan.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_3E2FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D0);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_3EBF94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBDF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_3EBDA4();
  if (result)
  {
    *v26 = 0;
  }

  else
  {
    v19 = v7;
    type metadata accessor for UpsellSubscriptionPlan();
    (*(v13 + 16))(v15, a1, v12);
    (*(v9 + 16))(v11, v22, v8);
    result = UpsellSubscriptionPlan.__allocating_init(deserializing:using:)(v15, v11);
    if (v3)
    {
      v17 = v19;
      sub_3EBF14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D8);
      sub_3EBFB4();
      (*(v20 + 8))(v17, v21);
      sub_355F80(v25, v23);
      v18 = v26;
      if (v24)
      {
        __swift_project_boxed_opaque_existential_1(v23, v24);
        sub_3EC854();

        sub_355FF0(v25);
        result = __swift_destroy_boxed_opaque_existential_1Tm(v23);
      }

      else
      {
        sub_355FF0(v25);

        result = sub_355FF0(v23);
      }

      *v18 = 0;
    }

    else
    {
      *v26 = result;
    }
  }

  return result;
}

id WebAuthenticationSession.__allocating_init(authorizationURL:window:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession] = 0;
  v6 = &v5[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v5[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_callbackURLScheme];
  *v7 = 0x7374736163646F70;
  *(v7 + 1) = 0xE800000000000000;
  v8 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  v9 = sub_3E5DC4();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v5[v8], a1, v9);
  *&v5[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_window] = a2;
  v13.receiver = v5;
  v13.super_class = v2;
  v11 = objc_msgSendSuper2(&v13, "init");
  (*(v10 + 8))(a1, v9);
  return v11;
}

uint64_t sub_3E34C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  swift_beginAccess();
  v5 = sub_3E5DC4();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_3E3550(uint64_t a1, uint64_t *a2)
{
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_3E3668@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  swift_beginAccess();
  v4 = sub_3E5DC4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_3E36F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  swift_beginAccess();
  v4 = sub_3E5DC4();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id WebAuthenticationSession.init(authorizationURL:window:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession] = 0;
  v5 = &v2[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_callbackURLScheme];
  *v6 = 0x7374736163646F70;
  *(v6 + 1) = 0xE800000000000000;
  v7 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  v8 = sub_3E5DC4();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v2[v7], a1, v8);
  *&v2[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_window] = a2;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for WebAuthenticationSession();
  v10 = objc_msgSendSuper2(&v12, "init");
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t type metadata accessor for WebAuthenticationSession()
{
  result = qword_506A08;
  if (!qword_506A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_3E394C(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v5 - 8);
  v50 = &v48 - v6;
  v7 = sub_3E9A04();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v48 - v10;
  v11 = sub_3E5DC4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v2[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion];
  v16 = *&v2[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion];
  *v15 = a1;
  *(v15 + 1) = a2;

  sub_16AC0(v16);
  v17 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  swift_beginAccess();
  (*(v12 + 16))(v14, &v2[v17], v11);
  v18 = swift_allocObject();
  v51 = a1;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v2;
  v19 = objc_allocWithZone(ASWebAuthenticationSession);
  v48 = a2;

  v20 = v2;
  sub_3E5D14(v21);
  v23 = v22;
  v24 = sub_3ED204();
  aBlock[4] = sub_3E4458;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3E4AA8;
  aBlock[3] = &block_descriptor_35;
  v25 = _Block_copy(aBlock);
  v26 = v19;
  v27 = v12;
  v28 = [v26 initWithURL:v23 callbackURLScheme:v24 completionHandler:v25];
  _Block_release(v25);

  (*(v12 + 8))(v14, v11);

  v29 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession;
  v30 = *&v20[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession];
  *&v20[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession] = v28;
  v31 = v28;

  if (v31)
  {
    [v31 setPresentationContextProvider:v20];
  }

  v32 = *&v20[v29];
  if (!v32)
  {
    goto LABEL_7;
  }

  [v32 setPrefersEphemeralWebBrowserSession:1];
  v33 = *&v20[v29];
  if (!v33)
  {
    goto LABEL_7;
  }

  v34 = v33;
  if ([v34 canStart])
  {

LABEL_7:
    v35 = v52;
    sub_3E99E4();
    v36 = sub_3E99F4();
    v37 = sub_3ED9F4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "Starting the ASWebAuthenticationSession", v38, 2u);
    }

    (*(v53 + 8))(v35, v54);
    return [*&v20[v29] start];
  }

  v40 = v49;
  sub_3E99E4();
  v41 = sub_3E99F4();
  v42 = sub_3ED9D4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "Cannot start the ASWebAuthenticationSession.", v43, 2u);
  }

  (*(v53 + 8))(v40, v54);
  v44 = v50;
  (*(v27 + 56))(v50, 1, 1, v11);
  v45 = sub_3E8604();
  sub_3E5628(&qword_502BF0, &type metadata accessor for OAuthSessionError);
  v46 = swift_allocError();
  (*(*(v45 - 8) + 104))(v47, enum case for OAuthSessionError.cannotStart(_:), v45);
  v51(v44, v46);

  return sub_27EDC(v44);
}

uint64_t sub_3E3F24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void *a5)
{
  v34 = a4;
  v35 = a3;
  v33 = a1;
  v7 = sub_3EBBC4();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBC14();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3E9A04();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();
  v17 = sub_3E99F4();
  v18 = sub_3ED9F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a2;
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "Callback in ASWebAuthenticationSession called.", v19, 2u);
    a2 = v29;
  }

  (*(v14 + 8))(v16, v13);
  if (a2)
  {
    type metadata accessor for Code(0);
    aBlock[0] = 1;
    swift_errorRetain();
    sub_3E5628(&qword_4E9250, type metadata accessor for Code);
    if (sub_3E5AB4())
    {
      v20 = sub_3E8604();
      sub_3E5628(&qword_502BF0, &type metadata accessor for OAuthSessionError);
      v21 = swift_allocError();
      (*(*(v20 - 8) + 104))(v22, enum case for OAuthSessionError.userCancelledLogin(_:), v20);
      v35(v33, v21);
    }
  }

  v35(v33, a2);
  sub_801B4();
  v24 = sub_3EDBC4();
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  aBlock[4] = sub_3E560C;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_14_0;
  v26 = _Block_copy(aBlock);
  v27 = a5;

  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_3E5628(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_DA8D4();
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v26);

  (*(v32 + 8))(v9, v7);
  return (*(v30 + 8))(v12, v31);
}

uint64_t sub_3E4464(uint64_t a1)
{
  v3 = sub_3E9A04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  v13 = (v1 + OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion);
  v14 = *(v1 + OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion);
  if (v14)
  {
    v15 = *(v1 + OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession);
    if (v15)
    {
      sub_7A6C8(v14);
      v16 = v15;
      [v16 cancel];
      v17 = sub_3E5DC4();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v12, a1, v17);
      (*(v18 + 56))(v12, 0, 1, v17);
      v14(v12, 0);

      sub_16AC0(v14);
      sub_27EDC(v12);
      v19 = *v13;
      *v13 = 0;
      v13[1] = 0;
      return sub_16AC0(v19);
    }

    else
    {

      sub_3E99E4();
      v24 = sub_3E99F4();
      v25 = sub_3ED9D4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v24, v25, "Resume called but there is no active authentication session.", v26, 2u);
      }

      sub_16AC0(v14);

      return (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    sub_3E99E4();
    v21 = sub_3E99F4();
    v22 = sub_3ED9D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Resume called but there is no completion block to resume with.", v23, 2u);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_3E47AC()
{
  v1 = sub_3E9A04();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v0 + OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession) cancel];
  sub_3E99E4();
  v6 = sub_3E99F4();
  v7 = sub_3ED9F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Canceled ASWebAuthenticationSession.", v8, 2u);
  }

  return (*(v2 + 8))(v5, v1);
}

id WebAuthenticationSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebAuthenticationSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3E4AA8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_3E5D44();
    v10 = sub_3E5DC4();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_3E5DC4();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_27EDC(v8);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3E4C04(char *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v50 = &v49 - v7;
  v8 = sub_3E9A04();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v53 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v49 - v11;
  v12 = sub_3E5DC4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v51 = a2;
  v52 = a3;
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = &a1[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion];
  v18 = *&a1[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion];
  *v17 = sub_3E56A8;
  v17[1] = v16;

  sub_16AC0(v18);
  v19 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authorizationURL;
  swift_beginAccess();
  (*(v13 + 16))(v15, &a1[v19], v12);
  v20 = swift_allocObject();
  v20[2] = sub_3E56A8;
  v20[3] = v16;
  v20[4] = a1;
  v21 = objc_allocWithZone(ASWebAuthenticationSession);

  v22 = a1;
  sub_3E5D14(v23);
  v25 = v24;
  v26 = sub_3ED204();
  aBlock[4] = sub_3E56BC;
  aBlock[5] = v20;
  v27 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3E4AA8;
  aBlock[3] = &block_descriptor_24_1;
  v28 = _Block_copy(aBlock);
  v29 = [v21 initWithURL:v25 callbackURLScheme:v26 completionHandler:v28];
  _Block_release(v28);

  (*(v13 + 8))(v15, v12);

  v30 = OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession;
  v31 = *&v22[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession];
  *&v22[OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_authenticationSession] = v29;
  v32 = v29;

  if (v32)
  {
    [v32 setPresentationContextProvider:v22];
  }

  v33 = *&v22[v30];
  if (!v33)
  {
    goto LABEL_7;
  }

  [v33 setPrefersEphemeralWebBrowserSession:1];
  v34 = *&v22[v30];
  if (!v34)
  {
    goto LABEL_7;
  }

  v35 = v34;
  if ([v35 canStart])
  {

LABEL_7:
    v36 = v53;
    sub_3E99E4();
    v37 = sub_3E99F4();
    v38 = sub_3ED9F4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "Starting the ASWebAuthenticationSession", v39, 2u);
    }

    (*(v54 + 8))(v36, v55);
    [*&v22[v30] start];
  }

  v41 = v49;
  sub_3E99E4();
  v42 = sub_3E99F4();
  v43 = sub_3ED9D4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_0, v42, v43, "Cannot start the ASWebAuthenticationSession.", v44, 2u);
  }

  (*(v54 + 8))(v41, v55);
  v45 = v50;
  (*(v27 + 56))(v50, 1, 1, v12);
  v46 = sub_3E8604();
  sub_3E5628(&qword_502BF0, &type metadata accessor for OAuthSessionError);
  v47 = swift_allocError();
  (*(*(v46 - 8) + 104))(v48, enum case for OAuthSessionError.cannotStart(_:), v46);
  sub_3A15FC(v45, v47, v51);

  sub_27EDC(v45);
}

id sub_3E5214()
{
  v1 = v0;
  v2 = sub_3E9A04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();
  v6 = sub_3E99F4();
  v7 = sub_3ED9F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Displaying ASWebAuthenticationSession.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_window);

  return v9;
}

uint64_t sub_3E5380()
{
  result = sub_3E5DC4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_3E55D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3E560C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC8ShelfKit24WebAuthenticationSession_startCompletion);
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  return sub_16AC0(v2);
}

uint64_t sub_3E5628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3E5670()
{

  return _swift_deallocObject(v0, 32, 7);
}