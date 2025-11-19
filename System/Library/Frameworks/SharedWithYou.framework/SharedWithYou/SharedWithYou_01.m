uint64_t sub_1BBC34CD0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1BBC34CE0()
{
  result = qword_1EBCA5770;
  if (!qword_1EBCA5770)
  {
    sub_1BBC1D534(255, &qword_1EBCA5758, 0x1E69D37B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5770);
  }

  return result;
}

uint64_t sub_1BBC34D70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BBC34DB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BBC34E08()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC7D8]) initWithShare:*(v0 + 8) container:*(v0 + 16)];
  [v1 setDelegate_];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1BBC34E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBC34FC8();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BBC34EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBC34FC8();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BBC34F48()
{
  sub_1BBC34FC8();
  sub_1BBC40D6C();
  __break(1u);
}

unint64_t sub_1BBC34F74()
{
  result = qword_1EBCA5780;
  if (!qword_1EBCA5780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5780);
  }

  return result;
}

unint64_t sub_1BBC34FC8()
{
  result = qword_1EBCA5788;
  if (!qword_1EBCA5788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5788);
  }

  return result;
}

uint64_t sub_1BBC3501C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1BBC35070()
{
  sub_1BBC1D534(0, &unk_1EBCA5278, off_1E7FDD5F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BBC4080C();

  return v2;
}

uint64_t sub_1BBC35240(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F69647561;
  if (v2 != 1)
  {
    v3 = 0x6F65646976;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6567617373656DLL;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x6F69647561;
  if (*a2 != 1)
  {
    v6 = 0x6F65646976;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6567617373656DLL;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1BBC413AC();
  }

  return v9 & 1;
}

uint64_t sub_1BBC35334()
{
  v1 = *v0;
  sub_1BBC413EC();
  sub_1BBC4110C();

  return sub_1BBC413FC();
}

uint64_t sub_1BBC353D0()
{
  *v0;
  *v0;
  sub_1BBC4110C();
}

uint64_t sub_1BBC35458()
{
  v1 = *v0;
  sub_1BBC413EC();
  sub_1BBC4110C();

  return sub_1BBC413FC();
}

uint64_t sub_1BBC354F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BBC37374();
  *a2 = result;
  return result;
}

void sub_1BBC35520(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6F69647561;
  if (v2 != 1)
  {
    v4 = 0x6F65646976;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6567617373656DLL;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

id sub_1BBC35588()
{
  result = [objc_allocWithZone(type metadata accessor for CommunicationManager()) init];
  qword_1EBCA6AF0 = result;
  return result;
}

id sub_1BBC355B8()
{
  v1 = v0;
  v2 = sub_1BBC4107C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13SharedWithYou20CommunicationManager____lazy_storage___facetimeServiceProxy;
  v9 = *(v0 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager____lazy_storage___facetimeServiceProxy);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager____lazy_storage___facetimeServiceProxy);
  }

  else
  {
    sub_1BBC1D534(0, &qword_1EBCA5810, 0x1E69D37F8);
    sub_1BBC1D534(0, &unk_1EBCA57D0, 0x1E69E9610);
    (*(v3 + 104))(v7, *MEMORY[0x1E69E7F80], v2);
    v11 = sub_1BBC4126C();
    (*(v3 + 8))(v7, v2);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() proxyForServiceClass:ObjCClassFromMetadata targetSerialQueue:v11 delegate:v1];

    v14 = *(v1 + v8);
    *(v1 + v8) = v13;
    v10 = v13;

    v9 = 0;
  }

  v15 = v9;
  return v10;
}

void sub_1BBC35768(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5380, &qword_1BBC445A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = v55 - v15;
  if (sub_1BBC4111C() < 1)
  {
    sub_1BBC411DC();
    v24 = SWFrameworkLogHandle();
    if (!v24)
    {
      __break(1u);
      goto LABEL_41;
    }

    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA5800, &qword_1BBC44B38);
    v26 = swift_allocObject();
    v27 = v26;
    *(v26 + 16) = xmmword_1BBC441B0;
    if (a5)
    {
      v28 = 0xE500000000000000;
      if (a5 == 1)
      {
        v29 = 1768191329;
      }

      else
      {
        v29 = 1701079414;
      }

      v37 = v29 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
    }

    else
    {
      v28 = 0xE700000000000000;
      v37 = 0x6567617373656DLL;
    }

    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1BBC2B39C();
    *(v27 + 32) = v37;
    *(v27 + 40) = v28;
    sub_1BBC40A2C();
  }

  else
  {
    v57 = a3;
    if (qword_1EBCA4F30 != -1)
    {
      swift_once();
    }

    v17 = sub_1BBC40A5C();
    __swift_project_value_buffer(v17, qword_1EBCA6AF8);

    v18 = sub_1BBC40A3C();
    v19 = sub_1BBC411CC();

    if (os_log_type_enabled(v18, v19))
    {
      v55[1] = a4;
      v56 = v6;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v58 = v21;
      *v20 = 136315394;
      if (a5)
      {
        if (a5 == 1)
        {
          v22 = 0x6F69647561;
        }

        else
        {
          v22 = 0x6F65646976;
        }

        v23 = 0xE500000000000000;
      }

      else
      {
        v22 = 0x6567617373656DLL;
        v23 = 0xE700000000000000;
      }

      v38 = sub_1BBC36DCC(v22, v23, &v58);

      *(v20 + 4) = v38;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1BBC36DCC(a1, a2, &v58);
      _os_log_impl(&dword_1BBC06000, v18, v19, "Received request to perform %s communication action for attribution with identifier %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB19980](v21, -1, -1);
      MEMORY[0x1BFB19980](v20, -1, -1);

      v6 = v56;
      v30 = a5;
      if (!a5)
      {
        goto LABEL_33;
      }
    }

    else
    {

      v30 = a5;
      if (!a5)
      {
LABEL_33:
        v58 = 0;
        v59 = 0xE000000000000000;
        sub_1BBC4131C();

        v58 = 0xD00000000000001DLL;
        v59 = 0x80000001BBC47590;
        MEMORY[0x1BFB18D60](a1, a2);
        MEMORY[0x1BFB18D60](0x79616C7265766F26, 0xEA0000000000313DLL);
        v40 = v58;
        v39 = v59;
        sub_1BBC4087C();
        v41 = sub_1BBC4088C();
        v42 = (*(*(v41 - 8) + 48))(v16, 1, v41);
        sub_1BBC27FF0(v16, &qword_1EBCA5380, &qword_1BBC445A0);
        if (v42 != 1)
        {
          v48 = [objc_allocWithZone(MEMORY[0x1E69D3840]) init];
          v49 = *(v6 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_presentingViewController);
          if (v49)
          {
            v50 = v49;

            v51 = sub_1BBC410BC();
            v52 = sub_1BBC410BC();
            [v48 presentTranscriptForMessageGUID:v51 attachmentGUID:v52 presentingViewController:v50];

            return;
          }

          sub_1BBC411DC();
          v53 = SWFrameworkLogHandle();
          if (v53)
          {
            v54 = v53;

            sub_1BBC40A2C();

            return;
          }

          goto LABEL_42;
        }

        sub_1BBC411DC();
        v43 = SWFrameworkLogHandle();
        if (v43)
        {
          v44 = v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA5800, &qword_1BBC44B38);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1BBC44F40;
          v46 = MEMORY[0x1E69E6158];
          *(v45 + 56) = MEMORY[0x1E69E6158];
          v47 = sub_1BBC2B39C();
          *(v45 + 32) = 0x6567617373656DLL;
          *(v45 + 40) = 0xE700000000000000;
          *(v45 + 96) = v46;
          *(v45 + 104) = v47;
          *(v45 + 64) = v47;
          *(v45 + 72) = a1;
          *(v45 + 80) = a2;
          *(v45 + 136) = v46;
          *(v45 + 144) = v47;
          *(v45 + 112) = v40;
          *(v45 + 120) = v39;

          sub_1BBC40A2C();

          return;
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }
    }

    if (v30 == 1)
    {
      v31 = (v6 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_attributionIdentifier);
      v32 = *(v6 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_attributionIdentifier + 8);
      *v31 = a1;
      v31[1] = a2;

      *(v6 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_videoEnabled) = 0;
    }

    else
    {
      v33 = (v6 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_attributionIdentifier);
      v34 = *(v6 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_attributionIdentifier + 8);
      *v33 = a1;
      v33[1] = a2;

      *(v6 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_videoEnabled) = 1;
    }

    v35 = sub_1BBC355B8();
    v36 = [v35 connectionActive];

    if (v36)
    {

      sub_1BBC36218();
    }

    else
    {

      sub_1BBC35E48();
    }
  }
}

