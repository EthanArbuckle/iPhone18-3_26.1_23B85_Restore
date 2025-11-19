uint64_t type metadata accessor for HealthFeaturesViewController()
{
  result = qword_149B8;
  if (!qword_149B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1930()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

char *sub_1978(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + qword_149B0) = 0;
  v3 = qword_149A8;
  *(v1 + qword_149A8) = a1;
  sub_24E8();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_AB48();

  v4 = *(*(v1 + v3) + 80);
  type metadata accessor for HealthFeaturesSetupFlowController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass:ObjCClassFromMetadata];
  v20._countAndFlagsBits = 0xE000000000000000;
  v22._object = 0x800000000000C070;
  v22._countAndFlagsBits = 0xD000000000000022;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v8.super.isa = v7;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_AB38(v22, v24, v8, v26, v20);

  v9 = [v6 bundleForClass:ObjCClassFromMetadata];
  v21._countAndFlagsBits = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD000000000000023;
  v23._object = 0x800000000000C0A0;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v10.super.isa = v9;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_AB38(v23, v25, v10, v27, v21);

  v11 = sub_ACB8();
  v12 = [v11 hxui_addContinueButtonWithAccessibilityIdentifier:{0, 0, 0}];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

    v13 = 0;
  }

  v14 = qword_149B0;
  v15 = *&v11[qword_149B0];
  *&v11[qword_149B0] = v13;

  v16 = *&v11[v14];
  v17 = v11;
  if (v16)
  {
    v18 = v16;
    v17 = BPSPillSelectedColor();
    [v18 setTintColor:v17];
  }

  return v11;
}

void sub_1C34()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  sub_AF58();
  __break(1u);
}

void sub_1CAC(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for HealthFeaturesViewController();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, "viewDidLoad");
  v2 = *&v1[qword_149A8];
  sub_38C0();
}

uint64_t sub_1D10()
{
  v1 = *(v0 + qword_149B0);
  if (v1)
  {
    [v1 showsBusyIndicator];
  }

  v2 = *(v0 + qword_149A8);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_40C0(sub_2734, v3);
}

void sub_1DB4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_149B0);
    if (v4)
    {
      [v4 hidesBusyIndicator];
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      sub_1EC0(*a1, v5, *(a1 + 16), *(a1 + 24), *(a1 + 32) & 1);
    }

    else
    {
      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        __break(1u);
        return;
      }

      [v6 miniFlowStepComplete:v3];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E78(void *a1)
{
  v1 = a1;
  sub_1D10();
}

void sub_1EC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v38[1] = swift_getObjectType();
  v10 = sub_AD28();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  __chkstk_darwin(v10);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_ADA8();
  v39 = a3;
  v15 = sub_ADA8();
  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  type metadata accessor for HealthFeaturesSetupFlowController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v37._countAndFlagsBits = 0xE000000000000000;
  v44._object = 0x800000000000C180;
  v44._countAndFlagsBits = 0xD000000000000029;
  v45.value._countAndFlagsBits = 0;
  v45.value._object = 0;
  v19.super.isa = v18;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_AB38(v44, v45, v19, v46, v37);

  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = v6;
  v21 = v6;
  v22 = sub_ADA8();

  aBlock[4] = sub_279C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2394;
  aBlock[3] = &unk_10810;
  v23 = _Block_copy(aBlock);

  v24 = [objc_opt_self() actionWithTitle:v22 style:1 handler:v23];
  _Block_release(v23);

  [v16 addAction:v24];
  sub_AD08();

  v40 = v13;
  v25 = sub_AD18();
  v26 = sub_AE38();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v27 = 136315651;
    v28 = sub_AFA8();
    v30 = a4;
    v31 = v16;
    v32 = v21;
    v33 = sub_9AA8(v28, v29, aBlock);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    if (a5)
    {
      v34 = 1702195828;
    }

    else
    {
      v34 = 0x65736C6166;
    }

    if (a5)
    {
      v35 = 0xE400000000000000;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    v36 = sub_9AA8(v34, v35, aBlock);
    v21 = v32;
    v16 = v31;

    *(v27 + 14) = v36;
    *(v27 + 22) = 2081;
    *(v27 + 24) = sub_9AA8(v39, v30, aBlock);
    _os_log_impl(&dword_0, v25, v26, "%s Showing alert (progress after: %s) with message: %{private}s", v27, 0x20u);
    swift_arrayDestroy();
  }

  (*(v41 + 8))(v40, v42);
  [v21 presentViewController:v16 animated:1 completion:0];
}

void sub_2324(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong miniFlowStepComplete:a3];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2394(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_23FC()
{
  sub_273C(v0 + qword_149A0);
  v1 = *(v0 + qword_149A8);

  v2 = *(v0 + qword_149B0);
}

id sub_244C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthFeaturesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_2484(uint64_t a1)
{
  sub_273C(a1 + qword_149A0);
  v2 = *(a1 + qword_149A8);

  v3 = *(a1 + qword_149B0);
}

void sub_24E8()
{
  if (!qword_14AC8)
  {
    type metadata accessor for HealthFeaturesViewModel();
    sub_2550();
    v0 = sub_AB68();
    if (!v1)
    {
      atomic_store(v0, &qword_14AC8);
    }
  }
}

unint64_t sub_2550()
{
  result = qword_14AD0;
  if (!qword_14AD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_14AD0);
  }

  return result;
}

double sub_25B0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_24E8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB48();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2658(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  sub_24E8();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = *a1;

  swift_unknownObjectRetain();
  return sub_AB58();
}

uint64_t sub_26FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2764()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_27A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27C0()
{
  sub_24E8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB48();

  return v1;
}

uint64_t sub_2858(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_24E8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB48();

  swift_getObjectType();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;

  sub_AC38();
  swift_unknownObjectRelease();
}

