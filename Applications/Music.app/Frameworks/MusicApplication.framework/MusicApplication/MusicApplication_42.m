id sub_385F68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaSocialProfileCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediaSocialProfileCoordinator()
{
  result = qword_E01218;
  if (!qword_E01218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3860D0()
{
  sub_2EB24();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication29MediaSocialProfileCoordinatorC5State016_9A98D6C3F884101J15A442A2EB43F19F8LLO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_3861B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 152))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_38620C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 144) = 0;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

double sub_386280(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_3862D8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_386328(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

unint64_t sub_386394()
{
  result = qword_E01240;
  if (!qword_E01240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E01240);
  }

  return result;
}

uint64_t sub_386418()
{

  return swift_deallocObject();
}

uint64_t sub_386460()
{

  return swift_deallocObject();
}

double sub_3864C4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

uint64_t sub_386500(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_386514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_386584()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_3865BC()
{

  if (*(v0 + 32) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_386610()
{

  if (*(v0 + 48) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_386674(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_386688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB7C10();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB7C50();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_AB7C30();
  v19 = _swiftEmptyArrayStorage;
  sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_809E0(&qword_DF06D0, &unk_DE9C30);
  sub_ABABB0();
  sub_ABA160();
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
  _Block_release(v14);
}

uint64_t sub_386934(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin(v5 - 8);
  v7 = v31 - v6;
  v8 = sub_AB7CC0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_accessQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = sub_AB7CF0();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_AB3420();
    v15 = sub_AB3430();
    (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    v16 = OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_lastAuthenticationAttempt;
    swift_beginAccess();
    sub_386514(v7, v2 + v16);
    v17 = swift_endAccess();
    if (a1)
    {
      return sub_383228(v17);
    }

    else
    {
      sub_C32A0(v33);
      v18 = v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state;
      v19 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 112);
      v35[6] = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 96);
      v35[7] = v19;
      v35[8] = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 128);
      v36 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 144);
      v20 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 48);
      v35[2] = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 32);
      v35[3] = v20;
      v21 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 80);
      v35[4] = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 64);
      v35[5] = v21;
      v22 = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state + 16);
      v35[0] = *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_state);
      v35[1] = v22;
      v23 = v33[7];
      *(v18 + 96) = v33[6];
      *(v18 + 112) = v23;
      *(v18 + 128) = v33[8];
      *(v18 + 144) = v34;
      v24 = v33[3];
      *(v18 + 32) = v33[2];
      *(v18 + 48) = v24;
      v25 = v33[5];
      *(v18 + 64) = v33[4];
      *(v18 + 80) = v25;
      v26 = v33[1];
      *v18 = v33[0];
      *(v18 + 16) = v26;
      sub_3863E8(v35);
      v27 = *(v18 + 112);
      v37[6] = *(v18 + 96);
      v37[7] = v27;
      v37[8] = *(v18 + 128);
      v38 = *(v18 + 144);
      v28 = *(v18 + 48);
      v37[2] = *(v18 + 32);
      v37[3] = v28;
      v29 = *(v18 + 80);
      v37[4] = *(v18 + 64);
      v37[5] = v29;
      v30 = *(v18 + 16);
      v37[0] = *v18;
      v37[1] = v30;
      if (((1 << sub_90064(v37)) & 0xB) != 0)
      {
        *(v2 + OBJC_IVAR____TtC16MusicApplication29MediaSocialProfileCoordinator_retryCount) = 0;
      }

      sub_C32A0(v31);
      v39[6] = v31[6];
      v39[7] = v31[7];
      v39[8] = v31[8];
      v40 = v32;
      v39[2] = v31[2];
      v39[3] = v31[3];
      v39[4] = v31[4];
      v39[5] = v31[5];
      v39[0] = v31[0];
      v39[1] = v31[1];
      return sub_384938(v39, a2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_386C50(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

uint64_t sub_386C8C()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_386D5C()
{

  return swift_deallocObject();
}

uint64_t sub_386DC8()
{

  return swift_deallocObject();
}

uint64_t sub_386E30(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v4;
  v9[8] = *(a1 + 128);
  v10 = *(a1 + 144);
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v6 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v6;
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  return v3(v9, *a2);
}

uint64_t sub_386EBC()
{

  v1 = *(v0 + 64);
  if (v1 != &dword_0 + 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_386F4C()
{

  return swift_deallocObject();
}

uint64_t sub_386FC8()
{
  v1 = sub_AB2BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_387128()
{
  v1 = [v0 navigationItem];
  v2 = [v0 parentViewController];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v4 = v3;
      v5 = [v4 navigationItem];

      v3 = [v4 parentViewController];
      v1 = v5;
      if (!v3)
      {
        return v5;
      }
    }
  }

  return v1;
}

uint64_t sub_38720C()
{
  if (qword_DE6B08 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E01278))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_9BC10(v5);
    return 0;
  }

  return result;
}

uint64_t sub_3872E8(unsigned __int8 a1)
{
  result = sub_387998();
  if (result == 4)
  {
    if (a1 == 4)
    {
      return result;
    }

LABEL_11:

    return sub_388E7C(a1, v1);
  }

  if (a1 != 4)
  {
    result = sub_3B266C(result, a1);
    if (result)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (qword_DE6B20 != -1)
  {
    swift_once();
  }

  v4 = qword_E01290;
  v5 = sub_AB9260();
  objc_setAssociatedObject(v1, v4, v5, &dword_0 + 1);

  [v1 _setManualScrollEdgeAppearanceEnabled:0];
  [v1 _setAutoScrollEdgeTransitionDistance:16.0];

  return [v1 _setManualScrollEdgeAppearanceEnabled:1];
}

void sub_387430(uint64_t a1, uint64_t a2)
{
  v5 = sub_3875B8();
  if (v6)
  {
    if (a2)
    {
      if (v5 == a1 && v6 == a2)
      {

LABEL_10:

LABEL_15:

        [v2 setLargeTitleDisplayMode:2];
        return;
      }

      v7 = sub_ABB3C0();

      if (v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  else if (!a2)
  {
    return;
  }

  if (qword_DE6B18 != -1)
  {
    swift_once();
  }

  v8 = qword_E01288;
  if (a2)
  {

    v9 = sub_AB9260();

    objc_setAssociatedObject(v2, v8, v9, &dword_0 + 1);

    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v10 = qword_E01288;

  objc_setAssociatedObject(v2, v10, 0, &dword_0 + 1);
}

uint64_t sub_3875B8()
{
  if (qword_DE6B18 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E01288))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_9BC10(v5);
    return 0;
  }
}

uint64_t sub_3876A0()
{
  v1 = [v0 subviews];
  sub_13C80(0, &qword_DF12A0);
  v2 = sub_AB9760();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v12 = v1;
    v5 = 0;
    v1 = &loc_71BA60 + 2;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_3605EC(v5, v3);
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 tag] == &loc_71BA60 + 2)
      {
        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
        v1 = &loc_71BA60 + 2;
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v1 = v12;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_20;
    }

LABEL_25:

    return 0;
  }

  result = sub_ABB060();
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v10 = sub_3605EC(0, _swiftEmptyArrayStorage);
    goto LABEL_23;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v10 = _swiftEmptyArrayStorage[4];
LABEL_23:
    v11 = v10;

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_3878B0()
{
  if (qword_DE6B10 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E01280))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (!*(&v4 + 1))
  {
    sub_9BC10(v5);
    return 3;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 3;
  }

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_387998()
{
  if (qword_DE6B20 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E01290))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return sub_3891C8(v2, v3);
    }
  }

  else
  {
    sub_9BC10(v6);
  }

  return 4;
}

uint64_t sub_387A78()
{
  if (qword_DE6B28 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E01298))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_13C80(0, &unk_DF12E0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_9BC10(v5);
    return 0;
  }
}

void sub_387B6C(uint64_t a1, char a2)
{
  v5 = COERCE_DOUBLE(sub_3890C0());
  if (v6)
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && v5 == *&a1)
  {
    return;
  }

  if (qword_DE6B30 != -1)
  {
    swift_once();
  }

  v7 = qword_E012A0;
  if (a2)
  {
    isa = 0;
  }

  else
  {
    isa = sub_AB3A30().super.super.isa;
  }

  objc_setAssociatedObject(v2, v7, isa, &dword_0 + 3);

  v9 = [v2 navigationBar];
  if (v9)
  {
    v10 = *&a1;
    if (a2)
    {
      v10 = 1.0;
    }

    v11 = v9;
    [v9 _setTitleOpacity:v10];
  }
}

void sub_387CB0(uint64_t a1, id a2, char a3)
{
  v4 = v3;
  v8 = [v4 topViewController];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 overrideTraitCollectionForChildViewController:v8];
    if (v10)
    {
      v11 = v10;
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_AF7C50;
        *(v12 + 32) = v11;
        *(v12 + 40) = a2;
        sub_13C80(0, &qword_E00AB0);
        v13 = a2;
        v14 = v11;
        isa = sub_AB9740().super.isa;
        a2 = [objc_opt_self() traitCollectionWithTraitsFromCollections:isa];
      }

      else
      {

        a2 = v11;
      }
    }

    else
    {

      v17 = a2;
    }
  }

  else
  {
    v16 = a2;
  }

  [v4 setOverrideTraitCollection:a2 forChildViewController:a1];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for TraitNavigationController();
  objc_msgSendSuper2(&v18, "pushViewController:animated:", a1, a3 & 1);
}

unint64_t sub_387EE8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [v3 viewControllers];
  sub_13C80(0, &qword_DE7500);
  v9 = sub_AB9760();
  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_34:

    return [v4 pushViewController:a1 overrideTraitCollection:a2 animated:a3 & 1];
  }

  v11 = sub_ABB060();
  if (!v11)
  {
    goto LABEL_34;
  }

LABEL_3:
  v12 = __OFSUB__(v11, 1);
  result = v11 - 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_37;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_37:
    v14 = sub_35F8D4(result, v10);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
    v14 = *(v10 + 8 * result + 32);
LABEL_8:
    v15 = v14;

    type metadata accessor for AlbumDetailViewController();
    v16 = swift_dynamicCastClass();

    if (!v16 || (v17 = swift_dynamicCastClass()) == 0)
    {

      return [v4 pushViewController:a1 overrideTraitCollection:a2 animated:a3 & 1];
    }

    v18 = (v16 + *&stru_298.segname[swift_isaMask & *v16]);
    v48 = *v18;
    v19 = v18[4];
    v21 = v18[1];
    v20 = v18[2];
    v51 = v18[3];
    v52 = v19;
    v49 = v21;
    v50 = v20;
    v22 = (v17 + *&stru_298.segname[*v17 & swift_isaMask]);
    v24 = v22[1];
    v23 = v22[2];
    v25 = v22[4];
    v56 = v22[3];
    v57 = v25;
    *v54 = v24;
    v55 = v23;
    v53 = *v22;
    v26 = v49;
    if (v49)
    {
      v27 = a1;
      v28 = v15;
      sub_70EB0(&v48, v47);
      sub_70EB0(&v53, v47);
      v29 = [v26 identifiers];
      v30 = v54[0];
      if (!v54[0])
      {
        if (!v29)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v31 = a1;
      v32 = v15;
      sub_70EB0(&v48, v47);
      sub_70EB0(&v53, v47);
      v30 = v54[0];
      if (!v54[0])
      {
        goto LABEL_26;
      }

      v29 = 0;
    }

    v33 = [v30 identifiers];
    v34 = v33;
    if (v29)
    {
      if (!v33)
      {
LABEL_21:

LABEL_25:
        sub_70F0C(&v53);
        sub_70F0C(&v48);
        return [v4 pushViewController:a1 overrideTraitCollection:a2 animated:a3 & 1];
      }

      sub_13C80(0, &unk_DE8180);
      v35 = sub_ABA790();

      if (v35)
      {
LABEL_26:
        v36 = v51;
        v37 = v56;
        if (v51)
        {
          if (v56)
          {
            sub_13C80(0, &unk_DE8180);
            v38 = v37;
            v39 = v36;
            v40 = sub_ABA790();

            if (v40)
            {
              goto LABEL_32;
            }
          }
        }

        else if (!v56)
        {
LABEL_32:

          sub_70F0C(&v53);
          return sub_70F0C(&v48);
        }

        v41 = *&stru_298.sectname[swift_isaMask & *v16];
        v42 = *(v16 + v41);
        *(v16 + v41) = v37;
        v43 = v37;

        v44 = *(v16 + *(&stru_248.reloff + (swift_isaMask & *v16)));
        v45 = *(v44 + qword_E08848);
        *(v44 + qword_E08848) = v37;
        v46 = v43;

        *(v44 + qword_E08860) = 0;
        sub_1F5728();
        goto LABEL_32;
      }
    }

    else
    {
      if (!v33)
      {
        goto LABEL_26;
      }
    }

    v29 = a1;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

id sub_38836C(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for TraitNavigationController();
  v3 = objc_msgSendSuper2(&v18, "_traitCollectionForChildEnvironment:", a1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  swift_unknownObjectRetain();
  v6 = [v1 childViewControllers];
  sub_13C80(0, &qword_DE7500);
  v7 = sub_AB9760();
  v17 = v5;
  __chkstk_darwin(v7);
  v16[2] = &v17;
  v8 = sub_1B3840(sub_389344, v16, v7);

  if ((v8 & 1) != 0 || (v9 = [v1 overrideTraitCollectionForChildViewController:v5]) == 0)
  {
    swift_unknownObjectRelease();
    return v3;
  }

  v10 = v9;
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF7C50;
    *(v11 + 32) = v3;
    *(v11 + 40) = v10;
    sub_13C80(0, &qword_E00AB0);
    v12 = v3;
    v13 = v10;
    isa = sub_AB9740().super.isa;
    v10 = [objc_opt_self() traitCollectionWithTraitsFromCollections:isa];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v10;
}

id sub_38861C(void *a1, char a2)
{
  v3 = v2;
  v6 = [v3 viewControllers];
  sub_13C80(0, &qword_DE7500);
  v7 = sub_AB9760();
  aBlock[0] = a1;
  v19[2] = aBlock;
  v8 = sub_1B3840(sub_72E3C, v19, v7);

  if (v8)
  {
    v9 = type metadata accessor for TraitNavigationController();
    v20.receiver = v3;
    v20.super_class = v9;
    return objc_msgSendSuper2(&v20, "removeChildViewController:notifyDidMove:", a1, a2 & 1);
  }

  else
  {
    v11 = [a1 transitionCoordinator];
    if (v11)
    {
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v3;
      *(v13 + 24) = a1;
      aBlock[4] = sub_389254;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_CF24C;
      aBlock[3] = &block_descriptor_119;
      v14 = _Block_copy(aBlock);
      v15 = v3;
      v16 = a1;

      [v12 animateAlongsideTransition:0 completion:v14];
      _Block_release(v14);
      swift_unknownObjectRelease();
      v17 = type metadata accessor for TraitNavigationController();
      v22.receiver = v15;
      v22.super_class = v17;
      objc_msgSendSuper2(&v22, "removeChildViewController:notifyDidMove:", v16, a2 & 1);
      return [v16 _music_setParentTraitEnvironmentOverride:v15];
    }

    else
    {
      [v3 setOverrideTraitCollection:0 forChildViewController:a1];
      [a1 _music_setParentTraitEnvironmentOverride:0];
      v18 = type metadata accessor for TraitNavigationController();
      v22.receiver = v3;
      v22.super_class = v18;
      return objc_msgSendSuper2(&v22, "removeChildViewController:notifyDidMove:", a1, a2 & 1);
    }
  }
}

id sub_388A70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TraitNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_388AC8()
{
  result = swift_slowAlloc();
  qword_E01278 = result;
  return result;
}

uint64_t sub_388AF0()
{
  result = swift_slowAlloc();
  qword_E01280 = result;
  return result;
}

uint64_t sub_388B18()
{
  result = swift_slowAlloc();
  qword_E01288 = result;
  return result;
}

uint64_t sub_388B40()
{
  result = swift_slowAlloc();
  qword_E01290 = result;
  return result;
}

uint64_t sub_388B68()
{
  result = swift_slowAlloc();
  qword_E01298 = result;
  return result;
}

uint64_t sub_388B90()
{
  result = swift_slowAlloc();
  qword_E012A0 = result;
  return result;
}

Swift::Int sub_388BC4()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_388C7C()
{
  sub_AB93F0();
}

Swift::Int sub_388D20()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_388DD4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_3891C8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_388E04(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002DLL;
  v3 = "tem.noNavigationBarTransition";
  v4 = 0xD000000000000032;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000035;
    v3 = "tionBarTransitions";
  }

  if (*v1)
  {
    v5 = "gationBarTransition";
  }

  else
  {
    v2 = 0xD000000000000033;
    v5 = "u";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

id sub_388E7C(unsigned __int8 a1, void *a2)
{
  if (qword_DE6B20 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v3 = qword_E01290;
  v4 = a1;
  v5 = sub_AB9260();

  objc_setAssociatedObject(a2, v3, v5, &dword_0 + 1);

  if (v4 <= 1)
  {
    if (v4)
    {
      [a2 _setManualScrollEdgeAppearanceEnabled:0];
      [a2 _setAutoScrollEdgeTransitionDistance:0.0];
      [a2 _setManualScrollEdgeAppearanceEnabled:1];
      v6 = "_setManualScrollEdgeAppearanceProgress:";
    }

    else
    {
      [a2 _setManualScrollEdgeAppearanceEnabled:1];
      [a2 _setManualScrollEdgeAppearanceProgress:1.0];
      [a2 _setManualScrollEdgeAppearanceEnabled:0];
      v6 = "_setAutoScrollEdgeTransitionDistance:";
    }

LABEL_9:
    v7 = 0.0;
    v8 = a2;

    return [v8 v6];
  }

  if (v4 == 2)
  {
    [a2 _setManualScrollEdgeAppearanceEnabled:0];
    [a2 _setAutoScrollEdgeTransitionDistance:0.0];
    [a2 _setManualScrollEdgeAppearanceEnabled:1];
    [a2 _setManualScrollEdgeAppearanceProgress:1.0];
    v6 = "_setManualScrollEdgeAppearanceProgress:";
    goto LABEL_9;
  }

  [a2 _setManualScrollEdgeAppearanceEnabled:0];
  [a2 _setAutoScrollEdgeTransitionDistance:16.0];
  v6 = "_setManualScrollEdgeAppearanceEnabled:";
  v8 = a2;

  return [v8 v6];
}

uint64_t sub_3890C0()
{
  if (qword_DE6B30 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E012A0))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_9BC10(v5);
    return 0;
  }
}

uint64_t sub_3891C8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CEF820;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_389214()
{

  return swift_deallocObject();
}

id sub_389254(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (([a1 isCancelled] & 1) == 0)
  {
    [v3 setOverrideTraitCollection:0 forChildViewController:v2];
  }

  return [v2 _music_setParentTraitEnvironmentOverride:0];
}

uint64_t block_copy_helper_119(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_3892F0()
{
  result = qword_E012D0;
  if (!qword_E012D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E012D0);
  }

  return result;
}

void *sub_3893E0()
{
  v1 = *(*(*v0 + 24) + 128);
  v2 = v1;
  return v1;
}

void *sub_389410()
{
  v1 = *(*(*v0 + 24) + 120);
  v2 = v1;
  return v1;
}

uint64_t sub_3894A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (*(*v6 + 24) + *a5);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  return a6(v8, v9);
}

void sub_3894C8(char a1)
{
  v2 = *(*v1 + 24);
  v3 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = a1;
  sub_76070(v3);
}

void sub_38952C()
{
  v1 = *(v0 + 24);
  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && *(v1 + 72))
  {
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_needsArtworkReload) = 1;
    v2 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v2)
    {
      [v2 invalidate];
    }

    v3 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v3)
    {

      v3(v4);

      sub_17654(v3);
    }
  }
}

uint64_t sub_389604@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + qword_DEF910);
  if (v3)
  {
    v4 = type metadata accessor for ScrollViewArtworkVideoPlaybackController(0);
    v5 = &off_D0E3E8;
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

uint64_t sub_389674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_ABA9C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  (*(a2 + 32))(a1, a2);
  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v8 + 8))(v10, v7);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = AssociatedTypeWitness;
    *(a3 + 32) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v11 + 32))(boxed_opaque_existential_0, v10, AssociatedTypeWitness);
  }

  return result;
}

