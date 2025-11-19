uint64_t sub_1E15615D8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1E1561668()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v13 = MEMORY[0x1E69E6158];
  *&v12 = 1701273968;
  *(&v12 + 1) = 0xE400000000000000;
  sub_1E1301CF0(&v12, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v11, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (v4 != 2)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v13 = sub_1E1380D6C();
    *&v12 = v5;
    sub_1E1301CF0(&v12, v11);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v11, 0x6E6F737265507369, 0xEE0064657A696C61, v6);
  }

  if (*(v2 + 16))
  {
    v7 = sub_1E13018F8(0x6369706F74, 0xE500000000000000);
    if (v8)
    {
      sub_1E137A5C4(*(v2 + 56) + 32 * v7, &v12);
      if (swift_dynamicCast())
      {
        v9 = HIBYTE(*(&v11[0] + 1)) & 0xFLL;
        if ((*(&v11[0] + 1) & 0x2000000000000000) == 0)
        {
          v9 = *&v11[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v9)
        {
        }
      }
    }
  }

  return sub_1E1AF3A7C();
}

uint64_t PageMetricsEvent.__allocating_init(error:pageUrl:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PageMetricsEvent.init(error:pageUrl:)(a1, a2, a3);
  return v6;
}

uint64_t PageMetricsEvent.init(error:pageUrl:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 32) = 2;
  v8 = MEMORY[0x1E69E7CC8];
  v9 = MEMORY[0x1E69E6158];
  v41 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E6158];
  *&v37 = 0x726F727245;
  *(&v37 + 1) = 0xE500000000000000;
  sub_1E1301CF0(&v37, &v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(&v34, 1701273968, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v41 = v8;
  v38 = v9;
  strcpy(&v37, "AppStoreError");
  HIWORD(v37) = -4864;
  sub_1E1301CF0(&v37, &v34);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  *&v33[0] = v8;
  sub_1E159827C(&v34, 0x6570795465676170, 0xE800000000000000, v11);
  v41 = v8;
  if (a3)
  {
    v38 = v9;
    *&v37 = a2;
    *(&v37 + 1) = a3;
    sub_1E1301CF0(&v37, &v34);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    *&v33[0] = v8;
    sub_1E159827C(&v34, 0x6C725565676170, 0xE700000000000000, v12);
    v41 = v8;
    if (!a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1E1496610(0x6C725565676170, 0xE700000000000000, &v37);
    sub_1E1308058(&v37, &qword_1ECEB2DF0);
    if (!a1)
    {
      goto LABEL_8;
    }
  }

  swift_getErrorValue();
  *&v37 = swift_getDynamicType();
  *(&v37 + 1) = v40;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB58D8);
  v14 = sub_1E1AF5E8C();
  v38 = v9;
  *&v37 = v14;
  *(&v37 + 1) = v15;
  sub_1E1301CF0(&v37, &v34);
  v16 = v41;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(&v34, 0x707954726F727265, 0xE900000000000065, v17);
  *&v33[0] = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47B8);
  if (swift_dynamicCast())
  {
    sub_1E1361B28(&v34, &v37);
    v19 = v38;
    v20 = v39;
    __swift_project_boxed_opaque_existential_1Tm(&v37, v38);
    v21 = (*(v20 + 16))(v19, v20);
    *(&v35 + 1) = v9;
    *&v34 = v21;
    *(&v34 + 1) = v22;
    sub_1E1301CF0(&v34, v33);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v33, 0xD000000000000010, 0x80000001E1B60D90, v23);
    v41 = v16;
    v24 = v39;
    v25 = __swift_project_boxed_opaque_existential_1Tm(&v37, v38);
    v26 = MEMORY[0x1EEE9AC00](v25);
    (*(v24 + 24))(sub_1E15636C0, v26);

    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_1E1308058(&v34, &qword_1ECEB47C0);
    swift_getErrorValue();
    v27 = sub_1E1AF75AC();
    v38 = v9;
    *&v37 = v27;
    *(&v37 + 1) = v28;
    sub_1E1301CF0(&v37, &v34);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&v33[0] = v16;
    sub_1E159827C(&v34, 0xD000000000000010, 0x80000001E1B60D90, v29);

    v41 = v16;
  }

LABEL_8:
  *(v4 + 33) = 0;
  v30 = v41;

  v31 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v30;
  *(v4 + 24) = v31;

  return v4;
}

uint64_t sub_1E1561D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E137A5C4(a3, v6);

  return sub_1E138692C(v6, a1, a2);
}

uint64_t sub_1E1561DC0()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1E13018F8(0x6C725565676170, 0xE700000000000000);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1E137A5C4(*(v1 + 56) + 32 * v2, v6);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E1561E94()
{
  v0 = sub_1E1AF3ABC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E155F3C8();
  v4 = sub_1E1AF3AAC();
  (*(v1 + 8))(v3, v0);
  v24 = MEMORY[0x1E69E6158];
  *&v23 = 0x686372616573;
  *(&v23 + 1) = 0xE600000000000000;
  sub_1E1301CF0(&v23, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v4;
  sub_1E159827C(v22, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v6 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7220);
  v7 = sub_1E1AF523C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E1B02CD0;
  v12 = v11 + v10;
  if (qword_1EE1E37C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_1EE1E37D0);
  v14 = *(v8 + 16);
  v14(v12, v13, v7);
  if (qword_1EE1E3758 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, qword_1EE1E3760);
  v14(v12 + v9, v15, v7);
  sub_1E1498AF4(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v6 + 16))
  {
    v16 = sub_1E13018F8(0x6369706F74, 0xE500000000000000);
    if (v17)
    {
      sub_1E137A5C4(*(v6 + 56) + 32 * v16, &v23);
      if (swift_dynamicCast())
      {
        v18 = HIBYTE(*(&v22[0] + 1)) & 0xFLL;
        if ((*(&v22[0] + 1) & 0x2000000000000000) == 0)
        {
          v18 = *&v22[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v18)
        {
        }
      }
    }
  }

  return sub_1E1AF3A7C();
}

uint64_t SearchMetricsEvent.__allocating_init(eventFields:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t SearchMetricsEvent.init(eventFields:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t _s11AppStoreKit12MetricsEventCfd_0()
{

  return v0;
}

uint64_t sub_1E15622B0()
{

  return swift_deallocClassInstance();
}

AppStoreKit::MediaMetricsEvent::ActionType_optional __swiftcall MediaMetricsEvent.ActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaMetricsEvent.ActionType.rawValue.getter()
{
  v1 = 2036427888;
  v2 = 1801807219;
  if (*v0 != 2)
  {
    v2 = 0x756A644165746172;
  }

  if (*v0)
  {
    v1 = 1886352499;
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

uint64_t sub_1E15623CC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E156247C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1562518()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E15625D0(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 2036427888;
  v4 = 0xE400000000000000;
  v5 = 1801807219;
  if (*v1 != 2)
  {
    v5 = 0x756A644165746172;
    v4 = 0xEA00000000007473;
  }

  if (*v1)
  {
    v3 = 1886352499;
    v2 = 0xE400000000000000;
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

AppStoreKit::MediaMetricsEvent::ActionDetails_optional __swiftcall MediaMetricsEvent.ActionDetails.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaMetricsEvent.ActionDetails.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x79616C706F747561;
    v8 = 0x737561706F747561;
    if (v1 != 10)
    {
      v8 = 0x726174736F747561;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x64656E6E6162;
    v10 = 0x736572756C696166;
    if (v1 != 7)
    {
      v10 = 0x7075727265746E69;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6574656C706D6F63;
    v3 = 0x7478654E70696B73;
    v4 = 0x7665725070696B73;
    if (v1 != 4)
    {
      v4 = 0x6568744F79616C70;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x6573756170;
    if (v1 != 1)
    {
      v5 = 0x6976697463616E69;
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
}

uint64_t sub_1E1562828()
{
  v0 = MediaMetricsEvent.ActionDetails.rawValue.getter();
  v2 = v1;
  if (v0 == MediaMetricsEvent.ActionDetails.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E1AF74AC();
  }

  return v5 & 1;
}

uint64_t sub_1E15628C4()
{
  sub_1E1AF762C();
  MediaMetricsEvent.ActionDetails.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E156292C()
{
  MediaMetricsEvent.ActionDetails.rawValue.getter();
  sub_1E1AF5F0C();
}

uint64_t sub_1E1562990()
{
  sub_1E1AF762C();
  MediaMetricsEvent.ActionDetails.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1562A00@<X0>(uint64_t *a1@<X8>)
{
  result = MediaMetricsEvent.ActionDetails.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MediaMetricsEvent.ActionContext.rawValue.getter()
{
  if (*v0)
  {
    return 0x657263736C6C7566;
  }

  else
  {
    return 0x656E696C6E69;
  }
}

uint64_t sub_1E1562A70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657263736C6C7566;
  }

  else
  {
    v3 = 0x656E696C6E69;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E65;
  }

  if (*a2)
  {
    v5 = 0x657263736C6C7566;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006E65;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E1562B18()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1562B9C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t static MediaMetricsEvent.fillIn(template:actionType:actionDetails:actionContext:url:duration:position:)@<X0>(unsigned __int8 *a1@<X1>, unsigned __int8 *a2@<X2>, unsigned __int8 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char a9)
{
  v56[0] = a7;
  v56[1] = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v56 - v16;
  v18 = *a1;
  v19 = *a2;
  v20 = *a3;
  v21 = sub_1E1AF3AAC();
  v22 = MEMORY[0x1E69E6158];
  v60 = MEMORY[0x1E69E6158];
  *&v59 = 0x616964656DLL;
  *(&v59 + 1) = 0xE500000000000000;
  sub_1E1301CF0(&v59, v58);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v21;
  sub_1E159827C(v58, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v24 = v57;
  v61 = v57;
  if (v18 <= 1)
  {
    v25 = 0xE400000000000000;
    if (v18)
    {
      v26 = 1886352499;
    }

    else
    {
      v26 = 2036427888;
    }
  }

  else if (v18 == 2)
  {
    v25 = 0xE400000000000000;
    v26 = 1801807219;
  }

  else
  {
    if (v18 != 3)
    {
      sub_1E1496610(0x79546E6F69746361, 0xEA00000000006570, &v59);
      sub_1E1308058(&v59, &qword_1ECEB2DF0);
      if (v19 == 12)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    v25 = 0xEA00000000007473;
    v26 = 0x756A644165746172;
  }

  v60 = v22;
  *&v59 = v26;
  *(&v59 + 1) = v25;
  sub_1E1301CF0(&v59, v58);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v24;
  sub_1E159827C(v58, 0x79546E6F69746361, 0xEA00000000006570, v35);
  v61 = v57;
  if (v19 == 12)
  {
LABEL_17:
    sub_1E1496610(0x65446E6F69746361, 0xED0000736C696174, &v59);
    sub_1E1308058(&v59, &qword_1ECEB2DF0);
    if (v20 == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

LABEL_9:
  LOBYTE(v58[0]) = v19;
  v27 = MediaMetricsEvent.ActionDetails.rawValue.getter();
  v60 = v22;
  *&v59 = v27;
  *(&v59 + 1) = v28;
  sub_1E1301CF0(&v59, v58);
  v29 = v61;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v29;
  sub_1E159827C(v58, 0x65446E6F69746361, 0xED0000736C696174, v30);
  v61 = v57;
  if (v20 == 2)
  {
LABEL_18:
    sub_1E1496610(0x6F436E6F69746361, 0xED0000747865746ELL, &v59);
    sub_1E1308058(&v59, &qword_1ECEB2DF0);
    goto LABEL_19;
  }

LABEL_10:
  v31 = 0x656E696C6E69;
  if (v20)
  {
    v31 = 0x657263736C6C7566;
  }

  v32 = 0xEA00000000006E65;
  v60 = v22;
  if ((v20 & 1) == 0)
  {
    v32 = 0xE600000000000000;
  }

  *&v59 = v31;
  *(&v59 + 1) = v32;
  sub_1E1301CF0(&v59, v58);
  v33 = v61;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v33;
  sub_1E159827C(v58, 0x6F436E6F69746361, 0xED0000747865746ELL, v34);
  v61 = v57;
LABEL_19:
  sub_1E1307FE8(a4, v17);
  v36 = sub_1E1AEFCCC();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v17, 1, v36) == 1)
  {
    sub_1E1308058(v17, &unk_1ECEB4B60);
    sub_1E1496610(7107189, 0xE300000000000000, &v59);
    sub_1E1308058(&v59, &qword_1ECEB2DF0);
    v38 = a9;
    if (a6)
    {
LABEL_25:
      if (v38)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v39 = sub_1E1AEFBDC();
    v60 = v22;
    *&v59 = v39;
    *(&v59 + 1) = v40;
    (*(v37 + 8))(v17, v36);
    sub_1E1301CF0(&v59, v58);
    v41 = v61;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v41;
    sub_1E159827C(v58, 7107189, 0xE300000000000000, v42);
    v61 = v57;
    v38 = a9;
    if (a6)
    {
      goto LABEL_25;
    }
  }

  v43 = sub_1E1563338(a5, 0);
  if (v43)
  {
    v44 = v43;
    v60 = sub_1E1380D6C();
    *&v59 = v44;
    sub_1E1301CF0(&v59, v58);
    v45 = v61;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v45;
    sub_1E159827C(v58, 0x6E6F697461727564, 0xE800000000000000, v46);
    v61 = v57;
    goto LABEL_25;
  }

  sub_1E1496610(0x6E6F697461727564, 0xE800000000000000, &v59);
  sub_1E1308058(&v59, &qword_1ECEB2DF0);
  if (v38)
  {
    goto LABEL_31;
  }

LABEL_26:
  v47 = sub_1E1563338(v56[0], 0);
  if (v47)
  {
    v48 = v47;
    v60 = sub_1E1380D6C();
    *&v59 = v48;
    sub_1E1301CF0(&v59, v58);
    v49 = v61;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v49;
    sub_1E159827C(v58, 0x6E6F697469736F70, 0xE800000000000000, v50);
    v61 = v57;
  }

  else
  {
    sub_1E1496610(0x6E6F697469736F70, 0xE800000000000000, &v59);
    sub_1E1308058(&v59, &qword_1ECEB2DF0);
  }

LABEL_31:
  v51 = v61;
  sub_1E1AF3A6C();
  sub_1E1AF3A5C();
  if (*(v51 + 16))
  {
    v52 = sub_1E13018F8(0x6369706F74, 0xE500000000000000);
    if (v53)
    {
      sub_1E137A5C4(*(v51 + 56) + 32 * v52, &v59);
      if (swift_dynamicCast())
      {
        v54 = HIBYTE(*(&v58[0] + 1)) & 0xFLL;
        if ((*(&v58[0] + 1) & 0x2000000000000000) == 0)
        {
          v54 = *&v58[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v54)
        {
        }
      }
    }
  }

  return sub_1E1AF3A7C();
}

uint64_t sub_1E1563338(uint64_t result, char a2)
{
  if ((a2 & 1) != 0 || *&result <= 0.0)
  {
    *&result = 0.0;
    return result;
  }

  v2 = *&result * 1000.0;
  if (COERCE_UNSIGNED_INT64(*&result * 1000.0) >> 52 > 0x7FE)
  {
    __break(1u);
  }

  else if (v2 > -9.22337204e18)
  {
    if (v2 < 9.22337204e18)
    {
      *&result = COERCE_DOUBLE([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_]);
      return result;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

double _s11AppStoreKit17ClickMetricsEventC014makeErrorRetryF0ACyFZ_0()
{
  v0 = MEMORY[0x1E69E6158];
  v21 = MEMORY[0x1E69E6158];
  *&v20 = 0x7972746572;
  *(&v20 + 1) = 0xE500000000000000;
  sub_1E1301CF0(&v20, v19);
  v1 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v19, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v21 = v0;
  *&v20 = 0x726F727245;
  *(&v20 + 1) = 0xE500000000000000;
  sub_1E1301CF0(&v20, v19);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v19, 1701273968, 0xE400000000000000, v3);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7220);
  v5 = sub_1E1AF523C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E1B02CD0;
  v10 = v9 + v8;
  if (qword_1EE1E3680 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_1EE1E3688);
  v12 = *(v6 + 16);
  v12(v10, v11, v5);
  if (qword_1EE1E3708 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_1EE1E3710);
  v12(v10 + v7, v13, v5);
  v14 = sub_1E1498AF4(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v15 = swift_allocObject();
  *(v15 + 48) = 0x6E6F74747562;
  *(v15 + 56) = 0xE600000000000000;
  *&result = 0x7972746552;
  *(v15 + 32) = xmmword_1E1B17210;
  v17 = MEMORY[0x1E69E7CD0];
  *(v15 + 64) = v14;
  *(v15 + 72) = v17;
  v18 = MEMORY[0x1E69E7CC0];
  *(v15 + 16) = v4;
  *(v15 + 24) = v18;
  return result;
}

unint64_t sub_1E15636CC()
{
  result = qword_1ECEB58E0;
  if (!qword_1ECEB58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB58E0);
  }

  return result;
}

unint64_t sub_1E1563724()
{
  result = qword_1ECEB58E8;
  if (!qword_1ECEB58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB58E8);
  }

  return result;
}

unint64_t sub_1E156377C()
{
  result = qword_1ECEB58F0;
  if (!qword_1ECEB58F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB58F0);
  }

  return result;
}

unint64_t sub_1E15637D4()
{
  result = qword_1ECEB58F8;
  if (!qword_1ECEB58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB58F8);
  }

  return result;
}

unint64_t sub_1E156382C()
{
  result = qword_1ECEB5900;
  if (!qword_1ECEB5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5900);
  }

  return result;
}

unint64_t sub_1E1563884()
{
  result = qword_1ECEB5908;
  if (!qword_1ECEB5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5908);
  }

  return result;
}

unint64_t sub_1E15638DC()
{
  result = qword_1ECEB5910;
  if (!qword_1ECEB5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5910);
  }

  return result;
}

unint64_t sub_1E1563934()
{
  result = qword_1ECEB5918;
  if (!qword_1ECEB5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5918);
  }

  return result;
}

unint64_t sub_1E156398C()
{
  result = qword_1ECEB5920;
  if (!qword_1ECEB5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5920);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchAdOpportunity.LifecycleEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchAdOpportunity.LifecycleEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProductShelfOrderingId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProductShelfOrderingId(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t MediumAdLockupWithAlignedRegionBackground.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MediumAdLockupWithAlignedRegionBackground.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t MediumAdLockupWithAlignedRegionBackground.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v41 = *v2;
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = sub_1E1AF380C();
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v38 - v18;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v47 = v5;
  v20 = *(v5 + 16);
  v21 = v11;
  v22 = v11;
  v23 = v51;
  v20(v22, v51, v4);
  v50 = v19;
  v39 = v16;
  v40 = v21;
  sub_1E1AF464C();
  v24 = v49;
  v20(v49, v23, v4);
  v25 = v42;
  sub_1E1AF381C();
  v26 = v43;
  v38 = v20;
  v20(v43, v24, v4);
  type metadata accessor for Lockup();
  swift_allocObject();
  v27 = v44;
  v28 = Lockup.init(deserializing:using:)(v25, v26);
  if (v27)
  {
    v29 = *(v47 + 8);
    v29(v51, v4);
    (*(v45 + 8))(a1, v46);
    v29(v24, v4);
    sub_1E13814C0(v50);
    v30 = v48;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = a1;
    v30 = v48;
    *(v48 + 16) = v28;
    type metadata accessor for Artwork();
    v44 = 0;
    v32 = v39;
    sub_1E1AF381C();
    v38(v40, v24, v4);
    sub_1E1564C88(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    *(v30 + 24) = v52;
    sub_1E13815A4(v50, v30 + OBJC_IVAR____TtC11AppStoreKit41MediumAdLockupWithAlignedRegionBackground_impressionMetrics);
    type metadata accessor for Action();
    sub_1E1AF381C();
    v33 = v51;
    v43 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v51);
    v34 = *(v47 + 8);
    v34(v33, v4);
    v35 = v46;
    v36 = *(v45 + 8);
    v36(v31, v46);
    v36(v32, v35);
    v34(v49, v4);
    sub_1E13814C0(v50);
    *(v30 + OBJC_IVAR____TtC11AppStoreKit41MediumAdLockupWithAlignedRegionBackground_clickAction) = v43;
  }

  return v30;
}

uint64_t MediumAdLockupWithAlignedRegionBackground.__allocating_init(lockup:alignedRegionArtwork:impressionMetrics:clickAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1E134B7C8(a3, v8 + OBJC_IVAR____TtC11AppStoreKit41MediumAdLockupWithAlignedRegionBackground_impressionMetrics);
  *(v8 + OBJC_IVAR____TtC11AppStoreKit41MediumAdLockupWithAlignedRegionBackground_clickAction) = a4;
  return v8;
}

uint64_t MediumAdLockupWithAlignedRegionBackground.init(lockup:alignedRegionArtwork:impressionMetrics:clickAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1E134B7C8(a3, v4 + OBJC_IVAR____TtC11AppStoreKit41MediumAdLockupWithAlignedRegionBackground_impressionMetrics);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit41MediumAdLockupWithAlignedRegionBackground_clickAction) = a4;
  return v4;
}

uint64_t MediumAdLockupWithAlignedRegionBackground.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;
}

uint64_t MediumAdLockupWithAlignedRegionBackground.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t MediumAdLockupWithAlignedRegionBackground.debugDescription.getter()
{
  sub_1E1AF6FEC();
  v1 = sub_1E1AF772C();

  v15 = v1;
  MEMORY[0x1E68FECA0](539828256, 0xE400000000000000);
  v2 = *(v0 + 16);
  v3 = v2[2];
  v4 = v2[3];

  MEMORY[0x1E68FECA0](v3, v4);
  MEMORY[0x1E68FECA0](93, 0xE100000000000000);

  MEMORY[0x1E68FECA0](0x5B2064496D616441, 0xE800000000000000);

  MEMORY[0x1E68FECA0](0x6964616548202D20, 0xEC000000203A676ELL);
  v5 = v2[11];
  if (v5)
  {
    v6 = v2[10];
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v2[11];
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x1E68FECA0](v6, v7);

  MEMORY[0x1E68FECA0](0x3A656C746974202CLL, 0xE900000000000020);
  v8 = v2[13];
  if (v8)
  {
    v9 = v2[12];
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v2[13];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x1E68FECA0](v9, v10);

  MEMORY[0x1E68FECA0](0x746974627573202CLL, 0xEB000000003A656CLL);
  v11 = v2[15];
  if (v11)
  {
    v12 = v2[14];
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v2[15];
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x1E68FECA0](v12, v13);

  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return v15;
}

uint64_t MediumAdLockupWithAlignedRegionBackground.deinit()
{

  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit41MediumAdLockupWithAlignedRegionBackground_impressionMetrics);

  return v0;
}

uint64_t MediumAdLockupWithAlignedRegionBackground.__deallocating_deinit()
{

  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit41MediumAdLockupWithAlignedRegionBackground_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1564990@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC11AppStoreKit41MediumAdLockupWithAlignedRegionBackground_clickAction);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_1E1564C88(qword_1EE1D2F80, type metadata accessor for Action);
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

uint64_t sub_1E1564A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = MediumAdLockupWithAlignedRegionBackground.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t type metadata accessor for MediumAdLockupWithAlignedRegionBackground()
{
  result = qword_1EE1D3A30;
  if (!qword_1EE1D3A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1564B8C()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E1564C88(unint64_t *a1, void (*a2)(uint64_t))
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

CGSize __swiftcall AspectRatio.maxSize(fitting:)(CGSize fitting)
{
  height = fitting.height;
  width = fitting.width;
  v3 = sub_1E1AF127C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_1E1AF121C();
  v8 = v7;
  sub_1E1AF121C();
  if (v9 >= v8)
  {
    sub_1E1AF123C();
    height = v11;
  }

  else
  {
    sub_1E1AF122C();
    width = v10;
  }

  (*(v4 + 8))(v6, v3);
  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

CGSize __swiftcall AspectRatio.maxSize(filling:)(CGSize filling)
{
  height = filling.height;
  width = filling.width;
  v3 = sub_1E1AF127C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_1E1AF121C();
  v8 = v7;
  sub_1E1AF121C();
  if (v8 >= v9)
  {
    sub_1E1AF123C();
    height = v11;
  }

  else
  {
    sub_1E1AF122C();
    width = v10;
  }

  (*(v4 + 8))(v6, v3);
  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

uint64_t AspectRatio.inverted.getter()
{
  sub_1E1AF126C();
  sub_1E1AF120C();

  return _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
}

BOOL AspectRatio.isPortrait.getter()
{
  sub_1E1AF120C();
  v1 = v0;
  sub_1E1AF126C();
  return v1 < v2;
}

BOOL AspectRatio.isLandscape.getter()
{
  sub_1E1AF120C();
  v1 = v0;
  sub_1E1AF126C();
  return v1 >= v2;
}

double static MainScreen.scale.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

void CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t CondensedSearchInAppPurchaseCardLayout.Metrics.artworkTrailingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 32);

  return sub_1E1308EC0(a1, v1 + 32);
}

uint64_t CondensedSearchInAppPurchaseCardLayout.Metrics.textTopMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 72);

  return sub_1E1308EC0(a1, v1 + 72);
}

uint64_t CondensedSearchInAppPurchaseCardLayout.Metrics.headerTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 112);

  return sub_1E1308EC0(a1, v1 + 112);
}

uint64_t CondensedSearchInAppPurchaseCardLayout.Metrics.titleTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 152);

  return sub_1E1308EC0(a1, v1 + 152);
}

uint64_t CondensedSearchInAppPurchaseCardLayout.Metrics.titleTextBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 192);

  return sub_1E1308EC0(a1, v1 + 192);
}

uint64_t CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 232);

  return sub_1E1308EC0(a1, v1 + 232);
}

uint64_t CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleTextBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 272);

  return sub_1E1308EC0(a1, v1 + 272);
}

