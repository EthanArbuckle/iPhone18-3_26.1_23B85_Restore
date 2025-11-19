uint64_t UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_AB96D0();
  (*(*(a4 - 8) + 8))(a3, a4);
  return a1;
}

uint64_t UserDefaultsKeyValueTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = sub_8CBCA8(a5, a6, a3, a4, sub_710F8, v12);

  return v13;
}

uint64_t sub_8CBCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v10 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  v11 = v10 - 8;
  v35 = *(v10 - 8);
  v12 = *(v35 + 64);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v38 = a1;
  v39 = a2;

  v20 = sub_AB9580();
  v22 = v21;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v23 = &v19[*(v11 + 28)];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = &v19[*(v11 + 32)];
  *v24 = v20;
  v24[1] = v22;
  v25 = qword_E1FE78;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_E212D0;
  v27 = *(qword_E212D0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v27 + 16));
  v28 = v40;
  sub_90CD98(v26, v19, v36, v37);
  os_unfair_lock_unlock(*(v27 + 16));
  if (v28)
  {
    return sub_8CC104(v19);
  }

  sub_8CC160(v19, v16);
  sub_8CC1C4(v19, v13);
  v30 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v31 = swift_allocObject();
  sub_8CC1C4(v13, v31 + v30);
  type metadata accessor for NSUserDefaults.KeyValueRegistration(0);
  v32 = swift_allocObject();
  sub_8CC1C4(v16, v32 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier);
  result = v32;
  v33 = (v32 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);
  *v33 = sub_8CC324;
  v33[1] = v31;
  return result;
}

uint64_t sub_8CBF38(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = sub_8CBCA8(v8, v7, v5, v6, sub_710F8, v9);

  return v10;
}

uint64_t sub_8CBFEC()
{

  return swift_deallocObject();
}

uint64_t sub_8CC0A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_8CC104(uint64_t a1)
{
  v2 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8CC160(uint64_t a1, uint64_t a2)
{
  v4 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8CC1C4(uint64_t a1, uint64_t a2)
{
  v4 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8CC228()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_AB3470();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

void sub_8CC324()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_90CAC8(v2);
}

uint64_t NotificationObserver.__allocating_init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v11 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v11 + 32) = a3;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  if (a4)
  {
    v12 = &selRef_defaultCenter;
  }

  else
  {
    v12 = &selRef_default;
  }

  v13 = objc_opt_self();
  v14 = a1;

  v15 = [v13 *v12];
  *(v11 + 40) = v15;
  v16 = *(v11 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = v15;

  v19 = v16;
  [v18 addObserver:v11 selector:"handleNotification:" name:v19 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v11;
}

uint64_t NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v6 + 32) = a3;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  if (a4)
  {
    v12 = &selRef_defaultCenter;
  }

  else
  {
    v12 = &selRef_default;
  }

  v13 = objc_opt_self();
  v14 = a1;

  v15 = [v13 *v12];
  *(v6 + 40) = v15;
  v16 = *(v6 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = v15;

  v19 = v16;
  [v18 addObserver:v6 selector:"handleNotification:" name:v19 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

uint64_t NotificationObserver.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v1;
  v5 = v2;
  [v4 removeObserver:v0 name:v5 object:Strong];

  swift_unknownObjectRelease();
  sub_176DC(v0 + 24);

  return v0;
}

uint64_t NotificationObserver.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v1;
  v5 = v2;
  [v4 removeObserver:v0 name:v5 object:Strong];

  swift_unknownObjectRelease();
  sub_176DC(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_8CC7BC(uint64_t a1)
{
  v3 = sub_AB7C10();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_AB7C50();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB2BD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v15 = &v25 - v13;
  if (*(v1 + 32) != 1)
  {
    return (*(v1 + 48))(a1, v14);
  }

  v26 = v4;
  v27 = v3;
  v16 = *(v9 + 16);
  v16(&v25 - v13, a1, v8, v14);
  (v16)(v11, v15, v8);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  (*(v9 + 32))(v18 + v17, v15, v8);
  v19 = objc_opt_self();

  if ([v19 isMainThread])
  {
    (*(v1 + 48))(v11);
  }

  else
  {
    sub_13C80(0, &qword_E21210);
    v25 = sub_ABA150();
    aBlock[4] = sub_8CD008;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_234;
    v21 = _Block_copy(aBlock);

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_8CB3AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E21220);
    sub_8CB404();
    v22 = v29;
    v23 = v27;
    sub_ABABB0();
    v24 = v25;
    sub_ABA160();
    _Block_release(v21);

    (*(v26 + 8))(v22, v23);
    (*(v28 + 8))(v7, v30);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t NotificationObserver.debugDescription.getter()
{
  v1 = v0;
  v2 = 7104878;
  sub_ABAD90(65);
  v17._object = 0x8000000000B78DF0;
  v17._countAndFlagsBits = 0xD00000000000002ALL;
  sub_AB94A0(v17);
  v18._countAndFlagsBits = sub_AB92A0();
  sub_AB94A0(v18);

  v19._countAndFlagsBits = 0x3D7463656A626F20;
  v19._object = 0xE800000000000000;
  sub_AB94A0(v19);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong respondsToSelector:"description"])
    {
      v5 = [v4 description];
      swift_unknownObjectRelease();
      v2 = sub_AB92A0();
      v7 = v6;

      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v7 = 0xE300000000000000;
LABEL_6:
  v20._countAndFlagsBits = v2;
  v20._object = v7;
  sub_AB94A0(v20);

  v21._countAndFlagsBits = 0x3D7265746E656320;
  v21._object = 0xE800000000000000;
  sub_AB94A0(v21);
  sub_13C80(0, &unk_E211F0);
  v8 = *(v1 + 40);
  v9 = [objc_opt_self() defaultCenter];
  v10 = sub_ABA790();

  if (v10)
  {
    v11 = 0xE700000000000000;
    v12._countAndFlagsBits = 0x746C7561666564;
  }

  else
  {
    v13 = [v8 description];
    v14 = sub_AB92A0();
    v11 = v15;

    v12._countAndFlagsBits = v14;
  }

  v12._object = v11;
  sub_AB94A0(v12);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  sub_AB94A0(v22);
  return 0;
}

uint64_t sub_8CCF44()
{
  v1 = sub_AB2BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t block_copy_helper_234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t BrightnessManager.__allocating_init(windowScene:)(void *a1)
{
  v2 = swift_allocObject();
  BrightnessManager.init(windowScene:)(a1);
  return v2;
}

void *BrightnessManager.init(windowScene:)(void *a1)
{
  v1[2] = [objc_allocWithZone(BrightnessSystemClient) init];
  v3 = sub_8C8CC4(&off_D43E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1FEA0);
  swift_arrayDestroy();
  v1[3] = v3;
  v4 = sub_8C8CC4(&off_D43ED0);
  swift_arrayDestroy();
  v1[4] = v4;
  v5 = sub_8C8DC8(&off_D43F20);
  sub_8C8EC4(&unk_D43F40);
  v1[5] = v5;
  v6 = sub_8C8DC8(&off_D43F58);
  sub_8C8EC4(&unk_D43F78);
  v1[6] = v6;
  v1[7] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20320);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_AF7C50;
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 16) = UISceneWillDeactivateNotification;
  swift_unknownObjectWeakAssign();
  *(v8 + 32) = 1;
  *(v8 + 48) = sub_8CD804;
  *(v8 + 56) = v7;
  v9 = objc_opt_self();
  v10 = a1;

  swift_retain_n();
  v11 = UISceneWillDeactivateNotification;
  v12 = [v9 defaultCenter];
  *(v8 + 40) = v12;
  v13 = *(v8 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = v12;

  v16 = v13;
  [v15 addObserver:v8 selector:"handleNotification:" name:v16 object:Strong];

  swift_unknownObjectRelease();
  *(v27 + 32) = v8;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v10;

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v19 + 16) = UISceneDidActivateNotification;
  swift_unknownObjectWeakAssign();
  *(v19 + 32) = 1;
  *(v19 + 48) = sub_8CD834;
  *(v19 + 56) = v17;
  swift_retain_n();
  v20 = UISceneDidActivateNotification;
  v21 = [v9 defaultCenter];
  *(v19 + 40) = v21;
  v22 = *(v19 + 16);
  v23 = swift_unknownObjectWeakLoadStrong();
  v24 = v21;

  v25 = v22;
  [v24 addObserver:v19 selector:"handleNotification:" name:v25 object:v23];

  swift_unknownObjectRelease();
  *(v27 + 40) = v19;

  v1[7] = v27;

  return v1;
}

Swift::Void __swiftcall BrightnessManager.resetBrightnessToSystemDefault()()
{
  v1 = *(v0 + 16);
  isa = sub_AB8FD0().super.isa;
  v3 = sub_AB9260();
  [v1 setProperty:isa forKey:v3];

  v4 = sub_AB8FD0().super.isa;
  v5 = sub_AB9260();
  [v1 setProperty:v4 forKey:v5];
}

uint64_t sub_8CD5B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

Swift::Void __swiftcall BrightnessManager.increaseBrightnessIfNeeded()()
{
  v1 = *(v0 + 16);
  isa = sub_AB8FD0().super.isa;
  v3 = sub_AB9260();
  [v1 setProperty:isa forKey:v3];

  v4 = sub_AB8FD0().super.isa;
  v5 = sub_AB9260();
  [v1 setProperty:v4 forKey:v5];
}

uint64_t BrightnessManager.deinit()
{

  return v0;
}

uint64_t BrightnessManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_8CD7CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t Collection<>.compare<A>(with:comparator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v157 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v124 = *(AssociatedTypeWitness - 8);
  v15 = __chkstk_darwin(AssociatedTypeWitness);
  v146 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v164 = &v121 - v17;
  v134 = swift_getAssociatedTypeWitness();
  v123 = *(v134 - 8);
  v18 = __chkstk_darwin(v134);
  v133 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v155 = &v121 - v20;
  v21 = *(a7 + 8);
  v128 = sub_ABB050();
  __chkstk_darwin(v128);
  v127 = &v121 - v22;
  v129 = v21;
  v142 = sub_ABB040();
  v125 = *(v142 - 1);
  __chkstk_darwin(v142);
  v138 = &v121 - v23;
  v24 = *(a6 + 8);
  v25 = swift_getAssociatedTypeWitness();
  v132 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v145 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v160 = &v121 - v28;
  v151 = type metadata accessor for CollectionComparisonOperation();
  __chkstk_darwin(v151);
  v140 = (&v121 - v29);
  v161 = v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v158 = sub_ABA9C0();
  v136 = *(v158 - 1);
  v30 = __chkstk_darwin(v158);
  v137 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v152 = &v121 - v33;
  __chkstk_darwin(v32);
  v35 = (&v121 - v34);
  v131 = sub_ABB050();
  __chkstk_darwin(v131);
  v130 = &v121 - v36;
  v141 = v24;
  v143 = sub_ABB040();
  v126 = *(v143 - 1);
  __chkstk_darwin(v143);
  v149 = &v121 - v37;
  v38 = swift_allocObject();
  v38[2] = a4;
  v38[3] = a5;
  v38[4] = a6;
  v38[5] = a7;
  v38[6] = a8;
  if (a2)
  {
    v38[7] = a2;
    v38[8] = a3;
    v39 = sub_8D0400;
  }

  else
  {
    v39 = sub_8CEDA4;
  }

  v144 = v39;
  sub_307CC(a2);
  v147 = v38;

  v153 = a4;
  v139 = a6;
  v40 = sub_AB9C70();
  v156 = a5;
  v41 = sub_AB9C70();
  result = sub_AB97C0();
  v168 = result;
  v135 = v41;
  v43 = __OFADD__(v41, 1);
  v44 = v41 + 1;
  if (v43)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v45 = sub_AB9870();
  v46 = sub_8D02A0(&v168, v44, v45);

  v168 = v46;
  if (__OFADD__(v40, 1))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v148 = v40;
  v154 = a7;
  v122 = a8;
  v163 = v45;
  v162 = sub_AB9870();
  v47 = sub_8D02A0(&v168, v40 + 1, v162);

  v170 = v47;
  v169 = sub_AB97C0();
  sub_AB95D0();
  sub_ABB020();
  v48 = v136 + 4;
  v49 = TupleTypeMetadata2;
  v141 = (v132 + 32);
  while (1)
  {
    v50 = v152;
    sub_ABB030();
    v51 = *v48;
    (*v48)(v35, v50, v158);
    v52 = *(*(v49 - 8) + 48);
    if (v52(v35, 1, v49) == 1)
    {
      break;
    }

    v53 = *v35;
    v54 = *v141;
    v55 = v35 + *(v49 + 48);
    v56 = v160;
    v57 = v161;
    (*v141)(v160, v55, v161);
    v58 = v140;
    *v140 = 0;
    *(v58 + 8) = 1;
    v58[2] = v53;
    (v54)(v58 + *(v151 + 40), v56, v57);
    result = sub_AB9820();
    v59 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v60 = v169;
    sub_AB9870();

    sub_AB97B0();
    v61 = v170;
    sub_8D024C(v59, v170);
    v62 = v61 + 8 * v59;
    sub_AB97B0();
    v63 = *(v62 + 32);
    result = _swift_isClassOrObjCExistentialType();
    v64 = v63 & 0xFFFFFFFFFFFFFF8;
    if ((result & 1) == 0)
    {
      v64 = v63;
    }

    if (!*(v64 + 16))
    {
      goto LABEL_51;
    }

    *(*(v62 + 32) + 32) = v60;

    v49 = TupleTypeMetadata2;
  }

  (*(v126 + 8))(v149, v143);

  v169 = sub_AB97C0();
  sub_AB95D0();
  sub_ABB020();
  v65 = v152;
  v66 = TupleTypeMetadata2;
  sub_ABB030();
  v67 = v137;
  v51(v137, v65, v158);
  if (v52(v67, 1, v66) != 1)
  {
    v149 = *v141;
    v136 = v48;
    do
    {
      v68 = *v67;
      v69 = v67 + *(v66 + 48);
      v70 = v160;
      v71 = v161;
      v72 = v149;
      (v149)(v160, v69, v161);
      v73 = v140;
      *v140 = 1;
      *(v73 + 8) = 1;
      v73[2] = v68;
      (v72)(v73 + *(v151 + 40), v70, v71);
      result = sub_AB9820();
      v74 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_52;
      }

      v75 = v169;
      sub_AB9870();

      sub_AB97B0();
      v76 = v170;
      result = _swift_isClassOrObjCExistentialType();
      v77 = v76 & 0xFFFFFFFFFFFFFF8;
      if ((result & 1) == 0)
      {
        v77 = v76;
      }

      if (!*(v77 + 16))
      {
        goto LABEL_53;
      }

      sub_AB97B0();
      sub_8D024C(v74, *(v76 + 32));
      *(*(v76 + 32) + 8 * v74 + 32) = v75;

      v78 = v152;
      sub_ABB030();
      v67 = v137;
      v51(v137, v78, v158);
      v66 = TupleTypeMetadata2;
    }

    while (v52(v67, 1, TupleTypeMetadata2) != 1);
  }

  (*(v125 + 8))(v138, v142);

  v79 = v148;
  if (!v148 || !v135)
  {
LABEL_48:

    sub_AB9880();
    sub_AB9880();

    return v167;
  }

  result = sub_AB9C60();
  if (v79 >= 1 && v135 >= 1)
  {
    v158 = (v132 + 16);
    v143 = (v132 + 8);
    v149 = (v124 + 8);
    v142 = (v124 + 32);
    v138 = (v123 + 8);
    v137 = (v123 + 32);
    v80 = 1;
    while (1)
    {
      sub_AB9C60();
      v152 = (v80 - 1);
      v81 = 1;
      TupleTypeMetadata2 = v80;
      while (1)
      {
        v82 = sub_AB9D80();
        v83 = *v158;
        v84 = v160;
        v85 = v161;
        (*v158)(v160);
        v82(&v168, 0);
        v86 = sub_AB9D80();
        v87 = v145;
        v83(v145);
        v86(&v168, 0);
        v144(&v168, v84, v87);
        v88 = *v143;
        (*v143)(v87, v85);
        v88(v84, v85);
        if (v168 == 1)
        {
          sub_AB9880();
          sub_AB9880();

          v89 = v167;
          sub_AB9870();
          sub_AB97B0();
          v90 = v170;
          sub_8D024C(v81, v170);
          v91 = v90 + 8 * v81;
          sub_AB97B0();
          v92 = TupleTypeMetadata2;
          sub_8D024C(TupleTypeMetadata2, *(v91 + 32));
          *(*(v91 + 32) + 8 * v92 + 32) = v89;
        }

        else
        {
          v93 = (v81 - 1);
          sub_AB9880();
          sub_AB9880();

          sub_AB9880();
          sub_AB9880();

          sub_AB9880();
          sub_AB9880();

          v94 = sub_AB9800();
          v95 = sub_AB9800();
          v96 = sub_AB9800();
          v97 = v95 >= v94 ? v94 : v95;
          v98 = v96 >= v97 ? v97 : v96;
          if (v94 == v98)
          {

            v99 = sub_AB9D80();
            v100 = v160;
            v101 = v161;
            v83(v160);
            v99(&v168, 0);
            v102 = v140;
            *v140 = 0;
            v103 = &v167;
          }

          else
          {

            if (sub_AB9800() == v98)
            {

              v104 = sub_AB9D80();
              v100 = v160;
              v101 = v161;
              v83(v160);
              v104(&v168, 0);
              v102 = v140;
              *v140 = 1;
              v103 = &v166;
              v93 = v152;
            }

            else
            {

              v105 = sub_AB9D80();
              v100 = v160;
              v101 = v161;
              v83(v160);
              v105(&v168, 0);
              v102 = v140;
              *v140 = 2;
              v103 = &v165;
            }
          }

          v92 = TupleTypeMetadata2;
          *(v102 + 8) = 1;
          v102[2] = v93;
          (*v141)(v102 + *(v151 + 40), v100, v101);
          sub_AB9820();
          v106 = *v103;
          sub_AB9870();
          sub_AB97B0();
          v107 = v170;
          sub_8D024C(v81, v170);
          v108 = v107 + 8 * v81;
          sub_AB97B0();
          sub_8D024C(v92, *(v108 + 32));
          *(*(v108 + 32) + 8 * v92 + 32) = v106;
        }

        v109 = v146;
        v110 = v164;
        v111 = v153;
        sub_AB9C80();
        v112 = *v149;
        v113 = AssociatedTypeWitness;
        (*v149)(v110, AssociatedTypeWitness);
        result = (*v142)(v110, v109, v113);
        if (v81 == v148)
        {
          break;
        }

        v43 = __OFADD__(v81++, 1);
        if (v43)
        {
          __break(1u);
          goto LABEL_50;
        }
      }

      v114 = v133;
      v115 = v155;
      sub_AB9C80();
      v112(v164, AssociatedTypeWitness);
      v116 = *v138;
      v117 = v134;
      (*v138)(v115, v134);
      (*v137)(v115, v114, v117);
      if (v92 == v135)
      {
        break;
      }

      v43 = __OFADD__(v92, 1);
      v80 = v92 + 1;
      if (v43)
      {
        __break(1u);
        goto LABEL_48;
      }
    }

    sub_AB9880();
    sub_AB9880();

    v166 = sub_AB8FA0();
    __chkstk_darwin(v166);
    v118 = v156;
    *(&v121 - 6) = v111;
    *(&v121 - 5) = v118;
    v119 = v154;
    *(&v121 - 4) = v120;
    *(&v121 - 3) = v119;
    *(&v121 - 2) = v122;
    swift_getWitnessTable();
    sub_AB9630();

    v116(v155, v134);

    return v168;
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_8CEDA4@<X0>(_BYTE *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  result = sub_AB91C0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_8CEE24(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a6;
  v42 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v40 = &v35 - v13;
  v14 = type metadata accessor for CollectionComparisonOperation();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v17 = __chkstk_darwin(v16);
  v20 = &v35 - v18;
  if (*(a2 + 8) != 1)
  {
    goto LABEL_5;
  }

  if (*a2)
  {
    if (*a2 == 1)
    {
      v35 = 1;
      v36 = v19;
      goto LABEL_8;
    }

LABEL_5:
    (*(v15 + 16))(&v35 - v18, a2, v14);
    sub_AB9870();
    return sub_AB9820();
  }

  v35 = 0;
  v36 = v19;
LABEL_8:
  v38 = &v35;
  v39 = a1;
  v47 = *a1;
  __chkstk_darwin(v17);
  v37 = &v35 - 10;
  v23 = v42;
  v22 = v43;
  *(&v35 - 8) = a3;
  *(&v35 - 7) = v23;
  *(&v35 - 6) = a5;
  *(&v35 - 5) = v22;
  *(&v35 - 4) = a7;
  *(&v35 - 3) = v24;
  *(&v35 - 16) = v25;
  *(&v35 - 1) = a2;
  v26 = sub_AB9870();

  swift_getWitnessTable();
  v27 = v44;
  sub_AB9CC0();

  if (v46 == 1)
  {
    (*(v15 + 16))(v20, a2, v14);
    return sub_AB9820();
  }

  else
  {
    v43 = v45;
    sub_AB9880();
    v37 = *(v20 + 2);
    v38 = v26;
    v42 = *(v15 + 8);
    v42(v20, v14);
    v44 = v27;
    v28 = *(a2 + 16);
    v29 = v40;
    v30 = v41;
    (*(v41 + 16))(v40, a2 + *(v14 + 40), AssociatedTypeWitness);
    v31 = v36;
    v32 = v37;
    if (v35)
    {
      v33 = v37;
    }

    else
    {
      v33 = v28;
    }

    if (v35)
    {
      v32 = v28;
    }

    *v36 = v33;
    *(v31 + 8) = 0;
    v31[2] = v32;
    (*(v30 + 32))(v31 + *(v14 + 40), v29, AssociatedTypeWitness);
    sub_AB9840();
    v34 = v42;
    v42(v20, v14);
    (*(v15 + 16))(v20, v31, v14);
    sub_AB9820();
    return v34(v31, v14);
  }
}

BOOL static CollectionComparisonOperationType.__derived_enum_equals(_:_:)(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (!a1)
  {
    return (a4 & 1) != 0 && !a3;
  }

  if (a1 == 1)
  {
    return (a4 & 1) != 0 && a3 == 1;
  }

  return (a4 & 1) != 0 && a3 > 1;
}

uint64_t sub_8CF2A8(uint64_t *a1, unint64_t a2, char a3)
{
  v3 = *a1;
  if (*(a1 + 8) != 1)
  {
    if ((a3 & 1) != 0 || v3 != a2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (!v3)
  {
    if ((a3 & 1) == 0 || a2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (v3 != 1)
  {
    if ((a3 & 1) == 0 || a2 < 2)
    {
      return 0;
    }

LABEL_15:
    swift_getAssociatedTypeWitness();
    type metadata accessor for CollectionComparisonOperation();
    return sub_AB91C0() & 1;
  }

  if ((a3 & 1) != 0 && a2 == 1)
  {
    goto LABEL_15;
  }

  return 0;
}

BOOL sub_8CF434(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t CollectionComparisonOperationType.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x747265736E69;
    if (a1 != 1)
    {
      v2 = 0x7574697473627573;
    }

    if (a1)
    {
      return v2;
    }

    else
    {
      return 0x6574656C6564;
    }
  }

  else
  {
    v4._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v4);

    return 0x6F72662065766F6DLL;
  }
}

uint64_t UICollectionView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a1;
  v16[7] = a4;
  v16[8] = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_8D0434;
  *(v17 + 24) = v16;
  v27 = sub_70638;
  v28 = v17;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1822E0;
  v26 = &block_descriptor_235;
  v18 = _Block_copy(&aBlock);

  v19 = v8;

  if (a5)
  {
    v27 = a5;
    v28 = a6;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1811AC;
    v26 = &block_descriptor_12_4;
    a5 = _Block_copy(&aBlock);
  }

  [v19 performBatchUpdates:v18 completion:a5];
  _Block_release(a5);
  _Block_release(v18);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_8CF78C(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v46 = a5;
  v8 = sub_AB3820();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v14 = v13;
  v15 = type metadata accessor for CollectionComparisonOperation();
  v47 = *(v15 - 8);
  v36 = *(v47 + 64);
  v16 = __chkstk_darwin(v15);
  v18 = &v35 - v17;
  a1(v16);
  v48 = a3;
  result = sub_AB9850();
  if (result)
  {
    v20 = 0;
    v45 = (v47 + 16);
    v43 = (v47 + 8);
    v38 = v42 + 16;
    v37 = xmmword_AF4EC0;
    v39 = v12;
    v40 = a4;
    v44 = (v42 + 8);
    do
    {
      v27 = sub_AB97E0();
      sub_AB9790();
      if (v27)
      {
        result = (*(v47 + 16))(v18, v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v20, v15);
        v28 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_ABAE10();
        if (v36 != 8)
        {
          __break(1u);
          return result;
        }

        v49 = result;
        (*v45)(v18, &v49, v15);
        result = swift_unknownObjectRelease();
        v28 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_17:
          __break(1u);
          return result;
        }
      }

      v29 = v14;
      sub_AB37A0();
      v30 = *v18;
      v31 = v18[8];
      (*v43)(v18, v15);
      if (v31 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20470);
        v32 = v42;
        v33 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = v37;
        (*(v32 + 16))(v34 + v33, v12, v29);
        v26.super.isa = sub_AB9740().super.isa;

        if (v30)
        {
          if (v30 == 1)
          {
            [v46 insertItemsAtIndexPaths:v26.super.isa];
          }

          else
          {
            [v46 reloadItemsAtIndexPaths:v26.super.isa];
          }
        }

        else
        {
          [v46 deleteItemsAtIndexPaths:v26.super.isa];
        }

        v12 = v39;
        a4 = v40;
        v14 = v29;
        v25 = v44;
      }

      else
      {
        v21 = v41;
        sub_AB37A0();
        v22 = v15;
        v23 = a4;
        isa = sub_AB3770().super.isa;
        v14 = v29;
        v25 = v44;
        (*v44)(v21, v14);
        v26.super.isa = sub_AB3770().super.isa;
        [v46 moveItemAtIndexPath:isa toIndexPath:v26.super.isa];

        a4 = v23;
        v15 = v22;
      }

      (*v25)(v12, v14);
      result = sub_AB9850();
      ++v20;
    }

    while (v28 != result);
  }

  return result;
}

uint64_t UITableView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a1;
  v16[7] = a4;
  v16[8] = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_8D04B0;
  *(v17 + 24) = v16;
  v27 = sub_710F8;
  v28 = v17;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1822E0;
  v26 = &block_descriptor_22_2;
  v18 = _Block_copy(&aBlock);

  v19 = v8;

  if (a5)
  {
    v27 = a5;
    v28 = a6;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1811AC;
    v26 = &block_descriptor_25_3;
    a5 = _Block_copy(&aBlock);
  }

  [v19 performBatchUpdates:v18 completion:a5];
  _Block_release(a5);
  _Block_release(v18);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_8CFDF4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v46 = a5;
  v8 = sub_AB3820();
  v42 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v14 = v13;
  v15 = type metadata accessor for CollectionComparisonOperation();
  v47 = *(v15 - 8);
  v36 = *(v47 + 64);
  v16 = __chkstk_darwin(v15);
  v18 = &v35 - v17;
  a1(v16);
  v48 = a3;
  result = sub_AB9850();
  if (result)
  {
    v20 = 0;
    v45 = (v47 + 16);
    v43 = (v47 + 8);
    v38 = v42 + 16;
    v37 = xmmword_AF4EC0;
    v39 = v12;
    v40 = a4;
    v44 = (v42 + 8);
    do
    {
      v27 = sub_AB97E0();
      sub_AB9790();
      if (v27)
      {
        result = (*(v47 + 16))(v18, v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v20, v15);
        v28 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_ABAE10();
        if (v36 != 8)
        {
          __break(1u);
          return result;
        }

        v49 = result;
        (*v45)(v18, &v49, v15);
        result = swift_unknownObjectRelease();
        v28 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_17:
          __break(1u);
          return result;
        }
      }

      v29 = v14;
      sub_AB37A0();
      v30 = *v18;
      v31 = v18[8];
      (*v43)(v18, v15);
      if (v31 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20470);
        v32 = v42;
        v33 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = v37;
        (*(v32 + 16))(v34 + v33, v12, v29);
        v26.super.isa = sub_AB9740().super.isa;

        if (v30)
        {
          if (v30 == 1)
          {
            [v46 insertRowsAtIndexPaths:v26.super.isa withRowAnimation:100];
          }

          else
          {
            [v46 reloadRowsAtIndexPaths:v26.super.isa withRowAnimation:100];
          }
        }

        else
        {
          [v46 deleteRowsAtIndexPaths:v26.super.isa withRowAnimation:100];
        }

        v12 = v39;
        a4 = v40;
        v14 = v29;
        v25 = v44;
      }

      else
      {
        v21 = v41;
        sub_AB37A0();
        v22 = v15;
        v23 = a4;
        isa = sub_AB3770().super.isa;
        v14 = v29;
        v25 = v44;
        (*v44)(v21, v14);
        v26.super.isa = sub_AB3770().super.isa;
        [v46 moveRowAtIndexPath:isa toIndexPath:v26.super.isa];

        a4 = v23;
        v15 = v22;
      }

      (*v25)(v12, v14);
      result = sub_AB9850();
      ++v20;
    }

    while (v28 != result);
  }

  return result;
}

uint64_t sub_8D024C(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_8D02A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_AB97C0();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_AB9870();
    return v8;
  }

  return result;
}