void sub_389834(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_AB4BC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 56);
  if (v8 != v3)
  {
    v9 = *(v2 + 40);
    if (v9)
    {

      v9(v8);
      sub_17654(v9);
    }

    v10 = Logger.motion.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v10, v4);

    v11 = sub_AB4BA0();
    v12 = sub_AB9F10();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67240192;
      *(v13 + 4) = *(v2 + 56);

      _os_log_impl(&dword_0, v11, v12, "isVideoArtworkAllowed changed to %{BOOL,public}d", v13, 8u);

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }
}

void sub_389A1C(char a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  sub_389834(v2);
}

uint64_t sub_389A40(void (*a1)(void, void), void (*a2)(void, void), void (*a3)(void, void))
{
  a1(*(v3 + 16), *(v3 + 24));

  sub_17654(*(v3 + 40));
  a2(*(v3 + 64), *(v3 + 72));
  a3(*(v3 + 80), *(v3 + 88));
  a2(*(v3 + 96), *(v3 + 104));
  a2(*(v3 + 112), *(v3 + 120));
  a2(*(v3 + 128), *(v3 + 136));

  return v3;
}

uint64_t sub_389AE4()
{
  sub_17654(*(v0 + 16));

  sub_17654(*(v0 + 40));
  sub_17654(*(v0 + 64));
  sub_17654(*(v0 + 80));
  sub_17654(*(v0 + 96));
  sub_17654(*(v0 + 112));
  sub_17654(*(v0 + 128));

  return v0;
}

uint64_t sub_389B54()
{
  sub_389AE4();

  return swift_deallocClassInstance();
}

uint64_t sub_389BA0(void *a1, void *a2)
{
  v3 = v2;
  *(v3 + 184) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 200) = 1;
  *(v3 + 224) = 0;
  *(v3 + 240) = _swiftEmptyArrayStorage;
  *(v3 + 248) = &_swiftEmptySetSingleton;
  *(v3 + 208) = a1;
  *(v3 + 216) = a2;
  v6 = objc_allocWithZone(type metadata accessor for CollectionViewMaterialRendererVideoCoordinator());
  v7 = a2;
  v8 = a1;
  *(v3 + 232) = sub_1135A8(v8);
  v9 = v8;
  v10 = sub_252988(v8);

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = *(v10 + 16);
  *(v10 + 16) = sub_38F77C;
  *(v10 + 24) = v11;
  swift_retain_n();
  sub_17654(v12);

  return v10;
}

char *sub_389CBC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = Strong;
  v2 = *(Strong + 248);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v4 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v4 = sub_13067C(*(v2 + 16), 0);
  v5 = *(sub_AB3820() - 8);
  v6 = sub_131440(&v9, &v4[(*(v5 + 80) + 32) & ~*(v5 + 80)], v3, v2);
  swift_bridgeObjectRetain_n();
  result = sub_2BB88();
  if (v6 == v3)
  {

LABEL_7:
    v8 = [*(v1 + 208) indexPathsForVisibleItems];
    sub_AB3820();
    sub_AB9760();

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_389E3C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  sub_38EF30();
  v10 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01C68);
  if (swift_dynamicCast())
  {
    sub_70DF8(v35, v38);
    v11 = *(v3 + 56);
    v12 = v39;
    v13 = v40;
    __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    (*(v13 + 104))(v11, v12, v13);
    v14 = swift_allocObject();
    swift_weakInit();
    v33 = v3;
    v34 = *(v7 + 16);
    v34(v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    v32 = a1;
    v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v31 = *(v7 + 32);
    v31(v16 + v15, v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v30[0] = v6;
    v30[1] = v8;
    v17 = v39;
    v18 = v40;
    __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    (*(v18 + 32))(sub_38F51C, v16, v17, v18);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = v30[0];
    v34(v9, v32, v30[0]);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    v22 = v20;
    v31(v21 + v15, v9, v20);
    v23 = v39;
    v24 = v40;
    __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    (*(v24 + 56))(sub_38F534, v21, v23, v24);
    v25 = swift_allocObject();
    swift_weakInit();
    v34(v9, v32, v22);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v31(v26 + v15, v9, v22);
    v27 = v39;
    v28 = v40;
    __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    (*(v28 + 80))(sub_38F698, v26, v27, v28);
    return __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    return sub_12E1C(v35, &qword_E01C70);
  }
}

void sub_38A234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 208);

    isa = sub_AB3770().super.isa;
    v8 = [v6 cellForItemAtIndexPath:isa];

    if (v8)
    {
      if (a1)
      {
        swift_beginAccess();
        v9 = swift_weakLoadStrong();
        if (v9)
        {
          v10 = *(v9 + 64);
          if (v10)
          {
            sub_307CC(*(v9 + 64));

            v10(a3);
            sub_17654(v10);
          }

          else
          {
          }
        }
      }

      swift_beginAccess();
      v11 = swift_weakLoadStrong();
      if (v11)
      {
        v12 = *(v11 + 248);

        v13 = sub_4732A8(a3, v12);

        if (v13)
        {
          v14 = [v8 window];
          if (v14)
          {
            v15 = v14;
            v16 = [v14 windowScene];

            if (v16)
            {
              v17 = [v16 activationState];

              if (!v17)
              {
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  sub_38B7E0(a3);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_38A434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 128);
    if (v5)
    {
      sub_307CC(*(result + 128));

      v5(a3);
      return sub_17654(v5);
    }

    else
    {
    }
  }

  return result;
}

void sub_38A4CC(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v58 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v58 - v14;
  __chkstk_darwin(v13);
  v17 = &v58 - v16;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v19 = *(Strong + 96);
      if (v19)
      {
        sub_307CC(*(Strong + 96));

        v19(a3);
        sub_17654(v19);
      }

      else
      {
      }
    }

    if (qword_DE6B38 != -1)
    {
      swift_once();
    }

    v22 = sub_AB4BC0();
    __swift_project_value_buffer(v22, qword_E012D8);
    v23 = *(v6 + 16);
    v23(v17, a3, v5);
    v23(v15, a3, v5);

    v24 = sub_AB4BA0();
    v25 = sub_AB9F50();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v61 = v59;
      *v26 = 136446466;
      sub_21B3B0();
      v27 = sub_ABB330();
      v29 = v28;
      v58 = *(v6 + 8);
      v58(v17, v5);
      v30 = sub_425E68(v27, v29, &v61);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      swift_beginAccess();
      v31 = swift_weakLoadStrong();
      if (v31)
      {
        v32 = *(v31 + 208);

        isa = sub_AB3770().super.isa;
        v34 = [v32 cellForItemAtIndexPath:isa];
      }

      else
      {
        v34 = 0;
      }

      v60 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01C78);
      v50 = sub_AB9350();
      v52 = v51;
      v58(v15, v5);
      v53 = sub_425E68(v50, v52, &v61);

      *(v26 + 14) = v53;
      _os_log_impl(&dword_0, v24, v25, "Playback started at %{public}s on cell=%{public}s", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v35 = *(v6 + 8);
      v35(v15, v5);
      v35(v17, v5);
    }
  }

  else
  {
    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      v21 = *(v20 + 112);
      if (v21)
      {
        sub_307CC(*(v20 + 112));

        v21(a3);
        sub_17654(v21);
      }

      else
      {
      }
    }

    if (qword_DE6B38 != -1)
    {
      swift_once();
    }

    v36 = sub_AB4BC0();
    __swift_project_value_buffer(v36, qword_E012D8);
    v37 = *(v6 + 16);
    v37(v12, a3, v5);
    v37(v9, a3, v5);

    v38 = sub_AB4BA0();
    v39 = sub_AB9F50();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v61 = v59;
      *v40 = 136446466;
      sub_21B3B0();
      v41 = sub_ABB330();
      v43 = v42;
      v58 = *(v6 + 8);
      v58(v12, v5);
      v44 = sub_425E68(v41, v43, &v61);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      swift_beginAccess();
      v45 = swift_weakLoadStrong();
      if (v45)
      {
        v46 = *(v45 + 208);

        v47 = sub_AB3770().super.isa;
        v48 = [v46 cellForItemAtIndexPath:v47];
      }

      else
      {
        v48 = 0;
      }

      v60 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01C78);
      v54 = sub_AB9350();
      v56 = v55;
      v58(v9, v5);
      v57 = sub_425E68(v54, v56, &v61);

      *(v40 + 14) = v57;
      _os_log_impl(&dword_0, v38, v39, "Playback stopped at %{public}s on cell=%{public}s", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v49 = *(v6 + 8);
      v49(v9, v5);
      v49(v12, v5);
    }
  }
}

void sub_38AC10()
{
  v1 = v0;
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v79 = &v68 - v8;
  v9 = __chkstk_darwin(v7);
  v80 = &v68 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v68 - v12;
  v14 = __chkstk_darwin(v11);
  v78 = &v68 - v15;
  __chkstk_darwin(v14);
  v17 = &v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v77 = &v68 - v22;
  v23 = *(v0 + 208);
  v24 = [v23 window];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 windowScene];

    if (v26)
    {
      v27 = [v26 activationState];

      if (!v27 && (*(v1 + 200) & 1) == 0)
      {
        v81 = v3;
        v82 = &_swiftEmptySetSingleton;
        v28 = *(v1 + 224);
        v69 = [v23 indexPathsForVisibleItems];
        v76 = sub_AB9760();
        v29 = *(v76 + 16);
        if (v28)
        {
          if (v29)
          {
            v68 = v1;
            v30 = *(v81 + 16);
            v31 = v76 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
            v32 = *(v81 + 72);
            v81 += 16;
            v33 = (v81 - 8);
            v77 = v32;
            v30(v6, v31, v2);
            while (1)
            {
              isa = sub_AB3770().super.isa;
              v35 = [v23 cellForItemAtIndexPath:isa];

              if (v35)
              {
                [v35 frame];
                if (sub_ABA450())
                {
                  v36 = v23;
                  v37 = v79;
                  v30(v79, v6, v2);
                  v78 = v29;
                  v38 = v2;
                  v39 = v30;
                  v40 = v80;
                  v41 = v37;
                  v23 = v36;
                  v32 = v77;
                  sub_1C47C(v80, v41);

                  v42 = *v33;
                  v43 = v40;
                  v30 = v39;
                  v2 = v38;
                  v29 = v78;
                  (*v33)(v43, v2);
                  v42(v6, v2);
                }

                else
                {
                  (*v33)(v6, v2);
                }
              }

              else
              {
                (*v33)(v6, v2);
              }

              v31 += v32;
              if (!--v29)
              {
                break;
              }

              v30(v6, v31, v2);
            }

            v1 = v68;
          }

          else
          {
          }

          goto LABEL_42;
        }

        if (!v29)
        {
          v45 = v81;
          v46 = v77;
          (*(v81 + 56))(v77, 1, 1, v2);
LABEL_21:

          sub_38F70C(v46, v21);
          v47 = (*(v45 + 48))(v21, 1, v2);
          v48 = v78;
          if (v47 == 1)
          {
            sub_12E1C(v46, &unk_DE8E20);
            v49 = v21;
LABEL_41:
            sub_12E1C(v49, &unk_DE8E20);
LABEL_42:
            v67 = *(v1 + 248);
            *(v1 + 248) = v82;
            sub_38C0B4(v67);

            return;
          }

          (*(v45 + 32))(v78, v21, v2);
          v50 = sub_AB3770().super.isa;
          v51 = [v23 cellForItemAtIndexPath:v50];

          if (v51)
          {
            [v51 frame];
            if (sub_ABA450())
            {
              v52 = v79;
              (*(v45 + 16))(v79, v48, v2);
              v53 = v80;
              sub_1C47C(v80, v52);

              v54 = *(v45 + 8);
              v54(v53, v2);
              v54(v48, v2);
LABEL_40:
              v49 = v46;
              goto LABEL_41;
            }
          }

          (*(v45 + 8))(v48, v2);
          goto LABEL_40;
        }

        v68 = v1;
        v44 = *(v81 + 16);
        v73 = v76 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
        v74 = v44;
        v75 = v81 + 16;
        (v44)(v17);
        if (v29 == &dword_0 + 1)
        {
LABEL_17:
          v45 = v81;
          v46 = v77;
          (*(v81 + 32))(v77, v17, v2);
          (*(v45 + 56))(v46, 0, 1, v2);
          v1 = v68;
          goto LABEL_21;
        }

        v55 = (v81 + 8);
        v70 = (v81 + 32);
        v71 = (v81 + 8);
        v56 = 1;
        p_name = (&JSDateDescriptor + 24);
        v72 = v21;
        while (1)
        {
          if (v56 >= *(v76 + 16))
          {
            __break(1u);
            return;
          }

          v74(v13, v73 + *(v81 + 72) * v56, v2);
          v58 = sub_AB3770().super.isa;
          v59 = [v23 p_name[401]];

          if (!v59)
          {
            break;
          }

          v60 = sub_AB3770().super.isa;
          v61 = [v23 p_name[401]];

          if (v61)
          {
            [v59 center];
            sub_ABA4C0();
            sub_ABA700();
            v63 = v62;
            [v61 center];
            sub_ABA4C0();
            sub_ABA700();
            v65 = v64;

            v55 = v71;
            v66 = *v71;
            if (v63 >= v65)
            {
              p_name = (&JSDateDescriptor + 24);
              goto LABEL_37;
            }

            v66(v17, v2);
          }

          else
          {
            v55 = v71;
            (*v71)(v17, v2);
          }

          p_name = &JSDateDescriptor.name;
          v21 = v72;
          (*v70)(v17, v13, v2);
LABEL_29:
          if (v29 == ++v56)
          {
            goto LABEL_17;
          }
        }

        v66 = *v55;
LABEL_37:
        v21 = v72;
        v66(v13, v2);
        goto LABEL_29;
      }
    }
  }
}

void sub_38B528()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 248);
  v6 = v5 + 56;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v20[1] = v2 + 16;
  v11 = (v2 + 8);
  v21 = v5;
  v22 = v0;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_11:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v2 + 16))(v4, *(v21 + 48) + *(v2 + 72) * (v14 | (v13 << 6)), v1);
    v15 = *(v22 + 208);
    v16 = v1;
    isa = sub_AB3770().super.isa;
    v18 = [v15 cellForItemAtIndexPath:isa];

    if (v18)
    {
      sub_38E908(v4, v18);
      (*v11)(v4, v16);
    }

    else
    {
      (*v11)(v4, v16);
    }

    v12 = v13;
    v1 = v16;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      v19 = *(v22 + 248);
      *(v22 + 248) = &_swiftEmptySetSingleton;
      sub_38C0B4(v19);

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_38B768(char a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  sub_389834(v2);
  if (v2 != *(v1 + 56))
  {
    v3 = *(v1 + 216);
    if (v3)
    {
      if ([v3 hasVideoArtwork])
      {
        v4 = *(v1 + 208);

        [v4 reloadData];
      }
    }
  }
}

void sub_38B7E0(uint64_t a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 208);
  isa = sub_AB3770().super.isa;
  v9 = [v7 cellForItemAtIndexPath:isa];

  if (v9)
  {
    v31 = v9;
    sub_38EF30();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01C68);
    if (swift_dynamicCast())
    {
      v11 = *(&v33 + 1);
      v12 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      v13 = (*(v12 + 8))(v11, v12);
      __swift_destroy_boxed_opaque_existential_0(&v32);
      if (v13)
      {
        [v13 playScenes];
        if (qword_DE6B38 != -1)
        {
          swift_once();
        }

        v14 = sub_AB4BC0();
        __swift_project_value_buffer(v14, qword_E012D8);
        (*(v4 + 16))(v6, a1, v3);
        v15 = v10;
        v16 = sub_AB4BA0();
        v17 = sub_AB9F20();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *&v32 = v30;
          *v18 = 136446466;
          sub_21B3B0();
          v28 = v16;
          v19 = sub_ABB330();
          v27 = v17;
          v20 = v13;
          v22 = v21;
          (*(v4 + 8))(v6, v3);
          v23 = sub_425E68(v19, v22, &v32);
          v13 = v20;

          *(v18 + 4) = v23;
          *(v18 + 12) = 2114;
          *(v18 + 14) = v15;
          v24 = v29;
          *v29 = v9;
          v25 = v15;
          v16 = v28;
          _os_log_impl(&dword_0, v28, v27, "CollectionViewArtworkVideoPlaybackController: Called playScenes() at %{public}s on %{public}@", v18, 0x16u);
          sub_12E1C(v24, &qword_DF9B20);

          __swift_destroy_boxed_opaque_existential_0(v30);
        }

        else
        {
          (*(v4 + 8))(v6, v3);
        }

        sub_113844(v15);
      }

      else
      {
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;

      sub_12E1C(&v32, &qword_E01C70);
    }
  }
}

void sub_38BBAC(uint64_t a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 208);
  isa = sub_AB3770().super.isa;
  v9 = [v7 cellForItemAtIndexPath:isa];

  if (v9)
  {
    v38 = v9;
    sub_38EF30();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01C68);
    if (swift_dynamicCast())
    {
      v11 = *(&v40 + 1);
      v12 = v41;
      __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
      v13 = (*(v12 + 8))(v11, v12);
      __swift_destroy_boxed_opaque_existential_0(&v39);
      if (v13)
      {
        [v13 pauseScenes];
        if (qword_DE6B38 != -1)
        {
          swift_once();
        }

        v14 = sub_AB4BC0();
        __swift_project_value_buffer(v14, qword_E012D8);
        (*(v4 + 16))(v6, a1, v3);
        v15 = v10;
        v16 = sub_AB4BA0();
        v17 = sub_AB9F20();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v37 = v13;
          v19 = v18;
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *&v39 = v36;
          *v19 = 136446466;
          sub_21B3B0();
          v20 = sub_ABB330();
          v22 = v21;
          (*(v4 + 8))(v6, v3);
          v23 = sub_425E68(v20, v22, &v39);

          *(v19 + 4) = v23;
          *(v19 + 12) = 2114;
          *(v19 + 14) = v15;
          v24 = v35;
          *v35 = v9;
          v25 = v15;
          _os_log_impl(&dword_0, v16, v17, "CollectionViewArtworkVideoPlaybackController: Called pauseScenes() at %{public}s on %{public}@", v19, 0x16u);
          sub_12E1C(v24, &qword_DF9B20);

          __swift_destroy_boxed_opaque_existential_0(v36);

          v13 = v37;
        }

        else
        {
          (*(v4 + 8))(v6, v3);
        }

        ObjectType = swift_getObjectType();
        v27 = swift_conformsToProtocol2();
        if (v27)
        {
          v28 = *(v27 + 8);
          v29 = *(v28 + 8);
          v30 = v15;
          v31 = v29(ObjectType, v28);
          if (v31)
          {
            v32 = v31;
            [v31 setEnableSetNeedsDisplay:1];
          }

          v33 = v29(ObjectType, v28);
          if (v33)
          {
            v34 = v33;
            [v33 setPaused:1];
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;

      sub_12E1C(&v39, &qword_E01C70);
    }
  }
}

void sub_38C014(uint64_t a1)
{
  v3 = *(v1 + 208);
  isa = sub_AB3770().super.isa;
  v5 = [v3 cellForItemAtIndexPath:isa];

  if (v5)
  {
    sub_38E908(a1, v5);
  }
}