uint64_t sub_2998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v5 = sub_AD38();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AD68();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7D94(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7310();
  v17 = sub_AE48();
  sub_7E80(a1, v16, sub_7D94);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_8018(v16, v20 + v18, sub_7D94);
  v21 = (v20 + v19);
  v22 = v26;
  *v21 = v25;
  v21[1] = v22;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v27;
  aBlock[4] = sub_8080;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_387C;
  aBlock[3] = &unk_10A18;
  v23 = _Block_copy(aBlock);

  sub_AD58();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_8280(&qword_14CC8, &type metadata accessor for DispatchWorkItemFlags);
  sub_73B8(0, &unk_14DC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_740C();
  sub_AE98();
  sub_AE58();
  _Block_release(v23);

  (*(v30 + 8))(v8, v5);
  return (*(v28 + 8))(v12, v29);
}

uint64_t sub_2D40(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v67 = a3;
  v68 = a2;
  v5 = sub_AD28();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v62 - v11;
  __chkstk_darwin(v10);
  v14 = &v62 - v13;
  v15 = sub_ABC8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v62 - v21;
  sub_7D94(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_7E80(a1, v26, sub_7D94);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v40 = *v26;
    if ((*v26 & 0xC000000000000001) != 0)
    {
      if (v40 < 0)
      {
        v41 = *v26;
      }

      if (sub_AEF8())
      {
        goto LABEL_8;
      }
    }

    else if (*(v40 + 16))
    {
LABEL_8:
      sub_ACF8();

      v42 = sub_AD18();
      v43 = sub_AE38();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v44 = 136315395;
        v45 = sub_AFA8();
        v47 = sub_9AA8(v45, v46, &v70);

        *(v44 + 4) = v47;
        *(v44 + 12) = 2081;
        v48 = sub_346C(v40);

        v69 = v48;
        sub_82C8(0, &qword_14D10, &type metadata accessor for Array);
        sub_8164();
        v49 = sub_AD88();
        v51 = v50;

        v52 = sub_9AA8(v49, v51, &v70);

        *(v44 + 14) = v52;
        _os_log_impl(&dword_0, v42, v43, "[%s] Should display with advertisable features: %{private}s", v44, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v65 + 8))(v12, v66);
      v61 = 1;
      return v68(v61);
    }

    sub_ACF8();
    v54 = sub_AD18();
    v55 = sub_AE38();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v70 = v57;
      *v56 = 136315138;
      v58 = sub_AFA8();
      v60 = sub_9AA8(v58, v59, &v70);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_0, v54, v55, "[%s] No advertisable features to display", v56, 0xCu);
      sub_8320(v57);
    }

    (*(v65 + 8))(v9, v66);
    v61 = 0;
    return v68(v61);
  }

  (*(v16 + 32))(v22, v26, v15);
  sub_ACF8();
  (*(v16 + 16))(v20, v22, v15);
  v27 = sub_AD18();
  v28 = sub_AE18();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v62 = v27;
    v30 = v29;
    v63 = swift_slowAlloc();
    v70 = v63;
    *v30 = 136315394;
    v31 = sub_AFA8();
    LODWORD(v64) = v28;
    v33 = sub_9AA8(v31, v32, &v70);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2082;
    sub_8280(&qword_14CC0, &type metadata accessor for AdvertisableFeatureError);
    v34 = sub_AF88();
    v36 = v35;
    v37 = *(v16 + 8);
    v37(v20, v15);
    v38 = sub_9AA8(v34, v36, &v70);

    *(v30 + 14) = v38;
    v39 = v62;
    _os_log_impl(&dword_0, v62, v64, "[%s] Error when determining advertisable features, should not display: %{public}s", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v37 = *(v16 + 8);
    v37(v20, v15);
  }

  (*(v65 + 8))(v14, v66);
  v68(0);
  return (v37)(v22, v15);
}

void *sub_346C(uint64_t a1)
{
  v42 = sub_ABA8();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v42);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_AEF8();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v50 = &_swiftEmptyArrayStorage;
    sub_7864(0, v6 & ~(v6 >> 63), 0);
    v45 = v50;
    if (v43)
    {
      result = sub_AEB8();
    }

    else
    {
      v9 = -1 << *(a1 + 32);
      result = sub_AEA8();
      v8 = *(a1 + 36);
    }

    v47 = result;
    v48 = v8;
    v49 = v43 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v6;
      v40 = (v3 + 8);
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35 = v1;
      v36 = a1 + 64;
      while (v10 < v6)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v47;
        v15 = v49;
        v44 = v48;
        v16 = a1;
        sub_79A0(v47, v48, v49, a1);
        v17 = v41;
        sub_ABD8();
        v18 = sub_AB98();
        v20 = v19;
        (*v40)(v17, v42);

        v21 = v45;
        v50 = v45;
        v23 = v45[2];
        v22 = v45[3];
        if (v23 >= v22 >> 1)
        {
          result = sub_7864((v22 > 1), v23 + 1, 1);
          v21 = v50;
        }

        v21[2] = v23 + 1;
        v24 = &v21[2 * v23];
        *(v24 + 4) = v18;
        *(v24 + 5) = v20;
        v45 = v21;
        if (v43)
        {
          if (!v15)
          {
            goto LABEL_42;
          }

          a1 = v16;
          if (sub_AEC8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v39;
          sub_81D8(0, &qword_14D20, &type metadata accessor for Set.Index);
          v12 = sub_AE08();
          sub_AF18();
          result = v12(v46, 0);
          if (v10 == v6)
          {
LABEL_34:
            sub_8274(v47, v48, v49);
            return v45;
          }
        }

        else
        {
          if (v15)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v16;
          v25 = 1 << *(v16 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v16 + 36) != v44)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
            v6 = v39;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            v6 = v39;
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_8274(v14, v44, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_8274(v14, v44, 0);
          }

LABEL_33:
          v34 = *(v16 + 36);
          v47 = v25;
          v48 = v34;
          v49 = 0;
          if (v10 == v6)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_387C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_38C0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_AD28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[8] & 1) == 0)
  {
    *(v1 + 64) = 1;
    sub_ACF8();
    v9 = sub_AD18();
    v10 = sub_AE38();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = sub_AFA8();
      v16[0] = v2;
      v15 = sub_9AA8(v13, v14, &v17);
      v2 = v16[0];

      *(v11 + 4) = v15;
      _os_log_impl(&dword_0, v9, v10, "[%s] Performing prerequisite work", v11, 0xCu);
      sub_8320(v12);
    }

    (*(v4 + 8))(v8, v3);
    sub_24E8();
    swift_getKeyPath();
    swift_getKeyPath();
    v16[1] = v1;

    sub_AB48();

    swift_getObjectType();
    *(swift_allocObject() + 16) = v2;
    sub_AC08();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_3B6C(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = sub_ABC8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v47 - v9;
  __chkstk_darwin(v8);
  v53 = &v47 - v11;
  v12 = sub_AD28();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  sub_74CC();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7E80(a1, v23, sub_74CC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = v13;
    v50 = v12;
    v24 = v53;
    (*(v4 + 32))(v53, v23, v3);
    sub_ACF8();
    v25 = *(v4 + 16);
    v25(v10, v24, v3);
    v26 = sub_AD18();
    v27 = sub_AE18();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54 = v48;
      *v28 = 136315394;
      v29 = sub_AFA8();
      LODWORD(v52) = v27;
      v31 = sub_9AA8(v29, v30, &v54);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2082;
      v25(v51, v10, v3);
      v32 = sub_ADB8();
      v34 = v33;
      v35 = *(v4 + 8);
      v35(v10, v3);
      v36 = sub_9AA8(v32, v34, &v54);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_0, v26, v52, "[%s] Prerequisite work failed to complete with error: %{public}s", v28, 0x16u);
      swift_arrayDestroy();

      (*(v49 + 8))(v17, v50);
      return (v35)(v53, v3);
    }

    else
    {

      v46 = *(v4 + 8);
      v46(v10, v3);
      (*(v49 + 8))(v17, v50);
      return (v46)(v53, v3);
    }
  }

  else
  {
    sub_ACF8();
    v38 = sub_AD18();
    v39 = sub_AE38();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54 = v41;
      *v40 = 136315138;
      v42 = sub_AFA8();
      v44 = v13;
      v45 = sub_9AA8(v42, v43, &v54);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_0, v38, v39, "[%s] Prerequisite work completed", v40, 0xCu);
      sub_8320(v41);

      return (*(v44 + 8))(v19, v12);
    }

    else
    {

      return (*(v13 + 8))(v19, v12);
    }
  }
}