uint64_t sub_1BBC35E48()
{
  v1 = v0;
  v2 = sub_1BBC4106C();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BBC410AC();
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v22, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBCA4F30 != -1)
  {
    swift_once();
  }

  v12 = sub_1BBC40A5C();
  __swift_project_value_buffer(v12, qword_1EBCA6AF8);
  v13 = sub_1BBC40A3C();
  v14 = sub_1BBC411CC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1BBC36DCC(0xD000000000000013, 0x80000001BBC47510, aBlock);
    _os_log_impl(&dword_1BBC06000, v13, v14, "%s: Not currently connected to FaceTime service. We'll wait for the connection to finish posting pending notices.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1BFB19980](v16, -1, -1);
    MEMORY[0x1BFB19980](v15, -1, -1);
  }

  sub_1BBC1D534(0, &unk_1EBCA57D0, 0x1E69E9610);
  v17 = sub_1BBC4123C();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  aBlock[4] = sub_1BBC373E8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBC2B520;
  aBlock[3] = &block_descriptor_33;
  v19 = _Block_copy(aBlock);
  v20 = v1;

  sub_1BBC4108C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BBC30F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA57E0, &unk_1BBC445D0);
  sub_1BBC1D5D4(&qword_1EBCA53D0, &qword_1EBCA57E0, &unk_1BBC445D0);
  sub_1BBC412CC();
  MEMORY[0x1BFB18E80](0, v11, v6, v19);
  _Block_release(v19);

  (*(v23 + 8))(v6, v2);
  return (*(v7 + 8))(v11, v22);
}

uint64_t sub_1BBC36218()
{
  v1 = sub_1BBC4106C();
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BBC410AC();
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v23, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BBC4107C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBC1D534(0, &unk_1EBCA57D0, 0x1E69E9610);
  (*(v12 + 104))(v16, *MEMORY[0x1E69E7F80], v11);
  v17 = sub_1BBC4126C();
  (*(v12 + 8))(v16, v11);
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  aBlock[4] = sub_1BBC373C0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBC2B520;
  aBlock[3] = &block_descriptor_4;
  v19 = _Block_copy(aBlock);
  v20 = v0;
  sub_1BBC4108C();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1BBC30F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA57E0, &unk_1BBC445D0);
  sub_1BBC1D5D4(&qword_1EBCA53D0, &qword_1EBCA57E0, &unk_1BBC445D0);
  sub_1BBC412CC();
  MEMORY[0x1BFB18E80](0, v10, v5, v19);
  _Block_release(v19);

  (*(v24 + 8))(v5, v1);
  (*(v6 + 8))(v10, v23);
}

void sub_1BBC36594(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_attributionIdentifier];
  v2 = *&a1[OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_attributionIdentifier + 8];
  if (!v2)
  {
    if (qword_1EBCA4F30 != -1)
    {
      swift_once();
    }

    v8 = sub_1BBC40A5C();
    __swift_project_value_buffer(v8, qword_1EBCA6AF8);
    oslog = sub_1BBC40A3C();
    v9 = sub_1BBC411CC();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC06000, oslog, v9, "No attribution identifier found, could not start facetime", v10, 2u);
      MEMORY[0x1BFB19980](v10, -1, -1);
    }

    return;
  }

  v4 = *v1;
  v5 = *&a1[OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_attributionIdentifier + 8];

  v6 = sub_1BBC355B8();
  v7 = [v6 remoteService];

  if (v7)
  {
    sub_1BBC412BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  aBlock = v32;
  v28 = v33;
  if (!*(&v33 + 1))
  {
    sub_1BBC27FF0(&aBlock, &unk_1EBCA5650, &unk_1BBC45070);
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA57E8, &qword_1BBC45080);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    sub_1BBC411DC();
    v21 = SLFrameworkLogHandle();
    if (v21)
    {
      v22 = v21;

      sub_1BBC40A2C();
LABEL_23:

      return;
    }

    __break(1u);
    return;
  }

  v11 = v31;
  if ([v31 respondsToSelector_])
  {
    if (qword_1EBCA4F30 != -1)
    {
      swift_once();
    }

    v12 = sub_1BBC40A5C();
    __swift_project_value_buffer(v12, qword_1EBCA6AF8);

    v13 = a1;
    v14 = sub_1BBC40A3C();
    v15 = sub_1BBC411CC();

    v16 = &qword_1EBCA5000;
    if (os_log_type_enabled(v14, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&aBlock = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_1BBC36DCC(v4, v2, &aBlock);
      *(v17 + 12) = 1024;
      *(v17 + 14) = v13[OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_videoEnabled];

      _os_log_impl(&dword_1BBC06000, v14, v15, "Sending highlight to SLD to initiate FaceTime call for attribution identifier %s with video enabled: %{BOOL}d}", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1BFB19980](v18, -1, -1);
      v19 = v17;
      v16 = &qword_1EBCA5000;
      MEMORY[0x1BFB19980](v19, -1, -1);

      if (!v1[1])
      {
LABEL_26:

        v22 = sub_1BBC410BC();

        v23 = v13[v16[244]];
        v24 = swift_allocObject();
        *(v24 + 16) = v4;
        *(v24 + 24) = v2;
        v29 = sub_1BBC373E0;
        v30 = v24;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v28 = sub_1BBC3501C;
        *(&v28 + 1) = &block_descriptor_26;
        v25 = _Block_copy(&aBlock);

        [v11 initiateTUConversationForAttributionIdentifier:v22 videoEnabled:v23 completion:v25];
        _Block_release(v25);
        swift_unknownObjectRelease();
        goto LABEL_23;
      }
    }

    else
    {

      if (!v1[1])
      {
        goto LABEL_26;
      }
    }

    v20 = *v1;
    goto LABEL_26;
  }

  swift_unknownObjectRelease();
}

void sub_1BBC36A50(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EBCA4F30 != -1)
  {
    swift_once();
  }

  v5 = sub_1BBC40A5C();
  __swift_project_value_buffer(v5, qword_1EBCA6AF8);

  oslog = sub_1BBC40A3C();
  v6 = sub_1BBC411CC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1BBC36DCC(a2, a3, &v10);
    _os_log_impl(&dword_1BBC06000, oslog, v6, "FaceTime started for attribution with identifier: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1BFB19980](v8, -1, -1);
    MEMORY[0x1BFB19980](v7, -1, -1);
  }
}

id sub_1BBC36C68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommunicationManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BBC36D78()
{
  result = qword_1EBCA57C8;
  if (!qword_1EBCA57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA57C8);
  }

  return result;
}

uint64_t sub_1BBC36DCC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BBC36E98(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1BBC1D3EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1BBC36E98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1BBC36FA4(a5, a6);
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
    result = sub_1BBC4133C();
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

uint64_t sub_1BBC36FA4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BBC36FF0(a1, a2);
  sub_1BBC37120(&unk_1F3ABA8C0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1BBC36FF0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BBC3720C(v5, 0);
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

  result = sub_1BBC4133C();
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
        v10 = sub_1BBC4113C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BBC3720C(v10, 0);
        result = sub_1BBC4130C();
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

uint64_t sub_1BBC37120(uint64_t result)
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

  result = sub_1BBC37280(result, v12, 1, v3);
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

void *sub_1BBC3720C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA57F0, qword_1BBC45088);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1BBC37280(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA57F0, qword_1BBC45088);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1BBC37374()
{
  v0 = sub_1BBC4138C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BBC373E8()
{
  v1 = *(v0 + 16);
  v2 = sub_1BBC355B8();
  [v2 connect];
}

uint64_t sub_1BBC37448(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BBC40CDC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1BBC40CEC();
}

uint64_t sub_1BBC37540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BBC40CDC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1BBC40CEC();
}

uint64_t sub_1BBC37638(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata, a2);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, a2);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_1BBC4105C();
}

uint64_t sub_1BBC37808(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 40));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5498, &qword_1BBC44980);
  return sub_1BBC40FCC();
}

uint64_t sub_1BBC3786C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5498, &qword_1BBC44980);
  sub_1BBC40FDC();
  return v4;
}

uint64_t sub_1BBC378D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for _CollaborationDetailView();
  v7 = a3 + *(v6 + 40);
  sub_1BBC40FBC();
  *v7 = v10;
  *(v7 + 1) = v11;
  swift_getObjectType();
  sub_1BBC3AF20();
  *a3 = sub_1BBC40B1C();
  a3[1] = v8;
  return (*(*(a2 - 8) + 32))(a3 + *(v6 + 36), a1, a2);
}

void _CollaborationDetailView.init(itemProvider:listContent:)(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(type metadata accessor for CollaborationDetailViewModel(0));
  v11 = a1;
  CollaborationDetailViewModel.init(itemProvider:)(v11);
  a2();
  sub_1BBC378D0(v10, a3, a4);
}