uint64_t sub_38C0B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v58 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v48 - v8;

  v11 = sub_4CA680(v10, a1);

  if ((v11 & 1) == 0)
  {
    v13 = v1[31];
    v14 = *(a1 + 16);
    v15 = v13[2];
    v52 = a1;
    v53 = v7;
    if (v14 <= v15 >> 3)
    {
      v62[0] = v13;

      sub_1C4FD8(a1);
      v16 = v62[0];
    }

    else
    {

      v16 = sub_1C7540(a1, v13);
    }

    v17 = v16 + 7;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v16[7];
    v21 = (v18 + 63) >> 6;
    v56 = (v58 + 8);
    v57 = v58 + 16;

    v22 = 0;
    v54 = v16;
    v55 = v4;
    while (v20)
    {
LABEL_15:
      (*(v58 + 16))(v9, v16[6] + *(v58 + 72) * (__clz(__rbit64(v20)) | (v22 << 6)), v4);
      v24 = v2[26];
      isa = sub_AB3770().super.isa;
      v26 = [v24 cellForItemAtIndexPath:isa];

      if (v26)
      {
        v61 = v26;
        sub_38EF30();
        v27 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01C68);
        if (swift_dynamicCast())
        {
          sub_70DF8(v59, v62);
          if (v2[10])
          {
            v49 = v2[10];
            v50 = v27;
            v51 = v2;
            v28 = v2[11];
            v29 = v63;
            v30 = v64;
            __swift_project_boxed_opaque_existential_1(v62, v63);
            v48[0] = *(v30 + 16);
            v48[1] = v28;

            v31 = (v48[0])(v29, v30);
            if (v31)
            {
              v32 = v31;
              v33 = [v31 layer];
              objc_opt_self();
              v34 = [swift_dynamicCastObjCClassUnconditional() isReadyForDisplay];
            }

            else
            {
              v34 = 0;
            }

            v35 = v49;
            v49(v9, v34);
            sub_17654(v35);
            v27 = v50;
            v2 = v51;
            v16 = v54;
          }

          sub_38B7E0(v9);

          __swift_destroy_boxed_opaque_existential_0(v62);
        }

        else
        {
          v60 = 0;
          memset(v59, 0, sizeof(v59));

          sub_12E1C(v59, &qword_E01C70);
        }
      }

      v20 &= v20 - 1;
      v4 = v55;
      result = (*v56)(v9, v55);
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v23 >= v21)
      {
        break;
      }

      v20 = v17[v23];
      ++v22;
      if (v20)
      {
        v22 = v23;
        goto LABEL_15;
      }
    }

    v36 = v2[31];
    v37 = v52;
    if (*(v36 + 16) <= v52[2] >> 3)
    {
      v62[0] = v52;

      sub_1C4FD8(v36);

      v38 = v62[0];
    }

    else
    {

      v38 = sub_1C7540(v36, v37);
    }

    v39 = v53;
    v40 = 1 << *(v38 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & v38[7];
    v43 = (v40 + 63) >> 6;

    v44 = 0;
    for (i = v58; v42; result = (*(i + 8))(v39, v4))
    {
      v46 = v44;
LABEL_34:
      v47 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      (*(i + 16))(v39, v38[6] + *(i + 72) * (v47 | (v46 << 6)), v4);
      sub_38BBAC(v39);
    }

    while (1)
    {
      v46 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v46 >= v43)
      {
      }

      v42 = v38[v46 + 7];
      ++v44;
      if (v42)
      {
        v44 = v46;
        goto LABEL_34;
      }
    }

LABEL_39:
    __break(1u);
  }

  return result;
}

uint64_t sub_38C61C()
{
}

uint64_t sub_38C664()
{
  v0 = sub_389A40(sub_3FC30, sub_3FC30, sub_3FC30);
  v1 = *(v0 + 208);

  return swift_deallocClassInstance();
}

__n128 sub_38C7BC(uint64_t a1)
{
  v2 = *v1;
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 168) = *a1;
  *(v2 + 184) = v4;
  *(v2 + 200) = *(a1 + 32);
  return result;
}

id sub_38C7D8()
{
  result = *(*v0 + 216);
  if (result)
  {
    return [result hasVideoArtwork];
  }

  return result;
}

void *sub_38C8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = Strong;
  v7 = UIScrollView.normalizedContentOffset.getter();
  v9 = v8;
  [*(*(v6 + 168) + 112) frame];
  MaxY = CGRectGetMaxY(v13);

  if (v9 > MaxY)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF4EC0;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  return v11;
}

uint64_t sub_38C998()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 184);
    v1 = *(result + 192);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + 64);
      if (v4)
      {
        sub_307CC(*(Strong + 64));

        v5[0] = v2;
        v5[1] = v1;
        v4(v5);
        sub_17654(v4);
      }

      else
      {
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_38CAB4();
    }

    else
    {
    }
  }

  return result;
}

void sub_38CAB4()
{
  v1 = v0;
  v2 = UIScrollView.normalizedContentOffset.getter();
  v4 = v3;
  v5 = v0[21];
  [*(v5 + 112) frame];
  if (v4 <= CGRectGetMaxY(v14))
  {
    v6 = *(v5 + 120);
    if (v6)
    {
      v7 = v6;
      v8 = [v7 layer];
      objc_opt_self();
      v9 = [swift_dynamicCastObjCClassUnconditional() isReadyForDisplay];

      v10 = v1[10];
      if (!v10)
      {
LABEL_8:
        sub_38F298(&selRef_playScenes, "ScrollViewArtworkVideoPlaybackController: Called playScenes() on %s");
        return;
      }
    }

    else
    {
      v9 = 0;
      v10 = v1[10];
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v11 = v1[24];
    v12[0] = v1[23];
    v12[1] = v11;

    v10(v12, v9);
    sub_17654(v10);
    goto LABEL_8;
  }

  sub_38E748();
}

uint64_t sub_38CC08()
{

  v1 = *(v0 + 200);

  return sub_17654(v1);
}

uint64_t sub_38CC48()
{
  v0 = sub_389A40(sub_3FC30, sub_3FC30, sub_3FC30);

  sub_17654(*(v0 + 200));

  return swift_deallocClassInstance();
}

__n128 sub_38CD88(uint64_t a1)
{
  v2 = *v1;
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 216) = *a1;
  *(v2 + 232) = v4;
  *(v2 + 248) = *(a1 + 32);
  return result;
}

uint64_t sub_38CDA4()
{
  v1 = *(*v0 + 200);
  if (v1)
  {
    return v1() & 1;
  }

  else
  {
    return 0;
  }
}

void *sub_38CE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = sub_38D3C0();

  if ((v5 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF4EC0;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;

  return v6;
}

uint64_t sub_38CEF8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 200);
    v1 = *(result + 208);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + 64);
      if (v4)
      {
        sub_307CC(*(Strong + 64));

        v5[0] = v2;
        v5[1] = v1;
        v4(v5);
        sub_17654(v4);
      }

      else
      {
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_38D1A8();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_38D018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 128);
    if (v7)
    {
      sub_307CC(*(result + 128));

      v8[0] = a3;
      v8[1] = a4;
      v7(v8);
      return sub_17654(v7);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_38D0C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v7 = *(result + 96);
    if (v7)
    {
LABEL_7:
      sub_307CC(v7);

      v8[0] = a3;
      v8[1] = a4;
      v7(v8);
      return sub_17654(v7);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v7 = *(result + 112);
    if (v7)
    {
      goto LABEL_7;
    }
  }
}

void sub_38D1A8()
{
  v1 = v0;
  if (sub_38D3C0())
  {
    swift_beginAccess();
    v2 = v0[21];
    v3 = v1[22];
    ObjectType = swift_getObjectType();
    v11[0] = v2;
    v5 = (*(v3 + 16))(ObjectType, v3);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 layer];
      objc_opt_self();
      v8 = [swift_dynamicCastObjCClassUnconditional() isReadyForDisplay];

      v9 = v1[10];
      if (!v9)
      {
LABEL_5:
        sub_38F0F4(&selRef_playScenes, "ParallaxArtworkVideoPlaybackController: Called playScenes() on %@");
        return;
      }
    }

    else
    {
      v8 = 0;
      v9 = v1[10];
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v10 = v1[26];
    v11[0] = v1[25];
    v11[1] = v10;

    v9(v11, v8);
    sub_17654(v9);
    goto LABEL_5;
  }

  sub_38E2AC();
}

uint64_t sub_38D354()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  ObjectType = swift_getObjectType();
  return (*(v1 + 120))(ObjectType, v1);
}

id sub_38D3C0()
{
  result = [*(v0 + 184) _isInAWindow];
  if (result)
  {
    v2 = *(v0 + 184);
    UIScrollView.normalizedContentOffset.getter();
    v4 = v3;

    swift_beginAccess();
    [*(v0 + 168) bounds];
    Height = CGRectGetHeight(v17);
    v6 = *(v0 + 192);
    if (v6)
    {
      result = [v6 _backgroundView];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v7 = result;
      [result bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v18.origin.x = v9;
      v18.origin.y = v11;
      v18.size.width = v13;
      v18.size.height = v15;
      v16 = CGRectGetHeight(v18);
    }

    else
    {
      v16 = 0.0;
    }

    return (v4 <= Height - v16);
  }

  return result;
}

uint64_t sub_38D4D0()
{
}

uint64_t sub_38D510()
{
  v0 = sub_389A40(sub_3FC30, sub_3FC30, sub_3FC30);
  v1 = *(v0 + 168);

  return swift_deallocClassInstance();
}

uint64_t sub_38D778()
{
  v8 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_jsResults);
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_38F014;
  *(v3 + 24) = v2;
  aBlock[4] = sub_15AB68;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_48D4FC;
  aBlock[3] = &block_descriptor_181;
  v4 = _Block_copy(aBlock);

  [v1 enumerateItemsUsingBlock:v4];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

void sub_38D8E4(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  type metadata accessor for JSLiveRadioCaseItem();
  swift_unknownObjectRetain();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_videoBackgroundArtwork;
    v8 = v6;
    swift_beginAccess();
    v9 = *(v8 + v7);
    v10 = v9;
    swift_unknownObjectRelease();
    if (v9)
    {

      *a4 = 1;
      *a3 = 1;
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_38D9BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_jsResults);
  isa = sub_AB3770().super.isa;
  v3 = [v1 itemAtIndexPath:isa];

  type metadata accessor for JSLiveRadioCaseItem();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_videoBackgroundArtwork;
    v6 = v4;
    swift_beginAccess();
    v7 = *(v6 + v5);
    v8 = v7;
    swift_unknownObjectRelease();
    if (v7)
    {

      return 1;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_38DBC4()
{
  v8 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_38EFE4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_15AB68;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_48D4FC;
  aBlock[3] = &block_descriptor_171;
  v4 = _Block_copy(aBlock);

  [v1 enumerateItemsUsingBlock:v4];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t sub_38DD84()
{
  v8 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults);
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_38EF8C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_5794C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_48D4FC;
  aBlock[3] = &block_descriptor_120;
  v4 = _Block_copy(aBlock);

  [v1 enumerateItemsUsingBlock:v4];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

void sub_38DEF0(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, void (*a5)(void))
{
  a5(0);
  swift_unknownObjectRetain();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = (*&stru_1A8.sectname[swift_isaMask & *v7])();
    swift_unknownObjectRelease();
    if (v8)
    {

      *a4 = 1;
      *a3 = 1;
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

BOOL sub_38DFE8(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(void))
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = *&a1[*a4];
  v14 = a3;
  v15 = a1;
  isa = sub_AB3770().super.isa;
  v17 = [v13 itemAtIndexPath:isa];

  a5(0);
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = (*&stru_1A8.sectname[swift_isaMask & *v18])();
    (*(v10 + 8))(v12, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v10 + 8))(v12, v9);
    v19 = 0;
  }

  return v19 != 0;
}

unint64_t sub_38E1D0()
{
  result = qword_E01C60;
  if (!qword_E01C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E01C60);
  }

  return result;
}

uint64_t sub_38E224()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E012D8);
  __swift_project_value_buffer(v0, qword_E012D8);
  return static Logger.music(_:)();
}

void sub_38E2AC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 176);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(ObjectType, v2);
  [v4 pauseScenes];

  v5 = *(v1 + 176);
  v6 = swift_getObjectType();
  v7 = (*(v5 + 8))(v6, v5);
  [v7 restartScenes];

  if (qword_DE6B38 != -1)
  {
    swift_once();
  }

  v8 = sub_AB4BC0();
  __swift_project_value_buffer(v8, qword_E012D8);

  v9 = sub_AB4BA0();
  v10 = sub_AB9F20();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = *(v1 + 168);
    *(v11 + 4) = v13;
    *v12 = v13;
    v14 = v13;
    _os_log_impl(&dword_0, v9, v10, "ParallaxArtworkVideoPlaybackController: Called pauseScenes() + restartScenes() on %@", v11, 0xCu);
    sub_12E1C(v12, &qword_DF9B20);
  }
}

uint64_t sub_38E490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ScrollViewArtworkVideoPlaybackController(0);
  v12 = swift_allocObject();
  *(v12 + 216) = 0u;
  *(v12 + 232) = 0u;
  *(v12 + 248) = 1;
  *(v12 + 168) = a1;
  *(v12 + 176) = a2;
  *(v12 + 184) = a3;
  *(v12 + 192) = a4;
  *(v12 + 200) = a5;
  *(v12 + 208) = a6;
  v13 = *(a1 + 112);

  v14 = v13;
  v15 = sub_251E7C(v13);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a3;
  v17[4] = a4;
  v18 = *(v15 + 16);
  *(v15 + 16) = sub_38F484;
  *(v15 + 24) = v17;
  swift_retain_n();

  sub_17654(v18);

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = (a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  v21 = *(a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  *v20 = sub_38F490;
  v20[1] = v19;

  sub_17654(v21);

  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 2) = v22;
  *(v23 + 3) = a3;
  *(v23 + 4) = a4;
  v24 = (a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler);
  v25 = *(a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler);
  *v24 = sub_38F498;
  v24[1] = v23;

  sub_17654(v25);

  v26 = swift_allocObject();
  swift_weakInit();

  v27 = swift_allocObject();
  *(v27 + 2) = v26;
  *(v27 + 3) = a3;
  *(v27 + 4) = a4;
  v28 = (a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler);
  v29 = *(a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler);
  *v28 = sub_38F4F8;
  v28[1] = v27;

  sub_17654(v29);

  return v15;
}

void sub_38E748()
{
  v1 = *(v0 + 168);
  [*(v1 + 128) pauseScenes];
  [*(v1 + 128) restartScenes];
  if (qword_DE6B38 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, qword_E012D8);

  oslog = sub_AB4BA0();
  v3 = sub_AB9F20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    _s9ComponentCMa(0);

    v6 = sub_AB9350();
    v8 = sub_425E68(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, oslog, v3, "ScrollViewArtworkVideoPlaybackController: Called pauseScenes() + restartScenes() on %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
  }
}

void sub_38E908(uint64_t a1, void *a2)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v50 - v9;
  v53 = a2;
  sub_38EF30();
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01C68);
  if (swift_dynamicCast())
  {
    v12 = *(&v55 + 1);
    v13 = v56;
    __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    v14 = (*(v13 + 8))(v12, v13);
    __swift_destroy_boxed_opaque_existential_0(&v54);
    if (v14)
    {
      [v14 pauseScenes];
      [v14 restartScenes];
      if (qword_DE6B38 != -1)
      {
        swift_once();
      }

      v15 = sub_AB4BC0();
      __swift_project_value_buffer(v15, qword_E012D8);
      (*(v5 + 16))(v10, a1, v4);
      v16 = v11;
      v17 = sub_AB4BA0();
      v18 = sub_AB9F20();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v52 = v14;
        v21 = v20;
        v51 = swift_slowAlloc();
        *&v54 = v51;
        *v19 = 136446466;
        sub_21B3B0();
        v22 = sub_ABB330();
        v24 = v23;
        (*(v5 + 8))(v10, v4);
        v25 = sub_425E68(v22, v24, &v54);

        *(v19 + 4) = v25;
        *(v19 + 12) = 2114;
        *(v19 + 14) = v16;
        *v21 = v16;
        v26 = v16;
        _os_log_impl(&dword_0, v17, v18, "CollectionViewArtworkVideoPlaybackController: Called pauseScenes() + restartScenes() at %{public}s on %{public}@", v19, 0x16u);
        sub_12E1C(v21, &qword_DF9B20);
        v14 = v52;

        __swift_destroy_boxed_opaque_existential_0(v51);
      }

      else
      {
        (*(v5 + 8))(v10, v4);
      }

      swift_getObjectType();
      v40 = swift_conformsToProtocol2();
      if (v40 && v16)
      {
        v41 = v40;
        ObjectType = swift_getObjectType();
        v43 = *(v41 + 8);
        v44 = *(v43 + 8);
        v45 = v16;
        v46 = v44(ObjectType, v43);
        if (v46)
        {
          v47 = v46;
          [v46 setEnableSetNeedsDisplay:1];
        }

        v48 = v44(ObjectType, v43);
        v49 = v45;
        if (v48)
        {
          v49 = v48;
          [v48 setPaused:1];
        }

        sub_112C24(ObjectType, v43);
      }

      return;
    }
  }

  else
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    sub_12E1C(&v54, &qword_E01C70);
  }

  if (qword_DE6B38 != -1)
  {
    swift_once();
  }

  v27 = sub_AB4BC0();
  __swift_project_value_buffer(v27, qword_E012D8);
  (*(v5 + 16))(v8, a1, v4);
  v28 = v11;
  v29 = sub_AB4BA0();
  v30 = sub_AB9F20();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v54 = v33;
    *v31 = 136446466;
    sub_21B3B0();
    v34 = sub_ABB330();
    v35 = v4;
    v37 = v36;
    (*(v5 + 8))(v8, v35);
    v38 = sub_425E68(v34, v37, &v54);

    *(v31 + 4) = v38;
    *(v31 + 12) = 2114;
    *(v31 + 14) = v28;
    *v32 = v28;
    v39 = v28;
    _os_log_impl(&dword_0, v29, v30, "CollectionViewArtworkVideoPlaybackController: Didn't have a videoLooper in restart(at:cell:): indexPath=%{public}s cell=%{public}@", v31, 0x16u);
    sub_12E1C(v32, &qword_DF9B20);

    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
  }
}

unint64_t sub_38EF30()
{
  result = qword_DFE230;
  if (!qword_DFE230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DFE230);
  }

  return result;
}

uint64_t block_copy_helper_120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_38F01C()
{
  v1 = *(v0 + 168);
  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && *(v1 + 72))
  {
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_needsArtworkReload) = 1;
    v2 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v2)
    {
      [v2 invalidate];
    }

    v3 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v3)
    {

      v3(v4);

      sub_17654(v3);
    }
  }
}

void sub_38F0F4(SEL *a1, const char *a2)
{
  v5 = v2;
  swift_beginAccess();
  v6 = *(v2 + 176);
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 8))(ObjectType, v6);
  [v8 *a1];

  if (qword_DE6B38 != -1)
  {
    swift_once();
  }

  v9 = sub_AB4BC0();
  __swift_project_value_buffer(v9, qword_E012D8);

  v10 = sub_AB4BA0();
  v11 = sub_AB9F20();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = *(v5 + 168);
    *(v12 + 4) = v14;
    *v13 = v14;
    v15 = v14;
    _os_log_impl(&dword_0, v10, v11, a2, v12, 0xCu);
    sub_12E1C(v13, &qword_DF9B20);
  }
}

void sub_38F298(SEL *a1, const char *a2)
{
  [*(*(v2 + 168) + 128) *a1];
  if (qword_DE6B38 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, qword_E012D8);

  oslog = sub_AB4BA0();
  v5 = sub_AB9F20();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    _s9ComponentCMa(0);

    v8 = sub_AB9350();
    v10 = sub_425E68(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, oslog, v5, a2, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
  }
}

uint64_t sub_38F448()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_186Tm()
{

  return swift_deallocObject();
}

uint64_t sub_38F54C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_AB3820() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t objectdestroy_201Tm()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_38F698(char a1)
{
  v3 = *(sub_AB3820() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_38A4CC(a1, v4, v5);
}

uint64_t sub_38F70C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_38F7B8(_OWORD *a1)
{
  swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_paddingForExcessiveHeightCharacters] = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_overlayLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_hasExcessiveHeightCharacters] = 0;
  v6 = &v1[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties];
  v7 = a1[3];
  v6[2] = a1[2];
  v6[3] = v7;
  v8 = a1[1];
  *v6 = *a1;
  v6[1] = v8;
  sub_390344(a1, v18);
  v17.receiver = v1;
  v17.super_class = type metadata accessor for VibrancyLabelCompositingView();
  v9 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 clearColor];
  [v11 setBackgroundColor:v12];

  v13 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel;
  [v11 addSubview:*&v11[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel]];
  v14 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_overlayLabel;
  [v11 addSubview:*&v11[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_overlayLabel]];
  sub_38FDFC();
  [*&v11[v13] setAdjustsFontForContentSizeCategory:1];
  [*&v11[v14] setAdjustsFontForContentSizeCategory:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF37F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF4EC0;
  *(v15 + 32) = sub_AB4F60();
  *(v15 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_ABA6F0();
  swift_unknownObjectRelease();

  sub_3903A0(a1);

  return v11;
}

void sub_38FB24(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text + 8);
  if (!v4)
  {
    if (!a2)
    {
      return;
    }

    v7 = 0;
    v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel);
    goto LABEL_11;
  }

  if (!a2 || (*v3 == a1 ? (v5 = v4 == a2) : (v5 = 0), !v5 && (sub_ABB3C0() & 1) == 0))
  {
    v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel);

    v7 = sub_AB9260();