uint64_t sub_8D03C8()
{

  return swift_deallocObject();
}

uint64_t sub_8D0400@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 56))();
  *a1 = result & 1;
  return result;
}

uint64_t block_copy_helper_235(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_5Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_8D04F4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_8D057C(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
  }

  v8 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_8D06E0(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 24) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *(a1 + v9) = v14;
              }

              else
              {
                *(a1 + v9) = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        *(a1 + 2) = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *(a1 + v9) = 0;
  }

  else if (v12)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v8 + 24) & ~v8;

  v18(v19);
}

uint64_t __swift_memcpy9_8_2(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t ControlEventHandler.__allocating_init<A>(control:events:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ControlEventHandler.init<A>(control:events:handler:)(a1, a2, a3, a4, a5);
  return v10;
}

void *ControlEventHandler.init<A>(control:events:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5[3] = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v5[4] = sub_8D0B90;
  v5[5] = v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;

    [v13 addTarget:v5 action:"handleActionFromControl:" forControlEvents:a2];
  }

  return v5;
}

void sub_8D0AD4(void *a1, void (*a2)(uint64_t))
{
  v4 = swift_dynamicCastUnknownClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    a2(v5);
  }
}

uint64_t sub_8D0B58()
{

  return swift_deallocObject();
}

uint64_t ControlEventHandler.deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromControl:" forControlEvents:*(v0 + 24)];
  }

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t ControlEventHandler.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromControl:" forControlEvents:*(v0 + 24)];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void ControlEventHandling<>.on(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_13C80(0, &qword_E20478);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = v10;
  v11[4] = a2;
  v11[5] = a3;

  v12 = sub_ABA7D0();
  [v5 addAction:v12 forControlEvents:{a1, 0, 0, 0, sub_8D1040, v11}];
}

void sub_8D0E0C(void *a1, uint64_t a2, void (*a3)(void *))
{
  if ([a1 sender])
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_8D1218(v8);
LABEL_8:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_9;
  }

  sub_13C80(0, &qword_E20568);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  Strong = v5;
LABEL_9:
  a3(Strong);
}

void sub_8D0F0C(void *a1, uint64_t a2, void (*a3)(void *))
{
  if ([a1 sender])
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_8D1218(v8);
LABEL_8:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  Strong = v5;
LABEL_9:
  a3(Strong);
}

uint64_t sub_8D1000()
{

  return swift_deallocObject();
}

void sub_8D104C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_13C80(0, &qword_E20478);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;

  v10 = sub_ABA7D0();
  [v7 addAction:v10 forControlEvents:{a1, 0, 0, 0, sub_8D120C, v9}];
}

uint64_t sub_8D1194()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_8D11CC()
{

  return swift_deallocObject();
}

uint64_t sub_8D1218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Datavault.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities9Datavault_url;
  v4 = sub_AB31C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Datavault.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  return sub_8D1354(v1 + v3, a1);
}

uint64_t sub_8D1354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Datavault.logger.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  sub_8D1424(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_8D1424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20570);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *Datavault.__allocating_init(url:storageClass:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB31C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3160();
  v12 = v11;
  (*(v7 + 16))(v9, a1, v6);
  swift_allocObject();
  v13 = sub_8D17C8(v10, v12, v9, a2, a3);
  (*(v7 + 8))(a1, v6);
  return v13;
}

void *Datavault.__allocating_init(path:storageClass:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_AB31C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  sub_AB30C0();
  (*(v9 + 16))(v11, v14, v8);
  swift_allocObject();
  v15 = sub_8D17C8(a1, a2, v11, a3, a4);
  (*(v9 + 8))(v14, v8);
  return v15;
}