void _CollaborationDetailView.init(itemProvider:contentTitle:collaborators:listContent:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v25 = a5;
  v26 = a8;
  v24[1] = a6;
  v15 = *(*(a7 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(type metadata accessor for CollaborationDetailViewModel(0));
  v19 = a1;
  v20 = CollaborationDetailViewModel.init(itemProvider:)(v19);
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = a2;
  v28 = a3;
  v21 = v20;
  sub_1BBC40ACC();
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = a4;
  v22 = v21;
  v23 = sub_1BBC40ACC();
  v25(v23);
  sub_1BBC378D0(v17, a7, a9);
}

uint64_t _CollaborationDetailView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5818, &qword_1BBC45150);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5820, &qword_1BBC45158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5828, &qword_1BBC45160);
  v3 = *(a1 + 16);
  sub_1BBC40CFC();
  swift_getTupleTypeMetadata2();
  sub_1BBC4104C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5830, &qword_1BBC45168);
  sub_1BBC40B3C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5838, &qword_1BBC45170);
  sub_1BBC40B3C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBCA5840, &qword_1BBC45178);
  swift_getTupleTypeMetadata3();
  sub_1BBC4104C();
  WitnessTable = swift_getWitnessTable();
  v30 = MEMORY[0x1E69E73F0];
  v31 = WitnessTable;
  sub_1BBC40E4C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v5 = sub_1BBC40B3C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = MEMORY[0x1E697EBF8];
  v6 = swift_getWitnessTable();
  v28 = v5;
  v29 = v6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  v9 = v8[8];
  v11 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v24 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v24 - v19;
  sub_1BBC38058(a1, v13);
  v28 = v5;
  v29 = v6;
  swift_getOpaqueTypeConformance2();
  sub_1BBC38A6C(v13, OpaqueTypeMetadata2, v17);
  v21 = v8[1];
  v21(v13, OpaqueTypeMetadata2);
  v22 = v8[2];
  v22(v20, v17, OpaqueTypeMetadata2);
  v21(v17, OpaqueTypeMetadata2);
  v22(v25, v20, OpaqueTypeMetadata2);
  return (v21)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_1BBC38058@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a1;
  v84 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5818, &qword_1BBC45150);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5820, &qword_1BBC45158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5828, &qword_1BBC45160);
  v68 = *(a1 + 16);
  sub_1BBC40CFC();
  swift_getTupleTypeMetadata2();
  sub_1BBC4104C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5830, &qword_1BBC45168);
  sub_1BBC40B3C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5838, &qword_1BBC45170);
  sub_1BBC40B3C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBCA5840, &qword_1BBC45178);
  swift_getTupleTypeMetadata3();
  v65 = sub_1BBC4104C();
  WitnessTable = swift_getWitnessTable();
  v90 = MEMORY[0x1E69E73E0];
  v91 = v65;
  v92 = MEMORY[0x1E69E73F0];
  v93 = WitnessTable;
  v3 = sub_1BBC40E4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v63 - v7;
  v9 = swift_getWitnessTable();
  v90 = v3;
  v91 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v67 = *(OpaqueTypeMetadata2 - 8);
  v11 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v12);
  v14 = &v63 - v13;
  v90 = v3;
  v91 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v90 = OpaqueTypeMetadata2;
  v91 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeMetadata2();
  v77 = *(v16 - 8);
  v17 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v76 = &v63 - v19;
  v90 = OpaqueTypeMetadata2;
  v91 = OpaqueTypeConformance2;
  v66 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v90 = v16;
  v91 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v82 = *(v21 - 8);
  v22 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v21, v21);
  v79 = &v63 - v23;
  v83 = v24;
  v25 = sub_1BBC40B3C();
  v80 = *(v25 - 8);
  v26 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v25, v27);
  v78 = &v63 - v28;
  v72 = v16;
  v90 = v16;
  v91 = v20;
  v73 = v20;
  v71 = swift_getOpaqueTypeConformance2();
  v88 = v71;
  v89 = MEMORY[0x1E697EBF8];
  v29 = swift_getWitnessTable();
  v81 = v25;
  v90 = v25;
  v91 = v29;
  v75 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v31 = *(v30 - 8);
  v32 = v31[8];
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v37);
  v74 = &v63 - v38;
  v39 = *(v69 + 24);
  v85 = v68;
  v86 = v39;
  v87 = v70;
  sub_1BBC40E3C();
  sub_1BBC40F1C();
  (*(v4 + 8))(v8, v3);
  LOBYTE(v16) = sub_1BBC40DDC();
  sub_1BBC40DFC();
  sub_1BBC40DFC();
  if (sub_1BBC40DFC() != v16)
  {
    sub_1BBC40DFC();
  }

  v40 = objc_opt_self();
  v41 = [v40 currentDevice];
  v42 = [v41 userInterfaceIdiom];

  if ((v42 - 1) <= 5)
  {
    v43 = qword_1BBC45450[(v42 - 1)];
  }

  v44 = v76;
  sub_1BBC40EBC();
  (*(v67 + 8))(v14, OpaqueTypeMetadata2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA58D8, &qword_1BBC45210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BBC44A10;
  v46 = sub_1BBC40DBC();
  *(inited + 32) = v46;
  v47 = sub_1BBC40DEC();
  *(inited + 33) = v47;
  sub_1BBC40DFC();
  sub_1BBC40DFC();
  if (sub_1BBC40DFC() != v46)
  {
    sub_1BBC40DFC();
  }

  sub_1BBC40DFC();
  if (sub_1BBC40DFC() != v47)
  {
    sub_1BBC40DFC();
  }

  v48 = [v40 currentDevice];
  v49 = [v48 userInterfaceIdiom];

  if ((v49 - 1) < 6)
  {
    v50 = qword_1BBC45450[(v49 - 1)];
  }

  v51 = v79;
  v52 = v72;
  sub_1BBC40EBC();
  (*(v77 + 8))(v44, v52);
  v53 = [v40 currentDevice];
  v54 = [v53 userInterfaceIdiom];

  if ((v54 - 1) <= 5)
  {
    v55 = qword_1BBC45480[(v54 - 1)];
  }

  sub_1BBC4103C();
  v56 = v83;
  v57 = v78;
  sub_1BBC40F2C();
  (*(v82 + 8))(v51, v56);
  v58 = v81;
  sub_1BBC40EDC();
  (*(v80 + 8))(v57, v58);
  v59 = v31[2];
  v60 = v74;
  v59(v74, v36, v30);
  v61 = v31[1];
  v61(v36, v30);
  v59(v84, v60, v30);
  return (v61)(v60, v30);
}

uint64_t sub_1BBC38A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_1BBC38B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA58E0, &qword_1BBC45218);
  v90 = *(v96 - 8);
  v3 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v96, v4);
  v81 = v76 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBCA5840, &qword_1BBC45178);
  v6 = *(*(v91 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v91, v7);
  v92 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v94 = v76 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5820, &qword_1BBC45158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5828, &qword_1BBC45160);
  sub_1BBC40CFC();
  swift_getTupleTypeMetadata2();
  v84 = sub_1BBC4104C();
  v86 = *(v84 - 1);
  v12 = *(v86 + 8);
  MEMORY[0x1EEE9AC00](v84, v13);
  v83 = v76 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5830, &qword_1BBC45168);
  v85 = sub_1BBC40B3C();
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5838, &qword_1BBC45170);
  v15 = sub_1BBC40B3C();
  v16 = *(v15 - 8);
  v99 = v15;
  v100 = v16;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v98 = v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v97 = v76 - v22;
  v23 = sub_1BBC40BBC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5818, &qword_1BBC45150);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v89 = v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = v76 - v35;
  v82 = type metadata accessor for _CollaborationDetailView();
  sub_1BBC39564(v82);
  sub_1BBC40BAC();
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA58E8, &qword_1BBC45220) + 36);
  v38 = *(v24 + 16);
  v78 = v24 + 16;
  v77 = v38;
  v38(&v36[v37], v28, v23);
  v39 = *(v24 + 56);
  v39(&v36[v37], 0, 1, v23);
  KeyPath = swift_getKeyPath();
  v87 = v29;
  v41 = *(v29 + 36);
  v88 = v36;
  v42 = &v36[v41];
  v43 = *(v95 + 28);
  v44 = *(v24 + 32);
  v76[1] = v24 + 32;
  v76[0] = v44;
  v44(v42 + v43, v28, v23);
  v80 = v39;
  v79 = v24 + 56;
  v39(v42 + v43, 0, 1, v23);
  v45 = v82;
  *v42 = KeyPath;
  v46 = v83;
  v47 = a1;
  sub_1BBC396F0(v45, v83);
  sub_1BBC40BAC();
  v48 = v84;
  WitnessTable = swift_getWitnessTable();
  v50 = v98;
  sub_1BBC40F0C();
  (*(v24 + 8))(v28, v23);
  (*(v86 + 1))(v46, v48);
  v51 = sub_1BBC1D5D4(&qword_1EBCA58F0, &qword_1EBCA5830, &qword_1BBC45168);
  v105[5] = WitnessTable;
  v105[6] = v51;
  v52 = swift_getWitnessTable();
  v53 = sub_1BBC1D5D4(&qword_1EBCA58F8, &qword_1EBCA5838, &qword_1BBC45170);
  v105[3] = v52;
  v105[4] = v53;
  v54 = v99;
  v85 = swift_getWitnessTable();
  v55 = v100;
  v84 = *(v100 + 16);
  (v84)(v97, v50, v54);
  v56 = *(v55 + 8);
  v100 = v55 + 8;
  v86 = v56;
  v56(v50, v54);
  v57 = *(v47 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v58 = v57;
  sub_1BBC40ABC();

  v59 = 1;
  if (LOBYTE(v105[0]) == 1)
  {
    v60 = v81;
    sub_1BBC39C34(v45, v81);
    sub_1BBC40BAC();
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5960, &qword_1BBC452D8) + 36);
    v77(v60 + v61, v28, v23);
    v62 = v80;
    v80((v60 + v61), 0, 1, v23);
    v63 = swift_getKeyPath();
    v64 = (v60 + *(v96 + 36));
    v65 = *(v95 + 28);
    (v76[0])(v64 + v65, v28, v23);
    v62(v64 + v65, 0, 1, v23);
    *v64 = v63;
    sub_1BBC09838(v60, v94);
    v59 = 0;
  }

  v66 = v94;
  (*(v90 + 56))(v94, v59, 1, v96);
  v67 = v88;
  v68 = v89;
  sub_1BBC280C0(v88, v89, &qword_1EBCA5818, &qword_1BBC45150);
  v105[0] = v68;
  v70 = v97;
  v69 = v98;
  v71 = v99;
  (v84)(v98, v97, v99);
  v105[1] = v69;
  v72 = v92;
  sub_1BBC280C0(v66, v92, qword_1EBCA5840, &qword_1BBC45178);
  v105[2] = v72;
  v104[0] = v87;
  v104[1] = v71;
  v104[2] = v91;
  v101 = sub_1BBC3B4FC();
  v102 = v85;
  v103 = sub_1BBC3BA1C(&qword_1EBCA5948, qword_1EBCA5840, &qword_1BBC45178, sub_1BBC3B880);
  sub_1BBC37638(v105, 3uLL, v104);
  sub_1BBC27FF0(v66, qword_1EBCA5840, &qword_1BBC45178);
  v73 = v70;
  v74 = v86;
  v86(v73, v71);
  sub_1BBC27FF0(v67, &qword_1EBCA5818, &qword_1BBC45150);
  sub_1BBC27FF0(v72, qword_1EBCA5840, &qword_1BBC45178);
  v74(v69, v71);
  return sub_1BBC27FF0(v68, &qword_1EBCA5818, &qword_1BBC45150);
}

