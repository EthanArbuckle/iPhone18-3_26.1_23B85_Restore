uint64_t type metadata accessor for RadioShowCell()
{
  result = qword_DF1478;
  if (!qword_DF1478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_135F20()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedBagProvider];
  sub_13C80(0, &qword_DEE560);
  v3 = static ICStoreRequestContext.current.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v7[4] = sub_137904;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_151E0;
  v7[3] = &block_descriptor_42;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v2 getBagForRequestContext:v3 withCompletionHandler:v5];
  _Block_release(v5);
}

void sub_136054(void *a1, uint64_t a2, char *a3)
{
  if (!a1)
  {
LABEL_4:
    if (a2)
    {
      v5 = sub_AB3040();
    }

    else
    {
      v5 = 0;
    }

    v9 = v5;
    [a3 finishWithError:?];
    goto LABEL_10;
  }

  v9 = a1;
  if ([a3 isCancelled])
  {

    goto LABEL_4;
  }

  v6 = *&a3[OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_profileUpdate + 40];
  if (v6 < 2)
  {
    sub_136300(v9);
LABEL_10:

    return;
  }

  v7 = v9;
  v8 = a3;
  sub_137F98(v6);
  sub_137924(v6, v7, v8, v8, v7);

  sub_D3144(v6);
}

void sub_136178(uint64_t a1, id a2, void *a3)
{
  if (a1)
  {
    v4 = sub_AB3040();
  }

  else
  {
    if (([a2 isCancelled] & 1) == 0)
    {
      sub_136300(a3);
      return;
    }

    v4 = 0;
  }

  v6 = v4;
  [a2 finishWithError:?];
}

void sub_136300(void *a1)
{
  v2 = v1;
  v4 = sub_AB2A90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v77 - v9;
  v11 = sub_AB31C0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v77 - v16;
  if ([v2 isCancelled])
  {

    [v2 finishWithError:0];
    return;
  }

  v18 = [a1 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v18)
  {
    goto LABEL_13;
  }

  v85 = v12;
  v19 = v18;
  v20 = sub_AB8FF0();

  strcpy(v87, "updateProfile");
  HIWORD(v87[0]) = -4864;
  sub_ABAD10();
  if (!*(v20 + 16) || (v21 = sub_2EC004(v88), (v22 & 1) == 0))
  {
    sub_8085C(v88);
    goto LABEL_12;
  }

  sub_808B0(*(v20 + 56) + 32 * v21, &v89);
  sub_8085C(v88);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

LABEL_13:
    sub_137870();
    swift_allocError();
    *v25 = xmmword_AFF870;
    *(v25 + 16) = 1;
    v26 = sub_AB3040();

    [v2 finishWithError:v26];
LABEL_14:

    return;
  }

  v84 = v5;
  v23 = *(&v87[0] + 1);
  sub_AB3180();
  v24 = v85;
  if ((*(v85 + 48))(v10, 1, v11) == 1)
  {
    sub_12E1C(v10, &unk_DF2AE0);

    goto LABEL_12;
  }

  v81 = v23;
  (*(v24 + 32))(v17, v10, v11);
  sub_13C80(0, &qword_DF0600);
  v27 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (!v27)
  {
    sub_137870();
    swift_allocError();
    *v43 = 0;
    *(v43 + 8) = 0;
    *(v43 + 16) = 2;
    v26 = sub_AB3040();

    [v2 finishWithError:v26];
    (*(v24 + 8))(v17, v11);

    goto LABEL_14;
  }

  v28 = v27;
  v29 = sub_97E70(_swiftEmptyArrayStorage);
  *&v89 = 1701869940;
  *(&v89 + 1) = 0xE400000000000000;
  sub_ABAD10();
  v90 = &type metadata for String;
  *&v89 = 1919251317;
  *(&v89 + 1) = 0xE400000000000000;
  sub_9ACFC(&v89, v87);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = v29;
  sub_913C0(v87, v88, isUniquelyReferenced_nonNull_native);
  sub_8085C(v88);
  v31 = v86;
  *&v89 = 25705;
  *(&v89 + 1) = 0xE200000000000000;
  sub_ABAD10();
  v79 = v28;
  v32 = [v28 stringValue];
  v33 = sub_AB92A0();
  v90 = &type metadata for String;
  *&v89 = v33;
  *(&v89 + 1) = v34;
  sub_9ACFC(&v89, v87);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v86 = v31;
  sub_913C0(v87, v88, v35);
  sub_8085C(v88);

  v36 = v86;
  v82 = sub_97E70(_swiftEmptyArrayStorage);
  v37 = sub_97E70(_swiftEmptyArrayStorage);
  *&v89 = 0x72656E776FLL;
  *(&v89 + 1) = 0xE500000000000000;
  sub_ABAD10();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
  v90 = v78;
  *&v89 = v36;
  sub_9ACFC(&v89, v87);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v86 = v37;
  sub_913C0(v87, v88, v38);
  sub_8085C(v88);
  v39 = v86;
  v40 = &v2[OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_profileUpdate];
  v41 = *&v2[OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_profileUpdate + 8];
  v80 = &v2[OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_profileUpdate];
  if (v41)
  {
    v83 = *v40;
    *&v89 = 1701667182;
    *(&v89 + 1) = 0xE400000000000000;
    sub_ABAD10();
    v90 = &type metadata for String;
    *&v89 = v83;
    *(&v89 + 1) = v41;
    sub_9ACFC(&v89, v87);

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v39;
    sub_913C0(v87, v88, v42);
    sub_8085C(v88);
    v40 = v80;
  }

  v83 = v86;
  v44 = v40[3];
  if (v44)
  {
    v45 = v40[2];
    *&v89 = 0x656C646E6168;
    *(&v89 + 1) = 0xE600000000000000;
    sub_ABAD10();
    v90 = &type metadata for String;
    *&v89 = v45;
    *(&v89 + 1) = v44;
    sub_9ACFC(&v89, v87);

    v46 = v83;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v46;
    sub_913C0(v87, v88, v47);
    sub_8085C(v88);
    v40 = v80;
    v83 = v86;
    if (*(v80 + 32) == 1)
    {
      *&v89 = 0xD000000000000017;
      *(&v89 + 1) = 0x8000000000B52980;
      sub_ABAD10();
      v90 = &type metadata for Bool;
      LOBYTE(v89) = 1;
      sub_9ACFC(&v89, v87);
      v48 = v82;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v86 = v48;
      sub_913C0(v87, v88, v49);
      sub_8085C(v88);
      v40 = v80;
      v82 = v86;
    }
  }

  v50 = v78;
  v51 = *&v2[OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_photoUploadDictionary];
  v52 = v83;
  if (v51)
  {
    strcpy(&v89, "profileImage");
    BYTE13(v89) = 0;
    HIWORD(v89) = -5120;

    sub_ABAD10();
    v90 = v50;
    *&v89 = v51;
  }

  else
  {
    if (v40[5])
    {
      goto LABEL_26;
    }

    strcpy(&v89, "profileImage");
    BYTE13(v89) = 0;
    HIWORD(v89) = -5120;
    sub_ABAD10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF14D0);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_AF85F0;
    *(v76 + 32) = 0x54746E65746E6F63;
    v78 = v76 + 32;
    *(v76 + 40) = 0xEC0000006E656B6FLL;
    *(v76 + 48) = 0u;
    *(v76 + 64) = 0u;
    *(v76 + 80) = 0xD000000000000010;
    *(v76 + 88) = 0x8000000000B52960;
    *(v76 + 96) = 0u;
    *(v76 + 112) = 0u;
    v80 = sub_980A0(v76);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E27200);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BE0);
    *&v89 = v80;
  }

  sub_9ACFC(&v89, v87);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v86 = v52;
  sub_913C0(v87, v88, v53);
  sub_8085C(v88);
  v52 = v86;
LABEL_26:
  v54 = v82;
  if (*(v82 + 16))
  {
    strcpy(&v89, "options");
    *(&v89 + 1) = 0xE700000000000000;
    sub_ABAD10();
    v90 = v50;
    *&v89 = v54;
    sub_9ACFC(&v89, v87);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v52;
    sub_913C0(v87, v88, v55);
    sub_8085C(v88);
  }

  else
  {
  }

  v56 = objc_opt_self();
  isa = sub_AB8FD0().super.isa;

  v88[0] = 0;
  v58 = [v56 dataWithJSONObject:isa options:0 error:v88];
  v59 = v88[0];

  if (v58)
  {
    v60 = sub_AB3260();
    v82 = v61;
    v83 = v60;
  }

  else
  {
    sub_AB3050();

    swift_willThrow();

    v82 = 0xF000000000000000;
    v83 = 0;
  }

  (*(v85 + 16))(v15, v17, v11);
  sub_AB2A50();
  sub_AB2A20();
  v62 = sub_AB92A0();
  v64 = v63;
  v93._countAndFlagsBits = sub_AB92A0();
  v66 = v65;
  v92.value._countAndFlagsBits = v62;
  v92.value._object = v64;
  v93._object = v66;
  sub_AB2A80(v92, v93);

  sub_9007C(v83, v82);
  sub_AB2A70();
  sub_13C80(0, &unk_DF2B00);
  v67 = static ICUserIdentity.active.getter();
  v68 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v67];

  v69 = objc_allocWithZone(ICStoreURLRequest);
  v70 = v68;
  v71 = sub_AB2A30();
  v72 = [v69 initWithURLRequest:v71 requestContext:v70];

  [v72 setCancelOnHTTPErrors:0];
  sub_13C80(0, &qword_E07CC0);
  v73 = static ICURLSessionManager.musicSession.getter();
  v74 = swift_allocObject();
  *(v74 + 16) = v2;
  v75 = v2;
  ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v72, sub_1378FC, v74);

  sub_466A4(v83, v82);
  (*(v84 + 8))(v7, v4);
  (*(v85 + 8))(v17, v11);
}

void sub_1370F4(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = [a1 urlResponse];
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8 && [v8 statusCode] == &stru_158.flags + 1)
      {
        v9 = [a1 parsedBodyDictionary];
        if (v9)
        {
          v10 = v9;
          v11 = sub_AB8FF0();

          sub_ABAD10();
          if (*(v11 + 16) && (v12 = sub_2EC004(v17), (v13 & 1) != 0))
          {
            sub_808B0(*(v11 + 56) + 32 * v12, &v18);
            sub_8085C(v17);
          }

          else
          {
            sub_8085C(v17);
            v18 = 0u;
            v19 = 0u;
          }

          if (*(&v19 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
            if (swift_dynamicCast())
            {
              v15 = v17[0];
LABEL_22:
              sub_137870();
              swift_allocError();
              *v16 = v15;
              *(v16 + 8) = 0;
              *(v16 + 16) = 0;

              goto LABEL_12;
            }

LABEL_21:
            v15 = _swiftEmptyArrayStorage;
            goto LABEL_22;
          }
        }

        else
        {
          v18 = 0u;
          v19 = 0u;
        }

        sub_12E1C(&v18, &unk_DE8E40);
        goto LABEL_21;
      }
    }
  }

  if (!a2)
  {
    v14 = 0;
    goto LABEL_14;
  }

  swift_errorRetain();
LABEL_12:
  v14 = sub_AB3040();
LABEL_14:
  [a3 finishWithError:v14];
}

uint64_t sub_137328(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = sub_97E70(_swiftEmptyArrayStorage);
  if (a1)
  {
    v9 = [a1 parsedBodyDictionary];
    if (v9)
    {
      v10 = v9;
      v11 = sub_AB8FF0();

      *&v21[0] = 0x6E656B6F74;
      *(&v21[0] + 1) = 0xE500000000000000;
      sub_ABAD10();
      if (*(v11 + 16) && (v12 = sub_2EC004(v22), (v13 & 1) != 0))
      {
        sub_808B0(*(v11 + 56) + 32 * v12, v21);
        sub_8085C(v22);
        sub_9ACFC(v21, v23);
        strcpy(v20, "tokenType");
        WORD5(v20[0]) = 0;
        HIDWORD(v20[0]) = -385875968;
        sub_ABAD10();
        if (*(v11 + 16))
        {
          v14 = sub_2EC004(v22);
          if (v15)
          {
            sub_808B0(*(v11 + 56) + 32 * v14, v20);
            sub_8085C(v22);
            sub_9ACFC(v20, v21);
            strcpy(v20, "contentToken");
            BYTE13(v20[0]) = 0;
            HIWORD(v20[0]) = -5120;
            sub_ABAD10();
            sub_808B0(v23, v20);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            sub_913C0(v20, v22, isUniquelyReferenced_nonNull_native);
            sub_8085C(v22);
            *&v20[0] = 0xD000000000000010;
            *(&v20[0] + 1) = 0x8000000000B52960;
            sub_ABAD10();
            sub_808B0(v21, v20);
            v17 = swift_isUniquelyReferenced_nonNull_native();
            sub_913C0(v20, v22, v17);
            sub_8085C(v22);
            __swift_destroy_boxed_opaque_existential_0(v21);
            __swift_destroy_boxed_opaque_existential_0(v23);

            goto LABEL_11;
          }
        }

        sub_8085C(v22);
        __swift_destroy_boxed_opaque_existential_0(v23);
      }

      else
      {
        sub_8085C(v22);
      }
    }
  }

LABEL_11:
  if (*(v8 + 16) > 1uLL)
  {
    *(a3 + OBJC_IVAR____TtC16MusicApplication33MediaSocialProfileUpdateOperation_photoUploadDictionary) = v8;

    goto LABEL_15;
  }

  if (a2)
  {
LABEL_15:
    swift_errorRetain();
    goto LABEL_16;
  }

  sub_137870();
  a2 = swift_allocError();
  *v18 = xmmword_AF8620;
  *(v18 + 16) = 2;
LABEL_16:
  a4(a2);
}

id sub_137694()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaSocialProfileUpdateOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication33MediaSocialProfileUpdateOperationC0eF0V05PhotoF0OSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1377A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_137800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_137870()
{
  result = qword_DF14C8;
  if (!qword_DF14C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF14C8);
  }

  return result;
}

uint64_t sub_1378C4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_137924(UIImage *a1, void *a2, void *a3, void *a4, void *a5)
{
  v59 = a3;
  v62 = a1;
  v8 = sub_AB2A90();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v63 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v54 - v16;
  __chkstk_darwin(v15);
  v19 = &v54 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = a4;
  v55 = a5;
  v22 = sub_AB9260();
  v23 = [a2 urlForBagKey:v22];

  if (v23)
  {
    sub_AB3150();

    (*(v11 + 32))(v19, v17, v10);
    v24 = UIImageJPEGRepresentation(v62, 0.8);
    if (v24)
    {
      v25 = v24;
      v57 = sub_AB3260();
      v27 = v26;
    }

    else
    {
      v57 = 0;
      v27 = 0xF000000000000000;
    }

    v62 = v11;
    v30 = *(v11 + 16);
    v58 = v19;
    v30(v14, v19, v10);
    sub_AB2A50();
    sub_AB2A20();
    v66.value._countAndFlagsBits = 0x706A2F6567616D69;
    v68._countAndFlagsBits = 0x2D746E65746E6F43;
    v68._object = 0xEC00000065707954;
    v66.value._object = 0xEA00000000006765;
    sub_AB2A80(v66, v68);
    v31 = [objc_allocWithZone(NSUUID) init];
    v32 = [v31 UUIDString];
    if (v32)
    {
      v33 = v32;

      v34 = sub_AB9260();
      v35 = [v33 stringByAppendingPathExtension:v34];

      v36 = v20;
      v56 = v10;
      v37 = v27;
      if (v35)
      {
        v38 = sub_AB92A0();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      v55 = v40;
      v69._countAndFlagsBits = 0xD000000000000013;
      v69._object = 0x8000000000B52A20;
      v67.value._countAndFlagsBits = v38;
      v67.value._object = v40;
      v41 = v63;
      sub_AB2A80(v67, v69);
      v42 = v57;
      sub_9007C(v57, v37);
      sub_AB2A70();
      sub_13C80(0, &unk_DF2B00);
      v43 = static ICUserIdentity.active.getter();
      v44 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v43];

      v45 = objc_allocWithZone(ICStoreURLRequest);
      v46 = v44;
      v47 = sub_AB2A30();
      v48 = [v45 initWithURLRequest:v47 requestContext:v46];

      sub_13C80(0, &qword_E07CC0);
      v49 = static ICURLSessionManager.musicSession.getter();
      v50 = swift_allocObject();
      v51 = v59;
      v50[2] = v59;
      v50[3] = sub_137FE8;
      v50[4] = v36;
      aBlock[4] = sub_138030;
      aBlock[5] = v50;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_151E0;
      aBlock[3] = &block_descriptor_21_0;
      v52 = _Block_copy(aBlock);
      v53 = v51;

      [v49 enqueueUploadRequest:v48 withCompletionHandler:v52];

      sub_466A4(v42, v37);
      (*(v60 + 8))(v41, v61);
      (v62[1].super.isa)(v58, v56);
      _Block_release(v52);
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    sub_137870();
    swift_allocError();
    *v28 = 0xD00000000000001BLL;
    *(v28 + 8) = 0x8000000000B52A00;
    *(v28 + 16) = 1;
    v29 = sub_AB3040();
    [v21 finishWithError:v29];
  }
}

id sub_137F98(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_137FA8()
{

  return swift_deallocObject();
}

uint64_t sub_137FF0()
{

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication33MediaSocialProfileUpdateOperationC0F5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PromotionalParallaxContentView.VisualState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for PromotionalParallaxContentView.VisualState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1380F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t JSSocialOnboardingWelcomeView.textDrawingCache.setter(uint64_t a1)
{
  sub_13AA84(a1);
}

uint64_t JSSocialOnboardingWelcomeView.headline.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_headline];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  v8 = v6 == a1 && v7 == a2;
  if (!v8 && (sub_ABB3C0() & 1) == 0)
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t JSSocialOnboardingWelcomeView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_title];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  v8 = v6 == a1 && v7 == a2;
  if (!v8 && (sub_ABB3C0() & 1) == 0)
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t JSSocialOnboardingWelcomeView.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_subtitle];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  v8 = v6 == a1 && v7 == a2;
  if (!v8 && (sub_ABB3C0() & 1) == 0)
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 16];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

id JSSocialOnboardingWelcomeView.textAlignment.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textAlignment;
  result = swift_beginAccess();
  v5 = v1[v3];
  v1[v3] = a1;
  if (v5 != a1)
  {
    sub_13AE14(a1, *&v1[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents], *&v1[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 8], *&v1[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 16]);
    return [v1 setNeedsLayout];
  }

  return result;
}

void JSSocialOnboardingWelcomeView.artwork.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artwork;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_13938C();
}

id JSSocialOnboardingWelcomeView.artworkScaleMode.setter(unsigned __int8 a1)
{
  v3 = 0xEE00746946746365;
  v4 = 0x707341656C616373;
  v5 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkScaleMode;
  swift_beginAccess();
  v6 = v1[v5];
  v1[v5] = a1;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 0xD000000000000014;
      v8 = 0x8000000000B4DD30;
      v9 = a1;
      if (!a1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0xEF6C6C6946746365;
      v7 = 0x707341656C616373;
      v9 = a1;
      if (!a1)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = 0x707341656C616373;
    v8 = 0xEE00746946746365;
    v9 = a1;
    if (!a1)
    {
      goto LABEL_9;
    }
  }

  if (v9 == 1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x8000000000B4DD30;
  }

  else
  {
    v3 = 0xEF6C6C6946746365;
  }

LABEL_9:
  if (v7 == v4 && v8 == v3)
  {
  }

  else
  {
    v11 = sub_ABB3C0();

    if ((v11 & 1) == 0)
    {
      return [v1 setNeedsLayout];
    }
  }

  return result;
}

double JSSocialOnboardingWelcomeView.sizeThatFits(_:)(double a1, double a2)
{
  v5 = [v2 traitCollection];
  [v5 displayScale];
  [v2 bounds];
  v7 = v6;
  v9 = v8;
  [v2 music_inheritedLayoutInsets];
  UIEdgeInsetsInsetRect(v7, v9, a1, a2, v10, v11);
  v13 = v12;
  v15 = v14;
  v16 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView];
  v17 = [v16 traitCollection];
  [v17 displayScale];
  v19 = v18;

  if (v15 <= 5.99231045e307)
  {
    v20 = v15;
  }

  else
  {
    v20 = 5.99231045e307;
  }

  sub_2E94A4(v22, 0.0, 0.0, v13, v20, v19);
  sub_3F250(v22);

  sub_AB39F0();
  return a1;
}

void JSSocialOnboardingWelcomeView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_headline];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_title];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_subtitle];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textAlignment;
  v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textAlignment] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artwork] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkScaleMode] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textDrawingCache] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkCachingReference] = 0;
  v15 = &unk_DF1000;
  v16 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v18 = sub_80104(v17);

  *&v5[v16] = v18;
  v19 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView;
  type metadata accessor for TextStackView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v19] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_imageArtworkCatalog] = 0;
  swift_beginAccess();
  v21 = sub_13AFB0(v5[v14]);
  v22 = &v5[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents];
  *v22 = v21;
  v22[1] = v23;
  v22[2] = v24;
  v22[3] = v25;
  v26 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = *&v5[v19];
  *&v5[v19] = v26;
  v28 = v26;

  v29 = v22[3];
  if (!(v29 >> 62))
  {
    v30 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    v33 = *&v5[v19];
    v34 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    *(v33 + v34) = 2;
    v43.receiver = v5;
    v43.super_class = ObjectType;
    v35 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
    v36 = v15[165];
    v37 = *&v35[v36];
    *(v37 + 24) = 0xD00000000000001ELL;
    *(v37 + 32) = 0x8000000000B52A70;
    v38 = v35;

    v39 = *&v35[v36];
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v41 = (v39 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    v42 = *(v39 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    *v41 = sub_13B168;
    v41[1] = v40;

    sub_17654(v42);

    [v38 addSubview:*&v38[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView]];

    return;
  }

  v30 = sub_ABB060();
  if (!v30)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v30 >= 1)
  {

    for (i = 0; i != v30; ++i)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = sub_36003C(i, v29);
      }

      else
      {
        v32 = *(v29 + 8 * i + 32);
      }

      TextStackView.add(_:)(v32);
    }

    v15 = &unk_DF1000;
    goto LABEL_12;
  }

  __break(1u);
}

void sub_138BB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
  }
}

uint64_t sub_138C60(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_headline];
  swift_beginAccess();
  result = a1;
  if (*v5 != a1 || *(v5 + 1) != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v8 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents];

      v9 = String.trim()();

      swift_beginAccess();
      v8[7] = v9;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

void (*JSSocialOnboardingWelcomeView.headline.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_headline;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_138E00;
}

uint64_t sub_138E18(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_title];
  swift_beginAccess();
  result = a1;
  if (*v5 != a1 || *(v5 + 1) != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v8 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 8];

      v9 = String.trim()();

      swift_beginAccess();
      v8[7] = v9;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

void (*JSSocialOnboardingWelcomeView.title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_title;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_138FBC;
}