LABEL_11:
    [v6 setText:v7];

    v8 = *(v2 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_overlayLabel);
    if (v3[1])
    {

      v9 = sub_AB9260();
    }

    else
    {
      v9 = 0;
    }

    [v8 setText:v9];

    v10 = v3[1];
    if (v10)
    {
      v11 = *v3;

      v12 = String.containsExcessiveHeightCharacters.getter(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    *(v2 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_hasExcessiveHeightCharacters) = v12 & 1;
  }
}

void sub_38FDFC()
{
  v1 = v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties);
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 8);
  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 32);
  v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel);
  v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 40);
  v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 48);
  v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_overlayLabel);
  v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 24);
  [v5 setAdjustsFontSizeToFitWidth:v2];
  v10 = v9;
  [v5 setFont:v10];
  [v5 setLineBreakMode:v4];
  [v5 setMinimumScaleFactor:v6];
  [v5 setNumberOfLines:v7];
  [v5 setTextAlignment:v3];
  [v5 setTextColor:*(v1 + 16)];
  [v8 setAdjustsFontSizeToFitWidth:v2];
  [v8 setFont:v10];

  [v8 setLineBreakMode:v4];
  [v8 setMinimumScaleFactor:v6];
  [v8 setNumberOfLines:v7];
  [v8 setTextAlignment:v3];
  [v8 setTextColor:*(v1 + 56)];
  [*(v1 + 56) alphaComponent];
  v12 = v11 < 1.0 && !UIAccessibilityIsReduceTransparencyEnabled();
  v13 = [v20 traitCollection];
  v14 = [v5 layer];
  if (v12)
  {
    [v13 userInterfaceStyle];
    sub_AB92A0();
    v15 = sub_AB9260();
  }

  else
  {
    v15 = 0;
  }

  [v14 setCompositingFilter:v15];

  swift_unknownObjectRelease();
  v16 = [v8 layer];
  if (v12)
  {
    [v13 userInterfaceStyle];
    sub_AB92A0();
    v17 = sub_AB9260();
  }

  else
  {
    v17 = 0;
  }

  [v16 setCompositingFilter:v17];

  swift_unknownObjectRelease();
  [v8 setHidden:!v12];
  v18 = [v20 layer];
  [v18 setAllowsGroupOpacity:!v12];

  v21 = [v20 layer];
  [v21 setAllowsGroupBlending:!v12];
}

id sub_3901BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VibrancyLabelCompositingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_39029C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3902E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_3903D0()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_paddingForExcessiveHeightCharacters) = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_overlayLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_hasExcessiveHeightCharacters) = 0;
  sub_ABAFD0();
  __break(1u);
}

id sub_3904BC()
{
  if (qword_DE6B48 != -1)
  {
    swift_once();
  }

  if ([v0 hasLoadedValuesForPropertySet:qword_E01CE0])
  {
    result = [v0 classicalWork];
    if (!result)
    {
      sub_390A08();
      v3 = v2 != 0;

      return v3;
    }

LABEL_8:

    return &dword_0 + 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF4EC0;
  *(v4 + 32) = sub_AB92A0();
  *(v4 + 40) = v5;
  isa = sub_AB9740().super.isa;
  v7 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(v4) = [v0 hasLoadedValuesForPropertySet:v7];
  if (v4)
  {
    result = [v0 classicalWork];
    if (!result)
    {
      return result;
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_390640()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF4EC0;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  isa = sub_AB9740().super.isa;
  v4 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(v1) = [v0 hasLoadedValuesForPropertySet:v4];
  if (!v1 || [v0 classicalMovementNumber] < 1)
  {
    return 0;
  }

  v5 = [v0 classicalMovementNumber];
  if (qword_DE6B40 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    swift_beginAccess();
    v6 = off_E01CD8[0];
    if (*(off_E01CD8[0] + &dword_10))
    {
      v7 = sub_2F5A90(v5);
      if (v8)
      {
        break;
      }
    }

    swift_endAccess();
    v11 = 0;
    v12 = v5;
    while (1)
    {
      v13 = &off_CEF918 + 3 * v11;
      v14 = v13[4];
      if (v12 >= v14)
      {
        break;
      }

LABEL_9:
      if (++v11 == 13)
      {
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = off_E01CD8[0];
        off_E01CD8[0] = 0x8000000000000000;
        sub_92368(0, 0xE000000000000000, v5, isUniquelyReferenced_nonNull_native);
        off_E01CD8[0] = v19;
        swift_endAccess();
        return 0;
      }
    }

    v16 = v13[5];
    v15 = v13[6];

    while (1)
    {
      v17 = __OFSUB__(v12, v14);
      v12 -= v14;
      if (v17)
      {
        break;
      }

      v20._countAndFlagsBits = v16;
      v20._object = v15;
      sub_AB94A0(v20);
      if (v12 < v14)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  v9 = *(*&stru_20.segname[v6 + 16] + 16 * v7);
  swift_endAccess();

  return v9;
}

int *sub_3908D8()
{
  result = sub_96D90(_swiftEmptyArrayStorage);
  off_E01CD8[0] = result;
  return result;
}

void sub_390900()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8600;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  isa = sub_AB9740().super.isa;
  v7 = [objc_opt_self() propertySetWithProperties:isa];

  qword_E01CE0 = v7;
}

uint64_t sub_390A08()
{
  if (qword_DE6B48 != -1)
  {
    swift_once();
  }

  if (![v0 hasLoadedValuesForPropertySet:qword_E01CE0])
  {
    return 0;
  }

  v1._countAndFlagsBits = [v0 grouping];
  if (v1._countAndFlagsBits)
  {
    countAndFlagsBits = v1._countAndFlagsBits;
    v3 = sub_AB92A0();
    v5 = v4;

    if (![v0 shouldShowComposer])
    {

      v3 = 0;
      v5 = 0;
    }

    v6 = *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor();
    v1._countAndFlagsBits = v3;
    if (v6 == 1 && v5)
    {
      v1._object = v5;
      sub_AB94A0(v1);

      v1._countAndFlagsBits = 10794;
    }
  }

  return v1._countAndFlagsBits;
}

uint64_t sub_390B20()
{
  v43 = sub_AB2B70();
  v1 = *(v43 - 8);
  __chkstk_darwin(v43);
  v3 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC40);
  __chkstk_darwin(v4 - 8);
  v6 = v41 - v5;
  if (qword_DE6B48 != -1)
  {
    swift_once();
  }

  if (![v0 hasLoadedValuesForPropertySet:qword_E01CE0])
  {
    return 0;
  }

  v7 = [v0 title];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = sub_AB92A0();
  v11 = v10;

  v12 = [v0 classicalWork];
  if (v12)
  {
    v13 = v12;
    v14 = sub_AB92A0();
    v16 = v15;
  }

  else
  {
    v17 = sub_390A08();
    if (!v18)
    {
LABEL_29:

      return 0;
    }

    v14 = v17;
    v16 = v18;
  }

  v48 = v14;
  v49 = v16;
  v42 = DeviceCapabilities.isInternalInstall.unsafeMutableAddressor();
  if (*v42 == 1)
  {
    v46 = v14;
    v47 = v16;
    v44 = 10794;
    v45 = 0xE200000000000000;
    v19 = sub_AB35C0();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    sub_36A48();

    v20 = sub_ABAAE0();
    v22 = v21;
    sub_72894(v6);

    if ((v22 & 1) == 0 && !(v20 >> 14))
    {
      sub_AB93C0();
    }
  }

  v46 = v9;
  v47 = v11;
  v44 = v48;
  v45 = v49;
  v23 = sub_AB35C0();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  sub_36A48();

  v24 = sub_ABAAE0();
  v26 = v25;
  v28 = v27;
  sub_72894(v6);
  swift_bridgeObjectRelease_n();
  if ((v28 & 1) != 0 || v24 >> 14)
  {
    goto LABEL_29;
  }

  v41[1] = v11;
  sub_391020(v26, v9, v11);
  v29 = sub_AB93B0();
  v31 = v30;

  v46 = v29;
  v47 = v31;
  v32 = objc_opt_self();
  v33 = (v1 + 8);
  while (1)
  {
    v44 = v29;
    v45 = v31;

    v34 = sub_AB9260();
    v35 = [v32 characterSetWithCharactersInString:v34];

    sub_AB2B30();
    v36 = sub_ABAA70();
    LOBYTE(v34) = v37;
    (*v33)(v3, v43);

    if ((v34 & 1) != 0 || v36 >> 14)
    {
      break;
    }

    sub_AB93C0();
    v29 = v46;
    v31 = v47;
  }

  if (*v42 == 1)
  {
    v38 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v38 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      v44 = 10794;
      v45 = 0xE200000000000000;
      v50._countAndFlagsBits = v29;
      v50._object = v31;
      sub_AB94A0(v50);

      v29 = v44;
      v31 = v45;
    }
  }

  v39 = (v31 & 0x2000000000000000) != 0 ? HIBYTE(v31) & 0xF : v29 & 0xFFFFFFFFFFFFLL;

  if (!v39)
  {
    goto LABEL_29;
  }

  return v29;
}

unint64_t sub_391020(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_AB9590();
  }

  __break(1u);
  return result;
}

id sub_39106C(id result)
{
  v2 = v1;
  v3 = *&stru_298.segname[(swift_isaMask & *v1) + 16];
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == result)
    {
      return result;
    }

    result = [*(v1 + v3) results];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = [result totalItemCount];
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v6 = 0;
  }

  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v7 = sub_AB4BC0();
  __swift_project_value_buffer(v7, qword_E71120);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349056;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_0, v8, v9, "Did update containerResponse with result count: %{public}ld", v10, 0xCu);
  }

  result = sub_391FC4();
  if ((result & 1) == 0)
  {
    v11 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
    v12 = *(v2 + v3);
    v13 = v12;
    sub_1F48E8(v12);
    sub_397854();
    sub_2D6B2C();
    sub_2E494C(0, _swiftEmptyArrayStorage);
    if (!*(v2 + *&stru_298.segname[swift_isaMask & *v2] + 32) && *(v2 + v3))
    {
      sub_396C9C(1);
    }

    v14 = *(v11 + qword_DFE298);
    if (v14)
    {
      v15 = *(v2 + v3);
      v16 = *(v14 + 32);
      *(v14 + 32) = v15;

      v17 = v15;
    }

    sub_398330();

    return sub_39382C();
  }

  return result;
}

id sub_3912DC(id result)
{
  v2 = v1;
  v3 = *&stru_298.segname[(swift_isaMask & *v1) + 16];
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == result)
    {
      return result;
    }

    result = [*(v1 + v3) results];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = [result totalItemCount];
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v6 = 0;
  }

  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v7 = sub_AB4BC0();
  __swift_project_value_buffer(v7, qword_E71120);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349056;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_0, v8, v9, "Did update containerResponse with result count: %{public}ld", v10, 0xCu);
  }

  result = sub_392A04();
  if ((result & 1) == 0)
  {
    v11 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
    v12 = *(v2 + v3);
    v13 = v12;
    sub_4FDF0(v12);
    sub_3979CC();
    sub_2D6E18();
    (*(&stru_6F8.offset + (swift_isaMask & *v2)))(0, _swiftEmptyArrayStorage);
    if (!*(v2 + *&stru_298.segname[swift_isaMask & *v2] + 32) && *(v2 + v3))
    {
      sub_396EB4(1);
    }

    v14 = *(v11 + qword_DFE298);
    if (v14)
    {
      v15 = *(v2 + v3);
      v16 = *(v14 + 32);
      *(v14 + 32) = v15;

      v17 = v15;
    }

    sub_397BD0();

    return sub_393984();
  }

  return result;
}

void sub_391588(void *a1)
{
  v2 = v1;
  v4 = *(&stru_298.size + (swift_isaMask & *v1));
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 identifier];
    v8 = sub_AB92A0();
    v10 = v9;

    if (!a1)
    {
      if (!v10)
      {
        return;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v10 = 0;
    v8 = 0;
  }

  v11 = [a1 identifier];
  v12 = sub_AB92A0();
  v14 = v13;

  if (!v10)
  {
    if (!v14)
    {
      return;
    }

LABEL_18:

    v17 = *(v2 + v4);
    if (!v17)
    {
LABEL_19:
      v20 = 0;
      v21 = swift_isaMask & *v2;
      goto LABEL_20;
    }

LABEL_15:
    v18 = objc_allocWithZone(SLAttributionView);
    v19 = v17;
    v20 = [v18 initWithHighlight:v19];
    [*(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2))) frame];
    [v20 prepareLayoutWithMaxWidth:CGRectGetWidth(v30)];

    v21 = swift_isaMask & *v2;
LABEL_20:
    v22 = *(v2 + *(v21 + 640));
    v23 = *&v22[qword_E08840];
    *&v22[qword_E08840] = v20;

    v24 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 8);
    if (v24)
    {
      v25 = *(v2 + v4) != 0;
      v26 = v24;
      JSContainerDetail.hasSharedContent.setter(v25);
    }

    if ([v2 isViewLoaded])
    {
      sub_2D62C0();
      sub_3933A4();
      v27 = *(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2)));
      (*(&stru_748.offset + (swift_isaMask & *v2)))(v27, 1);
      [v27 setNeedsLayout];
      [v22 loadViewIfNeeded];
      v28 = *&v22[qword_DFE2F8];
      if (v28)
      {
        [v28 reloadData];

        sub_397BD0();
      }

      else
      {
        __break(1u);
      }
    }

    return;
  }

  if (!v14)
  {
    goto LABEL_18;
  }

  if (v8 != v12 || v10 != v14)
  {
    v16 = sub_ABB3C0();

    if (v16)
    {
      return;
    }

    v17 = *(v2 + v4);
    if (!v17)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }
}

void sub_391910(void *a1)
{
  v2 = v1;
  v4 = *(&stru_298.size + (swift_isaMask & *v1));
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 identifier];
    v8 = sub_AB92A0();
    v10 = v9;

    if (!a1)
    {
      if (!v10)
      {
        return;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v10 = 0;
    v8 = 0;
  }

  v11 = [a1 identifier];
  v12 = sub_AB92A0();
  v14 = v13;

  if (!v10)
  {
    if (!v14)
    {
      return;
    }

LABEL_18:

    v17 = *(v2 + v4);
    if (!v17)
    {
LABEL_19:
      v20 = 0;
      v21 = swift_isaMask & *v2;
      goto LABEL_20;
    }

LABEL_15:
    v18 = objc_allocWithZone(SLAttributionView);
    v19 = v17;
    v20 = [v18 initWithHighlight:v19];
    [*(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2))) frame];
    [v20 prepareLayoutWithMaxWidth:CGRectGetWidth(v30)];

    v21 = swift_isaMask & *v2;
LABEL_20:
    v22 = *(v2 + *(v21 + 640));
    v23 = *&v22[qword_E08840];
    *&v22[qword_E08840] = v20;

    v24 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 8);
    if (v24)
    {
      v25 = *(v2 + v4) != 0;
      v26 = v24;
      JSContainerDetail.hasSharedContent.setter(v25);
    }

    if ([v2 isViewLoaded])
    {
      sub_2D5EA4();
      sub_3933A4();
      v27 = *(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2)));
      (*(&stru_748.offset + (swift_isaMask & *v2)))(v27, 1);
      [v27 setNeedsLayout];
      [v22 loadViewIfNeeded];
      v28 = *&v22[qword_DFE2F8];
      if (v28)
      {
        [v28 reloadData];

        sub_398330();
      }

      else
      {
        __break(1u);
      }
    }

    return;
  }

  if (!v14)
  {
    goto LABEL_18;
  }

  if (v8 != v12 || v10 != v14)
  {
    v16 = sub_ABB3C0();

    if (v16)
    {
      return;
    }

    v17 = *(v2 + v4);
    if (!v17)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }
}

void sub_391C98(char a1)
{
  v2 = swift_isaMask & *v1;
  v3 = *(&stru_298.reloff + v2);
  v4 = *(v1 + v3);
  if (v4 != (a1 & 1))
  {
    v5 = v1;
    if (v4)
    {
      v6 = 2;
    }

    else
    {
      v7 = v1 + *&stru_298.segname[swift_isaMask & *v1];
      if (v7[56])
      {
        v6 = 1;
      }

      else
      {
        v8 = *(v7 + 8);
        v31 = *(v7 + 9);
        v9 = *(v7 + 5);
        v10 = *(v7 + 3);
        v11 = *(v7 + 4);
        v13 = *(v7 + 1);
        v12 = *(v7 + 2);
        v14 = *v7;
        v32 = *(v7 + 6);
        v35 = v14;
        v34 = v13;
        v33 = v12;
        v15 = v10;
        v16 = v11;
        v17 = v9;
        sub_9007C(v8, v31);
        LOBYTE(v10) = sub_39719C(v10, 0x6B63617065646973, 0xEE006D6574496465);

        sub_466A4(v8, v31);
        v6 = v10;
        v2 = swift_isaMask & *v5;
      }
    }

    v18 = *(v2 + 864);
    v19 = *(v5 + v18);
    *(v5 + v18) = v6;
    if ((sub_3B3030(v6, v19) & 1) == 0)
    {
      *(*(v5 + *(&stru_248.reserved2 + (swift_isaMask & *v5))) + OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout) = 0x20001u >> (8 * *(v5 + v18));
      sub_2A0600();
    }

    v20 = *(v5 + *(&stru_298.reserved2 + (swift_isaMask & *v5)));
    if (v20)
    {
      v21 = *(v5 + v3);
      v22 = v20[OBJC_IVAR____TtC16MusicApplication12ParallaxView_hideVideoBackground];
      v20[OBJC_IVAR____TtC16MusicApplication12ParallaxView_hideVideoBackground] = v21;
      if (v21 != v22)
      {
        v23 = *&v20[OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView];
        v24 = v20;
        v25 = v23;
        sub_4F1A58(v21);
      }
    }

    sub_393564();
    sub_393984();
    v26 = sub_4D3DD0();
    [v26 setKeyboardDismissMode:*(v5 + v3)];

    if (*(v5 + v3) == 1)
    {
      v27 = *&stru_298.sectname[swift_isaMask & *v5];
      v28 = *(v5 + v27);
      *(v5 + v27) = 0;

      v29 = *(v5 + *(&stru_248.reloff + (swift_isaMask & *v5)));
      v30 = *(v29 + qword_E08848);
      *(v29 + qword_E08848) = 0;

      *(v29 + qword_E08860) = 0;
      sub_49134();
    }
  }
}

id sub_391FC4()
{
  v1 = v0;
  result = (*&stru_4C8.segname[swift_isaMask & *v0])();
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = [result results];
  if (!result)
  {
LABEL_56:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result totalItemCount];

  if (v5 || (v6 = v1 + *&stru_298.segname[swift_isaMask & *v1], (v7 = *(v6 + 1)) == 0))
  {

    return 0;
  }

  v8 = *(v6 + 2);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v12 = MPModelObject.bestIdentifier(for:)(*v11, 0);
    v14 = v13;

    if (v14)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = v7;
  }

  v12 = JSContainerDetail.containerStoreID.getter();
  v14 = v16;

  if (!v14)
  {

    return 0;
  }

LABEL_13:
  (*(&stru_478.reserved2 + (swift_isaMask & *v1)))(v77);
  v75[2] = v77[2];
  v75[3] = v77[3];
  v76 = v78;
  v75[0] = v77[0];
  v75[1] = v77[1];
  sub_12E1C(v75, &unk_DFDD48);
  if (*(v1 + *(&stru_298.reloff + (swift_isaMask & *v1))) == 1)
  {

    return 0;
  }

  v17 = *&stru_2E8.sectname[swift_isaMask & *v1];
  if (*(v17 + v1) > 2)
  {
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v26 = sub_AB4BC0();
    __swift_project_value_buffer(v26, qword_E71120);

    v27 = sub_AB4BA0();
    v28 = sub_AB9F50();

    if (!os_log_type_enabled(v27, v28))
    {

      return 0;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v77[0] = v30;
    *v29 = 136446210;
    v31 = sub_425E68(v12, v14, v77);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_0, v27, v28, "ContainerDetailRequest had no results, and exceeded maximum retries for container with id: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);

    goto LABEL_26;
  }

  if ((JSContainerDetail.containerDetailedResponseIsReady.getter() & 1) == 0)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v32 = sub_AB4BC0();
      __swift_project_value_buffer(v32, qword_E71120);

      v73 = v1;
      v33 = sub_AB4BA0();
      v34 = sub_AB9F50();

      if (!os_log_type_enabled(v33, v34))
      {

        goto LABEL_41;
      }

      v72 = v34;
      v35 = swift_slowAlloc();
      result = swift_slowAlloc();
      v70 = result;
      *&v77[0] = result;
      *v35 = 134218242;
      v36 = *(v17 + v1);
      v24 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (!v24)
      {
        *(v35 + 4) = v37;

        *(v35 + 12) = 2082;
        v12 = sub_425E68(v12, v14, v77);

        *(v35 + 14) = v12;
        _os_log_impl(&dword_0, v33, v72, "ContainerDetailRequest had no library results but we have catalog results. Scheduling a catalog request retry (#%ld) for container with id: %{public}s", v35, 0x16u);
        v14 = v70;
        __swift_destroy_boxed_opaque_existential_0(v70);

        goto LABEL_41;
      }

      __break(1u);
      goto LABEL_56;
    }

    if (qword_DE6940 != -1)
    {
LABEL_54:
      swift_once();
    }

    v38 = sub_AB4BC0();
    __swift_project_value_buffer(v38, qword_E71120);
    v27 = sub_AB4BA0();
    v39 = sub_AB9F50();
    if (!os_log_type_enabled(v27, v39))
    {
LABEL_27:

      return 0;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v27, v39, "Container detail response isn't ready yet, still waiting for JS to provide the container's detailed track data.", v40, 2u);