uint64_t sub_1BBC39564(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5910, &qword_1BBC452C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12[-v7];
  v13 = *(a1 + 16);
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5A60, &unk_1BBC45440);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5920, &qword_1BBC452C8);
  v10 = sub_1BBC3B774();
  v15 = v9;
  v16 = v10;
  swift_getOpaqueTypeConformance2();
  sub_1BBC4102C();
  sub_1BBC40DCC();
  sub_1BBC3B6A8();
  sub_1BBC40EFC();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1BBC396F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5828, &qword_1BBC45160);
  v5 = *(a1 + 16);
  v50 = v4;
  v6 = sub_1BBC40CFC();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v51 = &v46 - v13;
  v14 = *(v5 - 8);
  v15 = v14[8];
  v17 = MEMORY[0x1EEE9AC00](v12, v16);
  v47 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v46 - v21;
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v46 - v25;
  MEMORY[0x1EEE9AC00](v24, v27);
  v49 = a1;
  v28 = *(a1 + 36);
  v29 = v14[2];
  v29(&v46 - v30, v2 + v28, v5);
  v48 = swift_dynamicCast();
  v29(v26, v2 + v28, v5);
  if (swift_dynamicCast())
  {
    v31 = v69;
    v32 = sub_1BBC4100C();
    v33 = v31;
    [v33 frame];
    v35 = v34;
    [v33 frame];
    [v33 systemLayoutSizeFittingSize_];
    sub_1BBC4103C();
    sub_1BBC40B0C();
    *(v65 + 7) = v70;
    *(&v65[1] + 7) = v71;
    *(&v65[2] + 7) = v72;
    *&v63[0] = v33;
    *(&v63[0] + 1) = v32;
    memset(&v63[1], 0, 32);
    v64[0] = 0;
    *&v64[48] = *(&v72 + 1);
    *&v64[33] = v65[2];
    *&v64[17] = v65[1];
    *&v64[1] = v65[0];
    v60 = *&v64[16];
    v61 = *&v64[32];
    v62 = *&v64[48];
    v56 = v63[0];
    v57 = 0u;
    v58 = 0u;
    v59 = *v64;
    sub_1BBC280C0(v63, v65, &qword_1EBCA5828, &qword_1BBC45160);
    sub_1BBC3C10C();
    v37 = *(v49 + 24);
    v38 = v51;
    sub_1BBC37448(&v56, v50);

    sub_1BBC27FF0(v63, &qword_1EBCA5828, &qword_1BBC45160);
    v65[4] = v60;
    v65[5] = v61;
    v66 = v62;
    v65[0] = v56;
    v65[1] = v57;
    v65[2] = v58;
    v65[3] = v59;
    sub_1BBC27FF0(v65, &qword_1EBCA5828, &qword_1BBC45160);
  }

  else
  {
    v37 = *(v49 + 24);
    v29(v22, v2 + v28, v5);
    v39 = v47;
    v29(v47, v22, v5);
    sub_1BBC3C10C();
    v38 = v51;
    sub_1BBC37540(v39, v50, v5);
    v40 = v14[1];
    v40(v39, v5);
    v40(v22, v5);
  }

  LOBYTE(v69) = v48;
  *&v65[0] = &v69;
  v42 = v52;
  v41 = v53;
  v43 = v54;
  (*(v53 + 16))(v52, v38, v54);
  *(&v65[0] + 1) = v42;
  *&v63[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5820, &qword_1BBC45158);
  *(&v63[0] + 1) = v43;
  *&v56 = sub_1BBC3C35C();
  v67 = sub_1BBC3C10C();
  v68 = v37;
  *(&v56 + 1) = swift_getWitnessTable();
  sub_1BBC37638(v65, 2uLL, v63);
  v44 = *(v41 + 8);
  v44(v38, v43);
  return (v44)(v42, v43);
}

uint64_t sub_1BBC39C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5980, &qword_1BBC452E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v33 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for CollaborationInfo(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v19;
  sub_1BBC40ABC();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BBC27FF0(v12, &qword_1EBCA5228, &unk_1BBC446E0);
  }

  else
  {
    sub_1BBC27F8C(v12, v18);
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v20;
    sub_1BBC40ABC();

    if (v35 == 1)
    {
      v31 = &v31;
      MEMORY[0x1EEE9AC00](v22, v23);
      *(&v31 - 2) = *(v32 + 16);
      *(&v31 - 2) = v2;
      *(&v31 - 1) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59E8, &qword_1BBC45370);
      v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5988, &qword_1BBC452F0);
      v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5990, &qword_1BBC452F8);
      v26 = sub_1BBC1D5D4(&qword_1EBCA5998, &qword_1EBCA5988, &qword_1BBC452F0);
      v27 = sub_1BBC3BBC4();
      v35 = v24;
      v36 = v25;
      v37 = v26;
      v38 = v27;
      swift_getOpaqueTypeConformance2();
      v28 = v33;
      sub_1BBC4102C();
      v29 = v34;
      (*(v4 + 32))(v34, v28, v3);
      (*(v4 + 56))(v29, 0, 1, v3);
      return sub_1BBC28128(v18);
    }

    sub_1BBC28128(v18);
  }

  return (*(v4 + 56))(v34, 1, 1, v3);
}

uint64_t sub_1BBC3A048(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1BBC40FBC();
  type metadata accessor for CollaborationDetailViewModel(0);
  sub_1BBC3AF20();
  sub_1BBC40B1C();
  v4 = v2;
  sub_1BBC4100C();
  sub_1BBC40AFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5920, &qword_1BBC452C8);
  sub_1BBC3B774();
  sub_1BBC40EEC();
}