uint64_t sub_138FD4(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_subtitle];
  swift_beginAccess();
  result = a1;
  if (*v5 != a1 || *(v5 + 1) != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v8 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 16];

      v9 = String.trim()();

      swift_beginAccess();
      v8[7] = v9;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

void (*JSSocialOnboardingWelcomeView.subtitle.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_subtitle;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_139178;
}

void sub_139190(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v7 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  v9 = (v7 + v6);
  v11 = *v9;
  v10 = v9[1];
  *v9 = v5;
  v9[1] = v8;
  if (a2)
  {

    a3(v11, v10);
  }

  else
  {
    a3(v11, v10);
  }

  free(v4);
}

uint64_t JSSocialOnboardingWelcomeView.textAlignment.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*JSSocialOnboardingWelcomeView.textAlignment.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_139310;
}

void sub_139310(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = v1[3];
  v3 = v1[4];
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v5 != v2)
  {
    v6 = v1[3];
    sub_13AE14(v2, *&v6[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents], *&v6[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 8], *&v6[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 16]);
    [v6 setNeedsLayout];
  }

  free(v1);
}

id sub_13938C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artwork;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = ICStoreArtworkInfoCropStyleBoundedBox;
    v5 = v3;
    v6 = JSArtwork.artworkCatalog(defaultCropStyle:)(v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = *&v1[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_imageArtworkCatalog];
  *&v1[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_imageArtworkCatalog] = v6;
  v8 = v6;

  sub_74EA4(v6);
  return [v1 setNeedsLayout];
}

void *JSSocialOnboardingWelcomeView.artwork.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artwork;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id (*JSSocialOnboardingWelcomeView.artwork.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1394FC;
}

id sub_1394FC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_13938C();
  }

  return result;
}

uint64_t JSSocialOnboardingWelcomeView.artworkScaleMode.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkScaleMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*JSSocialOnboardingWelcomeView.artworkScaleMode.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkScaleMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_139608;
}

void sub_139608(id **a1, char a2)
{
  v2 = 0xEE00746946746365;
  v3 = 0x707341656C616373;
  v4 = *a1;
  v5 = *(*a1 + 40);
  v7 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = v6[v7];
  v6[v7] = v5;
  if (a2)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }

LABEL_10:
    v10 = 0x707341656C616373;
    v9 = 0xEE00746946746365;
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  if (v8 != 1)
  {
LABEL_4:
    v9 = 0xEF6C6C6946746365;
    v10 = 0x707341656C616373;
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_8:
  v10 = 0xD000000000000014;
  v9 = 0x8000000000B4DD30;
  if (!v5)
  {
LABEL_13:
    if (v10 != v3)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_11:
  if (v5 == 1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x8000000000B4DD30;
    goto LABEL_13;
  }

  v2 = 0xEF6C6C6946746365;
  if (v10 != 0x707341656C616373)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v9 == v2)
  {

    goto LABEL_20;
  }

LABEL_18:
  v11 = sub_ABB3C0();

  if ((v11 & 1) == 0)
  {
    [v4[3] setNeedsLayout];
  }

LABEL_20:

  free(v4);
}

id JSSocialOnboardingWelcomeView.isAccessibilityElement.setter(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "setIsAccessibilityElement:", a1 & 1);
}

void (*JSSocialOnboardingWelcomeView.isAccessibilityElement.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 48) = 1;
  *(v4 + 40) = ObjectType;
  return sub_139890;
}

void sub_139890(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = 2;
  if (a2)
  {
    v4 = 0;
  }

  v5 = 3;
  if (a2)
  {
    v5 = 1;
  }

  v6 = v2[5];
  v2[v4] = v2[4];
  v2[v5] = v6;
  objc_msgSendSuper2(&v2[v4], "setIsAccessibilityElement:", v3);

  free(v2);
}

uint64_t JSSocialOnboardingWelcomeView.accessibilityLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 24);
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v3 = 0;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v6 = sub_36003C(v3, v1);
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_11;
      }

LABEL_8:
      v8 = i;

      swift_beginAccess();
      v4 = *(v6 + 112);
      v5 = *(v6 + 120);

      v10._countAndFlagsBits = v4;
      v10._object = v5;
      sub_AB94A0(v10);

      ++v3;
      i = v8;
      if (v7 == v8)
      {
        return 0;
      }
    }

    if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_12;
    }

    v6 = *(v1 + 8 * v3 + 32);

    v7 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return 0;
}

void JSSocialOnboardingWelcomeView.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, "setAccessibilityLabel:", v5);
}

void (*JSSocialOnboardingWelcomeView.accessibilityLabel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  *(v3 + 80) = swift_getObjectType();
  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textComponents + 24);
  if (v5 >> 62)
  {
LABEL_18:
    v6 = sub_ABB060();
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  v14 = v4;
  if (v6)
  {
    v7 = 0;
    v4 = v5 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = sub_36003C(v7, v5);
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_18;
        }

        v10 = *(v5 + 8 * v7 + 32);

        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_15;
        }
      }

      v12 = v6;

      swift_beginAccess();
      v8 = *(v10 + 112);
      v9 = *(v10 + 120);

      v15._countAndFlagsBits = v8;
      v15._object = v9;
      sub_AB94A0(v15);

      ++v7;
      v6 = v12;
    }

    while (v11 != v12);
  }

  *(v14 + 24) = 0;
  *(v14 + 32) = 0xE000000000000000;
  return sub_139E04;
}

void sub_139E04(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    if (v3)
    {

      v4 = sub_AB9260();
    }

    else
    {
      v4 = 0;
    }

    *(v2 + 40) = *(v2 + 72);
    objc_msgSendSuper2((v2 + 40), "setAccessibilityLabel:", v4);
  }

  else
  {
    if (v3)
    {
      v5 = sub_AB9260();
    }

    else
    {
      v5 = 0;
    }

    *(v2 + 56) = *(v2 + 72);
    objc_msgSendSuper2((v2 + 56), "setAccessibilityLabel:", v5);
  }

  free(v2);
}

void (*JSSocialOnboardingWelcomeView.textDrawingCache.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_139F7C;
}

void sub_139F7C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *&v5[v7];
    *&v5[v7] = v6;
    swift_retain_n();
    v9 = v5;
    sub_2E6210(v8);
  }

  free(v3);
}

uint64_t JSSocialOnboardingWelcomeView.artworkCachingReference.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent) + 16) = a1;
}

void (*JSSocialOnboardingWelcomeView.artworkCachingReference.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkCachingReference;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_13A194;
}

void sub_13A194(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(v3[3] + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent) + 16) = *(v3[3] + v3[4]);
  }

  free(v3);
}

Swift::Void __swiftcall JSSocialOnboardingWelcomeView.layoutSubviews()()
{
  v1 = v0;
  [v0 music_inheritedLayoutInsets];
  v3 = v2;
  v5 = v4;
  [v0 bounds];
  v10 = UIEdgeInsetsInsetRect(v6, v7, v8, v9, v3, v5);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v0 bounds];
  v31 = v18;
  v32 = v17;
  v30 = v19;
  v21 = v20;
  v22 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView;
  v23 = *&v0[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView];
  v24 = [v23 traitCollection];
  [v24 displayScale];
  v26 = v25;

  if (v16 <= 5.99231045e307)
  {
    v27 = v16;
  }

  else
  {
    v27 = 5.99231045e307;
  }

  sub_2E94A4(v33, 0.0, 0.0, v14, v27, v26);
  sub_3F250(v33);

  v28 = v33[4];
  [v1 effectiveUserInterfaceLayoutDirection];
  v34.origin.x = v10;
  v34.origin.y = v12;
  v34.size.width = v14;
  v34.size.height = v16;
  CGRectGetMinX(v34);
  v35.origin.x = v10;
  v35.origin.y = v12;
  v35.size.width = v14;
  v35.size.height = v16;
  CGRectGetMaxY(v35);
  v36.origin.x = v10;
  v36.origin.y = v12;
  v36.size.width = v14;
  v36.size.height = v16;
  CGRectGetWidth(v36);
  v29 = *&v1[v22];
  [v1 bounds];
  sub_ABA490();
  [v29 setFrame:?];

  sub_13A3F8(v32, v31, v30, v21 - *&v28);
}

id sub_13A3F8(double a1, double a2, double a3, double a4)
{
  if (a4 <= 0.0)
  {
    v24 = *(*&v4[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent] + 112);

    return [v24 removeFromSuperview];
  }

  else
  {
    v7 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artwork;
    result = swift_beginAccess();
    v9 = *&v4[v7];
    if (v9)
    {
      v10 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
      result = swift_beginAccess();
      v11 = *&v9[v10];
      if (v11)
      {
        if (*(v11 + 16))
        {
          v12 = v4;
          v13 = v9;

          v14 = sub_2EBF88(0x506E496874646977, 0xED000073746E696FLL);
          if ((v15 & 1) == 0)
          {
            goto LABEL_26;
          }

          sub_808B0(*(v11 + 56) + 32 * v14, &v39);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_26;
          }

          if (!*(v11 + 16))
          {
            goto LABEL_26;
          }

          v16 = v40;
          v17 = sub_2EBF88(0x6E49746867696568, 0xEE0073746E696F50);
          if ((v18 & 1) == 0)
          {
            goto LABEL_26;
          }

          sub_808B0(*(v11 + 56) + 32 * v17, &v39);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_26;
          }

          width = v16;
          height = v40;
          v21 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkScaleMode;
          v22 = v12;
          swift_beginAccess();
          if (v12[v21])
          {
            if (v12[v21] != 1)
            {
              v28 = *&v12[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent];
              v29 = *(v28 + 144);
              *(v28 + 144) = 2;
              width = a3;
              height = a4;
              if (v29 != 2)
              {
                v30 = [*(v28 + 112) image];
                sub_788B8(v30);
                v22 = v12;

                width = a3;
                height = a4;
              }

              goto LABEL_25;
            }

            if (height <= a4)
            {
LABEL_25:
              v32 = *&v22[OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent];
              v33 = v32[10];
              v34 = v32[11];
              v32[10] = width;
              v32[11] = height;
              sub_75614(v33, v34);
              UIRectCenteredIntegralRect();
              [v22 bounds];
              sub_ABA490();
              sub_76B28(v35, v36, v37, v38);
              [v22 addSubview:*(v32 + 14)];
LABEL_26:
            }

            v23 = a4 / height;
          }

          else
          {
            if (height <= a4 && width <= a3)
            {
              goto LABEL_25;
            }

            sub_ABA4F0();
            v26 = v25;
            sub_ABA4F0();
            if (v27 >= v26)
            {
              v23 = a4 / height;
            }

            else
            {
              v23 = a3 / width;
            }
          }

          CGAffineTransformMakeScale(&v39, v23, v23);
          v42.width = width;
          v42.height = height;
          v31 = CGSizeApplyAffineTransform(v42, &v39);
          width = v31.width;
          height = v31.height;
          goto LABEL_25;
        }
      }
    }
  }

  return result;
}

void (*sub_13A998(uint64_t **a1))(void *a1)
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
  v2[4] = JSSocialOnboardingWelcomeView.textDrawingCache.modify(v2);
  return sub_A8F90;
}

uint64_t sub_13AA08(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent) + 16) = a1;
}

uint64_t sub_13AA84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a1;

  v7 = v4;
  sub_2E6210(v6);
}

double sub_13AB4C@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_89F60();
  v4 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v5 = qword_E718C8;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  *a2 = v5;
  *(a2 + 8) = v8;
  *(a2 + 16) = a1;
  *(a2 + 24) = xmmword_AF8610;
  *(a2 + 40) = 1;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
  result = 21.0;
  *(a2 + 64) = xmmword_AFFA30;
  return result;
}

double sub_13AC40@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_89F60();
  v4 = sub_ABA550();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v5 = qword_E718D8;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  *a2 = v5;
  *(a2 + 8) = v8;
  *(a2 + 16) = a1;
  *(a2 + 24) = 4;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
  result = 48.0;
  *(a2 + 64) = xmmword_AFFA40;
  return result;
}

double sub_13AD28@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v5 = qword_E718D8;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  *a2 = v5;
  *(a2 + 8) = v8;
  *(a2 + 16) = a1;
  *(a2 + 24) = 4;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
  result = 36.0;
  *(a2 + 64) = xmmword_AFFA50;
  return result;
}

uint64_t sub_13AE14(unsigned __int8 a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  sub_13AB4C(a1, v22);
  swift_beginAccess();
  v8 = a2[5];
  v25[2] = a2[4];
  v25[3] = v8;
  v25[4] = a2[6];
  v9 = a2[3];
  v25[0] = a2[2];
  v25[1] = v9;
  v10 = v22[3];
  a2[4] = v22[2];
  a2[5] = v10;
  a2[6] = v22[4];
  v11 = v22[1];
  a2[2] = v22[0];
  a2[3] = v11;
  sub_2F118(v22, v27);
  sub_2F174(v25);
  sub_2EB2A8();
  sub_2F174(v22);
  sub_13AC40(a1, v23);
  swift_beginAccess();
  v12 = a3[5];
  v26[2] = a3[4];
  v26[3] = v12;
  v26[4] = a3[6];
  v13 = a3[3];
  v26[0] = a3[2];
  v26[1] = v13;
  v14 = v23[3];
  a3[4] = v23[2];
  a3[5] = v14;
  a3[6] = v23[4];
  v15 = v23[1];
  a3[2] = v23[0];
  a3[3] = v15;
  sub_2F118(v23, v27);
  sub_2F174(v26);
  sub_2EB2A8();
  sub_2F174(v23);
  sub_13AD28(a1, v24);
  swift_beginAccess();
  v16 = a4[5];
  v27[2] = a4[4];
  v27[3] = v16;
  v27[4] = a4[6];
  v17 = a4[3];
  v27[0] = a4[2];
  v27[1] = v17;
  v18 = v24[3];
  a4[4] = v24[2];
  a4[5] = v18;
  a4[6] = v24[4];
  v19 = v24[1];
  a4[2] = v24[0];
  a4[3] = v19;
  sub_2F118(v24, v21);
  sub_2F174(v27);
  sub_2EB2A8();
  return sub_2F174(v24);
}

uint64_t sub_13AFB0(unsigned __int8 a1)
{
  sub_13AB4C(a1, v7);
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v2 = TextStackView.Component.init(identifier:labelProperties:)(0x656E696C64616568, 0xE800000000000000, v7);
  sub_2F118(v7, v9);

  sub_13AC40(a1, v8);
  swift_allocObject();
  v3 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v8);
  sub_2F118(v8, v9);

  sub_13AD28(a1, v9);
  swift_allocObject();
  v4 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF82E0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = v4;

  sub_2F174(v8);
  sub_2F174(v7);
  return v2;
}

uint64_t sub_13B130()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void _s16MusicApplication29JSSocialOnboardingWelcomeViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_headline);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_subtitle);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textAlignment) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artwork) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkScaleMode) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textDrawingCache) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkCachingReference) = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v7 = sub_80104(v6);

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_textStackView;
  type metadata accessor for TextStackView();
  *(v1 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSSocialOnboardingWelcomeView_imageArtworkCatalog) = 0;
  sub_ABAFD0();
  __break(1u);
}

id sub_13B3E0(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_AB35C0();
  __chkstk_darwin(v10 - 8);
  v11 = sub_AB9250();
  __chkstk_darwin(v11 - 8);
  *&v5[qword_DF1588] = 0;
  *&v5[qword_DF1590] = 0;
  *&v5[qword_DF1598] = 0;
  *&v5[qword_DF15A0] = 0;
  *&v5[qword_DF15A8] = 0;
  *&v5[qword_DF15C0] = 0;
  v12 = &v5[qword_DF15C8];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v5[qword_DF15D0];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *&v5[qword_DF15B0] = a1;
  v14 = &v5[qword_DF15B8];
  *v14 = a2;
  v14[8] = a3;
  v15 = type metadata accessor for AlbumsViewController();
  v28.receiver = v5;
  v28.super_class = v15;
  v27 = a2;
  v16 = objc_msgSendSuper2(&v28, "init");
  v17 = sub_AB9260();

  [v16 setPlayActivityFeatureName:v17];

  v18 = objc_opt_self();
  v19 = [v18 currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (!v20)
  {
    v21 = sub_AB9260();
    [v16 setRestorationIdentifier:v21];
  }

  v22 = [v18 currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if (!v23)
  {
    _s16MusicApplication16RestorationClassCMa_0();
    [v16 setRestorationClass:swift_getObjCClassFromMetadata()];
  }

  v24 = [v16 navigationItem];
  [v24 setLargeTitleDisplayMode:1];

  if (!a5)
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
  }

  v25 = sub_AB9260();

  [v16 setTitle:v25];

  return v16;
}

void sub_13B79C(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for AlbumsViewController();
  objc_msgSendSuper2(&v15, "encodeRestorableStateWithCoder:", a1);
  v3 = [v1 title];
  v4 = sub_AB9260();
  [a1 encodeObject:v3 forKey:v4];

  v14 = *&v1[qword_DF15B0];
  type metadata accessor for MPModelAlbumVariants(0);
  v5 = sub_ABB470();
  v6 = sub_AB9260();
  [a1 encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (v1[qword_DF15B8 + 8] <= 2u)
  {
    v7 = *&v1[qword_DF15B8];
    v8 = type metadata accessor for CodableModelIdentity();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC16MusicApplication20CodableModelIdentity_model] = v7;
    v13.receiver = v9;
    v13.super_class = v8;
    v10 = v7;
    v11 = objc_msgSendSuper2(&v13, "init");
    v12 = sub_AB9260();
    [a1 encodeObject:v11 forKey:v12];
  }
}

void sub_13B95C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_13B79C(v4);
}

uint64_t sub_13B9F8()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = type metadata accessor for AlbumsViewController();
  objc_msgSendSuper2(&v31, "viewDidLoad");
  v2 = [v0 navigationItem];
  v3 = [v2 rightBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_13C80(0, &unk_DF12E0);
    v5 = sub_AB9760();

    v2 = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v30 = v5;
  v6 = sub_13C690();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v6[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
  v9 = *&v6[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
  *v8 = sub_141720;
  v8[1] = v7;

  sub_17654(v9);

  v10 = *&v1[qword_DF1590];
  v11 = sub_13C670();
  v12 = sub_4F46B0();
  sub_13C80(0, &qword_DF1D50);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v11;

  isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, (&dword_0 + 1), 0, sub_14176C, v14).super.super.isa;

  UIBarButtonItem.primaryActionKind.setter(isa, 1);

  v16 = *&v10[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController____lazy_storage___filterBarButtonItem];

  sub_AB9730();
  if (*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v30 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  v17 = [v1 navigationItem];
  sub_13C80(0, &unk_DF12E0);
  v18 = sub_AB9740().super.isa;

  [v17 setRightBarButtonItems:v18 animated:0];

  v19 = qword_DF1588;
  v20 = *&v1[qword_DF1588];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = *(v20 + 64);
  *(v20 + 64) = sub_141774;
  *(v20 + 72) = v21;

  sub_17654(v22);

  v23 = *&v1[v19];
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *(v23 + 48);
  *(v23 + 48) = sub_141790;
  *(v23 + 56) = v24;

  sub_17654(v25);

  v26 = sub_13C760();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = *(v26 + 88);
  *(v26 + 88) = sub_1417A8;
  *(v26 + 96) = v27;

  sub_17654(v28);
}

void sub_13BE5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*&stru_568.segname[(swift_isaMask & *Strong) - 8])();
  }
}

double sub_13BEE8@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    v6 = xmmword_AF7710;
    *&result = PresentationSource.init(viewController:position:)(Strong, v4, a1).n128_u64[0];
  }

  else
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  return result;
}

void sub_13BF74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*&stru_568.segname[(swift_isaMask & *Strong) - 8])();
  }
}

void sub_13C000(void *a1)
{
  v1 = a1;
  sub_13B9F8();
}