uint64_t sub_40C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;

  sub_577C(sub_7858, v6);
}

uint64_t sub_4174(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v56 = a3;
  v57 = a2;
  v5 = sub_ABC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v50 - v12;
  __chkstk_darwin(v11);
  v15 = &v50 - v14;
  v16 = sub_AD28();
  v54 = *(v16 - 8);
  v55 = v16;
  v17 = *(v54 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v50 - v21;
  sub_74CC();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7E80(a1, v26, sub_74CC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v15, v26, v5);
    sub_ACF8();
    v27 = *(v6 + 16);
    v27(v13, v15, v5);
    v28 = sub_AD18();
    v29 = sub_AE18();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v52 = v15;
      v50 = v28;
      v31 = v30;
      v51 = swift_slowAlloc();
      *&v58[0] = v51;
      *v31 = 136315394;
      v32 = sub_AFA8();
      v34 = sub_9AA8(v32, v33, v58);
      LODWORD(v53) = v29;
      v35 = v34;

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      v27(v10, v13, v5);
      v36 = sub_ADB8();
      v38 = v37;
      v39 = *(v6 + 8);
      v39(v13, v5);
      v40 = sub_9AA8(v36, v38, v58);

      *(v31 + 14) = v40;
      v41 = v50;
      _os_log_impl(&dword_0, v50, v53, "[%s] Commit enablement failed with error: %{public}s", v31, 0x16u);
      swift_arrayDestroy();

      v15 = v52;
    }

    else
    {

      v39 = *(v6 + 8);
      v39(v13, v5);
    }

    (*(v54 + 8))(v20, v55);
    sub_7C00(v58);
    v57(v58);
    sub_7D40(v58);
    return (v39)(v15, v5);
  }

  else
  {
    sub_ACF8();
    v42 = sub_AD18();
    v43 = sub_AE38();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v58[0] = v45;
      *v44 = 136315138;
      v46 = sub_AFA8();
      v48 = sub_9AA8(v46, v47, v58);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_0, v42, v43, "[%s] Commit enablement completed", v44, 0xCu);
      sub_8320(v45);
    }

    (*(v54 + 8))(v22, v55);
    v59 = 0;
    memset(v58, 0, sizeof(v58));
    return (v57)(v58);
  }
}