LABEL_26:

    goto LABEL_27;
  }

  v73 = v17;
  if (qword_DE6940 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v18 = sub_AB4BC0();
    __swift_project_value_buffer(v18, qword_E71120);

    v19 = v1;
    v20 = sub_AB4BA0();
    v21 = sub_AB9F50();

    if (os_log_type_enabled(v20, v21))
    {
      v71 = v21;
      v22 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v77[0] = v69;
      *v22 = 134218242;
      v23 = *(v73 + v1);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        __break(1u);
        goto LABEL_54;
      }

      *(v22 + 4) = v25;

      *(v22 + 12) = 2082;
      v12 = sub_425E68(v12, v14, v77);

      *(v22 + 14) = v12;
      _os_log_impl(&dword_0, v20, v71, "ContainerDetailRequest had no results, scheduling a retry (#%ld) for container with id: %{public}s", v22, 0x16u);
      v14 = v69;
      __swift_destroy_boxed_opaque_existential_0(v69);
    }

    else
    {
    }

    v17 = v73;
LABEL_41:
    v41 = *(v17 + v1);
    v24 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (!v24)
    {
      break;
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  *(v17 + v1) = v42;
  v43 = type metadata accessor for JSContainerDetailModelRequest();
  v44 = objc_allocWithZone(v43);
  v45 = &v44[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v45 = 0;
  v45[1] = 0;
  v44[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  v46 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *&v44[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  v44[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  *&v44[v46] = v7;
  v74.receiver = v44;
  v74.super_class = v43;
  v47 = v7;
  v48 = objc_msgSendSuper2(&v74, "init");
  if ((v47[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
  {
    sub_13C80(0, &qword_DE8E90);
    v49 = v48;
    v50 = static MPModelAlbum.defaultMusicKind.getter();
    [v49 setSectionKind:v50];

    v51 = [objc_opt_self() kindWithVariants:3];
    v52 = v51;
  }

  else
  {
    sub_13C80(0, &qword_DE9C10);
    v51 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v53 = objc_opt_self();
    v52 = v48;
    v54 = [v53 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v51 options:0];
    [v52 setSectionKind:v54];

    v49 = v51;
  }

  [v48 setItemKind:v51];

  v55 = *v6;
  *v6 = v48;

  sub_3949D4(0, 0);
  v56 = [v1 traitCollection];
  v57 = UITraitCollection.mediaPickerConfiguration.getter();
  if (v57)
  {
    v58 = v57;

    v59 = objc_allocWithZone(type metadata accessor for JSMediaPickerEnvironment());
    v60 = v58;
    v61 = JSMediaPickerEnvironment.init(configuration:)(v60);
    v62 = *(v6 + 4);
    if (v62)
    {
      v63 = *&stru_108.segname[(swift_isaMask & *v62) - 8];
      v64 = v62;
      v65 = v61;
      v66 = v63(v77);
      v68 = *v67;
      *v67 = v61;

      v66(v77, 0);
    }

    else
    {
    }

    return &dword_0 + 1;
  }

  else
  {

    return &dword_0 + 1;
  }
}

id sub_392A04()
{
  v1 = v0;
  result = (*&stru_4C8.segname[swift_isaMask & *v0])();
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = [result results];
  if (!result)
  {
LABEL_59:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result totalItemCount];

  if (v5 || (v6 = v1 + *&stru_298.segname[swift_isaMask & *v1], (v7 = *(v6 + 1)) == 0))
  {

    return 0;
  }

  v8 = *(v6 + 2);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v12 = MPModelObject.bestIdentifier(for:)(*v11, 0);
    v14 = v13;

    if (v14)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = v7;
  }

  v12 = JSContainerDetail.containerStoreID.getter();
  v14 = v16;

  if (!v14)
  {

LABEL_44:
    return 0;
  }

LABEL_13:
  (*(&stru_478.reserved2 + (swift_isaMask & *v1)))(&v71);
  v80[6] = v77;
  v80[7] = v78;
  v81 = v79;
  v80[2] = v73;
  v80[3] = v74;
  v80[4] = v75;
  v80[5] = v76;
  v80[0] = v71;
  v80[1] = v72;
  if (sub_11D03C(v80) == 1)
  {
    v68 = v77;
    v69 = v78;
    v70 = v79;
    v64 = v73;
    v65 = v74;
    v66 = v75;
    v67 = v76;
    v62 = v71;
    v63 = v72;
LABEL_21:
    v20 = sub_12E1C(&v62, &unk_DFDD90);
    goto LABEL_22;
  }

  v68 = v77;
  v69 = v78;
  v70 = v79;
  v64 = v73;
  v65 = v74;
  v66 = v75;
  v67 = v76;
  v62 = v71;
  v63 = v72;
  if (!*(&v74 + 1))
  {
    goto LABEL_21;
  }

  v17 = MPModelPropertyPlaylistIsOwner;
  v18 = *(&v65 + 1);
  if (![v18 hasLoadedValueForKey:v17])
  {

    goto LABEL_21;
  }

  v19 = [v18 isOwner];

  v20 = sub_12E1C(&v62, &unk_DFDD90);
  if (v19)
  {
    goto LABEL_23;
  }

LABEL_22:
  if ((*(&stru_4C8.reserved2 + (swift_isaMask & *v1)))(v20))
  {
LABEL_23:

    return 0;
  }

  v21 = *&stru_2E8.sectname[swift_isaMask & *v1];
  if (*(v1 + v21) > 2)
  {
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v31 = sub_AB4BC0();
    __swift_project_value_buffer(v31, qword_E71120);

    v32 = sub_AB4BA0();
    v33 = sub_AB9F50();

    if (!os_log_type_enabled(v32, v33))
    {

      goto LABEL_44;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v71 = v35;
    *v34 = 136446210;
    v36 = sub_425E68(v12, v14, &v71);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_0, v32, v33, "ContainerDetailRequest had no results, and exceeded maximum retries for container with id: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);

    goto LABEL_34;
  }

  if ((JSContainerDetail.containerDetailedResponseIsReady.getter() & 1) == 0)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v37 = sub_AB4BC0();
      __swift_project_value_buffer(v37, qword_E71120);

      v23 = v1;
      v24 = sub_AB4BA0();
      v25 = sub_AB9F50();

      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_45;
      }

      v60 = v23;
      v26 = swift_slowAlloc();
      result = swift_slowAlloc();
      v58 = result;
      *&v71 = result;
      *v26 = 134218242;
      v38 = *(v1 + v21);
      v28 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (!v28)
      {
        *(v26 + 4) = v39;

        *(v26 + 12) = 2082;
        v12 = sub_425E68(v12, v14, &v71);

        *(v26 + 14) = v12;
        v30 = "ContainerDetailRequest had no library results but we have catalog results. Scheduling a catalog request retry (#%ld) for container with id: %{public}s";
        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_59;
    }

    if (qword_DE6940 != -1)
    {
LABEL_57:
      swift_once();
    }

    v55 = sub_AB4BC0();
    __swift_project_value_buffer(v55, qword_E71120);
    v32 = sub_AB4BA0();
    v56 = sub_AB9F50();
    if (!os_log_type_enabled(v32, v56))
    {
      goto LABEL_35;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_0, v32, v56, "Container detail response isn't ready yet, still waiting for JS to provide the container's detailed track data.", v57, 2u);
LABEL_34:

LABEL_35:

    goto LABEL_44;
  }

  if (qword_DE6940 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v22 = sub_AB4BC0();
    __swift_project_value_buffer(v22, qword_E71120);

    v23 = v1;
    v24 = sub_AB4BA0();
    v25 = sub_AB9F50();

    if (os_log_type_enabled(v24, v25))
    {
      v59 = v23;
      v26 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v71 = v58;
      *v26 = 134218242;
      v27 = *(v1 + v21);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        __break(1u);
        goto LABEL_57;
      }

      *(v26 + 4) = v29;

      *(v26 + 12) = 2082;
      v12 = sub_425E68(v12, v14, &v71);

      *(v26 + 14) = v12;
      v30 = "ContainerDetailRequest had no results, scheduling a retry (#%ld) for container with id: %{public}s";
LABEL_42:
      _os_log_impl(&dword_0, v24, v25, v30, v26, 0x16u);
      v14 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
    }

    else
    {
LABEL_45:
    }

    v40 = *(v1 + v21);
    v28 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (!v28)
    {
      break;
    }

    __break(1u);
LABEL_55:
    swift_once();
  }

  *(v1 + v21) = v41;
  v42 = type metadata accessor for JSContainerDetailModelRequest();
  v43 = objc_allocWithZone(v42);
  v44 = &v43[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v44 = 0;
  v44[1] = 0;
  v43[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  v45 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *&v43[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  v43[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  *&v43[v45] = v7;
  v61.receiver = v43;
  v61.super_class = v42;
  v46 = v7;
  v47 = objc_msgSendSuper2(&v61, "init");
  if ((v46[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
  {
    sub_13C80(0, &qword_DE8E90);
    v48 = v47;
    v49 = static MPModelAlbum.defaultMusicKind.getter();
    [v48 setSectionKind:v49];

    v50 = [objc_opt_self() kindWithVariants:3];
    v51 = v50;
  }

  else
  {
    sub_13C80(0, &qword_DE9C10);
    v50 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v52 = objc_opt_self();
    v51 = v47;
    v53 = [v52 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v50 options:0];
    [v51 setSectionKind:v53];

    v48 = v50;
  }

  [v47 setItemKind:{v50, v58}];

  v54 = *v6;
  *v6 = v47;

  sub_23E9B8();
  return &dword_0 + 1;
}

void sub_3933A4()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  if (v4 <= 592.0)
  {

    goto LABEL_6;
  }

  v7 = sub_ABA340();

  if ((v7 & 1) == 0)
  {
LABEL_6:
    v9 = swift_isaMask & *v0;
    v10 = 2 * (*(v0 + *(&stru_298.reserved2 + v9)) != 0);
    v8 = 1;
    goto LABEL_7;
  }

  v8 = 0;
  v9 = swift_isaMask & *v0;
  v10 = 1;
LABEL_7:
  v11 = *(v0 + *(v9 + 640));
  *(v11 + qword_E08830) = v10;
  if (*(v11 + qword_E08840))
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {

      [v12 updateAlignment:v8];
    }
  }
}

void sub_393564()
{
  v1 = *(v0 + *(&stru_298.reserved2 + (swift_isaMask & *v0)));
  if (v1)
  {
    v27 = v1;
    v2 = sub_4D3DD0();
    [v2 bounds];
    [v27 setFrame:?];

    v3 = *(v0 + *(&stru_248.reserved2 + (swift_isaMask & *v0)));
    v4 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView;
    [*(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView) bounds];
    Width = CGRectGetWidth(v29);
    [*(v0 + v4) bounds];
    [v3 sizeThatFits:{Width, CGRectGetHeight(v30)}];
    v7 = v6;
    v8 = [v0 view];
    if (v8)
    {
      v9 = v8;
      [v8 safeAreaInsets];
      v11 = v10;

      v12 = v27;
      v13 = *&v27[OBJC_IVAR____TtC16MusicApplication12ParallaxView_preferredContentViewHeight];
      *&v27[OBJC_IVAR____TtC16MusicApplication12ParallaxView_preferredContentViewHeight] = v7 + v11;
      if (v7 + v11 != v13)
      {
        [v27 setNeedsLayout];
        v12 = v27;
      }

      v14 = *(*(v0 + *(&stru_248.reloff + (swift_isaMask & *v0))) + qword_E08820);
      v15 = v12;
      if (v14)
      {
        v15 = v14;
        [v27 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v31.origin.x = v17;
        v31.origin.y = v19;
        v31.size.width = v21;
        v31.size.height = v23;
        CGRectGetWidth(v31);
        [v15 bounds];
        [v15 setBounds:?];
      }

      v24 = *(v0 + *&stru_338.segname[(swift_isaMask & *v0) + 8]);
      if (v24)
      {
        v25 = *(*v24 + 264);

        v25(v26);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_39382C()
{
  if (*(v0 + *(&stru_298.reloff + (swift_isaMask & *v0))) == 1 && (v1 = (*&stru_4C8.segname[swift_isaMask & *v0])()) != 0)
  {
    v2 = v1;
    v3 = [v1 isEmpty];
  }

  else
  {
    v3 = 0;
  }

  v4 = swift_isaMask & *v0;
  v5 = *(v0 + *(&stru_298.reserved2 + v4));
  if (v5)
  {
    [*(*(v5 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView) + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_controlsView) setHidden:v3];
    v4 = swift_isaMask & *v0;
  }

  v6 = *(*(v0 + *(v4 + 640)) + qword_E08820);

  return [v6 setHidden:v3];
}

id sub_393984()
{
  if (((*(&stru_4C8.reserved2 + (swift_isaMask & *v0)))() & 1) != 0 && (v1 = (*&stru_4C8.segname[swift_isaMask & *v0])()) != 0)
  {
    v2 = v1;
    v3 = [v1 isEmpty];
  }

  else
  {
    v3 = 0;
  }

  v4 = swift_isaMask & *v0;
  v5 = *(v0 + *(&stru_298.reserved2 + v4));
  if (v5)
  {
    [*(*(v5 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView) + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_controlsView) setHidden:v3];
    v4 = swift_isaMask & *v0;
  }

  v6 = *(*(v0 + *(v4 + 640)) + qword_E08820);

  return [v6 setHidden:v3];
}

void sub_393AE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v62 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v55 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v7 - 8);
  v9 = &v55 - v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v59 = v13;
  v60 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v55 - v15;
  v17 = swift_isaMask & *v2;
  v18 = *(v2 + *(&stru_248.reloff + v17));
  v57 = *&stru_4C8.segname[v17];
  v58 = (v17 + 1240);
  v19 = v57(v14);
  v20 = sub_AB3820();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  sub_5002C(v19, v6, v9);
  sub_12E1C(v6, &unk_DE8E20);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DEA510);
    return;
  }

  sub_140E58(v9, v16);
  v21 = v62;
  [v62 bounds];
  v73[0] = v21;
  v73[1] = v22;
  v73[2] = v23;
  v73[3] = v24;
  v73[4] = v25;
  v74 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v73, 15, v65);
  v69[0] = v65[0];
  v69[1] = v65[1];
  v70 = v66;
  v71 = v67;
  v72 = v68;
  v26 = v21;
  v27 = v3;
  *&v28 = PresentationSource.init(viewController:position:)(v27, v69, v64).n128_u64[0];
  v29 = *(v18 + qword_DFE2F0);
  v30 = v16;
  v56 = v16;
  if (v29)
  {
    v31 = [v29 results];
    if (!v31)
    {
      __break(1u);
      return;
    }

    v32 = v31;
    v33 = [v31 firstSection];

    if (v33)
    {
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        v62 = v34;
        if (qword_DE6838 != -1)
        {
          v34 = swift_once();
        }

        v55 = qword_E70E48;
        v58 = (v57)(v34, v35);
        v36 = v60;
        sub_3A7240(v30, v60, type metadata accessor for PlaybackIntentDescriptor);
        sub_15F28(v64, v63);
        v37 = (*(v11 + 80) + 16) & ~*(v11 + 80);
        v38 = (v59 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
        v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
        v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
        v41 = swift_allocObject();
        sub_140E58(v36, v41 + v37);
        v42 = v62;
        *(v41 + v38) = v61;
        *(v41 + v39) = v27;
        *(v41 + v40) = v42;
        sub_17704(v63, v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
        v43 = v27;
        swift_unknownObjectRetain();
        v44 = v58;
        sub_1109D4(v42, v58, 0, 1, v64, sub_3A745C, v41);
        swift_unknownObjectRelease();

        goto LABEL_12;
      }

      v29 = swift_unknownObjectRelease();
    }
  }

  v45 = PlaybackIntentDescriptor.intent.getter(v29);
  [v45 setShuffleMode:v61];

  v47 = PlaybackIntentDescriptor.intent.getter(v46);
  [v47 setRepeatMode:0];

  sub_37D3DC(0);
LABEL_12:
  v48 = [v27 navigationItem];
  v49 = [v27 parentViewController];
  if (v49)
  {
    v50 = v49;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v51 = v50;
      v52 = [v51 navigationItem];

      v50 = [v51 parentViewController];
      v48 = v52;
      if (!v50)
      {
        goto LABEL_19;
      }
    }
  }

  v52 = v48;
LABEL_19:
  v53 = [v52 searchController];
  if (v53)
  {
    v54 = v53;

    v52 = [v54 searchBar];
    [v52 resignFirstResponder];
  }

  sub_1611C(v64);
  sub_1914D8(v56);
}

uint64_t sub_394134(unsigned __int8 a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a1;
  v12 = type metadata accessor for PlaybackIntentDescriptor(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = __chkstk_darwin(v12 - 8);
  if (v11 != 1)
  {
    return result;
  }

  v16 = sub_15F28(a6, v34);
  v17 = PlaybackIntentDescriptor.intent.getter(v16);
  [v17 setShuffleMode:a3];

  v19 = PlaybackIntentDescriptor.intent.getter(v18);
  [v19 setRepeatMode:0];

  v27[1] = a5;
  sub_13C80(0, &qword_DEDE20);
  v20 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA9B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    goto LABEL_10;
  }

  if (!*(&v29 + 1))
  {
LABEL_10:
    sub_12E1C(&v28, &unk_DFA9A0);
LABEL_12:
    sub_37D3DC(0);
    return sub_12E1C(v34, &unk_DEA520);
  }

  sub_70DF8(&v28, v31);
  v21 = v32;
  v22 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  if (((*(v22 + 16))(v21, v22) & 1) != 0 || (v23 = (*&stru_4C8.segname[swift_isaMask & *a4])()) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v31);
    goto LABEL_12;
  }

  v24 = v23;
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  sub_3A7240(a2, v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaybackIntentDescriptor);
  v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v26 = swift_allocObject();
  sub_140E58(v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  sub_111FD0(v31, v24, v34, sub_3A764C, v26);
  sub_12E1C(v34, &unk_DEA520);

  return __swift_destroy_boxed_opaque_existential_0(v31);
}

void sub_39446C()
{
  v1 = (*&stru_4C8.segname[swift_isaMask & *v0])();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 results];

    if (v3)
    {
      v4 = [v3 firstSection];

      if (v4)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_39453C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02D30);
  v6 = v1;
  v5[0] = v0;
  v2 = v0;
  sub_29CBEC(v5, "link:", 0);
  sub_12E1C(v5, &unk_DE8E40);
  v6 = v1;
  v5[0] = v2;
  v3 = v2;
  sub_29CBEC(v5, "play:", 1u);
  sub_12E1C(v5, &unk_DE8E40);
  v6 = v1;
  v5[0] = v3;
  v4 = v3;
  sub_29CBEC(v5, "shuffle:", 2u);
  sub_12E1C(v5, &unk_DE8E40);
  v6 = v1;
  v5[0] = v4;
  v4;
  sub_29CBEC(v5, "more:", 3u);
  sub_12E1C(v5, &unk_DE8E40);
  sub_397BD0();
}

void sub_394688(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*(&stru_6F8.flags + (swift_isaMask & *v2)))();
  v7 = *&stru_2E8.segname[swift_isaMask & *v2];
  if (v6)
  {
    *(v2 + v7) = 0;
    v8 = (*&stru_748.segname[(swift_isaMask & *v2) + 8])();
    v9 = [v2 traitCollection];
    if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) != 0)
    {
      v10 = *(v3 + *&stru_298.segname[swift_isaMask & *v3] + 56);

      if ((v10 & 1) == 0)
      {
        goto LABEL_7;
      }

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (!v11)
      {
        goto LABEL_7;
      }

      v12 = v11;
      v9 = v8;
      [v12 setFilteringOptions:{objc_msgSend(v12, "filteringOptions") | 2}];
    }

LABEL_7:
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a1;
    v14[4] = a2;
    v23[4] = sub_3A7730;
    v23[5] = v14;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_151E0;
    v23[3] = &block_descriptor_263;
    v15 = _Block_copy(v23);
    sub_307CC(a1);

    [v8 performWithResponseHandler:v15];
    _Block_release(v15);

    return;
  }

  *(v2 + v7) = 1;
  if (a1)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    v17 = *&stru_2E8.segname[(swift_isaMask & *v3) + 8];
    swift_beginAccess();
    v18 = *(v3 + v17);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v17) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_6AFC0(0, v18[2] + 1, 1, v18);
      *(v3 + v17) = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_6AFC0((v20 > 1), v21 + 1, 1, v18);
    }

    v18[2] = v21 + 1;
    v22 = &v18[2 * v21];
    v22[4] = sub_381190;
    v22[5] = v16;
    *(v3 + v17) = v18;
    swift_endAccess();
  }
}

void sub_3949D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&stru_2E8.segname[swift_isaMask & *v2];
  if (*(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) - 8]) == 1)
  {
    *(v2 + v6) = 0;
    v7 = (*&stru_748.segname[(swift_isaMask & *v2) + 8])();
    v8 = [v2 traitCollection];
    if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) != 0)
    {
      v9 = *(v3 + *&stru_298.segname[swift_isaMask & *v3] + 56);

      if ((v9 & 1) == 0)
      {
        goto LABEL_7;
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        goto LABEL_7;
      }

      v11 = v10;
      v8 = v7;
      [v11 setFilteringOptions:{objc_msgSend(v11, "filteringOptions") | 2}];
    }