void sub_13C048(char a1)
{
  v3 = type metadata accessor for MetricsEvent.Page(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AlbumsViewController();
  v15.receiver = v1;
  v15.super_class = v9;
  objc_msgSendSuper2(&v15, "viewDidAppear:", a1 & 1);
  if (v1[qword_DF15B8 + 8] > 1u)
  {
    if (v1[qword_DF15B8 + 8] != 2)
    {
      v12 = MetricsReportingController.shared.unsafeMutableAddressor();
      v13 = *&v1[qword_DF15B0];
      v10 = *v12;
      if (v13 == 2)
      {
        v14 = MetricsEvent.Page.libraryCompilationsList.unsafeMutableAddressor();
      }

      else
      {
        v14 = MetricsEvent.Page.libraryAlbumsList.unsafeMutableAddressor();
      }

      sub_141658(v14, v6, type metadata accessor for MetricsEvent.Page);
      (*(&stru_68.reloff + (swift_isaMask & *v10)))(v6, 0, 0, 0, 0, 0);
      goto LABEL_11;
    }

    v10 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v11 = MetricsEvent.Page.libraryGenreDetail.unsafeMutableAddressor();
  }

  else
  {
    if (!v1[qword_DF15B8 + 8])
    {
      return;
    }

    v10 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v11 = MetricsEvent.Page.libraryComposerDetail.unsafeMutableAddressor();
  }

  sub_141658(v11, v8, type metadata accessor for MetricsEvent.Page);
  (*(&stru_68.reloff + (swift_isaMask & *v10)))(v8, 0, 0, 0, 0, 0);
  v6 = v8;
LABEL_11:
  sub_1416C0(v6, type metadata accessor for MetricsEvent.Page);
}

void sub_13C274(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_13C048(a3);
}

void sub_13C2C8()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for AlbumsViewController();
  objc_msgSendSuper2(&v12, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;

  type metadata accessor for CGSize(0);
  v8 = &v1[qword_DF15C8];
  v11 = *&v1[qword_DF15C8];
  if ((sub_AB38D0() & 1) == 0)
  {
    return;
  }

  *v8 = v5;
  *(v8 + 1) = v7;
  [v1 loadViewIfNeeded];
  v9 = *&v1[qword_DFE2F8];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = [v9 collectionViewLayout];
  sub_13FA08(v10);
}

void sub_13C3E4(void *a1)
{
  v1 = a1;
  sub_13C2C8();
}

void sub_13C42C(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for AlbumsViewController();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  if (a1)
  {
    sub_13C80(0, &qword_E00AB0);
    v5 = v4;
    v6 = a1;
    v7 = sub_ABA790();

    if (v7)
    {
      goto LABEL_10;
    }
  }

  if (UITraitCollection.isMediaPicker.getter())
  {
    v8 = [v2 navigationController];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for MediaPickerNavigationController();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = [v10 view];
        if (!v11)
        {
          goto LABEL_18;
        }

        v12 = v11;
        sub_13F6D4();
        [v12 music_setLayoutInsets:?];

        v9 = v12;
      }
    }
  }

  if (a1)
  {
LABEL_10:
    v13 = [a1 horizontalSizeClass];
    LODWORD(a1) = 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v4 horizontalSizeClass];
  if (a1 && v13 == v14)
  {
    goto LABEL_16;
  }

  [v2 loadViewIfNeeded];
  v15 = *&v2[qword_DFE2F8];
  if (v15)
  {
    v16 = [v15 collectionViewLayout];
    sub_13FA08(v16);

LABEL_16:
    return;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_13C604(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_13C42C(a3);
}

_BYTE *sub_13C690()
{
  v1 = qword_DF1590;
  v2 = *(v0 + qword_DF1590);
  if (v2)
  {
    v3 = *(v0 + qword_DF1590);
  }

  else
  {
    v4 = v0;
    if (*(v0 + qword_DF15B8 + 8) > 1u)
    {
      if (*(v0 + qword_DF15B8 + 8) == 2)
      {
        v5 = 5;
      }

      else if (*(v0 + qword_DF15B0) == 2)
      {
        v5 = 3;
      }

      else
      {
        v5 = 0;
      }
    }

    else if (*(v0 + qword_DF15B8 + 8))
    {
      v5 = 4;
    }

    else
    {
      v5 = 1;
    }

    v6 = objc_allocWithZone(type metadata accessor for LibraryFilterOptionsController());
    v7 = sub_4F4944(v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_13C760()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = qword_DF1598;
  if (*&v0[qword_DF1598])
  {
    v4 = *&v0[qword_DF1598];
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v5 = sub_AB9320();
    v7 = v6;
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v8 = v0;
    v4 = sub_4309D4(v5, v7);

    *&v0[v3] = v4;
  }

  return v4;
}

void sub_13C92C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AFFB00;
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
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  v9 = MPModelRelationshipAlbumArtist;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF4EC0;
  *(v11 + 32) = sub_AB92A0();
  *(v11 + 40) = v12;
  v13 = v9;
  isa = sub_AB9740().super.isa;
  v15 = objc_opt_self();
  v16 = [v15 propertySetWithProperties:isa];

  *(inited + 48) = v16;
  v17 = MPModelRelationshipAlbumRepresentativeSong;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF85F0;
  *(v19 + 32) = sub_AB92A0();
  *(v19 + 40) = v20;
  *(v19 + 48) = sub_AB92A0();
  *(v19 + 56) = v21;
  v22 = v17;
  v23 = sub_AB9740().super.isa;
  v24 = [v15 propertySetWithProperties:v23];

  *(inited + 72) = v24;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MPPropertySet);
  v26 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v27 = sub_AB8FD0().super.isa;

  v28 = [v25 initWithProperties:v26 relationships:v27];

  qword_E70EE8 = v28;
}

uint64_t sub_13CCA8(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

void *sub_13CD10(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v3 = sub_3E2914(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v3[6] = sub_9D2B0;
    v3[7] = v4;

    sub_17654(v5);

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v3[27];
    v3[27] = sub_141000;
    v3[28] = v6;

    sub_17654(v7);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_13CE4C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v5 = Strong;
  v6 = sub_13C760();

  v7 = (*(v6 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v8 = v7[1];
  if (!v8)
  {

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = *v7;

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v11 = v10 != 0;
LABEL_8:
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12 && (v13 = v12, v14 = sub_13C690(), v13, sub_4F4414(v11, v31), v14, *(&v31[0] + 1) != 1))
  {
    v17 = v33;
    v15 = v34;
    v16 = v32;
    v22 = v31[3];
    v23 = v31[2];
    v20 = v31[1];
    v21 = v31[0];
  }

  else
  {
    if (v11)
    {
      if (qword_DE6BD0 != -1)
      {
        swift_once();
      }

      v29[3] = xmmword_E717A8;
      v29[4] = xmmword_E717B8;
      v29[1] = xmmword_E71788;
      v29[2] = xmmword_E71798;
      v29[0] = xmmword_E71778;
      v15 = qword_E717C8;
      v30 = qword_E717C8;
      v17 = *(&xmmword_E717B8 + 1);
      v16 = xmmword_E717B8;
      v26 = xmmword_E71798;
      v27 = xmmword_E717A8;
      v24 = xmmword_E71778;
      v25 = xmmword_E71788;
      v18 = v29;
      v19 = &v28;
    }

    else
    {
      v17 = *(a1 + 72);
      v15 = *(a1 + 80);
      v16 = *(a1 + 64);
      v26 = *(a1 + 32);
      v27 = *(a1 + 48);
      v24 = *a1;
      v25 = *(a1 + 16);
      v19 = v29;
      v18 = a1;
    }

    sub_576EC(v18, v19);
    v21 = v24;
    v20 = v25;
    v23 = v26;
    v22 = v27;
  }

  *a2 = v21;
  *(a2 + 16) = v20;
  *(a2 + 32) = v23;
  *(a2 + 48) = v22;
  *(a2 + 64) = v16;
  *(a2 + 72) = v17;
  *(a2 + 80) = v15;
}

id sub_13D034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v5);
  v7 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v2[qword_DFE2F0];
  if (v8)
  {
    v9 = objc_allocWithZone(MPModelLibraryRequest);
    v10 = v8;
    v11 = [v9 init];
    v12 = [objc_opt_self() kindWithVariants:3];
    v13 = v11;
    v48 = v10;
    result = [v10 request];
    if (!result)
    {
      goto LABEL_29;
    }

    v15 = result;
    v16 = [result label];
    [v13 setLabel:v16];

    [v13 setItemKind:v12];
    v17 = [objc_opt_self() kindWithVariants:*&v2[qword_DF15B0] songKind:v12];
    [v13 setSectionKind:v17];

    static SortOptions.ViewType.Albums.preferredItemSortDescriptors.getter();
    sub_13C80(0, &unk_DFDE50);
    isa = sub_AB9740().super.isa;

    [v13 setItemSortDescriptors:isa];

    sub_13C670();

    v19 = sub_AB9740().super.isa;

    [v13 setSectionSortDescriptors:v19];

    v20 = sub_13C690();
    v21 = v20;
    if (v20[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
    {
      v22 = v20[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType];

      v23 = qword_AFFCE8[v22];
    }

    else
    {
      v23 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    }

    [v13 setFilteringOptions:v23];
    sub_13F4D8(v13, 1);
    [v13 setFilterText:0];
    v26 = sub_AB3820();
    v27 = (*(*(v26 - 8) + 48))(a1, 1, v26);
    v28 = v48;
    if (v27 == 1)
    {
      v29 = [v48 request];
      if (!v29)
      {
        v42 = 0;
        goto LABEL_24;
      }

      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = [v30 filterText];
        if (v31)
        {
          v32 = v31;
          v33 = sub_AB92A0();
          v35 = v34;

          v36 = HIBYTE(v35) & 0xF;
          if ((v35 & 0x2000000000000000) == 0)
          {
            v36 = v33 & 0xFFFFFFFFFFFFLL;
          }

          if (!v36)
          {
            v42 = 0;
            goto LABEL_23;
          }

          *&v53[0] = _swiftEmptyArrayStorage;
          result = [v48 results];
          v47 = result;
          if (!result)
          {
LABEL_30:
            __break(1u);
            return result;
          }

          v37 = swift_allocObject();
          *(v37 + 16) = v53;
          v38 = swift_allocObject();
          *(v38 + 16) = sub_140FE8;
          *(v38 + 24) = v37;
          v51 = sub_57B9C;
          v52 = v38;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v50 = sub_48D644;
          *(&v50 + 1) = &block_descriptor_99_0;
          v39 = _Block_copy(&aBlock);

          v40 = v47;
          [v47 enumerateItemIdentifiersUsingBlock:v39];
          _Block_release(v39);
          LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

          if ((v39 & 1) == 0)
          {
            sub_13C80(0, &unk_DE8180);

            v41 = sub_AB9740().super.isa;

            [v13 setAllowedSectionIdentifiers:v41];

            v42 = sub_140FE8;
LABEL_23:
            v28 = v48;
            goto LABEL_24;
          }

          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }
    }

    v42 = 0;
LABEL_24:
    v43 = [v13 playbackIntentWithStartItemIdentifiers:{0, v47}];
    if (v43)
    {
      *v7 = v43;
      swift_storeEnumTagMultiPayload();
      v51 = 0;
      aBlock = 0u;
      v50 = 0u;
      v54 = 0;
      memset(v53, 0, sizeof(v53));
      v44 = v2;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v7, &aBlock, 3, 0, 0, 1, 0, 1, a2, v2, v53);

      v45 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v45 - 8) + 56))(a2, 0, 1, v45);
    }

    else
    {
      v46 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v46 - 8) + 56))(a2, 1, 1, v46);
    }

    return sub_17654(v42);
  }

  v24 = type metadata accessor for PlaybackIntentDescriptor(0);
  v25 = *(*(v24 - 8) + 56);

  return v25(a2, 1, 1, v24);
}

void *sub_13D770()
{
  v1 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v2 = v1;
  v3 = *(v0 + qword_DF15B0);
  v4 = *(v0 + qword_DF15A0);
  if (v4)
  {
    v5 = v1;
    v6 = v4;
  }

  else
  {
    v7 = objc_opt_self();
    v8 = v2;
    v6 = [v7 kindWithVariants:3];
  }

  v9 = objc_opt_self();
  v10 = v4;
  v11 = [v9 kindWithVariants:v3 songKind:v6];

  [v2 setItemKind:v11];
  v12 = sub_AB9260();
  [v2 setLabel:v12];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF4EC0;
  *(v13 + 32) = sub_AB92A0();
  *(v13 + 40) = v14;
  isa = sub_AB9740().super.isa;
  v16 = [objc_opt_self() propertySetWithProperties:isa];

  [v2 setSectionProperties:v16];
  if (qword_DE6890 != -1)
  {
    swift_once();
  }

  [v2 setItemProperties:qword_E70EE8];
  sub_13C670();
  sub_13C80(0, &unk_DFDE50);

  v17 = sub_AB9740().super.isa;

  [v2 setItemSortDescriptors:v17];

  v18 = sub_13C690();
  v19 = v18;
  if (v18[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
  {
    v20 = v18[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType];

    v21 = qword_AFFCE8[v20];
  }

  else
  {
    v21 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
  }

  [v2 setFilteringOptions:v21];
  sub_13F4D8(v2, 1);

  return v2;
}

void sub_13DA54()
{
  v1 = (*&stru_568.sectname[swift_isaMask & *v0])();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_140F78;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_151E0;
  v4[3] = &block_descriptor_43;
  v3 = _Block_copy(v4);

  [v1 performWithResponseHandler:v3];
  _Block_release(v3);
}

uint64_t sub_13DB70(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_465C4, v5);
}

uint64_t sub_13DC14(void *a1)
{
  sub_3B316C(a1);
  type metadata accessor for PlayIntentControlsReusableView();
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  type metadata accessor for CollectionViewSection.SectionHeaderView(0);
  sub_AB92A0();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();
}

uint64_t sub_13DD04()
{
  v1 = v0;
  sub_13CC88();
  v2 = qword_DFE2F0;
  v3 = *(v0 + qword_DFE2F0);
  if (v3)
  {
    LOBYTE(v3) = [v3 isEmpty];
  }

  sub_3E2E84(v3);

  v4 = sub_13C760();
  v5 = *(v1 + v2);
  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    v13 = *(v4 + 64);
    *(v4 + 64) = 1;
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_430320();
    goto LABEL_11;
  }

  v6 = (*(*(v1 + qword_DF1598) + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 != 0;
    v11 = *(v4 + 64);
    *(v4 + 64) = v10;
    if (v11 == v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = *(v4 + 64);
  *(v4 + 64) = 0;
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_11:
}

double sub_13DE0C()
{
  v1 = [v0 traitCollection];
  v2 = &v0[qword_DF15D0];
  if (v0[qword_DF15D0 + 16])
  {
    sub_13F83C();
    v4 = v3;
    v5 = [v0 traitCollection];
    _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
    v7 = v6;

    sub_2F48A4(v7, v5, 0, 0);

    if (qword_DE6948 != -1)
    {
      swift_once();
    }

    [v5 displayScale];
    sub_AB3A00();
    v9 = v8;

    *v2 = v4;
    *(v2 + 1) = v9;
    v2[16] = 0;
  }

  else
  {
    v4 = *v2;
  }

  return v4;
}

void sub_13DF68(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v5 = [v1 traitCollection];
  v6 = UITraitCollection.mediaLibrary.getter();

  [v4 setMediaLibrary:v6];
  v7 = v4;
  v8 = sub_AB9260();
  [v7 setLabel:v8];

  sub_13C80(0, &qword_DE8E90);
  v9 = static MPModelAlbum.defaultMusicKind.getter();
  [v7 setSectionKind:v9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF82B0;
  *(v10 + 32) = a1;
  sub_13C80(0, &qword_DEDE20);
  v11 = a1;
  isa = sub_AB9740().super.isa;

  [v7 setScopedContainers:isa];

  sub_13F4D8(v7, 0);
  type metadata accessor for JSContainerDetailComponentController();
  v13 = v11;
  v14 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v13, 0, 1, UIScreen.Dimensions.size.getter, 0);
  if (!v14)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v20 = MPModelPropertyPlaylistType;
      v21 = v13;
      if ([v15 hasLoadedValueForKey:v20] && objc_msgSend(v15, "type") == &dword_8 + 1)
      {
        v15 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
        v16 = *&v15[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

        goto LABEL_3;
      }

      v15 = 0;
    }

    v16 = 0;
    v17 = 0;
    v19 = 0xF000000000000000;
    goto LABEL_10;
  }

  v15 = v14;
  v16 = *&v14[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
LABEL_3:
  v17 = JSViewModel.playActivityRecommendationData.getter();
  v19 = v18;
LABEL_10:
  sub_466A4(0, 0xF000000000000000);
  v29[0] = v7;
  v29[1] = v16;
  v29[2] = v13;
  v29[3] = 0;
  v29[5] = 0;
  v29[6] = 0;
  v29[4] = v15;
  v30 = 1;
  v31 = v17;
  v32 = v19;
  v25[0] = v7;
  v25[1] = v16;
  v25[2] = v13;
  v25[3] = 0;
  v25[5] = 0;
  v25[6] = 0;
  v25[4] = v15;
  v26 = 1;
  v27 = v17;
  v28 = v19;
  sub_70EB0(v29, &v24);
  sub_70F0C(v25);
  v22 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
  v23 = sub_2D72DC(v29);
  [v2 showViewController:v23 sender:v2];
}

void sub_13E2E0(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    sub_13F6D4();
    v32 = v15;
    v34 = v14;
    v17 = UIEdgeInsetsInsetRect(v7, v9, v11, v13, v16, v14);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = sub_45B2C4(v3, v7, v9, v11, v13);
    v37.origin.x = v7;
    v37.origin.y = v9;
    v37.size.width = v11;
    v37.size.height = v13;
    Width = CGRectGetWidth(v37);
    sub_471A4();
    sub_AB38F0();
    [v3 displayScale];
    v26 = v25;
    v38.origin.x = v17;
    v38.origin.y = v19;
    v38.size.width = v21;
    v38.size.height = v23;
    CGRectGetWidth(v38);
    if (__OFSUB__(v24, 1))
    {
      __break(1u);
    }

    else
    {
      sub_AB3A00();
      v26 = v27;
      _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
      v29 = v28;

      sub_2F48A4(v29, v3, 0, 0);

      if (qword_DE6948 == -1)
      {
LABEL_4:
        [v3 displayScale];
        sub_AB3A00();
        v31 = v30;

        [a1 setItemSize:{v26, v31}];
        [a1 setSectionInset:{10.0, v35, 0.0, v33}];
        [a1 setMinimumLineSpacing:12.0];
        [a1 setSectionHeadersPinToVisibleBounds:0];

        return;
      }
    }

    swift_once();
    goto LABEL_4;
  }

  __break(1u);
}

double sub_13E5C0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_1412CC(v8, a5);
  v12 = v11;

  return v12;
}

double sub_13E640(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1414E8(v6);
  v10 = v9;

  return v10;
}

char *sub_13E6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_AB35C0();
  __chkstk_darwin(v10 - 8);
  v11 = sub_AB9250();
  __chkstk_darwin(v11 - 8);
  v12 = sub_AB9230();
  __chkstk_darwin(v12 - 8);
  if (sub_AB92A0() == a2 && v13 == a3)
  {

    goto LABEL_22;
  }

  v15 = sub_ABB3C0();

  if (v15)
  {
LABEL_22:
    type metadata accessor for CollectionViewSection.SectionHeaderView(0);
    static UICollectionReusableView.reuseIdentifier.getter();
    v17 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

    v41 = *&v4[qword_DFE2F0];
    if (!v41)
    {
      return v17;
    }

    result = [v41 results];
    if (result)
    {
      v42 = result;
      v43 = [result sectionAtIndex:IndexPath.safeSection.getter()];

      if (v43 && (swift_dynamicCast() & 1) != 0)
      {
        v44 = HIBYTE(v46) & 0xF;
        if ((v46 & 0x2000000000000000) == 0)
        {
          v44 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (v44)
        {
          sub_13F320(v17, v45, v46);
        }
      }

      return v17;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v16 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  if (*v16 == a2 && v16[1] == a3 || (sub_ABB3C0() & 1) != 0)
  {
    type metadata accessor for PlayIntentControlsReusableView();
    static UICollectionReusableView.reuseIdentifier.getter();
    v17 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

    v18 = *&v4[direct field offset for BrowseCollectionViewController.textDrawingCache];
    *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textDrawingCache] = v18;
    swift_retain_n();

    v19 = *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textStackView];
    v20 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v21 = *(v19 + v20);
    *(v19 + v20) = v18;
    swift_retain_n();
    sub_2E6210(v21);

    v22 = *&v5[qword_DFE2F0];
    if (!v22)
    {
LABEL_12:
      v28 = v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden];
      v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden] = 1;
      if ((v28 & 1) == 0)
      {
        [*&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_bottomHairlineView] setHidden:1];
      }

      v29 = v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden];
      v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden] = 1;
      if ((v29 & 1) == 0)
      {
        [*&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_topHairlineView] setHidden:1];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA940);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_AF4EC0;
      *(v30 + 32) = 0;
      v31 = [v5 traitCollection];
      v32 = [v31 horizontalSizeClass];

      if (v32 == &dword_0 + 2)
      {
        v30 = sub_6B7E4(&dword_0 + 1, 2, 1, v30);
        *(v30 + 16) = 2;
        *(v30 + 33) = 1;
      }

      v33 = *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents];
      *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents] = v30;
      if ((sub_12D0A4(v30, v33) & 1) == 0)
      {
        sub_413EB8();
        [v17 setNeedsLayout];
      }

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = sub_140DC0;
      *(v35 + 24) = v34;
      v36 = &v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
      v37 = *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
      *v36 = sub_140E00;
      v36[1] = v35;

      sub_17654(v37);
      sub_413EB8();
      [v17 setNeedsLayout];

      v38 = swift_allocObject();
      *(v38 + 16) = sub_140DC0;
      *(v38 + 24) = v34;
      v39 = &v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
      v40 = *&v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
      *v39 = sub_140E2C;
      v39[1] = v38;

      sub_17654(v40);
      sub_413EB8();
      [v17 setNeedsLayout];

      return v17;
    }

    result = [v22 results];
    if (result)
    {
      v24 = result;
      [result totalItemCount];

      sub_AB9220();
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      sub_AB9210(v48);
      sub_AB91F0();
      v49._countAndFlagsBits = 0x73286D75626C4120;
      v49._object = 0xE900000000000029;
      sub_AB9210(v49);
      sub_AB9240();
      sub_AB3550();
      v25 = sub_AB9320();
      v26 = &v17[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_title];
      *v26 = v25;
      v26[1] = v27;

      sub_413638();
      goto LABEL_12;
    }

    goto LABEL_36;
  }

  return sub_3DE1D8(a1, a4);
}

void sub_13EDEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for PlaybackIntentDescriptor(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_AB3820();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    sub_13D034(v4, v7);
    sub_12E1C(v4, &unk_DE8E20);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_12E1C(v7, &unk_DEA510);
    }

    else
    {
      v15 = sub_140E58(v7, v11);
      v16 = PlaybackIntentDescriptor.intent.getter(v15);
      [v16 setShuffleMode:a1];

      v18 = PlaybackIntentDescriptor.intent.getter(v17);
      [v18 setRepeatMode:0];

      sub_37D3DC(0);
      sub_1416C0(v11, type metadata accessor for PlaybackIntentDescriptor);
    }
  }
}

char *sub_13F084(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20 = sub_13E6B0(v16, v13, v15, v12);

  (*(v10 + 8))(v12, v9);

  return v20;
}

void sub_13F1E4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_3B41F4(v11, v10);
  isa = sub_AB3770().super.isa;
  [v11 deselectItemAtIndexPath:isa animated:1];
  (*(v8 + 8))(v10, v7);
}

void sub_13F320(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin(v8);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor:v11];

  v12 = [v4 traitCollection];
  sub_E2C18(a2, a3, v12, v10);

  v13 = OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
  swift_beginAccess();
  sub_140EBC(v10, a1 + v13);
  swift_endAccess();
  v14 = sub_E34F8();
  swift_getObjectType();
  v17[3] = v8;
  v17[4] = sub_140F20();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  sub_141658(a1 + v13, boxed_opaque_existential_0, type metadata accessor for CollectionViewSection.ContentConfiguration);
  sub_AB4C70();
  sub_1416C0(v10, type metadata accessor for CollectionViewSection.ContentConfiguration);
}