uint64_t sub_1BBC3A154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a2;
  v46 = a5;
  v8 = type metadata accessor for CollaborationInfo(0);
  v42 = *(v8 - 8);
  v41 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _CollaborationDetailView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5988, &qword_1BBC452F0);
  v18 = *(v17 - 8);
  v44 = v17;
  v45 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v47 = &v32 - v21;
  v36 = *(v12 + 16);
  v36(v16, a1, v11);
  v22 = *(v12 + 80);
  v35 = ((v22 + 32) & ~v22) + v13;
  v23 = (v22 + 32) & ~v22;
  v38 = v23;
  v39 = v22 | 7;
  v24 = swift_allocObject();
  v33 = a3;
  v34 = a4;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v37 = *(v12 + 32);
  v37(v24 + v23, v16, v11);
  v48 = a3;
  v49 = a4;
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59F0, &unk_1BBC45378);
  sub_1BBC1D5D4(&qword_1EBCA59F8, &qword_1EBCA59F0, &unk_1BBC45378);
  sub_1BBC40FFC();
  sub_1BBC3786C(v11);
  v36(v16, a1, v11);
  v25 = v40;
  sub_1BBC27EC8(v43, v40);
  v26 = (v35 + *(v42 + 80)) & ~*(v42 + 80);
  v27 = swift_allocObject();
  v28 = v34;
  *(v27 + 16) = v33;
  *(v27 + 24) = v28;
  v37(v27 + v38, v16, v11);
  sub_1BBC27F8C(v25, v27 + v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5990, &qword_1BBC452F8);
  sub_1BBC1D5D4(&qword_1EBCA5998, &qword_1EBCA5988, &qword_1BBC452F0);
  sub_1BBC3BBC4();
  v29 = v44;
  v30 = v47;
  sub_1BBC40F4C();

  return (*(v45 + 8))(v30, v29);
}

double sub_1BBC3A5A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BBC40B9C();
  v16 = 1;
  sub_1BBC3A6DC(a1, &v10);
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v17 = v10;
  v22[1] = v11;
  v22[2] = v12;
  v22[3] = v13;
  v23 = v14;
  v22[0] = v10;
  sub_1BBC280C0(&v17, v9, &qword_1EBCA5A00, qword_1BBC45388);
  sub_1BBC27FF0(v22, &qword_1EBCA5A00, qword_1BBC45388);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *v15;
  *(a2 + 33) = *&v15[16];
  v6 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v6;
  result = *&v15[63];
  *(a2 + 80) = *&v15[63];
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 17) = v5;
  return result;
}

uint64_t sub_1BBC3A6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_1BBC40ABC();

  sub_1BBC3C0B8();
  v5 = sub_1BBC40E8C();
  v7 = v6;
  v9 = v8;
  sub_1BBC40F6C();
  v10 = sub_1BBC40E5C();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_1BBC2AD44(v5, v7, v9 & 1);

  v17 = sub_1BBC40F8C();
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == 6)
  {
    v20 = sub_1BBC40F6C();
  }

  else
  {
    v20 = sub_1BBC40F5C();
  }

  v21 = v20;
  KeyPath = swift_getKeyPath();
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v17;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = v21;
  sub_1BBC2AD54(v10, v12, v14 & 1);

  sub_1BBC2AD44(v10, v12, v14 & 1);
}

uint64_t sub_1BBC3A8C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for _CollaborationDetailView();
  sub_1BBC3A920(a1);
  result = sub_1BBC40DCC();
  *(a2 + 27) = result;
  return result;
}

uint64_t sub_1BBC3A920(uint64_t a1)
{
  v3 = sub_1BBC4088C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v29 - v11 + 16;
  v13 = type metadata accessor for CollaborationInfo(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1BBC27EC8(a1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BBC28128(v17);
      v37 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59C0, &qword_1BBC45308);
      sub_1BBC3BCDC();
      return sub_1BBC40CEC();
    }

    else
    {
      (*(v4 + 32))(v12, v17, v3);
      (*(v4 + 16))(v9, v12, v3);
      v25 = sub_1BBC2B01C(v9);
      if (v25)
      {
        v30 = v25;
        LOBYTE(v31) = 0;
      }

      else
      {
        v30 = 0;
        LOBYTE(v31) = 1;
      }

      sub_1BBC2AF74();
      sub_1BBC40CEC();
      v26 = v33;
      v27 = v34;
      v36 = 1;
      sub_1BBC3BFF0(v33, v34);
      sub_1BBC3BFF0(v26, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59D0, &qword_1BBC45310);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59E0, &unk_1BBC45318);
      sub_1BBC3BD68();
      sub_1BBC3BDF4();
      sub_1BBC40CEC();
      sub_1BBC280C0(&v30, &v33, &qword_1EBCA59C0, &qword_1BBC45308);
      v37 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59C0, &qword_1BBC45308);
      sub_1BBC3BCDC();
      sub_1BBC40CEC();
      sub_1BBC3BFFC(v26, v27);
      sub_1BBC3BFFC(v26, v27);
      sub_1BBC27FF0(&v30, &qword_1EBCA59C0, &qword_1BBC45308);
      return (*(v4 + 8))(v12, v3);
    }
  }

  else
  {
    v21 = *v17;
    v20 = *(v17 + 1);
    if (v17[16] == 1)
    {
      v22 = *(v1 + 8);
      swift_beginAccess();
      swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();
      v23 = v21;
      v24 = v20;
      swift_unknownObjectRelease();
      v31 = v23;
      v32 = v24;
      sub_1BBC3C008(&v30, &v33);
      v35 = 0;
      sub_1BBC34F74();
      sub_1BBC40CEC();
      sub_1BBC3C064(&v30);
    }

    else
    {
      v35 = 1;
      sub_1BBC34F74();
      sub_1BBC40CEC();
    }

    sub_1BBC280C0(v29, &v33, &qword_1EBCA59D0, &qword_1BBC45310);
    v36 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59D0, &qword_1BBC45310);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59E0, &unk_1BBC45318);
    sub_1BBC3BD68();
    sub_1BBC3BDF4();
    sub_1BBC40CEC();
    sub_1BBC280C0(&v30, &v33, &qword_1EBCA59C0, &qword_1BBC45308);
    v37 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59C0, &qword_1BBC45308);
    sub_1BBC3BCDC();
    sub_1BBC40CEC();

    sub_1BBC27FF0(&v30, &qword_1EBCA59C0, &qword_1BBC45308);
    return sub_1BBC27FF0(v29, &qword_1EBCA59D0, &qword_1BBC45310);
  }
}

void _CollaborationDetailView<>.init(itemProvider:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_allocWithZone(type metadata accessor for CollaborationDetailViewModel(0));
  v5 = a1;
  CollaborationDetailViewModel.init(itemProvider:)(v5);
  sub_1BBC40FBC();
  sub_1BBC3AF20();
  v6 = sub_1BBC40B1C();
  v8 = v7;

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
}

unint64_t sub_1BBC3AF20()
{
  result = qword_1EBCA54F8;
  if (!qword_1EBCA54F8)
  {
    type metadata accessor for CollaborationDetailViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA54F8);
  }

  return result;
}

void sub_1BBC3AFC4(uint64_t a1)
{
  sub_1BBC3B394();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_1BBC3B3F8();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BBC3B064(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1BBC3B1AC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1BBC3B394()
{
  if (!qword_1EBCA58C8)
  {
    type metadata accessor for CollaborationDetailViewModel(255);
    sub_1BBC3AF20();
    v0 = sub_1BBC40B2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCA58C8);
    }
  }
}

void sub_1BBC3B3F8()
{
  if (!qword_1EBCA58D0)
  {
    v0 = sub_1BBC40FEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCA58D0);
    }
  }
}

uint64_t sub_1BBC3B448@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1BBC38B5C(v1[4], a1);
}

uint64_t sub_1BBC3B454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5A58, &qword_1BBC45438);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v8 - v5;
  sub_1BBC280C0(a1, &v8 - v5, &qword_1EBCA5A58, &qword_1BBC45438);
  return MEMORY[0x1BFB187C0](v6);
}

unint64_t sub_1BBC3B4FC()
{
  result = qword_1EBCA5900;
  if (!qword_1EBCA5900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5818, &qword_1BBC45150);
    sub_1BBC3B5B4();
    sub_1BBC1D5D4(&qword_1EBCA58F8, &qword_1EBCA5838, &qword_1BBC45170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5900);
  }

  return result;
}

unint64_t sub_1BBC3B5B4()
{
  result = qword_1EBCA5908;
  if (!qword_1EBCA5908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA58E8, &qword_1BBC45220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5910, &qword_1BBC452C0);
    sub_1BBC3B6A8();
    swift_getOpaqueTypeConformance2();
    sub_1BBC1D5D4(&qword_1EBCA58F0, &qword_1EBCA5830, &qword_1BBC45168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5908);
  }

  return result;
}

unint64_t sub_1BBC3B6A8()
{
  result = qword_1EBCA5918;
  if (!qword_1EBCA5918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5910, &qword_1BBC452C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5920, &qword_1BBC452C8);
    sub_1BBC3B774();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5918);
  }

  return result;
}

unint64_t sub_1BBC3B774()
{
  result = qword_1EBCA5928;
  if (!qword_1EBCA5928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5920, &qword_1BBC452C8);
    sub_1BBC3B82C();
    sub_1BBC1D5D4(&qword_1EBCA5938, &qword_1EBCA5940, &qword_1BBC452D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5928);
  }

  return result;
}

unint64_t sub_1BBC3B82C()
{
  result = qword_1EBCA5930;
  if (!qword_1EBCA5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5930);
  }

  return result;
}