void *sub_8D17C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v88 = a5;
  v84 = a4;
  v85 = a1;
  v94 = a2;
  v86 = *v5;
  v7 = sub_AB4BC0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v76[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v76[-v13];
  __chkstk_darwin(v12);
  v16 = &v76[-v15];
  v17 = sub_AB31C0();
  v90 = *(v17 - 8);
  v91 = v17;
  __chkstk_darwin(v17);
  v19 = &v76[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  v21 = *(v8 + 56);
  v93 = v5;
  v21(v5 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger, 1, 1, v7);
  v92 = a3;
  sub_AB3130();
  v22 = [objc_opt_self() defaultManager];
  v89 = v19;
  v23 = v87;
  NSFileManager.createDirectoryIfNeeded(at:)();
  v87 = v23;
  if (!v23)
  {
    v28 = v11;
    v29 = v16;
    v83 = v20;
    v81 = v14;
    v96[0] = 0;
    v30 = v85;
    v31 = v94;
    v32 = sub_AB9260();
    v82 = v22;
    [v22 fileExistsAtPath:v32 isDirectory:v96];

    if (v96[0] == 1)
    {
      sub_AB93A0();
      sub_AB93A0();
      v33 = rootless_check_datavault_flag();

      if (v33)
      {
        v34 = v83;
        v35 = v93;
        swift_beginAccess();
        v36 = v35 + v34;
        v24 = v35;
        v37 = v7;
        v80 = *(v8 + 48);
        if (!v80(v36, 1, v7))
        {
          v38 = v29;
          (*(v8 + 16))(v29, v24 + v83, v37);

          v78 = v37;
          v39 = sub_AB4BA0();
          v40 = sub_AB9F50();

          v77 = v40;
          v79 = v39;
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v95[0] = v42;
            *v41 = 136315138;
            *(v41 + 4) = sub_8F2610(v85, v94, v95);
            v43 = v79;
            _os_log_impl(&dword_0, v79, v77, "Found unsecure directory %s attempting to convert to datavault", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v42);
          }

          else
          {
          }

          v37 = v78;
          (*(v8 + 8))(v38, v78);
        }

        v61 = v37;
        sub_AB93A0();
        sub_AB93A0();

        v62 = rootless_convert_to_datavault();

        if (v62)
        {

          v63 = sub_AB53D0();
          sub_8D2654();
          swift_allocError();
          *v64 = v63;
          *(v64 + 4) = 1;
          swift_willThrow();
          v22 = v82;
          goto LABEL_4;
        }

        v65 = v24;
        v66 = v83;
        swift_beginAccess();
        if (v80(v65 + v66, 1, v37))
        {
          v56 = v90;
          v57 = v91;
          (*(v90 + 8))(v89, v91);
          swift_endAccess();

          v31 = v94;
          v24 = v65;
        }

        else
        {
          v67 = v8;
          v68 = v81;
          (*(v8 + 16))(v81, v65 + v66, v37);
          swift_endAccess();
          v69 = v94;

          v70 = sub_AB4BA0();
          v71 = sub_AB9F50();

          v24 = v65;
          if (os_log_type_enabled(v70, v71))
          {
            v72 = v68;
            v73 = v67;
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v95[0] = v75;
            *v74 = 136315138;
            *(v74 + 4) = sub_8F2610(v85, v69, v95);
            _os_log_impl(&dword_0, v70, v71, "Datavault directory conversion successful %s", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v75);

            (*(v73 + 8))(v72, v61);
          }

          else
          {

            (*(v67 + 8))(v68, v61);
          }

          v56 = v90;
          v57 = v91;
          (*(v90 + 8))(v89, v91);
          v31 = v69;
        }

LABEL_20:
        (*(v56 + 32))(v24 + OBJC_IVAR____TtC14MusicUtilities9Datavault_url, v92, v57);
        v24[2] = v85;
        v24[3] = v31;
        return v24;
      }

      v56 = v90;
      v57 = v91;
      (*(v90 + 8))(v89, v91);

      v31 = v94;
    }

    else
    {
      v44 = v83;
      v45 = v93;
      swift_beginAccess();
      v46 = v8;
      v47 = v7;
      if (!(*(v8 + 48))(&v45[v44], 1, v7))
      {
        v48 = v93 + v44;
        v49 = v28;
        (*(v8 + 16))(v28, v48, v7);

        v50 = sub_AB4BA0();
        v51 = sub_AB9F50();

        v52 = v50;
        if (os_log_type_enabled(v50, v51))
        {
          v53 = v46;
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v95[0] = v55;
          *v54 = 136315138;
          *(v54 + 4) = sub_8F2610(v30, v31, v95);
          _os_log_impl(&dword_0, v52, v51, "Creating DataVault directory %s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v55);

          (*(v53 + 8))(v49, v47);
        }

        else
        {

          (*(v46 + 8))(v28, v47);
        }
      }

      sub_AB53F0();
      sub_AB5400();
      sub_AB5410();
      sub_AB93A0();
      sub_AB93A0();

      v58 = rootless_mkdir_datavault();

      if (v58)
      {

        v59 = sub_AB53D0();
        sub_8D2654();
        swift_allocError();
        *v60 = v59;
        *(v60 + 4) = 0;
        swift_willThrow();
        v22 = v82;
        goto LABEL_3;
      }

      v56 = v90;
      v57 = v91;
      (*(v90 + 8))(v89, v91);
    }

    v24 = v93;
    goto LABEL_20;
  }

LABEL_3:
  v24 = v93;
LABEL_4:

  v25 = v91;
  v26 = *(v90 + 8);
  v26(v92, v91);
  v26(v89, v25);
  sub_8D22D4(v24 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger);
  swift_deallocPartialClassInstance();
  return v24;
}

uint64_t Datavault.deinit()
{

  v1 = OBJC_IVAR____TtC14MusicUtilities9Datavault_url;
  v2 = sub_AB31C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_8D22D4(v0 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger);
  return v0;
}

uint64_t sub_8D22D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Datavault.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14MusicUtilities9Datavault_url;
  v2 = sub_AB31C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_8D22D4(v0 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Datavault()
{
  result = qword_E205A0;
  if (!qword_E205A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_8D2444()
{
  sub_AB31C0();
  if (v0 <= 0x3F)
  {
    sub_8D251C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_8D251C()
{
  if (!qword_E205B0)
  {
    sub_AB4BC0();
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E205B0);
    }
  }
}

uint64_t __swift_memcpy5_4_0(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Datavault.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Datavault.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_8D2614(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_8D262C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

unint64_t sub_8D2654()
{
  result = qword_E20640;
  if (!qword_E20640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E20640);
  }

  return result;
}

id sub_8D276C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayLinkHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_8D27B8()
{
  result = swift_slowAlloc();
  qword_E20648 = result;
  return result;
}

id CADisplayLink.init(handler:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayLinkHandler();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC14MusicUtilitiesP33_A1FC62D80C043A876151FA559C82DA5918DisplayLinkHandler__handler];
  *v6 = a1;
  *(v6 + 1) = a2;
  v14.receiver = v5;
  v14.super_class = v4;

  v7 = objc_msgSendSuper2(&v14, "init");
  v8 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v7 selector:{"handleDisplayLinkFired:", v14.receiver, v14.super_class}];
  v9 = qword_E1FE28;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_E20648;
  v12 = v7;
  objc_setAssociatedObject(v10, v11, v12, &dword_0 + 1);

  return v10;
}

uint64_t EdgePairSequence.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_ABA9C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - v7;
  v9 = *(v4 - 8);
  __chkstk_darwin(v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *v2;
  sub_AB9870();
  swift_getWitnessTable();
  if (sub_AB9D20())
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a2, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    swift_getWitnessTable();
    v18[0] = v5;
    sub_AB9DA0();
    swift_getWitnessTable();
    sub_AB9DB0();
    v15 = v18[0];
    v16 = swift_getTupleTypeMetadata2();
    v17 = *(v16 + 48);
    (*(v9 + 32))(a2, v12, v4);
    (*(v6 + 32))(a2 + v17, v8, v15);
    return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
  }
}

uint64_t sub_8D2BE4()
{
  v0 = sub_8D2C98();

  return v0;
}

uint64_t sub_8D2C44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_8D2CBC(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_54A180;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t static Task<>.delayed(by:priority:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E20700);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - v11;
  sub_8D2EA4(a1, &v15 - v11);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a2;
  *(v13 + 56) = a3;

  return sub_8D3400(0, 0, v12, &unk_B36DC8, v13);
}

uint64_t sub_8D2EA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E20700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8D2F14(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 24) = a2;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_8D2F3C, 0, 0);
}

uint64_t sub_8D2F3C(unint64_t a1)
{
  v3 = *(v1 + 24) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_8D3024;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_8D3024()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {
    v8 = (v2[4] + *v2[4]);
    v6 = swift_task_alloc();
    v2[7] = v6;
    *v6 = v3;
    v6[1] = sub_8D31F4;
    v7 = v2[2];

    return v8(v7);
  }
}

uint64_t sub_8D31F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_8D32E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_8D3328(uint64_t a1)
{
  v4 = *(v1 + 3);
  v5 = *(v1 + 2);
  v6 = v1[5];
  v8 = *(v1 + 6);
  v7 = *(v1 + 7);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17BD0;

  return sub_8D2F14(a1, v6, v5, v4, v8, v7);
}

uint64_t sub_8D3400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E20700);
  __chkstk_darwin(v9 - 8);
  v11 = &v23[-1] - v10;
  v23[5] = a4;
  v23[6] = a5;
  sub_8D2EA4(a3, &v23[-1] - v10);
  v12 = sub_AB9990();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_8D3734(v11);
  }

  else
  {
    sub_AB9980();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_AB98B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_AB93A0();
      sub_511910(v19 + 32, v23);

      v20 = v23[0];
      sub_8D3734(a3);

      return v20;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_8D3734(a3);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t static Task<>.userFeedbackDelayed(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E20700);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  sub_AB9960();
  v9 = sub_AB9990();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = static Task<>.delayed(by:priority:task:)(v8, a1, a2, a3, 2.0);
  sub_8D3734(v8);
  return v10;
}

uint64_t sub_8D3734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E20700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CASpringAnimation.springParameters.getter()
{
  [v0 mass];
  v2 = v1;
  [v0 stiffness];
  v4 = v3;
  [v0 damping];
  v6 = v5;
  v7 = objc_allocWithZone(UISpringTimingParameters);

  return [v7 initWithMass:v2 stiffness:v4 damping:v6 initialVelocity:{0.0, 0.0}];
}

void CASpringAnimation.springParameters.setter(void *a1)
{
  [a1 mass];
  [v1 setMass:?];
  [a1 stiffness];
  [v1 setStiffness:?];
  [a1 damping];
  [v1 setDamping:?];
  [v1 setInitialVelocity:0.0];
}

void (*CASpringAnimation.springParameters.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  [v1 mass];
  v4 = v3;
  [v1 stiffness];
  v6 = v5;
  [v1 damping];
  *a1 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:v4 stiffness:v6 damping:v7 initialVelocity:{0.0, 0.0}];
  return sub_8D3994;
}

void sub_8D3994(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1;
  if (a2)
  {
    v4 = v2;
    [v4 mass];
    [v3 setMass:?];
    [v4 stiffness];
    [v3 setStiffness:?];
    [v4 damping];
    [v3 setDamping:?];
    [v3 setInitialVelocity:0.0];
  }

  else
  {
    [v2 mass];
    [v3 setMass:?];
    [v5 stiffness];
    [v3 setStiffness:?];
    [v5 damping];
    [v3 setDamping:?];
    [v3 setInitialVelocity:0.0];
  }
}

void static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  [a1 settlingDuration];
  v15 = v14;
  [a1 mass];
  v17 = v16;
  [a1 stiffness];
  v19 = v18;
  [a1 damping];
  v21 = v20;
  v27 = a3;
  v28 = a4;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1B5EB4;
  v26 = &block_descriptor_236;
  v22 = _Block_copy(&v23);

  if (a5)
  {
    v27 = a5;
    v28 = a6;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1811AC;
    v26 = &block_descriptor_3_9;
    a5 = _Block_copy(&v23);
  }

  [objc_opt_self() _animateUsingSpringWithDuration:a2 delay:v22 options:a5 mass:v15 stiffness:a7 damping:v17 initialVelocity:v19 animations:v21 completion:0.0];
  _Block_release(a5);
  _Block_release(v22);
}

uint64_t block_copy_helper_236(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, double a7, double a8)
{
  v16 = objc_opt_self();
  [v16 begin];
  [v16 setAnimationTimingFunction:a1];
  v23 = a3;
  v24 = a4;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1B5EB4;
  v22 = &block_descriptor_6_4;
  v17 = _Block_copy(&v19);

  if (a5)
  {
    v23 = a5;
    v24 = a6;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1811AC;
    v22 = &block_descriptor_9_5;
    a5 = _Block_copy(&v19);
  }

  [objc_opt_self() animateWithDuration:a2 delay:v17 options:a5 animations:a7 completion:a8];
  _Block_release(a5);
  _Block_release(v17);
  return [v16 commit];
}

char *sub_8D3E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration];
  *v14 = 0;
  v14[8] = 1;
  *&v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink] = 0;
  v22.receiver = v5;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "init");
  v16 = &v15[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating];
  v17 = *&v15[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating];
  *v16 = a1;
  *(v16 + 1) = a2;
  v18 = v15;
  sub_17654(v17);
  v19 = &v18[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion];
  v20 = *&v18[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion];
  *v19 = a3;
  *(v19 + 1) = a4;
  sub_17654(v20);

  return v18;
}

void sub_8D3F68(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating))
  {
    [a1 duration];
    v2 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration;
    *v2 = v3;
    *(v2 + 8) = 0;
    v4 = CACurrentMediaTime();
    v5 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime;
    *v5 = v4;
    *(v5 + 8) = 0;
    v6 = [objc_opt_self() displayLinkWithTarget:v1 selector:"displayLinkFiredWithDisplayLink:"];
    v7 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink);
    *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink) = v6;
    v8 = v6;

    if (v8)
    {
      v9 = [objc_opt_self() currentRunLoop];
      [v8 addToRunLoop:v9 forMode:NSDefaultRunLoopMode];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_8D4174(void *a1)
{
  result = [a1 timestamp];
  if (*(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime + 8))
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
  if (!v4)
  {
    return result;
  }

  if (*(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration + 8))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = (v3 - *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime)) / *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration);

  v4(v6, v5);

  return sub_17654(v4);
}

id CAAnimation.progress.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v2 delegate];
  if (result)
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = (v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      v9 = *(v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      *v8 = a1;
      v8[1] = a2;
      sub_17654(v9);

      return swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  if (a1)
  {
    v10 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

    v11 = sub_8D3E64(a1, a2, 0, 0);
    [v3 setDelegate:v11];

    return sub_17654(a1);
  }

  return result;
}

uint64_t (*CAAnimation.progress.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if ([v1 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      v5 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating + 8);
      sub_307CC(v4);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
  return sub_8D454C;
}

uint64_t sub_8D45AC(void *a1, void (*a2)(void, void))
{
  if (![v2 delegate])
  {
    return 0;
  }

  type metadata accessor for CAAnimationCompletionHandler();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = (v5 + *a1);
    v7 = *v6;
    a2(*v6, v6[1]);
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRelease();
  return v7;
}

id CAAnimation.completion.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v2 delegate];
  if (result)
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = (v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v9 = *(v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      *v8 = a1;
      v8[1] = a2;
      sub_17654(v9);

      return swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  if (a1)
  {
    v10 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

    v11 = sub_8D3E64(0, 0, a1, a2);
    [v3 setDelegate:v11];

    return sub_17654(a1);
  }

  return result;
}

uint64_t (*CAAnimation.completion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if ([v1 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v5 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion + 8);
      sub_307CC(v4);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
  return sub_8D4824;
}

uint64_t sub_8D4864(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v7);
  }

  a4(*a1, v7);
  a3(v6, v7);

  return a5(v6, v7);
}

uint64_t CALayer.addAsyncAnimation(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_AB9940();
  v4[7] = sub_AB9930();
  v6 = sub_AB98B0();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_8D49A8, v6, v5);
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20720);
  v8 = __chkstk_darwin(v7);
  v13 = a1;
  v14 = v3;
  v15 = a2;
  v16 = a3;
  (*(v10 + 104))(&v12[-v9], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v8);
  return sub_AB99D0();
}

uint64_t sub_8D49A8()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_AB9930();
  v0[10] = v5;
  v6 = swift_task_alloc();
  v0[11] = v6;
  v6[2] = v4;
  v6[3] = v1;
  v6[4] = v3;
  v6[5] = v2;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_8D4ACC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 13, v5, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x8000000000B79030, sub_8D51E4, v6, &type metadata for Bool);
}

uint64_t sub_8D4ACC()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_8D4C2C, v3, v2);
}