uint64_t CondensedSearchInAppPurchaseCardLayout.Metrics.tileOffset.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 312);

  return sub_1E1308EC0(a1, v1 + 312);
}

uint64_t CondensedSearchInAppPurchaseCardLayout.Metrics.artworkAXBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 352);

  return sub_1E1308EC0(a1, v1 + 352);
}

uint64_t CondensedSearchInAppPurchaseCardLayout.Metrics.offerButtonTopMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 392);

  return sub_1E1308EC0(a1, v1 + 392);
}

uint64_t CondensedSearchInAppPurchaseCardLayout.init(metrics:iAPView:headerText:titleText:subtitleText:offerButton:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, void *a7@<X8>)
{
  memcpy(a7, __src, 0x1D8uLL);
  sub_1E1308EC0(a2, a7 + 472);
  sub_1E1308EC0(a3, a7 + 512);
  sub_1E1308EC0(a4, a7 + 552);
  sub_1E1308EC0(a5, a7 + 592);

  return sub_1E1308EC0(a6, a7 + 632);
}

uint64_t CondensedSearchInAppPurchaseCardLayout.layout.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_1E1AF13EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v32 - v13;
  v14 = sub_1E1AF15FC();
  v36 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v38 = &v32 - v19;
  sub_1E1AF15DC();
  sub_1E1300B24((v2 + 59), v49);
  v48[3] = MEMORY[0x1E69E7DE0];
  v48[4] = MEMORY[0x1E69AB858];
  v20 = v2[1];
  v48[0] = *v2;
  v46 = MEMORY[0x1E69E7DE0];
  v47 = MEMORY[0x1E69AB858];
  v45 = v20;
  v21 = v2[2];
  v43 = MEMORY[0x1E69E7DE0];
  v44 = MEMORY[0x1E69AB858];
  v42 = v21;
  sub_1E1300B24((v2 + 4), v41);
  v37 = sub_1E1AF1BEC();
  v40[3] = v37;
  v40[4] = MEMORY[0x1E69ABB40];
  __swift_allocate_boxed_opaque_existential_0(v40);
  sub_1E1AF1BFC();
  sub_1E1AF15EC();
  v22 = *(v15 + 8);
  v35 = v15 + 8;
  v22(v17, v14);
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_1E1AF13CC();
  sub_1E1565CD0(v2, v40);
  v23 = swift_allocObject();
  memcpy((v23 + 16), v40, 0x2A0uLL);
  sub_1E1AF13DC();

  v24 = *(v4 + 8);
  v24(v6, v3);
  sub_1E1565CD0(v2, v40);
  v25 = swift_allocObject();
  memcpy((v25 + 16), v40, 0x2A0uLL);
  v26 = v33;
  sub_1E1AF13DC();

  v24(v9, v3);
  sub_1E1565CD0(v2, v40);
  v27 = swift_allocObject();
  memcpy((v27 + 16), v40, 0x2A0uLL);
  v28 = v34;
  sub_1E1AF13DC();

  v24(v26, v3);
  v40[3] = v3;
  v40[4] = MEMORY[0x1E69AB8F8];
  __swift_allocate_boxed_opaque_existential_0(v40);
  sub_1E1AF13DC();
  v24(v28, v3);
  sub_1E1AF1B4C();
  v49[3] = sub_1E1AF1B5C();
  v49[4] = MEMORY[0x1E69ABAF0];
  __swift_allocate_boxed_opaque_existential_0(v49);
  sub_1E1AF1B6C();
  sub_1E1300B24((v2 + 9), v48);
  v46 = MEMORY[0x1E69E7DE0];
  v47 = MEMORY[0x1E69AB858];
  v45 = v21;
  v29 = v2[3];
  v43 = MEMORY[0x1E69E7DE0];
  v44 = MEMORY[0x1E69AB858];
  v42 = v29;
  v41[3] = sub_1E1AF140C();
  v41[4] = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(v41);
  sub_1E1AF13FC();
  v40[3] = v37;
  v40[4] = MEMORY[0x1E69ABB40];
  __swift_allocate_boxed_opaque_existential_0(v40);
  sub_1E1AF1BFC();
  v30 = v38;
  sub_1E1AF15EC();
  v22(v30, v36);
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_1E1565D48(uint64_t a1, uint64_t a2)
{
  sub_1E1300B24(a2 + 152, v4);
  sub_1E1AF134C();
  sub_1E1300B24(a2 + 192, v4);
  return sub_1E1AF135C();
}

uint64_t sub_1E1565DA4(uint64_t a1, uint64_t a2)
{
  sub_1E1300B24(a2 + 232, v4);
  sub_1E1AF134C();
  sub_1E1300B24(a2 + 272, v4);
  return sub_1E1AF135C();
}

double sub_1E1565E10()
{
  v0 = sub_1E1AF15FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  CondensedSearchInAppPurchaseCardLayout.layout.getter(v3);
  sub_1E1AF1DAC();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_1E1565F34()
{
  v0 = sub_1E1AF15FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  CondensedSearchInAppPurchaseCardLayout.layout.getter(v3);
  sub_1E1AF1D9C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1E1566048(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1566B7C();

  return MEMORY[0x1EEE17F00](a1, a2, v4);
}

double CondensedSearchInAppPurchaseCardLayout.Metrics.withCornerTileOffset(_:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_1E15655BC(v2, a1);
  v7 = MEMORY[0x1E69E7DE0];
  v8 = MEMORY[0x1E69AB858];
  *&v6 = a2;
  __swift_destroy_boxed_opaque_existential_1(a1 + 312);
  sub_1E1308EC0(&v6, a1 + 312);
  result = a2 + 4.0;
  *(a1 + 8) = a2 + 4.0;
  *(a1 + 16) = a2 + 4.0;
  return result;
}

double static CondensedSearchInAppPurchaseCardLayout.Metrics.baseMetrics.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1AF105C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1E69E63B0];
  v7 = MEMORY[0x1E69ABBA8];
  *(a1 + 56) = MEMORY[0x1E69E63B0];
  *(a1 + 64) = v7;
  *(a1 + 32) = 0x4028000000000000;
  *(a1 + 96) = v6;
  *(a1 + 104) = v7;
  *(a1 + 72) = 0x4022000000000000;
  v8 = *MEMORY[0x1E69DDD08];
  v9 = *MEMORY[0x1E69DB980];
  *v5 = *MEMORY[0x1E69DDD08];
  v5[1] = v9;
  v10 = *MEMORY[0x1E69AB8C8];
  v11 = sub_1E1AF12AC();
  v12 = *(v11 - 8);
  v47 = *(v12 + 104);
  v41 = v11;
  v42 = v12 + 104;
  v47(v5, v10, v11);
  v46 = *MEMORY[0x1E69AB860];
  v13 = v3[13];
  v48 = v3 + 13;
  v49 = v13;
  v13(v5);
  v14 = sub_1E1AF166C();
  v15 = MEMORY[0x1E69AB980];
  *(a1 + 136) = v14;
  *(a1 + 144) = v15;
  v43 = v14;
  __swift_allocate_boxed_opaque_existential_0((a1 + 112));
  v51 = v2;
  v52 = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v50);
  v17 = v3[2];
  v17(boxed_opaque_existential_0, v5, v2);
  v45 = v3 + 2;
  v18 = v8;
  sub_1E1AF167C();
  v19 = v3[1];
  v40[1] = v3 + 1;
  v44 = v19;
  v19(v5, v2);
  v20 = *MEMORY[0x1E69DDD80];
  *v5 = *MEMORY[0x1E69DDD80];
  *(v5 + 2) = 0;
  v21 = *MEMORY[0x1E69AB8C0];
  v47(v5, v21, v11);
  (v49)(v5, v46, v2);
  *(a1 + 176) = v14;
  *(a1 + 184) = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0((a1 + 152));
  v51 = v2;
  v52 = MEMORY[0x1E69AB870];
  v22 = __swift_allocate_boxed_opaque_existential_0(v50);
  v17(v22, v5, v2);
  v23 = v17;
  v24 = v20;
  sub_1E1AF167C();
  v25 = v44;
  v44(v5, v2);
  *(a1 + 216) = MEMORY[0x1E69E63B0];
  *(a1 + 224) = MEMORY[0x1E69ABBA8];
  *(a1 + 192) = 0x4010000000000000;
  v26 = *MEMORY[0x1E69DDD10];
  *v5 = *MEMORY[0x1E69DDD10];
  *(v5 + 2) = 0;
  v47(v5, v21, v41);
  v27 = v49;
  (v49)(v5, v46, v2);
  v28 = v43;
  *(a1 + 256) = v43;
  *(a1 + 264) = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0((a1 + 232));
  v51 = v2;
  v52 = MEMORY[0x1E69AB870];
  v29 = __swift_allocate_boxed_opaque_existential_0(v50);
  v23(v29, v5, v2);
  v30 = v26;
  sub_1E1AF167C();
  v25(v5, v2);
  v31 = MEMORY[0x1E69E63B0];
  *(a1 + 296) = MEMORY[0x1E69E63B0];
  v32 = MEMORY[0x1E69ABBA8];
  *(a1 + 304) = MEMORY[0x1E69ABBA8];
  *(a1 + 272) = 0x4032000000000000;
  *(a1 + 336) = v31;
  *(a1 + 344) = v32;
  v33 = MEMORY[0x1E69DDCF8];
  *(a1 + 312) = 0;
  v34 = *v33;
  *v5 = *v33;
  LODWORD(v47) = *MEMORY[0x1E69AB868];
  v27(v5);
  *(a1 + 376) = v28;
  *(a1 + 384) = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0((a1 + 352));
  v51 = v2;
  v52 = MEMORY[0x1E69AB870];
  v35 = __swift_allocate_boxed_opaque_existential_0(v50);
  v23(v35, v5, v2);
  v36 = v34;
  sub_1E1AF167C();
  v37 = v44;
  v44(v5, v2);
  *(a1 + 416) = MEMORY[0x1E69E63B0];
  *(a1 + 424) = MEMORY[0x1E69ABBA8];
  *(a1 + 392) = 0x4030000000000000;
  *v5 = v36;
  (v49)(v5, v47, v2);
  *(a1 + 456) = v43;
  *(a1 + 464) = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0((a1 + 432));
  v51 = v2;
  v52 = MEMORY[0x1E69AB870];
  v38 = __swift_allocate_boxed_opaque_existential_0(v50);
  v23(v38, v5, v2);
  sub_1E1AF167C();
  v37(v5, v2);
  result = 7.0;
  *a1 = xmmword_1E1B17CE0;
  *(a1 + 16) = xmmword_1E1B17CF0;
  return result;
}

id CondensedSearchInAppPurchaseCardLayout.Metrics.headerFont.getter@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69DDD08];
  v2 = *MEMORY[0x1E69DB980];
  *a1 = *MEMORY[0x1E69DDD08];
  a1[1] = v2;
  v3 = *MEMORY[0x1E69AB8C8];
  v4 = sub_1E1AF12AC();
  (*(*(v4 - 8) + 104))(a1, v3, v4);

  return v6;
}

id sub_1E156676C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  *a2 = *a1;
  *(a2 + 8) = 0;
  v3 = *MEMORY[0x1E69AB8C0];
  v4 = sub_1E1AF12AC();
  (*(*(v4 - 8) + 104))(a2, v3, v4);

  return v6;
}

Swift::Int __swiftcall CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleNumberOfLines(for:)(UITraitCollection a1)
{
  if (sub_1E1AF698C())
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_1E1566854()
{
  result = qword_1ECEB5928;
  if (!qword_1ECEB5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5928);
  }

  return result;
}