uint64_t sub_46B8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v121 = a2;
  v122 = a3;
  v120 = *v3;
  v5 = sub_AD28();
  v6 = *(v5 - 8);
  v116 = v5;
  v117 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v119 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v110 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v110 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v110 - v17;
  __chkstk_darwin(v16);
  v20 = &v110 - v19;
  v21 = sub_AC48();
  v118 = *(v21 - 8);
  v22 = *(v118 + 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v110 - v27;
  __chkstk_darwin(v26);
  v30 = &v110 - v29;
  type metadata accessor for HealthFeaturesViewController();
  if (swift_dynamicCastClass())
  {
    v31 = swift_allocObject();
    v32 = v121;
    v33 = v122;
    v31[2] = v3;
    v31[3] = v32;
    v34 = v120;
    v31[4] = v33;
    v31[5] = v34;

    sub_5EF0(sub_784C, v31);
  }

  v112 = v28;
  v113 = v25;
  v110 = v20;
  v111 = v18;
  v36 = v118;
  v37 = v119;
  v114 = v30;
  v115 = v21;
  swift_getObjectType();
  v38 = a1;
  if (swift_conformsToProtocol2() && a1)
  {
    v39 = v3[9];
    if (v39)
    {
      v40 = v114;
      v41 = v115;
      (*(v36 + 13))(v114, enum case for AdvertisableFeaturePostCommitWorkItem.showMedicationsThatAffectHeartRate(_:), v115);
      swift_unknownObjectRetain();

      result = sub_565C(v40, v39);
      if (v42)
      {
        v43 = v15;
        sub_ACF8();
        v119 = *(v36 + 2);
        (v119)(v113, v40, v41);

        v44 = sub_AD18();
        v45 = sub_AE18();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v123[0] = v111;
          *v46 = 136315651;
          v47 = sub_AFA8();
          v49 = sub_9AA8(v47, v48, v123);
          v120 = v43;
          v50 = v36;
          LODWORD(v110) = v45;
          v51 = v49;

          *(v46 + 4) = v51;
          *(v46 + 12) = 2081;
          v52 = v113;
          (v119)(v112, v113, v115);
          v53 = sub_ADB8();
          v55 = v54;
          v56 = *(v50 + 1);
          v56(v52, v115);
          v57 = sub_9AA8(v53, v55, v123);
          v41 = v115;

          *(v46 + 14) = v57;
          *(v46 + 22) = 2081;
          v58 = sub_ADE8();
          v60 = v59;

          v61 = sub_9AA8(v58, v60, v123);

          *(v46 + 24) = v61;
          _os_log_impl(&dword_0, v44, v110, "[%s] completed post-commit work item not found: %{private}s, in list %{private}s", v46, 0x20u);
          swift_arrayDestroy();

          v40 = v114;

          (*(v117 + 8))(v120, v116);
        }

        else
        {

          v56 = *(v36 + 1);
          v56(v113, v41);
          (*(v117 + 8))(v43, v116);
        }

        v121(0);
        swift_unknownObjectRelease();
        return (v56)(v40, v41);
      }

      v82 = result + 1;
      if (__OFADD__(result, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      v83 = v112;
      if (v82 < *(v39 + 16))
      {
        if ((v82 & 0x8000000000000000) == 0)
        {
          v119 = v38;
          (*(v36 + 2))(v112, v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 9) * v82, v41);

          v84 = sub_6C08(v83);
          v113 = v85;
          v86 = *(v36 + 1);
          v86(v83, v41);
          v87 = v110;
          sub_ACF8();
          v88 = v84;
          v89 = sub_AD18();
          v90 = sub_AE38();

          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v118 = v86;
            v124 = v92;
            *v91 = 136315395;
            v93 = sub_AFA8();
            v95 = sub_9AA8(v93, v94, &v124);

            *(v91 + 4) = v95;
            *(v91 + 12) = 2081;
            v123[0] = v84;
            v123[1] = v113;
            sub_7738();
            v96 = v88;
            v97 = sub_ADB8();
            v99 = sub_9AA8(v97, v98, &v124);

            *(v91 + 14) = v99;
            v41 = v115;
            _os_log_impl(&dword_0, v89, v90, "[%s] next post-commit work item view controller: %{private}s", v91, 0x16u);
            swift_arrayDestroy();
            v86 = v118;

            v40 = v114;
          }

          (*(v117 + 8))(v87, v116);
          v100 = v121;
          v101 = v88;
          v100(v84);
          swift_unknownObjectRelease();

          return (v86)(v40, v41);
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v102 = v111;
      sub_ACF8();
      v103 = sub_AD18();
      v104 = sub_AE38();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v123[0] = v106;
        *v105 = 136315138;
        v107 = sub_AFA8();
        v109 = sub_9AA8(v107, v108, v123);

        *(v105 + 4) = v109;
        v41 = v115;
        _os_log_impl(&dword_0, v103, v104, "[%s] completed post-commit work item is the last item.", v105, 0xCu);
        sub_8320(v106);
      }

      (*(v117 + 8))(v102, v116);
      v121(0);
      swift_unknownObjectRelease();
      return (*(v36 + 1))(v40, v41);
    }

    else
    {
      swift_unknownObjectRetain();
      v74 = v12;
      sub_ACF8();
      v75 = sub_AD18();
      v76 = sub_AE18();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v123[0] = v78;
        *v77 = 136315138;
        v79 = sub_AFA8();
        v81 = sub_9AA8(v79, v80, v123);

        *(v77 + 4) = v81;
        _os_log_impl(&dword_0, v75, v76, "[%s] post-commit work items list not found. Must determinePostCommitWork() first", v77, 0xCu);
        sub_8320(v78);
      }

      (*(v117 + 8))(v74, v116);
      v121(0);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v62 = v37;
    sub_ACF8();
    swift_unknownObjectRetain();
    v63 = sub_AD18();
    v64 = sub_AE18();
    swift_unknownObjectRelease();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v117;
    if (v65)
    {
      v67 = swift_slowAlloc();
      v123[0] = swift_slowAlloc();
      *v67 = 136315395;
      v68 = sub_AFA8();
      v70 = sub_9AA8(v68, v69, v123);

      *(v67 + 4) = v70;
      *(v67 + 12) = 2081;
      v124 = a1;
      sub_76D4();
      swift_unknownObjectRetain();
      v71 = sub_ADB8();
      v73 = sub_9AA8(v71, v72, v123);

      *(v67 + 14) = v73;
      _os_log_impl(&dword_0, v63, v64, "[%s] unable to determine next step view controller for: %{private}s", v67, 0x16u);
      swift_arrayDestroy();
    }

    (*(v66 + 8))(v62, v116);
    return (v121)(0);
  }
}

void sub_527C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_AD28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = *(a2 + 72);
  *(a2 + 72) = a1;

  if (*(a1 + 16))
  {
    v46 = v9;
    v47 = v8;
    v17 = *(sub_AC48() - 8);
    v18 = sub_6C08(a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)));
    v20 = v19;
    sub_ACF8();
    v21 = v18;
    v22 = sub_AD18();
    v23 = sub_AE38();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v44 = a3;
      v25 = v24;
      v49 = swift_slowAlloc();
      *v25 = 136315395;
      v26 = sub_AFA8();
      v28 = sub_9AA8(v26, v27, &v49);
      v45 = a4;
      v29 = v28;

      *(v25 + 4) = v29;
      *(v25 + 12) = 2081;
      v48[0] = v18;
      v48[1] = v20;
      sub_7738();
      v30 = v21;
      v31 = sub_ADB8();
      v33 = sub_9AA8(v31, v32, &v49);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_0, v22, v23, "[%s] first post-commit work item view controller: %{private}s", v25, 0x16u);
      swift_arrayDestroy();

      a3 = v44;
    }

    (*(v46 + 8))(v15, v47);
    v34 = v21;
    a3(v18);
  }

  else
  {
    sub_ACF8();
    v35 = sub_AD18();
    v36 = sub_AE38();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45 = a4;
      v39 = v38;
      v48[0] = v38;
      *v37 = 136315138;
      v40 = sub_AFA8();
      v42 = sub_9AA8(v40, v41, v48);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_0, v35, v36, "[%s] determined post-commit work is not necessary", v37, 0xCu);
      sub_8320(v39);
    }

    (*(v9 + 8))(v13, v8);
    a3(0);
  }
}