void sub_13F4D8(void *a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    if (*(*(sub_13C760() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
    {

      v5 = sub_AB9260();
    }

    else
    {
      v5 = 0;
    }

    [a1 setFilterText:v5];
  }

  v6 = [v2 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(a1);

  if (v3[qword_DF15B8 + 8] <= 2u)
  {
    v7 = *&v3[qword_DF15B8];
    v8 = [a1 scopedContainers];
    if (v8)
    {
      v9 = v8;
      sub_13C80(0, &qword_DEDE20);
      v10 = sub_AB9760();
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF82B0;
    *(inited + 32) = v7;
    v14 = v10;
    v12 = v7;
    sub_19638(inited);
    sub_13C80(0, &qword_DEDE20);
    isa = sub_AB9740().super.isa;

    [a1 setScopedContainers:{isa, v14}];
  }
}

void sub_13F6D4()
{
  v1 = v0;
  if ([v0 isViewLoaded])
  {
    v2 = [v0 view];
    if (!v2)
    {
      __break(1u);
      goto LABEL_11;
    }

    v3 = v2;
    [v2 music_inheritedLayoutInsets];

    v4 = qword_DFE2F8;
    if (*&v1[qword_DFE2F8])
    {
      v5 = [v1 traitCollection];
      v6 = UITraitCollection.isMediaPicker.getter();

      if (v6)
      {
        [v1 loadViewIfNeeded];
        v7 = *&v1[v4];
        if (v7)
        {
          v8 = [v7 accessoryViewAtEdge:1];
          if (v8)
          {
            v9 = v8;
            [v8 bounds];
          }

          return;
        }

LABEL_11:
        __break(1u);
      }
    }
  }
}

void sub_13F83C()
{
  v1 = v0;
  [v0 loadViewIfNeeded];
  v2 = *&v0[qword_DFE2F8];
  if (v2)
  {
    v3 = v2;
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v0 traitCollection];
    v13 = sub_45B2C4(v12, v5, v7, v9, v11);

    sub_13F6D4();
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    Width = CGRectGetWidth(v16);
    sub_471A4();
    sub_AB38F0();
    v14 = [v1 traitCollection];
    [v14 displayScale];

    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v9;
    v17.size.height = v11;
    CGRectGetWidth(v17);
    if (!__OFSUB__(v13, 1))
    {
      sub_AB3A00();

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_13FA08(void *a1)
{
  v2 = v1;
  v68 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin(v68);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_AB3820();
  v5 = *(v83 - 8);
  v6 = __chkstk_darwin(v83);
  v81 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v73 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v10 = __chkstk_darwin(v9 - 8);
  v86 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v66 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1D10);
  __chkstk_darwin(v14 - 8);
  v16 = &v66 - v15;
  v17 = &v1[qword_DF15D0];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = *&v1[qword_DF15C0];
  *&v1[qword_DF15C0] = 0;

  [swift_getObjCClassFromObject() invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &qword_DF1D18);
  swift_dynamicCastMetatypeUnconditional();
  v66 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [a1 invalidateLayoutWithContext:?];
  [v1 loadViewIfNeeded];
  v19 = *&v1[qword_DFE2F8];
  if (!v19)
  {
    goto LABEL_33;
  }

  v20 = v2;
  v21 = sub_AB92A0();
  v23 = v22;
  v24 = v19;
  v25 = UICollectionView.visibleSupplementaryElements(of:)(v21, v23);
  v72 = v26;
  v74 = v27;

  v28 = 0;
  v29 = *(v25 + 16);
  v77 = qword_DFE2F0;
  v70 = v5 + 16;
  v79 = (v5 + 48);
  v80 = (v5 + 56);
  v85 = (v5 + 32);
  v71 = v5;
  v84 = (v5 + 8);
  v30 = v29;
  v31 = v81;
  v82 = v20;
  v32 = v25;
  v75 = v25;
  v76 = v16;
  v78 = v29;
  while (v28 == v30)
  {
    v33 = v32;
    v34 = 1;
    v35 = v30;
    v36 = v83;
LABEL_9:
    v38 = v35;
    v39 = 1;
    (*v80)(v13, v34, 1, v36);
    v40 = v13;
    v41 = v86;
    sub_1766C(v13, v86);
    v42 = v36;
    if ((*v79)(v41, 1, v36) != 1)
    {
      v43 = v73;
      (*v85)(v73, v86, v36);
      v72(v43);
      v31 = v81;
      (*v84)(v43, v36);
      v39 = 0;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D20);
    (*(*(v44 - 8) + 56))(v16, v39, 1, v44);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D20);
    v32 = v33;
    if ((*(*(v45 - 8) + 48))(v16, 1, v45) == 1)
    {

      return;
    }

    v46 = *&v16[*(v45 + 48)];
    (*v85)(v31, v16, v42);
    v47 = *&v82[v77];
    v28 = v38;
    if (v47)
    {
      v48 = v46;
      v49 = v42;
      v50 = v78;
      v51 = [v47 results];
      if (!v51)
      {
        goto LABEL_32;
      }

      v52 = v51;
      v53 = v31;
      v54 = [v51 sectionAtIndex:IndexPath.safeSection.getter()];

      if (!v54)
      {
        (*v84)(v53, v49);

        v31 = v53;
        goto LABEL_24;
      }

      v91 = v54;
      if (swift_dynamicCast())
      {
        v56 = v87;
        v55 = v88;
        v57 = HIBYTE(v88) & 0xF;
        if ((v88 & 0x2000000000000000) == 0)
        {
          v57 = v87 & 0xFFFFFFFFFFFFLL;
        }

        v31 = v81;
        v30 = v50;
        if (v57)
        {
          if (v48)
          {
            type metadata accessor for CollectionViewSection.SectionHeaderView(0);
            v58 = swift_dynamicCastClass();
            if (v58)
            {
              v59 = v58;
              v60 = [objc_opt_self() clearColor];
              [v59 setBackgroundColor:v60];

              v61 = [v82 traitCollection];
              v62 = v67;
              sub_E2C18(v56, v55, v61, v67);

              v63 = OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
              swift_beginAccess();
              sub_140EBC(v62, v59 + v63);
              swift_endAccess();
              v64 = sub_E34F8();
              ObjectType = swift_getObjectType();
              v89 = v68;
              v90 = sub_140F20();
              v65 = __swift_allocate_boxed_opaque_existential_0(&v87);
              sub_141658(v59 + v63, v65, type metadata accessor for CollectionViewSection.ContentConfiguration);
              sub_AB4C70();
              sub_1416C0(v62, type metadata accessor for CollectionViewSection.ContentConfiguration);
              (*v84)(v81, v83);

              v31 = v81;
              goto LABEL_28;
            }
          }

          (*v84)(v31, v83);
        }

        else
        {
          (*v84)(v81, v49);
        }

LABEL_28:
        v13 = v40;
        v32 = v75;
        v16 = v76;
      }

      else
      {
        v31 = v81;
        (*v84)(v81, v49);

LABEL_24:
        v13 = v40;
        v32 = v75;
        v16 = v76;
        v30 = v50;
      }
    }

    else
    {
      (*v84)(v31, v42);

      v30 = v78;
      v13 = v40;
    }
  }

  if ((v28 & 0x8000000000000000) == 0)
  {
    if (v28 >= *(v32 + 16))
    {
      goto LABEL_31;
    }

    v33 = v32;
    v37 = v32 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v28;
    v36 = v83;
    (*(v71 + 16))(v13, v37, v83);
    v34 = 0;
    v35 = v28 + 1;
    goto LABEL_9;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_140304()
{

  v1 = *(v0 + qword_DF15C0);
}

id sub_1403AC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1403EC(uint64_t a1)
{

  v2 = *(a1 + qword_DF15C0);
}

uint64_t type metadata accessor for AlbumsViewController()
{
  result = qword_DF1600;
  if (!qword_DF1600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication20AlbumsViewControllerC9ScopeKindO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_140570(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1405B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1405FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

id sub_140748()
{
  v0 = [objc_allocWithZone(type metadata accessor for BrowseCollectionViewFlowLayout()) init];
  sub_13E2E0(v0);
  return v0;
}

BOOL sub_1407B0(void *a1, unsigned __int8 a2, void *a3, unsigned __int8 a4)
{
  if (a2 == 3 && a1 == 0)
  {
    return a4 == 3 && !a3;
  }

  if (a2 > 2u)
  {
    return 0;
  }

  v7 = [a1 identifiers];
  if (a4 > 2u || (v8 = [a3 identifiers]) == 0)
  {
    v8 = [objc_opt_self() emptyIdentifierSet];
  }

  v9 = [v7 intersectsSet:v8];

  return v9;
}

void *sub_1408A0(uint64_t a1)
{
  if (*(a1 + qword_DF15B8 + 8) > 1u)
  {
    if (*(a1 + qword_DF15B8 + 8) == 2)
    {
      v1 = 68;
    }

    else if (*(a1 + qword_DF15B0) == 2)
    {
      v1 = 66;
    }

    else
    {
      v1 = 64;
    }
  }

  else if (*(a1 + qword_DF15B8 + 8))
  {
    v1 = 67;
  }

  else
  {
    v1 = 65;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF4EC0;
  *(v2 + 32) = v1;
  type metadata accessor for SortOptionsController();
  swift_allocObject();
  return sub_225174(v2, 0, 0);
}

uint64_t sub_140970(uint64_t a1, void *a2)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  v6 = [a2 representativeTitle];
  if (v6)
  {
    v7 = v6;
    v8 = sub_AB92A0();
    v10 = v9;
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v8 = sub_AB9320();
    v10 = v11;
  }

  v12 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_title);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = v8;
  v12[1] = v10;
  sub_1AE488(v13, v14);

  v38[3] = sub_13C80(0, &qword_DE8E90);
  v38[4] = &off_D17A20;
  v38[0] = a2;
  sub_140D18(v38, v35);
  v15 = v36;
  if (v36)
  {
    v16 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v17 = a2;
    v18 = sub_4CAA30(&off_CEFDE8, v15, v16);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    v19 = a2;
    sub_12E1C(v35, &unk_DE9C60);
    v18 = _swiftEmptyArrayStorage;
  }

  sub_1783C8(v18);

  sub_12E1C(v38, &unk_DE9C60);
  v20 = [a2 artist];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 name];
    if (v22)
    {
      v23 = v22;
      v24 = sub_AB92A0();
      v26 = v25;

      v27 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName);
      swift_beginAccess();
      v28 = *v27;
      v29 = v27[1];
      *v27 = v24;
      v27[1] = v26;
      goto LABEL_15;
    }
  }

  if ([a2 isCompilation])
  {
    sub_AB91E0();
    sub_AB3550();
    v30 = sub_AB9320();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  v33 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName);
  swift_beginAccess();
  v28 = *v33;
  v29 = v33[1];
  *v33 = v30;
  v33[1] = v32;
LABEL_15:
  sub_1AE788(v28, v29);
}

uint64_t sub_140D18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_140D88()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_140DC8()
{

  return swift_deallocObject();
}

uint64_t sub_140E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_140EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_140F20()
{
  result = qword_DEE978;
  if (!qword_DEE978)
  {
    type metadata accessor for CollectionViewSection.ContentConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE978);
  }

  return result;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_140F98()
{

  return swift_deallocObject();
}

void sub_141008(void *a1)
{
  type metadata accessor for CodableModelIdentity();
  v2 = sub_ABA710();
  if (!v2)
  {
    v6 = 0;
    v4 = 0;
    v7 = 3;
    goto LABEL_10;
  }

  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication20CodableModelIdentity_model);

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = 0;
LABEL_9:
    v4 = v4;
    goto LABEL_10;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v6 = v8;
    v7 = 1;
    goto LABEL_9;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = 2;
    goto LABEL_9;
  }

  v7 = 3;
LABEL_10:
  v9 = sub_AB9260();
  v10 = [a1 decodeInt64ForKey:v9];

  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_13C80(0, &qword_DE8170);
    v11 = sub_ABA710();
    if (v11)
    {
      v12 = v11;
      v13 = sub_AB92A0();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = objc_allocWithZone(type metadata accessor for AlbumsViewController());
    sub_13B3E0(v10, v6, v7, v13, v15);
  }
}

void sub_141200()
{
  *(v0 + qword_DF1588) = 0;
  *(v0 + qword_DF1590) = 0;
  *(v0 + qword_DF1598) = 0;
  *(v0 + qword_DF15A0) = 0;
  *(v0 + qword_DF15A8) = 0;
  *(v0 + qword_DF15C0) = 0;
  v1 = (v0 + qword_DF15C8);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + qword_DF15D0;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  sub_ABAFD0();
  __break(1u);
}

void sub_1412CC(void *a1, uint64_t a2)
{
  v4 = *&v2[qword_DFE2F0];
  if (v4)
  {
    v6 = [v4 results];
    if (v6)
    {
      v7 = v6;
      if ([v6 numberOfSections] >= 2 && (objc_msgSend(v7, "sectionAtIndex:", a2), (swift_dynamicCast() & 1) != 0))
      {
        v8 = qword_DF15C0;
        v9 = *&v2[qword_DF15C0];
        if (v9)
        {
          v10 = *&v2[qword_DF15C0];
LABEL_11:
          v14 = v9;
          sub_13F320(v10, v20, v21);
          [a1 bounds];
          v16 = v15;
          v18 = v17;
          v19 = sub_E34F8();
          [v19 sizeThatFits:{v16, v18}];

          return;
        }

        v10 = [objc_allocWithZone(type metadata accessor for CollectionViewSection.SectionHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        [v10 setHidden:1];
        [v10 setUserInteractionEnabled:0];
        v11 = [v2 view];
        if (v11)
        {
          v12 = v11;
          [v11 addSubview:v10];

          v13 = *&v2[v8];
          *&v2[v8] = v10;

          v9 = 0;
          goto LABEL_11;
        }

        __break(1u);
      }

      else
      {
      }
    }
  }
}

void sub_1414E8(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.isMediaPicker.getter();

  if (!v5)
  {
    v6 = *&v2[qword_DFE2F0];
    if (v6)
    {
      v7 = v6;
      v8 = [v7 results];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 totalItemCount];

        if (v10 >= 1)
        {
          v11 = [v2 traitCollection];
          [a1 bounds];
          v12 = [objc_opt_self() defaultMetrics];
          sub_AB9EF0();

          v7 = v12;
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_141658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1416C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_14172C()
{

  return swift_deallocObject();
}

uint64_t sub_1417AC(char a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  if (a1 == 2)
  {
    v4 = sub_1420E0();
    FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4);
  }

  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

uint64_t sub_141AB0()
{
  result = sub_1417AC(2);
  byte_E70EF0 = 1;
  qword_E70EF8 = result;
  unk_E70F00 = v1;
  return result;
}

uint64_t sub_141AE0()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  sub_AB91E0();
  sub_AB3550();
  result = sub_AB9320();
  byte_E70F08 = 2;
  qword_E70F10 = result;
  unk_E70F18 = v3;
  return result;
}

uint64_t sub_141BF0()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  sub_AB91E0();
  sub_AB3550();
  result = sub_AB9320();
  byte_E70F20 = 3;
  qword_E70F28 = result;
  unk_E70F30 = v3;
  return result;
}

uint64_t TabIdentifier.musicTabID.getter@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = &enum case for MusicTabID.listenNow(_:);
      }

      else
      {
        v3 = &enum case for MusicTabID.browse(_:);
      }
    }

    else
    {
      v3 = &enum case for MusicTabID.library(_:);
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v3 = &enum case for MusicTabID.videos(_:);
    }

    else
    {
      *a2 = 0x7473696C79616C70;
      a2[1] = 0xE900000000000073;
      v3 = &enum case for MusicTabID.other(_:);
    }
  }

  else if (a1 == 3)
  {
    v3 = &enum case for MusicTabID.radio(_:);
  }

  else
  {
    v3 = &enum case for MusicTabID.search(_:);
  }

  v4 = *v3;
  v5 = sub_AB5610();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_141E04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore13TabIdentifierO0A11ApplicationE05musicC2IDACSg0A2UI0acG0O_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_141E2C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 2)
  {
    if (*v1)
    {
      if (v3 == 1)
      {
        v4 = &enum case for MusicTabID.listenNow(_:);
      }

      else
      {
        v4 = &enum case for MusicTabID.browse(_:);
      }
    }

    else
    {
      v4 = &enum case for MusicTabID.library(_:);
    }
  }

  else if (*v1 > 4u)
  {
    if (v3 == 5)
    {
      v4 = &enum case for MusicTabID.videos(_:);
    }

    else
    {
      *a1 = 0x7473696C79616C70;
      a1[1] = 0xE900000000000073;
      v4 = &enum case for MusicTabID.other(_:);
    }
  }

  else if (v3 == 3)
  {
    v4 = &enum case for MusicTabID.radio(_:);
  }

  else
  {
    v4 = &enum case for MusicTabID.search(_:);
  }

  v5 = *v4;
  v6 = sub_AB5610();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t _s9MusicCore13TabIdentifierO0A11ApplicationE05musicC2IDACSg0A2UI0acG0O_tcfC_0(uint64_t a1)
{
  v2 = sub_AB5610();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == enum case for MusicTabID.listenNow(_:))
  {
    return 1;
  }

  if (v4 == enum case for MusicTabID.browse(_:))
  {
    return 2;
  }

  if (v4 == enum case for MusicTabID.videos(_:))
  {
    return 5;
  }

  if (v4 == enum case for MusicTabID.radio(_:))
  {
    return 3;
  }

  if (v4 == enum case for MusicTabID.library(_:))
  {
    return 0;
  }

  if (v4 == enum case for MusicTabID.search(_:))
  {
    return 4;
  }

  (*(v3 + 8))(a1, v2);
  return 7;
}

unint64_t sub_14208C()
{
  result = qword_DF1D58;
  if (!qword_DF1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF1D58);
  }

  return result;
}

unint64_t sub_1420E0()
{
  result = qword_DF1D60;
  if (!qword_DF1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF1D60);
  }

  return result;
}

char *sub_142134(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_duration] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_popularity];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder];
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = 0;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_maximumTrackNumberForSizing];
  *v15 = 0;
  v15[8] = 1;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_artistTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_durationTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextStackView] = 0;
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents];
  sub_14C5F4(0, v64);
  v17 = v64[1];
  *v16 = v64[0];
  *(v16 + 1) = v17;
  *(v16 + 4) = v65;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_chevronImageView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___favoriteSizingView] = 0;
  v63.receiver = v4;
  v63.super_class = type metadata accessor for SongCell();
  v18 = objc_msgSendSuper2(&v63, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 layer];
  [v19 setAllowsGroupOpacity:0];

  v20 = [v18 layer];
  [v20 setAllowsGroupBlending:0];

  v21 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  v61 = v21[5];
  v62 = v21[4];
  v26 = &v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v60 = *&v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v59 = *&v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v58 = *&v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v57 = *&v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  *v26 = *v21;
  v26[1] = v23;
  v26[2] = v24;
  v26[3] = v25;
  v26[4] = v62;
  v26[5] = v61;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v30 = v25;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  sub_2F1C8(v60, v59, v58, v57);
  v35 = *&v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v36 = *(v35 + 168);
  v66[0] = *(v35 + 152);
  v66[1] = v36;
  v66[2] = *(v35 + 184);
  *(v35 + 152) = v22;
  *(v35 + 160) = v23;
  *(v35 + 168) = v24;
  *(v35 + 176) = v25;
  *(v35 + 184) = v62;
  *(v35 + 192) = v61;
  v37 = v31;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  v44 = v40;
  sub_75948(v66);
  sub_12E1C(v66, &unk_DF8690);

  v45 = v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v45 & 1) == 0)
  {
    [v18 setNeedsLayout];
  }

  v46 = v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset];
  v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset] = 0;
  if (v46 == 1)
  {
    [v18 setNeedsLayout];
  }

  v47 = *&v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF7C50;
  v49 = &v18[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents];
  v50 = *&v18[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 8];
  *(inited + 32) = v50;
  *(inited + 40) = *(v49 + 2);
  v51 = v47;

  if ((inited & 0xC000000000000001) != 0)
  {
    v50 = sub_36003C(0, inited);
  }

  else
  {
  }

  TextStackView.add(_:)(v50);

  if ((inited & 0xC000000000000001) != 0)
  {
    v52 = sub_36003C(1uLL, inited);
  }

  else
  {
    v52 = *(inited + 40);
  }

  TextStackView.add(_:)(v52);

  swift_setDeallocating();
  swift_arrayDestroy();

  sub_149D50();
  v53 = AccessibilityIdentifier.songCell.unsafeMutableAddressor();
  v54 = *v53;
  v55 = v53[1];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v54, v55);
  v18[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] = 0;

  return v18;
}

uint64_t sub_142740(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_142858(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_142958(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 16];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_142A70(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName] != result || *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 16];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_142B70(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);
}

uint64_t sub_142C04(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 24];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_142D1C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 24];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

void sub_142E58(double a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication8SongCell_duration;
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_duration];
  *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_duration] = a1;
  if (v4 != a1)
  {
    v5 = v1;
    v6 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 32];
    if (*Double.epsilon.unsafeMutableAddressor() >= a1)
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      if (qword_DE6CB0 != -1)
      {
        swift_once();
      }

      v7 = [qword_E718F0 stringFromSeconds:*&v5[v3]];
      v8 = sub_AB92A0();
      v10 = v9;
    }

    swift_beginAccess();
    *(v6 + 112) = v8;
    *(v6 + 120) = v10;

    sub_2EB704();
    [v5 setNeedsLayout];
  }
}

void sub_142FDC(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = sub_AB4E30();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem];
  v2[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem] = a1;
  if (v9 != v4)
  {
    v10 = [v2 _bridgedConfigurationState];
    sub_AB4E00();
    isa = sub_AB4DF0().super.super.isa;
    (*(v6 + 8))(v8, v5);

    [v2 _bridgedUpdateConfigurationUsingState:isa];
  }
}

void sub_143184(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite);
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite) = a1;
  if (v3 != (a1 & 1))
  {
    sub_201644();
    v4 = sub_200954();
    [v4 setHidden:(*(v1 + v2) & 1) == 0];

    a1 = *(v1 + v2);
  }

  if (v3 != (a1 & 1))
  {

    sub_14B200();
  }
}

uint64_t sub_1432BC(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder);
  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 8);
  v6 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 16);
  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 24);
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v8;
  *(v3 + 32) = a1[2];
  sub_15F84(a1, v19, &unk_DF8690);
  sub_2F1C8(v4, v5, v6, v7);
  v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle);
  if (v9 >> 13)
  {
    if (v9 >> 13 != 2 || (v9 & 0x100) == 0)
    {
      return sub_12E1C(a1, &unk_DF8690);
    }
  }

  else if ((v9 & 1) == 0)
  {
    return sub_12E1C(a1, &unk_DF8690);
  }

  v11 = sub_1498AC();
  v12 = *v3;
  v13 = *(v3 + 8);
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v16 = *(v3 + 32);
  v17 = *(v3 + 40);
  v18 = *(v11 + 168);
  v19[0] = *(v11 + 152);
  v19[1] = v18;
  v19[2] = *(v11 + 184);
  *(v11 + 152) = v12;
  *(v11 + 160) = v13;
  *(v11 + 168) = v14;
  *(v11 + 176) = v15;
  *(v11 + 184) = v16;
  *(v11 + 192) = v17;
  sub_80C9C(v12, v13, v14, v15);
  sub_80C9C(v12, v13, v14, v15);
  sub_75948(v19);
  sub_12E1C(a1, &unk_DF8690);
  sub_12E1C(v19, &unk_DF8690);
  sub_2F1C8(v12, v13, v14, v15);
}

void sub_143468(void *a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog);
  *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog) = a1;
  v7 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle);
  if (v4 >> 13)
  {
    if (v4 >> 13 == 2 && (v4 & 0x100) != 0)
    {
      goto LABEL_4;
    }
  }

  else if (v4)
  {
LABEL_4:
    sub_1498AC();
    v5 = *(v1 + v2);
    v6 = v5;
    sub_74EA4(v5);
  }
}

