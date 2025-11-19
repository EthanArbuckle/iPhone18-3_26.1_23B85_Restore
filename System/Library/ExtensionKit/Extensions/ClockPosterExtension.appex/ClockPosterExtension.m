uint64_t sub_100001678@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100008C18();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_100008C28();
  v5 = sub_100008BE8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_100008BF8();
  sub_100001C28(&qword_100015FA8, &qword_100009B70);
  v8 = *(sub_100008B88() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100009AF0;
  sub_100001C70(&qword_100015FB0, &type metadata accessor for PRRenderingConfiguration);

  sub_100008B78();
  sub_100001C70(&qword_100015FB8, &type metadata accessor for PREditingConfiguration);

  sub_100008B78();

  *a1 = v11;
  return result;
}

id sub_1000018D4(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_100001918()
{
  [objc_allocWithZone(type metadata accessor for ClockUpdater()) init];
  v0 = sub_100001C28(&unk_100015F90, &unk_100009B00);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_100008C08();
  sub_100001D94(&qword_100015FA0);
  sub_100008BB8();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001A7C();
  sub_100001D94(&qword_100015F88);
  sub_100008B98();
  return 0;
}

unint64_t sub_100001A7C()
{
  result = qword_100015F80;
  if (!qword_100015F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015F80);
  }

  return result;
}

uint64_t sub_100001AD0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of ClockUpdater.descriptors()
{
  v0 = sub_1000023F8();
  if (v0 >> 62)
  {
    sub_100001B94();
    v1 = sub_100008E38();
  }

  else
  {

    sub_100008E88();
    sub_100001B94();
    v1 = v0;
  }

  return v1;
}

unint64_t sub_100001B94()
{
  result = qword_100016220;
  if (!qword_100016220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100016220);
  }

  return result;
}

uint64_t sub_100001C28(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001C70(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100001CB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001CC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001CE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGPoint()
{
  if (!qword_100016080)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100016080);
    }
  }
}