LABEL_7:
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a1;
    v13[4] = a2;
    v22[4] = sub_3A7F3C;
    v22[5] = v13;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_151E0;
    v22[3] = &block_descriptor_481;
    v14 = _Block_copy(v22);
    sub_307CC(a1);

    [v7 performWithResponseHandler:v14];
    _Block_release(v14);

    return;
  }

  *(v2 + v6) = 1;
  if (a1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    v16 = *&stru_2E8.segname[(swift_isaMask & *v3) + 8];
    swift_beginAccess();
    v17 = *(v3 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_6AFC0(0, v17[2] + 1, 1, v17);
      *(v3 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_6AFC0((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_3A8170;
    v21[5] = v15;
    *(v3 + v16) = v17;
    swift_endAccess();
  }
}

uint64_t sub_394D34(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      swift_errorRetain();
      sub_3951E0(a2, 1);
    }
  }

  else
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      sub_13C80(0, &qword_DE8ED0);
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = a1;
      v14 = a1;
      v15 = v12;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A777C, v13);
    }
  }

  sub_13C80(0, &qword_DE8ED0);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a1;
  sub_307CC(a4);
  v17 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A7788, v16);
}

uint64_t sub_394EE0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      swift_errorRetain();
      sub_395784(a2, 1);
    }
  }

  else
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      sub_13C80(0, &qword_DE8ED0);
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = a1;
      v14 = a1;
      v15 = v12;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A7F48, v13);
    }
  }

  sub_13C80(0, &qword_DE8ED0);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a1;
  sub_307CC(a4);
  v17 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A8180, v16);
}

void sub_39508C()
{
  v1 = v0;
  v6 = (*&stru_748.segname[(swift_isaMask & *v0) + 8])();
  v2 = [v0 traitCollection];
  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) == 0)
  {
    goto LABEL_5;
  }

  v3 = *(v1 + *&stru_298.segname[swift_isaMask & *v1] + 56);

  if (v3 == 1)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v2 = v6;
      [v5 setFilteringOptions:{objc_msgSend(v5, "filteringOptions") | 2}];
LABEL_5:
    }
  }

  sub_3F12EC(v6);
}

void sub_3951E0(void *a1, char a2)
{
  if (a2)
  {
    v4 = v2 + *&stru_298.segname[swift_isaMask & *v2];
    v5 = *(v4 + 2);
    if (v5)
    {
      sub_21A5DC(a1, 1);
      v6 = v5;
      v7 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      v8 = MPModelObject.bestIdentifier(for:)(*v7, 0);
      if (v9)
      {
LABEL_13:
        v11 = v8;
        v13 = v9;

        goto LABEL_14;
      }

      v10 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
      v11 = MPModelObject.bestIdentifier(for:)(*v10, 0);
      v13 = v12;

      if (v13)
      {
LABEL_14:
        if (qword_DE6940 != -1)
        {
          swift_once();
        }

        v20 = sub_AB4BC0();
        __swift_project_value_buffer(v20, qword_E71120);
        sub_21A5DC(a1, 1);

        v21 = sub_AB4BA0();
        v22 = sub_AB9F50();

        sub_21A5E8(a1, 1);
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v23 = 136315394;
          v24 = sub_425E68(v11, v13, &v37);

          *(v23 + 4) = v24;
          *(v23 + 12) = 2082;
          swift_getErrorValue();
          v25 = sub_ABB520();
          v27 = sub_425E68(v25, v26, &v37);

          *(v23 + 14) = v27;
          _os_log_impl(&dword_0, v21, v22, "Error processing new container response for container id: %s, error: %{public}s", v23, 0x16u);
          swift_arrayDestroy();

          sub_21A5E8(a1, 1);
        }

        else
        {
          sub_21A5E8(a1, 1);
        }

        return;
      }

      v14 = *(v4 + 3);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      swift_errorRetain();
      v14 = *(v4 + 3);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    v17 = *(&stru_B8.offset + (swift_isaMask & *v14));
    v18 = v14;
    v6 = v17();

    if (v6)
    {

      v8 = (*(&stru_B8.reserved2 + (swift_isaMask & *v6)))(v19);
      if (v9)
      {
        goto LABEL_13;
      }

      v11 = (*(&stru_B8.offset + (swift_isaMask & *v6)))(v8);
      v13 = v28;

      if (v13)
      {
        goto LABEL_14;
      }
    }

LABEL_22:
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v29 = sub_AB4BC0();
    __swift_project_value_buffer(v29, qword_E71120);
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v30 = sub_AB9F50();
    sub_21A5E8(a1, 1);
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 136446210;
      swift_getErrorValue();
      v33 = sub_ABB520();
      v35 = sub_425E68(v33, v34, &v37);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, oslog, v30, "Error processing new container response, error: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);

      sub_21A5E8(a1, 1);
    }

    else
    {
      sub_21A5E8(a1, 1);
    }

    return;
  }

  sub_13C80(0, &qword_DE8ED0);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  sub_21A5DC(a1, 0);
  sub_21A5DC(a1, 0);
  v16 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A80F0, v15);

  sub_21A5E8(a1, 0);
}

void sub_395784(void *a1, char a2)
{
  if (a2)
  {
    v4 = v2 + *&stru_298.segname[swift_isaMask & *v2];
    v5 = *(v4 + 2);
    if (v5)
    {
      sub_21A5DC(a1, 1);
      v6 = v5;
      v7 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      v8 = MPModelObject.bestIdentifier(for:)(*v7, 0);
      if (v9)
      {
LABEL_13:
        v11 = v8;
        v13 = v9;

        goto LABEL_14;
      }

      v10 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
      v11 = MPModelObject.bestIdentifier(for:)(*v10, 0);
      v13 = v12;

      if (v13)
      {
LABEL_14:
        if (qword_DE6940 != -1)
        {
          swift_once();
        }

        v20 = sub_AB4BC0();
        __swift_project_value_buffer(v20, qword_E71120);
        sub_21A5DC(a1, 1);

        v21 = sub_AB4BA0();
        v22 = sub_AB9F50();

        sub_21A5E8(a1, 1);
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v23 = 136315394;
          v24 = sub_425E68(v11, v13, &v37);

          *(v23 + 4) = v24;
          *(v23 + 12) = 2082;
          swift_getErrorValue();
          v25 = sub_ABB520();
          v27 = sub_425E68(v25, v26, &v37);

          *(v23 + 14) = v27;
          _os_log_impl(&dword_0, v21, v22, "Error processing new container response for container id: %s, error: %{public}s", v23, 0x16u);
          swift_arrayDestroy();

          sub_21A5E8(a1, 1);
        }

        else
        {
          sub_21A5E8(a1, 1);
        }

        return;
      }

      v14 = *(v4 + 3);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      swift_errorRetain();
      v14 = *(v4 + 3);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    v17 = *(&stru_B8.offset + (swift_isaMask & *v14));
    v18 = v14;
    v6 = v17();

    if (v6)
    {

      v8 = (*(&stru_B8.reserved2 + (swift_isaMask & *v6)))(v19);
      if (v9)
      {
        goto LABEL_13;
      }

      v11 = (*(&stru_B8.offset + (swift_isaMask & *v6)))(v8);
      v13 = v28;

      if (v13)
      {
        goto LABEL_14;
      }
    }

LABEL_22:
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v29 = sub_AB4BC0();
    __swift_project_value_buffer(v29, qword_E71120);
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v30 = sub_AB9F50();
    sub_21A5E8(a1, 1);
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 136446210;
      swift_getErrorValue();
      v33 = sub_ABB520();
      v35 = sub_425E68(v33, v34, &v37);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, oslog, v30, "Error processing new container response, error: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);

      sub_21A5E8(a1, 1);
    }

    else
    {
      sub_21A5E8(a1, 1);
    }

    return;
  }

  sub_13C80(0, &qword_DE8ED0);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  sub_21A5DC(a1, 0);
  sub_21A5DC(a1, 0);
  v16 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3A80F4, v15);

  sub_21A5E8(a1, 0);
}