uint64_t sub_565C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_AC48() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_8280(&qword_14CF0, &type metadata accessor for AdvertisableFeaturePostCommitWorkItem);
  v7 = 0;
  while ((sub_AD98() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_577C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_AD28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ACF8();
  v12 = sub_AD18();
  v13 = sub_AE38();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v25 = a1;
    v17 = v16;
    v28 = v16;
    *v15 = 136315138;
    v18 = sub_AFA8();
    v20 = sub_9AA8(v18, v19, &v28);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v12, v13, "[%s] Commit enablement starting", v15, 0xCu);
    sub_8320(v17);
    a1 = v25;

    a2 = v26;
  }

  (*(v8 + 8))(v11, v7);
  sub_24E8();
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v3;

  sub_AB48();

  swift_getObjectType();
  sub_AC18();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v3;

  sub_AB48();

  swift_getObjectType();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v22[4] = a2;

  sub_ABF8();
  swift_unknownObjectRelease();
}

uint64_t sub_5AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v7 = sub_AD38();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AD68();
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_74CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  sub_7310();
  v26 = sub_AE48();
  sub_7E80(a1, &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), sub_74CC);
  v18 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  v19[2] = a2;
  v19[3] = v20;
  v19[4] = a4;
  sub_8018(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, sub_74CC);
  aBlock[4] = sub_766C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_387C;
  aBlock[3] = &unk_10928;
  v21 = _Block_copy(aBlock);

  sub_AD58();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_8280(&qword_14CC8, &type metadata accessor for DispatchWorkItemFlags);
  sub_73B8(0, &unk_14DC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_740C();
  sub_AE98();
  v22 = v26;
  sub_AE58();
  _Block_release(v21);

  (*(v29 + 8))(v10, v7);
  return (*(v27 + 8))(v14, v28);
}

uint64_t sub_5E7C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 65) = 1;
  }

  return a2(a4);
}

uint64_t sub_5EF0(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_AD28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  if (*(v3 + 65) == 1)
  {
    sub_ACF8();
    v15 = sub_AD18();
    v16 = sub_AE38();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v39 = a1;
      v19 = a2;
      v20 = v18;
      v42 = v18;
      *v17 = 136315138;
      v21 = sub_AFA8();
      v38 = v6;
      v23 = sub_9AA8(v21, v22, &v42);
      v40 = v7;
      v24 = v23;

      *(v17 + 4) = v24;
      _os_log_impl(&dword_0, v15, v16, "[%s] Determine post-commit work starting", v17, 0xCu);
      sub_8320(v20);
      a2 = v19;
      a1 = v39;

      v25 = v14;
      v26 = v38;
      (*(v8 + 8))(v25, v40);
    }

    else
    {

      (*(v8 + 8))(v14, v7);
      v26 = v6;
    }

    sub_24E8();
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v3;

    sub_AB48();

    swift_getObjectType();
    v36 = swift_allocObject();
    v36[2] = a1;
    v36[3] = a2;
    v36[4] = v26;

    sub_AC28();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_ACF8();
    v27 = sub_AD18();
    v28 = sub_AE18();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v7;
      v31 = v30;
      v42 = v30;
      *v29 = 136315138;
      v32 = sub_AFA8();
      v34 = a1;
      v35 = sub_9AA8(v32, v33, &v42);

      *(v29 + 4) = v35;
      a1 = v34;
      _os_log_impl(&dword_0, v27, v28, "[%s] Commit enablement must be called at least once before post-commit work", v29, 0xCu);
      sub_8320(v31);

      (*(v8 + 8))(v12, v40);
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    return a1(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_6328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v5 = sub_AD38();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AD68();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_72D4(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7310();
  v17 = sub_AE48();
  sub_7E80(a1, v16, sub_72D4);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_8018(v16, v20 + v18, sub_72D4);
  v21 = (v20 + v19);
  v22 = v26;
  *v21 = v25;
  v21[1] = v22;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v27;
  aBlock[4] = sub_7374;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_387C;
  aBlock[3] = &unk_10888;
  v23 = _Block_copy(aBlock);

  sub_AD58();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_8280(&qword_14CC8, &type metadata accessor for DispatchWorkItemFlags);
  sub_73B8(0, &unk_14DC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_740C();
  sub_AE98();
  sub_AE58();
  _Block_release(v23);

  (*(v30 + 8))(v8, v5);
  return (*(v28 + 8))(v12, v29);
}

uint64_t sub_66D0(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v58 = a3;
  v59 = a2;
  v5 = sub_ABC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v51 - v12;
  __chkstk_darwin(v11);
  v15 = &v51 - v14;
  v16 = sub_AD28();
  v56 = *(v16 - 8);
  v57 = v16;
  v17 = *(v56 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  sub_72D4(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_7E80(a1, v26, sub_72D4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v15, v26, v5);
    sub_ACF8();
    v27 = *(v6 + 16);
    v27(v13, v15, v5);
    v28 = sub_AD18();
    v29 = sub_AE18();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54 = v15;
      v52 = v28;
      v31 = v30;
      v53 = swift_slowAlloc();
      v60 = v53;
      *v31 = 136315394;
      v32 = sub_AFA8();
      v34 = sub_9AA8(v32, v33, &v60);
      LODWORD(v55) = v29;
      v35 = v34;

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      v27(v10, v13, v5);
      v36 = sub_ADB8();
      v38 = v37;
      v39 = *(v6 + 8);
      v39(v13, v5);
      v40 = sub_9AA8(v36, v38, &v60);

      *(v31 + 14) = v40;
      v41 = v52;
      _os_log_impl(&dword_0, v52, v55, "[%s] Determine post-commit work failed with error: %{public}s", v31, 0x16u);
      swift_arrayDestroy();

      v15 = v54;
    }

    else
    {

      v39 = *(v6 + 8);
      v39(v13, v5);
    }

    (*(v56 + 8))(v20, v57);
    v59(&_swiftEmptyArrayStorage);
    return (v39)(v15, v5);
  }

  else
  {
    v42 = *v26;
    sub_ACF8();
    v43 = sub_AD18();
    v44 = sub_AE38();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v60 = v46;
      *v45 = 136315138;
      v47 = sub_AFA8();
      v49 = sub_9AA8(v47, v48, &v60);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_0, v43, v44, "[%s] Determine post-commit work completed", v45, 0xCu);
      sub_8320(v46);
    }

    (*(v56 + 8))(v22, v57);
    v59(v42);
  }
}

void *sub_6C08(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_AD28();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_ACC8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AC48();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 != enum case for AdvertisableFeaturePostCommitWorkItem.cancelPendingHealthAppDeepLinkIfPresent(_:))
  {
    if (v19 == enum case for AdvertisableFeaturePostCommitWorkItem.showMedicationsThatAffectHeartRate(_:))
    {
      v20 = v2[2];
      v21 = objc_allocWithZone(type metadata accessor for MedicationsThatAffectHeartRateMiniFlowStepController());
      swift_unknownObjectWeakInit();
      (*(v10 + 104))(v13, enum case for MedicationsAffectHeartRateOnboardingViewController.ActionStyle.continue(_:), v9);
      v22 = v20;
      v23 = BPSPillSelectedColor();
      v24 = sub_ACD8();
      sub_8280(&qword_14CA8, type metadata accessor for MedicationsThatAffectHeartRateMiniFlowStepController);
      v25 = v24;
      sub_ACE8();

      return v24;
    }

    sub_ACF8();

    v27 = sub_AD18();
    v28 = sub_AE28();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v29 = 136315394;
      v30 = sub_AFA8();
      v32 = sub_9AA8(v30, v31, &v41);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      v40 = v2;
      type metadata accessor for HealthFeaturesViewModel();

      v33 = sub_ADB8();
      v35 = sub_9AA8(v33, v34, &v41);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_0, v27, v28, "[%s] Unrecognized value: %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    (*(v38 + 8))(v8, v39);
  }

  (*(v15 + 8))(v18, v14);
  return 0;
}