uint64_t sub_8D4C2C()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_8D4C90(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E207E0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v42 - v11;
  (*(v9 + 16))(&v42 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  if ([a2 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = (v15 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v17 = *(v15 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      *v16 = sub_8D5E94;
      v16[1] = v14;
      sub_17654(v17);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v18 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

  v19 = sub_8D3E64(0, 0, sub_8D5E94, v14);
  [a2 setDelegate:v19];

LABEL_6:
  v20 = objc_opt_self();
  [v20 begin];
  [v20 setDisableActions:1];
  if (a5)
  {
    v21 = sub_AB9260();
  }

  else
  {
    v21 = 0;
  }

  [v44 addAnimation:a2 forKey:v21];

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    if (a5)
    {
      v23 = [v22 toValue];
      v24 = sub_AB9260();
      [v44 setValue:v23 forKey:v24];
      swift_unknownObjectRelease();
    }

    return [v20 commit];
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    return [v20 commit];
  }

  result = [v25 animations];
  v27 = _swiftEmptyArrayStorage;
  if (result)
  {
    v28 = result;
    sub_8D5E34();
    v29 = sub_AB9760();

    v45 = _swiftEmptyArrayStorage;
    if (v29 >> 62)
    {
LABEL_32:
      v30 = sub_ABB060();
      if (v30)
      {
LABEL_16:
        v31 = 0;
        do
        {
          v32 = v31;
          while (1)
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v33 = sub_ABAE20();
            }

            else
            {
              if (v32 >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_31;
              }

              v33 = *(v29 + 8 * v32 + 32);
            }

            v34 = v33;
            v31 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v32;
            if (v31 == v30)
            {
              goto LABEL_33;
            }
          }

          sub_AB9730();
          if (*(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v45 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_AB97A0();
          }

          sub_AB97F0();
          v27 = v45;
        }

        while (v31 != v30);
      }
    }

    else
    {
      v30 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
      if (v30)
      {
        goto LABEL_16;
      }
    }

LABEL_33:
  }

  if (!(v27 >> 62))
  {
    v35 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
    if (v35)
    {
      goto LABEL_36;
    }

    goto LABEL_46;
  }

  result = sub_ABB060();
  v35 = result;
  if (!result)
  {
LABEL_46:

    return [v20 commit];
  }

LABEL_36:
  v43 = v20;
  if (v35 >= 1)
  {
    for (i = 0; i != v35; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v37 = sub_ABAE20();
      }

      else
      {
        v37 = *(v27 + 8 * i + 32);
      }

      v38 = v37;
      v39 = [v37 keyPath];
      if (v39)
      {
        v40 = v39;
        v41 = [v38 toValue];
        [v44 setValue:v41 forKey:v40];

        swift_unknownObjectRelease();
        v38 = v40;
      }
    }

    v20 = v43;
    return [v20 commit];
  }

  __break(1u);
  return result;
}

id sub_8D530C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v58 = a4;
  v59 = a5;
  v60 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E207C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v56 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v54 - v12;
  v14 = *(v8 + 16);
  v57 = a1;
  v55 = v14;
  (v14)(&v54 - v12, a1, v7, v11);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v54 = *(v8 + 32);
  v54(v16 + v15, v13, v7);
  v17 = a2;
  if ([a2 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = (v18 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      v20 = *(v18 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      *v19 = sub_8D5D3C;
      v19[1] = v16;
      sub_17654(v20);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v21 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

  v22 = sub_8D3E64(sub_8D5D3C, v16, 0, 0);
  [a2 setDelegate:v22];

LABEL_6:
  v23 = v56;
  v55(v56, v57, v7);
  v24 = swift_allocObject();
  v54(v24 + v15, v23, v7);
  v25 = [v17 delegate];
  v26 = v59;
  if (v25)
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = (v27 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v29 = *(v27 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      *v28 = sub_8D5DB8;
      v28[1] = v24;
      sub_17654(v29);
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  v30 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

  v31 = sub_8D3E64(0, 0, sub_8D5DB8, v24);
  [v17 setDelegate:v31];

LABEL_11:
  v32 = objc_opt_self();
  [v32 begin];
  [v32 setDisableActions:1];
  if (v26)
  {
    v33 = sub_AB9260();
  }

  else
  {
    v33 = 0;
  }

  [v60 addAnimation:v17 forKey:v33];

  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    if (v26)
    {
      v35 = [v34 toValue];
      v36 = sub_AB9260();
      [v60 setValue:v35 forKey:v36];
      swift_unknownObjectRelease();
    }

    return [v32 commit];
  }

  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {
    return [v32 commit];
  }

  result = [v37 animations];
  v39 = _swiftEmptyArrayStorage;
  if (result)
  {
    v40 = result;
    sub_8D5E34();
    v41 = sub_AB9760();

    v61 = _swiftEmptyArrayStorage;
    if (v41 >> 62)
    {
LABEL_37:
      v42 = sub_ABB060();
      if (v42)
      {
LABEL_21:
        v43 = 0;
        do
        {
          v44 = v43;
          while (1)
          {
            if ((v41 & 0xC000000000000001) != 0)
            {
              v45 = sub_ABAE20();
            }

            else
            {
              if (v44 >= *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_36;
              }

              v45 = *(v41 + 8 * v44 + 32);
            }

            v46 = v45;
            v43 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v44;
            if (v43 == v42)
            {
              goto LABEL_38;
            }
          }

          sub_AB9730();
          if (*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v61 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_AB97A0();
          }

          sub_AB97F0();
          v39 = v61;
        }

        while (v43 != v42);
      }
    }

    else
    {
      v42 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
      if (v42)
      {
        goto LABEL_21;
      }
    }

LABEL_38:
  }

  if (!(v39 >> 62))
  {
    v47 = *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8));
    if (v47)
    {
      goto LABEL_41;
    }

    goto LABEL_51;
  }

  result = sub_ABB060();
  v47 = result;
  if (!result)
  {
LABEL_51:

    return [v32 commit];
  }

LABEL_41:
  v59 = v32;
  if (v47 >= 1)
  {
    for (i = 0; i != v47; ++i)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v49 = sub_ABAE20();
      }

      else
      {
        v49 = *(v39 + 8 * i + 32);
      }

      v50 = v49;
      v51 = [v49 keyPath];
      if (v51)
      {
        v52 = v51;
        v53 = [v50 toValue];
        [v60 setValue:v53 forKey:v52];

        swift_unknownObjectRelease();
        v50 = v52;
      }
    }

    v32 = v59;
    return [v32 commit];
  }

  __break(1u);
  return result;
}

uint64_t sub_8D59B4(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E207D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  v7 = a1;
  v8 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E207C8);
  sub_AB99B0();
  return (*(v3 + 8))(v5, v2);
}

void sub_8D5AB4(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E207D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  v6 = a1 & 1;
  v7 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E207C8);
  sub_AB99B0();
  (*(v3 + 8))(v5, v2);
  sub_AB99C0();
}

id static CATransaction.performWithoutAnimation(_:)(void (*a1)(id))
{
  v2 = objc_opt_self();
  [v2 begin];
  a1([v2 setDisableActions:1]);

  return [v2 commit];
}

void sub_8D5C58(char a1)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink;
  v4 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(v1 + v3);
    *(v1 + v3) = 0;
  }

  v6 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
  if (v8)
  {

    v8(a1 & 1);

    sub_17654(v8);
  }
}

uint64_t sub_8D5D3C(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E207C8);

  return sub_8D59B4(a1);
}

void sub_8D5DB8(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E207C8);

  sub_8D5AB4(a1);
}

unint64_t sub_8D5E34()
{
  result = qword_E207D0;
  if (!qword_E207D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E207D0);
  }

  return result;
}

uint64_t sub_8D5E94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E207E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E207E0);
  return sub_AB98D0();
}

double CGSize.nonNegative()(double result)
{
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

CGFloat static CGAffineTransform.+ infix(_:_:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v4;
  *&t1.tx = a1[2];
  v5 = a2[1];
  *&t2.a = *a2;
  *&t2.c = v5;
  *&t2.tx = a2[2];
  CGAffineTransformConcat(&v9, &t1, &t2);
  result = v9.a;
  v7 = *&v9.c;
  v8 = *&v9.tx;
  *a3 = *&v9.a;
  a3[1] = v7;
  a3[2] = v8;
  return result;
}

uint64_t static CGPoint.topLeft.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.topLeft = *&a1;
  unk_E74360 = *&a2;
  return result;
}

uint64_t static CGPoint.topCenter.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.topCenter = *&a1;
  *algn_E20858 = a2;
  return result;
}

uint64_t static CGPoint.topRight.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.topRight = *&a1;
  *algn_E20868 = a2;
  return result;
}

uint64_t static CGPoint.centerLeft.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.centerLeft = *&a1;
  unk_E20878 = *&a2;
  return result;
}

uint64_t static CGPoint.center.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.center = *&a1;
  unk_E20888 = *&a2;
  return result;
}

uint64_t static CGPoint.centerRight.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.centerRight = *&a1;
  unk_E20898 = *&a2;
  return result;
}

uint64_t static CGPoint.bottomLeft.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.bottomLeft = *&a1;
  unk_E208A8 = *&a2;
  return result;
}

uint64_t static CGPoint.bottomCenter.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.bottomCenter = *&a1;
  unk_E208B8 = *&a2;
  return result;
}

uint64_t static CGPoint.bottomRight.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.bottomRight = *&a1;
  unk_E208C8 = *&a2;
  return result;
}

CTFrameRef CTFramesetterRef.createFrame(_:)(double a1, double a2, double a3, double a4)
{
  v5 = CGPathCreateWithRect(*&a1, 0);
  v8.location = 0;
  v8.length = 0;
  Frame = CTFramesetterCreateFrame(v4, v8, v5, 0);

  return Frame;
}

double CTFramesetterRef.suggestedFrameSize(constraints:)(double a1, double a2)
{
  v4.location = 0;
  v4.length = 0;
  *&result = *&CTFramesetterSuggestFrameSizeWithConstraints(v2, v4, 0, *&a1, 0);
  return result;
}

CGPoint **CTFrameRef.lineOrigins.getter()
{
  v1 = CTFrameGetLines(v0);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    v2 = sub_ABB060();
    goto LABEL_4;
  }

  type metadata accessor for CTLine(0);
  sub_AB9750();

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
LABEL_4:

  v3 = v0;
  v4 = sub_8D86D8(v2, v3);

  return v4;
}

CGPoint **sub_8D6A78(CGPoint **result, uint64_t *a2, CTFrameRef frame)
{
  v3 = *result;
  if (*result)
  {
    v9.location = 0;
    v9.length = 0;
    CTFrameGetLineOrigins(frame, v9, v3);
    v7 = CTFrameGetLines(frame);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for CTLine(0);
      sub_AB9750();

      if (!(_swiftEmptyArrayStorage >> 62))
      {
LABEL_4:
        v8 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
LABEL_5:

        *a2 = v8;
        return result;
      }
    }

    else
    {

      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_4;
      }
    }

    v8 = sub_ABB060();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *CTFrameRef.lineFrames(lines:origins:flippedCoordinates:useExtendedLineBounds:)(unint64_t a1, uint64_t a2, char a3, char a4)
{
  LOBYTE(v4) = a4;
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      v9 = *(a1 + 32);
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v7 = sub_ABB060();
    if (!v7)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  v9 = sub_ABAE20();
LABEL_6:
  v10 = v9;
  if (!*(a2 + 16))
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_36:

    return v4;
  }

  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (v4)
  {
    v13 = 32;
  }

  else
  {
    v13 = 0;
  }

  options = v13;
  BoundsWithOptions = CTLineGetBoundsWithOptions(v9, v13);
  width = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  if ((a3 & 1) == 0)
  {
    v11 = 0.0;
  }

  v4 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_8D7DCC(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v17 = v4[2];
  v16 = v4[3];
  if (v17 >= v16 >> 1)
  {
    v4 = sub_8D7DCC((v16 > 1), v17 + 1, 1, v4);
  }

  v4[2] = v17 + 1;
  v18 = &v4[5 * v17];
  *(v18 + 4) = v10;
  *(v18 + 5) = v12;
  v18[6] = 0.0;
  v18[7] = width;
  v18[8] = height;
  v19 = v7 - 1;
  if (v7 != 1)
  {
    v20 = (a2 + 56);
    v21 = 5;
    v22 = 0.0;
    while (1)
    {
      v23 = v21 - 4;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = sub_ABAE20();
      }

      else
      {
        if (v23 >= *(v8 + 16))
        {
          goto LABEL_37;
        }

        v24 = *(a1 + 8 * v21);
      }

      v10 = v24;
      v25 = *(a2 + 16);
      if (v23 == v25)
      {
        goto LABEL_36;
      }

      if (v23 >= v25)
      {
        goto LABEL_38;
      }

      v26 = *(v20 - 1);
      v27 = *v20;
      v39 = CTLineGetBoundsWithOptions(v24, options);
      v28 = v39.size.width;
      v29 = v39.size.height;
      v30 = v22 + v11 - v27;
      if (a3)
      {
        v31 = v22 + v11 - v27;
      }

      else
      {
        v31 = 0.0;
      }

      if (a3)
      {
        v11 = v27;
        v22 = v30;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_8D7DCC(0, v4[2] + 1, 1, v4);
      }

      v33 = v4[2];
      v32 = v4[3];
      if (v33 >= v32 >> 1)
      {
        v4 = sub_8D7DCC((v32 > 1), v33 + 1, 1, v4);
      }

      v4[2] = v33 + 1;
      v34 = &v4[5 * v33];
      *(v34 + 4) = v10;
      *(v34 + 5) = v26;
      v34[6] = v31;
      v34[7] = v28;
      v34[8] = v29;
      ++v21;
      v20 += 2;
      --v19;
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v19)
      {
        return v4;
      }
    }
  }

  return v4;
}

void *CTFrameRef.linesWithFrames(flippedCoordinates:useExtendedLineBounds:)(char a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  v5 = CTFrameGetLines(v2);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CTLine(0);
    sub_AB9750();
  }

  v6 = CTFrameGetLines(v3);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CTLine(0);
    sub_AB9750();

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_5:
      v7 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      goto LABEL_6;
    }
  }

  else
  {

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_5;
    }
  }

  v7 = sub_ABB060();
LABEL_6:

  v8 = v3;
  v9 = sub_8D86D8(v7, v8);

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_46;
  }

  v10 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  if (!v10)
  {
LABEL_47:
    v4 = _swiftEmptyArrayStorage;
    goto LABEL_48;
  }

  while (1)
  {
    v11 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
    {
      v12 = _swiftEmptyArrayStorage[4];
      goto LABEL_11;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v10 = sub_ABB060();
    if (!v10)
    {
      goto LABEL_47;
    }
  }

  v12 = sub_ABAE20();
LABEL_11:
  v13 = v12;
  if (v9[2])
  {
    v15 = v9[4];
    v14 = *(v9 + 5);
    if (v4)
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    options = v16;
    BoundsWithOptions = CTLineGetBoundsWithOptions(v12, v16);
    width = BoundsWithOptions.size.width;
    height = BoundsWithOptions.size.height;
    if ((a1 & 1) == 0)
    {
      v14 = 0.0;
    }

    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_8D7DCC(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v20 = v4[2];
    v19 = v4[3];
    if (v20 >= v19 >> 1)
    {
      v4 = sub_8D7DCC((v19 > 1), v20 + 1, 1, v4);
    }

    v4[2] = v20 + 1;
    v21 = &v4[5 * v20];
    *(v21 + 4) = v13;
    *(v21 + 5) = v15;
    v21[6] = 0.0;
    v21[7] = width;
    v21[8] = height;
    v22 = v10 - 1;
    if (v10 != 1)
    {
      v23 = (v9 + 7);
      v24 = 5;
      v25 = 0.0;
      do
      {
        v26 = v24 - 4;
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v27 = sub_ABAE20();
        }

        else
        {
          if (v26 >= *(v11 + 16))
          {
            goto LABEL_44;
          }

          v27 = _swiftEmptyArrayStorage[v24];
        }

        v13 = v27;
        v28 = v9[2];
        if (v26 == v28)
        {
          goto LABEL_43;
        }

        if (v26 >= v28)
        {
          goto LABEL_45;
        }

        v29 = *(v23 - 1);
        v30 = *v23;
        v42 = CTLineGetBoundsWithOptions(v27, options);
        v31 = v42.size.width;
        v32 = v42.size.height;
        v33 = v25 + v14 - v30;
        if (a1)
        {
          v34 = v25 + v14 - v30;
        }

        else
        {
          v34 = 0.0;
        }

        if (a1)
        {
          v14 = v30;
          v25 = v33;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_8D7DCC(0, v4[2] + 1, 1, v4);
        }

        v36 = v4[2];
        v35 = v4[3];
        if (v36 >= v35 >> 1)
        {
          v4 = sub_8D7DCC((v35 > 1), v36 + 1, 1, v4);
        }

        v4[2] = v36 + 1;
        v37 = &v4[5 * v36];
        *(v37 + 4) = v13;
        *(v37 + 5) = v29;
        v37[6] = v34;
        v37[7] = v31;
        v37[8] = v32;
        ++v24;
        v23 += 2;
        --v22;
        v11 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
      }

      while (v22);
    }

LABEL_48:

    return v4;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_43:

  return v4;
}

void *sub_8D72DC(uint64_t (*a1)(uint64_t), void (*a2)(void))
{
  v4 = a1(v2);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    a2(0);
    sub_AB9750();
  }

  return _swiftEmptyArrayStorage;
}