id sub_143510(id result)
{
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
  v3 = result >> 13;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      if ((v2 & 0xE000) == 0x6000)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v3 != 4)
      {
        if (result == 40960)
        {
          if (v2 == 40960)
          {
            return result;
          }
        }

        else if (v2 == 40961)
        {
          return result;
        }

        goto LABEL_22;
      }

      if ((v2 & 0xE000) == 0x8000)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (!(result >> 13))
    {
      if (v2 < 0x2000)
      {
        if (((v2 ^ result) & 1) == 0)
        {
          return result;
        }

LABEL_24:
        LOWORD(v4) = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    if (v3 == 1)
    {
      if ((v2 & 0xE000) != 0x2000)
      {
        goto LABEL_22;
      }

LABEL_14:
      if (((v2 ^ result) & 1) == 0)
      {
        return result;
      }

      goto LABEL_34;
    }

    if ((v2 & 0xE000) == 0x4000)
    {
      v4 = (v2 >> 8) & 1;
      if (((v2 ^ result) & 1) == 0 && ((v4 ^ ((result & 0x100) >> 8)) & 1) == 0)
      {
        return result;
      }

      goto LABEL_26;
    }
  }

LABEL_22:
  if (v2 >> 13 != 2)
  {
    if (v2 >> 13)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  v4 = (v2 >> 8) & 1;
LABEL_26:
  v5 = sub_1497E8();
  [v5 setHidden:(v4 & 1) == 0];

  v6 = *(sub_1498AC() + 112);

  [v6 setHidden:(v4 & 1) == 0];

  if (v4)
  {
    v7 = OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent;
    v8 = [*(*&v1[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent] + 112) superview];
    v9 = [v1 contentView];
    v10 = v9;
    if (v8)
    {

      if (v8 == v10)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    v11 = [v1 contentView];
    [v11 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView]];

    v12 = [v1 contentView];
    [v12 addSubview:*(*&v1[v7] + 112)];
  }

LABEL_34:
  sub_14B0E0();
  sub_149D50();

  return [v1 setNeedsLayout];
}

id sub_14377C(__int16 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle);
  *(v1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle) = a1;
  return sub_143510(v2);
}

id sub_143794(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber];
  if ((v2[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8] & 1) != 0 || (v7 = *v6) == 0)
  {
    v13 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents];
    swift_beginAccess();
    *(v13 + 112) = 0;
    *(v13 + 120) = 0xE000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_AF4EC0;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v7;
    v9 = sub_AB9270();
    v11 = v10;

    v12 = *&v2[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents];
    swift_beginAccess();
    *(v12 + 112) = v9;
    *(v12 + 120) = v11;
  }

  result = sub_2EB704();
  v15 = v6[8];
  if (a2)
  {
    if (v6[8])
    {
      return result;
    }

    return [v3 setNeedsLayout];
  }

  if (*v6 != a1)
  {
    v15 = 1;
  }

  if (v15)
  {
    return [v3 setNeedsLayout];
  }

  return result;
}

id sub_1438F0(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber;
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  return sub_143794(v4, v5);
}

uint64_t sub_14391C(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC16MusicApplication8SongCell_maximumTrackNumberForSizing;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

id sub_1439B4(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for SongCell();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_143A5C(char a1, SEL *a2, SEL *a3)
{
  v7 = type metadata accessor for SongCell();
  v13.receiver = v3;
  v13.super_class = v7;
  v8 = objc_msgSendSuper2(&v13, *a2);
  v12.receiver = v3;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, *a3, a1 & 1);
  if (v8 != [v3 *a2])
  {
    v9 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
    if (!(v9 >> 13))
    {
      if ((v9 & 1) == 0)
      {
        return;
      }

      goto LABEL_5;
    }

    if (v9 >> 13 == 2 && (v9 & 0x100) != 0)
    {
LABEL_5:
      v10 = sub_1497E8();
      v11 = [objc_opt_self() whiteColor];
      [v10 setBackgroundColor:v11];
    }
  }
}

void sub_143BBC(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
  v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = a1;
  if (v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] == 1)
  {
    v3 = a1 & 1;
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
    swift_beginAccess();
    v4[v5] = v3;
    v21 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
    v22 = v4;
    if (v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] != v3)
    {
      v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v3;
      v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
      swift_beginAccess();
      v7 = *&v4[v6];
      if (v7 >> 62)
      {
        v8 = sub_ABB060();
        if (!v8)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
        if (!v8)
        {
          goto LABEL_20;
        }
      }

      v20 = v2;
      v9 = v8 - 1;
      if (v8 < 1)
      {
        __break(1u);
        return;
      }

      v19 = v4;

      v10 = 0;
      if ((v7 & 0xC000000000000001) == 0)
      {
        goto LABEL_15;
      }

LABEL_7:
      v11 = *(sub_36003C(v10, v7) + 256);
      if (v11)
      {
LABEL_8:
        v12 = v11;
        if (([v12 isHidden] & 1) == 0)
        {
          v13 = v22[v21];
          v14 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v15 = v12[v14];
          v12[v14] = v13;
          if (v13 != v15)
          {
            v16 = 1.0;
            if (v13)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v12 setAlpha:v16];
          }
        }

        if (v9 != v10)
        {
          goto LABEL_17;
        }
      }

      else
      {
        while (1)
        {

          if (v9 == v10)
          {
            break;
          }

LABEL_17:
          ++v10;
          if ((v7 & 0xC000000000000001) != 0)
          {
            goto LABEL_7;
          }

LABEL_15:
          v17 = *(v7 + 8 * v10 + 32);

          v11 = *(v17 + 256);
          if (v11)
          {
            goto LABEL_8;
          }
        }
      }

      v2 = v20;
    }
  }

LABEL_20:
  if (v1[v2])
  {
    v18 = 0;
  }

  else
  {
    v18 = 3;
  }

  [v1 setSelectionStyle:v18];
  sub_143E08();
}

void sub_143E08()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView];
  if (v1)
  {
    v2 = v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled];
    v3 = v1;
    v4 = 1.0;
    if (v2 == 1)
    {
      UIInterfaceGetContentDisabledAlpha();
    }

    [v3 setAlpha:v4];
  }

  v5 = sub_200954();
  v6 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
  v7 = 1.0;
  if (v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] == 1)
  {
    UIInterfaceGetContentDisabledAlpha();
  }

  [v5 setAlpha:v7];

  v15 = [v0 traitCollection];
  v8 = [v0 traitCollection];
  [v0 bounds];
  v10 = v9;
  v11 = 1;
  if ([v8 horizontalSizeClass] != &dword_0 + 1 && v10 >= 465.0)
  {
    v12 = [v8 preferredContentSizeCategory];
    v11 = sub_ABA320();

    v8 = v12;
  }

  v13 = v0[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem];
  v14 = [*(*&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 112) isHidden];
  sub_143FEC(v15, v11 & 1, v13, v14 ^ 1, *&v0[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle], v0[v6]);
}

void sub_143FEC(void *a1, char a2, char a3, char a4, unsigned __int16 a5, char a6)
{
  v11 = sub_14B658(a3, a6);
  v12 = sub_14B738(a3, a6);
  v13 = v12;
  v14 = a5 >> 13;
  v92 = v12;
  v82 = v6;
  if (v14 > 3)
  {
    if (v14 != 4 && (v14 != 5 || a5 != 40960))
    {
      goto LABEL_11;
    }
  }

  else if (a5 >> 13 && v14 != 2)
  {
LABEL_11:
    v18 = qword_DE68B0;
    v16 = v12;
    if (v18 != -1)
    {
      swift_once();
    }

    v17 = &qword_DF1D68;
    v89 = v13;
    goto LABEL_14;
  }

  v15 = qword_DE68B8;
  v16 = v11;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = &qword_DF1D70;
  v89 = v11;
LABEL_14:
  v19 = *v17;
  v20 = objc_opt_self();
  v21 = v19;
  v22 = v16;
  v23 = [v20 clearColor];
  if (v14 == 1 || v14 == 3 || v14 == 4 && (a5 & 1) != 0)
  {
    v41 = (([a1 horizontalSizeClass] != &dword_0 + 1) | a4 & 1) == 0;
    v24 = 3;
    if (!v41)
    {
      v24 = 0;
    }

    v88 = v24;
  }

  else
  {
    v88 = 0;
  }

  sub_13C80(0, &qword_DE6EE0);
  v87 = v22;
  v86 = v23;
  v85 = v21;
  v25 = sub_ABA560();
  v91 = v11;
  v26 = v11;
  v27 = [v20 clearColor];
  v80 = v26;
  v84 = v27;
  v81 = v25;
  v28 = [a1 preferredContentSizeCategory];
  v29 = sub_ABA320();

  v30 = UIFontTextStyleFootnote;
  if ((a2 & 1) == 0)
  {
    v30 = UIFontTextStyleBody;
  }

  v31 = v30;
  v32 = sub_ABA560();

  v33 = v92;
  v34 = [v20 clearColor];
  v35 = qword_DE68C0;
  v36 = v33;
  v83 = v34;
  v76 = v32;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = qword_DF1D78;
  v38 = v36;
  v39 = v37;
  v40 = [v20 clearColor];
  if (((1 << v14) & 0x35) != 0)
  {
    v41 = (a2 & 1) == 0;
    v42 = 35.0;
    if (a2)
    {
      v43 = 20.0;
    }

    else
    {
      v43 = 35.0;
    }

    v44 = 24.0;
  }

  else
  {
    v41 = (a2 & 1) == 0;
    v42 = 30.0;
    if (a2)
    {
      v43 = 18.0;
    }

    else
    {
      v43 = 30.0;
    }

    v44 = 20.0;
  }

  if (v41)
  {
    v45 = v42;
  }

  else
  {
    v45 = v44;
  }

  v46 = *v82;
  if (v29)
  {
    v47 = 3;
  }

  else
  {
    v47 = 1;
  }

  *&v94 = v89;
  *(&v94 + 1) = v86;
  *&v95 = v88;
  *(&v95 + 1) = 4;
  v96 = 0uLL;
  *&v97 = v85;
  *(&v97 + 1) = 1;
  v98 = v45;
  v99 = 0;
  swift_beginAccess();
  v49 = v46[3];
  v48 = v46[4];
  v50 = v46[6];
  v100[3] = v46[5];
  v100[4] = v50;
  v100[1] = v49;
  v100[2] = v48;
  v100[0] = v46[2];
  v46[5] = v97;
  v46[6] = *&v45;
  v46[2] = v94;
  v51 = v96;
  v46[3] = v95;
  v46[4] = v51;
  v77 = v38;
  v79 = v40;
  v78 = v39;
  sub_2F118(&v94, v149);
  sub_2F174(v100);
  sub_2EB2A8();
  v52 = v82[1];
  *&v101 = v91;
  *(&v101 + 1) = v84;
  v102 = xmmword_AF7C20;
  v103 = 0uLL;
  *&v104 = v81;
  *(&v104 + 1) = v47;
  v105 = *&v45;
  swift_beginAccess();
  v54 = v52[3];
  v53 = v52[4];
  v55 = v52[6];
  v106[3] = v52[5];
  v106[4] = v55;
  v106[1] = v54;
  v106[2] = v53;
  v106[0] = v52[2];
  v56 = v105;
  v52[5] = v104;
  v52[6] = v56;
  v57 = v102;
  v52[2] = v101;
  v52[3] = v57;
  v52[4] = v103;
  sub_2F118(&v101, v149);
  sub_2F174(v106);
  sub_2EB2A8();
  v58 = v82[2];
  *&v107 = v92;
  *(&v107 + 1) = v83;
  v108 = xmmword_AF7C20;
  v109 = 0uLL;
  *&v110 = v76;
  *(&v110 + 1) = 1;
  v111 = *&v43;
  swift_beginAccess();
  v60 = v58[3];
  v59 = v58[4];
  v61 = v58[6];
  v112[3] = v58[5];
  v112[4] = v61;
  v112[1] = v60;
  v112[2] = v59;
  v112[0] = v58[2];
  v62 = v111;
  v58[5] = v110;
  v58[6] = v62;
  v63 = v108;
  v58[2] = v107;
  v58[3] = v63;
  v58[4] = v109;
  sub_2F118(&v107, v149);
  sub_2F174(v112);
  sub_2EB2A8();
  v64 = v82[3];
  *&v113 = v92;
  *(&v113 + 1) = v83;
  v114 = xmmword_AF7C20;
  v115 = 0uLL;
  *&v116 = v76;
  *(&v116 + 1) = 1;
  v117 = *&v43;
  swift_beginAccess();
  v66 = v64[3];
  v65 = v64[4];
  v67 = v64[6];
  v118[3] = v64[5];
  v118[4] = v67;
  v118[1] = v66;
  v118[2] = v65;
  v118[0] = v64[2];
  v68 = v117;
  v64[5] = v116;
  v64[6] = v68;
  v69 = v114;
  v64[2] = v113;
  v64[3] = v69;
  v64[4] = v115;
  sub_2F118(&v113, v149);
  sub_2F174(v118);
  sub_2EB2A8();
  v70 = v82[4];
  *&v119 = v92;
  *(&v119 + 1) = v40;
  v120 = xmmword_AFF7A0;
  v121 = 0uLL;
  *&v122 = v39;
  *(&v122 + 1) = 1;
  v123 = *&v45;
  swift_beginAccess();
  v72 = v70[3];
  v71 = v70[4];
  v73 = v70[6];
  v124[3] = v70[5];
  v124[4] = v73;
  v124[1] = v72;
  v124[2] = v71;
  v124[0] = v70[2];
  v74 = v123;
  v70[5] = v122;
  v70[6] = v74;
  v75 = v120;
  v70[2] = v119;
  v70[3] = v75;
  v70[4] = v121;
  sub_2F118(&v119, v149);
  sub_2F174(v124);
  sub_2EB2A8();

  v125[0] = v92;
  v125[1] = v40;
  v126 = xmmword_AFF7A0;
  v128 = 0;
  v127 = 0;
  v129 = v39;
  v130 = 1;
  v131 = v45;
  v132 = 0;
  sub_2F174(v125);

  v133[0] = v92;
  v133[1] = v83;
  v134 = xmmword_AF7C20;
  v136 = 0;
  v135 = 0;
  v137 = v76;
  v138 = 1;
  v139 = v43;
  v140 = 0;
  sub_2F174(v133);
  v141[0] = v91;
  v141[1] = v84;
  v142 = xmmword_AF7C20;
  v144 = 0;
  v143 = 0;
  v145 = v81;
  v146 = v47;
  v147 = v45;
  v148 = 0;
  sub_2F174(v141);
  v149[0] = v89;
  v149[1] = v86;
  v149[2] = v88;
  v149[3] = 4;
  v149[4] = 0;
  v149[5] = 0;
  v149[6] = v85;
  v149[7] = 1;
  *&v149[8] = v45;
  v149[9] = 0;
  sub_2F174(v149);
}

id sub_1447F0()
{
  result = [v0 accessoryViewAtEdge:1];
  if (result)
  {
    v2 = result;
    if (([result isHidden] & 1) != 0 || (objc_msgSend(v2, "frame"), CGRectGetWidth(v4) <= 0.0))
    {

      return 0;
    }

    else
    {
      [v2 frame];
      Width = CGRectGetWidth(v5);

      return *&Width;
    }
  }

  return result;
}