uint64_t sub_7094()
{
  sub_8320((v0 + 24));
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_7110@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_ABB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(*a1 + 56);
  sub_7244((*a1 + 24), *(*a1 + 48));
  (*(v5 + 104))(v8, enum case for AdvertisableFeature.Location.watchPairing(_:), v4);
  v11 = *(v9 + 80);
  v12 = sub_AC88();
  v14 = v13;
  result = (*(v5 + 8))(v8, v4);
  *a2 = v12;
  a2[1] = v14;
  return result;
}

void *sub_7244(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_7290()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_7310()
{
  result = qword_14DB0;
  if (!qword_14DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_14DB0);
  }

  return result;
}

uint64_t sub_73A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_73B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ADF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_740C()
{
  result = qword_14CD0;
  if (!qword_14CD0)
  {
    sub_73B8(255, &unk_14DC0, &type metadata accessor for DispatchWorkItemFlags);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14CD0);
  }

  return result;
}

uint64_t sub_7480()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_74CC()
{
  if (!qword_14CD8)
  {
    sub_ABC8();
    sub_8280(&qword_14CC0, &type metadata accessor for AdvertisableFeatureError);
    v0 = sub_AF98();
    if (!v1)
    {
      atomic_store(v0, &qword_14CD8);
    }
  }
}

uint64_t sub_756C()
{
  sub_74CC();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_ABC8();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_766C()
{
  sub_74CC();
  v2 = *(v1 - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_5E7C(v3, v4, v5, v6);
}

unint64_t sub_76D4()
{
  result = qword_14DA0;
  if (!qword_14DA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_14DA0);
  }

  return result;
}

void sub_7738()
{
  if (!qword_14CE0)
  {
    sub_77A0(255, &qword_14CE8);
    v0 = sub_AE78();
    if (!v1)
    {
      atomic_store(v0, &qword_14CE0);
    }
  }
}

uint64_t sub_77A0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_7800(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

char *sub_7864(char *a1, int64_t a2, char a3)
{
  result = sub_7884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_7884(char *result, int64_t a2, char a3, char *a4)
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
    sub_82C8(0, &unk_14D30, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_79A0(uint64_t result, int a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_AF08();
      sub_ABE8();
      swift_dynamicCast();
      return v12;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    sub_ABE8();
    result = sub_AED8();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_AEE8();
    swift_dynamicCast();
    v6 = *(a4 + 40);
    sub_8280(&qword_14D08, &type metadata accessor for AdvertisableFeatureModel);
    v7 = sub_AD78();
    v8 = -1 << *(a4 + 32);
    v5 = v7 & ~v8;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v9 = ~v8;
      sub_8280(&qword_14D28, &type metadata accessor for AdvertisableFeatureModel);
      do
      {
        v11 = *(*(a4 + 48) + 8 * v5);
        if (sub_AD98())
        {
          goto LABEL_16;
        }

        v5 = (v5 + 1) & v9;
      }

      while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v10 = *(*(a4 + 48) + 8 * v5);
}

void sub_7C00(uint64_t a1@<X8>)
{
  type metadata accessor for HealthFeaturesSetupFlowController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass:ObjCClassFromMetadata];
  v14._countAndFlagsBits = 0xE000000000000000;
  v16._object = 0x800000000000C310;
  v16._countAndFlagsBits = 0xD000000000000028;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v5.super.isa = v4;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v6 = sub_AB38(v16, v18, v5, v20, v14);
  v8 = v7;

  v9 = [v3 bundleForClass:ObjCClassFromMetadata];
  v15._countAndFlagsBits = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD00000000000002ALL;
  v17._object = 0x800000000000C340;
  v19.value._countAndFlagsBits = 0;
  v19.value._object = 0;
  v10.super.isa = v9;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v11 = sub_AB38(v17, v19, v10, v21, v15);
  v13 = v12;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = 1;
}

void sub_7DD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_ABC8();
    sub_8280(&qword_14CC0, &type metadata accessor for AdvertisableFeatureError);
    v6 = sub_AF98();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_7E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_7F00(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_ABC8();
    (*(*(v6 - 8) + 8))(v1 + v4, v6);
  }

  else
  {
    v7 = *(v1 + v4);
  }

  v8 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v8 + 8);

  return _swift_deallocObject(v1, v9 + 8, v3 | 7);
}

uint64_t sub_8018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_80AC(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v2 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v2 + v6);

  return a2(v2 + v4, v8, v9, v10);
}