void sub_395D28(void *a1, void *a2)
{
  v4 = *&stru_4C8.segname[(swift_isaMask & *a1) + 8];
  v5 = a2;
  v4(a2);
  v6 = *&stru_2E8.segname[(swift_isaMask & *a1) + 8];
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = _swiftEmptyArrayStorage;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 40;
    do
    {
      v10 = *(v9 - 8);
      *&v29[0] = a2;

      v10(v29);

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  if (![objc_opt_self() isEnabled])
  {
    goto LABEL_6;
  }

  static ApplicationCapabilities.shared.getter(v29);
  sub_70C54(v29);
  if ((BYTE8(v29[0]) & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a1 + *&stru_298.segname[swift_isaMask & *a1] + 40);
  if (v11)
  {
    v12 = v11;

    v13 = *(&stru_298.size + (swift_isaMask & *a1));
    v14 = *(a1 + v13);
    *(a1 + v13) = v11;
    v15 = v12;
    sub_391588(v14);

    return;
  }

  if (a2)
  {
    v16 = [v5 results];
    if (v16)
    {
      v17 = v16;

      v18 = [v17 firstSection];

      if (v18)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass() && (v19 = MPModelObject.bestIdentifier(for:)(3, 2u), v20))
        {
          v21 = v19;
          v22 = v20;
          v23 = swift_allocObject();
          *(v23 + 16) = a1;
          v24 = objc_allocWithZone(type metadata accessor for Interstellar.HighlightsSource());
          v25 = a1;
          v26 = [v24 init];
          v27 = swift_allocObject();
          v27[2] = v26;
          v27[3] = v21;
          v27[4] = v22;
          v27[5] = sub_3A77CC;
          v27[6] = v23;
          v28 = v26;

          sub_449D54(1, sub_3A7800, v27);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
LABEL_6:
  }
}

void sub_39605C(void *a1, void *a2)
{
  v4 = *&stru_4C8.segname[(swift_isaMask & *a1) + 8];
  v5 = a2;
  v4(a2);
  v6 = *&stru_2E8.segname[(swift_isaMask & *a1) + 8];
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = _swiftEmptyArrayStorage;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 40;
    do
    {
      v10 = *(v9 - 8);
      *&v29[0] = a2;

      v10(v29);

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  if (![objc_opt_self() isEnabled])
  {
    goto LABEL_6;
  }

  static ApplicationCapabilities.shared.getter(v29);
  sub_70C54(v29);
  if ((BYTE8(v29[0]) & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a1 + *&stru_298.segname[swift_isaMask & *a1] + 40);
  if (v11)
  {
    v12 = v11;

    v13 = *(&stru_298.size + (swift_isaMask & *a1));
    v14 = *(a1 + v13);
    *(a1 + v13) = v11;
    v15 = v12;
    sub_391910(v14);

    return;
  }

  if (a2)
  {
    v16 = [v5 results];
    if (v16)
    {
      v17 = v16;

      v18 = [v17 firstSection];

      if (v18)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass() && (v19 = MPModelObject.bestIdentifier(for:)(3, 2u), v20))
        {
          v21 = v19;
          v22 = v20;
          v23 = swift_allocObject();
          *(v23 + 16) = a1;
          v24 = objc_allocWithZone(type metadata accessor for Interstellar.HighlightsSource());
          v25 = a1;
          v26 = [v24 init];
          v27 = swift_allocObject();
          v27[2] = v26;
          v27[3] = v21;
          v27[4] = v22;
          v27[5] = sub_3A7F98;
          v27[6] = v23;
          v28 = v26;

          sub_449D54(1, sub_3A80DC, v27);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
LABEL_6:
  }
}

void sub_396390(void *a1, void *a2, void (*a3)(id))
{
  v4 = *(&stru_298.size + (swift_isaMask & *a2));
  v6 = *(a2 + v4);
  *(a2 + v4) = a1;
  v5 = a1;
  a3(v6);
}

uint64_t sub_396410(uint64_t a1, char a2)
{
  v3 = v2;
  (*(&stru_478.reserved2 + (swift_isaMask & *v2)))(&v41);
  if (!v44)
  {
    v38 = v43;
    v39 = v44;
    v40 = v45;
    *v36 = v41;
    v37 = v42;
    return sub_12E1C(v36, &unk_DFDD48);
  }

  *v36 = v41;
  v37 = v42;
  v38 = v43;
  v39 = v44;
  v40 = v45;
  v6 = v41;
  v34 = a2;
  if (v41 && [v41 hasLoadedValueForKey:MPModelPropertyAlbumTitle] && (v7 = objc_msgSend(v6, "title")) != 0)
  {
    v8 = v7;
    v9 = sub_AB92A0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v35 = a1;
  v12 = *(a1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
  v13 = *&v12[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField];
  v14 = &v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v15 = *&v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v16 = *&v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
  v17 = v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
  if (v17 || (v9 == v15 ? (v19 = v16 == v11) : (v19 = 0), !v19 && (sub_ABB3C0() & 1) == 0))
  {
    *v14 = v9;
    *(v14 + 1) = v11;
    v14[16] = 0;
    v18 = v13;

    sub_2372F0(v15, v16, v17);
    sub_2366F4();
  }

  sub_2A2D6C();
  if (!v6)
  {
LABEL_21:
    v24 = v12[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite];
    v12[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite] = 0;
    if ((v24 & 1) == 0)
    {
LABEL_23:
      if ((v34 & 1) == 0)
      {
        goto LABEL_42;
      }

      if (!v6)
      {
        goto LABEL_28;
      }

      v21 = v6;
LABEL_26:
      if ([v21 hasLoadedValueForKey:MPModelPropertyAlbumArtwork])
      {
        v25 = [v21 artworkCatalog];
        goto LABEL_29;
      }

LABEL_28:
      v25 = 0;
LABEL_29:
      v26 = *(*(v35 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent) + 64);
      if (v26)
      {
        v27 = v25 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        if (v26)
        {
          v28 = v25 == 0;
        }

        else
        {
          v28 = 0;
        }

        if (!v28)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v29 = [v26 isArtworkVisuallyIdenticalToCatalog:v25];
        if ((v29 & 1) == 0)
        {
LABEL_41:
          sub_74EA4(v25);
          goto LABEL_42;
        }
      }

      goto LABEL_42;
    }

LABEL_22:
    sub_2A4304();
    goto LABEL_23;
  }

  v20 = MPModelPropertyAlbumIsFavorite;
  v21 = v6;
  if (([v21 hasLoadedValueForKey:v20] & 1) == 0)
  {

    goto LABEL_21;
  }

  v22 = [v21 isFavorite];

  v23 = v12[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite];
  v12[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite] = v22;
  if (v22 != v23)
  {
    goto LABEL_22;
  }

  if (v34)
  {
    goto LABEL_26;
  }

LABEL_42:
  sub_23C6F4(v35);
  v30 = [v3 traitCollection];
  v31 = UITraitCollection.isMediaPicker.getter();

  v32 = *(v35 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls);
  *(v35 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls) = v31;
  if (v31 != v32)
  {
    v12[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_shouldHideHeaderControls] = v31;
    [v12 setNeedsLayout];
  }

  return sub_12E1C(v36, &unk_DFDD48);
}

uint64_t sub_3967A8(uint64_t a1, char a2)
{
  v3 = v2;
  (*(&stru_478.reserved2 + (swift_isaMask & *v2)))(&v34);
  v52[6] = v40;
  v52[7] = v41;
  v53 = v42;
  v52[2] = v36;
  v52[3] = v37;
  v52[4] = v38;
  v52[5] = v39;
  v52[0] = v34;
  v52[1] = v35;
  if (sub_11D03C(v52) == 1)
  {
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v45 = v36;
    v46 = v37;
    v47 = v38;
    v48 = v39;
    v43 = v34;
    v44 = v35;
    v6 = &v43;
    return sub_12E1C(v6, &unk_DFDD90);
  }

  v30 = a2;
  v32[6] = v40;
  v32[7] = v41;
  v32[2] = v36;
  v32[3] = v37;
  v32[4] = v38;
  v32[5] = v39;
  v32[0] = v34;
  v32[1] = v35;
  v43 = v34;
  v44 = v35;
  v45 = v36;
  v49 = v40;
  v50 = v41;
  v33 = v42;
  v7 = *(&v37 + 1);
  v51 = v42;
  v47 = v38;
  v48 = v39;
  v46 = v37;
  v8 = sub_D1FC0();
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v31 = a1;
  v11 = *(a1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13 = *&v11[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField];
  v14 = &v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v15 = *&v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v16 = *&v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
  v17 = v13[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
  if (v17 || (v10 != v15 || v16 != v12) && (sub_ABB3C0() & 1) == 0)
  {
    *v14 = v10;
    *(v14 + 1) = v12;
    v14[16] = 0;
    v18 = v13;

    sub_2372F0(v15, v16, v17);
    sub_2366F4();
  }

  sub_2A2D6C();
  if (!v7)
  {
LABEL_19:
    v23 = v11[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite];
    v11[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite] = 0;
    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v19 = MPModelPropertyPlaylistIsFavorite;
  v20 = v7;
  if (([v20 hasLoadedValueForKey:v19] & 1) == 0)
  {

    goto LABEL_19;
  }

  v21 = [v20 isFavorite];

  v22 = v11[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite];
  v11[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite] = v21;
  if (v21 != v22)
  {
LABEL_20:
    sub_2A4304();
  }

LABEL_21:
  if (v30)
  {
    v24 = sub_D1DC8();
    v25 = *(*(v31 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent) + 64);
    if (v25 && v24)
    {
      if (([v25 isArtworkVisuallyIdenticalToCatalog:v24] & 1) == 0)
      {
LABEL_29:
        sub_74EA4(v24);
        goto LABEL_30;
      }
    }

    else if (!v25 || v24)
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  sub_23C6F4(v31);
  v26 = [v3 traitCollection];
  v27 = UITraitCollection.isMediaPicker.getter();

  v28 = *(v31 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls);
  *(v31 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls) = v27;
  if (v27 != v28)
  {
    v11[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_shouldHideHeaderControls] = v27;
    [v11 setNeedsLayout];
  }

  v6 = v32;
  return sub_12E1C(v6, &unk_DFDD90);
}

char *sub_396B50()
{
  v1 = *(&stru_338.reloff + (swift_isaMask & *v0));
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = *&v0[v1];
LABEL_7:
    v12 = v2;
    return v3;
  }

  v4 = v0;
  v5 = objc_allocWithZone(type metadata accessor for LoadingView());
  v6 = LoadingView.init(title:style:usesSubtitleTextColor:)(0, 0, 0x10000000000, 1);
  v7 = qword_DE6C58;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  [v8 setBackgroundColor:qword_E71898];
  result = [v4 view];
  if (result)
  {
    v10 = result;
    [result bounds];
    [v8 setFrame:?];

    v11 = *&v4[v1];
    *&v4[v1] = v8;
    v3 = v8;

    v2 = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_396C9C(char a1)
{
  if (a1)
  {
    v2 = *(&stru_338.offset + (swift_isaMask & *v1));
    [*(v1 + v2) invalidate];
    v3 = *(v1 + v2);
    *(v1 + v2) = 0;
  }

  v4 = sub_396B50();
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 isDescendantOfView:v5];

    if (v7)
    {
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      v19 = sub_3A7E78;
      v20 = v9;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1B5EB4;
      v18 = &block_descriptor_450;
      v10 = _Block_copy(&v15);
      v11 = v1;

      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v19 = sub_3A7ED0;
      v20 = v12;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1811AC;
      v18 = &block_descriptor_456;
      v13 = _Block_copy(&v15);
      v14 = v11;

      [v8 animateWithDuration:v10 animations:v13 completion:0.5];
      _Block_release(v13);
      _Block_release(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_396EB4(char a1)
{
  if (a1)
  {
    v2 = *(&stru_338.offset + (swift_isaMask & *v1));
    [*(v1 + v2) invalidate];
    v3 = *(v1 + v2);
    *(v1 + v2) = 0;
  }

  v4 = sub_396B50();
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 isDescendantOfView:v5];

    if (v7)
    {
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      v19 = sub_3A80C8;
      v20 = v9;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1B5EB4;
      v18 = &block_descriptor_308;
      v10 = _Block_copy(&v15);
      v11 = v1;

      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v19 = sub_3A817C;
      v20 = v12;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1811AC;
      v18 = &block_descriptor_314;
      v13 = _Block_copy(&v15);
      v14 = v11;

      [v8 animateWithDuration:v10 animations:v13 completion:0.5];
      _Block_release(v13);
      _Block_release(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_3970CC(uint64_t a1, void *a2)
{
  v3 = sub_396B50();
  [v3 removeFromSuperview];

  v4 = *&stru_338.segname[(swift_isaMask & *a2) - 8];
  v5 = *(a2 + v4);
  *(a2 + v4) = 1;
  if (v5 != 1)
  {
    v6 = *(a2 + *&stru_338.segname[swift_isaMask & *a2]);
    if (v6)
    {

      v6(v7);

      sub_17654(v6);
    }
  }
}

uint64_t sub_39719C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = [v3 traitCollection];
  v9 = UITraitCollection.isMediaPicker.getter();

  v10 = [v4 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  v12 = [v4 traitCollection];
  v13 = [v12 horizontalSizeClass];

  result = 1;
  if (v9 || v11 || v13 != &dword_0 + 1)
  {
    return result;
  }

  if (!a1)
  {
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v25 = sub_AB4BC0();
    __swift_project_value_buffer(v25, qword_E71120);

    v26 = sub_AB4BA0();
    v27 = sub_AB9F50();

    if (!os_log_type_enabled(v26, v27))
    {

      return 3;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_425E68(a2, a3, v52);
    _os_log_impl(&dword_0, v26, v27, "Layout undetermined, no %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);

LABEL_20:

    return 3;
  }

  v15 = (*&stru_1A8.segname[(swift_isaMask & *a1) + 8])(1);
  if (!v15)
  {
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v30 = sub_AB4BC0();
    __swift_project_value_buffer(v30, qword_E71120);
    v31 = a1;

    v32 = v31;
    v26 = sub_AB4BA0();
    v33 = sub_AB9F50();

    if (!os_log_type_enabled(v26, v33))
    {

      return 3;
    }

    v34 = swift_slowAlloc();
    v52[0] = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = sub_425E68(a2, a3, v52);
    *(v34 + 12) = 2082;
    v35 = [v32 description];
    v36 = sub_AB92A0();
    v38 = v37;

    v39 = sub_425E68(v36, v38, v52);

    *(v34 + 14) = v39;
    _os_log_impl(&dword_0, v26, v33, "Layout undetermined %s: %{public}s", v34, 0x16u);
    swift_arrayDestroy();

    goto LABEL_20;
  }

  v16 = v15;
  v17 = OBJC_IVAR____TtC11MusicJSCore14JSVideoArtwork_supportsUberArtwork;
  swift_beginAccess();
  v18 = v16[v17];
  if (v18 == 2)
  {
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v19 = sub_AB4BC0();
    __swift_project_value_buffer(v19, qword_E71120);
    v20 = v16;
    v21 = sub_AB4BA0();
    v22 = sub_AB9F50();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      *(v23 + 4) = v20;
      *v24 = v16;
      v20 = v20;
      _os_log_impl(&dword_0, v21, v22, "Layout undetermined (supportsUberArtwork not provided) videoDetailArtwork: %{public}@", v23, 0xCu);
      sub_12E1C(v24, &qword_DF9B20);
    }

    return 3;
  }

  v40 = (v18 & 1) == 0;
  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v41 = sub_AB4BC0();
  __swift_project_value_buffer(v41, qword_E71120);
  v42 = v16;
  v43 = sub_AB4BA0();
  v44 = sub_AB9F50();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v51 = v47;
    *v45 = 136315394;
    if (v18)
    {
      v48 = 1819042164;
    }

    else
    {
      v48 = 0x6C616D726F6ELL;
    }

    if (v18)
    {
      v49 = 0xE400000000000000;
    }

    else
    {
      v49 = 0xE600000000000000;
    }

    v50 = sub_425E68(v48, v49, &v51);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2114;
    *(v45 + 14) = v42;
    *v46 = v16;
    v42 = v42;
    _os_log_impl(&dword_0, v43, v44, "Layout determined as %s, videoDetailArtwork: %{public}@", v45, 0x16u);
    sub_12E1C(v46, &qword_DF9B20);

    __swift_destroy_boxed_opaque_existential_0(v47);
  }

  return v40;
}

uint64_t sub_397854()
{
  v1 = v0;
  v2 = (*&stru_4C8.segname[swift_isaMask & *v0])();
  if (v2)
  {
    v3 = v2;
    v4 = MPModelResponseDidInvalidateNotification;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v6 = v4;
    v7 = v3;
    v8 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v6, v3, 1, 1, sub_3A7EEC, v5);

    if (([v7 isValid] & 1) == 0)
    {
      sub_3949D4(0, 0);
    }
  }

  else
  {
    v8 = 0;
  }

  *(v1 + *&stru_388.sectname[swift_isaMask & *v1]) = v8;
}

uint64_t sub_3979CC()
{
  v1 = v0;
  v2 = (*&stru_4C8.segname[swift_isaMask & *v0])();
  if (v2)
  {
    v3 = v2;
    v4 = MPModelResponseDidInvalidateNotification;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v6 = v4;
    v7 = v3;
    v8 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v6, v3, 1, 1, sub_3A78A4, v5);

    if (([v7 isValid] & 1) == 0)
    {
      (*(&stru_6F8.reserved2 + (swift_isaMask & *v1)))(0, 0);
    }
  }

  else
  {
    v8 = 0;
  }

  *(v1 + *&stru_388.sectname[swift_isaMask & *v1]) = v8;
}

void sub_397B74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_3949D4(0, 0);
  }
}

void sub_397BD0()
{
  v1 = v0;
  v62 = 0;
  v2 = *(*(v0 + *(&stru_248.reloff + (swift_isaMask & *v0))) + qword_DFE298);
  if (v2)
  {
    v3 = *(&stru_478.reserved2 + (swift_isaMask & *v0));

    v3(&v51, v4);
    v60[6] = v57;
    v60[7] = v58;
    v61 = v59;
    v60[2] = v53;
    v60[3] = v54;
    v60[4] = v55;
    v60[5] = v56;
    v60[0] = v51;
    v60[1] = v52;
    if (sub_11D03C(v60) == 1)
    {

      v48 = v57;
      v49 = v58;
      v50 = v59;
      v44 = v53;
      v45 = v54;
      v46 = v55;
      v47 = v56;
      v42 = v51;
      v43 = v52;
      sub_12E1C(&v42, &unk_DFDD90);
LABEL_4:
      LODWORD(v5) = 0;
LABEL_10:
      v2 = 0;
      goto LABEL_11;
    }

    v33[6] = v57;
    v33[7] = v58;
    v33[2] = v53;
    v33[3] = v54;
    v33[4] = v55;
    v33[5] = v56;
    v33[0] = v51;
    v33[1] = v52;
    v39 = v57;
    v40 = v58;
    v35[2] = v53;
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v35[0] = v51;
    v35[1] = v52;
    v48 = v57;
    v49 = v58;
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v47 = v56;
    v34 = v59;
    v41 = v59;
    v50 = v59;
    v42 = v51;
    v43 = v52;
    sub_2E2538(v35, aBlock);
    sub_12E1C(&v42, &unk_DFDD90);
    v5 = *(&v36 + 1);
    v6 = *(&v36 + 1);
    sub_12E1C(v33, &unk_DFDD90);
    if (!v5)
    {

      goto LABEL_10;
    }

    v7 = v6;
    if (sub_2FBDBC(v7))
    {
      LODWORD(v5) = 1;
      HIBYTE(v62) = 1;
      v8 = sub_304104(v7);

      v2 = 0;
      LOBYTE(v62) = v8 & 1;
      goto LABEL_11;
    }

    v16 = [v7 pickableObjectFor:2];

    if (!v16 || (v16, v17 = [v1 traitCollection], v18 = UITraitCollection.mediaPickerConfiguration.getter(), v17, !v18))
    {

      LODWORD(v5) = 0;
      v2 = 0;
      goto LABEL_11;
    }

    v19 = [v18 selectionMode];

    if (v19 == &dword_0 + 1)
    {
      v20 = *&stru_4C8.segname[swift_isaMask & *v1];
      v21 = v20();
      if (v21)
      {
        v22 = v21;
        v23 = [v21 results];

        if (!v23)
        {
          goto LABEL_32;
        }

        v24 = [v23 totalItemCount];

        if (v24 > 0)
        {
          v62 = 257;
          v25 = v20();
          if (!v25)
          {

            v2 = 0;
            LODWORD(v5) = 1;
            goto LABEL_11;
          }

          v26 = v25;
          v27 = [v25 results];

          if (!v27)
          {
LABEL_33:
            __break(1u);
            return;
          }

          v28 = swift_allocObject();
          v28[2] = &v62 + 1;
          v28[3] = v2;
          v28[4] = &v62;
          v29 = swift_allocObject();
          *(v29 + 16) = sub_256C20;
          *(v29 + 24) = v28;
          aBlock[4] = sub_5794C;
          aBlock[5] = v29;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_48D4FC;
          aBlock[3] = &block_descriptor_284_0;
          v30 = _Block_copy(aBlock);

          [v27 enumerateItemsUsingBlock:v30];

          _Block_release(v30);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            v2 = sub_256C20;
            LODWORD(v5) = HIBYTE(v62);
            goto LABEL_11;
          }

          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }
    }

    goto LABEL_4;
  }

  LODWORD(v5) = 0;
LABEL_11:
  v9 = *(&stru_2E8.flags + (swift_isaMask & *v1));
  v10 = *(v1 + v9);
  *(v1 + v9) = v5;
  if (v5 != v10)
  {
    v11 = *&stru_248.segname[swift_isaMask & *v1];
    v12 = *(v1 + v11);
    if (v5)
    {
      [*(v1 + v11) setSelected:*(v1 + *(&stru_2E8.reloff + (swift_isaMask & *v1)))];
    }

    [v12 setHidden:v5 ^ 1];
  }

  v13 = v62;
  v14 = *(&stru_2E8.reloff + (swift_isaMask & *v1));
  v15 = *(v1 + v14);
  *(v1 + v14) = v62;
  if (v13 != v15)
  {
    [*(v1 + *&stru_248.segname[swift_isaMask & *v1]) setSelected:?];
  }

  sub_17654(v2);
}

void sub_398330()
{
  v1 = v0;
  v46 = 0;
  v2 = *(*(v0 + *(&stru_248.reloff + (swift_isaMask & *v0))) + qword_DFE298);
  if (!v2)
  {
    LODWORD(v5) = 0;
    goto LABEL_11;
  }

  v3 = *(&stru_478.reserved2 + (swift_isaMask & *v0));

  v3(&v41, v4);
  if (!v44)
  {

    v38 = v43;
    v39 = v44;
    v40 = v45;
    v36 = v41;
    v37 = v42;
    sub_12E1C(&v36, &unk_DFDD48);
LABEL_8:
    LODWORD(v5) = 0;
LABEL_10:
    v2 = 0;
    goto LABEL_11;
  }

  v34[2] = v43;
  v34[3] = v44;
  v34[0] = v41;
  v34[1] = v42;
  v35 = v45;
  v5 = v41;
  v38 = v43;
  v39 = v44;
  v40 = v45;
  v36 = v41;
  v37 = v42;

  v6 = v5;
  sub_12E1C(&v36, &unk_DFDD48);
  v7 = v6;
  sub_12E1C(v34, &unk_DFDD48);
  if (!v5)
  {

    goto LABEL_10;
  }

  v8 = v7;
  if ((sub_2FBDBC(v8) & 1) == 0)
  {
    v17 = [v8 pickableObjectFor:2];

    if (!v17 || (v17, v18 = [v1 traitCollection], v19 = UITraitCollection.mediaPickerConfiguration.getter(), v18, !v19))
    {

      LODWORD(v5) = 0;
      v2 = 0;
      goto LABEL_11;
    }

    v20 = [v19 selectionMode];

    if (v20 == &dword_0 + 1)
    {
      v21 = *&stru_4C8.segname[swift_isaMask & *v1];
      v22 = v21();
      if (v22)
      {
        v23 = v22;
        v24 = [v22 results];

        if (!v24)
        {
          goto LABEL_32;
        }

        v25 = [v24 totalItemCount];

        if (v25 >= 1)
        {
          v46 = 257;
          v26 = v21();
          if (!v26)
          {

            v2 = 0;
            LODWORD(v5) = 1;
            goto LABEL_11;
          }

          v27 = v26;
          v28 = [v26 results];

          if (!v28)
          {
LABEL_33:
            __break(1u);
            return;
          }

          v29 = swift_allocObject();
          v29[2] = &v46 + 1;
          v29[3] = v2;
          v29[4] = &v46;
          v30 = swift_allocObject();
          *(v30 + 16) = sub_3A8100;
          *(v30 + 24) = v29;
          v33[4] = sub_15AB68;
          v33[5] = v30;
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 1107296256;
          v33[2] = sub_48D4FC;
          v33[3] = &block_descriptor_467;
          v31 = _Block_copy(v33);

          [v28 enumerateItemsUsingBlock:v31];

          _Block_release(v31);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            v2 = sub_3A8100;
            LODWORD(v5) = HIBYTE(v46);
            goto LABEL_11;
          }

          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }
    }

    goto LABEL_8;
  }

  LODWORD(v5) = 1;
  HIBYTE(v46) = 1;
  v9 = sub_304104();

  v2 = 0;
  LOBYTE(v46) = v9 & 1;
LABEL_11:
  v10 = *(&stru_2E8.flags + (swift_isaMask & *v1));
  v11 = *(v1 + v10);
  *(v1 + v10) = v5;
  if (v5 != v11)
  {
    v12 = *&stru_248.segname[swift_isaMask & *v1];
    v13 = *(v1 + v12);
    if (v5)
    {
      [*(v1 + v12) setSelected:*(v1 + *(&stru_2E8.reloff + (swift_isaMask & *v1)))];
    }

    [v13 setHidden:v5 ^ 1];
  }

  v14 = v46;
  v15 = *(&stru_2E8.reloff + (swift_isaMask & *v1));
  v16 = *(v1 + v15);
  *(v1 + v15) = v46;
  if (v14 != v16)
  {
    [*(v1 + *&stru_248.segname[swift_isaMask & *v1]) setSelected:?];
  }

  sub_17654(v2);
}

void *sub_39891C(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v5 - 8);
  v40 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD40);
  v8 = __chkstk_darwin(v7 - 8);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  *(v2 + qword_E71630) = 0;
  *(v2 + qword_E01CF0) = 0;
  *(v2 + qword_E01CF8) = 0;
  *(v2 + qword_E01D00) = 0;
  v12 = (v2 + qword_E01D08);
  *v12 = 0;
  v12[1] = 0;
  *(v2 + qword_E01D10) = 1;
  *(v2 + qword_E71638) = 1;
  *(v2 + qword_E01D18) = 0;
  *(v2 + qword_E01D20) = 0;
  *(v2 + qword_E01D28) = 0;
  *(v2 + qword_E01D30) = 0;
  *(v2 + qword_E01D38) = _swiftEmptyArrayStorage;
  v13 = v2 + qword_E01D40;
  sub_2E2464(v47);
  v14 = v47[7];
  *(v13 + 96) = v47[6];
  *(v13 + 112) = v14;
  *(v13 + 128) = v48;
  v15 = v47[3];
  *(v13 + 32) = v47[2];
  *(v13 + 48) = v15;
  v16 = v47[5];
  *(v13 + 64) = v47[4];
  *(v13 + 80) = v16;
  v17 = v47[1];
  *v13 = v47[0];
  *(v13 + 16) = v17;
  *(v2 + qword_E01D48) = 0;
  v18 = v2 + qword_E01D50;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 0;
  *(v2 + qword_E01D60) = _swiftEmptyArrayStorage;
  *(v2 + qword_E01D68) = 0;
  *(v2 + qword_E01D70) = 0;
  *(v2 + qword_E01D78) = 0;
  *(v2 + qword_E01D80) = 0;
  *(v2 + qword_E01D88) = 0;
  *(v2 + qword_E01D90) = 0;
  v19 = qword_E01D98;
  *(v2 + qword_E01D98) = 0;
  *(v2 + qword_E01DA0) = 0;
  *(v2 + v19) = a2 != 0;
  *(v2 + qword_E01D58) = a2;
  v20 = a2;
  sub_70EB0(a1, v45);
  v21 = sub_2D15C8(a1);
  v22 = MetricsEvent.Page.libraryPlaylistDetail.unsafeMutableAddressor();
  sub_3A7240(v22, v11, type metadata accessor for MetricsEvent.Page);
  v23 = type metadata accessor for MetricsEvent.Page(0);
  v39 = *(*(v23 - 8) + 56);
  v39(v11, 0, 1, v23);
  v24 = *(&stru_298.flags + (swift_isaMask & *v21));
  swift_beginAccess();
  sub_2DBC38(v11, v21 + v24);
  swift_endAccess();
  v25 = sub_AB9260();
  [v21 setPlayActivityFeatureName:v25];

  v44 = *(a1 + 16);
  if (v44 && (objc_opt_self(), (v26 = swift_dynamicCastObjCClass()) != 0))
  {
    v27 = v26;
    v38 = v20;
    sub_15F84(&v44, v45, &unk_E02C90);
    sub_15F84(&v44, v45, &unk_E02C90);
    v28 = sub_D328C(v27, v42);
    UIScreen.Dimensions.size.getter(v28);
    v45[6] = v42[6];
    v45[7] = v42[7];
    v46 = v43;
    v45[2] = v42[2];
    v45[3] = v42[3];
    v45[4] = v42[4];
    v45[5] = v42[5];
    v45[0] = v42[0];
    v45[1] = v42[1];
    sub_39BBA0(v45);
    if ([v27 hasLoadedValueForKey:MPModelPropertyPlaylistType] && objc_msgSend(v27, "type") == &dword_8 + 1)
    {
      v29 = MPModelObject.bestIdentifier(for:)(3, 2u);
      if (v30)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0x657469726F766146;
      }

      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0xED000073676E6F53;
      }

      sub_12E1C(&v44, &unk_E02C90);
      sub_70F0C(a1);

      v33 = sub_AB31C0();
      v34 = v40;
      (*(*(v33 - 8) + 56))(v40, 1, 1, v33);
      v35 = v41;
      MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v31, v32, 0x7473696C79616C50, 0xE800000000000000, v34, 0, 0, 0, v41, 1, 0, 0, 2);
      v39(v35, 0, 1, v23);
      swift_beginAccess();
      sub_2DBC38(v35, v21 + v24);
      swift_endAccess();
    }

    else
    {
      sub_12E1C(&v44, &unk_E02C90);
      sub_70F0C(a1);
    }
  }

  else
  {

    sub_70F0C(a1);
  }

  return v21;
}

uint64_t sub_398F9C(uint64_t result)
{
  v2 = result;
  v3 = qword_E71630;
  v4 = *(v1 + qword_E71630);
  if (v4)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *(v4 + 64);
    *(v4 + 64) = sub_3A7BF8;
    *(v4 + 72) = v5;

    sub_17654(v6);
  }

  if (!v2 && *(v1 + v3))
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v7;

    sub_394688(sub_3A80FC, v8);
  }

  return result;
}

uint64_t sub_3990F4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = swift_allocObject();
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = v2;

    sub_394688(sub_3A80FC, v3);
  }

  return result;
}

id sub_3991C4()
{
  v1 = qword_E01CF0;
  v2 = *&v0[qword_E01CF0];
  if (v2)
  {
    v3 = *&v0[qword_E01CF0];
  }

  else
  {
    v4 = sub_399228(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_399228(void *a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  v4 = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  [v4 setSearchResultsUpdater:a1];
  v5 = [v4 searchBar];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v6 = sub_AB9260();

  [v5 setPlaceholder:v6];

  v7 = [v4 searchBar];
  [v7 setReturnKeyType:9];

  v8 = [a1 navigationItem];
  v9 = [a1 parentViewController];
  if (v9)
  {
    v10 = v9;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v11 = v10;
      v12 = [v11 navigationItem];

      v10 = [v11 parentViewController];
      v8 = v12;
      if (!v10)
      {
        goto LABEL_8;
      }
    }
  }

  v12 = v8;
LABEL_8:
  [v12 setHidesSearchBarWhenScrolling:1];
  [v12 setPreferredSearchBarPlacement:2];
  v13 = sub_387998();
  if (v13 > 1)
  {
    if (v13 != 2 && v13 != 3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v13)
  {
LABEL_14:
    v14 = sub_ABB3C0();

    if (v14)
    {
LABEL_18:

      return v4;
    }

LABEL_15:
    if (qword_DE6B20 != -1)
    {
      swift_once();
    }

    v15 = qword_E01290;
    v16 = sub_AB9260();
    objc_setAssociatedObject(v12, v15, v16, &dword_0 + 1);

    [v12 _setManualScrollEdgeAppearanceEnabled:1];
    [v12 _setManualScrollEdgeAppearanceProgress:1.0];
    [v12 _setManualScrollEdgeAppearanceEnabled:0];
    [v12 _setAutoScrollEdgeTransitionDistance:0.0];
    goto LABEL_18;
  }

  return v4;
}

id sub_399618()
{
  v1 = qword_E01CF8;
  v2 = *(v0 + qword_E01CF8);
  if (v2)
  {
    v3 = *(v0 + qword_E01CF8);
  }

  else
  {
    sub_13C80(0, &qword_E02D50);
    v4 = v0;
    v5 = sub_3991C4();
    v6 = static UIKeyCommand.findKeyCommand(affecting:)();

    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_3996B4(char a1)
{
  v2 = *(v1 + qword_E01D00);
  *(v1 + qword_E01D00) = a1;
  if (v2 != (a1 & 1))
  {
    v4 = *(v1 + *(&stru_248.reloff + (swift_isaMask & *v1)));
    v5 = sub_399618();
    if (a1)
    {
      [v4 addKeyCommand:v5];

      v6 = [v1 navigationItem];
      v7 = [v1 parentViewController];
      if (v7)
      {
        v8 = v7;
        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v9 = v8;
          v10 = [v9 navigationItem];

          v8 = [v9 parentViewController];
          v6 = v10;
          if (!v8)
          {
            goto LABEL_16;
          }
        }
      }

      v10 = v6;
LABEL_16:
      v17 = sub_3991C4();
      [v10 setSearchController:?];
    }

    else
    {
      [v4 removeKeyCommand:v5];

      v11 = [v1 navigationItem];
      v12 = [v1 parentViewController];
      if (v12)
      {
        v13 = v12;
        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v14 = v13;
          v16 = [v14 navigationItem];

          v13 = [v14 parentViewController];
          v15 = v16;
          v11 = v16;
          if (!v13)
          {
            goto LABEL_19;
          }
        }
      }

      v15 = v11;
LABEL_19:
      v17 = v15;
      [v15 setSearchController:0];
    }
  }
}

void sub_399938(char a1)
{
  v3 = *(v1 + *&stru_298.segname[(swift_isaMask & *v1) + 16]);
  if (!v3)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v4 = [v3 results];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 totalItemCount];

    v7 = v6 > 0;
LABEL_5:
    if (([v1 isEditing] & 1) != 0 || *(v1 + qword_E01D30) == 1)
    {
      v8 = qword_E01D40;
    }

    else
    {
      v8 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
    }

    v9 = v1 + v8;
    swift_beginAccess();
    v10 = *(v9 + 7);
    v46 = *(v9 + 6);
    v47 = v10;
    v48 = v9[128];
    v11 = *(v9 + 3);
    v42 = *(v9 + 2);
    v43 = v11;
    v12 = *(v9 + 5);
    v44 = *(v9 + 4);
    v45 = v12;
    v13 = *(v9 + 1);
    v41[0] = *v9;
    v41[1] = v13;
    v37 = v41[0];
    v38 = v13;
    v39 = v42;
    v14 = *(&v43 + 1);
    v40 = v43;
    v36 = v48;
    v31 = v48;
    v34 = v46;
    v35 = v47;
    v32 = v44;
    v33 = v12;
    v30[1] = v13;
    v30[2] = v42;
    v30[0] = v41[0];
    v30[6] = v46;
    v30[7] = v47;
    v30[4] = v44;
    v30[5] = v12;
    v30[3] = v43;
    if (sub_11D03C(v30) == 1)
    {
      v20 = v37;
      v21 = v38;
      v22 = v39;
      v23 = v40;
      v24 = v14;
      v27 = v34;
      v28 = v35;
      v29 = v36;
      v25 = v32;
      v26 = v33;
      sub_15F84(v41, v19, &unk_DFDD90);
      sub_12E1C(&v20, &unk_DFDD90);
    }

    else
    {
      v20 = v37;
      v21 = v38;
      v22 = v39;
      v23 = v40;
      v24 = v14;
      v27 = v34;
      v28 = v35;
      v29 = v36;
      v25 = v32;
      v26 = v33;
      sub_15F84(v41, v19, &unk_DFDD90);
      v15 = v14;
      sub_12E1C(&v20, &unk_DFDD90);
      if (v14)
      {
        v16 = [v15 type];

        if (a1)
        {
          goto LABEL_19;
        }

        v17 = v16 == &dword_0 + 2;
        if (!v7)
        {
LABEL_17:
          if (*(v1 + *(&stru_298.reloff + (swift_isaMask & *v1))) == 1)
          {
            goto LABEL_18;
          }

LABEL_19:
          v18 = 0;
          goto LABEL_20;
        }

LABEL_18:
        v18 = !v17;
LABEL_20:
        sub_3996B4(v18);
        return;
      }
    }

    if (a1)
    {
      goto LABEL_19;
    }

    v17 = 0;
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  __break(1u);
}

void sub_399C34(char a1)
{
  v2 = *(&stru_298.reloff + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  if (v3 != (a1 & 1))
  {
    v4 = v1;
    v5 = *(v1 + *(&stru_248.reloff + (swift_isaMask & *v1)));
    v6 = v5[qword_E08828];
    v5[qword_E08828] = v3;
    sub_495FC(v6);
    if (*(v4 + v2) == 1)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      v7 = v5;
      sub_AB9730();
      if (*(&dword_10 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      sub_4D4068(aBlock[0], 0);
    }

    else
    {
      sub_2E494C(0, _swiftEmptyArrayStorage);
    }

    v8 = *(v4 + v2);
    *(v4 + v2) = v8;
    sub_391C98(v8);
    if (*(v4 + v2) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF4EC0;
      strcpy((inited + 32), "playlistType");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      sub_39446C();
      if (v10)
      {
        v11 = v10;
        v12 = [v10 type];

        v13 = sub_399F58(v12);
        v15 = (inited + 48);
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = &off_D19220;
        if (v14)
        {
          *v15 = v13;
LABEL_13:
          *(inited + 56) = v14;
          v16 = sub_979E0(inited);
          swift_setDeallocating();
          sub_12E1C(inited + 32, &qword_DE9D08);
          v17 = sub_AB9260();
          v18 = swift_allocObject();
          *(v18 + 16) = v16;
          aBlock[4] = sub_3A8144;
          aBlock[5] = v18;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_3A598C;
          aBlock[3] = &block_descriptor_418;
          v19 = _Block_copy(aBlock);

          AnalyticsSendEventLazy();
          _Block_release(v19);

          return;
        }
      }

      else
      {
        v15 = (inited + 48);
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = &off_D19220;
      }

      *v15 = 7104878;
      v14 = 0xE300000000000000;
      goto LABEL_13;
    }
  }
}

uint64_t sub_399F58(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x7375696E6547;
      }

      if (a1 == 3)
      {
        return 0x7265646C6F46;
      }

      return 0x644520656C707041;
    }

    if (!a1)
    {
      return 0x72616C75676552;
    }

    if (a1 == 1)
    {
      return 0x7472616D53;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0x6C616E6F73726550;
      case 8:
        return 0x64656B6E6152;
      case 9:
        return 0x657469726F766146;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 == 5)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x646572616853;
  }
}

uint64_t sub_39A0D4(uint64_t result, uint64_t a2)
{
  v3 = (v2 + qword_E01D08);
  v4 = *(v2 + qword_E01D08);
  v5 = *(v2 + qword_E01D08 + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_39508C();
LABEL_11:
}

uint64_t sub_39A154(char a1, uint64_t a2)
{
  if (*(v2 + *(&stru_298.reloff + (swift_isaMask & *v2))) == 1)
  {
    v4 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    sub_4D4068(_swiftEmptyArrayStorage, a1 & 1);
  }

  else
  {

    return sub_2E494C(0, a2);
  }
}

uint64_t sub_39A29C(uint64_t a1)
{
  v3 = *(v1 + qword_E01D08 + 8);
  v4 = (a1 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText);
  *v4 = *(v1 + qword_E01D08);
  v4[1] = v3;

  v6 = *(v1 + qword_E71630);
  if (v6)
  {
    v7 = objc_opt_self();

    v8 = [v7 standardUserDefaults];
    v9 = NSUserDefaults.sortType(for:keyDomain:)(0xC2u, *(v6 + 24), *(v6 + 32));

    result = SortOptions.ContentType.availableSortTypes(withSelectedType:)(v9, 194);
    v10 = result;
    v11 = 0;
    v12 = *(result + 16);
    while (1)
    {
      if (v12 == v11)
      {
        LOBYTE(v13) = 13;
LABEL_9:

        goto LABEL_10;
      }

      if (v11 >= *(v10 + 16))
      {
        break;
      }

      v13 = *(v10 + v11++ + 32);
      v14 = SortOptions.SortType.sortDescriptors(for:)(194, v13);
      v15 = *(v6 + 96);

      v16 = sub_12C900(v14, v15);

      if (v16)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    LOBYTE(v13) = 13;
LABEL_10:
    *(a1 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption) = v13;
  }

  return result;
}

uint64_t sub_39A414()
{
  if (([v0 isEditing] & 1) != 0 || *(v0 + qword_E01D30) == 1)
  {
    v1 = qword_E01D40;
  }

  else
  {
    v1 = *&stru_298.segname[(swift_isaMask & *v0) + 8];
  }

  v2 = v0 + v1;
  swift_beginAccess();
  v3 = *(v2 + 7);
  v41 = *(v2 + 6);
  v42 = v3;
  v43 = v2[128];
  v4 = *(v2 + 3);
  v37 = *(v2 + 2);
  v38 = v4;
  v5 = *(v2 + 5);
  v39 = *(v2 + 4);
  v40 = v5;
  v6 = *(v2 + 1);
  v36[0] = *v2;
  v36[1] = v6;
  v32 = v36[0];
  v33 = v6;
  v34 = v37;
  v7 = *(&v38 + 1);
  v35 = v38;
  v31 = v43;
  v26 = v43;
  v29 = v41;
  v30 = v42;
  v27 = v39;
  v28 = v5;
  v25[1] = v6;
  v25[2] = v37;
  v25[0] = v36[0];
  v25[6] = v41;
  v25[7] = v42;
  v25[4] = v39;
  v25[5] = v5;
  v25[3] = v38;
  if (sub_11D03C(v25) == 1)
  {
    v15 = v32;
    v16 = v33;
    v17 = v34;
    v18 = v35;
    v19 = v7;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v20 = v27;
    v21 = v28;
    sub_15F84(v36, v14, &unk_DFDD90);
    sub_12E1C(&v15, &unk_DFDD90);
LABEL_9:
    v12 = *(v0 + qword_E71630);
    *(v0 + qword_E71630) = 0;
    sub_398F9C(v12);
  }

  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v19 = v7;
  v22 = v29;
  v23 = v30;
  v24 = v31;
  v20 = v27;
  v21 = v28;
  sub_15F84(v36, v14, &unk_DFDD90);
  v8 = v7;
  sub_12E1C(&v15, &unk_DFDD90);
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = sub_226C8C(v9);

  v11 = *(v0 + qword_E71630);
  *(v0 + qword_E71630) = v10;

  sub_398F9C(v11);
}

uint64_t sub_39A694(void *a1)
{
  v2 = v1;
  v4 = UISearchController.searchText.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v8 && ([a1 isBeingPresented] & 1) == 0 && (objc_msgSend(a1, "isActive") & 1) == 0)
    {
      [a1 setActive:1];
    }
  }

  v9 = [a1 isActive];
  v10 = *(&stru_298.reloff + (swift_isaMask & *v2));
  v11 = *(v2 + v10);
  *(v2 + v10) = v9;
  sub_391C98(v11);
  sub_399C34(v11);
  v12 = UISearchController.searchText.getter();

  return sub_39A0D4(v12, v13);
}

void sub_39A798(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_39A694(v4);
}

void sub_39A800(void *a1, uint64_t a2, void *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for PlaylistDetailViewController();
  v4 = a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", v4);
  sub_3A1E14();
}

uint64_t sub_39A874()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for PlaylistDetailViewController();
  objc_msgSendSuper2(&v29, "viewDidLoad");
  v2 = [v0 navigationItem];
  v3 = [v1 parentViewController];
  if (v3)
  {
    v4 = v3;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v5 = v4;
      v6 = [v5 navigationItem];

      v4 = [v5 parentViewController];
      v2 = v6;
      if (!v4)
      {
        goto LABEL_8;
      }
    }
  }

  v6 = v2;
LABEL_8:
  if (*(v1 + *(&stru_248.offset + (swift_isaMask & *v1))) == 1 && (sub_39B768(), v7))
  {
    v8 = sub_AB9260();
  }

  else
  {
    v8 = 0;
  }

  [v6 setTitle:v8];

  v9 = *ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange.unsafeMutableAddressor();
  v10 = ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v11 = *v10;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *(v1 + qword_E01D80) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v9, v11, 1, 1, UIScreen.Dimensions.size.getter, v12);

  if (qword_DE67B0 != -1)
  {
    swift_once();
  }

  v13 = qword_DE67A8;
  v14 = qword_E70D40;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_E70D38;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();

  *(v1 + qword_E01D88) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v14, v15, 1, 1, UIScreen.Dimensions.size.getter, v16);

  v17 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v18 = *v10;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  v20 = v17;

  *(v1 + qword_E01D90) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v18, 1, 1, sub_3A7C48, v19);

  v21 = *(v1 + *(&stru_248.reloff + (swift_isaMask & *v1)));
  v22 = *(v21 + qword_E70B50);
  *(v21 + qword_E70B50) = 0;
  sub_47338(v22);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = (v21 + qword_E70B70);
  v25 = *(v21 + qword_E70B70);
  *v24 = sub_3A7C50;
  v24[1] = v23;

  sub_17654(v25);

  v26 = (v21 + qword_E70B90);
  v27 = *(v21 + qword_E70B90);
  *v26 = sub_39ADA4;
  v26[1] = 0;
  return sub_17654(v27);
}