unint64_t sub_1BBC3B880()
{
  result = qword_1EBCA5950;
  if (!qword_1EBCA5950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA58E0, &qword_1BBC45218);
    sub_1BBC3B938();
    sub_1BBC1D5D4(&qword_1EBCA58F8, &qword_1EBCA5838, &qword_1BBC45170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5950);
  }

  return result;
}

unint64_t sub_1BBC3B938()
{
  result = qword_1EBCA5958;
  if (!qword_1EBCA5958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5960, &qword_1BBC452D8);
    sub_1BBC3BA1C(&qword_1EBCA5968, &qword_1EBCA5970, &qword_1BBC452E0, sub_1BBC3BA98);
    sub_1BBC1D5D4(&qword_1EBCA58F0, &qword_1EBCA5830, &qword_1BBC45168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5958);
  }

  return result;
}

uint64_t sub_1BBC3BA1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBC3BA98()
{
  result = qword_1EBCA5978;
  if (!qword_1EBCA5978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5980, &qword_1BBC452E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5988, &qword_1BBC452F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5990, &qword_1BBC452F8);
    sub_1BBC1D5D4(&qword_1EBCA5998, &qword_1EBCA5988, &qword_1BBC452F0);
    sub_1BBC3BBC4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5978);
  }

  return result;
}

unint64_t sub_1BBC3BBC4()
{
  result = qword_1EBCA59A0;
  if (!qword_1EBCA59A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5990, &qword_1BBC452F8);
    sub_1BBC3BC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA59A0);
  }

  return result;
}

unint64_t sub_1BBC3BC50()
{
  result = qword_1EBCA59A8;
  if (!qword_1EBCA59A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA59B0, &qword_1BBC45300);
    sub_1BBC3BCDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA59A8);
  }

  return result;
}

unint64_t sub_1BBC3BCDC()
{
  result = qword_1EBCA59B8;
  if (!qword_1EBCA59B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA59C0, &qword_1BBC45308);
    sub_1BBC3BD68();
    sub_1BBC3BDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA59B8);
  }

  return result;
}

unint64_t sub_1BBC3BD68()
{
  result = qword_1EBCA59C8;
  if (!qword_1EBCA59C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA59D0, &qword_1BBC45310);
    sub_1BBC34F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA59C8);
  }

  return result;
}

unint64_t sub_1BBC3BDF4()
{
  result = qword_1EBCA59D8;
  if (!qword_1EBCA59D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA59E0, &unk_1BBC45318);
    sub_1BBC2AF74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA59D8);
  }

  return result;
}

uint64_t sub_1BBC3BE8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for _CollaborationDetailView();
  v4 = v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  return sub_1BBC37808(1, v3);
}

double sub_1BBC3BEF4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1BBC3A5A4(v1[4], a1);
}

uint64_t sub_1BBC3BF00@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for _CollaborationDetailView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for CollaborationInfo(0) - 8);
  v9 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1BBC3A8C8(v9, a1);
}

id sub_1BBC3BFF0(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_1BBC3BFFC(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

unint64_t sub_1BBC3C0B8()
{
  result = qword_1EBCA5A08;
  if (!qword_1EBCA5A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5A08);
  }

  return result;
}

unint64_t sub_1BBC3C10C()
{
  result = qword_1EBCA5A10;
  if (!qword_1EBCA5A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5828, &qword_1BBC45160);
    sub_1BBC3C198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5A10);
  }

  return result;
}

unint64_t sub_1BBC3C198()
{
  result = qword_1EBCA5A18;
  if (!qword_1EBCA5A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5A20, &qword_1BBC45420);
    sub_1BBC3C250();
    sub_1BBC1D5D4(&qword_1EBCA5A40, &qword_1EBCA5A48, &qword_1BBC45430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5A18);
  }

  return result;
}

unint64_t sub_1BBC3C250()
{
  result = qword_1EBCA5A28;
  if (!qword_1EBCA5A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5A30, &qword_1BBC45428);
    sub_1BBC3C308();
    sub_1BBC1D5D4(&qword_1EBCA5938, &qword_1EBCA5940, &qword_1BBC452D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5A28);
  }

  return result;
}

unint64_t sub_1BBC3C308()
{
  result = qword_1EBCA5A38;
  if (!qword_1EBCA5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5A38);
  }

  return result;
}

unint64_t sub_1BBC3C35C()
{
  result = qword_1EBCA5A50;
  if (!qword_1EBCA5A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5820, &qword_1BBC45158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5A50);
  }

  return result;
}

uint64_t sub_1BBC3C3D8()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_1BBC3A048(v0[4]);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1BBC3C4C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BBC40A5C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1BBC40A4C();
}

uint64_t sub_1BBC3C53C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  *a2 = v5;
  return result;
}

uint64_t sub_1BBC3C5BC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1BBC40ACC();
}

uint64_t _SWCollaborationDetailViewController.setListContent<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _CollaborationDetailView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (&v17 - v13);
  v15 = [v2 viewModel];
  (*(v5 + 16))(v8, a1, a2);
  sub_1BBC378D0(v8, a2, v14);
  sub_1BBC3D9F8(v14);
  return (*(v10 + 8))(v14, v9);
}

uint64_t _SWCollaborationDetailViewController.setListContent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6();
  _SWCollaborationDetailViewController.setListContent<A>(_:)(v8, a3);
  return (*(v4 + 8))(v8, a3);
}

uint64_t _SWCollaborationDetailViewController.customContentTitle.getter()
{
  v1 = [v0 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  return v3;
}

uint64_t _SWCollaborationDetailViewController.customContentTitle.setter()
{
  v1 = [v0 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1BBC40ACC();
}

void __swiftcall _SWCollaborationDetailViewController.init(highlight:listContent:)(_SWCollaborationDetailViewController *__return_ptr retstr, SWHighlight_optional highlight, UIView *listContent)
{
  identifier = highlight.value._identifier;
  isa = highlight.value.super.isa;
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHighlight:highlight.value.super.isa listContent:highlight.value._identifier];
}

id sub_1BBC3CA9C(void *a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for CollaborationDetailViewModel(0));
  v13[0] = 0;
  v5 = sub_1BBC2655C(a1);
  sub_1BBC40FBC();
  v6 = v15;
  v7 = v16;
  sub_1BBC3AF20();
  v8 = sub_1BBC40B1C();
  v10 = v9;
  v15 = v8;
  v16 = v9;
  v17 = a2;
  v18 = v6;
  *v19 = *v14;
  *&v19[3] = *&v14[3];
  v20 = v7;
  sub_1BBC3F87C(&v15, v13);
  v11 = sub_1BBC3F554(v5, &v15);
  sub_1BBC3F8EC(&v15);

  return v11;
}

id _SWCollaborationDetailViewController.init<A>(highlight:listContent:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBC3F288(a1, a2, a3);
  (*(*(a3 - 8) + 8))(a2, a3);

  return v6;
}

id _SWCollaborationDetailViewController.init<A>(highlight:listContent:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BBC3F458(a1, a2, a3, a4);

  return v5;
}

void __swiftcall _SWCollaborationDetailViewController.init(highlight:)(_SWCollaborationDetailViewController *__return_ptr retstr, SWHighlight_optional highlight)
{
  isa = highlight.value.super.isa;
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHighlight_];
}