unint64_t sub_8164()
{
  result = qword_14D18;
  if (!qword_14D18)
  {
    sub_82C8(255, &qword_14D10, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14D18);
  }

  return result;
}

void sub_81D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_ABE8();
    v7 = sub_8280(&qword_14D08, &type metadata accessor for AdvertisableFeatureModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_8274(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_8280(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_82C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_8320(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_836C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_8384(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_8398(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_83E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_8448(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

char *sub_8498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController____lazy_storage___firstStepViewController;
  v5 = *&v3[OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController____lazy_storage___firstStepViewController];
  if (v5)
  {
    v6 = *&v3[OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController____lazy_storage___firstStepViewController];
  }

  else
  {
    sub_A710(0, &qword_14D90, a3, type metadata accessor for HealthFeaturesSetupFlowController, type metadata accessor for HealthFeaturesViewModel);
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v3;
    v8 = v3;
    sub_AB48();

    v9 = objc_allocWithZone(type metadata accessor for HealthFeaturesViewController());
    v10 = sub_1978(v14);
    swift_unknownObjectWeakAssign();
    v11 = *&v3[v4];
    *&v8[v4] = v10;
    v6 = v10;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

uint64_t sub_85DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_A710(0, &qword_14D90, a3, type metadata accessor for HealthFeaturesSetupFlowController, type metadata accessor for HealthFeaturesViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_AB48();

  return v6;
}

_BYTE *sub_86A8()
{
  v1 = v0;
  v2 = sub_AD38();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_AD68();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AD48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController_featureIdentifiers;
  *&v1[v15] = sub_AB88();
  *&v1[OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController____lazy_storage___firstStepViewController] = 0;
  v16 = OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController__viewModel;
  sub_A710(0, &qword_14D90, v17, type metadata accessor for HealthFeaturesSetupFlowController, type metadata accessor for HealthFeaturesViewModel);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&v1[v16] = sub_AB78();
  v1[OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController_isLoadingConfiguration] = 0;
  v21 = type metadata accessor for HealthFeaturesSetupFlowController();
  v33.receiver = v1;
  v33.super_class = v21;
  v22 = objc_msgSendSuper2(&v33, "init");
  v22[OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController_isLoadingConfiguration] = 1;
  sub_A7AC(0, &qword_14DB0, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.userInitiated(_:), v10);
  v23 = v22;
  v24 = sub_AE68();
  (*(v11 + 8))(v14, v10);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  aBlock[4] = sub_A63C;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_387C;
  aBlock[3] = &unk_10B48;
  v26 = _Block_copy(aBlock);
  sub_AD58();
  v31 = &_swiftEmptyArrayStorage;
  sub_A6C8(&qword_14CC8, &type metadata accessor for DispatchWorkItemFlags);
  sub_A65C(0, &unk_14DC0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_740C();
  sub_AE98();
  sub_AE58();
  _Block_release(v26);

  (*(v30 + 8))(v5, v2);
  (*(v6 + 8))(v9, v29);

  return v23;
}

uint64_t sub_8B20(void *a1, uint64_t a2, uint64_t a3)
{
  sub_A710(0, &qword_14D90, a3, type metadata accessor for HealthFeaturesSetupFlowController, type metadata accessor for HealthFeaturesViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  sub_AB48();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2858(sub_A6C0, v5);
}

void sub_8C40(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController_isLoadingConfiguration) = 0;
    v4 = [Strong delegate];
    if (a1)
    {
      if (v4)
      {
        v5 = &selRef_buddyControllerReleaseHold_;
LABEL_7:
        [v4 *v5];
        swift_unknownObjectRelease();

        return;
      }

      __break(1u);
    }

    else if (v4)
    {
      v5 = &selRef_buddyControllerReleaseHoldAndSkip_;
      goto LABEL_7;
    }

    __break(1u);
  }
}

uint64_t sub_8DB4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_A710(0, &qword_14D90, v4, type metadata accessor for HealthFeaturesSetupFlowController, type metadata accessor for HealthFeaturesViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v1;
  sub_AB48();

  if (a1)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = a1;
    v8[4] = ObjectType;

    v9 = swift_unknownObjectRetain();
    sub_46B8(v9, sub_A15C, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_8F28(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AD28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a1)
    {
      v12 = a1;
      sub_92EC(v12);
    }

    else
    {
      sub_ACF8();
      swift_unknownObjectRetain();
      v13 = sub_AD18();
      v14 = sub_AE38();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v23[0] = swift_slowAlloc();
        v24 = v23[0];
        *v15 = 136315394;
        v16 = sub_AFA8();
        v18 = sub_9AA8(v16, v17, &v24);

        *(v15 + 4) = v18;
        *(v15 + 12) = 2082;
        v23[1] = a3;
        sub_A65C(0, &qword_14D98, sub_76D4, &type metadata accessor for Optional);
        swift_unknownObjectRetain();
        v19 = sub_ADB8();
        v21 = sub_9AA8(v19, v20, &v24);

        *(v15 + 14) = v21;
        _os_log_impl(&dword_0, v13, v14, "[%s] no controllers to present after %{public}s", v15, 0x16u);
        swift_arrayDestroy();
      }

      (*(v6 + 8))(v9, v5);
      v22 = [v11 delegate];
      if (v22)
      {
        [v22 buddyControllerDone:v11];

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_92EC(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_AD28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ACF8();
  v9 = a1;
  v10 = sub_AD18();
  v11 = sub_AE38();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v4;
    v13 = v12;
    v24 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = sub_AFA8();
    v16 = sub_9AA8(v14, v15, &v24);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    swift_getObjectType();
    v23 = v9;
    swift_getWitnessTable();
    v17 = sub_AF78();
    v19 = sub_9AA8(v17, v18, &v24);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_0, v10, v11, "[%s] pushing next step controller %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v8, v22);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  [v9 setMiniFlowDelegate:v2];
  return [v2 pushController:v9 animated:1];
}

uint64_t sub_9568(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  LOBYTE(v2) = v4(v2);

  return v2 & 1;
}

id sub_95B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthFeaturesSetupFlowController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9668@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_AC58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [objc_allocWithZone(HKHealthStore) init];
  v11 = sub_ACA8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = v10;
  v15 = sub_AC98();
  v29 = v11;
  v30 = sub_A6C8(&qword_14DD0, &type metadata accessor for CountryOracle);
  *&v28 = v15;
  (*(v5 + 104))(v8, enum case for PluginAdvertisableFeatureSourceContext.DeviceSource.activeDevice(_:), v4);
  v16 = sub_AC78();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_AC68();
  v20 = *(v9 + OBJC_IVAR____TtC31HealthFeaturesBridgeSetupPlugin33HealthFeaturesSetupFlowController_featureIdentifiers);
  v29 = v16;
  v30 = &protocol witness table for HealthPluginAdvertisableFeatureManagerFactory;
  *&v28 = v19;
  type metadata accessor for HealthFeaturesViewModel();
  v21 = swift_allocObject();
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  sub_A710(0, &qword_14AC8, 255, type metadata accessor for HealthFeaturesViewModel, sub_2550);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  v25 = sub_AB78();
  *(v21 + 16) = v14;
  *(v21 + 80) = v20;
  *(v21 + 88) = v25;
  result = sub_A784(&v28, v21 + 24);
  *a2 = v21;
  return result;
}

uint64_t sub_98EC@<X0>(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *a1;
  sub_A710(0, &qword_14D90, a2, type metadata accessor for HealthFeaturesSetupFlowController, type metadata accessor for HealthFeaturesViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  sub_AB48();

  *a3 = v7;
  return result;
}

uint64_t sub_99C0(uint64_t *a1, void **a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  sub_A710(0, &qword_14D90, a3, type metadata accessor for HealthFeaturesSetupFlowController, type metadata accessor for HealthFeaturesViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;

  return sub_AB58();
}

id sub_9A7C()
{
  v0 = HKPreferredRegulatoryDomainProvider();

  return v0;
}

uint64_t sub_9AA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_9B74(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_A080(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_8320(v11);
  return v7;
}

unint64_t sub_9B74(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_9C80(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_AF48();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_9C80(uint64_t a1, unint64_t a2)
{
  v4 = sub_9CCC(a1, a2);
  sub_9DFC(&off_10798);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_9CCC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_9EE8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_AF48();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_ADC8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_9EE8(v10, 0);
        result = sub_AF28();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_9DFC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_9F74(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_9EE8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_A878(0, &qword_14D88, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_9F74(char *result, int64_t a2, char a3, char *a4)
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
    sub_A878(0, &qword_14D88, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_A080(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_A0E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A11C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_A168()
{
  v0 = sub_AD28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 sharedInstance];
  if (!v6)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v5 activeDeviceSelectorBlock];
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = swift_allocObject();
    v8 = sub_A900;
    *(v10 + 16) = sub_A900;
    *(v10 + 24) = v9;
    v21 = sub_A938;
    v22 = v10;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v20 = sub_9568;
    *(&v20 + 1) = &unk_10BC0;
    v11 = _Block_copy(&aBlock);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v7 getAllDevicesWithArchivedAltAccountDevicesMatching:v11];
  sub_A79C(v8);
  _Block_release(v11);

  if (!v12)
  {
    goto LABEL_24;
  }

  sub_A7AC(0, &qword_14DD8, NRDevice_ptr);
  v13 = sub_ADD8();

  if (v13 >> 62)
  {
    if (sub_AF68())
    {
      goto LABEL_8;
    }
  }

  else if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_8:
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = sub_AF38();
      goto LABEL_11;
    }

    if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
    {
      v14 = *(v13 + 32);
LABEL_11:
      v15 = v14;

      if ([v15 valueForProperty:NRDevicePropertyIsAltAccount])
      {
        sub_AE88();

        swift_unknownObjectRelease();
      }

      else
      {

        v23 = 0u;
        v24 = 0u;
      }

      aBlock = v23;
      v20 = v24;
      if (*(&v24 + 1))
      {
        swift_dynamicCast();
      }

      else
      {
        sub_A7F4(&aBlock);
      }

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_ACF8();
  v16 = sub_AD18();
  v17 = sub_AE18();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "Unable to get activePairingDevice", v18, 2u);
  }

  (*(v1 + 8))(v4, v0);
}

void sub_A530(uint64_t a1)
{
  if (a1)
  {
    sub_A7AC(0, &qword_14DA8, UIViewController_ptr);
    if (swift_dynamicCastMetatype())
    {
      v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v3 = swift_dynamicCastObjCProtocolConditional();
      if (v3)
      {
        sub_92EC(v3);

        return;
      }
    }
  }

  v4 = [v1 delegate];
  if (v4)
  {
    [v4 buddyControllerDone:v1];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_A604()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_A65C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_A6C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_A710(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a4(a3);
    a5(255);
    v7 = sub_AB68();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_A784(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_A79C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_A7AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_A7F4(uint64_t a1)
{
  sub_A878(0, &unk_14DE0, &type metadata for Any + 8, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_A878(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_A8C8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A938()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t type metadata accessor for MedicationsThatAffectHeartRateMiniFlowStepController()
{
  result = qword_14DF8;
  if (!qword_14DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_AA04()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_AA8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationsThatAffectHeartRateMiniFlowStepController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_AADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, Swift::String a9)
{
  v10._countAndFlagsBits = swift_unknownObjectWeakLoadStrong();
  if (v10._countAndFlagsBits)
  {
    [v10._countAndFlagsBits miniFlowStepComplete:v9];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
    return sub_AB38(v10, v11, v12, v13, a9);
  }
}