void sub_14497C(void *a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for SongCell();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (a1)
  {
    v6 = [a1 preferredContentSizeCategory];
    v7 = sub_AB92A0();
    v9 = v8;
    if (v7 == sub_AB92A0() && v9 == v10)
    {

LABEL_12:
      v13 = [v3 horizontalSizeClass];
LABEL_13:
      if (v13 == [a1 horizontalSizeClass])
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v12 = sub_ABB3C0();

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  sub_149D50();
  v13 = [v3 horizontalSizeClass];
  if (a1)
  {
    goto LABEL_13;
  }

LABEL_14:
  sub_14B0E0();
LABEL_15:
  if ([v3 horizontalSizeClass])
  {
    [v1 setNeedsLayout];
  }
}

void sub_144BA4()
{
  v1 = v0;
  v619.receiver = v0;
  v619.super_class = type metadata accessor for SongCell();
  objc_msgSendSuper2(&v619, "layoutSubviews");
  [v0 setClipsToBounds:{objc_msgSend(v0, "isEditing")}];
  v2 = [v0 contentView];
  [v2 bounds];
  v593 = v3;
  v594 = v4;
  v6 = v5;
  v601 = v7;
  v8 = [v0 traitCollection];
  [v0 effectiveUserInterfaceLayoutDirection];
  v599 = v6;
  sub_14A238(v8, v6);
  [v8 displayScale];
  [v2 music_inheritedLayoutInsets];
  if ([v8 horizontalSizeClass] == &dword_0 + 1)
  {
    v9 = [v0 _collectionView];
    if (!v9 || (v10 = v9, sub_1447F0(), v12 = v11, v10, (v12 & 1) != 0))
    {
      [v1 layoutMargins];
    }
  }

  [v1 bounds];
  [v2 frame];
  sub_ABA4D0();
  sub_AB9E80();
  if (v13 < 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v13;
  }

  if (v14 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v14;
  }

  v17 = UIEdgeInsetsInsetRect(v593, v594, v6, v601, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = swift_allocObject();
  *v560 = v17;
  *&v560[8] = v19;
  *(v24 + 2) = v17;
  v551 = (v24 + 2);
  v24[3] = v19;
  v24[4] = v21;
  *&v560[16] = v21;
  *&v560[24] = v23;
  v600 = v24;
  *(v24 + 5) = v23;
  v25 = 1;
  v565 = v2;
  if ([v8 horizontalSizeClass] != &dword_0 + 1 && v599 >= 465.0)
  {
    v26 = [v8 preferredContentSizeCategory];
    v25 = sub_ABA320();
  }

  v554 = v25;
  v27 = OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle;
  sub_14C0F8(v8, *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle], &v697);
  v28 = v697;
  v562 = [v8 horizontalSizeClass];
  [v1 separatorInset];
  v549 = v30;
  v550 = v29;
  v561 = v31;
  v548 = v32;
  v33 = *(*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 112);
  [v33 frame];
  v34 = v601;
  sub_ABA4A0();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v570 = v33;
  v571 = v8;
  if ([v33 isHidden])
  {
    v43 = *&v560[16];
    v583 = *&v560[8];
    x = *v560;
    height = v23;
    goto LABEL_39;
  }

  v44 = &v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber];
  v45 = 10.0;
  if (v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8] == 1)
  {
    v45 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets + 24];
  }

  v595 = v36;
  v705.origin.x = v36;
  v705.origin.y = v38;
  v578 = v40;
  v705.size.width = v40;
  v46 = v42;
  v705.size.height = v42;
  MinX = CGRectGetMinX(v705);
  v48 = *(v600 + 24);
  v43 = *(v600 + 32);
  v706.size.height = *(v600 + 40);
  x = *(v600 + 16);
  v706.origin.x = x;
  height = v706.size.height;
  v706.origin.y = v48;
  v706.size.width = v43;
  v49 = CGRectGetMinX(v706);
  v50 = [v571 preferredContentSizeCategory];
  v51 = sub_ABA360();

  if ((v51 & 1) != 0 || v562 != &dword_0 + 1)
  {
    v52 = *&v1[v27];
    goto LABEL_26;
  }

  v52 = *&v1[v27];
  if (v44[8] != 1)
  {
LABEL_26:
    v54 = v571;
    goto LABEL_27;
  }

  v53 = v52 >> 13;
  v54 = v571;
  if (!(v52 >> 13))
  {
    if ((v52 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_27:
    v55 = v45 + *&v28 + MinX - v49;
    x = v55 + *(v600 + 16);
    *(v600 + 16) = x;
    v43 = *(v600 + 32) - v55;
    *(v600 + 32) = v43;
    v53 = v52 >> 13;
    goto LABEL_28;
  }

  if (v53 == 2 && (v52 & 0x100) != 0)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (!v53)
  {
    if ((v52 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_35:
    v59 = *(v600 + 16);
    v58 = *(v600 + 24);
    v43 = *(v600 + 32);
    v60 = *(v600 + 40);
    v708.origin.x = v59;
    v708.origin.y = v58;
    v708.size.width = v43;
    v708.size.height = v60;
    CGRectGetMinY(v708);
    v583 = v58;
    x = v59;
    v709.origin.x = v59;
    v709.origin.y = v58;
    v709.size.width = v43;
    height = v60;
    v709.size.height = v60;
    CGRectGetHeight(v709);
    v61 = [objc_opt_self() defaultMetrics];
    v62 = sub_ABA310();
    __chkstk_darwin(v62);
    sub_AB9EF0();

    sub_AB39F0();
    v38 = v63;
    goto LABEL_36;
  }

  if (v53 == 2 && (v52 & 0x100) != 0)
  {
    goto LABEL_35;
  }

LABEL_31:
  v583 = v48;
  v56 = [v54 preferredContentSizeCategory];
  v57 = sub_ABA330();

  if (v57)
  {
    v34 = v601;
    v36 = v595;
    v42 = v46;
    if (v562 == &dword_0 + 1)
    {
      v707.origin.x = *(v600 + 16);
      v43 = *(v600 + 32);
      v707.size.height = *(v600 + 40);
      v583 = *(v600 + 24);
      v707.origin.y = v583;
      x = v707.origin.x;
      v707.size.width = v43;
      height = v707.size.height;
      v38 = CGRectGetMinY(v707) + 24.0;
    }

    goto LABEL_37;
  }

LABEL_36:
  v34 = v601;
  v36 = v595;
  v42 = v46;
LABEL_37:
  type metadata accessor for CGRect(0);
  *&v697 = v36;
  *(&v697 + 1) = v38;
  v40 = v578;
  *&v698 = v578;
  *(&v698 + 1) = v42;
  [v570 frame];
  *&v687 = v64;
  *(&v687 + 1) = v65;
  *&v688 = v66;
  *(&v688 + 1) = v67;
  if (sub_AB38D0())
  {
    sub_ABA490();
    sub_76B28(v68, v69, v70, v71);
  }

LABEL_39:
  if ([v1 showsReorderControl])
  {
    v43 = *(v600 + 32) + -8.0;
    *(v600 + 32) = v43;
  }

  v72 = *&v1[v27];
  v73 = v72 >> 13;
  if (v72 >> 13)
  {
    if (v73 != 2)
    {
LABEL_51:
      if (v72 != 40960 && v73 >= 5)
      {
        v102 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_chevronImageView];
        if (v102)
        {
          v103 = v102;
          [v103 frame];
          v105 = v104;
          v107 = v106;
          [v103 sizeThatFits:{0.0, 0.0}];
          v109 = v108;
          v111 = v110;
          CGRectGetMaxX(*(v600 + 16));
          v716.origin.x = v105;
          v716.origin.y = v107;
          v716.size.width = v109;
          v716.size.height = v111;
          CGRectGetWidth(v716);
          v583 = *(v600 + 24);
          x = *(v600 + 16);
          height = *(v600 + 40);
          sub_ABA470();
          v113 = v112;
          v115 = v114;
          v117 = v116;
          v119 = v118;
          sub_ABA490();
          [v103 setFrame:?];
          v717.origin.x = v113;
          v717.origin.y = v115;
          v717.size.width = v117;
          v717.size.height = v119;
          Width = CGRectGetWidth(v717);

          v43 = *(v600 + 32) - (Width + 12.0);
          *(v600 + 32) = v43;
        }
      }

      goto LABEL_55;
    }

    if ((v72 & 0x100) == 0)
    {
      goto LABEL_55;
    }

LABEL_46:
    v74 = [objc_opt_self() defaultMetrics];
    v75 = sub_ABA310();
    __chkstk_darwin(v75);
    sub_AB9EF0();
    v76 = v42;
    v572 = v42;
    v78 = v77;

    v710.origin.x = v36;
    v710.origin.y = v38;
    v710.size.width = v40;
    v710.size.height = v76;
    MaxX = CGRectGetMaxX(v710);
    sub_AB39F0();
    v81 = MaxX - v80;
    v711.origin.x = v36;
    v711.origin.y = v38;
    v711.size.width = v40;
    v711.size.height = v572;
    MaxY = CGRectGetMaxY(v711);
    sub_AB39F0();
    v84 = MaxY - v83;
    sub_1498AC();
    sub_ABA490();
    sub_76B28(v85, v86, v87, v88);

    v712.origin.x = v81;
    v712.origin.y = v84;
    v712.size.width = v78;
    v712.size.height = v78;
    v713 = CGRectInset(v712, -1.0, -1.0);
    v89 = v713.origin.x;
    y = v713.origin.y;
    v91 = v713.size.width;
    v92 = v713.size.height;
    v93 = sub_1497E8();
    v34 = v601;
    sub_ABA490();
    [v93 setFrame:?];

    v94 = OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView;
    v95 = [*&v1[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView] layer];
    [v95 setCornerCurve:kCACornerCurveCircular];

    v96 = [*&v1[v94] layer];
    v714.origin.x = v89;
    v714.origin.y = y;
    v714.size.width = v91;
    v714.size.height = v92;
    v97 = CGRectGetWidth(v714);
    v715.origin.x = v89;
    v715.origin.y = y;
    v715.size.width = v91;
    v715.size.height = v92;
    v98 = CGRectGetHeight(v715);
    if (v98 >= v97)
    {
      v98 = v97;
    }

    v99 = v98 * 0.5;
    if (v99 < 0.0)
    {
      v99 = 0.0;
    }

    [v96 setCornerRadius:v99];

    v100 = [v1 contentView];
    [v100 bringSubviewToFront:*&v1[v94]];

    v101 = [v1 contentView];
    [v101 bringSubviewToFront:*(*&v1[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent] + 112)];

    v72 = *&v1[v27];
    v73 = v72 >> 13;
    goto LABEL_51;
  }

  if (v72)
  {
    goto LABEL_46;
  }

LABEL_55:
  v552 = &v1[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents];
  v121 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents + 32];
  swift_beginAccess();
  v123 = *(v121 + 112);
  v122 = *(v121 + 120);

  *&v697 = CGRectGetWidth(*v560);
  *&v687 = 0x4074000000000000;
  sub_471A4();
  v557 = v122;
  v553 = v27;
  if ((sub_AB38F0() & 1) == 0 || v562 == &dword_0 + 1)
  {
    goto LABEL_107;
  }

  v124 = HIBYTE(v122) & 0xF;
  if ((v122 & 0x2000000000000000) == 0)
  {
    v124 = v123 & 0xFFFFFFFFFFFFLL;
  }

  if (!v124 || (v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8] & 1) == 0 && (v125 = *&v1[v27], (v125 >> 13) - 1 >= 4) && (v125 >> 13 != 5 || v125 != 40960))
  {
LABEL_107:
    [v1 effectiveUserInterfaceLayoutDirection];
    v228 = 0;
    v580 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
    v229 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton;
    v567 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton;
    v230 = 0.0;
    v231 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu;
    v232 = v583;
    v233 = x;
    while (1)
    {
      v234 = *(&off_CEFF18 + v228 + 32);
      if (v234)
      {
        if (v234 == &dword_0 + 1)
        {
          if ((v1[v229] & 1) == 0)
          {
            goto LABEL_109;
          }

          v237 = *&v1[v567];
          if (!v237)
          {
            goto LABEL_109;
          }

          v238 = v43;
          v574 = v43;
          v239 = v237;
          v597 = v230;
          [v239 sizeThatFits:{v599, v601}];
          v736.size.width = v240;
          v242 = v241;
          v736.origin.x = 0.0;
          v736.origin.y = 0.0;
          v736.size.height = v242;
          v243 = CGRectGetWidth(v736);
          if (v243 > 0.0)
          {
            v244 = v243;
          }

          else
          {
            v244 = 0.0;
          }

          goto LABEL_134;
        }

        if (v234 == &dword_0 + 2)
        {
          v235 = *&v1[v580];
          if (v235)
          {
            v236 = v235;
            if (([v236 isHidden] & 1) == 0)
            {
              v238 = v43;
              v574 = v43;
              v239 = v236;
              v597 = v230;
              [v239 sizeThatFits:{v599, v601}];
              v747.size.width = v276;
              v242 = v277;
              v747.origin.x = 0.0;
              v747.origin.y = 0.0;
              v747.size.height = v242;
              v278 = CGRectGetWidth(v747);
              if (v278 > 0.0)
              {
                v244 = v278;
              }

              else
              {
                v244 = 0.0;
              }

LABEL_134:
              v748.origin.x = v233;
              v748.origin.y = v232;
              v748.size.width = v238;
              v748.size.height = height;
              CGRectGetMaxX(v748);
              v749.origin.x = 0.0;
              v749.origin.y = 0.0;
              v749.size.width = v244;
              v749.size.height = v242;
              CGRectGetWidth(v749);
              v279 = [v1 traitCollection];
              [v279 displayScale];

              sub_ABA470();
              v281 = v280;
              v283 = v282;
              v285 = v284;
              v287 = v286;
              sub_ABA490();
              [v239 setFrame:?];
              v750.origin.x = v281;
              v750.origin.y = v283;
              v750.size.width = v285;
              v750.size.height = v287;
              v230 = v597 + CGRectGetWidth(v750) + 0.0;
              v751.origin.x = v281;
              v751.origin.y = v283;
              v751.size.width = v285;
              v751.size.height = v287;
              v232 = v583;
              v233 = x;
              v259 = CGRectGetWidth(v751);

LABEL_135:
LABEL_136:
              v43 = v574 - v259;
              *(v600 + 32) = v574 - v259;
              goto LABEL_109;
            }
          }
        }

        else
        {
          v260 = v234;
          if (([v260 isHidden] & 1) == 0)
          {
            v574 = v43;
            v261 = v260;
            [v261 sizeThatFits:{v599, v601}];
            v742.size.width = v262;
            v264 = v263;
            v742.origin.x = 0.0;
            v742.origin.y = 0.0;
            v742.size.height = v264;
            v265 = CGRectGetWidth(v742);
            if (v265 > 0.0)
            {
              v266 = v265;
            }

            else
            {
              v266 = 0.0;
            }

            v743.origin.x = v233;
            v743.origin.y = v232;
            v743.size.width = v43;
            v743.size.height = height;
            CGRectGetMaxX(v743);
            v744.origin.x = 0.0;
            v744.origin.y = 0.0;
            v744.size.width = v266;
            v744.size.height = v264;
            CGRectGetWidth(v744);
            v267 = [v1 traitCollection];
            [v267 displayScale];

            sub_ABA470();
            v269 = v268;
            v271 = v270;
            v273 = v272;
            v275 = v274;
            sub_ABA490();
            [v261 setFrame:?];
            v745.origin.x = v269;
            v745.origin.y = v271;
            v745.size.width = v273;
            v745.size.height = v275;
            v230 = v230 + CGRectGetWidth(v745) + 0.0;
            v746.origin.x = v269;
            v746.origin.y = v271;
            v746.size.width = v273;
            v746.size.height = v275;
            v232 = v583;
            v233 = x;
            v259 = CGRectGetWidth(v746);
            sub_7FCC4(v234);
            sub_7FCC4(v234);
            goto LABEL_136;
          }

          sub_7FCC4(v234);
        }
      }

      else if (v1[v231])
      {
        v574 = v43;
        v239 = sub_200934();
        [v239 sizeThatFits:{v599, v601}];
        v737.size.width = v245;
        v247 = v246;
        v737.origin.x = 0.0;
        v737.origin.y = 0.0;
        v737.size.height = v247;
        v248 = CGRectGetWidth(v737);
        if (v248 > 0.0)
        {
          v249 = v248;
        }

        else
        {
          v249 = 0.0;
        }

        v738.origin.x = v233;
        v738.origin.y = v232;
        v738.size.width = v43;
        v738.size.height = height;
        CGRectGetMaxX(v738);
        v739.origin.x = 0.0;
        v739.origin.y = 0.0;
        v739.size.width = v249;
        v739.size.height = v247;
        CGRectGetWidth(v739);
        v250 = [v1 traitCollection];
        [v250 displayScale];

        sub_ABA470();
        v252 = v251;
        v254 = v253;
        v256 = v255;
        v258 = v257;
        sub_ABA490();
        [v239 setFrame:?];
        v740.origin.x = v252;
        v740.origin.y = v254;
        v740.size.width = v256;
        v740.size.height = v258;
        v230 = v230 + CGRectGetWidth(v740) + 0.0;
        v741.origin.x = v252;
        v741.origin.y = v254;
        v741.size.width = v256;
        v741.size.height = v258;
        v232 = v583;
        v233 = x;
        v259 = CGRectGetWidth(v741);
        goto LABEL_135;
      }

LABEL_109:
      v228 += 8;
      if (v228 == 24)
      {
        if (v230 > 0.0)
        {
          *(v600 + 32) = v43 + -12.0;
        }

        v288 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_durationTextDrawingView];
        v188 = v571;
        v34 = v601;
        v189 = v599;
        v227 = v570;
        v128 = height;
        if (v288)
        {
          [v288 removeFromSuperview];
        }

        v226 = 0;
        goto LABEL_142;
      }
    }
  }

  [v1 effectiveUserInterfaceLayoutDirection];
  v126 = 0;
  v127 = 0;
  v566 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
  v547 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton;
  v573 = v583;
  v579 = x;
  v558 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu;
  v559 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton;
  v596 = 0.0;
  v128 = height;
  do
  {
    v145 = *(&off_CF0308 + v126 + 32);
    if (v145)
    {
      if (v145 == &dword_0 + 1)
      {
        if (v1[v559])
        {
          v148 = *&v1[v547];
          if (v148)
          {
            v149 = v43;
            v150 = v148;
            [v150 sizeThatFits:{v599, v34}];
            v723.size.width = v151;
            v153 = v152;
            v723.origin.x = 0.0;
            v723.origin.y = 0.0;
            v723.size.height = v153;
            v154 = CGRectGetWidth(v723);
            if (v154 > 0.0)
            {
              v155 = v154;
            }

            else
            {
              v155 = 0.0;
            }

LABEL_92:
            v730.origin.y = v573;
            v730.origin.x = v579;
            v730.size.width = v149;
            v730.size.height = v128;
            CGRectGetMaxX(v730);
            v731.origin.x = 0.0;
            v731.origin.y = 0.0;
            v731.size.width = v155;
            v731.size.height = v153;
            CGRectGetWidth(v731);
            v177 = [v1 traitCollection];
            [v177 displayScale];

            sub_ABA470();
            v179 = v178;
            v181 = v180;
            v183 = v182;
            v185 = v184;
            v128 = height;
            sub_ABA490();
            [v150 setFrame:?];
            v732.origin.x = v179;
            v732.origin.y = v181;
            v732.size.width = v183;
            v732.size.height = v185;
            v596 = v596 + CGRectGetWidth(v732) + 0.0;
            v733.origin.x = v179;
            v733.origin.y = v181;
            v733.size.width = v183;
            v733.size.height = v185;
            v34 = v601;
            v173 = CGRectGetWidth(v733);

LABEL_93:
            v43 = v149 - v173;
            *(v600 + 32) = v149 - v173;
LABEL_67:
            v127 = 1;
          }
        }
      }

      else if (v145 == &dword_0 + 2)
      {
        v146 = *&v1[v566];
        if (v146)
        {
          v147 = v146;
          if (([v147 isHidden] & 1) == 0)
          {
            v149 = v43;
            v150 = v147;
            [v150 sizeThatFits:{v599, v34}];
            v729.size.width = v174;
            v153 = v175;
            v729.origin.x = 0.0;
            v729.origin.y = 0.0;
            v729.size.height = v153;
            v176 = CGRectGetWidth(v729);
            if (v176 > 0.0)
            {
              v155 = v176;
            }

            else
            {
              v155 = 0.0;
            }

            goto LABEL_92;
          }
        }
      }

      else
      {
        v157 = v145;
        if (([v157 isHidden] & 1) == 0)
        {
          v149 = v43;
          v158 = v157;
          [v158 sizeThatFits:{v599, v34}];
          v724.size.width = v159;
          v161 = v160;
          v724.origin.x = 0.0;
          v724.origin.y = 0.0;
          v724.size.height = v161;
          v162 = CGRectGetWidth(v724);
          if (v162 > 0.0)
          {
            v163 = v162;
          }

          else
          {
            v163 = 0.0;
          }

          v725.origin.y = v573;
          v725.origin.x = v579;
          v725.size.width = v43;
          v725.size.height = v128;
          CGRectGetMaxX(v725);
          v726.origin.x = 0.0;
          v726.origin.y = 0.0;
          v726.size.width = v163;
          v726.size.height = v161;
          CGRectGetWidth(v726);
          v164 = [v1 traitCollection];
          [v164 displayScale];

          sub_ABA470();
          v166 = v165;
          v168 = v167;
          v170 = v169;
          v172 = v171;
          v128 = height;
          sub_ABA490();
          [v158 setFrame:?];
          v727.origin.x = v166;
          v727.origin.y = v168;
          v727.size.width = v170;
          v727.size.height = v172;
          v596 = v596 + CGRectGetWidth(v727) + 0.0;
          v728.origin.x = v166;
          v728.origin.y = v168;
          v728.size.width = v170;
          v728.size.height = v172;
          v34 = v601;
          v173 = CGRectGetWidth(v728);
          sub_7FCC4(v145);
          sub_7FCC4(v145);
          goto LABEL_93;
        }

        sub_7FCC4(v145);
      }
    }

    else if (v1[v558])
    {
      v156 = sub_200934();
      if ((v127 & 1) == 0)
      {
        v43 = *(v600 + 32);
      }

      v555 = v43;
      v129 = v156;
      [v129 sizeThatFits:{v599, v34}];
      v718.size.width = v130;
      v132 = v131;
      v718.origin.x = 0.0;
      v718.origin.y = 0.0;
      v718.size.height = v132;
      v133 = CGRectGetWidth(v718);
      if (v133 > 0.0)
      {
        v134 = v133;
      }

      else
      {
        v134 = 0.0;
      }

      v719.origin.x = *(v600 + 16);
      v573 = *(v600 + 24);
      v719.origin.y = v573;
      v579 = v719.origin.x;
      v719.size.width = v43;
      v719.size.height = v128;
      CGRectGetMaxX(v719);
      v720.origin.x = 0.0;
      v720.origin.y = 0.0;
      v720.size.width = v134;
      v720.size.height = v132;
      CGRectGetWidth(v720);
      v135 = [v1 traitCollection];
      [v135 displayScale];

      sub_ABA470();
      v137 = v136;
      v139 = v138;
      v141 = v140;
      v143 = v142;
      v128 = height;
      sub_ABA490();
      [v129 setFrame:?];
      v721.origin.x = v137;
      v721.origin.y = v139;
      v721.size.width = v141;
      v721.size.height = v143;
      v596 = v596 + CGRectGetWidth(v721) + 0.0;
      v722.origin.x = v137;
      v722.origin.y = v139;
      v722.size.width = v141;
      v722.size.height = v143;
      v144 = CGRectGetWidth(v722);

      v43 = v43 - v144;
      *(v600 + 32) = v555 - v144;
      goto LABEL_67;
    }

    v126 += 8;
  }

  while (v126 != 16);
  if (v596 > 0.0)
  {
    *(v600 + 32) = *(v600 + 32) + -12.0;
  }

  swift_arrayDestroy();
  *(v600 + 32) = *(v600 + 32) + -12.0;
  v186 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v187 = *&v1[v186];
  v188 = v571;
  v189 = v599;
  v190 = v593;
  v191 = v594;
  if (v187)
  {
    v192 = OBJC_IVAR____TtC16MusicApplication8SongCell_durationTextDrawingView;
    v193 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_durationTextDrawingView];
    if (v193)
    {

      v194 = v193;
    }

    else
    {
      type metadata accessor for TextDrawing.View();
      v195 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v196 = [v195 init];
      v197 = *&v1[v192];
      *&v1[v192] = v196;
      v194 = v196;

      v193 = 0;
    }

    v198 = v193;
    v199 = v194;
    [v2 addSubview:v199];
    swift_beginAccess();
    v200 = *(v121 + 48);
    v201 = *(v121 + 64);
    v202 = *(v121 + 96);
    v695[3] = *(v121 + 80);
    v696 = v202;
    v695[2] = v201;
    v695[1] = v200;
    v695[0] = *(v121 + 32);
    v203 = *(v187 + 32);
    v204 = *(v187 + 40);
    v205 = *(v187 + 64);
    v206 = *(v187 + 72);
    v207 = *(v187 + 80);
    v208 = *(v187 + 88);
    sub_2F118(v695, &v697);
    v209 = v204;
    sub_108594(206967550000, 0xE500000000000000, v695, v209, v205, v206, v207, v208, v620, 0.0, 0.0, v203);

    v210 = *&v620[6];
    v211 = CGRectGetHeight(*(v600 + 16));
    v212 = *(v187 + 32);
    v213 = *(v187 + 64);
    v214 = *(v187 + 72);
    v215 = *(v187 + 80);
    v216 = *(v187 + 88);
    v217 = *(v187 + 40);
    sub_108594(v546, v557, v695, v217, v213, v214, v215, v216, v621, v210, v211, v212);
    v681 = v623;
    v682 = v624;
    v683 = v625;
    v684 = v626;
    v677 = v621[0];
    v678 = v621[1];
    v679 = v621[2];
    v680 = v622;

    v691 = v681;
    v692 = v682;
    v693 = v683;
    v694 = v684;
    v687 = v677;
    v688 = v678;
    v689 = v679;
    v690 = v680;
    UIScreen.Dimensions.size.getter(*&v680);
    v701 = v691;
    v702 = v692;
    v703 = v693;
    v704 = v694;
    v697 = v687;
    v698 = v688;
    v699 = v689;
    v700 = v690;
    sub_109B04(v621, &v667);
    TextDrawing.View.textDrawingContext.setter(&v697);
    [v199 setBounds:{0.0, 0.0, v210, *(&v622 + 1)}];
    [v199 bounds];
    v219 = *(v600 + 16);
    v218 = *(v600 + 24);
    v221 = *(v600 + 32);
    v220 = *(v600 + 40);
    v734.origin.x = v219;
    v734.origin.y = v218;
    v734.size.width = v221;
    v734.size.height = v220;
    CGRectGetMaxX(v734);
    x = v219;
    v590 = v220;
    v583 = v218;
    if (v554)
    {
      v223 = v593;
      v222 = v594;
      v224 = v599;
      sub_ABA470();

      v188 = v571;
    }

    else
    {
      v735.origin.x = v219;
      v735.origin.y = v218;
      v735.size.width = v221;
      v735.size.height = v220;
      CGRectGetMinY(v735);
      TextLabelProperties.scaledValue(forValue:text:)(v546, v557, *&v696);
      v225 = [objc_opt_self() defaultMetrics];
      [v225 scaledValueForValue:*&v625];

      v188 = v571;
      v224 = v599;
      v223 = v593;
      v222 = v594;
    }

    sub_ABA490();
    sub_ABA4C0();
    [v199 setCenter:?];
    sub_109AB0(v621);

    sub_109AB0(v620);
    sub_2F174(v695);

    *(v600 + 32) = v221 - v210;
    v191 = v222;
    v189 = v224;
    v190 = v223;
    v128 = v590;
  }

  v226 = 1;
  sub_200EEC(&off_CF0338, 1, v551, 0.0, 0.0, 12.0, v190, v191, v189, v34);
  sub_14D3A4(&unk_CF0358);
  v227 = v570;
LABEL_142:
  v598 = OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView;
  v289 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView];
  if (!v289)
  {
LABEL_145:
    v291 = 0.0;
    if ((v554 & 1) == 0)
    {
      goto LABEL_149;
    }

LABEL_146:
    v292 = [v188 preferredContentSizeCategory];
    v293 = sub_ABA330();

    if (v293)
    {
      v294 = (v562 == &dword_0 + 1) & ~[v570 isHidden];
    }

    else
    {
      v294 = 0;
    }

    if (v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8])
    {
      v306 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
      [*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] sizeThatFits:{*(v600 + 32), v128}];
      v308 = v307;
      if (v294)
      {
        v309 = *(&v28 + 1) * 0.5 + 4.0 + v583;
      }

      else
      {
        v309 = v583;
      }

      v310 = *&v1[v306];
      sub_ABA490();
      [v310 setFrame:?];

      v311 = [v188 preferredContentSizeCategory];
      v312 = sub_ABA330();

      if (v312)
      {
        v2 = v565;
        v227 = v570;
        if (v562 == &dword_0 + 1)
        {
          v754.origin.x = x;
          v754.origin.y = v309;
          v754.size.width = v308;
          v754.size.height = v128;
          *(v600 + 40) = v128 - CGRectGetMaxY(v754);
        }
      }

      else
      {
        v2 = v565;
        v227 = v570;
      }