unint64_t sub_1E15668AC()
{
  result = qword_1ECEB5930;
  if (!qword_1ECEB5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5930);
  }

  return result;
}

uint64_t sub_1E1566924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 672))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E156696C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 664) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 672) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 672) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1566A6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 472))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1566AB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 472) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 472) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E1566B7C()
{
  result = qword_1ECEB5938;
  if (!qword_1ECEB5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5938);
  }

  return result;
}

uint64_t UpdatesLockup.version.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_version);

  return v1;
}

uint64_t UpdatesLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:whatsNew:version:size:buttonAction:offerDisplayProperties:clickAction:tertiaryTitle:contextMenuData:impressionMetrics:externalVersionId:releaseDate:installDate:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned __int8 a27, uint64_t a28, uint64_t a29)
{
  v75 = a8;
  v73 = a7;
  v72 = a6;
  v71 = a5;
  v70 = a4;
  v69 = a3;
  v68 = a2;
  v58 = a29;
  v59 = a28;
  v80 = a22;
  v81 = a23;
  v79 = a21;
  v78 = a20;
  v76 = a24;
  v77 = a19;
  v74 = a13;
  v65 = a12;
  v64 = a11;
  v67 = a10;
  v66 = a9;
  LODWORD(v63) = a27;
  v57 = a26;
  v56 = sub_1E1AEFEAC();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v31 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v55 - v33;
  v35 = swift_allocObject();
  v36 = a1[1];
  v61 = *a1;
  v60 = v36;
  v62 = a14;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_whatsNew) = a14;
  v37 = (v35 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_version);
  *v37 = a15;
  v37[1] = a16;
  v38 = v35 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_size;
  *v38 = a17;
  v39 = v58;
  *(v38 + 8) = a18 & 1;
  v40 = v35 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_externalVersionId;
  *v40 = v57;
  v41 = v59;
  *(v40 + 8) = v63 & 1;
  sub_1E134FD1C(v41, v35 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, &unk_1ECEBB780);
  sub_1E134FD1C(v39, v35 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate, &unk_1ECEBB780);
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  v63 = a25;
  sub_1E134FD1C(a25, v34, &unk_1ECEB1770);
  *(v35 + 424) = 4;
  sub_1E134FD1C(v87, &v84, &unk_1ECEB5670);
  if (*(&v85 + 1))
  {
    v42 = v85;
    *(v35 + 448) = v84;
    *(v35 + 464) = v42;
    *(v35 + 480) = v86;
  }

  else
  {

    sub_1E1AEFE9C();
    v43 = sub_1E1AEFE7C();
    v45 = v44;
    (*(v55 + 8))(v31, v56);
    v82 = v43;
    v83 = v45;
    sub_1E1AF6F6C();
    sub_1E1308058(&v84, &unk_1ECEB5670);
  }

  sub_1E134FD1C(v34, v35 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);

  v46 = v60;
  *(v35 + 16) = v61;
  *(v35 + 24) = v46;
  v47 = v69;
  *(v35 + 32) = v68;
  *(v35 + 40) = v47;
  *(v35 + 48) = v70;
  *(v35 + 56) = 0;
  v48 = v65;
  *(v35 + 64) = v64;
  *(v35 + 72) = v48;
  v49 = v72;
  *(v35 + 80) = v71;
  *(v35 + 88) = v49;
  v50 = v75;
  *(v35 + 96) = v73;
  *(v35 + 104) = v50;
  v51 = v67;
  *(v35 + 112) = v66;
  *(v35 + 120) = v51;
  *(v35 + 128) = 0;
  *(v35 + 136) = 2;
  *(v35 + 144) = 0;
  *(v35 + 152) = 0;
  *(v35 + 184) = 0u;
  *(v35 + 200) = 0u;
  *(v35 + 216) = 0u;
  *(v35 + 376) = 0u;
  *(v35 + 392) = 0u;
  *(v35 + 408) = 0x8000;
  *(v35 + 360) = v76;
  *(v35 + 416) = 0;
  *(v35 + 432) = MEMORY[0x1E69E7CD0];
  *(v35 + 160) = v74;
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;
  *(v35 + 248) = 0;
  *(v35 + 256) = 0;
  v52 = v78;
  *(v35 + 232) = v77;
  *(v35 + 240) = v52;
  v53 = v80;
  *(v35 + 264) = v79;
  *(v35 + 272) = 0u;
  *(v35 + 288) = 0u;
  *(v35 + 304) = 0;
  *(v35 + 312) = v53;
  *(v35 + 328) = 0;
  *(v35 + 336) = 0;
  *(v35 + 320) = v81;
  sub_1E1308058(v39, &unk_1ECEBB780);
  sub_1E1308058(v41, &unk_1ECEBB780);
  sub_1E1308058(v63, &unk_1ECEB1770);
  sub_1E1308058(v34, &unk_1ECEB1770);
  sub_1E1308058(v87, &unk_1ECEB5670);
  *(v35 + 344) = MEMORY[0x1E69E7CC0];
  *(v35 + 352) = 0;
  *(v35 + 440) = 0;
  *(v35 + 368) = 0;
  return v35;
}

uint64_t UpdatesLockup.init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:whatsNew:version:size:buttonAction:offerDisplayProperties:clickAction:tertiaryTitle:contextMenuData:impressionMetrics:externalVersionId:releaseDate:installDate:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29)
{
  v30 = v29;
  v77 = a8;
  v75 = a7;
  v74 = a6;
  v73 = a5;
  v72 = a4;
  v71 = a3;
  v70 = a2;
  v61 = a29;
  v62 = a28;
  v78 = a24;
  v84 = a23;
  v82 = a22;
  v81 = a21;
  v80 = a20;
  v79 = a19;
  v76 = a13;
  v67 = a12;
  v66 = a11;
  v69 = a10;
  v68 = a9;
  v63 = a25;
  v60 = sub_1E1AEFEAC();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v33 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v58 - v35;
  v37 = a1[1];
  v65 = *a1;
  v64 = v37;
  v83 = a14;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_whatsNew) = a14;
  v38 = v36;
  v39 = (v30 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_version);
  *v39 = a15;
  v39[1] = a16;
  v40 = v30 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_size;
  *v40 = a17;
  v41 = v61;
  *(v40 + 8) = a18 & 1;
  v42 = v30 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_externalVersionId;
  *v42 = a26;
  v43 = v62;
  *(v42 + 8) = a27 & 1;
  sub_1E134FD1C(v43, v30 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, &unk_1ECEBB780);
  v44 = v63;
  sub_1E134FD1C(v41, v30 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate, &unk_1ECEBB780);
  v94 = 0;
  memset(v93, 0, sizeof(v93));
  sub_1E134FD1C(v44, v38, &unk_1ECEB1770);
  *(v30 + 424) = 4;
  sub_1E134FD1C(v93, &v87, &unk_1ECEB5670);
  if (*(&v88 + 1))
  {
    v90 = v87;
    v91 = v88;
    v92 = v89;
  }

  else
  {

    sub_1E1AEFE9C();
    v45 = sub_1E1AEFE7C();
    v47 = v46;
    (*(v59 + 8))(v33, v60);
    v85 = v45;
    v86 = v47;
    sub_1E1AF6F6C();
    sub_1E1308058(&v87, &unk_1ECEB5670);
  }

  v48 = v91;
  *(v30 + 448) = v90;
  *(v30 + 464) = v48;
  *(v30 + 480) = v92;
  sub_1E134FD1C(v38, v30 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);
  v49 = v64;
  *(v30 + 16) = v65;
  *(v30 + 24) = v49;
  v50 = v71;
  *(v30 + 32) = v70;
  *(v30 + 40) = v50;
  *(v30 + 48) = v72;
  *(v30 + 56) = 0;
  v51 = v67;
  *(v30 + 64) = v66;
  *(v30 + 72) = v51;
  v52 = v74;
  *(v30 + 80) = v73;
  *(v30 + 88) = v52;
  v53 = v77;
  *(v30 + 96) = v75;
  *(v30 + 104) = v53;
  v54 = v69;
  *(v30 + 112) = v68;
  *(v30 + 120) = v54;
  *(v30 + 128) = 0;
  *(v30 + 136) = 2;
  *(v30 + 144) = 0;
  *(v30 + 152) = 0;
  *(v30 + 216) = 0u;
  *(v30 + 200) = 0u;
  *(v30 + 184) = 0u;
  *(v30 + 376) = 0u;
  *(v30 + 392) = 0u;
  *(v30 + 408) = 0x8000;
  *(v30 + 360) = v78;
  *(v30 + 416) = 0;
  *(v30 + 432) = MEMORY[0x1E69E7CD0];
  *(v30 + 160) = v76;
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  *(v30 + 248) = 0;
  *(v30 + 256) = 0;
  v55 = v80;
  *(v30 + 232) = v79;
  *(v30 + 240) = v55;
  *(v30 + 264) = v81;
  *(v30 + 272) = 0u;
  *(v30 + 288) = 0u;
  v56 = v82;
  *(v30 + 304) = 0;
  *(v30 + 312) = v56;
  *(v30 + 328) = 0;
  *(v30 + 336) = 0;
  *(v30 + 320) = v84;

  sub_1E1308058(v41, &unk_1ECEBB780);
  sub_1E1308058(v43, &unk_1ECEBB780);
  sub_1E1308058(v44, &unk_1ECEB1770);
  sub_1E1308058(v38, &unk_1ECEB1770);
  sub_1E1308058(v93, &unk_1ECEB5670);
  *(v30 + 344) = MEMORY[0x1E69E7CC0];
  *(v30 + 352) = 0;
  *(v30 + 440) = 0;
  *(v30 + 368) = 0;
  return v30;
}

uint64_t UpdatesLockup.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v38 - v4;
  v5 = sub_1E1AF39DC();
  v41 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = sub_1E1AF380C();
  v39 = *(v11 - 8);
  v12 = v39;
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  type metadata accessor for Paragraph();
  sub_1E1AF381C();
  v47 = v6;
  v17 = *(v6 + 16);
  v42 = v6 + 16;
  v43 = v17;
  (v17)(v10, v48, v5);
  sub_1E1567D04();
  sub_1E1AF464C();
  v18 = v40;
  *(v40 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_whatsNew) = v49;
  sub_1E1AF381C();
  v19 = sub_1E1AF37CC();
  v21 = v20;
  v22 = *(v12 + 8);
  v22(v16, v11);
  v23 = (v18 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_version);
  v24 = v18;
  *v23 = v19;
  v23[1] = v21;
  sub_1E1AF381C();
  v25 = sub_1E1AF376C();
  LOBYTE(v21) = v26;
  v22(v16, v11);
  v27 = v18 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_size;
  *v27 = v25;
  *(v27 + 8) = v21 & 1;
  sub_1E1AF381C();
  v28 = sub_1E1AF376C();
  LOBYTE(v21) = v29;
  v22(v16, v11);
  v30 = v18 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_externalVersionId;
  *v30 = v28;
  *(v30 + 8) = v21 & 1;
  sub_1E1AF381C();
  v31 = v45;
  sub_1E1AF371C();
  v22(v16, v11);
  sub_1E14C1EAC(v31, v24 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate);
  v32 = v48;
  sub_1E1AF381C();
  sub_1E1AF371C();
  v22(v16, v11);
  sub_1E14C1EAC(v31, v24 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate);
  v33 = v44;
  (*(v39 + 16))(v44, a1, v11);
  v34 = v46;
  v35 = v41;
  v43(v46, v32);
  v36 = Lockup.init(deserializing:using:)(v33, v34);
  (*(v47 + 8))(v32, v35);
  v22(a1, v11);
  return v36;
}

unint64_t sub_1E1567D04()
{
  result = qword_1EE1E4150;
  if (!qword_1EE1E4150)
  {
    type metadata accessor for Paragraph();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4150);
  }

  return result;
}

uint64_t sub_1E1567D90()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, &unk_1ECEBB780);
  return sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate, &unk_1ECEBB780);
}

uint64_t UpdatesLockup.deinit()
{
  v0 = Lockup.deinit();

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, &unk_1ECEBB780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate, &unk_1ECEBB780);
  return v0;
}

uint64_t UpdatesLockup.__deallocating_deinit()
{
  v0 = Lockup.deinit();

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, &unk_1ECEBB780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate, &unk_1ECEBB780);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UpdatesLockup()
{
  result = qword_1ECEB5940;
  if (!qword_1ECEB5940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1567FE0()
{
  sub_1E13A8B64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1E15681BC()
{
  result = [objc_allocWithZone(type metadata accessor for UpdateStore()) init];
  qword_1EE1F9778 = result;
  return result;
}

id UpdateStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1E1568244()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E1920 = result;
  return result;
}

id UpdateStore.init()()
{
  v14 = sub_1E1AF68DC();
  v1 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v0[OBJC_IVAR____TtC11AppStoreKit11UpdateStore_coalesceUpdateNotifications] = 0;
  swift_weakInit();
  v6 = sub_1E13006E4(0, &qword_1EE1E3430);
  v13[0] = "on";
  v13[1] = v6;
  sub_1E1AF322C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v14);
  *&v0[OBJC_IVAR____TtC11AppStoreKit11UpdateStore_notificationQueue] = sub_1E1AF692C();
  updated = type metadata accessor for UpdateStore();
  v15.receiver = v0;
  v15.super_class = updated;
  v8 = objc_msgSendSuper2(&v15, sel_init);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultCenter];
  [v11 addObserver:v10 selector:sel_broadcastChangeNotificationIfNotCoalescing name:*MEMORY[0x1E698B468] object:0];

  return v10;
}

id UpdateStore.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for UpdateStore();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E156873C(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v34 = a1;
  v33 = sub_1E1AF0F7C();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v31 - v6;
  v7 = sub_1E1AF320C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11UpdateStore_notificationQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E1B02CC0;
  v13 = v11;
  sub_1E1AF31FC();
  aBlock[0] = v12;
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  v37 = v36;
  sub_1E1AF68FC();

  (*(v8 + 8))(v10, v7);
  sub_1E1AF483C();
  sub_1E1AF482C();
  v14 = v31;
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v15 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v32;
  v17 = v33;
  (*(v3 + 16))(v32, v14, v33);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = (v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v22 + v19;
  v24 = v17;
  (*(v3 + 32))(v23, v18, v17);
  v25 = (v22 + v20);
  v27 = v34;
  v26 = v35;
  *v25 = v34;
  v25[1] = v26;
  *(v22 + v21) = v16;
  aBlock[4] = sub_1E1568EA4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E143D02C;
  aBlock[3] = &block_descriptor_26;
  v28 = _Block_copy(aBlock);
  sub_1E1300E34(v27);

  updated = type metadata accessor for UpdateStore();
  v38.receiver = v36;
  v38.super_class = updated;
  objc_msgSendSuper2(&v38, sel_reloadFromServerWithCompletionBlock_, v28);
  _Block_release(v28);
  return (*(v3 + 8))(v14, v24);
}

void sub_1E1568BD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v18[0] = sub_1E1AF320C();
  v7 = *(v18[0] - 8);
  MEMORY[0x1EEE9AC00](v18[0]);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v10 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (a4)
  {
    a4(a1, a2);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC11AppStoreKit11UpdateStore_notificationQueue);
    v13 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E1B02CC0;
    v15 = v12;
    sub_1E1AF31FC();
    v18[2] = v14;
    sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    v16 = v18[0];
    v17 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v17);
    v18[-2] = v13;
    sub_1E1AF68FC();

    (*(v7 + 8))(v9, v16);
    sub_1E15690C0();
  }
}

void sub_1E1568EA4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1E1AF0F7C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E1568BD4(a1, a2, v2 + v6, v7);
}

void sub_1E1569018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E13006E4(0, &qword_1ECEB39B8);
  v5 = sub_1E1AF620C();
  if (a2)
  {
    v6 = sub_1E1AEFB1C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1E15690C0()
{
  v0 = sub_1E1AF326C();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v25 = v22 - v3;
  v4 = sub_1E1AF320C();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1E15696A0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_16_0;
  _Block_copy(aBlock);
  v31 = MEMORY[0x1E69E7CC0];
  v22[3] = sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);

  v22[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  v22[1] = sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  sub_1E1AF32AC();
  swift_allocObject();
  v8 = sub_1E1AF328C();

  v9 = OBJC_IVAR____TtC11AppStoreKit11UpdateStore_notificationQueue;
  v10 = v23;
  v11 = *(v23 + OBJC_IVAR____TtC11AppStoreKit11UpdateStore_notificationQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v12 = v24;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E1B02CC0;
  v14 = v11;
  sub_1E1AF31FC();
  aBlock[0] = v13;
  sub_1E1AF6EEC();
  v29 = v10;
  v30 = v8;
  sub_1E1AF68FC();

  (*(v12 + 8))(v6, v4);
  v15 = *(v10 + v9);
  v16 = v26;
  sub_1E1AF325C();
  v17 = v25;
  sub_1E1AF32DC();
  v18 = *(v27 + 8);
  v19 = v16;
  v20 = v28;
  v18(v19, v28);
  sub_1E1AF68CC();

  return (v18)(v17, v20);
}

void sub_1E15694F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC11AppStoreKit11UpdateStore_coalesceUpdateNotifications))
    {
      v1 = Strong;
    }

    else
    {
      v2 = Strong;
      v1 = [objc_opt_self() defaultCenter];
      if (qword_1EE1E1918 != -1)
      {
        swift_once();
      }

      [v1 postNotificationName:qword_1EE1E1920 object:v2];
    }
  }
}

uint64_t sub_1E15695D4()
{
  if (swift_weakLoadStrong())
  {
    sub_1E1AF329C();
  }

  return swift_weakAssign();
}

uint64_t InAppPurchaseLockupViewLayout.init(metrics:iconView:titleText:subtitleText:descriptionText:offerButton:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  sub_1E15697D4(a1, a7 + 200);
  sub_1E1300B24(a2, a7);
  sub_1E1300B24(a3, a7 + 40);
  sub_1E15501AC(a4, a7 + 80);
  sub_1E1300B24(a5, a7 + 120);
  __swift_project_boxed_opaque_existential_1Tm(a6, a6[3]);
  sub_1E1AF11AC();
  __swift_destroy_boxed_opaque_existential_1(a5);
  sub_1E1382094(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_1E156980C(a1);
  return __swift_destroy_boxed_opaque_existential_1(a6);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.init(iconSize:iconMargin:titlePrimaryLineSpace:titleSecondaryLineSpace:subtitleLineSpace:descriptionPrimaryLineSpace:descriptionSecondaryLineSpace:offerButtonMargin:offerButtonSize:isHeightConstrained:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char a12)
{
  *a9 = *a1;
  sub_1E1308EC0(a2, a9 + 8);
  sub_1E1308EC0(a3, a9 + 48);
  sub_1E1308EC0(a4, a9 + 88);
  sub_1E1308EC0(a5, a9 + 128);
  sub_1E1308EC0(a6, a9 + 168);
  sub_1E1308EC0(a7, a9 + 208);
  result = sub_1E1308EC0(a8, a9 + 248);
  *(a9 + 288) = a10;
  *(a9 + 296) = a11;
  *(a9 + 304) = a12;
  return result;
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.iconSize.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.iconMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 8);

  return sub_1E1308EC0(a1, v1 + 8);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.titlePrimaryLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 48);

  return sub_1E1308EC0(a1, v1 + 48);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.titleSecondaryLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 88);

  return sub_1E1308EC0(a1, v1 + 88);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.subtitleLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 128);

  return sub_1E1308EC0(a1, v1 + 128);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.descriptionPrimaryLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 168);

  return sub_1E1308EC0(a1, v1 + 168);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.descriptionSecondaryLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 208);

  return sub_1E1308EC0(a1, v1 + 208);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 248);

  return sub_1E1308EC0(a1, v1 + 248);
}

uint64_t InAppPurchaseLockupViewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v130 = a2;
  v124 = sub_1E1AF19AC();
  v121 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v120 = &v101 - v7;
  v125 = sub_1E1AF1A0C();
  v122 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v119 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF180C();
  v113 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v114 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF181C();
  v117 = *(v11 - 8);
  v118 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v116 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF184C();
  v111 = *(v13 - 8);
  v112 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1E1AF188C();
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v107 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF18BC();
  v106 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v126 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF18DC();
  v128 = *(v18 - 8);
  *&v129 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1E1AF191C();
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v101 - v23;
  v105 = sub_1E1AF193C();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v25) = *(v3 + 504);
  v131 = a1;
  v115 = v9;
  if (v25 == 1)
  {
    v157[0] = 0;
    v27 = *(v3 + 64);
    v28 = *(v3 + 72);
    v29 = __swift_project_boxed_opaque_existential_1Tm((v3 + 40), v27);
    *(&v133[0] + 1) = v27;
    *&v133[1] = *(v28 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v132);
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_0, v29, v27);
    v144 = 0u;
    v145 = 0u;
    v146 = 0;
    sub_1E1300B24(&v132, &v140);
    sub_1E1300B24(v3 + 248, v143);
    LOWORD(v142) = 1;
    v147 = 8;
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_1E149BCE4(&v140, &v132);
    v31 = sub_1E172D4E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1E172D4E0((v32 > 1), v33 + 1, 1, v31);
    }

    sub_1E149BD40(&v140);
    *(v31 + 2) = v33 + 1;
    v34 = &v31[136 * v33];
    v35 = v135;
    v36 = v133[1];
    v37 = v133[0];
    *(v34 + 5) = v134;
    *(v34 + 6) = v35;
    *(v34 + 3) = v37;
    *(v34 + 4) = v36;
    v38 = v138;
    v39 = v137;
    v40 = v136;
    *(v34 + 20) = v139;
    *(v34 + 8) = v39;
    *(v34 + 9) = v38;
    *(v34 + 7) = v40;
    *(v34 + 2) = v132;
    sub_1E15501AC(v3 + 80, &v140);
    v101 = v16;
    if (v141)
    {
      sub_1E1308EC0(&v140, v148);
      v41 = v149;
      v42 = v150;
      v43 = __swift_project_boxed_opaque_existential_1Tm(v148, v149);
      *(&v133[0] + 1) = v41;
      *&v133[1] = *(v42 + 8);
      v44 = __swift_allocate_boxed_opaque_existential_0(&v132);
      (*(*(v41 - 8) + 16))(v44, v43, v41);
      v144 = 0u;
      v145 = 0u;
      v146 = 0;
      sub_1E1300B24(&v132, &v140);
      sub_1E1300B24(v3 + 328, v143);
      LOWORD(v142) = 1;
      v147 = 8;
      __swift_destroy_boxed_opaque_existential_1(&v132);
      sub_1E149BCE4(&v140, &v132);
      v46 = *(v31 + 2);
      v45 = *(v31 + 3);
      if (v46 >= v45 >> 1)
      {
        v31 = sub_1E172D4E0((v45 > 1), v46 + 1, 1, v31);
      }

      sub_1E149BD40(&v140);
      *(v31 + 2) = v46 + 1;
      v47 = &v31[136 * v46];
      v48 = v135;
      v49 = v133[1];
      v50 = v133[0];
      *(v47 + 5) = v134;
      *(v47 + 6) = v48;
      *(v47 + 3) = v50;
      *(v47 + 4) = v49;
      v51 = v138;
      v52 = v137;
      v53 = v136;
      *(v47 + 20) = v139;
      *(v47 + 8) = v52;
      *(v47 + 9) = v51;
      *(v47 + 7) = v53;
      *(v47 + 2) = v132;
      __swift_destroy_boxed_opaque_existential_1(v148);
    }

    else
    {
      sub_1E1382094(&v140);
    }

    v54 = *(v3 + 144);
    v55 = *(v3 + 152);
    v56 = __swift_project_boxed_opaque_existential_1Tm((v3 + 120), v54);
    *(&v133[0] + 1) = v54;
    *&v133[1] = *(v55 + 8);
    v57 = __swift_allocate_boxed_opaque_existential_0(&v132);
    (*(*(v54 - 8) + 16))(v57, v56, v54);
    v144 = 0u;
    v145 = 0u;
    v146 = 0;
    sub_1E1300B24(&v132, &v140);
    sub_1E1300B24(v3 + 368, v143);
    LOWORD(v142) = 1;
    v147 = 8;
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_1E149BCE4(&v140, &v132);
    v59 = *(v31 + 2);
    v58 = *(v31 + 3);
    if (v59 >= v58 >> 1)
    {
      v31 = sub_1E172D4E0((v58 > 1), v59 + 1, 1, v31);
      v60 = v157[0];
    }

    else
    {
      v60 = 0;
    }

    sub_1E149BD40(&v140);
    *(v31 + 2) = v59 + 1;
    v61 = &v31[136 * v59];
    v62 = v134;
    v63 = v135;
    v64 = v133[1];
    *(v61 + 3) = v133[0];
    *(v61 + 4) = v64;
    *(v61 + 5) = v62;
    *(v61 + 6) = v63;
    v65 = v138;
    v66 = v137;
    v67 = v136;
    *(v61 + 20) = v139;
    *(v61 + 8) = v66;
    *(v61 + 9) = v65;
    *(v61 + 7) = v67;
    *(v61 + 2) = v132;
    *&v141 = &type metadata for _VerticalFlowLayout;
    *(&v141 + 1) = sub_1E14DEDDC();
    v68 = sub_1E14DEE30();
    LOBYTE(v140) = v60;
    v142 = v68;
    *(&v140 + 1) = v31;
    sub_1E1300B24(v3 + 40, &v132);
    __swift_project_boxed_opaque_existential_1Tm(&v132, *(&v133[0] + 1));
    sub_1E15501AC(v3 + 80, v148);
    sub_1E1382094(v148);
    sub_1E1AF146C();
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_1E15501AC(v3 + 80, &v132);
    if (*(&v133[0] + 1))
    {
      __swift_project_boxed_opaque_existential_1Tm(&v132, *(&v133[0] + 1));
      sub_1E1AF146C();
      __swift_destroy_boxed_opaque_existential_1(&v132);
    }

    else
    {
      sub_1E1382094(&v132);
    }

    v16 = v101;
    __swift_project_boxed_opaque_existential_1Tm((v3 + 120), *(v3 + 144));
    sub_1E1AF146C();
    a1 = v131;
  }

  else
  {
    sub_1E1300B24(v3 + 40, &v132);
    sub_1E15501AC(v3 + 80, v148);
    sub_1E1300B24(v3 + 120, v157);
    sub_1E1300B24(v3 + 248, v156);
    sub_1E1300B24(v3 + 288, v154);
    sub_1E1300B24(v3 + 328, v153);
    sub_1E1300B24(v3 + 368, &v152);
    sub_1E1300B24(v3 + 408, &v151);
    *&v141 = sub_1E1AF1C4C();
    *(&v141 + 1) = MEMORY[0x1E69ABB58];
    v142 = MEMORY[0x1E69ABB60];
    __swift_allocate_boxed_opaque_existential_0(&v140);
    sub_1E1AF1C3C();
  }

  v69 = *(v3 + 200);
  v148[0] = a1;
  (*(*v69 + 104))(&v132, v148);
  __swift_project_boxed_opaque_existential_1Tm(v3, *(v3 + 24));
  sub_1E1AF11AC();
  v70 = [a1 traitCollection];
  v71 = sub_1E1AF698C();

  if (v71)
  {
    v129 = v141;
    v72 = v141;
    v73 = __swift_project_boxed_opaque_existential_1Tm(&v140, v141);
    *(v133 + 8) = v129;
    v74 = __swift_allocate_boxed_opaque_existential_0(&v132);
    (*(*(v72 - 8) + 16))(v74, v73, v72);
    sub_1E1300B24(v157, v148);
    sub_1E1300B24(v3 + 208, v156);
    sub_1E1300B24(v3 + 160, v154);
    sub_1E1300B24(v3 + 448, v153);
    v75 = *MEMORY[0x1E69ABA50];
    v76 = *(v102 + 104);
    v77 = v104;
    v76(v24, v75, v104);
    v76(v21, v75, v77);
    sub_1E1AF192C();
    sub_1E1AF190C();
    (*(v103 + 8))(v26, v105);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm((v3 + 160), *(v3 + 184));
    sub_1E1AF11DC();
    v79 = v78;
    (*(v106 + 104))(v126, *MEMORY[0x1E69ABA30], v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0);
    sub_1E1AF189C();
    v80 = swift_allocObject();
    v81 = MEMORY[0x1E69E7DE0];
    *(v80 + 16) = xmmword_1E1B02CC0;
    *(&v133[0] + 1) = v81;
    *&v133[1] = MEMORY[0x1E69AB858];
    *&v132 = v79;
    v82 = v107;
    v83 = v108;
    v84 = v110;
    (*(v108 + 104))(v107, *MEMORY[0x1E69ABA08], v110);
    v148[0] = MEMORY[0x1E69E7CC0];
    sub_1E1425840();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
    sub_1E1383E14();
    v85 = v109;
    v86 = v112;
    sub_1E1AF6EEC();
    sub_1E1AF186C();
    (*(v111 + 8))(v85, v86);
    (*(v83 + 8))(v82, v84);
    __swift_destroy_boxed_opaque_existential_1(&v132);
    v87 = sub_1E1AF140C();
    v88 = MEMORY[0x1E69AB908];
    *(&v133[0] + 1) = v87;
    *&v133[1] = MEMORY[0x1E69AB908];
    __swift_allocate_boxed_opaque_existential_0(&v132);
    sub_1E1AF13FC();
    v89 = v127;
    sub_1E1AF18CC();
    v90 = v129;
    *(&v133[0] + 1) = v129;
    v133[1] = MEMORY[0x1E69ABA38];
    v91 = __swift_allocate_boxed_opaque_existential_0(&v132);
    (*(v128 + 16))(v91, v89, v90);
    sub_1E1383E78(&v140, v148);
    (*(v113 + 104))(v114, *MEMORY[0x1E69AB9E8], v115);
    sub_1E1300B24(v3 + 448, v156);
    v92 = v116;
    sub_1E1AF17FC();
    v93 = v118;
    *(&v133[0] + 1) = v118;
    *&v133[1] = MEMORY[0x1E69AB9F0];
    v94 = __swift_allocate_boxed_opaque_existential_0(&v132);
    v95 = v117;
    (*(v117 + 16))(v94, v92, v93);
    sub_1E1300B24(v157, v148);
    sub_1E1300B24(v3 + 208, v156);
    v155 = 0;
    memset(v154, 0, sizeof(v154));
    v153[3] = v87;
    v153[4] = v88;
    __swift_allocate_boxed_opaque_existential_0(v153);
    sub_1E1AF13FC();
    v96 = *MEMORY[0x1E69ABA80];
    v97 = *(v121 + 104);
    v98 = v124;
    v97(v120, v96, v124);
    v97(v123, v96, v98);
    v99 = v119;
    sub_1E1AF19EC();
    sub_1E1AF19CC();
    (*(v122 + 8))(v99, v125);
    (*(v95 + 8))(v92, v93);
    (*(v128 + 8))(v127, v129);
  }

  __swift_destroy_boxed_opaque_existential_1(v157);
  return __swift_destroy_boxed_opaque_existential_1(&v140);
}

uint64_t sub_1E156AF50(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1E156B5BC();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x1EEE18170](a1, a2, v10, a3, v11, v12);
}

double _s11AppStoreKit02InA24PurchaseLockupViewLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t *a1, void *a2, double a3)
{
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v17 = a2;
  (*(*v11 + 104))(&v18, &v17, v8);
  __swift_project_boxed_opaque_existential_1Tm(a1 + 6, a1[9]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v12 = *(v7 + 8);
  v12(v10, v6);
  __swift_project_boxed_opaque_existential_1Tm(a1 + 11, a1[14]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v12(v10, v6);
  __swift_project_boxed_opaque_existential_1Tm(a1 + 21, a1[24]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v12(v10, v6);
  __swift_project_boxed_opaque_existential_1Tm(a1 + 26, a1[29]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v12(v10, v6);
  __swift_project_boxed_opaque_existential_1Tm(a1 + 31, a1[34]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v12(v10, v6);
  v13 = [a2 traitCollection];
  v14 = sub_1E1AF698C();

  if (v14)
  {
    __swift_project_boxed_opaque_existential_1Tm(a1 + 1, a1[4]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v12(v10, v6);
  }

  return a3;
}

unint64_t sub_1E156B350()
{
  result = qword_1EE1E1AF8[0];
  if (!qword_1EE1E1AF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1E1AF8);
  }

  return result;
}

uint64_t sub_1E156B3AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 505))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E156B3F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 504) = 0;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 505) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 505) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E156B4D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 305))
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

uint64_t sub_1E156B518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 305) = 1;
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

    *(result + 305) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E156B5BC()
{
  result = qword_1ECEB5970;
  if (!qword_1ECEB5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5970);
  }

  return result;
}

void static ArcadeDebugSubscriptionStateManager.state.getter(char *a1@<X8>)
{
  v2 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E1B03760;
  *(v3 + 32) = @"debug";
  *(v3 + 40) = @"convergence";
  *(v3 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v4 = @"debug";
  v5 = @"convergence";
  v6 = @"internal";
  v7 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v2, v7);

  v9 = byte_1ECEB5980;
  if (!IsAnyOf)
  {
    v9 = 7;
  }

  *a1 = v9;
}

void (*static ArcadeDebugSubscriptionStateManager.state.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = ASKBuildTypeGetCurrent();
  *v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E1B03760;
  *(v3 + 8) = @"debug";
  *(v5 + 32) = @"debug";
  *(v3 + 16) = @"convergence";
  *(v5 + 40) = @"convergence";
  *(v3 + 24) = @"internal";
  *(v5 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  *(v3 + 32) = v6;
  v7 = @"debug";
  v8 = @"convergence";
  v9 = @"internal";
  v10 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v4, v10);

  v12 = byte_1ECEB5980;
  if (!IsAnyOf)
  {
    v12 = 7;
  }

  *(v3 + 40) = v12;
  return sub_1E156B880;
}

void sub_1E156B880(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  v6 = ASKBuildTypeGetCurrent();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B03760;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v3;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v6, v11);

  if (IsAnyOf)
  {
    byte_1ECEB5980 = v2;
  }

  free(v1);
}

void _s11AppStoreKit35ArcadeDebugSubscriptionStateManagerO5stateAA0defG0OSgvsZ_0(char *a1)
{
  v1 = *a1;
  v2 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E1B03760;
  *(v3 + 32) = @"debug";
  *(v3 + 40) = @"convergence";
  *(v3 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v4 = @"debug";
  v5 = @"convergence";
  v6 = @"internal";
  v7 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v2, v7);

  if (IsAnyOf)
  {
    byte_1ECEB5980 = v1;
  }
}

unint64_t sub_1E156BA88()
{
  result = qword_1ECEB5988;
  if (!qword_1ECEB5988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5988);
  }

  return result;
}

uint64_t sub_1E156BB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E156BC30();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1E156BB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E156BC30();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1E156BBF8()
{
  sub_1E156BC30();
  sub_1E1AF268C();
  __break(1u);
}

unint64_t sub_1E156BC30()
{
  result = qword_1ECEB5990;
  if (!qword_1ECEB5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5990);
  }

  return result;
}

uint64_t sub_1E156BC98()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v0 + 40);
      sub_1E1598D2C(v4, v5, v2, v1, isUniquelyReferenced_nonNull_native);

      *(v0 + 40) = v9;
    }
  }

  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;

  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  return result;
}

unint64_t sub_1E156BD6C()
{
  v7 = sub_1E13017E4(MEMORY[0x1E69E7CC0]);

  v0 = sub_1E1AF5F9C();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = 0;
    do
    {
      if (v2 == 32 && v3 == 0xE100000000000000 || (sub_1E1AF74AC() & 1) != 0)
      {

        v4 = 0;
      }

      else
      {
        if (v2 == 61 && v3 == 0xE100000000000000 || (sub_1E1AF74AC() & 1) != 0)
        {
          goto LABEL_11;
        }

        if (!v4)
        {
          MEMORY[0x1E68FEC90](v2, v3);

          v4 = 0;
          goto LABEL_3;
        }

        if (v4 != 1)
        {
LABEL_11:

          v4 = 2;
        }

        else
        {
          MEMORY[0x1E68FEC90](v2, v3);

          v4 = 1;
        }
      }

LABEL_3:
      v2 = sub_1E1AF5F9C();
      v3 = v5;
    }

    while (v5);
  }

  sub_1E156BC98();

  return v7;
}