uint64_t sub_100001D94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100001AD0(&unk_100015F90, &unk_100009B00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id ClockUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClockUpdater.init()()
{
  v1 = v0;
  v2 = (*(*(sub_100001C28(&qword_100016210, qword_100009BA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v23 - v3;
  v5 = sub_100008A18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*(sub_100001C28(&qword_100016218, &qword_100009CE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v23 - v11;
  v13 = sub_1000023F8();
  if (v13 >> 62)
  {
    sub_100001B94();
    v14 = sub_100008E38();
  }

  else
  {

    sub_100008E88();
    sub_100001B94();
    v14 = v13;
  }

  *&v1[OBJC_IVAR____TtC20ClockPosterExtension12ClockUpdater_descriptors] = v14;
  v15 = type metadata accessor for ClockUpdater();
  v23.receiver = v1;
  v23.super_class = v15;
  v16 = objc_msgSendSuper2(&v23, "init");
  sub_100008A68();
  v17 = v16;
  sub_1000089F8();
  v18 = enum case for ClockLogger.Role.update(_:);
  v19 = sub_100008A28();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v12, v18, v19);
  (*(v20 + 56))(v12, 0, 1, v19);
  (*(v6 + 104))(v9, enum case for ClockLogger.Host.ambient(_:), v5);
  v21 = sub_100008AE8();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_100008A08();

  sub_100002760(v4, &qword_100016210, qword_100009BA0);
  (*(v6 + 8))(v9, v5);
  sub_100002760(v12, &qword_100016218, &qword_100009CE0);
  return v17;
}

id ClockUpdater.__deallocating_deinit()
{
  v1 = sub_100008A28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008A68();
  sub_1000089F8();
  (*(v2 + 104))(v5, enum case for ClockLogger.Role.update(_:), v1);
  sub_100008A48();

  (*(v2 + 8))(v5, v1);
  v6 = type metadata accessor for ClockUpdater();
  v8.receiver = v0;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "dealloc");
}

void *sub_1000023F8()
{
  v0 = sub_100008AA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100008AE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100008A88();
  v11 = *(v10 + 16);
  if (v11)
  {
    v32 = &_swiftEmptyArrayStorage;
    sub_100008DF8();
    v30 = objc_opt_self();
    v12 = v6 + 16;
    v28 = *(v6 + 16);
    v29 = PRPosterRoleAmbient;
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v24[1] = v10;
    v25 = v0;
    v14 = v10 + v13;
    v15 = (v6 + 8);
    v31 = v12;
    v26 = *(v12 + 56);
    v27 = (v1 + 8);
    do
    {
      v28(v9, v14, v5);
      v16 = *(sub_100008A78() + 16);

      sub_100008AD8();
      v17 = v5;
      v18 = sub_100008C68();

      v19 = [v30 mutableDescriptorWithIdentifier:v18 role:v29];

      v20 = [objc_allocWithZone(PRPosterAmbientConfiguration) initWithSupportedDataLayout:3 creationBehavior:0 editingBehavior:v16 < 2 deletionBehavior:2];
      [v19 setAmbientConfiguration:v20];
      sub_100008AB8();
      sub_100008A98();
      (*v27)(v4, v25);
      v21 = sub_100008C68();
      v5 = v17;

      [v19 setDisplayNameLocalizationKey:v21];

      (*v15)(v9, v17);
      sub_100008DD8();
      v22 = v32[2];
      sub_100008E08();
      sub_100008E18();
      sub_100008DE8();
      v14 += v26;
      --v11;
    }

    while (v11);

    return v32;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

uint64_t sub_100002760(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001C28(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ClockUpdater.updateDescriptors(_:with:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v5 = *(a1 + 16);
  v6 = *(v3 + OBJC_IVAR____TtC20ClockPosterExtension12ClockUpdater_descriptors);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v9 = *(v3 + OBJC_IVAR____TtC20ClockPosterExtension12ClockUpdater_descriptors);
    }

    v10 = a1;
    v11 = v6;
    v12 = sub_100008E48();
    v6 = v11;
    a1 = v10;
    if (v5 == v12)
    {
      goto LABEL_3;
    }

    return a3(v6, 0);
  }

  if (v5 != *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return a3(v6, 0);
  }

LABEL_3:
  v7 = sub_1000028B0(a1);
  a3(v7, 0);
}

void *sub_1000028B0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100008DF8();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_100008D88();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 72;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 56) + 8 * v6);
      sub_100008DD8();
      v12 = *(&_swiftEmptyArrayStorage + 2);
      sub_100008E08();
      v1 = v21;
      sub_100008E18();
      result = sub_100008DE8();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_100002FE8(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_100002FE8(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100002C80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001C28(&qword_100016210, qword_100009BA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = [a1 descriptorIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_100008C78();
    v12 = v11;

    sub_100008AC8();
    v13 = sub_100008AE8();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v7, 1, v13) != 1)
    {
      swift_unknownObjectRelease();

      return (*(v14 + 32))(a2, v7, v13);
    }

    sub_100002760(v7, &qword_100016210, qword_100009BA0);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_100008DA8(47);

    v16 = 0xD00000000000001CLL;
    v17 = 0x800000010000C060;
    v18._countAndFlagsBits = v10;
    v18._object = v12;
    sub_100008CB8(v18);
    v19._object = 0x800000010000C080;
    v19._countAndFlagsBits = 0xD000000000000011;
    sub_100008CB8(v19);
  }

  result = sub_100008E28();
  __break(1u);
  return result;
}

void sub_100002EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + OBJC_IVAR____TtC20ClockPosterExtension12ClockUpdater_descriptors);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v6 = *(a2 + OBJC_IVAR____TtC20ClockPosterExtension12ClockUpdater_descriptors);
    }

    v7 = a1;
    v8 = sub_100008E48();
    a1 = v7;
    if (v4 == v8)
    {
      goto LABEL_3;
    }
  }

  else if (v4 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_1000028B0(a1);
    sub_100001B94();
    isa = sub_100008CE8().super.isa;
    (*(a3 + 16))(a3);

    goto LABEL_8;
  }

  sub_100001B94();
  isa = sub_100008CE8().super.isa;
  (*(a3 + 16))(a3);
LABEL_8:
}

uint64_t sub_100002FE8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_100002FF4()
{
  v1 = sub_100008A28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008A68();
  sub_1000089F8();
  v12 = &OBJC_PROTOCOL___PREditingDelegate;
  v6 = swift_dynamicCastObjCProtocolConditional();
  v7 = &enum case for ClockLogger.Role.render(_:);
  if (v6)
  {
    v7 = &enum case for ClockLogger.Role.edit(_:);
  }

  (*(v2 + 104))(v5, *v7, v1);
  sub_100008A48();

  (*(v2 + 8))(v5, v1);
  v8 = type metadata accessor for ClockPosterExtensionController();
  v11.receiver = v0;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_1000032C0(uint64_t a1)
{
  v2 = sub_100008BD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100008AE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37[3] = &OBJC_PROTOCOL___PRPosterEditingEnvironment;
  v12 = swift_dynamicCastObjCProtocolConditional();
  if (v12)
  {
    v13 = &selRef_sourceContents;
  }

  else
  {
    v37[2] = &OBJC_PROTOCOL___PRPosterRenderingEnvironment;
    v12 = swift_dynamicCastObjCProtocolConditional();
    if (!v12)
    {
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      sub_100008DA8(78);
      v38._object = 0x800000010000C320;
      v38._countAndFlagsBits = 0xD00000000000004CLL;
      sub_100008CB8(v38);
      v36 = a1;
      swift_unknownObjectRetain();
      sub_100001C28(&unk_100016530, &qword_100009D20);
      v39._countAndFlagsBits = sub_100008C88();
      sub_100008CB8(v39);

      result = sub_100008E28();
      __break(1u);
      return result;
    }

    v13 = &selRef_contents;
  }

  v14 = [v12 *v13];
  v15 = swift_unknownObjectRetain();
  sub_100002C80(v15, v11);
  v37[0] = 0;
  v16 = [v14 loadUserInfoWithError:v37];
  v17 = v37[0];
  if (v16)
  {
    v18 = v16;
    sub_100008C48();
    v19 = v17;
  }

  else
  {
    v34 = v3;
    v35 = v2;
    v20 = v37[0];
    sub_100008918();

    swift_willThrow();
    sub_100008A68();
    sub_100008A38();
    swift_errorRetain();
    v21 = sub_100008BC8();
    v22 = sub_100008D68();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = v21;
      v24 = v23;
      v32 = swift_slowAlloc();
      v37[0] = v32;
      *v24 = 136446210;
      swift_getErrorValue();
      v31 = v22;
      v25 = sub_100008EA8();
      v27 = sub_100006404(v25, v26, v37);

      *(v24 + 4) = v27;
      v28 = v33;
      _os_log_impl(&_mh_execute_header, v33, v31, "Error loading user info contents %{public}s", v24, 0xCu);
      sub_100007230(v32);
    }

    else
    {
    }

    (*(v34 + 8))(v6, v35);
  }

  sub_100008B28();
  swift_unknownObjectRelease();

  return (*(v8 + 8))(v11, v7);
}

void sub_1000037A4(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_1000072E0(a2, v3);
  v6 = *(v3 + OBJC_IVAR____TtC20ClockPosterExtension39ClockPosterExtensionRenderingController_renderer);
  *(v3 + OBJC_IVAR____TtC20ClockPosterExtension39ClockPosterExtensionRenderingController_renderer) = a1;
  v7 = a1;

  v8 = [v7 foregroundView];
  v9 = [v8 window];

  v10 = [v9 rootViewController];
  v17 = [v7 foregroundView];
  v11 = OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController;
  if (!*(v3 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = *(v3 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController);

  sub_1000089D8();

  if (!*(v3 + v11))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = *(v3 + v11);

  sub_1000041FC();
  sub_100008978();

  if (!*(v3 + v11))
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = *(v3 + v11);

  v15 = sub_100008988();

  if (v15)
  {
    aBlock[4] = sub_1000039FC;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003A0C;
    aBlock[3] = &unk_100010928;
    v16 = _Block_copy(aBlock);

    [v7 updatePreferences:v16];

    _Block_release(v16);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_100003A0C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_100003C10(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  *(v6 + 40) = a6;
  sub_100008D38();
  *(v6 + 64) = sub_100008D28();
  v8 = sub_100008D18();

  return _swift_task_switch(sub_100003CAC, v8, v7);
}

uint64_t sub_100003CAC()
{
  v1 = v0[5];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (!*(result + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
    {
      __break(1u);
      return result;
    }

    v4 = v0[8];
    v6 = v0[6];
    v5 = v0[7];
    v7 = *(result + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController);

    sub_100008928();
  }

  else
  {
    v8 = v0[8];
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100003D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001C28(&qword_100016460, &qword_100009CE8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000086DC(a3, v27 - v11);
  v13 = sub_100008D58();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100002760(v12, &qword_100016460, &qword_100009CE8);
  }

  else
  {
    sub_100008D48();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100008D18();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100008C98() + 32;
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

      sub_100002760(a3, &qword_100016460, &qword_100009CE8);

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

  sub_100002760(a3, &qword_100016460, &qword_100009CE8);
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

id sub_1000041FC()
{
  v1 = sub_100008BD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC20ClockPosterExtension39ClockPosterExtensionRenderingController_renderer);
  if (v9)
  {
    v10 = v9;
    v11 = [objc_msgSend(v10 "environment")];
    swift_unknownObjectRelease();
    if (v11)
    {
      v12 = [v11 isDisplayStyleRedMode];

      swift_unknownObjectRelease();
      return v12;
    }

    sub_100008A68();
    sub_100008A58();
    v17 = sub_100008BC8();
    v18 = sub_100008D68();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Ambient enviroment is nil. Cannot set red mode.", v19, 2u);
    }

    (*(v2 + 8))(v8, v1);
  }

  else
  {
    sub_100008A68();
    sub_100008A58();
    v14 = sub_100008BC8();
    v15 = sub_100008D68();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Render is nil. Cannot set red mode.", v16, 2u);
    }

    (*(v2 + 8))(v6, v1);
  }

  return 0;
}

uint64_t sub_10000492C()
{
  v1 = sub_100008B08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController;
  if (!*(v0 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = sub_100008958();

  if (!*(v0 + v10))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_1000089A8();

  v12 = sub_100004B60(v9, v11);

  if (v12)
  {
    (*(v2 + 8))(v9, v1);
  }

  else
  {
    (*(v2 + 16))(v6, v9, v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10000622C(0, v11[2] + 1, 1, v11);
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_10000622C(v13 > 1, v14 + 1, 1, v11);
    }

    (*(v2 + 8))(v9, v1);
    v11[2] = v14 + 1;
    (*(v2 + 32))(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v6, v1);
  }

  return v11;
}

BOOL sub_100004B60(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_100008B08() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_100008490(&qword_100016448, &type metadata accessor for ClockFaceLook);
  }

  while ((sub_100008C58() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_100004C6C()
{
  v1 = v0;
  v2 = sub_100008B08();
  v65 = *(v2 - 8);
  v3 = *(v65 + 64);
  v4 = __chkstk_darwin(v2);
  v68 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v67 = &v53 - v7;
  __chkstk_darwin(v6);
  v9 = &v53 - v8;
  if (!*(v0 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {
    goto LABEL_25;
  }

  sub_1000089A8();

  v10 = [objc_allocWithZone(PREditorContentStylePickerConfiguration) init];
  v55 = v9;
  [v10 setSelectedStyle:sub_100005344()];
  swift_unknownObjectRelease();
  v70 = _swiftEmptyArrayStorage;
  v11 = swift_allocObject();
  *(v11 + 16) = &_swiftEmptyDictionarySingleton;
  v12 = sub_10000492C();
  v64 = *(v12 + 16);
  if (v64)
  {
    v54 = v10;
    v13 = 0;
    v63 = v12 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v61 = v0;
    v62 = v65 + 16;
    v56 = (v65 + 40);
    v57 = (v65 + 32);
    v58 = (v65 + 8);
    v59 = v12;
    v60 = v11;
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        result = sub_100008E98();
        __break(1u);
        return result;
      }

      v66 = *(v65 + 72);
      v14 = *(v65 + 16);
      v15 = v67;
      v14(v67, v63 + v66 * v13, v2);
      v16 = [sub_100005344() identifier];
      v17 = sub_100008C78();
      v19 = v18;

      v20 = v15;
      v21 = v2;
      v14(v68, v20, v2);
      v22 = *(v11 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v22;
      *(v11 + 16) = 0x8000000000000000;
      v25 = sub_1000069AC(v17, v19);
      v26 = *(v22 + 16);
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_23;
      }

      v29 = v24;
      if (*(v22 + 24) >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v2 = v21;
          if (v24)
          {
            goto LABEL_12;
          }
        }

        else
        {
          sub_100006E5C();
          v2 = v21;
          if (v29)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        sub_100006A24(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_1000069AC(v17, v19);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_27;
        }

        v25 = v30;
        v2 = v21;
        if (v29)
        {
LABEL_12:

          v32 = aBlock[0];
          (*v56)(*(aBlock[0] + 56) + v25 * v66, v68, v2);
          goto LABEL_16;
        }
      }

      v33 = v68;
      v32 = aBlock[0];
      *(aBlock[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v34 = (v32[6] + 16 * v25);
      *v34 = v17;
      v34[1] = v19;
      (*v57)(v32[7] + v25 * v66, v33, v2);
      v35 = v32[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_24;
      }

      v32[2] = v37;
LABEL_16:
      v11 = v60;
      v38 = *(v60 + 16);
      *(v60 + 16) = v32;

      swift_unknownObjectRetain();
      sub_100008CD8();
      v1 = v61;
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100008CF8();
      }

      ++v13;
      sub_100008D08();
      swift_unknownObjectRelease();
      (*v58)(v67, v2);
      v12 = v59;
      if (v64 == v13)
      {
        v10 = v54;
        break;
      }
    }
  }

  v40 = objc_allocWithZone(PREditorContentStylePalette);
  sub_100001C28(&qword_100016410, &qword_100009CB0);
  isa = sub_100008CE8().super.isa;
  v42 = [v40 initWithContentStyles:isa localizedName:0];

  [v10 setStylePalette:v42];
  v43 = [objc_opt_self() mainBundle];
  v52._countAndFlagsBits = 0x800000010000C240;
  v71._object = 0x800000010000C220;
  v71._countAndFlagsBits = 0xD000000000000012;
  v72.value._countAndFlagsBits = 0;
  v72.value._object = 0;
  v44.super.isa = v43;
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  sub_100008908(v71, v72, v44, v73, v52);

  v45 = sub_100008C68();

  [v10 setPrompt:v45];

  v46 = *(v1 + OBJC_IVAR____TtC20ClockPosterExtension37ClockPosterExtensionEditingController_editor);
  if (!v46)
  {
    goto LABEL_26;
  }

  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  *(v48 + 24) = v11;
  aBlock[4] = sub_100007154;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E9C;
  aBlock[3] = &unk_100010900;
  v49 = _Block_copy(aBlock);
  v50 = v46;

  [v50 presentContentStylePickerWithConfiguration:v10 changeHandler:v49];

  _Block_release(v49);
  (*(v65 + 8))(v55, v2);
}

id sub_100005344()
{
  v1 = v0;
  v2 = sub_100008B08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ClockFaceLook.color(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *(v6 + 6);

    sub_1000071D4(v6, v39);
    sub_100001C28(&qword_100016428, &qword_100009CC8);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100009C00;
    sub_1000071EC(v39, v40);
    *(v9 + 32) = sub_100008B18();
    v10 = objc_allocWithZone(PRPosterContentDiscreteColorsStyle);
    sub_100008448(0, &qword_100016430, UIColor_ptr);
    isa = sub_100008CE8().super.isa;

    v12 = [v10 initWithOpaqueColors:isa];

LABEL_3:
    sub_100007230(v39);
    return v12;
  }

  if (v7 != enum case for ClockFaceLook.gradient(_:))
  {
    if (v7 != enum case for ClockFaceLook.splitTone(_:))
    {
      if (v7 != enum case for ClockFaceLook.uncustomizable(_:))
      {
        (*(v3 + 8))(v6, v2);
      }

      return [objc_allocWithZone(PRPosterContentDiscreteColorsStyle) init];
    }

    (*(v3 + 96))(v6, v2);
    v20 = *(v6 + 11);

    sub_1000071D4(v6, v39);
    sub_1000071D4((v6 + 40), v38);
    sub_100001C28(&qword_100016428, &qword_100009CC8);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100009BF0;
    sub_1000071EC(v39, v40);
    *(v21 + 32) = sub_100008B18();
    sub_1000071EC(v38, v38[3]);
    *(v21 + 40) = sub_100008B18();
    v22 = objc_allocWithZone(PRPosterContentDiscreteColorsStyle);
    sub_100008448(0, &qword_100016430, UIColor_ptr);
    v23 = sub_100008CE8().super.isa;

    v12 = [v22 initWithOpaqueColors:v23];

    sub_100007230(v38);
    goto LABEL_3;
  }

  (*(v3 + 96))(v6, v2);
  v13 = *v6;
  v14 = *(v6 + 2);

  v15 = *(v13 + 16);
  if (v15)
  {
    if (v15 == 2)
    {
      v38[0] = _swiftEmptyArrayStorage;
      sub_100008DF8();
      sub_10000727C(v13 + 32, v39);
      sub_1000071EC(v39, v40);
      sub_100008B18();
      sub_100007230(v39);
      sub_100008DD8();
      v16 = *(v38[0] + 16);
      sub_100008E08();
      sub_100008E18();
      sub_100008DE8();
      sub_10000727C(v13 + 72, v39);
      sub_1000071EC(v39, v40);
      sub_100008B18();
      sub_100007230(v39);
      sub_100008DD8();
      v17 = *(v38[0] + 16);
      sub_100008E08();
      sub_100008E18();
      sub_100008DE8();

      v18 = objc_allocWithZone(PRPosterContentGradientStyle);
      sub_100008448(0, &qword_100016430, UIColor_ptr);
      v19 = sub_100008CE8().super.isa;

      v12 = [v18 initWithColors:v19];

      return v12;
    }

    v38[0] = _swiftEmptyArrayStorage;
    sub_100008DF8();
    v27 = v13 + 32;
    v28 = v15;
    do
    {
      sub_10000727C(v27, v39);
      sub_1000071EC(v39, v40);
      sub_100008B18();
      sub_100007230(v39);
      sub_100008DD8();
      v29 = *(v38[0] + 16);
      sub_100008E08();
      sub_100008E18();
      sub_100008DE8();
      v27 += 40;
      --v28;
    }

    while (v28);

    v30 = 1.0 / v15;
    v39[0] = _swiftEmptyArrayStorage;
    v25 = v30 * 0.5;
    v31 = v30 * 0.5;
    do
    {
      [objc_allocWithZone(NSNumber) initWithDouble:v31];
      sub_100008CD8();
      if (*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v32 = *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100008CF8();
      }

      result = sub_100008D08();
      v31 = v30 + v31;
      --v15;
    }

    while (v15);
    v26 = v39[0];
  }

  else
  {

    v39[0] = _swiftEmptyArrayStorage;
    v25 = INFINITY;
    v26 = _swiftEmptyArrayStorage;
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    sub_100008DB8();
    goto LABEL_24;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(v26 + 32);
LABEL_24:
    sub_100008CD8();
    if (*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v37 = *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100008CF8();
    }

    sub_100008D08();
    v34 = objc_allocWithZone(PRPosterContentGradientStyle);
    sub_100008448(0, &qword_100016430, UIColor_ptr);
    v35 = sub_100008CE8().super.isa;

    sub_100008448(0, &qword_100016438, NSNumber_ptr);
    v36 = sub_100008CE8().super.isa;
    v12 = [v34 initWithColors:v35 gradientType:2 locations:v36 startPoint:0.5 endPoint:{0.5, 1.0, v25}];

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100005AC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100008BD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100008B08();
  v42 = *(v11 - 8);
  v12 = v42[8];
  v13 = __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v40 = v7;
    v41 = v6;
    v20 = [a1 identifier];
    v21 = sub_100008C78();
    v23 = v22;

    swift_beginAccess();
    v24 = *(a4 + 16);
    if (*(v24 + 16))
    {
      v25 = sub_1000069AC(v21, v23);
      v27 = v26;

      if (v27)
      {
        v28 = v42;
        v29 = v42[2];
        v29(v17, *(v24 + 56) + v42[9] * v25, v11);
        result = swift_endAccess();
        if (*&v19[OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController])
        {
          v29(v15, v17, v11);

          sub_1000089B8();

          return (v28[1])(v17, v11);
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    else
    {
    }

    swift_endAccess();
    sub_100008A68();
    sub_100008A38();
    swift_unknownObjectRetain();
    v30 = sub_100008BC8();
    v31 = sub_100008D68();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v32 = 136446210;
      v34 = [a1 identifier];
      v35 = sub_100008C78();
      v37 = v36;

      v38 = sub_100006404(v35, v37, &v43);

      *(v32 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unknown style provided back from content style picker. Identifier='%{public}s'. Editor failed to take effect.", v32, 0xCu);
      sub_100007230(v33);
    }

    else
    {
    }

    return (*(v40 + 8))(v10, v41);
  }

  return result;
}

uint64_t sub_100005E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  v6 = swift_unknownObjectRetain();
  v5(v6, a3);

  return swift_unknownObjectRelease();
}

id sub_100005F24(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  *&a1[*a3] = 0;
  v5.receiver = a1;
  v5.super_class = a4();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_100005F98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100006004()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000603C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006134;

  return v7(a1);
}

uint64_t sub_100006134()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_10000622C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100001C28(&qword_100016440, &unk_100009CD0);
  v10 = *(sub_100008B08() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_100008B08() - 8);
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

uint64_t sub_100006404(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000064D0(v11, 0, 0, 1, a1, a2);
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
    sub_100007174(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007230(v11);
  return v7;
}

unint64_t sub_1000064D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000065DC(a5, a6);
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
    result = sub_100008DC8();
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

void *sub_1000065DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100006628(a1, a2);
  sub_100006758(&off_1000107C0);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_100006628(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100006844(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100008DC8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100008CC8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100006844(v10, 0);
        result = sub_100008D98();
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

uint64_t sub_100006758(uint64_t result)
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

  result = sub_1000068B8(result, v12, 1, v3);
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

void *sub_100006844(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001C28(&qword_100016420, &qword_100009CC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000068B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001C28(&qword_100016420, &qword_100009CC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_1000069AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100008EB8();
  sub_100008CA8();
  v6 = sub_100008EC8();

  return sub_100006DA4(a1, a2, v6);
}

uint64_t sub_100006A24(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_100008B08();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100001C28(&qword_100016418, &qword_100009CB8);
  v46 = a2;
  result = sub_100008E68();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_100008EB8();
      sub_100008CA8();
      result = sub_100008EC8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_100006DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100008E78())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_100006E5C()
{
  v1 = v0;
  v36 = sub_100008B08();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001C28(&qword_100016418, &qword_100009CB8);
  v4 = *v0;
  v5 = sub_100008E58();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1000070DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007114()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000715C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007174(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000071D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1000071EC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100007230(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000727C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000072E0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = sub_100001C28(&qword_100016210, qword_100009BA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v34 - v5;
  v36 = sub_100008A18();
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v36);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001C28(&qword_100016218, &qword_100009CE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v34 - v13;
  v38 = sub_100008B68();
  v15 = *(v38 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v38);
  v35 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v34 - v19;
  sub_1000032C0(a1);
  sub_100008A68();
  sub_1000089F8();
  v39 = &OBJC_PROTOCOL___PREditingDelegate;
  v21 = swift_dynamicCastObjCProtocolConditional();
  v22 = sub_100008A28();
  v23 = *(v22 - 8);
  v24 = &enum case for ClockLogger.Role.render(_:);
  if (v21)
  {
    v24 = &enum case for ClockLogger.Role.edit(_:);
  }

  (*(*(v22 - 8) + 104))(v14, *v24, v22);
  (*(v23 + 56))(v14, 0, 1, v22);
  v25 = v36;
  (*(v7 + 104))(v10, enum case for ClockLogger.Host.ambient(_:), v36);
  sub_100008B48();
  v26 = sub_100008AE8();
  (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
  sub_100008A08();

  sub_100002760(v6, &qword_100016210, qword_100009BA0);
  (*(v7 + 8))(v10, v25);
  sub_100002760(v14, &qword_100016218, &qword_100009CE0);
  v27 = v38;
  (*(v15 + 16))(v35, v20, v38);
  v28 = sub_1000089E8();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_1000089C8();
  (*(v15 + 8))(v20, v27);
  v32 = *(v37 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController);
  *(v37 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController) = v31;
}

void sub_100007700(uint64_t a1, char *a2)
{
  v4 = sub_100008B08();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008BD8();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  __chkstk_darwin(v7);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100008AE8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  v62 = sub_100008B68();
  v18 = *(v62 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v62);
  v59 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v51 - v22;
  sub_1000032C0(a1);
  sub_100008B48();
  v24 = OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController;
  v63 = a2;
  if (!*&a2[OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController])
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = *&a2[OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController];

  sub_100008998();

  sub_100008490(&qword_100016458, &type metadata accessor for ClockFaceKind);
  v26 = sub_100008C58();
  v27 = *(v11 + 8);
  v27(v15, v10);
  v27(v17, v10);
  v17 = v62;
  if (v26)
  {
LABEL_7:
    if (*&v63[v24])
    {
      v50 = *&v63[v24];

      sub_100008B58();
      sub_1000089B8();

      (*(v18 + 8))(v23, v17);
      return;
    }

    goto LABEL_10;
  }

  v56 = v24;
  sub_100008A68();
  v28 = v60;
  sub_100008A38();
  v29 = *(v18 + 16);
  v55 = v18;
  v30 = v59;
  v29(v59, v23, v17);
  v31 = v63;
  v17 = v63;
  v32 = sub_100008BC8();
  v54 = sub_100008D78();
  if (!os_log_type_enabled(v32, v54))
  {

    v49 = v55;
    v17 = v62;
    (*(v55 + 8))(v30, v62);
    (*(v57 + 8))(v28, v58);
    v24 = v56;
    v18 = v49;
    goto LABEL_7;
  }

  v53 = v32;
  v33 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  v64 = v52;
  v34 = v33;
  *v33 = 136446466;
  v24 = v56;
  if (*&v31[v56])
  {
    v35 = *&v31[v56];

    sub_100008998();

    v36 = sub_100008AD8();
    v38 = v37;
    v27(v15, v10);
    v39 = sub_100006404(v36, v38, &v64);

    v51 = v34;
    *(v34 + 1) = v39;
    *(v34 + 6) = 2082;
    v40 = v59;
    sub_100008B48();
    v41 = sub_100008AD8();
    v43 = v42;
    v27(v15, v10);
    v18 = v55;
    v44 = v40;
    v45 = v62;
    (*(v55 + 8))(v44, v62);
    v46 = sub_100006404(v41, v43, &v64);
    v17 = v45;

    v47 = v51;
    *(v51 + 14) = v46;
    v48 = v53;
    _os_log_impl(&_mh_execute_header, v53, v54, "Cannot change kind when switching configuration from %{public}s to %{public}s", v47, 0x16u);
    swift_arrayDestroy();

    (*(v57 + 8))(v60, v58);
    goto LABEL_7;
  }

LABEL_11:

  __break(1u);
}

id sub_100007CE0(uint64_t a1, void *a2)
{
  v3 = sub_100008BD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  if (sub_100008B38())
  {
    v11 = [a2 targetConfiguration];
    isa = sub_100008C38().super.isa;

    v28 = 0;
    v13 = [v11 storeUserInfo:isa error:&v28];

    v14 = v28;
    if (v13)
    {

      return v14;
    }

    else
    {
      v27 = v28;
      v19 = v28;
      sub_100008918();

      swift_willThrow();
      sub_100008A68();
      sub_100008A38();
      swift_errorRetain();
      v20 = sub_100008BC8();
      v21 = sub_100008D68();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v28 = v23;
        *v22 = 136446210;
        swift_getErrorValue();
        v24 = sub_100008EA8();
        v26 = sub_100006404(v24, v25, &v28);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "Error storing user info: %{public}s", v22, 0xCu);
        sub_100007230(v23);
      }

      else
      {
      }

      return (*(v4 + 8))(v8, v3);
    }
  }

  else
  {
    sub_100008A68();
    sub_100008A38();
    v16 = sub_100008BC8();
    v17 = sub_100008D68();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Dictionary must not be nil for configuration", v18, 2u);
    }

    return (*(v4 + 8))(v10, v3);
  }
}

void sub_1000080A0(void *a1)
{
  v2 = OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController;
  if (!*(v1 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_100008938();

  if (!*(v1 + v2))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = *(v1 + v2);

  sub_100008948();

  v5 = *(v1 + v2);
  *(v1 + v2) = 0;

  v6 = *(v1 + *a1);
  *(v1 + *a1) = 0;
}

void *sub_10000813C()
{
  v1 = sub_100008B08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = __chkstk_darwin(v1);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {

    v7 = sub_100008958();

    v8 = *(v7 + 16);
    if (v8)
    {
      v19 = _swiftEmptyArrayStorage;
      sub_100008DF8();
      v10 = *(v2 + 16);
      v9 = v2 + 16;
      v17[1] = v7;
      v18 = v10;
      v11 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
      v12 = *(v9 + 56);
      do
      {
        v18(v6, v11, v1);
        sub_100008AF8();
        v13 = objc_allocWithZone(PREditingLook);
        v14 = sub_100008C68();

        v15 = sub_100008C68();
        [v13 initWithIdentifier:v14 displayName:v15];

        (*(v9 - 8))(v6, v1);
        sub_100008DD8();
        v16 = v19[2];
        sub_100008E08();
        sub_100008E18();
        sub_100008DE8();
        v11 += v12;
        --v8;
      }

      while (v8);

      return v19;
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100008358(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {

    v3 = [a1 foregroundView];
    v4 = [v3 window];

    v5 = [v4 rootViewController];
    v6 = [a1 foregroundView];
    sub_1000089D8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100008448(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100008490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000084D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100008518(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000085E8;

  return sub_100003C10(v7, v8, a1, v4, v5, v6);
}

uint64_t sub_1000085E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000086DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001C28(&qword_100016460, &qword_100009CE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000874C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008784(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008900;

  return sub_10000603C(a1, v5);
}

uint64_t sub_10000883C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000085E8;

  return sub_10000603C(a1, v5);
}