LABEL_274:
      if (v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] == 1)
      {
        [v2 frame];
        [v1 bounds];
        sub_ABA4A0();
        v511 = CGRectGetMinX(v793);
        [*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] frame];
        sub_ABA4A0();
        v561 = v511 + CGRectGetMinX(v794);
        v316 = 1;
      }

      else
      {
        v316 = 0;
      }

      goto LABEL_277;
    }

    v313 = OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextStackView;
    v314 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextStackView];
    if (v314)
    {
      v315 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextStackView];
    }

    else
    {
      type metadata accessor for TextStackView();
      v347 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v348 = *v552;
      v315 = v347;
      TextStackView.add(_:)(v348);
      v349 = *&v1[v313];
      *&v1[v313] = v315;

      v314 = 0;
    }

    v350 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
    swift_beginAccess();
    v351 = *&v1[v350];
    v352 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v353 = *&v315[v352];
    *&v315[v352] = v351;
    swift_retain_n();
    v354 = v314;
    sub_2E6210(v353);

    [v315 setHidden:0];
    v355 = [v315 isDescendantOfView:v565];

    if ((v355 & 1) == 0)
    {
      [v565 addSubview:v315];
    }

    v356 = sub_148FD4(v1, v571, v570, v600, 24.0, v593, v594, v189, v34);
    v358 = v357;
    if ([v570 isHidden])
    {
      v359 = v356;
    }

    else
    {
      v359 = v358;
    }

    v360 = *&v1[v553];
    v361 = v360 >> 13;
    v587 = v359;
    if (v360 >> 13 <= 3)
    {
      v362 = v599;
      if (v361 != 1 && v361 != 3)
      {
        goto LABEL_247;
      }

      goto LABEL_199;
    }

    if (v361 == 5)
    {
      if (v360 == 40960)
      {
        goto LABEL_243;
      }
    }

    else
    {
      v362 = v599;
      if (v361 == 4)
      {
        if (v360)
        {
LABEL_199:
          v363 = [v570 isHidden];
          if (v562 != &dword_0 + 1)
          {
            v468 = v359 + 10.0;
            if (v359 + 10.0 <= 36.0)
            {
              v468 = 36.0;
            }

            v469 = 24.0;
            if (v359 > 24.0)
            {
              v469 = v359;
            }

            if (v363)
            {
              v470 = v468;
            }

            else
            {
              v470 = v469;
            }

            v471 = 1;
            swift_beginAccess();
            v472 = *(v600 + 16);
            v473 = *(v600 + 32);
            v474 = *(v600 + 40);
            v777.origin.x = v472;
            v583 = *(v600 + 24);
            v777.origin.y = v583;
            v777.size.width = v473;
            v777.size.height = v474;
            CGRectGetMinX(v777);
            v475 = v473 - v470;
            *(v600 + 32) = v473 - v470;
            v476 = v470 + v472;
            *(v600 + 16) = v476;
            [v565 frame];
            [v1 bounds];
            v128 = v474;
            sub_ABA4A0();
            v477 = CGRectGetMinX(v778);
            v561 = v477 + CGRectGetMinX(*v560);
LABEL_256:
            v492 = v315;
            [v492 setBounds:{0.0, 0.0, v359, 0.0}];
            v493 = *&v1[v553];
            if (v493 >> 13 == 3 || v493 >> 13 == 1) && (v493)
            {
              v494 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView];
              if (v494)
              {
                v495 = v494;
                [v495 setHidden:0];
                [v495 frame];
                [v495 sizeThatFits:{0.0, 0.0}];
                v790.origin.x = v476;
                v790.origin.y = v583;
                v790.size.width = v475;
                v790.size.height = v128;
                CGRectGetMinX(v790);
                v592 = v128;
                sub_ABA470();
                v497 = v496;
                v499 = v498;
                v501 = v500;
                v503 = v502;
                sub_ABA490();
                [v495 setFrame:?];
                v791.origin.x = v497;
                v791.origin.y = v499;
                v791.size.width = v501;
                v791.size.height = v503;
                v504 = CGRectGetWidth(v791) + 12.0;
                swift_beginAccess();
                v475 = v475 - v504;
                *(v600 + 32) = v475;
                *(v600 + 16) = v476 + v504;
                if (v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] == 1)
                {
                  v792.origin.x = v497;
                  v792.origin.y = v499;
                  v792.size.width = v501;
                  v792.size.height = v503;
                  v561 = CGRectGetMinX(v792);

                  v471 = 1;
                  v359 = v587;
                  v128 = v592;
                  if ((v294 & 1) == 0)
                  {
LABEL_266:
                    v505 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
                    [*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] sizeThatFits:{v475, v128}];
                    v506 = [v571 preferredContentSizeCategory];
                    v507 = sub_ABA330();

                    if (v507)
                    {
                      [v570 isHidden];
                    }

                    v508 = *&v1[v505];
                    sub_ABA490();
                    [v508 setFrame:?];

                    v188 = v571;
                    v509 = [v571 preferredContentSizeCategory];
                    v510 = sub_ABA360();

                    if ((v510 & 1) != 0 || v294 != 1)
                    {
                      sub_ABA470();
                      v227 = v570;
                    }

                    else
                    {
                      v227 = v570;
                    }

                    sub_ABA490();
                    sub_ABA4C0();
                    [v492 setCenter:?];

                    v2 = v565;
                    if (v471)
                    {
                      v316 = 1;
                      goto LABEL_277;
                    }

                    goto LABEL_274;
                  }

LABEL_265:
                  v475 = v359 + v475;
                  goto LABEL_266;
                }

                v359 = v587;
                v128 = v592;
              }
            }

            if (!v294)
            {
              goto LABEL_266;
            }

            goto LABEL_265;
          }

          if (v363)
          {
            v364 = [v571 preferredContentSizeCategory];
            v365 = sub_ABA320();

            if (v365)
            {
              v366 = sub_200954();
              [v366 frame];
              v368 = v367;
              v370 = v369;
              v372 = v371;
              v374 = v373;

              v759.origin.x = v368;
              v759.origin.y = v370;
              v759.size.width = v372;
              v759.size.height = v374;
              v359 = v587;
              v375 = CGRectGetWidth(v759);
              v376 = 4.0;
            }

            else
            {
              v787.origin.x = v593;
              v787.origin.y = v594;
              v787.size.width = v362;
              v787.size.height = v34;
              v487 = CGRectGetMinX(v787);
              sub_AB3A00();
              v375 = v487 + v488;
              v376 = 8.0;
            }

            v788.origin.x = v375 + v376;
            v476 = v359 + 10.0 + 16.0;
            v788.origin.y = 0.0;
            v788.size.height = 0.0;
            v582 = v788.origin.x;
            v788.size.width = v359;
            v489 = v476 - CGRectGetMinX(v788);
            swift_beginAccess();
            v475 = *(v600 + 32) - v489;
            *(v600 + 32) = v475;
            v490 = [v571 preferredContentSizeCategory];
            v491 = sub_ABA320();

            if (v491)
            {
              v789.origin.y = 0.0;
              v789.size.height = 0.0;
              v789.origin.x = v582;
              v789.size.width = v359;
              v476 = CGRectGetMaxX(v789) + 10.0;
            }

            v471 = 0;
            v551->origin.x = v476;
            goto LABEL_256;
          }

          swift_beginAccess();
          v479 = v600;
          v785.origin.x = *(v600 + 16);
          v486 = *(v600 + 32);
          v128 = *(v600 + 40);
          v583 = *(v600 + 24);
          v785.origin.y = v583;
          v785.size.width = v486;
          v785.size.height = v128;
          v786.origin.x = CGRectGetMinX(v785);
          v475 = v486 - v359;
          *(v600 + 32) = v486 - v359;
          v786.origin.y = 0.0;
          v786.size.height = 0.0;
          v786.size.width = v359;
          v471 = 0;
          v476 = v359 + CGRectGetMinX(v786);
LABEL_251:
          *(v479 + 16) = v476;
          goto LABEL_256;
        }

LABEL_243:
        [v565 frame];
        v478 = CGRectGetMinX(v779);
        v561 = v478 + CGRectGetMinX(*v560);
        v471 = 1;
        swift_beginAccess();
        v479 = v600;
        v480 = *(v600 + 16);
        v481 = *(v600 + 24);
        v482 = *(v600 + 32);
        v128 = *(v600 + 40);
        v780.origin.x = v480;
        v780.origin.y = v481;
        v780.size.width = v482;
        v780.size.height = v128;
        CGRectGetMinX(v780);
        v583 = v481;
        if (v587 > 24.0)
        {
          v483 = v587;
        }

        else
        {
          v483 = 24.0;
        }

        v475 = v482 - v483;
        *(v600 + 32) = v482 - v483;
        v781.origin.x = v480;
        v781.origin.y = v481;
        v359 = v587;
        v781.size.width = v482 - v483;
        v781.size.height = v128;
        v476 = v483 + CGRectGetMinX(v781);
        goto LABEL_251;
      }
    }

LABEL_247:
    swift_beginAccess();
    v782.origin.x = *(v600 + 16);
    v484 = *(v600 + 32);
    v128 = *(v600 + 40);
    v583 = *(v600 + 24);
    v782.origin.y = v583;
    v782.size.width = v484;
    v782.size.height = v128;
    v783.origin.x = CGRectGetMinX(v782);
    v485 = v783.origin.x;
    v783.origin.y = 0.0;
    v783.size.height = 0.0;
    v783.size.width = v359;
    v475 = v484 - CGRectGetWidth(v783);
    *(v600 + 32) = v475;
    v784.origin.y = 0.0;
    v784.size.height = 0.0;
    v784.origin.x = v485;
    v784.size.width = v359;
    v476 = CGRectGetMaxX(v784);
    v471 = 0;
    *(v600 + 16) = v476;
    goto LABEL_256;
  }

  v290 = v289;
  if ([v290 isHidden])
  {

    goto LABEL_145;
  }

  [v290 sizeToFit];
  [v2 addSubview:v290];
  [v290 frame];
  v291 = v295;

  *(v600 + 32) = *(v600 + 32) - v291;
  if (v554)
  {
    goto LABEL_146;
  }

LABEL_149:
  v296 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v297 = *&v1[v296];
  if (!v297)
  {
    v316 = 0;
    goto LABEL_277;
  }

  v299 = *(v600 + 16);
  v298 = *(v600 + 24);
  v301 = *(v600 + 32);
  v300 = *(v600 + 40);

  v752.origin.x = v299;
  v752.origin.y = v298;
  v752.size.width = v301;
  v752.size.height = v300;
  v302 = CGRectGetMaxX(v752);
  v753.origin.x = v299;
  v586 = v298;
  v591 = v300;
  v753.origin.y = v298;
  v753.size.width = v301;
  v753.size.height = v300;
  v303 = (v291 + CGRectGetMaxX(v753)) * 0.25;
  v304 = *&v1[v553];
  v305 = v304 >> 13;
  v584 = v297;
  if (((v304 >> 13) & 6) == 2)
  {
    v581 = 301.0;
  }

  else
  {
    v581 = (v291 + v302) * 0.5;
  }

  if (v303 < 120.0 && (v305 == 1 || v305 == 3 || v305 == 4 && (v304 & 1) != 0))
  {
    v755.origin.x = v299;
    v755.origin.y = v586;
    v755.size.height = v300;
    v755.size.width = v301;
    v303 = v291 + CGRectGetWidth(v755) + 24.0 - v581;
    v317 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView];
    if (v317)
    {
      [v317 removeFromSuperview];
    }
  }

  else
  {
    v318 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8];
    if ((v318 & 0x2000000000000000) != 0)
    {
      v319 = HIBYTE(v318) & 0xF;
    }

    else
    {
      v319 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle] & 0xFFFFFFFFFFFFLL;
    }

    if (v319)
    {
      v320 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView];
      if (v320)
      {
        v563 = v320;
        [v2 addSubview:v563];
        v321 = *(v552 + 3);
        swift_beginAccess();
        v322 = *(v321 + 112);
        v568 = v226;
        v323 = *(v321 + 120);
        swift_beginAccess();
        v324 = *(v321 + 64);
        v685[1] = *(v321 + 48);
        v685[2] = v324;
        v325 = *(v321 + 96);
        v685[3] = *(v321 + 80);
        v686 = v325;
        v685[0] = *(v321 + 32);
        v556 = v323;

        sub_2F118(v685, &v687);
        v756.origin.x = v299;
        v756.origin.y = v586;
        v756.size.width = v301;
        v756.size.height = v300;
        v326 = CGRectGetHeight(v756);
        v327 = *(v584 + 32);
        v328 = *(v584 + 64);
        v329 = *(v584 + 72);
        v331 = *(v584 + 80);
        v330 = *(v584 + 88);
        v332 = *(v584 + 40);
        v333 = v323;
        v226 = v568;
        sub_108594(v322, v333, v685, v332, v328, v329, v331, v330, v627, v303 + -16.0, v326, v327);
        v671 = v629;
        v672 = v630;
        v673 = v631;
        v674 = v632;
        v667 = v627[0];
        v668 = v627[1];
        v669 = v627[2];
        v670 = v628;

        v188 = v571;
        v681 = v671;
        v682 = v672;
        v683 = v673;
        v684 = v674;
        v677 = v667;
        v678 = v668;
        v679 = v669;
        v680 = v670;
        UIScreen.Dimensions.size.getter(*&v670);
        v691 = v681;
        v692 = v682;
        v693 = v683;
        v694 = v684;
        v687 = v677;
        v688 = v678;
        v689 = v679;
        v690 = v680;
        sub_109B04(v627, &v657);
        TextDrawing.View.textDrawingContext.setter(&v687);
        [v563 setBounds:{0.0, 0.0, v628}];
        v757.origin.x = v299;
        v757.origin.y = v586;
        v757.size.width = v301;
        v757.size.height = v591;
        CGRectGetMaxX(v757);
        v758.origin.x = v299;
        v758.origin.y = v586;
        v758.size.width = v301;
        v758.size.height = v591;
        CGRectGetMinY(v758);
        TextLabelProperties.scaledValue(forValue:text:)(v322, v556, *&v686);
        v334 = [objc_opt_self() defaultMetrics];
        [v334 scaledValueForValue:*&v631];

        [v563 bounds];
        sub_ABA490();
        sub_ABA4C0();
        [v563 setCenter:?];

        sub_109AB0(v627);
        sub_2F174(v685);

        v301 = v301 - v303;
        *(v600 + 32) = v301;
      }
    }
  }

  v335 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistTextDrawingView];
  if (!v335)
  {
LABEL_206:
    v391 = v593;
    v390 = v594;
    v388 = v586;
    goto LABEL_207;
  }

  v336 = *(v552 + 2);
  swift_beginAccess();
  v337 = *(v336 + 112);
  v338 = *(v336 + 120);
  swift_beginAccess();
  v339 = *(v336 + 64);
  v675[1] = *(v336 + 48);
  v675[2] = v339;
  v340 = *(v336 + 96);
  v675[3] = *(v336 + 80);
  v676 = v340;
  v675[0] = *(v336 + 32);
  v341 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
  if ((v341 & 0x2000000000000000) != 0)
  {
    v342 = HIBYTE(v341) & 0xF;
  }

  else
  {
    v342 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName] & 0xFFFFFFFFFFFFLL;
  }

  if (!v342)
  {
    v392 = *(v584 + 32);
    v393 = *(v584 + 40);
    v394 = *(v584 + 72);
    v576 = *(v584 + 64);
    v395 = v337;
    v396 = *(v584 + 80);
    v397 = *(v584 + 88);
    v398 = v335;

    sub_2F118(v675, &v677);
    v399 = v393;
    v400 = v338;
    v401 = v399;
    sub_108594(v395, v400, v675, v399, v576, v394, v396, v397, &v633, 0.0, 0.0, v392);
    v661 = v637;
    v662 = v638;
    v663 = v639;
    v664 = v640;
    v657 = v633;
    v658 = v634;
    v659 = v635;
    v660 = v636;

    v188 = v571;
    v671 = v661;
    v672 = v662;
    v673 = v663;
    v674 = v664;
    v667 = v657;
    v668 = v658;
    v669 = v659;
    v670 = v660;
    UIScreen.Dimensions.size.getter(*&v660);
    v681 = v671;
    v682 = v672;
    v683 = v673;
    v684 = v674;
    v677 = v667;
    v678 = v668;
    v679 = v669;
    v680 = v670;
    sub_109B04(&v633, &v647);
    TextDrawing.View.textDrawingContext.setter(&v677);

    sub_109AB0(&v633);
    sub_2F174(v675);

    goto LABEL_206;
  }

  v343 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_durationTextDrawingView];
  v569 = v337;
  if (v343 && (v226 & 1) != 0)
  {
    v344 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView];
    v345 = v335;
    v346 = v338;

    sub_2F118(v675, &v677);
    if (!v344)
    {
      v543 = v343;
      v798.origin.x = v299;
      v798.origin.y = v586;
      v798.size.height = v591;
      v798.size.width = v301;
      v544 = v291 + CGRectGetMaxX(v798) - v303 + 16.0;
      [v543 frame];
      sub_ABA4A0();
      v545 = CGRectGetMinX(v799);

      v303 = v545 - v544;
    }
  }

  else
  {
    v377 = v335;

    sub_2F118(v675, &v677);
    v346 = v338;
  }

  v575 = v303;
  v760.origin.x = v299;
  v760.origin.y = v586;
  v760.size.width = v301;
  v760.size.height = v591;
  v378 = CGRectGetHeight(v760);
  v379 = *(v584 + 32);
  v380 = *(v584 + 64);
  v381 = *(v584 + 72);
  v383 = *(v584 + 80);
  v382 = *(v584 + 88);
  v384 = *(v584 + 40);
  sub_108594(v569, v346, v675, v384, v380, v381, v383, v382, &v633, v303 + -16.0, v378, v379);
  v661 = v637;
  v662 = v638;
  v663 = v639;
  v664 = v640;
  v657 = v633;
  v658 = v634;
  v659 = v635;
  v660 = v636;

  v671 = v661;
  v672 = v662;
  v673 = v663;
  v674 = v664;
  v667 = v657;
  v668 = v658;
  v669 = v659;
  v670 = v660;
  UIScreen.Dimensions.size.getter(*&v660);
  v681 = v671;
  v682 = v672;
  v683 = v673;
  v684 = v674;
  v677 = v667;
  v678 = v668;
  v679 = v669;
  v680 = v670;
  sub_109B04(&v633, &v647);
  TextDrawing.View.textDrawingContext.setter(&v677);
  v386 = *(&v636 + 1);
  v385 = *&v636;
  v387 = v335;
  [v387 setBounds:{0.0, 0.0, v385, v386}];
  v761.origin.x = v299;
  v761.origin.y = v586;
  v761.size.width = v301;
  v761.size.height = v591;
  CGRectGetMaxX(v761);
  v388 = v586;
  v762.origin.x = v299;
  v762.origin.y = v586;
  v762.size.width = v301;
  v762.size.height = v591;
  CGRectGetMinY(v762);
  TextLabelProperties.scaledValue(forValue:text:)(v569, v346, *&v676);
  v389 = [objc_opt_self() defaultMetrics];
  [v389 scaledValueForValue:*&v639];

  [v387 bounds];
  v391 = v593;
  v390 = v594;
  sub_ABA490();
  sub_ABA4C0();
  [v387 setCenter:?];

  sub_109AB0(&v633);
  sub_2F174(v675);

  v301 = v301 - v575;
  *(v600 + 32) = v301;
  v188 = v571;
LABEL_207:
  v402 = OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView;
  v403 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView];
  v316 = v403 != 0;
  v577 = v403 != 0;
  if (v403)
  {
    v564 = OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView;
    v404 = v403;
    [v404 setHidden:0];
    v405 = *v552;
    swift_beginAccess();
    v406 = v405[14];
    v407 = v405[15];
    swift_beginAccess();
    v408 = *(v405 + 4);
    v665[1] = *(v405 + 3);
    v665[2] = v408;
    v409 = *(v405 + 6);
    v665[3] = *(v405 + 5);
    v666 = v409;
    v665[0] = *(v405 + 2);

    sub_2F118(v665, &v667);
    v410 = sub_148FD4(v1, v188, v227, v600, 24.0, v391, v390, v599, v601);
    v412 = v411;
    v413 = [v227 isHidden];
    v414 = 36.0;
    if (v410 > 36.0)
    {
      v414 = v410;
    }

    if (v413)
    {
      v415 = v414;
    }

    else
    {
      v415 = v412;
    }

    v763.origin.x = v299;
    v763.origin.y = v388;
    v763.size.width = v301;
    v763.size.height = v591;
    v416 = CGRectGetHeight(v763);
    v417 = *(v584 + 32);
    v418 = *(v584 + 64);
    v419 = *(v584 + 72);
    v420 = *(v584 + 80);
    v421 = *(v584 + 88);
    v422 = *(v584 + 40);
    sub_108594(v406, v407, v665, v422, v418, v419, v420, v421, v641, v415, v416, v417);
    v651 = v643;
    v652 = v644;
    v653 = v645;
    v654 = v646;
    v647 = v641[0];
    v648 = v641[1];
    v649 = v641[2];
    v650 = v642;

    v661 = v651;
    v662 = v652;
    v663 = v653;
    v664 = v654;
    v657 = v647;
    v658 = v648;
    v659 = v649;
    v660 = v650;
    UIScreen.Dimensions.size.getter(*&v650);
    v671 = v661;
    v672 = v662;
    v673 = v663;
    v674 = v664;
    v667 = v657;
    v668 = v658;
    v669 = v659;
    v670 = v660;
    sub_109B04(v641, &v611);
    TextDrawing.View.textDrawingContext.setter(&v667);
    [v404 setBounds:{0.0, 0.0, v642}];
    v764.origin.x = v299;
    v764.origin.y = v388;
    v764.size.width = v301;
    v764.size.height = v591;
    CGRectGetMinX(v764);
    v765.origin.x = v299;
    v765.origin.y = v388;
    v765.size.width = v301;
    v765.size.height = v591;
    CGRectGetMinY(v765);
    TextLabelProperties.scaledValue(forValue:text:)(v406, v407, *&v666);
    v423 = [objc_opt_self() defaultMetrics];
    [v423 scaledValueForValue:*&v645];

    [v404 bounds];
    v424 = *&v1[v553];
    v425 = v424 >> 13;
    if (v424 >> 13 == 1 || v425 == 3 || v425 == 4 && (v424 & 1) != 0)
    {
      v766.origin.x = v299;
      v766.origin.y = v586;
      v766.size.height = v591;
      v766.size.width = v301;
      CGRectGetMinX(v766);
    }

    sub_ABA490();
    sub_ABA4C0();
    [v404 setCenter:?];

    [v565 frame];
    [v1 bounds];
    sub_ABA4A0();
    v426 = CGRectGetMinX(v767);
    v427 = CGRectGetMinX(*v560);
    sub_109AB0(v641);

    sub_2F174(v665);

    v561 = v426 + v427;
    v227 = v570;
    v388 = v586;
    v428 = v591;
    v316 = v577;
    v429 = v415;
    v402 = v564;
  }

  else
  {
    v429 = 0.0;
    v428 = v591;
  }

  v430 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView];
  if (v430)
  {
    v431 = *(v552 + 1);
    swift_beginAccess();
    v433 = *(v431 + 112);
    v432 = *(v431 + 120);
    swift_beginAccess();
    v434 = *(v431 + 64);
    v655[1] = *(v431 + 48);
    v655[2] = v434;
    v435 = *(v431 + 96);
    v655[3] = *(v431 + 80);
    v656 = v435;
    v655[0] = *(v431 + 32);

    v436 = v430;
    sub_2F118(v655, &v657);
    v768.origin.x = v299;
    v768.origin.y = v388;
    v768.size.width = v301;
    v768.size.height = v428;
    CGRectGetMinX(v768);
    v769.origin.x = v299;
    v769.origin.y = v388;
    v769.size.width = v301;
    v769.size.height = v428;
    v437 = CGRectGetWidth(v769);
    v438 = *&v1[v402];
    v588 = v436;
    if (v438)
    {
      v439 = v438;
      [v439 frame];
      sub_ABA4A0();
      CGRectGetMinX(v770);
      v771.origin.x = v299;
      v771.origin.y = v388;
      v771.size.width = v301;
      v771.size.height = v428;
      v440 = CGRectGetWidth(v771) - v429;
      v441 = *&v1[v553];
      if ((v441 >> 13 == 3 || v441 >> 13 == 1) && (v441 & 1) != 0 && (v442 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView]) != 0)
      {
        v443 = v433;
        v444 = v432;
        v445 = v442;
        [v445 setHidden:0];
        [v445 frame];
        [v445 sizeThatFits:{0.0, 0.0}];
        sub_ABA470();
        v447 = v446;
        v449 = v448;
        v451 = v450;
        v453 = v452;
        sub_ABA490();
        [v445 setFrame:?];
        v772.origin.x = v447;
        v772.origin.y = v449;
        v772.size.width = v451;
        v772.size.height = v453;
        v428 = v591;
        v454 = CGRectGetWidth(v772);

        v455 = v454 + 12.0;
        swift_beginAccess();
        v301 = v301 - v455;
        *(v600 + 32) = v301;
        v299 = v299 + v455;
        *(v600 + 16) = v299;
        v440 = v440 - v455;
      }

      else
      {
        v443 = v433;
        v444 = v432;
      }
    }

    else
    {
      v440 = v437;
      v443 = v433;
      v444 = v432;
    }

    v773.origin.x = v299;
    v773.origin.y = v388;
    v773.size.width = v301;
    v773.size.height = v428;
    v456 = CGRectGetHeight(v773);
    v457 = *(v584 + 32);
    v458 = *(v584 + 64);
    v459 = *(v584 + 72);
    v460 = *(v584 + 80);
    v461 = *(v584 + 88);
    v462 = *(v584 + 40);
    sub_108594(v443, v444, v655, v462, v458, v459, v460, v461, &v647, v440, v456, v457);
    v607 = v651;
    v608 = v652;
    v609 = v653;
    v610 = v654;
    v603 = v647;
    v604 = v648;
    v605 = v649;
    v606 = v650;

    v615 = v607;
    v616 = v608;
    v617 = v609;
    v618 = v610;
    v611 = v603;
    v612 = v604;
    v613 = v605;
    v614 = v606;
    UIScreen.Dimensions.size.getter(*&v605);
    v661 = v615;
    v662 = v616;
    v663 = v617;
    v664 = v618;
    v657 = v611;
    v658 = v612;
    v659 = v613;
    v660 = v614;
    sub_109B04(&v647, &v602);
    TextDrawing.View.textDrawingContext.setter(&v657);
    v463 = v650;
    v464 = v588;
    [v464 setBounds:{0.0, 0.0, v463}];
    v774.origin.x = v299;
    v774.origin.y = v388;
    v774.size.width = v301;
    v774.size.height = v428;
    CGRectGetMinY(v774);
    TextLabelProperties.scaledValue(forValue:text:)(v443, v444, *&v656);
    v465 = [objc_opt_self() defaultMetrics];
    [v465 scaledValueForValue:*&v653];

    [v464 bounds];
    sub_ABA490();
    sub_ABA4C0();
    [v464 setCenter:?];
    swift_beginAccess();
    *(v600 + 32) = v301 - v581;
    if (v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] == 1)
    {
      v2 = v565;
      [v565 frame];
      [v1 bounds];
      sub_ABA4A0();
      v466 = CGRectGetMinX(v775);
      [v464 frame];

      sub_ABA4A0();
      v467 = CGRectGetMinX(v776);

      sub_109AB0(&v647);
      sub_2F174(v655);

      v561 = v466 + v467;
      v316 = 1;
      v188 = v571;
      v227 = v570;
    }

    else
    {

      sub_109AB0(&v647);
      sub_2F174(v655);

      v188 = v571;
      v227 = v570;
      v316 = v577;
      v2 = v565;
    }
  }

  else
  {

    v2 = v565;
    v188 = v571;
  }