__C::_NSRange_optional __swiftcall CTRunRef.convertToGlyphRange(textRange:stringIndices:)(__C::_NSRange textRange, Swift::OpaquePointer stringIndices)
{
  v3 = v2;
  length = textRange.length;
  location = textRange.location;
  Status = CTRunGetStatus(v3);
  v10 = location + length;
  v11 = __OFADD__(location, length);
  if (Status)
  {
    if (!v11)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = 1;
      v15 = location + length;
      v12 = location;
      goto LABEL_10;
    }

    goto LABEL_63;
  }

  if (v11)
  {
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v12 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v13 = -1;
  v14 = 0x8000000000000000;
  v15 = location;
LABEL_10:
  v9 = 0;
  v16 = 0;
  v17 = 0;
LABEL_11:
  v18 = v15 >= v12;
  if (Status)
  {
    v18 = v12 >= v15;
  }

  if (v18)
  {
    v19 = 0;
    v20 = v12 != v15 || v9;
    v9 = 1;
    if (v20)
    {
      v8 = 0;
      goto LABEL_60;
    }

    v21 = v12;
    v8 = 0;
    if (!v17 && v16 == 0x8000000000000000)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v17 = !__OFADD__(v12, v13);
    if (__OFADD__(v12, v13))
    {
      v16 = 0x8000000000000000;
    }

    else
    {
      v16 = 0;
    }

    if (__OFADD__(v12, v13))
    {
      v21 = v14;
    }

    else
    {
      v21 = v12 + v13;
    }
  }

  v22 = *(stringIndices._rawValue + 2);
  v23 = v22;
  do
  {
    if (!v23)
    {
      v12 = v21;
      goto LABEL_11;
    }

    v19 = v23 - 1;
    v24 = *(stringIndices._rawValue + v23-- + 3);
  }

  while (v24 != v12);
  v9 = 0;
  v8 = 1;
  if (v22 == 1 || length == 1)
  {
    goto LABEL_60;
  }

  if ((Status & 1) == 0)
  {
    v25 = 1;
    goto LABEL_37;
  }

  if (v11)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v25 = -1;
  location += length;
LABEL_37:
  v26 = v12 >= location;
  if ((Status & 1) == 0)
  {
    v26 = location >= v12;
  }

  if (!v26)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    if (Status)
    {
      v27 = 0x8000000000000000;
    }

    v8 = 1;
    while (1)
    {
      v29 = location + v25;
      if (__OFADD__(location, v25))
      {
        v29 = v27;
      }

      if (v22)
      {
        break;
      }

LABEL_44:
      v28 = v12 >= v29;
      if ((Status & 1) == 0)
      {
        v28 = v29 >= v12;
      }

      location = v29;
      if (v28)
      {
        goto LABEL_59;
      }
    }

    v30 = 0;
    while (*(stringIndices._rawValue + v30 + 4) != location)
    {
      if (v22 == ++v30)
      {
        goto LABEL_44;
      }
    }

    v32 = v19 - v30;
    v31 = v19 - v30 < 0;
    if (v19 >= v30)
    {
      v19 = v30;
    }

    if (v31)
    {
      v32 = -v32;
    }

    v8 = v32 + 1;
    if (!__OFADD__(v32, 1))
    {
LABEL_59:
      v9 = 0;
      goto LABEL_60;
    }

    goto LABEL_66;
  }

  v9 = 0;
  v8 = 1;
LABEL_60:
  Status = v19;
LABEL_67:
  result.value.length = v8;
  result.value.location = Status;
  result.is_nil = v9;
  return result;
}

void CTRunRef.drawingWidth(range:positions:)(CFRange range, CGPoint *a2)
{
  v3 = v2;
  location = range.location;
  ImageBounds = CTRunGetImageBounds(v3, 0, range);
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  width = ImageBounds.size.width;
  height = ImageBounds.size.height;
  if (a2)
  {
    v10 = a2;
    if ((location & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (*&v10[1].x > location)
      {

        v18.origin.x = x;
        v18.origin.y = y;
        v18.size.width = width;
        v18.size.height = height;
        CGRectGetWidth(v18);
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  GlyphCount = CTRunGetGlyphCount(v3);
  if ((GlyphCount & 0x8000000000000000) == 0)
  {
    v12 = GlyphCount;
    if (GlyphCount)
    {
      _s3__C7CGPointVMa_1(0);
      v13 = v3;
      v10 = sub_AB97D0();
      *&v10[1].x = v12;
    }

    else
    {
      v14 = v3;
      v10 = _swiftEmptyArrayStorage;
    }

    v16.location = 0;
    v16.length = 0;
    CTRunGetPositions(v3, v16, v10 + 2);
    v15 = CTRunGetGlyphCount(v3);
    if (v12 < v15)
    {
      goto LABEL_14;
    }

    *&v10[1].x = v15;

    if ((location & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

CFIndex CTRunRef.positions.getter()
{
  result = CTRunGetGlyphCount(v0);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      _s3__C7CGPointVMa_1(0);
      v3 = v0;
      v4 = sub_AB97D0();
      *&v4[1].x = v2;
    }

    else
    {
      v5 = v0;
      v4 = _swiftEmptyArrayStorage;
    }

    v6.location = 0;
    v6.length = 0;
    CTRunGetPositions(v0, v6, v4 + 2);
    result = CTRunGetGlyphCount(v0);
    if (v2 >= result)
    {
      *&v4[1].x = result;

      return v4;
    }
  }

  __break(1u);
  return result;
}

void CTRunRef.drawingWidth(forGlyphAtIndex:positions:)(CFRange a1)
{
  length = a1.length;
  a1.length = 1;
  CTRunRef.drawingWidth(range:positions:)(a1, length);
}

double CTRunRef.typographicBounds(forGlyphAtIndex:)(CFRange range)
{
  v3.location = range.location;
  v3.length = 1;
  return CTRunGetTypographicBounds(v1, v3, 0, 0, 0);
}

CFIndex sub_8D785C(uint64_t a1, void (*a2)(const __CTRun *, void, void, void *))
{
  result = CTRunGetGlyphCount(v2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = v2;
    if (v5)
    {
      v7 = sub_AB97D0();
      v7[2] = v5;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    a2(v6, 0, 0, v7 + 4);
    result = CTRunGetGlyphCount(v6);
    if (v5 >= result)
    {
      v7[2] = result;

      return v7;
    }
  }

  __break(1u);
  return result;
}

id CTRunRef.PartialRunView.__allocating_init(run:range:textPosition:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_run] = a1;
  v12 = &v11[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_range];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_textPosition];
  *v13 = a4;
  v13[1] = a5;
  v17.receiver = v11;
  v17.super_class = v5;
  v14 = a1;
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v15 setOpaque:{0, v17.receiver, v17.super_class}];

  return v15;
}

id CTRunRef.PartialRunView.init(run:range:textPosition:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_run] = a1;
  v7 = &v5[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_range];
  *v7 = a2;
  *(v7 + 1) = a3;
  v8 = &v5[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_textPosition];
  *v8 = a4;
  v8[1] = a5;
  v12.receiver = v5;
  v12.super_class = type metadata accessor for CTRunRef.PartialRunView();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setOpaque:{0, v12.receiver, v12.super_class}];

  return v10;
}

void CTRunRef.PartialRunView.draw(_:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v16.receiver = v4;
  v16.super_class = type metadata accessor for CTRunRef.PartialRunView();
  objc_msgSendSuper2(&v16, "drawRect:", a1, a2, a3, a4);
  v9 = UIGraphicsGetCurrentContext();
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() blueColor];
    v12 = [v11 CGColor];

    CGContextSetFillColorWithColor(v10, v12);
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    Height = CGRectGetHeight(v17);
    CGAffineTransformMakeTranslation(&v15, 0.0, Height + *&v4[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_textPosition + 8]);
    CGAffineTransformScale(&v14, &v15, 1.0, -1.0);
    v15 = v14;
    CGContextSetTextMatrix(v10, &v15);
    CTRunDraw(*&v4[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_run], v10, *&v4[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_range]);
  }
}

id CTRunRef.PartialRunView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CTRunRef.PartialRunView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_8D7DCC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20958);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_8D7F28(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_8D805C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20930);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20938) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20938) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_8D8260(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *sub_8D835C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20920);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20928);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_8D84FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

CGPoint **sub_8D86D8(CGPoint **result, const __CTFrame *a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  if (result)
  {
    _s3__C7CGPointVMa_1(0);
    v5 = sub_AB97D0();
    *&v5[1].x = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v7 = 0.0;
  v6[0] = v5 + 2;
  v6[1] = v4;
  result = sub_8D6A78(v6, &v7, a2);
  if (v2)
  {
    if (*&v7 <= v4)
    {
      v5[1].x = v7;

      return v5;
    }

    goto LABEL_12;
  }

  if (*&v7 <= v4)
  {
    v5[1].x = v7;
    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_8CAE1C();
  v13 = sub_ABA150();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_237;
  v14 = _Block_copy(aBlock);

  sub_AB7C30();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_8CB3AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E21220);
  sub_8CB404();
  sub_ABABB0();
  sub_ABA160();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t block_copy_helper_237(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static OS_dispatch_queue.syncOnMainIfNeeded(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_8CAE1C();
  v5 = sub_ABA150();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_2D4D0;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1822E0;
  v8[3] = &block_descriptor_3_10;
  v7 = _Block_copy(v8);

  dispatch_sync(v5, v7);

  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t OS_dispatch_queue.asyncAfter(_:block:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB7C10();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7C50();
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB7C80();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  sub_AB7C70();
  sub_AB7CE0();
  v17 = *(v11 + 8);
  v17(v14, v10);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_6_5;
  v18 = _Block_copy(aBlock);

  sub_AB7C30();
  v24 = _swiftEmptyArrayStorage;
  sub_8CB3AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E21220);
  sub_8CB404();
  sub_ABABB0();
  sub_ABA110();
  _Block_release(v18);
  (*(v23 + 8))(v6, v4);
  (*(v21 + 8))(v9, v22);
  v17(v16, v10);
}

uint64_t OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB7C80();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v14 - v9;
  v11 = sub_AB7C10();
  __chkstk_darwin(v11);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_9_6;
  _Block_copy(aBlock);
  v14[1] = _swiftEmptyArrayStorage;
  sub_8CB3AC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E21220);
  sub_8CB404();
  sub_ABABB0();
  sub_AB7CB0();
  swift_allocObject();
  sub_AB7C90();

  sub_AB7C70();
  sub_AB7CE0();
  v12 = *(v5 + 8);
  v12(v8, v4);
  sub_ABA120();

  return (v12)(v10, v4);
}

uint64_t OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)()
{
  v0 = sub_AB7C80();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  sub_AB7C70();
  sub_AB7CE0();
  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_ABA120();
  return (v7)(v6, v0);
}

uint64_t static OS_dispatch_queue.UIFeedbackDeadline.getter()
{
  v0 = sub_AB7C80();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB7C70();
  sub_AB7CE0();
  return (*(v1 + 8))(v3, v0);
}

void NSFileManager.createDirectoryIfNeeded(at:)()
{
  v1 = v0;
  sub_AB3160();
  LOBYTE(v15) = 0;
  v2 = sub_AB9260();

  v3 = [v0 fileExistsAtPath:v2 isDirectory:&v15];

  if (v3)
  {
    if (v15)
    {
      return;
    }

    sub_AB30F0(v15);
    v6 = v5;
    v15 = 0;
    v7 = [v0 removeItemAtURL:v5 error:&v15];

    v8 = v15;
    if (!v7)
    {
      goto LABEL_7;
    }

    v9 = v15;
  }

  sub_AB30F0(v4);
  v11 = v10;
  v15 = 0;
  v12 = [v1 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v15];

  v8 = v15;
  if (v12)
  {
    v13 = v15;
    return;
  }

LABEL_7:
  v14 = v8;
  sub_AB3050();

  swift_willThrow();
}

Swift::tuple_exists_Bool_isDirectory_Bool __swiftcall NSFileManager.directoryExists(at:)(Swift::String at)
{
  v7 = 0;
  v2 = sub_AB9260();
  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v7];

  v5 = v3;
  result.isDirectory = v4;
  result.exists = v5;
  return result;
}

uint64_t NSFileManager.groupCacheURL(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20968);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB9260();
  v15 = [v2 containerURLForSecurityApplicationGroupIdentifier:v14];

  if (v15)
  {
    sub_AB3150();

    v16 = *(v11 + 56);
    v16(v7, 0, 1, v10);
  }

  else
  {
    v16 = *(v11 + 56);
    v16(v7, 1, 1, v10);
  }

  sub_8D9808(v7, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_8D9878(v9);
    v17 = 1;
  }

  else
  {
    sub_AB3110();
    v18 = *(v11 + 8);
    v18(v9, v10);
    sub_AB3110();
    v18(v13, v10);
    v17 = 0;
  }

  return (v16)(a1, v17, 1, v10);
}

uint64_t sub_8D9808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20968);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8D9878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_8D98E4()
{
  result = qword_E20970;
  if (!qword_E20970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E20970);
  }

  return result;
}

uint64_t String.sha256Data.getter()
{
  v0 = sub_AB8F60();
  v17 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_AB8F40();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB9300();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB92F0();
  v9 = sub_AB92B0();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v11 >> 60 != 15)
  {
    sub_90090(v9, v11);
    sub_8DA5AC(&qword_E20978, &type metadata accessor for SHA256);
    sub_AB8F30();
    sub_90090(v9, v11);
    sub_8DA164(v9, v11, v2);
    sub_466A4(v9, v11);
    sub_466A4(v9, v11);
    v12 = v18;
    sub_AB8F20();
    (*(v17 + 8))(v2, v0);
    v22 = v3;
    v23 = sub_8DA5AC(&qword_E20980, &type metadata accessor for SHA256Digest);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
    v14 = v19;
    (*(v19 + 16))(boxed_opaque_existential_0, v12, v3);
    __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_AB2E00();
    sub_466A4(v9, v11);
    (*(v14 + 8))(v12, v3);
    v9 = v20;
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  return v9;
}

uint64_t Data.Digest.SHA256.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_AB8F60();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8DA5AC(&qword_E20978, &type metadata accessor for SHA256);
  sub_AB8F30();
  sub_90090(a1, a2);
  sub_8DA164(a1, a2, v7);
  sub_466B8(a1, a2);
  sub_AB8F20();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Data.Digest.MD5.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_AB8F80();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8DA5AC(&qword_E20988, &type metadata accessor for Insecure.MD5);
  sub_AB8F30();
  sub_90090(a1, a2);
  sub_8DA388(a1, a2, v7);
  sub_466B8(a1, a2);
  sub_AB8F20();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Data.Digest.SHA512.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_AB8F70();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8DA5AC(&qword_E20990, &type metadata accessor for SHA512);
  sub_AB8F30();
  sub_90090(a1, a2);
  sub_8DA5F4(a1, a2, v7);
  sub_466B8(a1, a2);
  sub_AB8F20();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_8DA164(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_AB8F60();
      sub_8DA5AC(&qword_E20978, &type metadata accessor for SHA256);
      return sub_AB8F10();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_8DA8E4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_E20978, &type metadata accessor for SHA256);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_8DA8E4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_E20978, &type metadata accessor for SHA256);
  }

  sub_AB8F60();
  sub_8DA5AC(&qword_E20978, &type metadata accessor for SHA256);
  return sub_AB8F10();
}

uint64_t sub_8DA388(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_AB8F80();
      sub_8DA5AC(&qword_E20988, &type metadata accessor for Insecure.MD5);
      return sub_AB8F10();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_8DA8E4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for Insecure.MD5, &qword_E20988, &type metadata accessor for Insecure.MD5);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_8DA8E4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for Insecure.MD5, &qword_E20988, &type metadata accessor for Insecure.MD5);
  }

  sub_AB8F80();
  sub_8DA5AC(&qword_E20988, &type metadata accessor for Insecure.MD5);
  return sub_AB8F10();
}