void sub_1BBC3CC8C(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1BBC40DAC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v13 = [v5 typeErasedHostingController];
  if (v13)
  {
    v14 = v13;
    [v13 willMoveToParentViewController_];
  }

  v15 = [v5 typeErasedHostingController];
  [v15 removeFromParentViewController];

  v16 = [v5 typeErasedHostingController];
  if (!v16)
  {
LABEL_6:
    v68 = a2;
    LOBYTE(v69) = a3 & 1;
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA5A80, &unk_1BBC45718));

    v19 = a2;
    v20 = sub_1BBC40BFC();
    v21 = [v20 view];
    if (v21)
    {
      v22 = v21;
      v23 = [objc_opt_self() clearColor];
      [v22 setBackgroundColor_];

      sub_1BBC40D9C();
      sub_1BBC40BDC();
      v24 = [objc_opt_self() currentDevice];
      v25 = [v24 userInterfaceIdiom];

      if ((v25 - 1) > 5)
      {
        v26.n128_u64[0] = 0x4072480000000000;
      }

      else
      {
        v26.n128_u64[0] = qword_1BBC45728[(v25 - 1)];
      }

      [v20 setPreferredContentSize_];
      [v5 addChildViewController_];
      v27 = [v5 view];
      if (v27)
      {
        v28 = v27;
        v29 = [v20 view];
        if (v29)
        {
          v30 = v29;
          [v28 addSubview_];

          [v20 didMoveToParentViewController_];
          v31 = [v20 view];
          if (v31)
          {
            v32 = v31;
            [v31 setTranslatesAutoresizingMaskIntoConstraints_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5688, &unk_1BBC44C20);
            v33 = swift_allocObject();
            *(v33 + 16) = xmmword_1BBC44C30;
            v34 = [v20 view];
            if (v34)
            {
              v35 = v34;
              v36 = [v34 topAnchor];

              v37 = [v5 view];
              if (v37)
              {
                v38 = v37;
                v39 = [v37 safeAreaLayoutGuide];

                v40 = [v39 topAnchor];
                v41 = [v36 constraintEqualToAnchor_];

                *(v33 + 32) = v41;
                v42 = [v20 view];
                if (v42)
                {
                  v43 = v42;
                  v44 = [v42 bottomAnchor];

                  v45 = [v5 view];
                  if (v45)
                  {
                    v46 = v45;
                    v47 = [v45 safeAreaLayoutGuide];

                    v48 = [v47 bottomAnchor];
                    v49 = [v44 constraintEqualToAnchor_];

                    *(v33 + 40) = v49;
                    v50 = [v20 view];
                    if (v50)
                    {
                      v51 = v50;
                      v52 = [v50 leadingAnchor];

                      v53 = [v5 view];
                      if (v53)
                      {
                        v54 = v53;
                        v55 = [v53 safeAreaLayoutGuide];

                        v56 = [v55 leadingAnchor];
                        v57 = [v52 constraintEqualToAnchor_];

                        *(v33 + 48) = v57;
                        v58 = [v20 view];
                        if (v58)
                        {
                          v59 = v58;
                          v60 = [v58 trailingAnchor];

                          v61 = [v5 view];
                          if (v61)
                          {
                            v62 = v61;
                            v63 = objc_opt_self();
                            v64 = [v62 safeAreaLayoutGuide];

                            v65 = [v64 trailingAnchor];
                            v66 = [v60 constraintEqualToAnchor_];

                            *(v33 + 56) = v66;
                            sub_1BBC3F954();
                            v67 = sub_1BBC4116C();

                            [v63 activateConstraints_];

                            [v5 setTypeErasedHostingController_];
                            return;
                          }

                          goto LABEL_33;
                        }

LABEL_32:
                        __break(1u);
LABEL_33:
                        __break(1u);
                        goto LABEL_34;
                      }

LABEL_31:
                      __break(1u);
                      goto LABEL_32;
                    }

LABEL_30:
                    __break(1u);
                    goto LABEL_31;
                  }

LABEL_29:
                  __break(1u);
                  goto LABEL_30;
                }

LABEL_28:
                __break(1u);
                goto LABEL_29;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  v17 = v16;
  v18 = [v16 view];

  if (v18)
  {
    [v18 removeFromSuperview];

    goto LABEL_6;
  }

LABEL_34:
  __break(1u);
}

void sub_1BBC3D348(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BBC40DAC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v7 = [v2 typeErasedHostingController];
  if (v7)
  {
    v8 = v7;
    [v7 willMoveToParentViewController_];
  }

  v9 = [v2 typeErasedHostingController];
  [v9 removeFromParentViewController];

  v10 = [v2 typeErasedHostingController];
  if (!v10)
  {
LABEL_6:
    v13 = *(a1 + 16);
    v63 = *a1;
    v64 = v13;
    v65 = *(a1 + 32);
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5A78, &unk_1BBC45708));
    sub_1BBC3F87C(a1, v62);
    v14 = sub_1BBC40BFC();
    v15 = [v14 view];
    if (v15)
    {
      v16 = v15;
      v17 = [objc_opt_self() clearColor];
      [v16 setBackgroundColor_];

      sub_1BBC40D9C();
      sub_1BBC40BDC();
      v18 = [objc_opt_self() currentDevice];
      v19 = [v18 userInterfaceIdiom];

      if ((v19 - 1) > 5)
      {
        v20.n128_u64[0] = 0x4072480000000000;
      }

      else
      {
        v20.n128_u64[0] = qword_1BBC45728[(v19 - 1)];
      }

      [v14 setPreferredContentSize_];
      [v2 addChildViewController_];
      v21 = [v2 view];
      if (v21)
      {
        v22 = v21;
        v23 = [v14 view];
        if (v23)
        {
          v24 = v23;
          [v22 addSubview_];

          [v14 didMoveToParentViewController_];
          v25 = [v14 view];
          if (v25)
          {
            v26 = v25;
            [v25 setTranslatesAutoresizingMaskIntoConstraints_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5688, &unk_1BBC44C20);
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_1BBC44C30;
            v28 = [v14 view];
            if (v28)
            {
              v29 = v28;
              v30 = [v28 topAnchor];

              v31 = [v2 view];
              if (v31)
              {
                v32 = v31;
                v33 = [v31 safeAreaLayoutGuide];

                v34 = [v33 topAnchor];
                v35 = [v30 constraintEqualToAnchor_];

                *(v27 + 32) = v35;
                v36 = [v14 view];
                if (v36)
                {
                  v37 = v36;
                  v38 = [v36 bottomAnchor];

                  v39 = [v2 view];
                  if (v39)
                  {
                    v40 = v39;
                    v41 = [v39 safeAreaLayoutGuide];

                    v42 = [v41 bottomAnchor];
                    v43 = [v38 constraintEqualToAnchor_];

                    *(v27 + 40) = v43;
                    v44 = [v14 view];
                    if (v44)
                    {
                      v45 = v44;
                      v46 = [v44 leadingAnchor];

                      v47 = [v2 view];
                      if (v47)
                      {
                        v48 = v47;
                        v49 = [v47 safeAreaLayoutGuide];

                        v50 = [v49 leadingAnchor];
                        v51 = [v46 constraintEqualToAnchor_];

                        *(v27 + 48) = v51;
                        v52 = [v14 view];
                        if (v52)
                        {
                          v53 = v52;
                          v54 = [v52 trailingAnchor];

                          v55 = [v2 view];
                          if (v55)
                          {
                            v56 = v55;
                            v57 = objc_opt_self();
                            v58 = [v56 safeAreaLayoutGuide];

                            v59 = [v58 trailingAnchor];
                            v60 = [v54 constraintEqualToAnchor_];

                            *(v27 + 56) = v60;
                            sub_1BBC3F954();
                            v61 = sub_1BBC4116C();

                            [v57 activateConstraints_];

                            [v2 setTypeErasedHostingController_];
                            return;
                          }

                          goto LABEL_33;
                        }

LABEL_32:
                        __break(1u);
LABEL_33:
                        __break(1u);
                        goto LABEL_34;
                      }

LABEL_31:
                      __break(1u);
                      goto LABEL_32;
                    }

LABEL_30:
                    __break(1u);
                    goto LABEL_31;
                  }

LABEL_29:
                  __break(1u);
                  goto LABEL_30;
                }

LABEL_28:
                __break(1u);
                goto LABEL_29;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  v11 = v10;
  v12 = [v10 view];

  if (v12)
  {
    [v12 removeFromSuperview];

    goto LABEL_6;
  }

LABEL_34:
  __break(1u);
}

void sub_1BBC3D9F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BBC40DAC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v7 = type metadata accessor for _CollaborationDetailView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v67 - v11;
  v13 = [v2 typeErasedHostingController];
  if (v13)
  {
    v14 = v13;
    [v13 willMoveToParentViewController_];
  }

  v15 = [v2 typeErasedHostingController];
  [v15 removeFromParentViewController];

  v16 = [v2 typeErasedHostingController];
  if (!v16)
  {
LABEL_6:
    swift_getWitnessTable();
    sub_1BBC40C0C();
    (*(v8 + 16))(v12, a1, v7);
    v19 = sub_1BBC40BEC();
    v20 = [v19 view];
    if (v20)
    {
      v21 = v20;
      v22 = [objc_opt_self() clearColor];
      [v21 setBackgroundColor_];

      sub_1BBC40D9C();
      sub_1BBC40BDC();
      v23 = [objc_opt_self() currentDevice];
      v24 = [v23 userInterfaceIdiom];

      if ((v24 - 1) > 5)
      {
        v25.n128_u64[0] = 0x4072480000000000;
      }

      else
      {
        v25.n128_u64[0] = qword_1BBC45728[(v24 - 1)];
      }

      [v19 setPreferredContentSize_];
      [v2 addChildViewController_];
      v26 = [v2 view];
      if (v26)
      {
        v27 = v26;
        v28 = [v19 view];
        if (v28)
        {
          v29 = v28;
          [v27 addSubview_];

          [v19 didMoveToParentViewController_];
          v30 = [v19 view];
          if (v30)
          {
            v31 = v30;
            [v30 setTranslatesAutoresizingMaskIntoConstraints_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5688, &unk_1BBC44C20);
            v32 = swift_allocObject();
            *(v32 + 16) = xmmword_1BBC44C30;
            v33 = [v19 view];
            if (v33)
            {
              v34 = v33;
              v35 = [v33 topAnchor];

              v36 = [v2 view];
              if (v36)
              {
                v37 = v36;
                v38 = [v36 safeAreaLayoutGuide];

                v39 = [v38 topAnchor];
                v40 = [v35 constraintEqualToAnchor_];

                *(v32 + 32) = v40;
                v41 = [v19 view];
                if (v41)
                {
                  v42 = v41;
                  v43 = [v41 bottomAnchor];

                  v44 = [v2 view];
                  if (v44)
                  {
                    v45 = v44;
                    v46 = [v44 safeAreaLayoutGuide];

                    v47 = [v46 bottomAnchor];
                    v48 = [v43 constraintEqualToAnchor_];

                    *(v32 + 40) = v48;
                    v49 = [v19 view];
                    if (v49)
                    {
                      v50 = v49;
                      v51 = [v49 leadingAnchor];

                      v52 = [v2 view];
                      if (v52)
                      {
                        v53 = v52;
                        v54 = [v52 safeAreaLayoutGuide];

                        v55 = [v54 leadingAnchor];
                        v56 = [v51 constraintEqualToAnchor_];

                        *(v32 + 48) = v56;
                        v57 = [v19 view];
                        if (v57)
                        {
                          v58 = v57;
                          v59 = [v57 trailingAnchor];

                          v60 = [v2 view];
                          if (v60)
                          {
                            v61 = v60;
                            v62 = objc_opt_self();
                            v63 = [v61 safeAreaLayoutGuide];

                            v64 = [v63 trailingAnchor];
                            v65 = [v59 constraintEqualToAnchor_];

                            *(v32 + 56) = v65;
                            sub_1BBC3F954();
                            v66 = sub_1BBC4116C();

                            [v62 activateConstraints_];

                            [v2 setTypeErasedHostingController_];
                            return;
                          }

                          goto LABEL_33;
                        }

LABEL_32:
                        __break(1u);
LABEL_33:
                        __break(1u);
                        goto LABEL_34;
                      }

LABEL_31:
                      __break(1u);
                      goto LABEL_32;
                    }

LABEL_30:
                    __break(1u);
                    goto LABEL_31;
                  }

LABEL_29:
                  __break(1u);
                  goto LABEL_30;
                }

LABEL_28:
                __break(1u);
                goto LABEL_29;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  v17 = v16;
  v18 = [v16 view];

  if (v18)
  {
    [v18 removeFromSuperview];

    goto LABEL_6;
  }

LABEL_34:
  __break(1u);
}

id _SWCollaborationDetailViewController.init(itemProvider:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for CollaborationDetailViewModel(0));
  v3 = a1;
  v4 = CollaborationDetailViewModel.init(itemProvider:)(v3);
  sub_1BBC40FBC();
  sub_1BBC3AF20();
  v5 = sub_1BBC40B1C();
  v7 = v6;
  swift_getObjectType();
  v8 = sub_1BBC3F694(v4, v5, v7, v10, v11);

  swift_deallocPartialClassInstance();
  return v8;
}

id _SWCollaborationDetailViewController.viewModel.getter()
{
  result = [v0 typeErasedViewModel];
  if (result)
  {
    type metadata accessor for CollaborationDetailViewModel(0);

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _SWCollaborationDetailViewController.viewModel.setter(void *a1)
{
  [v1 setTypeErasedViewModel_];
}

Swift::Void __swiftcall _SWCollaborationDetailViewController.setListContentView(_:)(UIView *a1)
{
  v2 = a1;
  v3 = [v1 viewModel];
  v9[0] = 0;
  sub_1BBC40FBC();
  v4 = v10;
  v5 = v11;
  type metadata accessor for CollaborationDetailViewModel(0);
  sub_1BBC3AF20();
  v6 = sub_1BBC40B1C();
  v8 = v7;
  v10 = v6;
  v11 = v7;
  v12 = v2;
  v13 = v4;
  *v14 = *v9;
  *&v14[3] = *&v9[3];
  v15 = v5;
  sub_1BBC3D348(&v10);
}

uint64_t sub_1BBC3E4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBC3F828();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BBC3E54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBC3F828();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BBC3E5B0()
{
  sub_1BBC3F828();
  sub_1BBC40CAC();
  __break(1u);
}

uint64_t sub_1BBC3E698()
{
  v1 = [v0 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  return v3;
}

uint64_t sub_1BBC3E7EC()
{
  v1 = [v0 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1BBC40ACC();
}

double sub_1BBC3E86C@<D0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = [*a1 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1BBC3E908(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;

  v5 = [v4 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1BBC40ACC();
}

void (*_SWCollaborationDetailViewController.customContentTitle.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v2;
  v6 = [v2 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  *v5 = v5[1];
  return sub_1BBC3EA7C;
}

void sub_1BBC3EA7C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  if (a2)
  {
    v6 = (*a1)[1];

    v7 = [v5 viewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    v2[2] = v4;
    v2[3] = v3;
    sub_1BBC40ACC();
    v8 = v2[1];
  }

  else
  {
    v9 = [(*a1)[4] viewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    v2[2] = v4;
    v2[3] = v3;
    sub_1BBC40ACC();
  }

  free(v2);
}

void sub_1BBC3EB80(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  *a2 = v4;
}

uint64_t sub_1BBC3EC1C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;

  v4 = [v3 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1BBC40ACC();
}

uint64_t (*_SWCollaborationDetailViewController.customCollaborators.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  *a1 = a1[1];
  return sub_1BBC3ED5C;
}

uint64_t sub_1BBC3ED5C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[2];
  if (a2)
  {
    v5 = *a1;

    v6 = [v4 viewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v3;
    sub_1BBC40ACC();
    v7 = *a1;
  }

  else
  {
    v9 = [a1[2] viewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v3;

    return sub_1BBC40ACC();
  }
}

id _SWCollaborationDetailViewController.init(highlight:listContent:)(void *a1, void *a2)
{
  swift_getObjectType();
  v4 = sub_1BBC3CA9C(a1, a2);
  swift_deallocPartialClassInstance();
  return v4;
}

id _SWCollaborationDetailViewController.init(highlight:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for CollaborationDetailViewModel(0));
  v3 = sub_1BBC2655C(a1);
  sub_1BBC40FBC();
  sub_1BBC3AF20();
  v4 = sub_1BBC40B1C();
  v6 = v5;
  swift_getObjectType();
  v7 = sub_1BBC3F694(v3, v4, v6, v9, v10);

  swift_deallocPartialClassInstance();
  return v7;
}

id _SWCollaborationDetailViewController.updateHighlight<A>(_:newListContent:)(uint64_t a1)
{
  return [v1 setCollaborationHighlight_];
}

{
  return [v1 setCollaborationHighlight_];
}

id sub_1BBC3F098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BBC40DAC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v7 = type metadata accessor for _CollaborationDetailView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v13 setTypeErasedViewModel_];
  swift_getWitnessTable();
  sub_1BBC40C0C();
  (*(v8 + 16))(v12, a2, v7);
  v14 = sub_1BBC40BEC();
  sub_1BBC40D9C();
  sub_1BBC40BDC();
  v15 = v14;
  [v13 setTypeErasedHostingController_];
  sub_1BBC3D9F8(a2);

  return v13;
}

id sub_1BBC3F288(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _CollaborationDetailView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (&v21 - v14);
  v16 = objc_allocWithZone(type metadata accessor for CollaborationDetailViewModel(0));
  v17 = sub_1BBC2655C(a1);
  (*(v6 + 16))(v9, a2, a3);
  v18 = v17;
  sub_1BBC378D0(v9, a3, v15);
  v19 = sub_1BBC3F098(v18, v15);

  (*(v11 + 8))(v15, v10);
  return v19;
}

id sub_1BBC3F458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  v12 = sub_1BBC3F288(a1, v10, a4);
  (*(v6 + 8))(v10, a4);
  return v12;
}

id sub_1BBC3F554(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BBC40DAC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v7 setTypeErasedViewModel_];
  v8 = *(a2 + 16);
  v14 = *a2;
  v15 = v8;
  v16 = *(a2 + 32);
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5A78, &unk_1BBC45708));
  sub_1BBC3F87C(a2, v13);
  v10 = sub_1BBC40BFC();
  sub_1BBC40D9C();
  sub_1BBC40BDC();
  v11 = v10;
  [v7 setTypeErasedHostingController_];
  sub_1BBC3D348(a2);

  return v7;
}

id sub_1BBC3F694(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  v10 = sub_1BBC40DAC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v13 setTypeErasedViewModel_];
  v18 = a3;
  LOBYTE(v19) = a4;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA5A80, &unk_1BBC45718));

  v14 = a3;
  v15 = sub_1BBC40BFC();
  sub_1BBC40D9C();
  sub_1BBC40BDC();
  v16 = v15;
  [v13 setTypeErasedHostingController_];
  sub_1BBC3CC8C(a2, v14, a4, a5);

  return v13;
}

unint64_t sub_1BBC3F828()
{
  result = qword_1EBCA5A68;
  if (!qword_1EBCA5A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5A68);
  }

  return result;
}

uint64_t sub_1BBC3F87C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5A70, &qword_1BBC45700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBC3F8EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5A70, &qword_1BBC45700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BBC3F954()
{
  result = qword_1EBCA5690;
  if (!qword_1EBCA5690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCA5690);
  }

  return result;
}