LABEL_277:
  v512 = sub_200954();
  v513 = [v512 isHidden];

  v514 = v227;
  if ((v513 & 1) == 0)
  {
    v515 = sub_14AF9C();
    [v515 sizeThatFits:{0.0, 0.0}];

    v516 = [v188 preferredContentSizeCategory];
    sub_ABA320();

    if ([v227 isHidden])
    {
      [v188 horizontalSizeClass];
    }

    v517 = v227;
    if ([v227 isHidden])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E20);
      v518 = swift_allocObject();
      v519 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView];
      *(v518 + 32) = v519;
      *(v518 + 16) = xmmword_AF85F0;
      v520 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextStackView];
      *(v518 + 40) = v520;
      v521 = v520;
      v522 = v519;
      v523 = sub_1494F4(v518);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E28);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v517 = v227;
      if (v523)
      {

        v517 = v523;
      }
    }

    [v517 frame];
    sub_ABA4A0();
    sub_ABA470();
    v514 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___favoriteIndicator];
    sub_ABA490();
    [v514 setFrame:?];
  }

  if (!v316)
  {
    [v2 frame];
    [v1 bounds];
    sub_ABA4A0();
    v561 = CGRectGetMinX(v795) + *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_proposedHorizontalLockupSeparatorInset + 8];
  }

  if ((v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator] & 1) == 0)
  {
    type metadata accessor for UIEdgeInsets(0);
    *&v611 = v550;
    *(&v611 + 1) = v561;
    *&v612 = v549;
    *(&v612 + 1) = v548;
    [v1 separatorInset];
    *&v603 = v524;
    *(&v603 + 1) = v525;
    *&v604 = v526;
    *(&v604 + 1) = v527;
    if (sub_AB38D0())
    {
      [v1 setSeparatorInset:{v550, v561, v549, v548}];
    }
  }

  v528 = *&v1[v598];
  if (v528)
  {
    v529 = v528;
    if ([v529 isHidden])
    {

      goto LABEL_292;
    }

    v530 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView];
    if (v530)
    {
      v531 = v530;
      v532 = [v531 superview];
      if (!v532 || (v532, ([v531 isHidden] & 1) != 0))
      {

        goto LABEL_298;
      }

      [v531 frame];
      sub_ABA4A0();
      CGRectGetMaxX(v796);
      [v531 frame];
      v536 = v535;
      v538 = v537;
      v540 = v539;
      v542 = v541;

      v797.origin.x = v536;
      v797.origin.y = v538;
      v797.size.width = v540;
      v797.size.height = v542;
      CGRectGetMinY(v797);
      [v529 frame];
      sub_ABA490();
      [v529 setFrame:?];

LABEL_292:
    }

    else
    {
LABEL_298:

      v533 = *(v552 + 1);
      v534 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
      sub_37C7B0(v529, v533);
    }
  }

  else
  {

    v529 = v227;
  }
}

double sub_148FD4(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5, CGFloat a6, CGFloat a7, double a8, double a9)
{
  if ((*(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8) & 1) == 0)
  {
    v17 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber);
    v18 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
    swift_beginAccess();
    v19 = *(a1 + v18);
    if (v19)
    {
      v65 = a3;

      [a2 displayScale];
      v20 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_textComponents);
      swift_beginAccess();
      v21 = v20[3];
      v22 = v20[5];
      v23 = v20[6];
      v70[2] = v20[4];
      v70[3] = v22;
      v70[4] = v23;
      v70[0] = v20[2];
      v70[1] = v21;
      v64 = v17;
      v68[0] = v17;
      sub_2F118(v70, v69);
      sub_ABB330();
      v24 = sub_AB9420();
      v71._countAndFlagsBits = 57;
      v71._object = 0xE100000000000000;
      sub_AB9550(v71, v24);
      v25 = sub_AB9260();
      v26 = [v25 intValue];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E10);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_AF4EC0;
      *(v27 + 56) = &type metadata for Int32;
      *(v27 + 64) = &protocol witness table for Int32;
      *(v27 + 32) = v26;
      v28 = sub_AB9270();
      v30 = v29;

      v31 = *(v19 + 32);
      v32 = *(v19 + 64);
      v33 = *(v19 + 72);
      v34 = *(v19 + 80);
      v35 = *(v19 + 88);
      v36 = *(v19 + 40);
      sub_108594(v28, v30, v70, v36, v32, v33, v34, v35, v67, a8, a9, v31);

      sub_109AB0(v67);

      [v65 isHidden];
      if ((*(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_maximumTrackNumberForSizing + 8) & 1) == 0)
      {
        v69[0] = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_maximumTrackNumberForSizing);
        sub_ABB330();
        v37 = sub_AB9420();
        v72._countAndFlagsBits = 57;
        v72._object = 0xE100000000000000;
        sub_AB9550(v72, v37);
        v38 = sub_AB9260();
        v39 = [v38 intValue];

        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_AF4EC0;
        *(v40 + 56) = &type metadata for Int32;
        *(v40 + 64) = &protocol witness table for Int32;
        *(v40 + 32) = v39;
        v41 = sub_AB9270();
        v43 = v42;

        v44 = *(v19 + 32);
        v45 = *(v19 + 64);
        v46 = *(v19 + 72);
        v47 = *(v19 + 80);
        v48 = *(v19 + 88);
        v49 = *(v19 + 40);
        sub_108594(v41, v43, v70, v49, v45, v46, v47, v48, v68, a8, a9, v44);

        sub_109AB0(v68);

        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_AF4EC0;
        *(v50 + 56) = &type metadata for Int;
        *(v50 + 64) = &protocol witness table for Int;
        *(v50 + 32) = v64;
        v51 = sub_AB9270();
        v53 = v52;

        v73.origin.x = a6;
        v73.origin.y = a7;
        v73.size.width = a8;
        v73.size.height = a9;
        Width = CGRectGetWidth(v73);
        swift_beginAccess();
        Height = CGRectGetHeight(*(a4 + 16));
        v56 = *(v19 + 32);
        v57 = *(v19 + 64);
        v58 = *(v19 + 72);
        v59 = *(v19 + 80);
        v60 = *(v19 + 88);
        v61 = *(v19 + 40);
        sub_108594(v51, v53, v70, v61, v57, v58, v59, v60, v69, Width, Height, v56);

        sub_109AB0(v69);
      }

      sub_AB3A00();
      a5 = v62;
      sub_AB3A00();
      sub_2F174(v70);
    }
  }

  return a5;
}

void *sub_1494F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v4 = *v2++;
      v3 = v4;
      if (v4)
      {
        v5 = v3;
        v6 = [v5 superview];
        if (v6)
        {

          if (![v5 isHidden])
          {
            return v3;
          }
        }
      }

      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t sub_1495D0(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_ABA330();

  return v2 & 1;
}

float64x2_t sub_149620(void *a1, uint64_t a2, float64x2_t *a3)
{
  v6 = objc_opt_self();
  v7 = [v6 defaultMetrics];
  v8 = sub_ABA310();
  sub_AB9EF0();

  [a1 displayScale];
  sub_AB39F0();
  v16 = v9;
  v10 = [v6 defaultMetrics];
  v11 = sub_ABA310();
  sub_AB9EF0();

  [a1 displayScale];
  sub_AB39F0();
  v15 = v12;
  swift_beginAccess();
  *(a2 + 40) = v16 + *(a2 + 40);
  swift_beginAccess();
  v13.f64[0] = v16;
  v13.f64[1] = v15;
  result = vsubq_f64(a3[1], v13);
  a3[1] = result;
  return result;
}

id sub_1497E8()
{
  v1 = OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkBackgroundView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [objc_opt_self() whiteColor];
    [v4 setBackgroundColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1498AC()
{
  v1 = OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent];
  }

  else
  {
    v2 = sub_149914(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_149914(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v3 = __chkstk_darwin(v2 - 8);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v40 - v5;
  type metadata accessor for ArtworkComponentImageView();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v8 = sub_80104(v7);

  *(v8 + 24) = 0x70756B636F6CLL;
  *(v8 + 32) = 0xE600000000000000;

  v9 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  *(v8 + 16) = *(v9 + 16);

  v10 = [a1 traitCollection];
  v11 = [objc_opt_self() defaultMetrics];
  v12 = sub_ABA310();
  v44 = v10;
  sub_AB9EF0();
  v14 = v13;

  v15 = *(v8 + 80);
  v16 = *(v8 + 88);
  *(v8 + 80) = v14;
  *(v8 + 88) = v14;
  sub_75614(v15, v16);
  v42 = OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog;
  v41 = a1;
  v17 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog];
  v18 = v17;
  sub_74EA4(v17);
  v19 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder];
  v20 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder];
  v21 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 8];
  v23 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 16];
  v22 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 24];
  v24 = *(v19 + 4);
  v25 = *(v19 + 5);
  v26 = *(v8 + 168);
  v45[0] = *(v8 + 152);
  v45[1] = v26;
  v45[2] = *(v8 + 184);
  *(v8 + 152) = v20;
  *(v8 + 160) = v21;
  *(v8 + 168) = v23;
  *(v8 + 176) = v22;
  *(v8 + 184) = v24;
  *(v8 + 192) = v25;
  sub_80C9C(v20, v21, v23, v22);
  sub_80C9C(v20, v21, v23, v22);
  sub_75948(v45);
  sub_12E1C(v45, &unk_DF8690);
  sub_2F1C8(v20, v21, v23, v22);
  v27 = *(v9 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v28 = *(v9 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);
  v29 = (v8 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v30 = *(v8 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  *v29 = v27;
  v29[1] = v28;
  sub_307CC(v27);
  sub_17654(v30);
  sub_ABA670();
  v31 = sub_ABA680();
  (*(*(v31 - 8) + 56))(v6, 0, 1, v31);
  v32 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  v33 = v43;
  sub_15F84(v8 + v32, v43, &unk_DFFBC0);
  swift_beginAccess();
  sub_8A01C(v6, v8 + v32);
  swift_endAccess();
  sub_75AE8(v33);
  sub_12E1C(v33, &unk_DFFBC0);
  sub_12E1C(v6, &unk_DFFBC0);
  [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.16];
  UIView.Border.init(thickness:color:)();
  sub_75E64(v35, v34 & 1, v36);
  v37 = *&v41[v42];
  v38 = v37;
  sub_74EA4(v37);
  return v8;
}

void sub_149D50()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle;
  sub_14C0F8(v2, *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle], &v54);
  v4 = v54;
  v5 = v55;
  v6 = v56;

  *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = v4;
  v7 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  *(v7 + 80) = v4;
  sub_75614(v8, v9);
  v10 = &v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  v54 = v5;
  v55 = v6;
  v11 = *v10;
  v12 = *(v10 + 1);
  *v10 = v5;
  *(v10 + 1) = v6;
  v52 = v11;
  v53 = v12;
  if (sub_AB38D0())
  {
    [v1 setNeedsLayout];
  }

  v13 = *&v1[v3];
  if ((v13 & 0xE000) != 0x4000 || (v13 & 1) == 0)
  {
    v15 = *(v7 + 144);
    *(v7 + 144) = 1;
    if (v15 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = *(v7 + 144);
  *(v7 + 144) = 2;
  if (v14 != 2)
  {
LABEL_8:
    v16 = [*(v7 + 112) image];
    sub_788B8(v16);
  }

LABEL_9:
  v17 = *&v1[v3];
  if (v17 >> 13)
  {
    if (v17 >> 13 != 2 || (v17 & 0x100) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v17 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1498AC();
  v18 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkCatalog];
  v19 = v18;
  sub_74EA4(v18);

  v20 = OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent;
  v21 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell____lazy_storage___badgeArtworkComponent];
  v22 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder];
  v23 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 8];
  v24 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 16];
  v25 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 24];
  v26 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 32];
  v27 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeArtworkPlaceholder + 40];
  v28 = *(v21 + 168);
  v54 = *(v21 + 152);
  v55 = v28;
  v56 = *(v21 + 184);
  *(v21 + 152) = v22;
  *(v21 + 160) = v23;
  *(v21 + 168) = v24;
  *(v21 + 176) = v25;
  *(v21 + 184) = v26;
  *(v21 + 192) = v27;
  sub_80C9C(v22, v23, v24, v25);
  sub_80C9C(v22, v23, v24, v25);

  sub_75948(&v54);
  sub_12E1C(&v54, &unk_DF8690);
  sub_2F1C8(v22, v23, v24, v25);

  v29 = *&v1[v20];
  v30 = *(v29 + 144);
  *(v29 + 144) = 2;
  if (v30 != 2)
  {
    v31 = *(v29 + 112);

    v32 = [v31 image];
    sub_788B8(v32);
  }

LABEL_16:
  v33 = *&v1[v3];
  v34 = OBJC_IVAR____TtC16MusicApplication8SongCell_chevronImageView;
  v35 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_chevronImageView];
  if (v33 == 40960 || v33 >> 13 < 5)
  {
    if (v35)
    {
      [*&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_chevronImageView] removeFromSuperview];
    }
  }

  else
  {
    if (v35)
    {
      v36 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_chevronImageView];
      v37 = v36;
    }

    else
    {
      v38 = [v1 traitCollection];
      v39 = [v38 preferredContentSizeCategory];

      v40 = sub_45B16C();
      v37 = [objc_allocWithZone(UIImageView) initWithImage:v40];

      v36 = 0;
      v35 = *&v1[v34];
    }

    *&v1[v34] = v37;
    v41 = v36;
    v42 = v37;

    [v1 addSubview:v42];
  }

  v43 = *&v1[v3];
  if (v43 >> 13 == 3 || v43 >> 13 == 1) && (v43)
  {
    v44 = OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView;
    v45 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView];
    if (v45)
    {
      v46 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView];
      v47 = v46;
    }

    else
    {
      sub_13C80(0, &qword_DE8700);
      v49 = UIImage.init(systemName:pointSize:weight:)(16.0, 0x6F6E2E636973756DLL, 0xED000076742E6574, 4);
      v47 = [objc_allocWithZone(UIImageView) initWithImage:v49];

      v46 = 0;
      v45 = *&v1[v44];
    }

    *&v1[v44] = v47;
    v50 = v46;
    v51 = v47;

    [v1 addSubview:v51];
  }

  else
  {
    v48 = *&v1[OBJC_IVAR____TtC16MusicApplication8SongCell_musicVideoGlyphImageView];
    if (v48)
    {
      [v48 removeFromSuperview];
    }
  }
}

void sub_14A238(void *a1, double a2)
{
  v3 = v2;
  if (![a1 horizontalSizeClass])
  {
    return;
  }

  if ([a1 horizontalSizeClass] == &dword_0 + 1 || a2 < 465.0)
  {
    v8 = 1;
  }

  else
  {
    v7 = [a1 preferredContentSizeCategory];
    v8 = sub_ABA320();
  }

  v9 = v3[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem];
  v10 = [*(*&v3[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 112) isHidden];
  v11 = OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle;
  v12 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
  sub_143FEC(a1, v8 & 1, v9, v10 ^ 1, *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle], v3[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled]);
  if (v8)
  {
    v13 = [v3 contentView];
    v14 = *&v3[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v15 = [v14 superview];
    if (v15 && (v16 = v15, sub_13C80(0, &qword_DF12A0), v17 = v13, v18 = sub_ABA790(), v17, v16, (v18 & 1) != 0))
    {
      [v14 setHidden:0];
    }

    else
    {
      [v13 addSubview:v14];
    }

    v26 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView];
    if (v26)
    {
      [v26 setHidden:1];
    }

    v27 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView];
    if (v27)
    {
      [v27 setHidden:1];
    }

    v28 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_artistTextDrawingView];
    if (v28)
    {
      [v28 setHidden:1];
    }

    v29 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView];
    if (v29)
    {

      [v29 setHidden:1];
    }

    return;
  }

  v19 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextStackView];
  if (v19)
  {
    [v19 setHidden:1];
  }

  [*&v3[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] setHidden:1];
  v20 = OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView;
  v21 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_badgeView];
  if (v21)
  {
    [v21 setHidden:1];
  }

  v22 = [v3 contentView];
  if ((v3[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8] & 1) == 0)
  {
    v23 = OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView;
    v24 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView];
    if (v24)
    {
      v25 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumberTextDrawingView];
    }

    else
    {
      type metadata accessor for TextDrawing.View();
      v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v31 = *&v3[v23];
      *&v3[v23] = v30;
      v25 = v30;

      v24 = 0;
    }

    v32 = v24;
    v33 = [v25 superview];
    if (v33 && (v34 = v33, sub_13C80(0, &qword_DF12A0), v35 = v22, v36 = sub_ABA790(), v35, v34, (v36 & 1) != 0))
    {
      [v25 setHidden:0];
    }

    else
    {
      [v22 addSubview:v25];
    }
  }

  v37 = *&v3[v20];
  if (v37)
  {
    v38 = v3[v12];
    v39 = v37;
    v40 = 1.0;
    if (v38 == 1)
    {
      UIInterfaceGetContentDisabledAlpha();
    }

    [v39 setAlpha:v40];

    v41 = *&v3[v20];
    if (v41)
    {
      v42 = v41;
      v43 = [v42 superview];
      if (v43 && (v44 = v43, sub_13C80(0, &qword_DF12A0), v45 = v22, v46 = sub_ABA790(), v45, v44, (v46 & 1) != 0))
      {
        [v42 setHidden:0];
      }

      else
      {
        [v22 addSubview:v42];
      }
    }
  }

  v47 = OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView;
  v48 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView];
  if (v48)
  {
    v49 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_titleTextDrawingView];
  }

  else
  {
    type metadata accessor for TextDrawing.View();
    v50 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v51 = *&v3[v47];
    *&v3[v47] = v50;
    v49 = v50;

    v48 = 0;
  }

  v52 = v48;
  v53 = [v49 superview];
  if (v53 && (v54 = v53, sub_13C80(0, &qword_DF12A0), v55 = v22, v56 = sub_ABA790(), v55, v54, (v56 & 1) != 0))
  {
    [v49 setHidden:0];
  }

  else
  {
    [v22 addSubview:v49];
  }

  v57 = OBJC_IVAR____TtC16MusicApplication8SongCell_artistTextDrawingView;
  v58 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_artistTextDrawingView];
  if (v58)
  {
    v81 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_artistTextDrawingView];
  }

  else
  {
    type metadata accessor for TextDrawing.View();
    v59 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v60 = *&v3[v57];
    *&v3[v57] = v59;
    v81 = v59;

    v58 = 0;
  }

  v61 = v58;
  v62 = [v81 superview];
  if (v62 && (v63 = v62, sub_13C80(0, &qword_DF12A0), v64 = v22, v65 = sub_ABA790(), v64, v63, (v65 & 1) != 0))
  {
    [v81 setHidden:0];
  }

  else
  {
    [v22 addSubview:v81];
  }

  v66 = *&v3[v11] >> 13;
  if (!v66)
  {
    goto LABEL_63;
  }

  if (v66 == 2)
  {
    if (a2 > 1500.0)
    {
      goto LABEL_63;
    }

LABEL_66:
    v70 = OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView;
    v71 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView];
    if (v71)
    {
      [v71 removeFromSuperview];
      v80 = *&v3[v70];
    }

    else
    {
      v80 = 0;
    }

    *&v3[v70] = 0;

    v79 = v80;
    goto LABEL_76;
  }

  if (v66 != 4)
  {
    goto LABEL_66;
  }

LABEL_63:
  v67 = OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView;
  v68 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView];
  if (v68)
  {
    v69 = *&v3[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTextDrawingView];
  }

  else
  {
    type metadata accessor for TextDrawing.View();
    v72 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v73 = *&v3[v67];
    *&v3[v67] = v72;
    v69 = v72;

    v68 = 0;
  }

  v74 = v68;
  v75 = [v69 superview];
  if (v75 && (v76 = v75, sub_13C80(0, &qword_DF12A0), v77 = v22, v78 = sub_ABA790(), v77, v76, (v78 & 1) != 0))
  {
    [v69 setHidden:0];
  }

  else
  {
    [v22 addSubview:v69];
  }

  v79 = v81;
LABEL_76:
}