uint64_t sub_8DA5AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8DA5F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_AB8F70();
      sub_8DA5AC(&qword_E20990, &type metadata accessor for SHA512);
      return sub_AB8F10();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_8DA8E4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_E20990, &type metadata accessor for SHA512);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_8DA8E4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_E20990, &type metadata accessor for SHA512);
  }

  sub_AB8F70();
  sub_8DA5AC(&qword_E20990, &type metadata accessor for SHA512);
  return sub_AB8F10();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO_2(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_8DA834(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_8DA888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_8DA8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_AB2D10();
  if (!result || (result = sub_AB2D40(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_AB2D30();
      a5(0);
      sub_8DA5AC(a6, a7);
      return sub_AB8F10();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_8DA9C8(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
LABEL_20:
    a3 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
LABEL_24:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v5;
    *(result + 24) = a5 < 1;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a4 + a5;
    v7 = __OFADD__(a4, a5);
    if (v5 > v6)
    {
      v6 = v5;
    }

    v8 = v6 - v5;
    v9 = 1;
    while (1)
    {
      if (a5 < 1)
      {
        v5 = 0;
        a3 = 0;
        goto LABEL_24;
      }

      if (v7)
      {
        break;
      }

      if (v5 - v6 + v9 == 1)
      {
        v5 = v6;
        a3 = v8;
        goto LABEL_24;
      }

      *a2 = v5 + v9 - 1;
      if (a3 == v9)
      {
        v5 += v9;
        goto LABEL_24;
      }

      ++a2;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array.append(_:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10(v7);
  if (v11)
  {
    (*(v6 + 16))(v9, a1, v5);
    sub_AB9820();
  }

  return v11 & 1;
}

uint64_t Array.append<A>(contentsOf:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11(v8);
  if (v12)
  {
    (*(v7 + 16))(v10, a1, a5);
    sub_AB9810();
  }

  return v12 & 1;
}

uint64_t Array.item(where:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_AB9870();
  swift_getWitnessTable();
  sub_AB9CC0();
  if (v6)
  {
    v4 = 1;
  }

  else
  {
    sub_AB9880();
    v4 = 0;
  }

  return (*(*(a1 - 8) + 56))(a2, v4, 1, a1);
}

Swift::Void __swiftcall Array.moveItem(at:to:)(Swift::Int at, Swift::Int to)
{
  v3 = *(v2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(at);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v10 - v8;
  sub_AB9840();
  (*(v4 + 16))(v6, v9, v3);
  sub_AB9830();
  (*(v4 + 8))(v9, v3);
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_AB9870();
  swift_getWitnessTable();
  sub_AB9C50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20998);
  if (sub_AB9DE0())
  {
    sub_AB9880();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return (*(*(a1 - 8) + 56))(a2, v4, 1, a1);
}

uint64_t Array.inserting(separator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = a1;
  return Array.inserting(separator:)(sub_8DB000, v4, a2, a3);
}

uint64_t Array.inserting(separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_AB9800();
  if (result < 2)
  {

    return a3;
  }

  if (result + 0x4000000000000000 >= 0)
  {
    v12[8] = 0;
    v12[9] = 2 * result - 1;
    __chkstk_darwin(result);
    v12[2] = a4;
    v12[3] = a3;
    v12[4] = a1;
    v12[5] = a2;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20998);
    v10 = sub_8DB5AC();
    return sub_8DB18C(sub_8DB144, v12, v9, a4, &type metadata for Never, v10, &protocol witness table for Never, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_8DB144(void *a1)
{
  if (*a1)
  {
    return (*(v1 + 32))();
  }

  else
  {
    return sub_AB9880();
  }
}

uint64_t sub_8DB18C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_AB9C70();
  if (!v19)
  {
    return sub_AB97C0();
  }

  v41 = v19;
  v45 = sub_ABAF10();
  v32 = sub_ABAF20();
  sub_ABAEB0(v41);
  result = sub_AB9C60();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_AB9D80();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_ABAF00();
      result = sub_AB9CB0();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_8DB5AC()
{
  result = qword_E209A0;
  if (!qword_E209A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E20998);
    sub_8DB638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E209A0);
  }

  return result;
}

unint64_t sub_8DB638()
{
  result = qword_E209A8;
  if (!qword_E209A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E209A8);
  }

  return result;
}

uint64_t Set.insert(_:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 16);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12(v9))
  {
    (*(v8 + 16))(v11, a2, v7);
    v13 = sub_AB9BA0();
    (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(a1, 1, 1, v7);
    v13 = 0;
  }

  return v13 & 1;
}

id NSBundle.displayName.getter()
{
  result = [v0 localizedInfoDictionary];
  if (result)
  {
    v2 = result;
    v3 = sub_AB8FF0();

    if (*(v3 + 16) && (v4 = sub_8E0ACC(0xD000000000000013, 0x8000000000B79190, &String.hash(into:), sub_2ECE20), (v5 & 1) != 0))
    {
      sub_808B0(*(v3 + 56) + 32 * v4, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t NSBundle.exportedTypeDeclarations.getter()
{
  v1 = sub_AB9260();
  v2 = [v0 objectForInfoDictionaryKey:v1];

  if (v2)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E209B0);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_12E1C(v7, &qword_E21230);
    return 0;
  }
}

uint64_t ClosedRange.clamp(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ABB490();
  sub_ABB4A0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ClosedRange<>.scaledValue(relativeTo:relativeValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v36 = a4;
  v31 = a2;
  v7 = *(*(a4 + 16) + 8);
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  __chkstk_darwin(v10);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  __chkstk_darwin(v15);
  v37 = &v30 - v16;
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  __chkstk_darwin(v20);
  v22 = &v30 - v21;
  v34 = a3;
  v35 = v7;
  v23 = *(v7 + 8);
  v33 = a1;
  v25 = v24;
  sub_ABB010();
  swift_getAssociatedConformanceWitness();
  sub_ABB460();
  sub_ABB390();
  LOBYTE(v7) = sub_AB9150();
  v26 = *(v25 + 8);
  v26(v19, v8);
  if (v7)
  {
    ClosedRange.clamp(_:)(v31, v34);
    sub_ABB010();
    v30 = v23;
    sub_AB90C0();
    v26(v14, v8);
    v27 = v32;
    sub_ABB010();
    v28 = v37;
    sub_AB9C40();
    v26(v27, v8);
    sub_ABB000();
    v26(v14, v8);
    v26(v28, v8);
    v26(v19, v8);
    return (v26)(v22, v8);
  }

  else
  {
    v26(v22, v8);
    return (*(v25 + 16))(v38, v39, v8);
  }
}

unint64_t Data.hexRepresentation.getter(uint64_t a1, unint64_t a2)
{
  sub_90090(a1, a2);
  result = sub_8DC260(a1, a2, a1, a2);
  if (!v5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_8DBF70@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v8 = sub_AB9300();
  result = __chkstk_darwin(v8 - 8);
  v10 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(a3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v10 != 2)
  {
    swift_slowAlloc();
    goto LABEL_42;
  }

  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (v14)
  {
    __break(1u);
LABEL_8:
    LODWORD(v11) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v11 = v11;
  }

LABEL_10:
  if (v11 + 0x4000000000000000 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = swift_slowAlloc();
  if (v10 != 2)
  {
    if (v10 == 1)
    {
      LODWORD(v15) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v15 = v15;
      goto LABEL_17;
    }

    v15 = BYTE6(a3);
    if (BYTE6(a3))
    {
LABEL_21:
      v18 = v15 - 1;
      if (v15 - 1 >= 0x4000000000000000)
      {
        v19 = 0x4000000000000000;
      }

      else
      {
        v19 = v15 - 1;
      }

      if (v15 <= 0x20)
      {
        goto LABEL_29;
      }

      if (v18 >= 0x4000000000000000)
      {
        v18 = 0x4000000000000000;
      }

      if (result >= a1 + v18 + 1 || result + 2 * v18 + 2 <= a1)
      {
        v21 = v19 + 1;
        v22 = v21 & 0x1F;
        if ((v21 & 0x1F) == 0)
        {
          v22 = 32;
        }

        v20 = v21 - v22;
        v23 = (result + 32);
        v24 = (a1 + 16);
        v25.i64[0] = 0x9F9F9F9F9F9F9F9FLL;
        v25.i64[1] = 0x9F9F9F9F9F9F9F9FLL;
        v26.i64[0] = 0x5757575757575757;
        v26.i64[1] = 0x5757575757575757;
        v27.i64[0] = 0x3030303030303030;
        v27.i64[1] = 0x3030303030303030;
        v28.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v28.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        v29.i64[0] = 0x909090909090909;
        v29.i64[1] = 0x909090909090909;
        v30 = v20;
        do
        {
          v31 = v24[-1];
          v32.i64[0] = 0x5757575757575757;
          v32.i64[1] = 0x5757575757575757;
          v33.i64[0] = 0x5757575757575757;
          v33.i64[1] = 0x5757575757575757;
          v34.i64[0] = 0x3030303030303030;
          v34.i64[1] = 0x3030303030303030;
          v35.i64[0] = 0x3030303030303030;
          v35.i64[1] = 0x3030303030303030;
          v50.val[0] = vbslq_s8(vcgtq_u8(v31, v25), vsraq_n_u8(v32, v31, 4uLL), vsraq_n_u8(v34, v31, 4uLL));
          v36 = vandq_s8(v31, v28);
          v50.val[1] = vbslq_s8(vcgtq_u8(v36, v29), vaddq_s8(v36, v26), vorrq_s8(v36, v27));
          v49.val[0] = vbslq_s8(vcgtq_u8(*v24, v25), vsraq_n_u8(v33, *v24, 4uLL), vsraq_n_u8(v35, *v24, 4uLL));
          v37 = vandq_s8(*v24, v28);
          v38 = v23 - 32;
          vst2q_s8(v38, v50);
          v49.val[1] = vbslq_s8(vcgtq_u8(v37, v29), vaddq_s8(v37, v26), vorrq_s8(v37, v27));
          vst2q_s8(v23, v49);
          v23 += 64;
          v24 += 2;
          v30 -= 32;
        }

        while (v30);
      }

      else
      {
LABEL_29:
        v20 = 0;
      }

      v39 = v20 - 0x4000000000000000;
      v40 = (result + 2 * v20 + 1);
      v41 = v15 - v20;
      v42 = (a1 + v20);
      while (v39)
      {
        v44 = *v42++;
        v43 = v44;
        v45 = (v44 >> 4) + 87;
        v46 = (v44 >> 4) | 0x30;
        if (v44 > 0x9F)
        {
          LOBYTE(v46) = v45;
        }

        *(v40 - 1) = v46;
        if ((v43 & 0xFu) <= 9)
        {
          v47 = v43 & 0xF | 0x30;
        }

        else
        {
          v47 = (v43 & 0xF) + 87;
        }

        *v40 = v47;
        v40 += 2;
        ++v39;
        if (!--v41)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    sub_AB92F0();
    result = sub_AB91D0();
    *a4 = result;
    a4[1] = v48;
    return result;
  }

  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  v14 = __OFSUB__(v16, v17);
  v15 = v16 - v17;
  if (!v14)
  {
LABEL_17:
    if ((v15 & 0x8000000000000000) != 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (!v15)
    {
      goto LABEL_42;
    }

    goto LABEL_21;
  }

LABEL_48:
  __break(1u);
  return result;
}

unint64_t sub_8DC260(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v13, 0, 14);
LABEL_10:
      sub_8DBF70(v13, a3, a4, &v14);
      result = sub_466B8(a3, a4);
      if (!v4)
      {
        return v14;
      }

      return result;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_10;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  v10 = sub_8E1570(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
  if (v4)
  {
    return sub_466B8(a3, a4);
  }

  v12 = v10;
  sub_466B8(a3, a4);
  return v12;
}

uint64_t sub_8DC404()
{
  v0 = sub_8C8F78(&off_D43FB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20AE0);
  result = swift_arrayDestroy();
  static Data.Hexadecimal.hexToDecimalMapping = v0;
  return result;
}

uint64_t *Data.Hexadecimal.hexToDecimalMapping.unsafeMutableAddressor()
{
  if (qword_E1FE30 != -1)
  {
    swift_once();
  }

  return &static Data.Hexadecimal.hexToDecimalMapping;
}

uint64_t static Data.Hexadecimal.hexToDecimalMapping.getter()
{
  if (qword_E1FE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Data.Hexadecimal.hexToDecimalMapping.setter(uint64_t a1)
{
  if (qword_E1FE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Data.Hexadecimal.hexToDecimalMapping = a1;
}

uint64_t (*static Data.Hexadecimal.hexToDecimalMapping.modify())()
{
  if (qword_E1FE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t Data.init(hexString:)(uint64_t a1, void *a2)
{
  if (sub_AB9420())
  {
    v17[0] = 48;
    v17[1] = 0xE100000000000000;
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    sub_AB94A0(v19);
  }

  v4 = 0;
  LOBYTE(v5) = 0;
  v18 = xmmword_B07530;
  while (1)
  {
    v7 = sub_AB94B0();
    if (!v8)
    {
      break;
    }

    v9 = v7;
    v10 = v8;
    if (qword_E1FE30 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = static Data.Hexadecimal.hexToDecimalMapping;
    if (!*(static Data.Hexadecimal.hexToDecimalMapping + 16) || (v12 = sub_8E0ACC(v9, v10, &Character.hash(into:), sub_2ECE20), (v13 & 1) == 0))
    {
      swift_endAccess();

      sub_466B8(v18, *(&v18 + 1));
      return 0;
    }

    v14 = *(*(v11 + 56) + v12);
    swift_endAccess();

    if (v4)
    {
      v5 = v14 + v5;
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_17;
      }

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E209B8);
      v17[3] = v15;
      v17[4] = sub_36A00(&qword_E209C0, &qword_E209B8);
      LOBYTE(v17[0]) = v5;
      __swift_project_boxed_opaque_existential_1(v17, v15);
      sub_AB3220();
      __swift_destroy_boxed_opaque_existential_0(v17);
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = 16 * (v14 & 0xF) + v5;
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_18;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }
  }

  return v18;
}

uint64_t sub_8DC8F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E209C8);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_AB35D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB36A0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v9, static Calendar.musicDefaultCalendar);
  v12 = __swift_project_value_buffer(v7, static Calendar.musicDefaultCalendar);
  (*(v4 + 104))(v6, enum case for Calendar.Identifier.gregorian(_:), v3);
  sub_AB35E0();
  (*(v4 + 8))(v6, v3);
  sub_AB3740();
  v13 = sub_AB3760();
  result = (*(*(v13 - 8) + 48))(v2, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_AB3680();
    return (*(v8 + 32))(v12, v11, v7);
  }

  return result;
}

uint64_t Calendar.musicDefaultCalendar.unsafeMutableAddressor()
{
  if (qword_E1FE38 != -1)
  {
    swift_once();
  }

  v0 = sub_AB36A0();

  return __swift_project_value_buffer(v0, static Calendar.musicDefaultCalendar);
}

uint64_t static Calendar.musicDefaultCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E1FE38 != -1)
  {
    swift_once();
  }

  v2 = sub_AB36A0();
  v3 = __swift_project_value_buffer(v2, static Calendar.musicDefaultCalendar);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static Calendar.date(forReleaseYear:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E209C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E209D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_AB2DC0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = sub_AB3430();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }

  else
  {
    if (qword_E1FE38 != -1)
    {
      swift_once();
    }

    v17 = sub_AB36A0();
    __swift_project_value_buffer(v17, static Calendar.musicDefaultCalendar);
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    v18 = sub_AB3760();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    sub_AB2DA0();
    sub_AB3650();
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t static FormatStyle<>.musicReleaseYear.getter()
{
  v0 = sub_AB3760();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB32F0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3310();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2F90();
  sub_AB32E0();
  sub_AB32D0();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  if (qword_E1FE38 != -1)
  {
    swift_once();
  }

  v9 = sub_AB36A0();
  __swift_project_value_buffer(v9, static Calendar.musicDefaultCalendar);
  sub_AB3670();
  return sub_AB3300();
}

id static NSDateFormatter.iso8601ExtendedDateFormatter.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E209C8);
  __chkstk_darwin();
  v1 = &v13 - v0;
  v2 = sub_AB35C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateFormatter) init];
  sub_AB3480();
  isa = sub_AB34E0().super.isa;
  (*(v3 + 8))(v5, v2);
  [v6 setLocale:isa];

  v8 = sub_AB9260();
  [v6 setDateFormat:v8];

  sub_AB3740();
  v9 = sub_AB3760();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v1, 1, v9) != 1)
  {
    v11 = sub_AB3750().super.isa;
    (*(v10 + 8))(v1, v9);
  }

  [v6 setTimeZone:v11];

  return v6;
}

void sub_8DD408()
{
  v0 = sub_AB3760();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setDateStyle:3];
  if (qword_E1FE38 != -1)
  {
    swift_once();
  }

  v5 = sub_AB36A0();
  __swift_project_value_buffer(v5, static Calendar.musicDefaultCalendar);
  sub_AB3670();
  isa = sub_AB3750().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone:isa];

  static NSDateFormatter.releaseDateFormatter = v4;
}

uint64_t *NSDateFormatter.releaseDateFormatter.unsafeMutableAddressor()
{
  if (qword_E1FE40 != -1)
  {
    swift_once();
  }

  return &static NSDateFormatter.releaseDateFormatter;
}

id sub_8DD5E4()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setUnitsStyle:3];
  result = [v0 setAllowedUnits:96];
  static NSDateFormatter.collectionsDurationFormatter = v0;
  return result;
}

uint64_t *NSDateFormatter.collectionsDurationFormatter.unsafeMutableAddressor()
{
  if (qword_E1FE48 != -1)
  {
    swift_once();
  }

  return &static NSDateFormatter.collectionsDurationFormatter;
}

uint64_t Dictionary.filterIncludingPairsWithStringValues()(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = *(a3 - 8);
  __chkstk_darwin();
  v66 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = v53 - v9;
  v54 = *(v10 - 8);
  __chkstk_darwin();
  v74 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = v53 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = sub_ABA9C0();
  v14 = *(v63 - 8);
  __chkstk_darwin();
  v69 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = v53 - v16;
  swift_getTupleTypeMetadata2();
  v17 = sub_AB97C0();
  v56 = a4;
  v18 = sub_8E116C(v17, a2, &type metadata for String, a4);

  v77 = v18;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = sub_ABAF90();
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v65 = v19 | 0x8000000000000000;
  }

  else
  {
    v23 = -1 << *(a1 + 32);
    v21 = ~v23;
    v20 = a1 + 64;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(a1 + 64);
    v65 = a1;
  }

  v71 = (v54 + 32);
  v70 = (v55 + 32);
  v61 = TupleTypeMetadata2 - 8;
  v53[1] = v21;
  v26 = (v21 + 64) >> 6;
  v67 = (v54 + 16);
  v53[2] = v55 + 16;
  v59 = (v54 + 8);
  v60 = (v14 + 32);
  v58 = (v55 + 8);

  v28 = 0;
  v29 = v66;
  v30 = v69;
  v64 = v20;
  v31 = v65;
  if ((v65 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (sub_ABAFC0())
  {
    sub_ABB380();
    swift_unknownObjectRelease();
    v32 = v57;
    sub_ABB380();
    swift_unknownObjectRelease();
    v33 = v28;
    v73 = v22;
    goto LABEL_20;
  }

  v34 = 1;
  v72 = v28;
  v73 = v22;
  while (1)
  {
    v29 = v66;
LABEL_22:
    v43 = *(TupleTypeMetadata2 - 8);
    (*(v43 + 56))(v30, v34, 1, TupleTypeMetadata2);
    v44 = v62;
    (*v60)(v62, v30, v63);
    if ((*(v43 + 48))(v44, 1, TupleTypeMetadata2) == 1)
    {
      sub_2BB88();
      return v77;
    }

    v45 = *(TupleTypeMetadata2 + 48);
    (*v71)(v74, v44, a2);
    (*v70)(v29, &v44[v45], a3);
    if (swift_dynamicCast())
    {
      v46 = v75;
      v47 = v76;
LABEL_27:
      v51 = v68;
      v22 = v73;
      (*v58)(v29, a3);
      v52 = v74;
      (*v67)(v51, v74, a2);
      v75 = v46;
      v76 = v47;
      sub_AB9080();
      sub_AB90B0();
      result = (*v59)(v52, a2);
      v28 = v72;
      v30 = v69;
      goto LABEL_29;
    }

    sub_13C80(0, &qword_E209D8);
    if (swift_dynamicCast())
    {
      v48 = v75;
      v49 = [v75 description];
      v46 = sub_AB92A0();
      v47 = v50;

      v29 = v66;
      goto LABEL_27;
    }

    (*v59)(v74, a2);
    result = (*v58)(v29, a3);
    v28 = v72;
    v22 = v73;
LABEL_29:
    v20 = v64;
    v31 = v65;
    if ((v65 & 0x8000000000000000) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v35 = v22;
    v33 = v28;
    if (!v22)
    {
      break;
    }

LABEL_19:
    v73 = (v35 - 1) & v35;
    v39 = __clz(__rbit64(v35)) | (v33 << 6);
    v40 = v31;
    (*(v54 + 16))(v68, *(v31 + 48) + *(v54 + 72) * v39, a2);
    v41 = *(v40 + 56) + *(v55 + 72) * v39;
    v32 = v57;
    (*(v55 + 16))(v57, v41, a3);
LABEL_20:
    v42 = *(TupleTypeMetadata2 + 48);
    v30 = v69;
    (*v71)();
    (*v70)(&v30[v42], v32, a3);
    v34 = 0;
    v72 = v33;
  }

  if (v26 <= v28 + 1)
  {
    v36 = v28 + 1;
  }

  else
  {
    v36 = v26;
  }

  v37 = v36 - 1;
  v38 = v28;
  while (1)
  {
    v33 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v33 >= v26)
    {
      v72 = v37;
      v73 = 0;
      v34 = 1;
      goto LABEL_22;
    }

    v35 = *(v20 + 8 * v33);
    ++v38;
    if (v35)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t Dictionary.filteredDictionary(_:)(uint64_t (*a1)(char *, char *), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a1;
  v62 = a2;
  sub_ABA9C0();
  __chkstk_darwin();
  v53 = v51 - v10;
  v56 = *(a5 - 8);
  __chkstk_darwin();
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = v51 - v13;
  v55 = *(a4 - 8);
  __chkstk_darwin();
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = v51 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v69 = sub_ABA9C0();
  v18 = *(v69 - 8);
  __chkstk_darwin();
  v68 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = v51 - v20;
  swift_getTupleTypeMetadata2();
  v21 = sub_AB97C0();
  v74 = a4;
  v54 = a6;
  v22 = sub_8E116C(v21, a4, a5, a6);

  v78 = v22;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v23 = sub_ABAF90();
    v24 = 0;
    v25 = 0;
    v70 = v23 | 0x8000000000000000;
    v71 = 0;
  }

  else
  {
    v26 = -1 << *(a3 + 32);
    v24 = ~v26;
    v27 = *(a3 + 64);
    v70 = a3;
    v71 = a3 + 64;
    v28 = -v26;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v25 = v29 & v27;
  }

  v73 = (v55 + 32);
  v30 = (v56 + 32);
  v66 = TupleTypeMetadata2 - 8;
  v51[1] = v24;
  v31 = (v24 + 64) >> 6;
  v63 = (v56 + 16);
  v64 = (v55 + 16);
  v65 = (v18 + 32);
  v59 = (v55 + 8);
  v60 = (v56 + 8);
  v52 = (v56 + 56);

  v33 = 0;
  v75 = v12;
  v57 = v15;
  while (1)
  {
    v72 = v25;
    if ((v70 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_ABAFC0())
    {
      sub_ABB380();
      swift_unknownObjectRelease();
      v42 = v58;
      sub_ABB380();
      swift_unknownObjectRelease();
      v35 = v33;
      v77 = v72;
      goto LABEL_21;
    }

    v45 = 1;
    v37 = v33;
    v77 = v72;
    v44 = v68;
LABEL_22:
    v46 = *(TupleTypeMetadata2 - 8);
    (*(v46 + 56))(v44, v45, 1, TupleTypeMetadata2);
    v47 = v67;
    (*v65)();
    if ((*(v46 + 48))(v47, 1, TupleTypeMetadata2) == 1)
    {
      sub_2BB88();
      return v78;
    }

    v48 = *(TupleTypeMetadata2 + 48);
    v49 = v74;
    (*v73)(v15, v47, v74);
    (*v30)(v12, &v47[v48], a5);
    if (v61(v15, v12))
    {
      (*v64)(v76, v15, v49);
      v50 = v53;
      (*v63)(v53, v75, a5);
      (*v52)(v50, 0, 1, a5);
      sub_AB9080();
      v12 = v75;
      sub_AB90B0();
    }

    (*v60)(v12, a5);
    result = (*v59)(v15, v49);
    v33 = v37;
    v25 = v77;
  }

  v34 = v25;
  v35 = v33;
  if (v25)
  {
LABEL_18:
    v77 = (v34 - 1) & v34;
    v39 = __clz(__rbit64(v34)) | (v35 << 6);
    v40 = v70;
    (*(v55 + 16))(v76, *(v70 + 48) + *(v55 + 72) * v39, v74);
    v41 = *(v40 + 56) + *(v56 + 72) * v39;
    v42 = v58;
    (*(v56 + 16))(v58, v41, a5);
LABEL_21:
    v43 = *(TupleTypeMetadata2 + 48);
    v44 = v68;
    (*v73)();
    (*v30)(&v44[v43], v42, a5);
    v45 = 0;
    v37 = v35;
    v12 = v75;
    v15 = v57;
    goto LABEL_22;
  }

  if (v31 <= v33 + 1)
  {
    v36 = v33 + 1;
  }

  else
  {
    v36 = v31;
  }

  v37 = v36 - 1;
  v38 = v33;
  while (1)
  {
    v35 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v35 >= v31)
    {
      v77 = 0;
      v45 = 1;
      v44 = v68;
      goto LABEL_22;
    }

    v34 = *(v71 + 8 * v35);
    ++v38;
    if (v34)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t IndexPath.safeSection.getter()
{
  if ((sub_AB3800() - 1) > 1)
  {

    return sub_AB2A10();
  }

  else
  {

    return sub_AB3830();
  }
}

uint64_t IndexPath.safeSection.setter()
{
  result = sub_AB3800();
  if ((result - 1) <= 1)
  {

    return sub_AB3840();
  }

  return result;
}

uint64_t (*IndexPath.safeSection.modify(uint64_t *a1))()
{
  a1[1] = v1;
  if ((sub_AB3800() - 1) > 1)
  {
    v3 = sub_AB2A10();
  }

  else
  {
    v3 = sub_AB3830();
  }

  *a1 = v3;
  return sub_8DE6C8;
}

uint64_t sub_8DE6C8()
{
  result = sub_AB3800();
  if ((result - 1) <= 1)
  {
    return sub_AB3840();
  }

  return result;
}

uint64_t IndexPath.safeItem.getter()
{
  if (sub_AB3800() > 1)
  {

    return sub_AB3830();
  }

  else
  {

    return sub_AB2A10();
  }
}

unint64_t IndexPath.safeItem.setter()
{
  result = sub_AB3800();
  if (result >= 2)
  {

    return sub_AB3840();
  }

  return result;
}

unint64_t (*IndexPath.safeItem.modify(uint64_t *a1))()
{
  a1[1] = v1;
  if (sub_AB3800() > 1)
  {
    v3 = sub_AB3830();
  }

  else
  {
    v3 = sub_AB2A10();
  }

  *a1 = v3;
  return sub_8DE800;
}

unint64_t sub_8DE800()
{
  result = sub_AB3800();
  if (result >= 2)
  {
    return sub_AB3840();
  }

  return result;
}

Swift::String __swiftcall String.trim()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_AB2B70();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2B20();
  v15._countAndFlagsBits = 41154;
  v15._object = 0xA200000000000000;
  sub_AB2B40(v15);
  v14[0] = v3;
  v14[1] = v2;
  sub_8E1458();
  v8 = sub_ABAAA0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String __swiftcall String.removeSpaces()()
{
  sub_8E1458();
  v0 = sub_ABAAB0();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.replace(usingRegexPattern:with:options:)(Swift::String usingRegexPattern, Swift::String with, NSRegularExpressionOptions options)
{
  v5 = v4;
  v6 = v3;
  object = usingRegexPattern._object;
  countAndFlagsBits = usingRegexPattern._countAndFlagsBits;
  objc_allocWithZone(NSRegularExpression);

  v10 = sub_8E0998(countAndFlagsBits, object, options);
  if (v10)
  {
    v11 = v10;
    v12 = sub_AB9420();
    v13 = sub_AB9260();
    v14 = sub_AB9260();
    v15 = [v11 stringByReplacingMatchesInString:v13 options:0 range:0 withTemplate:{v12, v14}];

    v6 = sub_AB92A0();
    v5 = v16;
  }

  else
  {
  }

  v17 = v6;
  v18 = v5;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

Swift::String __swiftcall String.insensitiveCompareString()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E209E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = 0xE000000000000000;
  v29 = 0;
  v30 = 0xE000000000000000;
  v8 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v25 = v3;
  v26 = v2;
  v27 = 0;
  v28 = v8;

  v9 = sub_AB94B0();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    do
    {
      if ((sub_AB9100() & 1) == 0)
      {
        v31._countAndFlagsBits = v11;
        v31._object = v12;
        sub_AB9490(v31);
      }

      v11 = sub_AB94B0();
      v12 = v13;
    }

    while (v13);
    v14 = v29;
    v7 = v30;
  }

  else
  {
    v14 = 0;
  }

  v25 = v14;
  v26 = v7;
  sub_8E1458();
  v15 = sub_ABAA80();
  v17 = v16;

  v29 = v15;
  v30 = v17;
  sub_AB3550();
  v18 = sub_AB35C0();
  (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
  v19 = sub_ABAB00();
  v21 = v20;
  sub_12E1C(v6, &qword_E209E8);

  v22 = v19;
  v23 = v21;
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

id String.BOOLValue.getter()
{
  v0 = sub_AB9260();
  v1 = [v0 BOOLValue];

  return v1;
}

uint64_t String.containsExcessiveHeightCharacters.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E209F0);
  __chkstk_darwin(v4 - 8);
  v6 = v25 - v5;
  v7 = sub_AB2B70();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v25 - v13;
  __chkstk_darwin(v12);
  v16 = v25 - v15;
  v17 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v17)
  {
    v18 = v17;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v19 = 0;
      return v19 & 1;
    }

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_8E1930(&qword_E209F8, &type metadata accessor for CharacterSet);
    sub_ABB120();

    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v20 = *(v8 + 32);
      v20(v14, v6, v7);
      v20(v16, v14, v7);
      (*(v8 + 16))(v11, v16, v7);
      sub_AB2B50();
      sub_AB2B50();
      v25[0] = a1;
      v25[1] = a2;
      sub_8E1458();
      sub_ABAA70();
      v22 = v21;
      v23 = *(v8 + 8);
      v23(v11, v7);
      v23(v16, v7);
      v19 = v22 ^ 1;
      return v19 & 1;
    }
  }

  v19 = 0;
  return v19 & 1;
}

BOOL String.containsCharacter(from:)()
{
  sub_8E1458();
  sub_ABAA70();
  return (v0 & 1) == 0;
}

uint64_t Optional<A>.isEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t Optional<A>.nonEmpty.getter(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  return a1;
}

NSAttributedString __swiftcall NSAttributedString.init(string:attributes:replacingPlaceholder:withImage:imageAttributes:)(Swift::String string, Swift::OpaquePointer attributes, Swift::String replacingPlaceholder, UIImage_optional withImage, Swift::OpaquePointer imageAttributes)
{
  isa = withImage.value.super.isa;
  sub_AB9270();
  v6 = objc_allocWithZone(NSMutableAttributedString);
  v7 = sub_AB9260();

  _s3__C3KeyVMa_1(0);
  sub_8E1930(&qword_E1FFB8, _s3__C3KeyVMa_1);
  v8 = sub_AB8FD0().super.isa;

  v9 = [v6 initWithString:v7 attributes:v8];

  v10 = sub_AB9260();

  v11 = sub_AB9260();

  v12 = [v10 rangeOfString:v11 options:129];
  v14 = v13;

  if (isa)
  {
    v15 = objc_opt_self();
    isa = isa;
    v16 = [v15 textAttachmentWithImage:isa];
    v17 = sub_AB8FD0().super.isa;

    v18 = [objc_opt_self() attributedStringWithAttachment:v16 attributes:v17];
  }

  else
  {

    v18 = [objc_allocWithZone(NSAttributedString) init];
  }

  [v9 replaceCharactersInRange:v12 withAttributedString:{v14, v18}];
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString:v9];

  return v19;
}

uint64_t NSAttributedString.init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_AB2F20();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  sub_8E14AC(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_12E1C(a1, &qword_E20A00);
    sub_12E1C(v4, &qword_E20A00);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    v13 = sub_ABA1C0();
    sub_12E1C(a1, &qword_E20A00);
    (*(v6 + 8))(v11, v5);
    return v13;
  }
}

uint64_t *Double.epsilon.unsafeMutableAddressor()
{
  if (qword_E1FE50 != -1)
  {
    swift_once();
  }

  return &static Double.epsilon;
}

double static Double.epsilon.getter()
{
  if (qword_E1FE50 != -1)
  {
    swift_once();
  }

  return *&static Double.epsilon;
}

uint64_t _NSRange.init(range:in:)()
{
  sub_AB9410();
  if (v0 & 1) != 0 || (sub_AB9410(), (v1))
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  else
  {
    v2 = sub_AB9520();
    sub_AB9520();

    return v2;
  }

  return result;
}

{
  sub_AB9430();
  sub_AB9410();
  if (v0 & 1) != 0 || (sub_AB9410(), (v1))
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  else
  {
    v2 = sub_AB9520();
    sub_AB9520();

    return v2;
  }

  return result;
}

Swift::Bool __swiftcall _NSRange.contains(_:)(__C::_NSRange a1)
{
  if (a1.location >= v1)
  {
    if (__OFADD__(a1.location, a1.length))
    {
      __break(1u);
    }

    else if (!__OFADD__(v1, v2))
    {
      LOBYTE(a1.location) = v1 + v2 >= a1.location + a1.length;
      return a1.location;
    }

    __break(1u);
    return a1.location;
  }

  LOBYTE(a1.location) = 0;
  return a1.location;
}

__C::_NSRange __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _NSRange.convert(from:to:preserveLength:)(Swift::String from, Swift::String to, Swift::Bool preserveLength)
{
  sub_8E1458();
  if (sub_ABAB20())
  {
    v4 = sub_AB9500();
    v5 = sub_AB9260();
    v6 = sub_AB9260();
    v7 = [v5 rangeOfString:{v6, to._countAndFlagsBits, to._object, from._countAndFlagsBits, from._object}];
    v9 = v8;

    v10.location = 0;
    v10.length = v4;
    v11.location = v7;
    v11.length = v9;
    v14 = _NSRange.convert(from:to:preserveLength:)(v10, v11, preserveLength);
    length = v14.length;
    location = v14.location;
  }

  else
  {
    sub_8E151C();
    swift_allocError();
    *v15 = 4;
    location = swift_willThrow();
  }

  result.length = length;
  result.location = location;
  return result;
}

__C::_NSRange __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _NSRange.convert(from:to:preserveLength:)(__C::_NSRange from, __C::_NSRange to, Swift::Bool preserveLength)
{
  if (to.location < from.location)
  {
    goto LABEL_5;
  }

  if (__OFADD__(to.location, to.length))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = from.location + from.length;
  if (__OFADD__(from.location, from.length))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v5 < to.location + to.length)
  {
LABEL_5:
    v6 = 0;
LABEL_6:
    sub_8E151C();
    swift_allocError();
    *v7 = v6;
    from.location = swift_willThrow();
    return from;
  }

  if (v3 < from.location)
  {
LABEL_11:
    v6 = 1;
    goto LABEL_6;
  }

  if (__OFADD__(v3, v4))
  {
    goto LABEL_20;
  }

  if (v5 < v3 + v4)
  {
    goto LABEL_11;
  }

  if (__OFSUB__(v3, to.location))
  {
LABEL_21:
    __break(1u);
    return from;
  }

  v11.location = 0;
  v11.length = to.length;
  v9 = v4;
  from.location = sub_ABA920(v11);
  if (v10)
  {
    v6 = 2;
    goto LABEL_6;
  }

  if (preserveLength && from.length != v9)
  {
    v6 = 3;
    goto LABEL_6;
  }

  return from;
}

Swift::Bool __swiftcall _NSRange.intersects(_:)(__C::_NSRange a1)
{
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = a1.location + a1.length;
  if (__OFADD__(a1.location, a1.length))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >= v4)
  {
    v5 = a1.location + a1.length;
  }

  else
  {
    v5 = v1 + v2;
  }

  if (v1 >= a1.location && v4 > v1)
  {
    if (!__OFSUB__(v5, v1))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v6 = 0;
  if (a1.location < v1 || v3 <= a1.location)
  {
    goto LABEL_15;
  }

  if (__OFSUB__(v5, a1.location))
  {
LABEL_18:
    __break(1u);
    return a1.location;
  }

LABEL_14:
  v6 = 1;
LABEL_15:
  LOBYTE(a1.location) = v6;
  return a1.location;
}

uint64_t sub_8DFC58()
{
  result = sub_AB2A10();
  static _NSRange.notFound = result;
  *algn_E743A8 = 0;
  return result;
}

uint64_t *_NSRange.notFound.unsafeMutableAddressor()
{
  if (qword_E1FE58 != -1)
  {
    swift_once();
  }

  return &static _NSRange.notFound;
}

uint64_t static _NSRange.notFound.getter()
{
  if (qword_E1FE58 != -1)
  {
    swift_once();
  }

  return static _NSRange.notFound;
}

Swift::tuple_first___C__NSRange_second___C__NSRange __swiftcall _NSRange.difference(_:)(__C::_NSRange a1)
{
  v3 = v1 + v2;
  v4 = __OFADD__(v1, v2);
  if (v1 < a1.location)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (__OFADD__(a1.location, a1.length))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    v11 = v2;
    v13 = v1;
    swift_once();
    v2 = v11;
    v1 = v13;
    goto LABEL_39;
  }

  if (a1.location + a1.length >= v3)
  {
    if (qword_E1FE58 == -1)
    {
LABEL_44:
      v1 = static _NSRange.notFound;
      v2 = *algn_E743A8;
      v5 = static _NSRange.notFound;
      v7 = *algn_E743A8;
      goto LABEL_45;
    }

LABEL_47:
    swift_once();
    goto LABEL_44;
  }

LABEL_10:
  v5 = a1.location + a1.length;
  if (__OFADD__(a1.location, a1.length))
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v1 < a1.location || v5 <= v1)
  {
    goto LABEL_27;
  }

  v6 = 0;
  v2 = a1.location - v1;
  if (!__OFSUB__(a1.location, v1))
  {
    while (1)
    {
      v7 = v3 - v5;
      if (__OFSUB__(v3, v5))
      {
        goto LABEL_49;
      }

      if (!v6)
      {
        break;
      }

      if (v5 >= v3)
      {
        goto LABEL_38;
      }

      v3 = v1 + v2;
      if (__OFADD__(v1, v2))
      {
        __break(1u);
LABEL_54:
        v12 = v7;
        v14 = a1.location + a1.length;
        swift_once();
        v7 = v12;
        v5 = v14;
LABEL_42:
        v1 = v5;
        v2 = v7;
        v5 = static _NSRange.notFound;
        v7 = *algn_E743A8;
        goto LABEL_45;
      }

      if (v3 < v5)
      {
        goto LABEL_45;
      }

      v8 = __OFADD__(v5, v7);
      v9 = v5 + v7;
      if (v8)
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v3 > v9)
      {
        v9 = v1 + v2;
      }

      if (v5 < v1)
      {
        v1 = a1.location + a1.length;
      }

      v2 = v9 - v1;
      if (!__OFSUB__(v9, v1))
      {
        goto LABEL_38;
      }

      __break(1u);
LABEL_27:
      if (a1.location < v1 || v3 <= a1.location)
      {
        goto LABEL_38;
      }

      v6 = v1 < a1.location && v2 > 0;
      v2 = a1.location - v1;
      if (__OFSUB__(a1.location, v1))
      {
        goto LABEL_37;
      }
    }

    if (v5 < v3)
    {
      if (qword_E1FE58 != -1)
      {
        goto LABEL_54;
      }

      goto LABEL_42;
    }

    if (qword_E1FE58 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_47;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  if (qword_E1FE58 != -1)
  {
    goto LABEL_52;
  }

LABEL_39:
  v5 = static _NSRange.notFound;
  v7 = *algn_E743A8;
LABEL_45:
  a1.location = v1;
  a1.length = v2;
  v1 = v5;
  v2 = v7;
LABEL_56:
  result.first = a1;
  result.second.length = v2;
  result.second.location = v1;
  return result;
}

Swift::Int_optional __swiftcall _NSRange.NSRangeIterator.next()()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = 1;
  }

  else
  {
    v3 = *(v0 + 8);
    if (__OFADD__(*v0, v3))
    {
      __break(1u);
    }

    else if (v1 >= *v0 + v3)
    {
      v1 = 0;
      v2 = 1;
    }

    else
    {
      v2 = 0;
      *(v0 + 16) = v1 + 1;
    }
  }

  result.value = v1;
  result.is_nil = v2;
  return result;
}