uint64_t static MetricsFieldsContext.createFieldsContext(impressionsTracker:adamIdString:pageContextOverride:referrer:participatingInCrossfireReferral:pageFields:preloaded:advertRotationData:searchGhostHintData:contextualAction:deviceWindowData:impressionsAppendixData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v54 = a3;
  v55 = a7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7210);
  v57 = *(v26 - 8);
  v58 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v56 = &v52 - v27;
  v28 = sub_1E1AF4A9C();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF4A8C();
  if (a1)
  {
    v53 = a6;
    v32 = a5;
    v33 = a8;
    v34 = qword_1EE1E3948;
    swift_unknownObjectRetain();
    if (v34 != -1)
    {
      swift_once();
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80);
    __swift_project_value_buffer(v35, qword_1EE1E3950);
    v61 = a1;
    v62 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88);
    sub_1E1AF4A3C();
    (*(v29 + 8))(a9, v28);
    swift_unknownObjectRelease();
    (*(v29 + 32))(a9, v31, v28);
    a8 = v33;
    a5 = v32;
    a6 = v53;
  }

  if (a4)
  {
    v61 = v54;
    v62 = a4;
    if (qword_1EE1D2940 != -1)
    {
      swift_once();
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
    __swift_project_value_buffer(v36, qword_1EE1D2948);
    sub_1E1AF4A3C();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a6)
  {
    v61 = a5;
    v62 = a6;
    if (qword_1EE1E39B8 != -1)
    {
      swift_once();
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
    __swift_project_value_buffer(v37, qword_1EE1E39C0);
    sub_1E1AF4A3C();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a8)
  {
    v61 = v55;
    v62 = a8;
    if (qword_1EE1E3970 != -1)
    {
      swift_once();
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
    __swift_project_value_buffer(v38, qword_1EE1E3978);
    sub_1E1AF4A3C();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a10 != 2)
  {
    LOBYTE(v61) = a10 & 1;
    if (qword_1EE1E3928 != -1)
    {
      swift_once();
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
    __swift_project_value_buffer(v39, qword_1EE1E3930);
    sub_1E1AF4A3C();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a11)
  {
    v61 = a11;
    v40 = v56;
    sub_1E1AF4A5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    sub_1E1AF4A3C();
    (*(v57 + 8))(v40, v58);
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a12 != 2)
  {
    LOBYTE(v61) = a12 & 1;
    if (qword_1ECEB0E70 != -1)
    {
      swift_once();
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
    __swift_project_value_buffer(v41, qword_1EE1D2960);
    sub_1E1AF4A3C();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  sub_1E134FD1C(a13, &v59, &unk_1ECEB7230);
  if (v60)
  {
    sub_1E1308EC0(&v59, &v61);
    if (qword_1EE1D28F8 != -1)
    {
      swift_once();
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250);
    __swift_project_value_buffer(v42, qword_1EE1D2900);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8);
    sub_1E1AF4A3C();
    __swift_destroy_boxed_opaque_existential_1(&v61);
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  else
  {
    sub_1E1308058(&v59, &unk_1ECEB7230);
  }

  sub_1E134FD1C(a14, &v59, &qword_1ECEB2B70);
  if (!v60)
  {
    result = sub_1E1308058(&v59, &qword_1ECEB2B70);
    v45 = a18;
    if (!a15)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  sub_1E1308EC0(&v59, &v61);
  if (qword_1EE1D28B0 != -1)
  {
    swift_once();
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240);
  __swift_project_value_buffer(v43, qword_1EE1D28B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0);
  sub_1E1AF4A3C();
  __swift_destroy_boxed_opaque_existential_1(&v61);
  (*(v29 + 8))(a9, v28);
  result = (*(v29 + 32))(a9, v31, v28);
  v45 = a18;
  if (a15)
  {
LABEL_38:
    v61 = a15;
    v46 = qword_1ECEB0E78;

    if (v46 != -1)
    {
      swift_once();
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB8);
    __swift_project_value_buffer(v47, qword_1ECEB5998);
    type metadata accessor for Action();
    sub_1E1AF4A3C();
    (*(v29 + 8))(a9, v28);

    result = (*(v29 + 32))(a9, v31, v28);
  }

LABEL_41:
  if (v45)
  {
    v61 = v45;
    v62 = a19;
    v48 = qword_1EE1D28D0;
    swift_unknownObjectRetain();
    if (v48 != -1)
    {
      swift_once();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA8);
    __swift_project_value_buffer(v49, qword_1EE1D28D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB0);
    sub_1E1AF4A3C();
    (*(v29 + 8))(a9, v28);
    swift_unknownObjectRelease();
    result = (*(v29 + 32))(a9, v31, v28);
  }

  if (a16)
  {
    v61 = a16;
    v62 = a17;
    v50 = qword_1EE1D2918;
    swift_unknownObjectRetain();
    if (v50 != -1)
    {
      swift_once();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B98);
    __swift_project_value_buffer(v51, qword_1EE1D2920);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0);
    sub_1E1AF4A3C();
    (*(v29 + 8))(a9, v28);
    swift_unknownObjectRelease();
    return (*(v29 + 32))(a9, v31, v28);
  }

  return result;
}

uint64_t MetricsFieldsContext.impressionsTracker.getter()
{
  if (qword_1EE1E3948 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80);
  __swift_project_value_buffer(v0, qword_1EE1E3950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88);
  sub_1E1AF4AAC();
  return v2;
}

uint64_t MetricsFieldsContext.adamIdString.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB59B0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB59B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  sub_1E1AF4A4C();
  v7 = sub_1E1AF45FC();
  sub_1E1AF4ABC();
  (*(v1 + 8))(v3, v0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E1308058(v6, &qword_1ECEB59B8);
  }

  else
  {
    v9 = sub_1E1AF45CC();
    v11 = v10;
    (*(v8 + 8))(v6, v7);
    if (v11)
    {
      return v9;
    }
  }

  if (qword_1EE1D2940 != -1)
  {
    swift_once();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
  __swift_project_value_buffer(v13, qword_1EE1D2948);
  sub_1E1AF4ABC();

  return v14;
}

uint64_t MetricsFieldsContext.advertRotationData.getter()
{
  if (qword_1EE1D28F8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250);
  __swift_project_value_buffer(v0, qword_1EE1D2900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8);

  return sub_1E1AF4AAC();
}

uint64_t sub_1E156CFBC()
{
  v0 = sub_1E1AF4A9C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v13 - v6;
  __swift_allocate_value_buffer(v5, qword_1EE1E3998);
  v8 = __swift_project_value_buffer(v0, qword_1EE1E3998);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_1E1AF4A8C();
  sub_1E134FD1C(v18, &v13, &unk_1ECEB7230);
  if (v14)
  {
    sub_1E1308EC0(&v13, v15);
    if (qword_1EE1D28F8 != -1)
    {
      swift_once();
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250);
    __swift_project_value_buffer(v9, qword_1EE1D2900);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8);
    sub_1E1AF4A3C();
    __swift_destroy_boxed_opaque_existential_1(v15);
    (*(v1 + 8))(v7, v0);
    (*(v1 + 32))(v7, v4, v0);
  }

  else
  {
    sub_1E1308058(&v13, &unk_1ECEB7230);
  }

  sub_1E134FD1C(v16, &v13, &qword_1ECEB2B70);
  if (v14)
  {
    sub_1E1308EC0(&v13, v15);
    if (qword_1EE1D28B0 != -1)
    {
      swift_once();
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240);
    __swift_project_value_buffer(v10, qword_1EE1D28B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0);
    sub_1E1AF4A3C();
    __swift_destroy_boxed_opaque_existential_1(v15);
    (*(v1 + 8))(v7, v0);
    v11 = *(v1 + 32);
    v11(v7, v4, v0);
  }

  else
  {
    sub_1E1308058(&v13, &qword_1ECEB2B70);
    v11 = *(v1 + 32);
  }

  v11(v8, v7, v0);
  sub_1E1308058(v16, &qword_1ECEB2B70);
  return sub_1E1308058(v18, &unk_1ECEB7230);
}

uint64_t static MetricsFieldsContext.emptyContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1E3990 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF4A9C();
  v3 = __swift_project_value_buffer(v2, qword_1EE1E3998);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E156D3DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80);
  __swift_allocate_value_buffer(v0, qword_1EE1E3950);
  __swift_project_value_buffer(v0, qword_1EE1E3950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88);
  return sub_1E1AF4A6C();
}

uint64_t static MetricsFieldsContext.impressionsTrackerKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1E3948 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80);
  v3 = __swift_project_value_buffer(v2, qword_1EE1E3950);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static MetricsFieldsContext.adamIdStringKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1D2940 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
  v3 = __swift_project_value_buffer(v2, qword_1EE1D2948);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E156D5F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
  __swift_allocate_value_buffer(v0, qword_1EE1E39C0);
  __swift_project_value_buffer(v0, qword_1EE1E39C0);
  return sub_1E1AF4A6C();
}

uint64_t static MetricsFieldsContext.pageContextOverrideKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1E39B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
  v3 = __swift_project_value_buffer(v2, qword_1EE1E39C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E156D744(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1E1AF4A6C();
}

uint64_t static MetricsFieldsContext.referrerKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1E3970 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
  v3 = __swift_project_value_buffer(v2, qword_1EE1E3978);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E156D86C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
  __swift_allocate_value_buffer(v0, qword_1EE1E3930);
  __swift_project_value_buffer(v0, qword_1EE1E3930);
  return sub_1E1AF4A6C();
}

uint64_t static MetricsFieldsContext.participatingInCrossfireReferralKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1E3928 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
  v3 = __swift_project_value_buffer(v2, qword_1EE1E3930);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E156D998()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
  __swift_allocate_value_buffer(v0, qword_1EE1D2960);
  __swift_project_value_buffer(v0, qword_1EE1D2960);
  return sub_1E1AF4A6C();
}

uint64_t static MetricsFieldsContext.preloadedKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECEB0E70 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
  v3 = __swift_project_value_buffer(v2, qword_1EE1D2960);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E156DAC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250);
  __swift_allocate_value_buffer(v0, qword_1EE1D2900);
  __swift_project_value_buffer(v0, qword_1EE1D2900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8);
  return sub_1E1AF4A6C();
}

uint64_t static MetricsFieldsContext.advertRotationDataKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1D28F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250);
  v3 = __swift_project_value_buffer(v2, qword_1EE1D2900);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E156DC08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240);
  __swift_allocate_value_buffer(v0, qword_1EE1D28B8);
  __swift_project_value_buffer(v0, qword_1EE1D28B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0);
  return sub_1E1AF4A6C();
}

uint64_t static MetricsFieldsContext.searchGhostHintDataKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1D28B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240);
  v3 = __swift_project_value_buffer(v2, qword_1EE1D28B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E156DD48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B98);
  __swift_allocate_value_buffer(v0, qword_1EE1D2920);
  __swift_project_value_buffer(v0, qword_1EE1D2920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0);
  return sub_1E1AF4A6C();
}

uint64_t static MetricsFieldsContext.deviceWindowDataKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1D2918 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B98);
  v3 = __swift_project_value_buffer(v2, qword_1EE1D2920);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E156DE88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA8);
  __swift_allocate_value_buffer(v0, qword_1EE1D28D8);
  __swift_project_value_buffer(v0, qword_1EE1D28D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB0);
  return sub_1E1AF4A6C();
}

uint64_t static MetricsFieldsContext.impressionsAppendixKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1D28D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA8);
  v3 = __swift_project_value_buffer(v2, qword_1EE1D28D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E156DFC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB8);
  __swift_allocate_value_buffer(v0, qword_1ECEB5998);
  __swift_project_value_buffer(v0, qword_1ECEB5998);
  type metadata accessor for Action();
  return sub_1E1AF4A6C();
}

uint64_t static MetricsFieldsContext.contextualActionKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECEB0E78 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB8);
  v3 = __swift_project_value_buffer(v2, qword_1ECEB5998);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E156E14C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
  __swift_project_value_buffer(v3, a2);
  sub_1E1AF4ABC();
  return v5;
}

uint64_t sub_1E156E204(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
  __swift_project_value_buffer(v3, a2);
  sub_1E1AF4ABC();
  return v5;
}

uint64_t MetricsFieldsContext.searchGhostHintData.getter()
{
  if (qword_1EE1D28B0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240);
  __swift_project_value_buffer(v0, qword_1EE1D28B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0);

  return sub_1E1AF4AAC();
}

uint64_t MetricsFieldsContext.contextualAction.getter()
{
  if (qword_1ECEB0E78 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB8);
  __swift_project_value_buffer(v0, qword_1ECEB5998);
  type metadata accessor for Action();
  sub_1E1AF4ABC();
  return v2;
}

uint64_t MetricsFieldsContext.deviceWindowData.getter()
{
  if (qword_1EE1D2918 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B98);
  __swift_project_value_buffer(v0, qword_1EE1D2920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0);
  sub_1E1AF4AAC();
  return v2;
}

uint64_t MetricsFieldsContext.impressionsAppendixData.getter()
{
  if (qword_1EE1D28D0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA8);
  __swift_project_value_buffer(v0, qword_1EE1D28D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB0);
  sub_1E1AF4AAC();
  return v2;
}

uint64_t sub_1E156E4F4(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1E1AF71CC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v19 = 0;
    return v19 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v21 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 < 0)
  {
    v7 = v3;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v20 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v19 = 1;
    return v19 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for WidgetTodayCardTemplate();
    v22 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = v5;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_1E1AF71CC();
        goto LABEL_3;
      }

      if (v11)
      {
        v17 = MEMORY[0x1E68FFD80](v13 - 4, v22);
        if (v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v15 >= *(v21 + 16))
        {
          goto LABEL_30;
        }

        v17 = *(v22 + 8 * v13);

        if (v12)
        {
LABEL_20:
          v18 = MEMORY[0x1E68FFD80](v13 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v15 >= *(v20 + 16))
      {
        goto LABEL_31;
      }

      v18 = *(a2 + 8 * v13);

LABEL_25:
      v19 = static WidgetTodayCardTemplate.== infix(_:_:)(v17, v18);

      if (v19)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v19 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E156E6CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_1E1AF71CC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_1E1AF71CC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v33 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v10 = v11;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v34 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1E68FFD80](v12 - 4, a1);
          v15 = result;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_83;
          }

          v15 = *(a1 + 8 * v12);

          if (v34)
          {
LABEL_22:
            v16 = MEMORY[0x1E68FFD80](v12 - 4, a2);
            goto LABEL_27;
          }
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v16 = *(a2 + 8 * v12);