void sub_39AD50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_3A2F2C();
  }
}

uint64_t sub_39ADA4(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_AB9990();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_AB9940();
  v8 = a1;
  v9 = a2;
  v10 = sub_AB9930();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a1;
  v11[5] = v9;
  sub_DBDC8(0, 0, v6, &unk_B0C650, v11);
}

uint64_t sub_39AEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_AB9940();
  v5[5] = sub_AB9930();
  v7 = sub_AB98B0();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_39AF74, v7, v6);
}

uint64_t sub_39AF74()
{
  if (*(v0 + 24))
  {

    return _swift_task_switch(sub_39B014, 0, 0);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_39B014()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_39B110;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x65286574656C6564, 0xEE00293A7972746ELL, sub_3A7D60, v3, &type metadata for () + 8);
}

uint64_t sub_39B110()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_39B2A4;
  }

  else
  {

    v2 = sub_39B22C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_39B244()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_39B2A4()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_39B308, v1, v2);
}

uint64_t sub_39B308()
{
  v14 = v0;
  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E70DC0);
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    v8 = sub_AB9350();
    v10 = sub_425E68(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "DeleteEntryHandler failed with error=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v11 = v0[1];

  return v11();
}

void sub_39B4DC(void *a1)
{
  v1 = a1;
  sub_39A874();
}

void sub_39B524(void *a1, uint64_t a2, uint64_t a3)
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for PlaylistDetailViewController();
  v4 = v12.receiver;
  objc_msgSendSuper2(&v12, "viewWillAppear:", a3);
  v4[qword_E01D78] = 1;
  sub_3A3464(0);
  v5 = &v4[qword_E01D50];
  v6 = *&v4[qword_E01D50 + 48];
  v8 = *&v4[qword_E01D50];
  v7 = *&v4[qword_E01D50 + 16];
  v13[2] = *&v4[qword_E01D50 + 32];
  v13[3] = v6;
  v13[0] = v8;
  v13[1] = v7;
  v10 = *&v4[qword_E01D50 + 80];
  v9 = *&v4[qword_E01D50 + 96];
  v11 = *&v4[qword_E01D50 + 64];
  v14 = *&v4[qword_E01D50 + 112];
  v13[5] = v10;
  v13[6] = v9;
  v13[4] = v11;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 14) = 0;
  sub_12E1C(v13, &qword_E02CA8);
}

uint64_t sub_39B604()
{
  v1 = qword_E01D10;
  v2 = *(v0 + qword_E01D10);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = sub_AB9260();
    v5 = [objc_opt_self() keyCommandWithInput:v4 modifierFlags:0 action:"tabAction"];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF82B0;
    *(v3 + 32) = v5;
    v6 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_3A715C(v6);
  }

  sub_3A7BE8(v2);
  return v3;
}

Class sub_39B6E8(void *a1)
{
  v1 = a1;
  v2 = sub_39B604();

  if (v2)
  {
    sub_13C80(0, &qword_E02D50);
    v3.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t sub_39B768()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  if ([v0 isEditing])
  {
    sub_AB91E0();
    sub_AB3550();
    return sub_AB9320();
  }

  else
  {
    if (([v0 isEditing] & 1) != 0 || *(v0 + qword_E01D30) == 1)
    {
      v4 = qword_E01D40;
    }

    else
    {
      v4 = *&stru_298.segname[(swift_isaMask & *v0) + 8];
    }

    v5 = v0 + v4;
    swift_beginAccess();
    v6 = *(v5 + 7);
    v20 = *(v5 + 6);
    v21 = v6;
    v22 = v5[128];
    v7 = *(v5 + 3);
    v16 = *(v5 + 2);
    v17 = v7;
    v8 = *(v5 + 5);
    v18 = *(v5 + 4);
    v19 = v8;
    v9 = *(v5 + 1);
    v14 = *v5;
    v15 = v9;
    v12[6] = v20;
    v12[7] = v21;
    v13 = v22;
    v12[2] = v16;
    v12[3] = v17;
    v12[4] = v18;
    v12[5] = v8;
    v12[0] = v14;
    v12[1] = v9;
    if (sub_11D03C(v12) == 1)
    {
      return 0;
    }

    else
    {
      v29 = v20;
      v30 = v21;
      v31 = v22;
      v25 = v16;
      v26 = v17;
      v27 = v18;
      v28 = v19;
      v23 = v14;
      v24 = v15;
      sub_15F84(&v14, &v11, &unk_DFDD90);
      v10 = sub_D1FC0();
      sub_12E1C(&v14, &unk_DFDD90);
      return v10;
    }
  }
}