void sub_8DFF58(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v1 + 24))
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 8);
  if (!__OFADD__(*v1, v3))
  {
    if (v2 < *v1 + v3)
    {
      v4 = 0;
      *(v1 + 16) = v2 + 1;
LABEL_7:
      *a1 = v2;
      *(a1 + 8) = v4;
      return;
    }

    v2 = 0;
LABEL_6:
    v4 = 1;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_8DFFB0(uint64_t a1@<X8>)
{
  v2 = v1[1];
  if (v2 >= 1)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2 < 1;
}

uint64_t WeakWrapper.value.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakWrapper.value.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_8E006C;
}

uint64_t sub_8E006C()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakWrapper.init(value:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

BOOL static WeakWrapper.== infix(_:_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v2 = v1;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }
  }

  else if (!v1)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t Int.romanNumeral.getter(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v1 = a1;
  for (i = 0; i != 13; ++i)
  {
    v3 = qword_B37478[*(&off_D441E8 + i + 32)];
    if (v1 >= v3)
    {
      v4 = 0xE100000000000000;
      v5 = 77;
      switch(*(&off_D441E8 + i + 32))
      {
        case 1:
          v4 = 0xE200000000000000;
          v5 = 19779;
          break;
        case 2:
          v5 = 68;
          break;
        case 3:
          v4 = 0xE200000000000000;
          v5 = 17475;
          break;
        case 4:
          v5 = 67;
          break;
        case 5:
          v4 = 0xE200000000000000;
          v5 = 17240;
          break;
        case 6:
          v5 = 76;
          break;
        case 7:
          v4 = 0xE200000000000000;
          v5 = 19544;
          break;
        case 8:
          v5 = 88;
          break;
        case 9:
          v4 = 0xE200000000000000;
          v5 = 22601;
          break;
        case 0xA:
          v5 = 86;
          break;
        case 0xB:
          v4 = 0xE200000000000000;
          v5 = 22089;
          break;
        case 0xC:
          v5 = 73;
          break;
        default:
          goto LABEL_18;
      }

      do
      {
LABEL_18:
        v1 -= v3;
        v7._countAndFlagsBits = v5;
        v7._object = v4;
        sub_AB94A0(v7);
      }

      while (v1 >= v3);
    }
  }

  return 0;
}