LABEL_27:
        v17 = *(v15 + 16) == *(v16 + 16) && *(v15 + 24) == *(v16 + 24);
        if (!v17 && (sub_1E1AF74AC() & 1) == 0 || *(v15 + 32) != *(v16 + 32))
        {
LABEL_47:

          return 0;
        }

        v18 = *(v15 + 48);
        v19 = *(v16 + 48);
        if (v18)
        {
          if (!v19 || (*(v15 + 40) != *(v16 + 40) || v18 != v19) && (sub_1E1AF74AC() & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else if (v19)
        {
          goto LABEL_47;
        }

        if ((*(v15 + 56) != *(v16 + 56) || *(v15 + 64) != *(v16 + 64)) && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_47;
        }

        v20 = *(v15 + 72);
        v21 = *(v16 + 72);

        result = v20 == v21;
        if (v20 == v21)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return result;
      }
    }

    v22 = a1 + 32;
    v23 = a2 + 32;
    v24 = *(v33 + 16);
    v25 = *(v9 + 16);
    while (1)
    {
      if (!v24)
      {
        goto LABEL_81;
      }

      if (!v25)
      {
        break;
      }

      v26 = *v22;
      v27 = *v23;
      v28 = *(*v22 + 16) == *(*v23 + 16) && *(*v22 + 24) == *(*v23 + 24);
      if (!v28 && (sub_1E1AF74AC() & 1) == 0 || *(v26 + 32) != *(v27 + 32))
      {
        return 0;
      }

      v29 = *(v26 + 48);
      v30 = *(v27 + 48);
      if (v29)
      {
        if (!v30)
        {
          return 0;
        }

        v31 = *(v26 + 40) == *(v27 + 40) && v29 == v30;
        if (!v31 && (sub_1E1AF74AC() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v30)
      {
        return 0;
      }

      v32 = *(v26 + 56) == *(v27 + 56) && *(v26 + 64) == *(v27 + 64);
      if (!v32 && (sub_1E1AF74AC() & 1) == 0 || *(v26 + 72) != *(v27 + 72))
      {
        return 0;
      }

      --v25;
      --v24;
      v22 += 8;
      v23 += 8;
      result = 1;
      if (!--v5)
      {
        return result;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E156EA28(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_1E1AF71CC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_1E1AF71CC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_66:
    v17 = 0;
    return v17 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_66;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_42;
  }

  v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4)
  {
    v7 = v8;
  }

  v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v9 = v10;
  }

  if (v7 == v9)
  {
LABEL_42:
    v17 = 1;
    return v17 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v30 = a2 & 0xC000000000000001;
      v11 = 4;
      while (1)
      {
        v12 = v11 - 4;
        v13 = v11 - 3;
        if (__OFADD__(v11 - 4, 1))
        {
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1E68FFD80](v11 - 4, a1);
          v14 = result;
          if (v30)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_74;
          }

          v14 = *(a1 + 8 * v11);

          if (v30)
          {
LABEL_23:
            v15 = MEMORY[0x1E68FFD80](v11 - 4, a2);
            goto LABEL_28;
          }
        }

        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v15 = *(a2 + 8 * v11);

LABEL_28:
        v16 = *(v14 + 16) == *(v15 + 16) && *(v14 + 24) == *(v15 + 24);
        if (!v16 && (sub_1E1AF74AC() & 1) == 0 || *(v14 + 32) != *(v15 + 32) || *(v14 + 40) != *(v15 + 40) || (sub_1E1457BE4(*(v14 + 64), *(v15 + 64)) & 1) == 0 || (*(v14 + 72) != *(v15 + 72) || *(v14 + 80) != *(v15 + 80)) && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_65;
        }

        v17 = sub_1E156F1DC(*(v14 + 104), *(v15 + 104));

        if (v17)
        {
          ++v11;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v17 & 1;
      }
    }

    v18 = a1 + 32;
    v19 = a2 + 32;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (!v20)
      {
        goto LABEL_72;
      }

      if (!v21)
      {
        break;
      }

      v22 = *v18;
      v23 = *v19;
      v24 = *(*v18 + 16) == *(*v19 + 16) && *(*v18 + 24) == *(*v19 + 24);
      if (!v24 && (sub_1E1AF74AC() & 1) == 0)
      {
        goto LABEL_66;
      }

      if (*(v22 + 32) != *(v23 + 32) || *(v22 + 40) != *(v23 + 40))
      {
        goto LABEL_66;
      }

      v26 = *(v23 + 64);
      v27 = *(v22 + 64);

      if ((sub_1E1457BE4(v27, v26) & 1) == 0 || (*(v22 + 72) == *(v23 + 72) ? (v28 = *(v22 + 80) == *(v23 + 80)) : (v28 = 0), !v28 && (sub_1E1AF74AC() & 1) == 0))
      {
LABEL_65:

        goto LABEL_66;
      }

      v29 = sub_1E156F1DC(*(v22 + 104), *(v23 + 104));

      if ((v29 & 1) == 0)
      {
        goto LABEL_66;
      }

      --v21;
      --v20;
      v18 += 8;
      v19 += 8;
      v17 = 1;
      if (!--v5)
      {
        return v17 & 1;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E156ED5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1E1AF74AC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1E156EDEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v8 = v4[1];
      v7 = v4[2];
      v9 = v4[3];
      v25 = v4[5];
      v10 = *(v3 - 1);
      v11 = *v3;
      v12 = v3[1];
      v13 = v3[2];
      v14 = v3[3];
      v23 = v3[4];
      v24 = v3[5];
      v22 = v4[4];
      if (v5)
      {
        if (!v10)
        {
          return 0;
        }

        if (*(v4 - 2) != *(v3 - 2) || v5 != v10)
        {
          v21 = v4[3];
          v15 = v3[3];
          v16 = sub_1E1AF74AC();
          v14 = v15;
          v9 = v21;
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v10)
      {
        return 0;
      }

      if (v6 != v11 || v8 != v12)
      {
        v17 = v9;
        v18 = v14;
        v19 = sub_1E1AF74AC();
        v14 = v18;
        v9 = v17;
        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }

      if (v9)
      {
        if (!v14 || (v7 != v13 || v9 != v14) && (sub_1E1AF74AC() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v14)
      {
        return 0;
      }

      if (v25)
      {
        if (!v24 || (v22 != v23 || v25 != v24) && (sub_1E1AF74AC() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v24)
      {
        return 0;
      }

      v4 += 8;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1E156EF9C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1E1355E88();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1E68FFD80](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1E68FFD80](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1E1AF6D0C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1E1AF6D0C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1E1AF71CC();
  }

  result = sub_1E1AF71CC();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1E156F1DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 49);
    v4 = (a1 + 49);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v19 = *(v3 - 9);
      v20 = *(v4 - 9);
      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = 1667851624;
      if (*(v4 - 17) == 2)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v9 = 7496556;
        v10 = 0xE300000000000000;
      }

      v11 = 1734701162;
      if (*(v4 - 17))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v11 = 6778480;
        v12 = 0xE300000000000000;
      }

      if (*(v4 - 17) <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*(v4 - 17) <= 1u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (*(v3 - 17) > 1u)
      {
        if (*(v3 - 17) == 2)
        {
          v15 = 0xE400000000000000;
          if (v13 != 1667851624)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v15 = 0xE300000000000000;
          if (v13 != 7496556)
          {
            goto LABEL_29;
          }
        }
      }

      else if (*(v3 - 17))
      {
        v15 = 0xE400000000000000;
        if (v13 != 1734701162)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v15 = 0xE300000000000000;
        if (v13 != 6778480)
        {
          goto LABEL_29;
        }
      }

      if (v14 != v15)
      {
LABEL_29:
        v16 = sub_1E1AF74AC();

        if ((v16 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_30;
      }

LABEL_30:
      result = 0;
      if (v5)
      {
        if (!v7)
        {
          return result;
        }
      }

      else
      {
        if (v20 == v19)
        {
          v18 = v7;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          return result;
        }
      }

      if ((v6 ^ v8))
      {
        return result;
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1E156F3B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_135:
    v5 = sub_1E1AF71CC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = sub_1E1AF71CC();
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if (v5 < 0)
  {
    goto LABEL_142;
  }

  if (((a2 | a1) & 0xC000000000000001) != 0)
  {
    v50 = a2 & 0xC000000000000001;
    for (i = 4; ; ++i)
    {
      v12 = i - 4;
      v13 = i - 3;
      if (__OFADD__(i - 4, 1))
      {
        __break(1u);
        goto LABEL_135;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E68FFD80](i - 4, a1);
        v14 = result;
        if (v50)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_140;
        }

        v14 = *(a1 + 8 * i);

        if (v50)
        {
LABEL_23:
          v15 = MEMORY[0x1E68FFD80](i - 4, a2);
          goto LABEL_28;
        }
      }

      if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_141;
      }

      v15 = *(a2 + 8 * i);

LABEL_28:
      v16 = *(v14 + 16);
      v17 = *(v15 + 16);
      v18 = 0x6E6F69736976;
      if (v16 == 5)
      {
        v18 = 6513005;
      }

      v19 = 0xE600000000000000;
      if (v16 == 5)
      {
        v19 = 0xE300000000000000;
      }

      v20 = 0x6863746177;
      if (v16 != 3)
      {
        v20 = 30324;
      }

      v21 = 0xE200000000000000;
      if (v16 == 3)
      {
        v21 = 0xE500000000000000;
      }

      if (*(v14 + 16) <= 4u)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = 0x736567617373656DLL;
      if (v16 == 1)
      {
        v22 = 6578544;
      }

      v23 = 0xE800000000000000;
      if (v16 == 1)
      {
        v23 = 0xE300000000000000;
      }

      if (!*(v14 + 16))
      {
        v22 = 0x656E6F6870;
        v23 = 0xE500000000000000;
      }

      if (*(v14 + 16) <= 2u)
      {
        v24 = v22;
      }

      else
      {
        v24 = v18;
      }

      if (*(v14 + 16) <= 2u)
      {
        v25 = v23;
      }

      else
      {
        v25 = v19;
      }

      if (*(v15 + 16) <= 2u)
      {
        if (*(v15 + 16))
        {
          if (v17 == 1)
          {
            v26 = 0xE300000000000000;
            if (v24 != 6578544)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v26 = 0xE800000000000000;
            if (v24 != 0x736567617373656DLL)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          v26 = 0xE500000000000000;
          if (v24 != 0x656E6F6870)
          {
            goto LABEL_71;
          }
        }
      }

      else if (*(v15 + 16) > 4u)
      {
        if (v17 == 5)
        {
          v26 = 0xE300000000000000;
          if (v24 != 6513005)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v26 = 0xE600000000000000;
          if (v24 != 0x6E6F69736976)
          {
            goto LABEL_71;
          }
        }
      }

      else if (v17 == 3)
      {
        v26 = 0xE500000000000000;
        if (v24 != 0x6863746177)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v26 = 0xE200000000000000;
        if (v24 != 30324)
        {
          goto LABEL_71;
        }
      }

      if (v25 == v26)
      {

        goto LABEL_72;
      }

LABEL_71:
      v27 = sub_1E1AF74AC();

      if ((v27 & 1) == 0)
      {
        goto LABEL_131;
      }

LABEL_72:
      v28 = *(v14 + 48);
      v29 = *(v14 + 56);

      v30 = *(v15 + 48);
      v4 = *(v15 + 56);

      if (v29)
      {
        if (!v4)
        {
          return 0;
        }
      }

      else
      {
        if (v28 == v30)
        {
          v31 = v4;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
          return 0;
        }
      }

      if (v13 == v5)
      {
        return 1;
      }
    }
  }

  v32 = a1 + 32;
  v33 = a2 + 32;
  v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v34)
  {
    if (!v35)
    {
      goto LABEL_139;
    }

    v36 = *v32;
    v37 = *(*v32 + 16);
    if (v37 <= 2)
    {
      if (*(*v32 + 16))
      {
        if (v37 == 1)
        {
          v39 = 6578544;
        }

        else
        {
          v39 = 0x736567617373656DLL;
        }

        if (v37 == 1)
        {
          v38 = 0xE300000000000000;
        }

        else
        {
          v38 = 0xE800000000000000;
        }
      }

      else
      {
        v38 = 0xE500000000000000;
        v39 = 0x656E6F6870;
      }
    }

    else if (*(*v32 + 16) > 4u)
    {
      if (v37 == 5)
      {
        v38 = 0xE300000000000000;
        v39 = 6513005;
      }

      else
      {
        v38 = 0xE600000000000000;
        v39 = 0x6E6F69736976;
      }
    }

    else if (v37 == 3)
    {
      v38 = 0xE500000000000000;
      v39 = 0x6863746177;
    }

    else
    {
      v38 = 0xE200000000000000;
      v39 = 30324;
    }

    v40 = *v33;
    v41 = *(*v33 + 16);
    if (v41 <= 2)
    {
      if (*(*v33 + 16))
      {
        if (v41 == 1)
        {
          v42 = 0xE300000000000000;
          if (v39 != 6578544)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v42 = 0xE800000000000000;
          if (v39 != 0x736567617373656DLL)
          {
            goto LABEL_124;
          }
        }
      }

      else
      {
        v42 = 0xE500000000000000;
        if (v39 != 0x656E6F6870)
        {
          goto LABEL_124;
        }
      }
    }

    else if (*(*v33 + 16) > 4u)
    {
      if (v41 == 5)
      {
        v43 = 6513005;
      }

      else
      {
        v43 = 0x6E6F69736976;
      }

      if (v41 == 5)
      {
        v42 = 0xE300000000000000;
      }

      else
      {
        v42 = 0xE600000000000000;
      }

      if (v39 != v43)
      {
        goto LABEL_124;
      }
    }

    else if (v41 == 3)
    {
      v42 = 0xE500000000000000;
      if (v39 != 0x6863746177)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v42 = 0xE200000000000000;
      if (v39 != 30324)
      {
        goto LABEL_124;
      }
    }

    if (v38 == v42)
    {

      goto LABEL_125;
    }

LABEL_124:
    v44 = sub_1E1AF74AC();

    if ((v44 & 1) == 0)
    {
LABEL_131:

      return 0;
    }

LABEL_125:
    v45 = *(v36 + 48);
    v46 = *(v36 + 56);

    v47 = *(v40 + 48);
    v48 = *(v40 + 56);

    if (v46)
    {
      if (!v48)
      {
        return 0;
      }
    }

    else
    {
      if (v45 == v47)
      {
        v49 = v48;
      }

      else
      {
        v49 = 1;
      }

      if (v49)
      {
        return 0;
      }
    }

    --v35;
    --v34;
    v32 += 8;
    v33 += 8;
    result = 1;
    if (!--v5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_1E156F9F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_1E1AF71CC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_1E1AF71CC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4)
  {
    v7 = v8;
  }

  v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v9 = v10;
  }

  if (v7 == v9)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a1 & 0xC000000000000001;
      v12 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v15 = i - 4;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
LABEL_207:
          __break(1u);
          goto LABEL_208;
        }

        if (v11)
        {
          result = MEMORY[0x1E68FFD80](i - 4, a1);
          v16 = result;
          v68 = i - 3;
          if (v12)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_210;
          }

          v16 = *(a1 + 8 * i);

          v68 = i - 3;
          if (v12)
          {
LABEL_26:
            v17 = MEMORY[0x1E68FFD80](i - 4, a2);
            goto LABEL_31;
          }
        }

        if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_211;
        }

        v17 = *(a2 + 8 * i);

LABEL_31:
        v18 = *(v16 + 16);
        v19 = *(v17 + 16);
        v70 = v17;
        if (v18)
        {
          if (!v19)
          {
            goto LABEL_196;
          }

          v20 = *(v18 + 16) == *(v19 + 16) && *(v18 + 24) == *(v19 + 24);
          if (!v20 && (sub_1E1AF74AC() & 1) == 0 || *(v18 + 32) != *(v19 + 32) || *(v18 + 40) != *(v19 + 40))
          {
            goto LABEL_196;
          }

          v21 = *(v18 + 64);
          if (v21 <= 3)
          {
            if (*(v18 + 64) > 1u)
            {
              if (v21 == 2)
              {
                v23 = 0xD000000000000016;
                v22 = 0x80000001E1B58330;
              }

              else
              {
                v22 = 0xE500000000000000;
                v23 = 0x646E756F72;
              }
            }

            else
            {
              if (*(v18 + 64))
              {
                v23 = 0x526465646E756F72;
              }

              else
              {
                v23 = 0x6669636570736E75;
              }

              if (*(v18 + 64))
              {
                v22 = 0xEB00000000746365;
              }

              else
              {
                v22 = 0xEB00000000646569;
              }
            }
          }

          else if (*(v18 + 64) <= 5u)
          {
            if (v21 == 4)
            {
              v23 = 0xD000000000000010;
              v22 = 0x80000001E1B58350;
            }

            else
            {
              v22 = 0xE400000000000000;
              v23 = 1819044208;
            }
          }

          else if (v21 == 6)
          {
            v22 = 0xE300000000000000;
            v23 = 7364969;
          }

          else if (v21 == 7)
          {
            v22 = 0xE600000000000000;
            v23 = 0x746365527674;
          }

          else
          {
            v22 = 0xE900000000000064;
            v23 = 0x656E726F64616E75;
          }

          v24 = *(v19 + 64);
          v66 = v16;
          if (v24 <= 3)
          {
            if (*(v19 + 64) > 1u)
            {
              if (v24 == 2)
              {
                v26 = 0xD000000000000016;
                v25 = 0x80000001E1B58330;
              }

              else
              {
                v25 = 0xE500000000000000;
                v26 = 0x646E756F72;
              }
            }

            else
            {
              v26 = 0x6669636570736E75;
              v25 = 0xEB00000000646569;
              if (*(v19 + 64))
              {
                v26 = 0x526465646E756F72;
                v25 = 0xEB00000000746365;
              }
            }
          }

          else if (*(v19 + 64) <= 5u)
          {
            if (v24 == 4)
            {
              v26 = 0xD000000000000010;
              v25 = 0x80000001E1B58350;
            }

            else
            {
              v25 = 0xE400000000000000;
              v26 = 1819044208;
            }
          }

          else if (v24 == 6)
          {
            v25 = 0xE300000000000000;
            v26 = 7364969;
          }

          else if (v24 == 7)
          {
            v25 = 0xE600000000000000;
            v26 = 0x746365527674;
          }

          else
          {
            v25 = 0xE900000000000064;
            v26 = 0x656E726F64616E75;
          }

          v27 = v12;
          if (v23 == v26 && v22 == v25)
          {
          }

          else
          {
            v28 = sub_1E1AF74AC();

            if ((v28 & 1) == 0)
            {
              goto LABEL_195;
            }
          }

          if ((*(v18 + 72) != *(v19 + 72) || *(v18 + 80) != *(v19 + 80)) && (sub_1E1AF74AC() & 1) == 0)
          {
            goto LABEL_195;
          }

          v29 = sub_1E156F1DC(*(v18 + 104), *(v19 + 104));

          v12 = v27;
          v11 = a1 & 0xC000000000000001;
          v16 = v66;
          if ((v29 & 1) == 0)
          {
            goto LABEL_196;
          }
        }

        else if (v19)
        {
          goto LABEL_196;
        }

        v30 = *(v16 + 24);
        v31 = *(v70 + 24);
        if (v30)
        {
          if (!v31)
          {
            goto LABEL_196;
          }

          if ((sub_1E1AEFC4C() & 1) == 0)
          {
            goto LABEL_195;
          }

          v32 = *(v30 + OBJC_IVAR____TtC11AppStoreKit5Video_preview);
          v33 = *(v31 + OBJC_IVAR____TtC11AppStoreKit5Video_preview);
          v34 = *(v32 + 16) == *(v33 + 16) && *(v32 + 24) == *(v33 + 24);
          if (!v34 && (sub_1E1AF74AC() & 1) == 0)
          {
            goto LABEL_195;
          }

          if (*(v32 + 32) != *(v33 + 32) || *(v32 + 40) != *(v33 + 40) || (sub_1E1457BE4(*(v32 + 64), *(v33 + 64)) & 1) == 0)
          {
            goto LABEL_195;
          }

          v35 = *(v32 + 72) == *(v33 + 72) && *(v32 + 80) == *(v33 + 80);
          if (!v35 && (sub_1E1AF74AC() & 1) == 0)
          {
            goto LABEL_195;
          }

          v14 = sub_1E156F1DC(*(v32 + 104), *(v33 + 104));

          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {

          if (v31)
          {
            goto LABEL_197;
          }
        }

        result = 1;
        if (v68 == v5)
        {
          return result;
        }
      }
    }

    v36 = a1 + 32;
    v37 = a2 + 32;
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (!v38)
      {
        goto LABEL_207;
      }

      if (!v39)
      {
        break;
      }

      v41 = *v36;
      v42 = *v37;
      v43 = *(*v36 + 16);
      v44 = *(*v37 + 16);
      if (v43)
      {
        if (!v44)
        {
          return 0;
        }

        v45 = *(v43 + 16) == *(v44 + 16) && *(v43 + 24) == *(v44 + 24);
        if (!v45 && (sub_1E1AF74AC() & 1) == 0)
        {
          return 0;
        }

        if (*(v43 + 32) != *(v44 + 32) || *(v43 + 40) != *(v44 + 40))
        {
          return 0;
        }

        v47 = *(v43 + 64);
        v67 = v38;
        if (v47 <= 3)
        {
          v50 = 0xD000000000000016;
          if (v47 != 2)
          {
            v50 = 0x646E756F72;
          }

          v51 = 0x80000001E1B58330;
          if (v47 != 2)
          {
            v51 = 0xE500000000000000;
          }

          v52 = 0x6669636570736E75;
          if (*(v43 + 64))
          {
            v52 = 0x526465646E756F72;
          }

          v53 = 0xEB00000000646569;
          if (*(v43 + 64))
          {
            v53 = 0xEB00000000746365;
          }

          if (*(v43 + 64) <= 1u)
          {
            v49 = v52;
          }

          else
          {
            v49 = v50;
          }

          if (*(v43 + 64) <= 1u)
          {
            v48 = v53;
          }

          else
          {
            v48 = v51;
          }
        }

        else if (*(v43 + 64) <= 5u)
        {
          if (v47 == 4)
          {
            v49 = 0xD000000000000010;
            v48 = 0x80000001E1B58350;
          }

          else
          {
            v48 = 0xE400000000000000;
            v49 = 1819044208;
          }
        }

        else if (v47 == 6)
        {
          v48 = 0xE300000000000000;
          v49 = 7364969;
        }

        else if (v47 == 7)
        {
          v48 = 0xE600000000000000;
          v49 = 0x746365527674;
        }

        else
        {
          v48 = 0xE900000000000064;
          v49 = 0x656E726F64616E75;
        }

        v54 = *(v44 + 64);
        if (v54 <= 3)
        {
          if (*(v44 + 64) > 1u)
          {
            if (v54 == 2)
            {
              v56 = 0xD000000000000016;
              v55 = 0x80000001E1B58330;
            }

            else
            {
              v55 = 0xE500000000000000;
              v56 = 0x646E756F72;
            }
          }

          else
          {
            if (*(v44 + 64))
            {
              v56 = 0x526465646E756F72;
            }

            else
            {
              v56 = 0x6669636570736E75;
            }

            if (*(v44 + 64))
            {
              v55 = 0xEB00000000746365;
            }

            else
            {
              v55 = 0xEB00000000646569;
            }
          }
        }

        else if (*(v44 + 64) <= 5u)
        {
          if (v54 == 4)
          {
            v56 = 0xD000000000000010;
            v55 = 0x80000001E1B58350;
          }

          else
          {
            v55 = 0xE400000000000000;
            v56 = 1819044208;
          }
        }

        else if (v54 == 6)
        {
          v55 = 0xE300000000000000;
          v56 = 7364969;
        }

        else if (v54 == 7)
        {
          v55 = 0xE600000000000000;
          v56 = 0x746365527674;
        }

        else
        {
          v55 = 0xE900000000000064;
          v56 = 0x656E726F64616E75;
        }

        v69 = v37;
        v71 = v36;
        if (v49 == v56 && v48 == v55)
        {

          v57 = v42;
        }

        else
        {
          v58 = sub_1E1AF74AC();

          v57 = v42;

          if ((v58 & 1) == 0)
          {
            goto LABEL_195;
          }
        }

        if ((*(v43 + 72) != *(v44 + 72) || *(v43 + 80) != *(v44 + 80)) && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_195;
        }

        v59 = sub_1E156F1DC(*(v43 + 104), *(v44 + 104));

        v42 = v57;
        v37 = v69;
        v36 = v71;
        v38 = v67;
        if ((v59 & 1) == 0)
        {
          goto LABEL_196;
        }
      }

      else
      {
        if (v44)
        {
          return 0;
        }
      }

      v60 = *(v41 + 24);
      v61 = *(v42 + 24);
      if (v60)
      {
        if (!v61)
        {
          goto LABEL_196;
        }

        if ((sub_1E1AEFC4C() & 1) == 0 || ((v62 = *(v60 + OBJC_IVAR____TtC11AppStoreKit5Video_preview), v63 = *(v61 + OBJC_IVAR____TtC11AppStoreKit5Video_preview), *(v62 + 16) == *(v63 + 16)) ? (v64 = *(v62 + 24) == *(v63 + 24)) : (v64 = 0), !v64 && (sub_1E1AF74AC() & 1) == 0 || *(v62 + 32) != *(v63 + 32) || *(v62 + 40) != *(v63 + 40) || (sub_1E1457BE4(*(v62 + 64), *(v63 + 64)) & 1) == 0 || (*(v62 + 72) == *(v63 + 72) ? (v65 = *(v62 + 80) == *(v63 + 80)) : (v65 = 0), !v65 && (sub_1E1AF74AC() & 1) == 0)))
        {
LABEL_195:

LABEL_196:

LABEL_197:

          return 0;
        }

        v40 = sub_1E156F1DC(*(v62 + 104), *(v63 + 104));

        if ((v40 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {

        if (v61)
        {
          goto LABEL_197;
        }
      }

      --v39;
      --v38;
      v36 += 8;
      v37 += 8;
      result = 1;
      if (!--v5)
      {
        return result;
      }
    }

LABEL_208:
    __break(1u);
  }

  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
  return result;
}

uint64_t sub_1E15704CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = (v4 + 24 * v3);
    v7 = v6[1];
    v8 = v6[2];
    v9 = (v5 + 24 * v3);
    v10 = v9[1];
    v11 = v9[2];
    if (v7)
    {
      if (!v10)
      {
        return 0;
      }

      if (*v6 != *v9 || v7 != v10)
      {
        v13 = v2;
        v14 = v3;
        v15 = v4;
        v16 = v5;
        v17 = sub_1E1AF74AC();
        v5 = v16;
        v4 = v15;
        v3 = v14;
        v2 = v13;
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v10)
    {
      return 0;
    }

    v18 = *(v8 + 16);
    if (v18 != *(v11 + 16))
    {
      return 0;
    }

    if (v18)
    {
      v19 = v8 == v11;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v55 = v5;
      v56 = v4;
      v57 = v3;
      v58 = v2;
      v66 = v11 + 32;
      v67 = v8 + 32;

      v20 = 0;
      v65 = v11;
      v64 = v8;
      v59 = v18;
      while (1)
      {
        if (v20 >= *(v8 + 16))
        {
          goto LABEL_89;
        }

        result = sub_1E141D0E8(v67 + 136 * v20, v77);
        if (v20 >= *(v11 + 16))
        {
          goto LABEL_90;
        }

        v68 = v20;
        sub_1E141D0E8(v66 + 136 * v20, v70);
        if ((v77[0] != v70[0] || v77[1] != v70[1]) && (sub_1E1AF74AC() & 1) == 0 || (v77[4] != v70[4] || v77[5] != v70[5]) && (sub_1E1AF74AC() & 1) == 0 || (v77[2] != v70[2] || v77[3] != v70[3]) && (sub_1E1AF74AC() & 1) == 0)
        {
LABEL_85:
          sub_1E141D144(v70);
          sub_1E141D144(v77);
LABEL_86:

          return 0;
        }

        if (v78)
        {
          if (v78 == 1)
          {
            v21 = 0x6553656C676E6973;
            v22 = 0xEF6E6F697463656CLL;
            v23 = v71;
            if (!v71)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v21 = 0xD000000000000011;
            v22 = 0x80000001E1B56180;
            v23 = v71;
            if (!v71)
            {
LABEL_41:
              v24 = 0xE600000000000000;
              if (v21 != 0x656C67676F74)
              {
                goto LABEL_48;
              }

              goto LABEL_46;
            }
          }
        }

        else
        {
          v22 = 0xE600000000000000;
          v21 = 0x656C67676F74;
          v23 = v71;
          if (!v71)
          {
            goto LABEL_41;
          }
        }

        if (v23 == 1)
        {
          v24 = 0xEF6E6F697463656CLL;
          if (v21 != 0x6553656C676E6973)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v24 = 0x80000001E1B56180;
          if (v21 != 0xD000000000000011)
          {
            goto LABEL_48;
          }
        }

LABEL_46:
        if (v22 == v24)
        {

          goto LABEL_49;
        }

LABEL_48:
        v25 = sub_1E1AF74AC();

        if ((v25 & 1) == 0)
        {
          goto LABEL_85;
        }

LABEL_49:
        if ((sub_1E16B0884(v80, v73) & 1) == 0)
        {
          goto LABEL_85;
        }

        v26 = *(v79 + 16);
        if (v26 != *(v72 + 16))
        {
          goto LABEL_85;
        }

        if (v26 && v79 != v72)
        {
          v27 = (v72 + 48);
          v28 = (v79 + 48);
          do
          {
            v29 = *(v28 - 1);
            v30 = *v28;
            v32 = v28[1];
            v31 = v28[2];
            v33 = v28[3];
            v69 = v28[4];
            v34 = v28[5];
            v35 = *(v27 - 1);
            v36 = *v27;
            v38 = v27[1];
            v37 = v27[2];
            v39 = v27[3];
            v40 = v27[4];
            v41 = v27[5];
            if (v29)
            {
              if (!v35)
              {
                goto LABEL_85;
              }

              if (*(v28 - 2) != *(v27 - 2) || v29 != v35)
              {
                v62 = v28[5];
                v63 = v27[4];
                v42 = v27[5];
                v60 = v27[2];
                v61 = v28[2];
                v43 = sub_1E1AF74AC();
                v37 = v60;
                v31 = v61;
                v41 = v42;
                v34 = v62;
                v40 = v63;
                if ((v43 & 1) == 0)
                {
                  goto LABEL_85;
                }
              }
            }

            else if (v35)
            {
              goto LABEL_85;
            }

            if (v30 != v36 || v32 != v38)
            {
              v44 = v34;
              v45 = v41;
              v46 = v33;
              v47 = v31;
              v48 = v37;
              v49 = sub_1E1AF74AC();
              v37 = v48;
              v31 = v47;
              v33 = v46;
              v41 = v45;
              v34 = v44;
              if ((v49 & 1) == 0)
              {
                goto LABEL_85;
              }
            }

            if (v33)
            {
              if (!v39)
              {
                goto LABEL_85;
              }

              if (v31 != v37 || v33 != v39)
              {
                v50 = v34;
                v51 = v41;
                v52 = sub_1E1AF74AC();
                v41 = v51;
                v34 = v50;
                if ((v52 & 1) == 0)
                {
                  goto LABEL_85;
                }
              }
            }

            else if (v39)
            {
              goto LABEL_85;
            }

            if (v34)
            {
              if (!v41 || (v69 != v40 || v34 != v41) && (sub_1E1AF74AC() & 1) == 0)
              {
                goto LABEL_85;
              }
            }

            else if (v41)
            {
              goto LABEL_85;
            }

            v28 += 8;
            v27 += 8;
          }

          while (--v26);
        }

        if (v81 != v74 || v82 != v75)
        {
          goto LABEL_85;
        }

        v53 = v83;
        v54 = v76;
        sub_1E141D144(v70);
        result = sub_1E141D144(v77);
        if (v53 != v54)
        {
          goto LABEL_86;
        }

        v20 = v68 + 1;
        v11 = v65;
        v8 = v64;
        if (v68 + 1 == v59)
        {

          v3 = v57;
          v2 = v58;
          v5 = v55;
          v4 = v56;
          break;
        }
      }
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
  return result;
}

uint64_t sub_1E1570A78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_1E141D0E8(v3, v8);
        sub_1E141D0E8(v4, v7);
        v5 = _s11AppStoreKit10PageFacetsV5FacetV2eeoiySbAE_AEtFZ_0(v8, v7);
        sub_1E141D144(v7);
        sub_1E141D144(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 136;
        v4 += 136;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1E1570B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreTab() - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1E14B16F8(v13, v10);
        sub_1E14B16F8(v14, v7);
        v16 = _s11AppStoreKit0B3TabV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_1E14B17D4(v7);
        sub_1E14B17D4(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1E1570CB4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if (a4 >> 62)
  {
    v10 = result;
    v11 = a4;
    v12 = a2;
    v13 = a3;
    result = sub_1E1AF71CC();
    if (v10 < 0 || result < v10)
    {
      goto LABEL_23;
    }

    v14 = sub_1E1AF71CC();
    a3 = v13;
    a2 = v12;
    a4 = v11;
    v5 = v14;
    result = v10;
    if (v13 < 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v5 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 < result)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (a3 < 0)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  if (v5 < a3)
  {
    goto LABEL_22;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_12:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v9 = result;
    v8 = sub_1E1AF71CC();
    result = v9;
  }

  else
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < 0 || v8 < result)
  {
    goto LABEL_25;
  }

  return result;
}

AppStoreKit::GuidedSearchTokenCollection __swiftcall GuidedSearchTokenCollection.merging(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v3 = v1;
  v4 = *v2;
  v14 = sub_1E1571884(v4, contentsOf._rawValue);
  v6 = sub_1E1571B80(v5);
  v8 = v7;

  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v9 = v4 >> 62 ? sub_1E1AF71CC() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = 0;
      while (1)
      {
        if (v9 == v10)
        {
          v10 = 0;
LABEL_16:
          sub_1E1921E70(v10, v10, v6);
          goto LABEL_17;
        }

        if ((v4 & 0xC000000000000001) == 0)
        {
          break;
        }

        v12 = *(MEMORY[0x1E68FFD80](v10, v4) + 32);
        swift_unknownObjectRelease();
        if (v12 != 1)
        {
          goto LABEL_16;
        }

LABEL_10:
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_21;
        }
      }

      if (v10 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      if (!sub_1E1AF71CC())
      {
        goto LABEL_17;
      }
    }

    if ((*(*(v4 + 8 * v10 + 32) + 32) & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

LABEL_17:

  if (v8 >> 62)
  {
    if (sub_1E1AF71CC())
    {
      goto LABEL_19;
    }

LABEL_25:

    goto LABEL_26;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

LABEL_19:
  result.tokens._rawValue = sub_1E172883C(v8);
LABEL_26:
  *v3 = v14;
  return result;
}

AppStoreKit::GuidedSearchTokenCollection __swiftcall GuidedSearchTokenCollection.updateSelection(ofTokenAt:to:)(Swift::Int ofTokenAt, Swift::Bool to)
{
  v4 = to;
  v6 = v2;
  v14 = *v3;

  sub_1E14878F4(ofTokenAt);
  v7 = GuidedSearchToken.withSelection(_:)(v4);

  v8 = v14 >> 62;
  if (v14 >> 62)
  {
LABEL_23:
    v9 = sub_1E1AF71CC();
  }

  else
  {
    v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {
      if (v8)
      {
        v10 = sub_1E1AF71CC();
        goto LABEL_17;
      }

      v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
      sub_1E1921F84(v10, v10, v7);

      *v6 = v14;
      return result;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v10 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if ((*(*(v14 + 8 * v10 + 32) + 32) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_8:
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_22;
    }
  }

  v12 = *(MEMORY[0x1E68FFD80](v10, v14) + 32);
  swift_unknownObjectRelease();
  if (v12 == 1)
  {
    goto LABEL_8;
  }

LABEL_12:
  if (!v8)
  {
    result.tokens._rawValue = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_18;
  }

LABEL_17:
  result.tokens._rawValue = sub_1E1AF71CC();
LABEL_18:
  if (result.tokens._rawValue < v10)
  {
    __break(1u);
  }

  else if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

AppStoreKit::GuidedSearchTokenCollection __swiftcall GuidedSearchTokenCollection.selectedOnly()()
{
  v2 = v0;
  v3 = *v1;
  v10 = MEMORY[0x1E69E7CC0];
  if (*v1 >> 62)
  {
LABEL_16:
    result.tokens._rawValue = sub_1E1AF71CC();
    rawValue = result.tokens._rawValue;
    if (result.tokens._rawValue)
    {
      goto LABEL_3;
    }
  }

  else
  {
    rawValue = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (rawValue)
    {
LABEL_3:
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          result.tokens._rawValue = MEMORY[0x1E68FFD80](v5, v3);
          v7 = result.tokens._rawValue;
          v8 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v9 = v10;
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(v3 + 8 * v5 + 32);

          v8 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_13;
          }
        }

        swift_beginAccess();
        if (v7[32])
        {
          sub_1E1AF70BC();
          sub_1E1AF70FC();
          sub_1E1AF710C();
          result.tokens._rawValue = sub_1E1AF70CC();
        }

        else
        {
        }

        ++v5;
        if (v8 == rawValue)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_18:
  *v2 = v9;
  return result;
}

uint64_t GuidedSearchTokenCollection.endIndex.getter()
{
  if (*v0 >> 62)
  {
    return sub_1E1AF71CC();
  }

  else
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t GuidedSearchTokenCollection.subscript.getter(unint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
LABEL_8:
    JUMPOUT(0x1E68FFD80);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_1E15712C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else if (!(*v2 >> 62))
  {
    result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v5 = a2;
  result = sub_1E1AF71CC();
  a2 = v5;
  if (v3 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v3 < result)
  {
    *a2 = v3;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t *sub_1E1571330(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    v3 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v4 = result;
  v3 = sub_1E1AF71CC();
  result = v4;
  if (v2 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v2 < v3)
  {
    *result = v2;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1E15713A8@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 >> 62)
  {
    v3 = a1;
    result = sub_1E1AF71CC();
    a1 = v3;
  }

  else
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = result;
  return result;
}

uint64_t (*sub_1E15713F8(uint64_t *a1, uint64_t (**a2)()))()
{
  result = *a2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E68FFD80](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a1 = v5;
    a1[1] = v5;
    return sub_1E1571478;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1571480@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  result = *v2;
  if (*v2 >> 62)
  {
    v2 = a2;
    v3 = result;
    result = sub_1E1AF71CC();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 < 0)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    while (v7 < v4)
    {
LABEL_9:
      __break(1u);
LABEL_10:
      v7 = result;
      a2 = v2;
      result = v3;
      if (v5 < 0)
      {
        goto LABEL_11;
      }
    }

    a2[1] = v4;
    a2[2] = result;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1E1571518@<X0>(void *a1@<X8>)
{
  if (*v1 >> 62)
  {
    v3 = a1;
    result = sub_1E1AF71CC();
    if (result < 0)
    {
      __break(1u);
    }

    a1 = v3;
  }

  else
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = 0;
  a1[1] = result;
  return result;
}

BOOL sub_1E1571570()
{
  if (*v0 >> 62)
  {
    v1 = sub_1E1AF71CC();
  }

  else
  {
    v1 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t sub_1E15715BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
  }

  else if (!(*v3 >> 62))
  {
    result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v6 = a3;
  result = sub_1E1AF71CC();
  a3 = v6;
  if (v4 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (result >= v4)
  {
    *a3 = v4;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1E157162C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1E1570CB4(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_1E1571668(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*v2 >> 62)
  {
    result = sub_1E1AF71CC();
    if (v3 < 0 || result < v3)
    {
      goto LABEL_10;
    }

    result = sub_1E1AF71CC();
    if (v4 < 0)
    {
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 <= result)
  {
    if (v4 < 0)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

LABEL_4:
    if (result >= v4)
    {
      return v4 - v3;
    }

    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t *sub_1E15716F4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1E1571710(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1E157172C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E1571748@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*v2 >> 62)
  {
    v5 = a2;
    result = sub_1E1AF71CC();
    a2 = v5;
    if (v3 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 < 0)
    {
      goto LABEL_6;
    }
  }

  if (v3 < result)
  {
    *a2 = v3 + 1;
    return result;
  }

LABEL_6:
  __break(1u);
  return result;
}

uint64_t *sub_1E15717B0(uint64_t *result)
{
  v2 = *result;
  if (*v1 >> 62)
  {
    v4 = result;
    v3 = sub_1E1AF71CC();
    result = v4;
    if (v2 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 < 0)
    {
      goto LABEL_6;
    }
  }

  if (v2 < v3)
  {
    *result = v2 + 1;
    return result;
  }

LABEL_6:
  __break(1u);
  return result;
}

uint64_t sub_1E157182C()
{
  v1 = sub_1E14E62B8(*v0);

  return v1;
}

uint64_t sub_1E1571884(unint64_t a1, unint64_t a2)
{
  v22 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v20 = a1 & 0xC000000000000001;
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = a1;
    v17 = a1 + 32;

    v3 = 0;
    while (v20)
    {
      a1 = MEMORY[0x1E68FFD80](v3, v19);
      v6 = a1;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        goto LABEL_42;
      }

LABEL_15:
      if (a2 >> 62)
      {
        a1 = sub_1E1AF71CC();
        v8 = a1;
      }

      else
      {
        v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = 0;
      v10 = a2 & 0xC000000000000001;
      while (1)
      {
        if (v8 == v9)
        {

          MEMORY[0x1E68FEF20](v14);
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          sub_1E1AF62AC();

          v5 = v22;
          goto LABEL_8;
        }

        if (v10)
        {
          v11 = MEMORY[0x1E68FFD80](v9, a2);
        }

        else
        {
          if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v11 = *(a2 + 8 * v9 + 32);
        }

        if (*(v11 + 16) == *(v6 + 16) && *(v11 + 24) == *(v6 + 24))
        {
          break;
        }

        v13 = sub_1E1AF74AC();

        if (v13)
        {
          goto LABEL_35;
        }

        v7 = __OFADD__(v9++, 1);
        if (v7)
        {
          goto LABEL_41;
        }
      }

LABEL_35:
      if (v10)
      {
        v4 = MEMORY[0x1E68FFD80](v9, a2);
      }

      else
      {
        if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }
      }

      MEMORY[0x1E68FEF20](v4);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();
      v5 = v22;
      sub_1E14878F4(v9);

LABEL_8:
      if (v3 == v2)
      {
        return v5;
      }
    }

    if (v3 >= *(v18 + 16))
    {
      goto LABEL_43;
    }

    v6 = *(v17 + 8 * v3);

    v7 = __OFADD__(v3++, 1);
    if (!v7)
    {
      goto LABEL_15;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v15 = a1;
    v2 = sub_1E1AF71CC();
    a1 = v15;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1E1571B80(unint64_t result)
{
  v1 = result;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1E1AF71CC();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v2 >= 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC0];
      do
      {
        v5 = *(MEMORY[0x1E68FFD80](v3, v1) + 32);
        v6 = swift_unknownObjectRetain();
        if (v5 == 1)
        {
          MEMORY[0x1E68FEF20](v6);
          if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          sub_1E1AF62AC();
          swift_unknownObjectRelease();
          v4 = v11;
        }

        else
        {
          MEMORY[0x1E68FEF20]();
          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          sub_1E1AF62AC();
          swift_unknownObjectRelease();
        }

        ++v3;
      }

      while (v2 != v3);
    }

    else
    {
      v7 = v1 + 32;
      v4 = MEMORY[0x1E69E7CC0];
      do
      {
        v8 = *(*v7 + 32);
        v9 = swift_retain_n();
        if (v8 == 1)
        {
          MEMORY[0x1E68FEF20](v9);
          if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          sub_1E1AF62AC();

          v4 = v11;
        }

        else
        {
          MEMORY[0x1E68FEF20]();
          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          sub_1E1AF62AC();
        }

        v7 += 8;
        --v2;
      }

      while (v2);
    }

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E1571E18()
{
  result = qword_1ECEB59C0;
  if (!qword_1ECEB59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB59C0);
  }

  return result;
}

unint64_t sub_1E1571EB4()
{
  result = qword_1ECEB59D8;
  if (!qword_1ECEB59D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB59D8);
  }

  return result;
}

unint64_t sub_1E1571F0C()
{
  result = qword_1ECEB59E0;
  if (!qword_1ECEB59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB59E0);
  }

  return result;
}

uint64_t sub_1E1571FA8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB59D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E1572024()
{
  result = qword_1ECEB59F0;
  if (!qword_1ECEB59F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB59F0);
  }

  return result;
}

double CGFloat.rounded(_:toScale:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 * a3;
  v17 = v11;
  (*(v7 + 16))(v10, a1, v6, v8);
  v12 = (*(v7 + 88))(v10, v6);
  if (v12 == *MEMORY[0x1E69E7038])
  {
    v13 = round(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7030])
  {
    v13 = rint(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7040])
  {
    v13 = ceil(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7048])
  {
    v13 = floor(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7020])
  {
    v13 = trunc(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7028])
  {
    v13 = ceil(v11);
    v14 = floor(v11);
    if (v11 < 0.0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_1E1AF655C();
    (*(v7 + 8))(v10, v6);
    v13 = v17;
  }

  return v13 / a2;
}

double CGFloat.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3)
{
  [a2 displayScale];
  if (v6 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v7 = *&qword_1ECEB5A10;
  }

  else
  {
    [a2 displayScale];
  }

  return CGFloat.rounded(_:toScale:)(a1, v7, a3);
}

{
  v5 = [a2 traitCollection];
  [v5 displayScale];
  if (v6 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v7 = *&qword_1ECEB5A10;
  }

  else
  {
    [v5 displayScale];
  }

  v8 = CGFloat.rounded(_:toScale:)(a1, v7, a3);

  return v8;
}

uint64_t sub_1E157247C()
{
  result = sub_1E157249C();
  qword_1ECEB5A10 = v1;
  return result;
}

uint64_t sub_1E157249C()
{
  v10 = 0x3FF0000000000000;
  if ([objc_opt_self() isMainThread])
  {
    v0 = [objc_opt_self() mainScreen];
    [v0 nativeScale];
    v2 = v1;

    v3 = 0;
    v4 = 0;
    v10 = v2;
    return sub_1E1361B18(v3, v4);
  }

  sub_1E1361A80();
  v5 = sub_1E1AF68EC();
  v4 = swift_allocObject();
  *(v4 + 16) = &v10;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E15726F0;
  *(v6 + 24) = v4;
  aBlock[4] = sub_1E137AFA8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1551FBC;
  aBlock[3] = &block_descriptor_27;
  v7 = _Block_copy(aBlock);

  dispatch_sync(v5, v7);

  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    v3 = sub_1E15726F0;
    return sub_1E1361B18(v3, v4);
  }

  __break(1u);
  return result;
}

void sub_1E157268C(void *a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 nativeScale];
  v4 = v3;

  *a1 = v4;
}

double CGPoint.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3, double a4)
{
  v7 = [a2 traitCollection];
  [v7 displayScale];
  if (v8 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v9 = *&qword_1ECEB5A10;
  }

  else
  {
    [v7 displayScale];
  }

  v10 = CGFloat.rounded(_:toScale:)(a1, v9, a3);
  [v7 displayScale];
  if (v11 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v12 = *&qword_1ECEB5A10;
  }

  else
  {
    [v7 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v12, a4);

  return v10;
}

{
  [a2 displayScale];
  if (v8 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v9 = *&qword_1ECEB5A10;
  }

  else
  {
    [a2 displayScale];
  }

  v10 = CGFloat.rounded(_:toScale:)(a1, v9, a3);
  [a2 displayScale];
  if (v11 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v12 = *&qword_1ECEB5A10;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v12, a4);
  return v10;
}

double CGPoint.rounded(_:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v23 = a2;
  v13 = *(v7 + 16);
  v13(&v20 - v11, a1, v6);
  v14 = *(v7 + 88);
  v15 = v14(v12, v6);
  v16 = *MEMORY[0x1E69E7038];
  if (v15 == *MEMORY[0x1E69E7038])
  {
    v17 = round(a2);
    v23 = v17;
  }

  else if (v15 == *MEMORY[0x1E69E7030])
  {
    v17 = rint(a2);
    v23 = v17;
  }

  else
  {
    if (v15 == *MEMORY[0x1E69E7040])
    {
      goto LABEL_6;
    }

    if (v15 == *MEMORY[0x1E69E7048])
    {
      goto LABEL_8;
    }

    if (v15 == *MEMORY[0x1E69E7020])
    {
      v17 = trunc(a2);
      v23 = v17;
      goto LABEL_15;
    }

    if (v15 != *MEMORY[0x1E69E7028])
    {
      v21 = a1;
      sub_1E1AF655C();
      a1 = v21;
      (*(v7 + 8))(v12, v6);
      v17 = v23;
      goto LABEL_15;
    }

    if ((*&a2 & 0x8000000000000000) != 0)
    {
LABEL_8:
      v17 = floor(a2);
      v23 = v17;
    }

    else
    {
LABEL_6:
      v17 = ceil(a2);
      v23 = v17;
    }
  }

LABEL_15:
  v22 = a3;
  v13(v10, a1, v6);
  v18 = v14(v10, v6);
  if (v18 != v16 && v18 != *MEMORY[0x1E69E7030] && v18 != *MEMORY[0x1E69E7040] && v18 != *MEMORY[0x1E69E7048] && v18 != *MEMORY[0x1E69E7020] && v18 != *MEMORY[0x1E69E7028])
  {
    sub_1E1AF655C();
    (*(v7 + 8))(v10, v6);
  }

  return v17;
}

double CGSize.minDimension.getter(double result, double a2)
{
  if (a2 < result)
  {
    return a2;
  }

  return result;
}

double CGSize.rounded(_:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v24 = a2;
  v14 = *(v7 + 16);
  v14(&v21 - v12, a1, v6, v11);
  v15 = *(v7 + 88);
  v16 = v15(v13, v6);
  v17 = *MEMORY[0x1E69E7038];
  if (v16 == *MEMORY[0x1E69E7038])
  {
    v18 = round(a2);
    v24 = v18;
  }

  else if (v16 == *MEMORY[0x1E69E7030])
  {
    v18 = rint(a2);
    v24 = v18;
  }

  else
  {
    if (v16 == *MEMORY[0x1E69E7040])
    {
      goto LABEL_6;
    }

    if (v16 == *MEMORY[0x1E69E7048])
    {
      goto LABEL_8;
    }

    if (v16 == *MEMORY[0x1E69E7020])
    {
      v18 = trunc(a2);
      v24 = v18;
      goto LABEL_15;
    }

    if (v16 != *MEMORY[0x1E69E7028])
    {
      v22 = a1;
      sub_1E1AF655C();
      a1 = v22;
      (*(v7 + 8))(v13, v6);
      v18 = v24;
      goto LABEL_15;
    }

    if ((*&a2 & 0x8000000000000000) != 0)
    {
LABEL_8:
      v18 = floor(a2);
      v24 = v18;
    }

    else
    {
LABEL_6:
      v18 = ceil(a2);
      v24 = v18;
    }
  }

LABEL_15:
  v23 = a3;
  (v14)(v9, a1, v6);
  v19 = v15(v9, v6);
  if (v19 != v17 && v19 != *MEMORY[0x1E69E7030] && v19 != *MEMORY[0x1E69E7040] && v19 != *MEMORY[0x1E69E7048] && v19 != *MEMORY[0x1E69E7020] && v19 != *MEMORY[0x1E69E7028])
  {
    sub_1E1AF655C();
    (*(v7 + 8))(v9, v6);
  }

  return v18;
}

double CGSize.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3, double a4)
{
  [a2 displayScale];
  if (v8 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v9 = *&qword_1ECEB5A10;
  }

  else
  {
    [a2 displayScale];
  }

  v10 = CGFloat.rounded(_:toScale:)(a1, v9, a3);
  [a2 displayScale];
  if (v11 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v12 = *&qword_1ECEB5A10;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v12, a4);
  return v10;
}

{
  v7 = [a2 traitCollection];
  [v7 displayScale];
  if (v8 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v9 = *&qword_1ECEB5A10;
  }

  else
  {
    [v7 displayScale];
  }

  v10 = CGFloat.rounded(_:toScale:)(a1, v9, a3);
  [v7 displayScale];
  if (v11 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v12 = *&qword_1ECEB5A10;
  }

  else
  {
    [v7 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v12, a4);

  return v10;
}

CGSize __swiftcall CGSize.clamped(atLeast:)(CGSize atLeast)
{
  if (v1 > atLeast.width)
  {
    atLeast.width = v1;
  }

  if (v2 > atLeast.height)
  {
    atLeast.height = v2;
  }

  return atLeast;
}

CGSize __swiftcall CGSize.clamped(atMost:)(CGSize atMost)
{
  if (atMost.width >= v1)
  {
    atMost.width = v1;
  }

  if (atMost.height >= v2)
  {
    atMost.height = v2;
  }

  return atMost;
}

uint64_t sub_1E1573290(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF320C();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF324C();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1361A80();
  v12 = sub_1E1AF68EC();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_1E1573838;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_6;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E1573844(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_1E1573568(uint64_t a1, void *a2)
{
  v4 = sub_1E1AF3E2C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a1 + OBJC_IVAR____TtC11AppStoreKit19LocalAskToBuyAction_completion))(a2, v6);
  if (a2)
  {
    v9 = a2;
    sub_1E1AF584C();
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E69AB010], v4);
    sub_1E1AF586C();
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E15736D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v2 = sub_1E1AF588C();
  v3 = objc_opt_self();

  v4 = sub_1E1AF5DBC();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v8[4] = sub_1E1573830;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E1306F24;
  v8[3] = &block_descriptor_28;
  v6 = _Block_copy(v8);

  [v3 localApproveRequestWithItemIdentifier:v4 completion:v6];
  _Block_release(v6);

  return v2;
}

uint64_t sub_1E1573844(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL Array.isNotEmpty.getter()
{
  sub_1E1AF635C();
  swift_getWitnessTable();
  return (sub_1E1AF66CC() & 1) == 0;
}

double CGRect.rounded(_:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = CGPoint.rounded(_:)(a1, a2, a3);
  CGSize.rounded(_:)(a1, a4, a5);
  return v8;
}

double CGRect.rounded(originRule:sizeRule:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v9 = CGPoint.rounded(_:)(a1, a3, a4);
  CGSize.rounded(_:)(a2, a5, a6);
  return v9;
}

double CGRect.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3, double a4, double a5, double a6)
{
  [a2 displayScale];
  if (v12 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v13 = *&qword_1ECEB5A10;
  }

  else
  {
    [a2 displayScale];
  }

  v14 = CGFloat.rounded(_:toScale:)(a1, v13, a3);
  [a2 displayScale];
  if (v15 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v16 = *&qword_1ECEB5A10;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v16, a4);
  [a2 displayScale];
  if (v17 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v18 = *&qword_1ECEB5A10;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v18, a5);
  [a2 displayScale];
  if (v19 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v20 = *&qword_1ECEB5A10;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v20, a6);
  return v14;
}

{
  v12 = [a2 traitCollection];
  [v12 displayScale];
  if (v13 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v14 = *&qword_1ECEB5A10;
  }

  else
  {
    [v12 displayScale];
  }

  v15 = CGFloat.rounded(_:toScale:)(a1, v14, a3);
  [v12 displayScale];
  if (v16 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v17 = *&qword_1ECEB5A10;
  }

  else
  {
    [v12 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v17, a4);

  v18 = [a2 traitCollection];
  [v18 displayScale];
  if (v19 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v20 = *&qword_1ECEB5A10;
  }

  else
  {
    [v18 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v20, a5);
  [v18 displayScale];
  if (v21 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v22 = *&qword_1ECEB5A10;
  }

  else
  {
    [v18 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v22, a6);

  return v15;
}

double CGRect.rounded(originRule:sizeRule:toScaleOf:)(uint64_t a1, uint64_t a2, id a3, double a4, double a5, double a6, double a7)
{
  v14 = [a3 traitCollection];
  [v14 displayScale];
  if (v15 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v16 = *&qword_1ECEB5A10;
  }

  else
  {
    [v14 displayScale];
  }

  v17 = CGFloat.rounded(_:toScale:)(a1, v16, a4);
  [v14 displayScale];
  if (v18 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v19 = *&qword_1ECEB5A10;
  }

  else
  {
    [v14 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v19, a5);

  v20 = [a3 traitCollection];
  [v20 displayScale];
  if (v21 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v22 = *&qword_1ECEB5A10;
  }

  else
  {
    [v20 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a2, v22, a6);
  [v20 displayScale];
  if (v23 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v24 = *&qword_1ECEB5A10;
  }

  else
  {
    [v20 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a2, v24, a7);

  return v17;
}

{
  [a3 displayScale];
  if (v14 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v15 = *&qword_1ECEB5A10;
  }

  else
  {
    [a3 displayScale];
  }

  v16 = CGFloat.rounded(_:toScale:)(a1, v15, a4);
  [a3 displayScale];
  if (v17 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v18 = *&qword_1ECEB5A10;
  }

  else
  {
    [a3 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v18, a5);
  [a3 displayScale];
  if (v19 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v20 = *&qword_1ECEB5A10;
  }

  else
  {
    [a3 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a2, v20, a6);
  [a3 displayScale];
  if (v21 <= 0.0)
  {
    if (qword_1ECEB0E80 != -1)
    {
      swift_once();
    }

    v22 = *&qword_1ECEB5A10;
  }

  else
  {
    [a3 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a2, v22, a7);
  return v16;
}

UIColor __swiftcall UIColor.init(light:dark:)(UIColor light, UIColor dark)
{
  v3 = light.super.isa;
  v4 = dark.super.isa;

  return sub_1E1AF6C8C();
}

uint64_t sub_1E15742F8()
{

  return swift_deallocClassInstance();
}

AppStoreKit::LayerVisualEffect __swiftcall LayerVisualEffect.init(filterType:vibrantColor:tintColor:)(Swift::String filterType, UIColor vibrantColor, UIColor tintColor)
{
  *v3 = filterType;
  *(v3 + 16) = vibrantColor;
  *(v3 + 24) = tintColor;
  result.filterType = filterType;
  result.tintColor = tintColor;
  result.vibrantColor = vibrantColor;
  return result;
}

Swift::Void __swiftcall LayerVisualEffect.apply(to:)(CALayer to)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_1E1574524(*v1, v4, to.super.isa);
  v7 = [v6 CGColor];
  MEMORY[0x1E68FECA0](v3, v4);
  MEMORY[0x1E68FECA0](46, 0xE100000000000000);
  MEMORY[0x1E68FECA0](0x6C6F437475706E69, 0xEB0000000030726FLL);
  v8 = sub_1E1AF5DBC();

  [(objc_class *)to.super.isa setValue:v7 forKeyPath:v8];

  v9 = [v5 CGColor];
  MEMORY[0x1E68FECA0](v3, v4);
  MEMORY[0x1E68FECA0](46, 0xE100000000000000);
  MEMORY[0x1E68FECA0](0x6C6F437475706E69, 0xEB0000000031726FLL);
  v10 = sub_1E1AF5DBC();

  [(objc_class *)to.super.isa setValue:v9 forKeyPath:v10];
}

void sub_1E1574524(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1E15749A0(a1, a2, a3);
  if (v7)
  {
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x1E6979378]);
    v9 = sub_1E1AF5DBC();
    v10 = [v8 initWithType_];

    v11 = [v6 CGColor];
    v12 = sub_1E1AF5DBC();
    [v10 setValue:v11 forKey:v12];

    v13 = [v5 CGColor];
    v14 = sub_1E1AF5DBC();
    [v10 setValue:v13 forKey:v14];

    v15 = [a3 filters];
    if (v15)
    {
      v16 = v15;
      sub_1E1AF621C();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    *(inited + 56) = sub_1E13006E4(0, &qword_1ECEB5A60);
    *(inited + 32) = v10;
    v18 = v10;
    sub_1E1728854(inited);
    v19 = sub_1E1AF620C();

    [a3 setFilters_];
  }
}

Swift::Void __swiftcall LayerVisualEffect.unapply(to:)(CALayer to)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1E15749A0(*v1, v4, to.super.isa);
  if (v5)
  {

    v6 = [objc_opt_self() clearColor];
    v7 = [v6 CGColor];

    v8 = v7;
    MEMORY[0x1E68FECA0](v3, v4);
    MEMORY[0x1E68FECA0](46, 0xE100000000000000);
    MEMORY[0x1E68FECA0](0x6C6F437475706E69, 0xEB0000000030726FLL);
    v9 = sub_1E1AF5DBC();

    [(objc_class *)to.super.isa setValue:v8 forKeyPath:v9];

    v10 = v8;
    MEMORY[0x1E68FECA0](v3, v4);
    MEMORY[0x1E68FECA0](46, 0xE100000000000000);
    MEMORY[0x1E68FECA0](0x6C6F437475706E69, 0xEB0000000031726FLL);
    v11 = sub_1E1AF5DBC();

    [(objc_class *)to.super.isa setValue:v10 forKeyPath:v11];
  }
}