uint64_t RomanNumerals.rawValue.getter(char a1)
{
  result = 77;
  switch(a1)
  {
    case 1:
      result = 19779;
      break;
    case 2:
      result = 68;
      break;
    case 3:
      result = 17475;
      break;
    case 4:
      result = 67;
      break;
    case 5:
      result = 17240;
      break;
    case 6:
      result = 76;
      break;
    case 7:
      result = 19544;
      break;
    case 8:
      result = 88;
      break;
    case 9:
      result = 22601;
      break;
    case 10:
      result = 86;
      break;
    case 11:
      result = 22089;
      break;
    case 12:
      result = 73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_8E03F8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = RomanNumerals.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == RomanNumerals.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_8E0480()
{
  v1 = *v0;
  sub_ABB5C0();
  RomanNumerals.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_8E04E4()
{
  RomanNumerals.rawValue.getter(*v0);
  sub_AB93F0();
}

Swift::Int sub_8E0538()
{
  v1 = *v0;
  sub_ABB5C0();
  RomanNumerals.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_8E0598@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14MusicUtilities13RomanNumeralsO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_8E05C8@<X0>(uint64_t *a1@<X8>)
{
  result = RomanNumerals.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_8E0604()
{
  result = sub_8E1978(&off_D44370);
  static NSDirectionalEdgeInsets.Edge.all = result;
  return result;
}

uint64_t *NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor()
{
  if (qword_E1FE60 != -1)
  {
    swift_once();
  }

  return &static NSDirectionalEdgeInsets.Edge.all;
}

uint64_t static NSDirectionalEdgeInsets.Edge.all.getter()
{
  if (qword_E1FE60 != -1)
  {
    swift_once();
  }
}

double NSDirectionalEdgeInsets.init(edge:length:)(uint64_t a1, double a2)
{
  if (sub_473110(0, a1))
  {
    v4 = a2;
  }

  else
  {
    v4 = 0.0;
  }

  sub_473110(1u, a1);
  sub_473110(2u, a1);
  sub_473110(3u, a1);

  return v4;
}

uint64_t sub_8E0780(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_8E1930(&qword_E20AC8, &type metadata accessor for IndexPath), v7 = sub_AB90D0(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_8E1930(&qword_E20AD0, &type metadata accessor for IndexPath);
      v15 = sub_AB91C0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id sub_8E0998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB9260();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_AB3050();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_8E0ACC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  sub_ABB5C0();
  a3(v10, a1, a2);
  v7 = sub_ABB610();

  return a4(a1, a2, v7);
}

unint64_t sub_8E0B60(uint64_t a1)
{
  v2 = sub_ABB5B0();

  return sub_2ED954(a1, v2);
}

unint64_t sub_8E0BA4(Swift::UInt a1)
{
  sub_ABB5C0();
  sub_ABB5D0(a1);
  v2 = sub_ABB610();

  return sub_2ED954(a1, v2);
}

unint64_t sub_8E0C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_ABB5C0();
  if (a2)
  {
    sub_ABB5D0(1uLL);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5D0(0);
  }

  v6 = sub_ABB610();

  return sub_8E0D10(a1, a2, a3, v6);
}

unint64_t sub_8E0CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB90D0();

  return sub_8E0E58(a1, v6, a2, a3);
}

unint64_t sub_8E0D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v11 = ~v6;
    do
    {
      v14 = (*(v8 + 48) + 24 * v7);
      v15 = v14[1];
      v16 = v14[2];
      if (v15)
      {
        if (a2)
        {
          v17 = *v14 == a1 && v15 == a2;
          if (v17 || (sub_ABB3C0() & 1) != 0)
          {
LABEL_3:
            sub_13C80(0, &unk_E211F0);

            v12 = v16;
            v13 = sub_ABA790();

            if (v13)
            {
              return v7;
            }
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_3;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_8E0E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin(a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_AB91C0();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_8E0FE0(uint64_t result, uint64_t a2)
{
  v2 = _swiftEmptyArrayStorage;
  v21 = a2 < 1;
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = result;
    if (__OFADD__(result, a2))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v4 = 0;
    if (result <= result + a2)
    {
      v5 = result + a2;
    }

    else
    {
      v5 = result;
    }

    v6 = &_swiftEmptyArrayStorage[4];
    while (v5 != v3)
    {
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_30;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20AC0);
        v10 = swift_allocObject();
        v11 = _swift_stdlib_malloc_size(v10);
        v12 = v11 - 32;
        if (v11 < 32)
        {
          v12 = v11 - 25;
        }

        v13 = v12 >> 3;
        v10[2] = v9;
        v10[3] = 2 * (v12 >> 3);
        v14 = (v10 + 4);
        v15 = v2[3] >> 1;
        if (v2[2])
        {
          v16 = v2 + 4;
          if (v10 != v2 || v14 >= v16 + 8 * v15)
          {
            memmove(v10 + 4, v16, 8 * v15);
          }

          v2[2] = 0;
        }

        v6 = (v14 + 8 * v15);
        v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v2 = v10;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      *v6++ = v3++;
      if (v21)
      {
        break;
      }
    }
  }

  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v17)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_8E116C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_AB9800())
  {
    sub_ABB0D0();
    v13 = sub_ABB0C0();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_AB9860();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_AB97E0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_ABAE10();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_8E0CB4(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
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

    return v13;
  }

  return result;
}

unint64_t sub_8E1458()
{
  result = qword_E209E0;
  if (!qword_E209E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E209E0);
  }

  return result;
}

uint64_t sub_8E14AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_8E151C()
{
  result = qword_E20A08;
  if (!qword_E20A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E20A08);
  }

  return result;
}

unint64_t sub_8E1570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_AB2D10();
  v11 = result;
  if (result)
  {
    result = sub_AB2D40();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_AB2D30();
  result = sub_8DBF70(v11, a4, a5, &v12);
  if (!v5)
  {
    return v12;
  }

  return result;
}

uint64_t _s14MusicUtilities13RomanNumeralsO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D44218;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_8E167C()
{
  result = qword_E20A10;
  if (!qword_E20A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E20A10);
  }

  return result;
}

unint64_t sub_8E16D4()
{
  result = qword_E20A18;
  if (!qword_E20A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E20A18);
  }

  return result;
}

unint64_t sub_8E172C()
{
  result = qword_E20A20;
  if (!qword_E20A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E20A20);
  }

  return result;
}

unint64_t sub_8E17C8()
{
  result = qword_E20A38[0];
  if (!qword_E20A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E20A38);
  }

  return result;
}

__n128 __swift_memcpy25_8_2(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_8E185C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_8E187C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t sub_8E18BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_8E1930(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_8E1978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E20AD8);
    v3 = sub_ABAD50();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_ABB5C0();
      sub_ABB5D0(v10);
      result = sub_ABB610();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t MPModelObject.humanDescription(including:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v13._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v13);

  v14._countAndFlagsBits = 8250;
  v14._object = 0xE200000000000000;
  sub_AB94A0(v14);
  sub_ABAF70();
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v12;
  v5[4] = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_8E1FE0;
  *(v6 + 24) = v5;
  v11[4] = sub_2D4D0;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1822E0;
  v11[3] = &block_descriptor_238;
  v7 = _Block_copy(v11);

  v8 = v2;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v10 = v12[0];

    return v10;
  }

  return result;
}

uint64_t sub_8E1CAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = sub_907DCC(*(a1 + 16), 0);
  v25 = sub_131344(v27, v6 + 32, v4, a1);

  sub_2BB88();
  if (v25 != v4)
  {
    __break(1u);
LABEL_4:
    v6 = &_swiftEmptyArrayStorage;
  }

  *&v27[0] = v6;
  sub_8E2FB8(v27);
  v7 = *&v27[0];
  v8 = *(*&v27[0] + 16);
  if (!v8)
  {
  }

  v9 = 0;
  v10 = *&v27[0] + 32;
  while (v9 < *(v7 + 16))
  {
    if (!*(v10 + v9))
    {
      strcpy(v27, " identifiers=");
      HIWORD(v27[0]) = -4864;
      v11 = [a3 identifiers];
      v12 = [v11 description];
      v13 = sub_AB92A0();
      v15 = v14;

      v28._countAndFlagsBits = v13;
      v28._object = v15;
      sub_AB94A0(v28);

LABEL_8:
      v17 = *(&v27[0] + 1);
      v16._countAndFlagsBits = *&v27[0];
      goto LABEL_9;
    }

    if (*(v10 + v9) == 1)
    {
      *&v27[0] = 23328;
      *(&v27[0] + 1) = 0xE200000000000000;
      v18 = [a3 shortDescription];
      v19 = sub_AB92A0();
      v21 = v20;

      v29._countAndFlagsBits = v19;
      v29._object = v21;
      sub_AB94A0(v29);

      v30._countAndFlagsBits = 93;
      v30._object = 0xE100000000000000;
      sub_AB94A0(v30);
      goto LABEL_8;
    }

    sub_8E30F0();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    InstanceVariable = class_getInstanceVariable(ObjCClassFromMetadata, "_storage");
    if (!InstanceVariable)
    {
      goto LABEL_10;
    }

    strcpy(v26, " properties=");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    if (object_getIvar(a3, InstanceVariable))
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21230);
    v31._countAndFlagsBits = sub_AB9350();
    sub_AB94A0(v31);

    v16._countAndFlagsBits = v26[0];
    v17 = v26[1];
LABEL_9:
    v16._object = v17;
    sub_AB94A0(v16);

LABEL_10:
    if (v8 == ++v9)
    {
    }
  }

  __break(1u);

  __break(1u);
  return result;
}