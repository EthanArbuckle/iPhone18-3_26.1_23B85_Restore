uint64_t sub_23C5A7E70()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_23C5A812C;
  }

  else
  {
    v3 = sub_23C5A7F84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23C5A7F84()
{
  v17 = *(v0 + 120);
  v12 = *(v0 + 104);
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v20 = *(v0 + 155);
  v5 = *(v0 + 64);
  v21 = *(v0 + 56);
  v18 = *(v0 + 48);
  v19 = *(v0 + 128);
  v16 = *(v0 + 154);
  v13 = *(v0 + 153);
  v6 = *(v0 + 32);
  v14 = *(v0 + 40);
  v15 = *(v0 + 112);
  v7 = *(v0 + 152);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C30, &qword_23C874CE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23C873CF0;
  *(v10 + 56) = v4;
  *(v10 + 64) = &off_284F33190;
  *(v10 + 32) = v3;
  *(v10 + 96) = v2;
  *(v10 + 104) = &off_284F30398;
  *(v10 + 72) = v1;
  *(v10 + 136) = v12;
  *(v10 + 144) = &off_284F2FFD8;
  *(v10 + 112) = v15;
  *(v10 + 176) = v17;
  *(v10 + 184) = &off_284F311A8;
  *(v10 + 152) = v19;
  *v9 = v10;
  *(v9 + 8) = v8;
  *(v9 + 16) = v7 & 1;
  *(v9 + 24) = v6;
  *(v9 + 32) = v13 & 1;
  *(v9 + 40) = v14;
  *(v9 + 48) = v16 & 1;
  *(v9 + 56) = v18;
  *(v9 + 64) = v20 & 1;
  *(v9 + 72) = v21;
  *(v9 + 80) = v5;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_23C5A812C()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[10];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

uint64_t static BiomeInstrumentationStreamsFactory.constructRawJoinableProvider(startTime:endTime:maxEvents:lastN:useCase:trackingTag:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 72) = v12;
  *(v8 + 80) = v13;
  *(v8 + 56) = v11;
  *(v8 + 171) = v10;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 170) = a7;
  *(v8 + 169) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 168) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23C5A820C, 0, 0);
}

uint64_t sub_23C5A820C()
{
  v1 = type metadata accessor for TranscriptStream();
  v0[11] = v1;
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[12] = v4;
  sub_23C871644();
  *(v4 + OBJC_IVAR____TtC26AIMLInstrumentationStreams16TranscriptStream_name) = 0;
  v5 = type metadata accessor for RawJoinableStream();
  v0[13] = v5;
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v0[14] = v8;
  *(v8 + 16) = 3;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  v9 = type metadata accessor for GMSStream();
  v0[15] = v9;
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v0[16] = v12;
  sub_23C871644();
  *(v12 + OBJC_IVAR____TtC26AIMLInstrumentationStreams9GMSStream_name) = 1;
  v13 = type metadata accessor for TelemetryStream();
  v0[17] = v13;
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v0[18] = v16;
  sub_23C871644();
  *(v16 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15TelemetryStream_name) = 2;
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_23C5A8448;

  return sub_23C6289D0();
}

uint64_t sub_23C5A8448()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_23C5A8730;
  }

  else
  {
    v3 = sub_23C5A855C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23C5A855C()
{
  v21 = *(v0 + 144);
  v19 = *(v0 + 136);
  v17 = *(v0 + 128);
  v14 = *(v0 + 120);
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v23 = *(v0 + 72);
  v20 = *(v0 + 171);
  v6 = *(v0 + 64);
  v22 = *(v0 + 56);
  v18 = *(v0 + 48);
  v16 = *(v0 + 170);
  v13 = *(v0 + 169);
  v15 = *(v0 + 40);
  v12 = *(v0 + 32);
  v7 = *(v0 + 168);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C30, &qword_23C874CE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23C873CF0;
  *(v10 + 56) = v4;
  *(v10 + 64) = &off_284F33190;
  *(v10 + 32) = v3;
  *(v10 + 96) = v2;
  *(v10 + 104) = &off_284F30398;
  *(v10 + 72) = v1;
  *(v10 + 136) = v14;
  *(v10 + 144) = &off_284F2FFD8;
  *(v10 + 112) = v17;
  *(v10 + 176) = v19;
  *(v10 + 184) = &off_284F311A8;
  *(v10 + 152) = v21;
  *v8 = v10;
  *(v8 + 8) = v9;
  *(v8 + 16) = v7 & 1;
  *(v8 + 24) = v12;
  *(v8 + 32) = v13 & 1;
  *(v8 + 40) = v15;
  *(v8 + 48) = v16 & 1;
  *(v8 + 56) = v18;
  *(v8 + 64) = v20 & 1;
  *(v8 + 72) = v22;
  *(v8 + 80) = v6;
  *(v8 + 88) = v23;
  *(v8 + 96) = v5;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_23C5A8730()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];

  v5 = v0[1];
  v6 = v0[20];

  return v5();
}

uint64_t static BiomeInstrumentationStreamsFactory.constructProcessedJoinableProvider(startTime:endTime:maxEvents:lastN:useCase:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = v11;
  *(v8 + 64) = v12;
  *(v8 + 75) = v10;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 74) = a7;
  *(v8 + 73) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 72) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23C5A8808, 0, 0);
}

uint64_t sub_23C5A8808()
{
  v25 = *(v0 + 75);
  v26 = *(v0 + 56);
  v28 = *(v0 + 64);
  v24 = *(v0 + 48);
  v23 = *(v0 + 74);
  v21 = *(v0 + 73);
  v22 = *(v0 + 40);
  v20 = *(v0 + 32);
  v19 = *(v0 + 72);
  v1 = *(v0 + 16);
  v18 = *(v0 + 24);
  v2 = type metadata accessor for TranscriptStream();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_23C871644();
  *(v5 + OBJC_IVAR____TtC26AIMLInstrumentationStreams16TranscriptStream_name) = 0;
  v17 = type metadata accessor for SelfProcessedEventJoinableStream();
  v6 = swift_allocObject();
  *(v6 + 16) = 4;
  v7 = type metadata accessor for GMSStream();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  sub_23C871644();
  *(v10 + OBJC_IVAR____TtC26AIMLInstrumentationStreams9GMSStream_name) = 1;
  v11 = type metadata accessor for TelemetryStream();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  sub_23C871644();
  *(v14 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15TelemetryStream_name) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C30, &qword_23C874CE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23C873CF0;
  *(v15 + 56) = v2;
  *(v15 + 64) = &off_284F33190;
  *(v15 + 32) = v5;
  *(v15 + 96) = v17;
  *(v15 + 104) = &off_284F30578;
  *(v15 + 72) = v6;
  *(v15 + 136) = v7;
  *(v15 + 144) = &off_284F2FFD8;
  *(v15 + 112) = v10;
  *(v15 + 176) = v11;
  *(v15 + 184) = &off_284F311A8;
  *(v15 + 152) = v14;
  *v1 = v15;
  *(v1 + 8) = v18;
  *(v1 + 16) = v19 & 1;
  *(v1 + 24) = v20;
  *(v1 + 32) = v21 & 1;
  *(v1 + 40) = v22;
  *(v1 + 48) = v23 & 1;
  *(v1 + 56) = v24;
  *(v1 + 64) = v25 & 1;
  *(v1 + 72) = v26;
  *(v1 + 80) = v28;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  v27 = *(v0 + 8);

  return v27();
}

uint64_t static BiomeInstrumentationStreamsFactory.constructProcessedJoinableProvider(startTime:endTime:maxEvents:lastN:useCase:trackingTag:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 72) = v12;
  *(v8 + 80) = v13;
  *(v8 + 56) = v11;
  *(v8 + 91) = v10;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 90) = a7;
  *(v8 + 89) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 88) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23C5A8B54, 0, 0);
}

uint64_t sub_23C5A8B54()
{
  v30 = *(v0 + 80);
  v27 = *(v0 + 64);
  v28 = *(v0 + 72);
  v25 = *(v0 + 91);
  v26 = *(v0 + 56);
  v24 = *(v0 + 48);
  v23 = *(v0 + 90);
  v21 = *(v0 + 89);
  v22 = *(v0 + 40);
  v20 = *(v0 + 32);
  v19 = *(v0 + 88);
  v1 = *(v0 + 16);
  v18 = *(v0 + 24);
  v2 = type metadata accessor for TranscriptStream();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_23C871644();
  *(v5 + OBJC_IVAR____TtC26AIMLInstrumentationStreams16TranscriptStream_name) = 0;
  v17 = type metadata accessor for SelfProcessedEventJoinableStream();
  v6 = swift_allocObject();
  *(v6 + 16) = 4;
  v7 = type metadata accessor for GMSStream();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  sub_23C871644();
  *(v10 + OBJC_IVAR____TtC26AIMLInstrumentationStreams9GMSStream_name) = 1;
  v11 = type metadata accessor for TelemetryStream();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  sub_23C871644();
  *(v14 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15TelemetryStream_name) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C30, &qword_23C874CE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23C873CF0;
  *(v15 + 56) = v2;
  *(v15 + 64) = &off_284F33190;
  *(v15 + 32) = v5;
  *(v15 + 96) = v17;
  *(v15 + 104) = &off_284F30578;
  *(v15 + 72) = v6;
  *(v15 + 136) = v7;
  *(v15 + 144) = &off_284F2FFD8;
  *(v15 + 112) = v10;
  *(v15 + 176) = v11;
  *(v15 + 184) = &off_284F311A8;
  *(v15 + 152) = v14;
  *v1 = v15;
  *(v1 + 8) = v18;
  *(v1 + 16) = v19 & 1;
  *(v1 + 24) = v20;
  *(v1 + 32) = v21 & 1;
  *(v1 + 40) = v22;
  *(v1 + 48) = v23 & 1;
  *(v1 + 56) = v24;
  *(v1 + 64) = v25 & 1;
  *(v1 + 72) = v26;
  *(v1 + 80) = v27;
  *(v1 + 88) = v28;
  *(v1 + 96) = v30;
  v29 = *(v0 + 8);

  return v29();
}

id BiomeInstrumentationStreamsFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeInstrumentationStreamsFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeInstrumentationStreamsFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BiomeInstrumentationStreamsFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeInstrumentationStreamsFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BiomeInstrumentationStreamsProvider.startTime.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t BiomeInstrumentationStreamsProvider.startTime.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t BiomeInstrumentationStreamsProvider.endTime.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t BiomeInstrumentationStreamsProvider.endTime.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t BiomeInstrumentationStreamsProvider.maxEvents.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t BiomeInstrumentationStreamsProvider.maxEvents.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t BiomeInstrumentationStreamsProvider.lastN.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t BiomeInstrumentationStreamsProvider.lastN.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t BiomeInstrumentationStreamsProvider.useCase.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t BiomeInstrumentationStreamsProvider.useCase.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t BiomeInstrumentationStreamsProvider.trackingTag.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t BiomeInstrumentationStreamsProvider.trackingTag.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

void BiomeInstrumentationStreamsProvider.transcriptEvents()(uint64_t a1@<X8>)
{
  v3 = *v1;
  v26 = v1[1];
  v25 = *(v1 + 16);
  v24 = v1[3];
  v23 = *(v1 + 32);
  v22 = v1[5];
  v21 = *(v1 + 48);
  v20 = v1[7];
  v19 = *(v1 + 64);
  v17 = v1[10];
  v18 = v1[9];
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = MEMORY[0x277D84F90];
    while (v5 < *(v3 + 16))
    {
      sub_23C5A9638(v6, &v28);
      v8 = v29;
      v9 = v30;
      __swift_project_boxed_opaque_existential_0(&v28, v29);
      (*(v9 + 8))(v27, v8, v9);
      if (LOBYTE(v27[0]))
      {
        __swift_destroy_boxed_opaque_existential_0(&v28);
      }

      else
      {
        sub_23C581A8C(&v28, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23C592C44(0, *(v7 + 16) + 1, 1);
          v7 = v31;
        }

        v12 = *(v7 + 16);
        v11 = *(v7 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_23C592C44((v11 > 1), v12 + 1, 1);
          v7 = v31;
        }

        *(v7 + 16) = v12 + 1;
        sub_23C581A8C(v27, v7 + 40 * v12 + 32);
      }

      ++v5;
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_13:
    if (*(v7 + 16))
    {
      sub_23C5A9638(v7 + 32, v27);

      sub_23C581A8C(v27, &v28);
      v13 = v29;
      v14 = v30;
      __swift_project_boxed_opaque_existential_0(&v28, v29);
      (*(v14 + 16))(v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v13, v14);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94D0, &unk_23C873A00);
      (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
      __swift_destroy_boxed_opaque_existential_0(&v28);
    }

    else
    {

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94D0, &unk_23C873A00);
      (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    }
  }
}

uint64_t sub_23C5A9638(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void BiomeInstrumentationStreamsProvider.gfiEvents()(uint64_t a1@<X8>)
{
  v3 = *v1;
  v26 = v1[1];
  v25 = *(v1 + 16);
  v24 = v1[3];
  v23 = *(v1 + 32);
  v22 = v1[5];
  v21 = *(v1 + 48);
  v20 = v1[7];
  v19 = *(v1 + 64);
  v17 = v1[10];
  v18 = v1[9];
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = MEMORY[0x277D84F90];
    while (v5 < *(v3 + 16))
    {
      sub_23C5A9638(v6, &v28);
      v8 = v29;
      v9 = v30;
      __swift_project_boxed_opaque_existential_0(&v28, v29);
      (*(v9 + 8))(v27, v8, v9);
      if (LOBYTE(v27[0]) == 1)
      {
        sub_23C581A8C(&v28, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23C592C44(0, *(v7 + 16) + 1, 1);
          v7 = v31;
        }

        v12 = *(v7 + 16);
        v11 = *(v7 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_23C592C44((v11 > 1), v12 + 1, 1);
          v7 = v31;
        }

        *(v7 + 16) = v12 + 1;
        sub_23C581A8C(v27, v7 + 40 * v12 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v28);
      }

      ++v5;
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_13:
    if (*(v7 + 16))
    {
      sub_23C5A9638(v7 + 32, v27);

      sub_23C581A8C(v27, &v28);
      v13 = v29;
      v14 = v30;
      __swift_project_boxed_opaque_existential_0(&v28, v29);
      (*(v14 + 16))(v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v13, v14);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94D0, &unk_23C873A00);
      (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
      __swift_destroy_boxed_opaque_existential_0(&v28);
    }

    else
    {

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94D0, &unk_23C873A00);
      (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    }
  }
}

void BiomeInstrumentationStreamsProvider.telemetryEvents()(uint64_t a1@<X8>)
{
  v3 = *v1;
  v26 = v1[1];
  v25 = *(v1 + 16);
  v24 = v1[3];
  v23 = *(v1 + 32);
  v22 = v1[5];
  v21 = *(v1 + 48);
  v20 = v1[7];
  v19 = *(v1 + 64);
  v17 = v1[10];
  v18 = v1[9];
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = MEMORY[0x277D84F90];
    while (v5 < *(v3 + 16))
    {
      sub_23C5A9638(v6, &v28);
      v8 = v29;
      v9 = v30;
      __swift_project_boxed_opaque_existential_0(&v28, v29);
      (*(v9 + 8))(v27, v8, v9);
      if (LOBYTE(v27[0]) == 2)
      {
        sub_23C581A8C(&v28, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23C592C44(0, *(v7 + 16) + 1, 1);
          v7 = v31;
        }

        v12 = *(v7 + 16);
        v11 = *(v7 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_23C592C44((v11 > 1), v12 + 1, 1);
          v7 = v31;
        }

        *(v7 + 16) = v12 + 1;
        sub_23C581A8C(v27, v7 + 40 * v12 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v28);
      }

      ++v5;
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_13:
    if (*(v7 + 16))
    {
      sub_23C5A9638(v7 + 32, v27);

      sub_23C581A8C(v27, &v28);
      v13 = v29;
      v14 = v30;
      __swift_project_boxed_opaque_existential_0(&v28, v29);
      (*(v14 + 16))(v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v13, v14);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94D0, &unk_23C873A00);
      (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
      __swift_destroy_boxed_opaque_existential_0(&v28);
    }

    else
    {

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94D0, &unk_23C873A00);
      (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    }
  }
}

void BiomeInstrumentationStreamsProvider.selfEvents()(uint64_t a1@<X8>)
{
  v3 = *v1;
  v28 = v1[1];
  v27 = *(v1 + 16);
  v26 = v1[3];
  v25 = *(v1 + 32);
  v24 = v1[5];
  v23 = *(v1 + 48);
  v22 = v1[7];
  v21 = *(v1 + 64);
  v19 = v1[10];
  v20 = v1[9];
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = MEMORY[0x277D84F90];
    while (v5 < *(v3 + 16))
    {
      sub_23C5A9638(v6, &v30);
      v8 = v31;
      v9 = v32;
      __swift_project_boxed_opaque_existential_0(&v30, v31);
      (*(v9 + 8))(v29, v8, v9);
      if (LOBYTE(v29[0]) == 3 || (v10 = v31, v11 = v32, __swift_project_boxed_opaque_existential_0(&v30, v31), (*(v11 + 8))(v29, v10, v11), LOBYTE(v29[0]) == 4))
      {
        sub_23C581A8C(&v30, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23C592C44(0, *(v7 + 16) + 1, 1);
          v7 = v33;
        }

        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_23C592C44((v13 > 1), v14 + 1, 1);
          v7 = v33;
        }

        *(v7 + 16) = v14 + 1;
        sub_23C581A8C(v29, v7 + 40 * v14 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v30);
      }

      ++v5;
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_14:
    if (*(v7 + 16))
    {
      sub_23C5A9638(v7 + 32, v29);

      sub_23C581A8C(v29, &v30);
      v15 = v31;
      v16 = v32;
      __swift_project_boxed_opaque_existential_0(&v30, v31);
      (*(v16 + 16))(v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v15, v16);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94D0, &unk_23C873A00);
      (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
      __swift_destroy_boxed_opaque_existential_0(&v30);
    }

    else
    {

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94D0, &unk_23C873A00);
      (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
    }
  }
}

uint64_t BiomeInstrumentationStreamsProvider.eventGraphs(windowLength:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v51 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E10, &qword_23C874FB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94D0, &unk_23C873A00);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v47 - v13;
  v14 = *v2;
  v15 = v2[12];
  v50 = v2[11];
  v49 = v15;
  v16 = *(v14 + 16);
  v53 = v12;
  if (v16)
  {
    v17 = v2[1];
    v18 = *(v2 + 16);
    v62 = v2[3];
    v61 = *(v2 + 32);
    v60 = v2[5];
    v59 = *(v2 + 48);
    v58 = v2[7];
    v57 = *(v2 + 64);
    v19 = v14 + 32;
    v20 = (v12 + 56);
    v21 = v2[9];
    v55 = v2[10];
    v56 = v21;
    v22 = (v12 + 48);
    v54 = (v12 + 32);
    v64 = MEMORY[0x277D84F90];
    v52 = v18;
    do
    {
      sub_23C5A9638(v19, v65);
      v23 = v66;
      v24 = v67;
      __swift_project_boxed_opaque_existential_0(v65, v66);
      (*(v24 + 16))(v17, v18, v62, v61, v60, v59, v58, v57, v56, v55, v23, v24);
      (*v20)(v7, 0, 1, v8);
      __swift_destroy_boxed_opaque_existential_0(v65);
      if ((*v22)(v7, 1, v8) == 1)
      {
        sub_23C5AA5B4(v7);
      }

      else
      {
        v25 = v17;
        v26 = *v54;
        (*v54)(v63, v7, v8);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v27 = v64;
        }

        else
        {
          v27 = sub_23C584938(0, v64[2] + 1, 1, v64);
        }

        v29 = v27[2];
        v28 = v27[3];
        v30 = v53;
        if (v29 >= v28 >> 1)
        {
          v32 = sub_23C584938(v28 > 1, v29 + 1, 1, v27);
          v30 = v53;
          v27 = v32;
        }

        v27[2] = v29 + 1;
        v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v64 = v27;
        v26(v27 + v31 + *(v30 + 72) * v29, v63, v8);
        v17 = v25;
        v18 = v52;
      }

      v19 += 40;
      --v16;
    }

    while (v16);
  }

  else
  {
    v64 = MEMORY[0x277D84F90];
  }

  v33 = v64[2];
  if (v33)
  {
    v65[0] = MEMORY[0x277D84F90];
    v34 = v64;
    sub_23C871D84();
    v35 = v48;
    v63 = *(v53 + 16);
    v36 = v34 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v37 = *(v53 + 72);
    v38 = (v53 + 8);
    do
    {
      (v63)(v35, v36, v8);
      sub_23C870BE4();
      (*v38)(v35, v8);
      sub_23C871D54();
      v39 = *(v65[0] + 16);
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
      v36 += v37;
      --v33;
    }

    while (v33);

    v40 = v65[0];
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v41 = objc_allocWithZone(type metadata accessor for BiomeEventGraphsPublisher());
  v42 = v49;

  if (BiomeEventGraphsPublisher.init(streams:windowLength:trackingTag:)(v40, v50, v42, a2))
  {
    type metadata accessor for BiomeEventGraph();
    v43 = v51;
    sub_23C870BF4();
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v43 = v51;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E18, &qword_23C874FC0);
  return (*(*(v45 - 8) + 56))(v43, v44, 1, v45);
}

uint64_t sub_23C5AA4B0()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_23C5AA4BC(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t sub_23C5AA4EC()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_23C5AA4F8(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_23C5AA528()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_23C5AA534(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_23C5AA564()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t sub_23C5AA570(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t sub_23C5AA5B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E10, &qword_23C874FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_23C5AA648(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_23C5AA690(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

AIMLInstrumentationStreams::BiomeSELFClusterType_optional __swiftcall BiomeSELFClusterType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t BiomeSELFLogicalTimestamp.__allocating_init(timestampInNanoseconds:clockIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeSELFLogicalTimestamp_clockIdentifier;
  v9 = sub_23C870B74();
  (*(*(v9 - 8) + 32))(v7 + v8, a2, v9);
  return v7;
}

uint64_t BiomeSELFLogicalTimestamp.init(timestampInNanoseconds:clockIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeSELFLogicalTimestamp_clockIdentifier;
  v5 = sub_23C870B74();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

unint64_t sub_23C5AA840()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D20;
  v2 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  v3 = *(v0 + 16);
  *(inited + 96) = sub_23C5A3FDC(0, &qword_27E1F9E28, 0x277CCABB0);
  *(inited + 72) = v3;
  v4 = v3;
  v5 = sub_23C871CB4();
  v6 = MEMORY[0x23EED6400](v5);
  *(inited + 168) = v2;
  *(inited + 144) = v6;
  *(inited + 152) = v7;
  v8 = sub_23C598B20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_23C5AA994()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeSELFLogicalTimestamp_clockIdentifier;
  v2 = sub_23C870B74();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t BiomeSELFLogicalTimestamp.deinit()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeSELFLogicalTimestamp_clockIdentifier;
  v2 = sub_23C870B74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BiomeSELFLogicalTimestamp.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeSELFLogicalTimestamp_clockIdentifier;
  v3 = sub_23C870B74();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t BiomeSELFClusterIdentifier.__allocating_init(clusterType:uuid:)(_BYTE *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = *a1;
  v8 = OBJC_IVAR____TtC26AIMLInstrumentationStreams26BiomeSELFClusterIdentifier_uuid;
  v9 = sub_23C870B74();
  (*(*(v9 - 8) + 32))(v7 + v8, a2, v9);
  return v7;
}

uint64_t BiomeSELFClusterIdentifier.init(clusterType:uuid:)(_BYTE *a1, uint64_t a2)
{
  *(v2 + 16) = *a1;
  v4 = OBJC_IVAR____TtC26AIMLInstrumentationStreams26BiomeSELFClusterIdentifier_uuid;
  v5 = sub_23C870B74();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

unint64_t sub_23C5AAC28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D20;
  v2 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  v3 = *(v0 + 16);
  v4 = sub_23C871A34();
  *(inited + 96) = sub_23C5A3FDC(0, &qword_27E1F9E28, 0x277CCABB0);
  *(inited + 72) = v4;
  v5 = sub_23C871CB4();
  v6 = MEMORY[0x23EED6400](v5);
  *(inited + 168) = v2;
  *(inited + 144) = v6;
  *(inited + 152) = v7;
  v8 = sub_23C598B20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_23C5AAD70()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams26BiomeSELFClusterIdentifier_uuid;
  v2 = sub_23C870B74();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t BiomeSELFClusterIdentifier.deinit()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams26BiomeSELFClusterIdentifier_uuid;
  v2 = sub_23C870B74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BiomeSELFClusterIdentifier.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams26BiomeSELFClusterIdentifier_uuid;
  v2 = sub_23C870B74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t BiomeSELFComponentIdentifier.__allocating_init(uuid:componentName:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC26AIMLInstrumentationStreams28BiomeSELFComponentIdentifier_uuid;
  v9 = sub_23C870B74();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + OBJC_IVAR____TtC26AIMLInstrumentationStreams28BiomeSELFComponentIdentifier_componentName) = a2;
  return v7;
}

uint64_t BiomeSELFComponentIdentifier.init(uuid:componentName:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC26AIMLInstrumentationStreams28BiomeSELFComponentIdentifier_uuid;
  v6 = sub_23C870B74();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC26AIMLInstrumentationStreams28BiomeSELFComponentIdentifier_componentName) = a2;
  return v2;
}

uint64_t sub_23C5AAFE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C875050;
  v12[0] = 0xD000000000000018;
  v12[1] = 0x800000023C8A7360;
  v2 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  v3 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams28BiomeSELFComponentIdentifier_componentName);
  LODWORD(v12[0]) = 0;
  BYTE4(v12[0]) = 1;
  result = MEMORY[0x23EED79B0](v3, v12);
  if ((v12[0] & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_23C871B04();
    *(inited + 96) = v2;
    *(inited + 72) = v5;
    *(inited + 80) = v6;
    strcpy(v12, "componentName");
    HIWORD(v12[1]) = -4864;
    sub_23C871CB4();
    *(inited + 168) = sub_23C5A3FDC(0, &qword_27E1F9E28, 0x277CCABB0);
    *(inited + 144) = v3;
    v12[0] = 1684632949;
    v12[1] = 0xE400000000000000;
    v7 = v3;
    v8 = sub_23C871CB4();
    v9 = MEMORY[0x23EED6400](v8);
    *(inited + 240) = v2;
    *(inited + 216) = v9;
    *(inited + 224) = v10;
    v11 = sub_23C598B20(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
    swift_arrayDestroy();
    return v11;
  }

  return result;
}

void sub_23C5AB1A0()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams28BiomeSELFComponentIdentifier_uuid;
  v2 = sub_23C870B74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams28BiomeSELFComponentIdentifier_componentName);
}

uint64_t BiomeSELFComponentIdentifier.deinit()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams28BiomeSELFComponentIdentifier_uuid;
  v2 = sub_23C870B74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BiomeSELFComponentIdentifier.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams28BiomeSELFComponentIdentifier_uuid;
  v2 = sub_23C870B74();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams28BiomeSELFComponentIdentifier_componentName);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t BiomeSELFEvent.eventTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventTimestamp;
  v4 = sub_23C870AE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BiomeSELFEvent.eventData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventData);
  sub_23C5ACFC8(v1, *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventData + 8));
  return v1;
}

uint64_t sub_23C5AB474(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventDataJson);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_23C5AB4E0()
{
  v1 = (v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventDataJson);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_23C5AB538(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventDataJson);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t BiomeSELFEvent.__allocating_init(logicalTimestamp:clusterId:componentId:anyEventType:innerType:messageUuid:eventData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventDataJson);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  *(v20 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_logicalTimestamp) = a1;
  *(v20 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_clusterId) = a2;
  *(v20 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_componentId) = a3;
  *(v20 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_anyEventType) = a4;
  *(v20 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_innerType) = a5;
  v22 = OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_messageUuid;
  v23 = sub_23C870B74();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v20 + v22, a6, v23);
  (*(v24 + 56))(v20 + v22, 0, 1, v23);
  v25 = (v20 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventData);
  *v25 = a7;
  v25[1] = a8;
  sub_23C870AD4();
  (*(v24 + 8))(a6, v23);
  return v20;
}

uint64_t BiomeSELFEvent.init(logicalTimestamp:clusterId:componentId:anyEventType:innerType:messageUuid:eventData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v15 = sub_23C870AE4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v8 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventDataJson);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  *(v8 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_logicalTimestamp) = a1;
  *(v8 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_clusterId) = a2;
  *(v8 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_componentId) = a3;
  *(v8 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_anyEventType) = a4;
  *(v8 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_innerType) = a5;
  v21 = OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_messageUuid;
  v22 = sub_23C870B74();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v8 + v21, a6, v22);
  (*(v23 + 56))(v8 + v21, 0, 1, v22);
  v24 = (v8 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventData);
  v25 = v28;
  *v24 = v27;
  v24[1] = v25;
  sub_23C870AD4();
  (*(v23 + 8))(a6, v22);
  (*(v16 + 32))(v8 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventTimestamp, v19, v15);
  return v8;
}

uint64_t BiomeSELFEvent.__allocating_init(event:clusterId:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  BiomeSELFEvent.init(event:clusterId:)(a1, a2);
  return v7;
}

uint64_t BiomeSELFEvent.init(event:clusterId:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v96 = a2;
  v107 = *MEMORY[0x277D85DE8];
  v5 = sub_23C870AE4();
  v93 = *(v5 - 8);
  v6 = *(v93 + 64);
  MEMORY[0x28223BE20](v5);
  v94 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_23C8717C4();
  v90 = *(v91 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v95 = &v88 - v12;
  v13 = sub_23C870B74();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v88 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v88 - v22;
  v24 = (v2 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventDataJson);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v88 = v24;

  v25 = sub_23C870CF4();
  if (!v25)
  {
    __break(1u);
    goto LABEL_39;
  }

  v26 = v25;
  v92 = v5;
  sub_23C870DD4();

  v27 = sub_23C872134();
  v28 = sub_23C870CF4();
  if (!v28)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v29 = v28;
  sub_23C870D94();

  v30 = type metadata accessor for BiomeSELFLogicalTimestamp(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  v34 = *(v14 + 32);
  v34(v33 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeSELFLogicalTimestamp_clockIdentifier, v23, v13);
  *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_logicalTimestamp) = v33;
  *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_clusterId) = v96;

  v35 = sub_23C870D04();
  if (v35)
  {
    sub_23C870E24();

    v34(v21, v18, v13);
    v35 = sub_23C870D04();
    if (v35)
    {
      sub_23C870DF4();

      (*(v14 + 16))(v23, v21, v13);
      v36 = sub_23C8720B4();
      (*(v14 + 8))(v21, v13);
      v37 = type metadata accessor for BiomeSELFComponentIdentifier(0);
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      v35 = swift_allocObject();
      v34(&v35[OBJC_IVAR____TtC26AIMLInstrumentationStreams28BiomeSELFComponentIdentifier_uuid], v23, v13);
      *&v35[OBJC_IVAR____TtC26AIMLInstrumentationStreams28BiomeSELFComponentIdentifier_componentName] = v36;
    }

    else
    {
      (*(v14 + 8))(v21, v13);
    }
  }

  *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_componentId) = v35;
  v40 = sub_23C870CA4();
  if (!v40)
  {
    goto LABEL_40;
  }

  v41 = v40;
  [v40 getAnyEventType];

  *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_anyEventType) = sub_23C8720B4();
  v42 = sub_23C870CA4();
  if (v42 && (*&v104 = v42, sub_23C5A3FDC(0, &qword_27E1F9E48, 0x277D5AA68), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E50, &qword_23C875090), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v102 + 1))
    {
      sub_23C581A8C(&v101, &v104);
      v43 = v105;
      v44 = v106;
      __swift_project_boxed_opaque_existential_0(&v104, v105);
      (*(v44 + 8))(v43, v44);
      __swift_destroy_boxed_opaque_existential_0(&v104);
      goto LABEL_14;
    }
  }

  else
  {
    v103 = 0;
    v101 = 0u;
    v102 = 0u;
  }

  sub_23C585C34(&v101, &qword_27E1F9E30, &qword_23C875078);
LABEL_14:
  *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_innerType) = sub_23C871B84();
  v45 = v95;
  sub_23C870CC4();
  sub_23C5AD03C(v45, v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_messageUuid);
  v46 = sub_23C870CA4();
  if (!v46)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v47 = v46;
  v48 = [v46 data];

  if (!v48)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  v49 = sub_23C870A34();
  v51 = v50;

  v52 = (v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventData);
  *v52 = v49;
  v52[1] = v51;
  v53 = sub_23C870CA4();
  if (!v53)
  {
    goto LABEL_43;
  }

  v54 = v53;
  v55 = [v53 formattedJsonBody];

  if (v55)
  {
    sub_23C871784();

    v56 = v89;
    sub_23C8717B4();
    v57 = sub_23C871794();
    v59 = v58;

    (*(v90 + 8))(v56, v91);
    if (v59 >> 60 != 15)
    {
      sub_23C5ACFC8(v57, v59);
      v60 = v57;
      v61 = v59;
      goto LABEL_22;
    }
  }

  else
  {
    v57 = 0;
    v59 = 0xF000000000000000;
  }

  v60 = *v52;
  v61 = v52[1];
  sub_23C5ACFC8(*v52, v61);
LABEL_22:

  v62 = objc_opt_self();
  v63 = sub_23C870A14();
  sub_23C595090(v60, v61);
  *&v101 = 0;
  v64 = [v62 JSONObjectWithData:v63 options:1 error:&v101];

  v65 = v101;
  if (v64)
  {
    sub_23C871BA4();
    swift_unknownObjectRelease();
    sub_23C59A4B0(&v104, &v99);
    __swift_project_boxed_opaque_existential_0(&v99, v100);
    v66 = sub_23C871FF4();
    *&v104 = 0;
    v67 = [v62 dataWithJSONObject:v66 options:1 error:&v104];
    swift_unknownObjectRelease();
    v68 = v104;
    if (v67)
    {
      v69 = sub_23C870A34();
      v71 = v70;

      sub_23C5ACFC8(v69, v71);
      v72 = sub_23C5ACDAC(v69, v71);
      if (v73)
      {
        v74 = v72;
        v75 = v73;
        sub_23C595090(v69, v71);
        sub_23C595090(v69, v71);
LABEL_26:
        v76 = v93;
LABEL_36:
        __swift_destroy_boxed_opaque_existential_0(&v99);
        v83 = v88;
        swift_beginAccess();
        v84 = v83[1];
        *v83 = v74;
        v83[1] = v75;

        goto LABEL_37;
      }

      v97 = v69;
      v98 = v71;
      sub_23C5ACFC8(v69, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E38, &qword_23C875080);
      if (swift_dynamicCast())
      {
        sub_23C581A8C(&v101, &v104);
        __swift_project_boxed_opaque_existential_0(&v104, v105);
        v81 = sub_23C871EB4();
        sub_23C595090(v69, v71);
        if (v81)
        {
          __swift_project_boxed_opaque_existential_0(&v104, v105);
          sub_23C871EA4();
          sub_23C595090(v69, v71);
          v75 = *(&v101 + 1);
          v74 = v101;
          __swift_destroy_boxed_opaque_existential_0(&v104);
          goto LABEL_26;
        }

        __swift_destroy_boxed_opaque_existential_0(&v104);
      }

      else
      {
        sub_23C595090(v69, v71);
        v103 = 0;
        v101 = 0u;
        v102 = 0u;
        sub_23C585C34(&v101, &qword_27E1F9E40, &qword_23C875088);
      }

      v76 = v93;
      v74 = sub_23C5ACB88(v69, v71);
      v75 = v82;
      sub_23C595090(v69, v71);
      goto LABEL_36;
    }

    v79 = v68;
    v80 = sub_23C8709B4();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(&v99);
  }

  else
  {
    v77 = v65;
    v78 = sub_23C8709B4();

    swift_willThrow();
  }

  v76 = v93;
LABEL_37:
  v85 = v94;
  sub_23C870AD4();

  sub_23C5AD0AC(v57, v59);
  (*(v76 + 32))(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventTimestamp, v85, v92);
  v86 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_23C5AC424()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35[-v4 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C875060;
  v36[0] = 0xD000000000000010;
  v36[1] = 0x800000023C8A7380;
  v7 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  v8 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_logicalTimestamp);
  v9 = sub_23C5AA840();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E58, &qword_23C875098);
  *(inited + 96) = v10;
  *(inited + 72) = v9;
  strcpy(v36, "clusterId");
  WORD1(v36[1]) = 0;
  HIDWORD(v36[1]) = -385875968;
  sub_23C871CB4();
  v11 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_clusterId);
  v12 = sub_23C5AAC28();
  *(inited + 168) = v10;
  *(inited + 144) = v12;
  strcpy(v36, "componentId");
  HIDWORD(v36[1]) = -352321536;
  sub_23C871CB4();
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E60, &qword_23C8750A0);
  if (*(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_componentId))
  {
    v13 = sub_23C5AAFE8();
  }

  else
  {
    v13 = 0;
  }

  *(inited + 216) = v13;
  strcpy(v36, "anyEventType");
  BYTE5(v36[1]) = 0;
  HIWORD(v36[1]) = -5120;
  sub_23C871CB4();
  v14 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_anyEventType);
  LODWORD(v36[0]) = 0;
  BYTE4(v36[0]) = 1;
  result = MEMORY[0x23EED79B0](v14, v36);
  if ((v36[0] & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = sub_23C871AF4();
    *(inited + 312) = v7;
    *(inited + 288) = v16;
    *(inited + 296) = v17;
    strcpy(v36, "innerType");
    WORD1(v36[1]) = 0;
    HIDWORD(v36[1]) = -385875968;
    sub_23C871CB4();
    v18 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_innerType);
    *(inited + 384) = sub_23C5A3FDC(0, &qword_27E1F9E28, 0x277CCABB0);
    *(inited + 360) = v18;
    strcpy(v36, "messageUuid");
    HIDWORD(v36[1]) = -352321536;
    v19 = v18;
    sub_23C871CB4();
    *(inited + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E68, &qword_23C8750A8);
    sub_23C5ACF58(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_messageUuid, v5);
    v20 = sub_23C870B74();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v5, 1, v20) == 1)
    {
      sub_23C585C34(v5, &qword_27E1F92A0, &qword_23C8734E0);
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v22 = MEMORY[0x23EED6400]();
      v23 = v24;
      (*(v21 + 8))(v5, v20);
    }

    *(inited + 432) = v22;
    *(inited + 440) = v23;
    strcpy(v36, "eventData");
    WORD1(v36[1]) = 0;
    HIDWORD(v36[1]) = -385875968;
    sub_23C871CB4();
    v25 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventData);
    v26 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventData + 8);
    v27 = sub_23C870A24();
    *(inited + 528) = v7;
    *(inited + 504) = v27;
    *(inited + 512) = v28;
    strcpy(v36, "eventDataJson");
    HIWORD(v36[1]) = -4864;
    sub_23C871CB4();
    v29 = (v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventDataJson);
    swift_beginAccess();
    v31 = *v29;
    v30 = v29[1];
    *(inited + 600) = v7;
    *(inited + 576) = v31;
    *(inited + 584) = v30;
    strcpy(v35, "eventTimestamp");
    v35[15] = -18;

    sub_23C871CB4();
    sub_23C870AC4();
    *(inited + 672) = MEMORY[0x277D839F8];
    *(inited + 648) = v32;
    v33 = sub_23C598B20(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
    swift_arrayDestroy();
    return v33;
  }

  return result;
}

uint64_t sub_23C5AC938()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventTimestamp;
  v2 = sub_23C870AE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_logicalTimestamp);

  v4 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_clusterId);

  v5 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_componentId);

  sub_23C585C34(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_messageUuid, &qword_27E1F92A0, &qword_23C8734E0);
  sub_23C595090(*(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventData), *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventData + 8));
  v6 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventDataJson + 8);
}

uint64_t BiomeSELFEvent.deinit()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventTimestamp;
  v2 = sub_23C870AE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_logicalTimestamp);

  v4 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_clusterId);

  v5 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_componentId);

  sub_23C585C34(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_messageUuid, &qword_27E1F92A0, &qword_23C8734E0);
  sub_23C595090(*(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventData), *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventData + 8));
  v6 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams14BiomeSELFEvent_eventDataJson + 8);

  return v0;
}

uint64_t BiomeSELFEvent.__deallocating_deinit()
{
  BiomeSELFEvent.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23C5ACB88(uint64_t a1, unint64_t a2)
{
  sub_23C5ACFC8(a1, a2);
  v4 = *(sub_23C5ACC30(a1, a2) + 16);
  v5 = sub_23C8717F4();

  return v5;
}

uint64_t sub_23C5ACBF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23C8717F4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23C5ACC30(uint64_t a1, unint64_t a2)
{
  v4 = sub_23C870A44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_23C595090(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_23C63C7C8(v11, 0);
      v15 = sub_23C8709F4();
      sub_23C595090(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_23C5ACDAC(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_23C870974();
  if (a1)
  {
    a1 = sub_23C870994();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_23C870974() || !__OFSUB__(v5, sub_23C870994()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_23C870984();
LABEL_16:
  result = sub_23C8717F4();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C5ACF58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C5ACFC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23C5AD03C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C5AD0AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23C595090(a1, a2);
  }

  return a1;
}

unint64_t sub_23C5AD0E4()
{
  result = qword_27E1F9E70;
  if (!qword_27E1F9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9E70);
  }

  return result;
}

uint64_t sub_23C5AD220()
{
  result = sub_23C870B74();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23C5AD2E8()
{
  result = sub_23C870B74();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_23C5AD3D8()
{
  v0 = sub_23C870AE4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23C5AD588();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23C5AD588()
{
  if (!qword_27E1F9EB8)
  {
    sub_23C870B74();
    v0 = sub_23C871B74();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1F9EB8);
    }
  }
}

uint64_t StreamType.hashValue.getter()
{
  v1 = *v0;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v1);
  return sub_23C872124();
}

unint64_t sub_23C5AD66C()
{
  result = qword_27E1F9EC0;
  if (!qword_27E1F9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9EC0);
  }

  return result;
}

uint64_t sub_23C5AD718()
{
  sub_23C5ADDA0();
}

uint64_t sub_23C5AD740(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

unint64_t ComponentGroup.init(_:)(unint64_t result)
{
  v2 = v1;
  v3 = result;
  i = *v1;
  if (result >> 62)
  {
    goto LABEL_22;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EED7610](0, v3);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v6 = *(v3 + 32);
      }

      v7 = v6;
      v8 = sub_23C870D04();

      if (v8)
      {
        v16 = i;
        v17 = v2;
        for (i = 0; ; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x23EED7610](i, v3);
          }

          else
          {
            if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v9 = *(v3 + 8 * i + 32);
          }

          v10 = v9;
          v2 = (i + 1);
          if (__OFADD__(i, 1))
          {
            break;
          }

          v11 = sub_23C870D04();
          if (!v11)
          {

LABEL_19:
            i = v16;
            goto LABEL_24;
          }

          v12 = v11;
          sub_23C870E34();
          v13 = v8;
          v14 = sub_23C871B34();

          if ((v14 & 1) == 0)
          {

            goto LABEL_19;
          }

          if (v2 == v5)
          {

            result = v17;
            *(v17 + 16) = v3;
            return result;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        result = sub_23C871C34();
        v5 = result;
        if (result)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_24:
  v15 = *(i + 80);
  type metadata accessor for ComponentGroup();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t ComponentGroup.__allocating_init(unchecked:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_23C5ADA6C()
{
  v1 = *(*v0 + 80);
  type metadata accessor for ComponentGroup();
  sub_23C870E34();
  swift_getWitnessTable();
  v2 = sub_23C871844();
  v3 = v2;
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    __break(1u);
    goto LABEL_9;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_9:
    v5 = MEMORY[0x23EED7610](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
LABEL_6:
    v6 = v5;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5ADB8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_23C870D04();
  *a2 = result;
  return result;
}

uint64_t ComponentGroup.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ComponentGroup.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23C5ADC20@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_23C5ADDEC();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_23C5ADC78(uint64_t a1)
{
  v2 = *(a1 + 80);
  type metadata accessor for ComponentGroup();
  v3 = sub_23C5ADFC8();
  v4 = *v1;

  return v3;
}

void sub_23C5ADCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for ComponentGroup();

  JUMPOUT(0x23EED7140);
}

uint64_t sub_23C5ADD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for ComponentGroup();
  return sub_23C871864();
}

unint64_t sub_23C5ADE28()
{
  result = qword_27E1F9EC8;
  if (!qword_27E1F9EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1F9ED0, &qword_23C8753B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9EC8);
  }

  return result;
}

id sub_23C5ADFCC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_12:

    v11 = MEMORY[0x277D84F90];
LABEL_13:
    *&v1[OBJC_IVAR___ISComponentGroup_eventsInternal] = v11;
    v12.receiver = v1;
    v12.super_class = type metadata accessor for ComponentGroupBridge();
    return objc_msgSendSuper2(&v12, sel_init);
  }

  v3 = sub_23C871C34();
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_3:
  v13 = MEMORY[0x277D84F90];
  result = sub_23C871D84();
  if ((v3 & 0x8000000000000000) == 0)
  {
    sub_23C5AE59C();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        MEMORY[0x23EED7610]();
        sub_23C871AE4();
        sub_23C871D54();
        v7 = *(v13 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
        v5 = v6;
      }

      while (v3 != v6);
    }

    else
    {
      v8 = 32;
      do
      {
        v9 = *(a1 + v8);
        sub_23C871AE4();
        sub_23C871D54();
        v10 = *(v13 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
        v8 += 8;
        --v3;
      }

      while (v3);
    }

    v11 = v13;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id ComponentGroupBridge.__allocating_init(eventsBridge:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___ISComponentGroup_eventsInternal] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ComponentGroupBridge.init(eventsBridge:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ISComponentGroup_eventsInternal] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ComponentGroupBridge();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_23C5AE33C()
{
  v1 = *(v0 + OBJC_IVAR___ISComponentGroup_eventsInternal);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 < 0)
  {
    v8 = *(v0 + OBJC_IVAR___ISComponentGroup_eventsInternal);
  }

  if (!sub_23C871C34())
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v2 = MEMORY[0x23EED7610](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = *(v1 + 32);
LABEL_6:
  v3 = v2;
  v4 = [v2 topLevelUnionType];

  v5 = sub_23C871B14();
  if (v5)
  {
    v6 = type metadata accessor for ComponentIdentifierBridge();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR___ISComponentIdentifier_componentIdentifier] = v5;
    v9.receiver = v7;
    v9.super_class = v6;
    objc_msgSendSuper2(&v9, sel_init);
    return;
  }

LABEL_14:
  __break(1u);
}

id ComponentGroupBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ComponentGroupBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComponentGroupBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23C5AE59C()
{
  result = qword_27E1F9F60;
  if (!qword_27E1F9F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1F9F60);
  }

  return result;
}

id sub_23C5AE5EC(void *a1)
{
  v1 = a1;
  ComponentIdentifier.description.getter();

  v2 = sub_23C871774();

  return v2;
}

unint64_t ComponentIdentifier.description.getter()
{
  v0 = sub_23C870B74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_23C871D14();

  v8 = 0xD00000000000001ALL;
  v9 = 0x800000023C8A7630;
  sub_23C870DF4();
  v5 = sub_23C871B04();
  MEMORY[0x23EED7100](v5);

  MEMORY[0x23EED7100](0x203A64697575202CLL, 0xE800000000000000);
  sub_23C870E24();
  sub_23C5AE9CC(&qword_27E1FBCA0, MEMORY[0x277CC95F0]);
  v6 = sub_23C871FD4();
  MEMORY[0x23EED7100](v6);

  (*(v1 + 8))(v4, v0);
  MEMORY[0x23EED7100](41, 0xE100000000000000);
  return v8;
}

uint64_t sub_23C5AE800(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return _s19SiriInstrumentation19ComponentIdentifierC26AIMLInstrumentationStreamsE1loiySbAC_ACtFZ_0();
}

uint64_t _s19SiriInstrumentation19ComponentIdentifierC26AIMLInstrumentationStreamsE1loiySbAC_ACtFZ_0()
{
  v0 = sub_23C870B74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = sub_23C870DF4();
  if (v8 == sub_23C870DF4())
  {
    sub_23C870E24();
    sub_23C870E24();
    v9 = MEMORY[0x23EED6420](v7, v5);
    v10 = *(v1 + 8);
    v10(v5, v0);
    v10(v7, v0);
  }

  else
  {
    v11 = sub_23C870DF4();
    v9 = v11 < sub_23C870DF4();
  }

  return v9 & 1;
}

uint64_t sub_23C5AE9CC(unint64_t *a1, void (*a2)(uint64_t))
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

id ComponentIdentifierBridge.__allocating_init(componentIdentifier:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___ISComponentIdentifier_componentIdentifier] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ComponentIdentifierBridge.init(componentIdentifier:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ISComponentIdentifier_componentIdentifier] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ComponentIdentifierBridge();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ComponentIdentifierBridge.__allocating_init(name:uuid:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C870B74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v2);
  (*(v5 + 16))(v8, a2, v4);
  v10 = objc_allocWithZone(sub_23C870E34());
  *&v9[OBJC_IVAR___ISComponentIdentifier_componentIdentifier] = sub_23C870E14();
  v13.receiver = v9;
  v13.super_class = v2;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v5 + 8))(a2, v4);
  return v11;
}

id ComponentIdentifierBridge.init(name:uuid:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C870B74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v8 = objc_allocWithZone(sub_23C870E34());
  *&v2[OBJC_IVAR___ISComponentIdentifier_componentIdentifier] = sub_23C870E14();
  v9 = type metadata accessor for ComponentIdentifierBridge();
  v12.receiver = v2;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v5 + 8))(a2, v4);
  return v10;
}

id ComponentIdentifierBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ComponentIdentifierBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComponentIdentifierBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23C5AF1D8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1F9F78);
  __swift_project_value_buffer(v0, qword_27E1F9F78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23C875550;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 0;
  *v5 = "onScreen";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "conversational";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "announcement";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "notification";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "visual";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "unknownSource";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C5AF4E4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1F9F90);
  __swift_project_value_buffer(v0, qword_27E1F9F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_23C875560;
  v4 = v65 + v3;
  v5 = v65 + v3 + v1[14];
  *(v65 + v3) = 0;
  *v5 = "APP_IN_FOCUS_BUNDLE_ID";
  *(v5 + 8) = 22;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "BLUETOOTH_DEVICE_TYPE";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CALENDAR_EVENTS";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MOTION_STATE";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "NOW_PLAYING_PLAYBACK_STATE";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "POINT_OF_INTEREST";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "RECENT_TRANSCRIPT";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "SEMANTIC_LOCATION";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ON_SCREEN_CONTENT_EMAIL_ADDRESS";
  *(v22 + 8) = 31;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ON_SCREEN_CONTENT_PHONE_NUMBER";
  *(v24 + 1) = 30;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ON_SCREEN_CONTENT_POSTAL_ADDRESS";
  *(v26 + 1) = 32;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ON_SCREEN_CONTENT_URI_LINK";
  *(v28 + 1) = 26;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ON_SCREEN_PERSON";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ON_SCREEN_HOME";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ON_SCREEN_NOTIFICATION";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ON_SCREEN_DATE_TIME";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "CONVERSATIONAL_REMINDER";
  *(v37 + 8) = 23;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "CONVERSATIONAL_CALENDAR_EVENT";
  *(v39 + 1) = 29;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "CONVERSATIONAL_PEOPLE";
  *(v41 + 1) = 21;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "CONVERSATIONAL_PLACES";
  *(v43 + 1) = 21;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "CONVERSATIONAL_ALARM";
  *(v45 + 1) = 20;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "CONVERSATIONAL_TIMER";
  *(v47 + 1) = 20;
  v47[16] = 2;
  v8();
  v48 = (v4 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "NOW_PLAYING_MEDIA_ITEM";
  *(v49 + 1) = 22;
  v49[16] = 2;
  v8();
  v50 = (v4 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "ON_SCREEN_CONTENT_APP_ENTITY";
  *(v51 + 1) = 28;
  v51[16] = 2;
  v8();
  v52 = (v4 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "SIRI_REQUEST_CONTEXT";
  *(v53 + 1) = 20;
  v53[16] = 2;
  v8();
  v54 = (v4 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "CURRENT_LOCATION";
  *(v55 + 1) = 16;
  v55[16] = 2;
  v8();
  v56 = (v4 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "INTELLIGENCE_COMMAND";
  *(v57 + 1) = 20;
  v57[16] = 2;
  v8();
  v58 = (v4 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "HAS_FOCUSED_ON_SCREEN_DOCUMENT";
  *(v59 + 1) = 30;
  v59[16] = 2;
  v8();
  v60 = (v4 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "HAS_FOCUSED_ON_SCREEN_IMAGE";
  *(v61 + 1) = 27;
  v61[16] = 2;
  v8();
  v62 = (v4 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "ON_SCREEN_UI_TEXT";
  *(v63 + 1) = 17;
  v63[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C5AFD88()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1F9FA8);
  __swift_project_value_buffer(v0, qword_27E1F9FA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Unsure1";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UnsureN";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Known";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "Confident";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C5B0064()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1F9FC0);
  __swift_project_value_buffer(v0, qword_27E1F9FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23C875580;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 0;
  *v5 = "DeviceIdiomUnknown";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "CarPlay";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "EyesFree";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "HomePod";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "Mac";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "AirPods";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "IPhone";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "IPad";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "Watch";
  *(v22 + 8) = 5;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TV";
  *(v24 + 1) = 2;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "Vision";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ELEVEN";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C5B04D4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1F9FD8);
  __swift_project_value_buffer(v0, qword_27E1F9FD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LOW";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MEDIUM";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "HIGH";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C5B0730()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1F9FF0);
  __swift_project_value_buffer(v0, qword_27E1F9FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "spanMatching";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "contextRetrieval";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "toolRetrieval";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "toolContextRetrieval";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "jointResolver";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "screenContentRetrieval";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C5B0A44()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA008);
  __swift_project_value_buffer(v0, qword_27E1FA008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unset";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "prePlanner";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "fullPlanner";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C5B0CA0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA020);
  __swift_project_value_buffer(v0, qword_27E1FA020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "siriEntityMatcher";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "globalEntityMatcher";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C5B0EFC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA038);
  __swift_project_value_buffer(v0, qword_27E1FA038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875590;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "homeEntity";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "synonym";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "transliteration";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "expandedEmoji";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "contactRelationship";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "contactHypocorism";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "contactHandle";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C5B1268()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA050);
  __swift_project_value_buffer(v0, qword_27E1FA050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23C875590;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "value";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "relevance";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "metadata";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "typedValue";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "structuredContext";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "identifier";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t ContextProtoRetrievedContext.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_23C5B171C();
            break;
          case 2:
            sub_23C5B17D0();
            break;
          case 3:
            sub_23C5CF53C();
            sub_23C8710A4();
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          sub_23C5B19EC();
        }

        else if (result == 7)
        {
          v3 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 40);
          sub_23C871154();
        }
      }

      else if (result == 4)
      {
        sub_23C5B1884();
      }

      else
      {
        sub_23C5B1938();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C5B171C()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C5EDAB0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t sub_23C5B17D0()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 24);
  type metadata accessor for ContextProtoConfidence(0);
  sub_23C5EDAB0(&qword_27E1FA6C8, type metadata accessor for ContextProtoConfidence);
  return sub_23C8711A4();
}

uint64_t sub_23C5B1884()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 28);
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_23C5EDAB0(&qword_27E1FA670, type metadata accessor for ContextProtoContextMetadata);
  return sub_23C8711A4();
}

uint64_t sub_23C5B1938()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 32);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C5EDAB0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t sub_23C5B19EC()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 36);
  type metadata accessor for ContextProtoStructuredContext(0);
  sub_23C5EDAB0(&qword_27E1FA6E0, type metadata accessor for ContextProtoStructuredContext);
  return sub_23C8711A4();
}

uint64_t ContextProtoRetrievedContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C5B1BF4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C5B1E10(v3, a1, a2, a3);
    if (*v3)
    {
      v10 = *v3;
      sub_23C5CF53C();
      sub_23C871254();
    }

    sub_23C5B202C(v3, a1, a2, a3);
    sub_23C5B2248(v3, a1, a2, a3);
    sub_23C5B2464(v3, a1, a2, a3);
    sub_23C5B3DDC(v3, a1, a2, a3, type metadata accessor for ContextProtoRetrievedContext);
    v9 = &v3[*(type metadata accessor for ContextProtoRetrievedContext(0) + 44)];
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5B1BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDAB0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C5B1E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADD8, &qword_23C8790C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoConfidence(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FADD8, &qword_23C8790C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FADD8, &qword_23C8790C8);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoConfidence);
  sub_23C5EDAB0(&qword_27E1FA6C8, type metadata accessor for ContextProtoConfidence);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoConfidence);
}

uint64_t sub_23C5B202C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAE00, &unk_23C879150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoContextMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E1FAE00, &unk_23C879150);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAE00, &unk_23C879150);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoContextMetadata);
  sub_23C5EDAB0(&qword_27E1FA670, type metadata accessor for ContextProtoContextMetadata);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoContextMetadata);
}

uint64_t sub_23C5B2248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_23C5855B0(a1 + *(v14 + 32), v8, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDAB0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C5B2464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADF0, &qword_23C8790D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_23C5855B0(a1 + *(v14 + 36), v8, &qword_27E1FADF0, &qword_23C8790D8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FADF0, &qword_23C8790D8);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoStructuredContext);
  sub_23C5EDAB0(&qword_27E1FA6E0, type metadata accessor for ContextProtoStructuredContext);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoStructuredContext);
}

uint64_t sub_23C5B26CC@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  v7 = a1[6];
  v8 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = a1[7];
  v10 = type metadata accessor for ContextProtoContextMetadata(0);
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  v6(&a2[a1[8]], 1, 1, v5);
  v11 = a1[9];
  v12 = type metadata accessor for ContextProtoStructuredContext(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = a1[11];
  v14 = &a2[a1[10]];
  *v14 = 0;
  v14[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t (*sub_23C5B2868(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_23C5B28BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAAC8, type metadata accessor for ContextProtoRetrievedContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5B295C()
{
  sub_23C5EDAB0(&qword_27E1FA4F0, type metadata accessor for ContextProtoRetrievedContext);

  return sub_23C8711F4();
}

uint64_t sub_23C5B29C8()
{
  sub_23C5EDAB0(&qword_27E1FA4F0, type metadata accessor for ContextProtoRetrievedContext);

  return sub_23C871204();
}

uint64_t sub_23C5B2A64()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA068);
  __swift_project_value_buffer(v0, qword_27E1FA068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_23C8755A0;
  v4 = v37 + v3;
  v5 = v37 + v3 + v1[14];
  *(v37 + v3) = 1;
  *v5 = "entity_id";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v37 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "app_bundle_id";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v37 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "saliency";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21870];
  v8();
  v13 = (v37 + v3 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "on_screen_surrounding_text";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v8();
  v15 = (v37 + v3 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "on_screen_bounding_box";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v8();
  v17 = (v37 + v3 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "seq";
  *(v18 + 1) = 3;
  v18[16] = 2;
  v8();
  v19 = (v37 + v3 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "group_id";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v8();
  v21 = (v37 + v3 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "isSelected";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v8();
  v23 = v37 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "isPrimary";
  *(v23 + 8) = 9;
  *(v23 + 16) = 2;
  v8();
  v24 = (v37 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "screenDimensions";
  *(v25 + 1) = 16;
  v25[16] = 2;
  v8();
  v26 = (v37 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "dataSource";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v8();
  v28 = (v37 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "displayRepresentation";
  *(v29 + 1) = 21;
  v29[16] = 2;
  v8();
  v30 = (v37 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "appBundleIdentifier";
  *(v31 + 1) = 19;
  v31[16] = 2;
  v8();
  v32 = (v37 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "screenSize";
  *(v33 + 1) = 10;
  v33[16] = 2;
  v8();
  v34 = (v37 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "frame";
  *(v35 + 1) = 5;
  v35[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ContextProtoContextMetadata.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
          goto LABEL_4;
        case 3:
          sub_23C5B3214();
          break;
        case 4:
          type metadata accessor for ContextProtoSurroundingText(0);
          sub_23C5EDAB0(&qword_27E1FA418, type metadata accessor for ContextProtoSurroundingText);
          sub_23C871194();
          break;
        case 5:
          sub_23C5B32C8();
          break;
        case 6:
          v7 = *(type metadata accessor for ContextProtoContextMetadata(0) + 36);
          sub_23C871134();
          break;
        case 7:
          v3 = v0;
          v8 = *(type metadata accessor for ContextProtoContextMetadata(0) + 40);
          goto LABEL_19;
        case 8:
          v5 = v0;
          v6 = *(type metadata accessor for ContextProtoContextMetadata(0) + 44);
          goto LABEL_22;
        case 9:
          v5 = v0;
          v9 = *(type metadata accessor for ContextProtoContextMetadata(0) + 48);
LABEL_22:
          v0 = v5;
          sub_23C871074();
          break;
        case 10:
          sub_23C5B337C();
          break;
        case 11:
          sub_23C5B3430();
          break;
        case 12:
          sub_23C5B34A4();
          break;
        case 13:
          v3 = v0;
          v4 = *(type metadata accessor for ContextProtoContextMetadata(0) + 64);
LABEL_19:
          v0 = v3;
LABEL_4:
          sub_23C871154();
          break;
        case 14:
          sub_23C5B3558();
          break;
        case 15:
          sub_23C5B360C();
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C5B3214()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 28);
  type metadata accessor for ContextProtoConfidence(0);
  sub_23C5EDAB0(&qword_27E1FA6C8, type metadata accessor for ContextProtoConfidence);
  return sub_23C8711A4();
}

uint64_t sub_23C5B32C8()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 32);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_23C5EDAB0(&qword_27E1FA6A0, type metadata accessor for ContextProtoBoundingBox);
  return sub_23C8711A4();
}

uint64_t sub_23C5B337C()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 52);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_23C5EDAB0(&qword_27E1FA6A0, type metadata accessor for ContextProtoBoundingBox);
  return sub_23C8711A4();
}

uint64_t sub_23C5B3430()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 56);
  sub_23C5EDC70();
  return sub_23C871094();
}

uint64_t sub_23C5B34A4()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 60);
  type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  sub_23C5EDAB0(&qword_27E1FA688, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C5B3558()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 68);
  type metadata accessor for ContextProtoCGRect(0);
  sub_23C5EDAB0(&qword_27E1FA7F8, type metadata accessor for ContextProtoCGRect);
  return sub_23C8711A4();
}

uint64_t sub_23C5B360C()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 72);
  type metadata accessor for ContextProtoCGRect(0);
  sub_23C5EDAB0(&qword_27E1FA7F8, type metadata accessor for ContextProtoCGRect);
  return sub_23C8711A4();
}

uint64_t ContextProtoContextMetadata.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[2])
  {
    v8 = v3[1];
    result = sub_23C8712C4();
  }

  if (!v4)
  {
    if (v3[4])
    {
      v9 = v3[3];
      sub_23C8712C4();
    }

    sub_23C5B392C(v3, v7, a2, a3);
    if (*(*v3 + 16))
    {
      type metadata accessor for ContextProtoSurroundingText(0);
      sub_23C5EDAB0(&qword_27E1FA418, type metadata accessor for ContextProtoSurroundingText);
      sub_23C8712F4();
    }

    sub_23C5B3B48(v3, v7, a2, a3);
    sub_23C5B3D64(v3);
    sub_23C5B3DDC(v3, v7, a2, a3, type metadata accessor for ContextProtoContextMetadata);
    sub_23C5B3E58(v3);
    sub_23C5B3ED0(v3);
    sub_23C5B3F48(v3, v7, a2, a3);
    sub_23C5B4164(v3);
    sub_23C5B41F0(v3, v7, a2, a3);
    sub_23C5B440C(v3);
    sub_23C5B4484(v3, v7, a2, a3);
    sub_23C5B46A0(v3, v7, a2, a3);
    v10 = v3 + *(type metadata accessor for ContextProtoContextMetadata(0) + 76);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5B392C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADD8, &qword_23C8790C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoConfidence(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E1FADD8, &qword_23C8790C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FADD8, &qword_23C8790C8);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoConfidence);
  sub_23C5EDAB0(&qword_27E1FA6C8, type metadata accessor for ContextProtoConfidence);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoConfidence);
}

uint64_t sub_23C5B3B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADB8, &unk_23C879160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoBoundingBox(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_23C5855B0(a1 + *(v14 + 32), v8, &qword_27E1FADB8, &unk_23C879160);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FADB8, &unk_23C879160);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoBoundingBox);
  sub_23C5EDAB0(&qword_27E1FA6A0, type metadata accessor for ContextProtoBoundingBox);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_23C5B3D64(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C8712B4();
  }

  return result;
}

uint64_t sub_23C5B3DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if (v7[1])
  {
    v8 = *v7;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C5B3E58(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_23C871244();
  }

  return result;
}

uint64_t sub_23C5B3ED0(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return sub_23C871244();
  }

  return result;
}

uint64_t sub_23C5B3F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADB8, &unk_23C879160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoBoundingBox(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_23C5855B0(a1 + *(v14 + 52), v8, &qword_27E1FADB8, &unk_23C879160);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FADB8, &unk_23C879160);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoBoundingBox);
  sub_23C5EDAB0(&qword_27E1FA6A0, type metadata accessor for ContextProtoBoundingBox);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_23C5B4164(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 56)) != 6)
  {
    v3 = *(a1 + *(result + 56));
    sub_23C5EDC70();
    return sub_23C871254();
  }

  return result;
}

uint64_t sub_23C5B41F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADC8, &qword_23C8790B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_23C5855B0(a1 + *(v14 + 60), v8, &qword_27E1FADC8, &qword_23C8790B8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FADC8, &qword_23C8790B8);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_23C5EDAB0(&qword_27E1FA688, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
}

uint64_t sub_23C5B440C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v3 = (a1 + *(result + 64));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C5B4484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD18, &unk_23C879170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoCGRect(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_23C5855B0(a1 + *(v14 + 68), v8, &qword_27E1FAD18, &unk_23C879170);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAD18, &unk_23C879170);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoCGRect);
  sub_23C5EDAB0(&qword_27E1FA7F8, type metadata accessor for ContextProtoCGRect);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_23C5B46A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD18, &unk_23C879170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoCGRect(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_23C5855B0(a1 + *(v14 + 72), v8, &qword_27E1FAD18, &unk_23C879170);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAD18, &unk_23C879170);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoCGRect);
  sub_23C5EDAB0(&qword_27E1FA7F8, type metadata accessor for ContextProtoCGRect);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_23C5B4908(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_23C8720F4();
  a1(0);
  sub_23C5EDAB0(a2, a3);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C5B49B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5B4A24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 76);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_23C5B4A98(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 76);
  return result;
}

uint64_t sub_23C5B4AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAAC0, type metadata accessor for ContextProtoContextMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5B4B8C()
{
  sub_23C5EDAB0(&qword_27E1FA670, type metadata accessor for ContextProtoContextMetadata);

  return sub_23C8711F4();
}

uint64_t sub_23C5B4BF8()
{
  sub_23C5EDAB0(&qword_27E1FA670, type metadata accessor for ContextProtoContextMetadata);

  return sub_23C871204();
}

uint64_t sub_23C5B4C94()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA080);
  __swift_project_value_buffer(v0, qword_27E1FA080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_23C871154();
    }
  }

  return result;
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.traverse<A>(visitor:)()
{
  if (v0[1])
  {
    v2 = *v0;
    result = sub_23C8712C4();
  }

  if (!v1)
  {
    if (v0[3])
    {
      v4 = v0[2];
      sub_23C8712C4();
    }

    v5 = v0 + *(type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5B4FF8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  v2 = a2 + *(a1 + 24);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t (*sub_23C5B503C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_23C5B5090(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAAB8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5B5130()
{
  sub_23C5EDAB0(&qword_27E1FA688, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);

  return sub_23C8711F4();
}

uint64_t sub_23C5B519C()
{
  sub_23C5EDAB0(&qword_27E1FA688, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);

  return sub_23C871204();
}

uint64_t sub_23C5B5238()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA098);
  __swift_project_value_buffer(v0, qword_27E1FA098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "x_coordinate";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y_coordinate";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21870];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "height";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoBoundingBox.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_23C8710C4();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ContextProtoBoundingBox.traverse<A>(visitor:)()
{
  if ((v0[1] & 1) == 0)
  {
    v2 = *v0;
    result = sub_23C871274();
  }

  if (!v1)
  {
    if ((v0[3] & 1) == 0)
    {
      v4 = v0[2];
      sub_23C871274();
    }

    if ((v0[5] & 1) == 0)
    {
      v5 = v0[4];
      sub_23C871274();
    }

    if ((v0[7] & 1) == 0)
    {
      v6 = v0[6];
      sub_23C871274();
    }

    v7 = v0 + *(type metadata accessor for ContextProtoBoundingBox(0) + 32);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5B56A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 1;
  *(a2 + 8) = 0;
  *(a2 + 12) = 1;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  *(a2 + 24) = 0;
  *(a2 + 28) = 1;
  v2 = a2 + *(a1 + 32);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t (*sub_23C5B5700(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_23C5B5754(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAAB0, type metadata accessor for ContextProtoBoundingBox);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5B57F4()
{
  sub_23C5EDAB0(&qword_27E1FA6A0, type metadata accessor for ContextProtoBoundingBox);

  return sub_23C8711F4();
}

uint64_t sub_23C5B5860()
{
  sub_23C5EDAB0(&qword_27E1FA6A0, type metadata accessor for ContextProtoBoundingBox);

  return sub_23C871204();
}

uint64_t sub_23C5B58FC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA0B0);
  __swift_project_value_buffer(v0, qword_27E1FA0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "on_screen_bounding_box";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoSurroundingText.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_23C871154();
    }

    else if (result == 2)
    {
      sub_23C5B5B80();
    }
  }

  return result;
}

uint64_t sub_23C5B5B80()
{
  v0 = *(type metadata accessor for ContextProtoSurroundingText(0) + 20);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_23C5EDAB0(&qword_27E1FA6A0, type metadata accessor for ContextProtoBoundingBox);
  return sub_23C8711A4();
}

uint64_t ContextProtoSurroundingText.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[1])
  {
    v8 = *v3;
    result = sub_23C8712C4();
  }

  if (!v4)
  {
    sub_23C5B5CD4(v3, v7, a2, a3);
    v9 = v3 + *(type metadata accessor for ContextProtoSurroundingText(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5B5CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADB8, &unk_23C879160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoBoundingBox(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoSurroundingText(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FADB8, &unk_23C879160);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FADB8, &unk_23C879160);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoBoundingBox);
  sub_23C5EDAB0(&qword_27E1FA6A0, type metadata accessor for ContextProtoBoundingBox);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_23C5B5F3C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ContextProtoBoundingBox(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5B6008(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAAA8, type metadata accessor for ContextProtoSurroundingText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5B60A8()
{
  sub_23C5EDAB0(&qword_27E1FA418, type metadata accessor for ContextProtoSurroundingText);

  return sub_23C8711F4();
}

uint64_t sub_23C5B6114()
{
  sub_23C5EDAB0(&qword_27E1FA418, type metadata accessor for ContextProtoSurroundingText);

  return sub_23C871204();
}

uint64_t sub_23C5B61B0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA0C8);
  __swift_project_value_buffer(v0, qword_27E1FA0C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "score";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bucket";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoConfidence.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C8710D4();
      }

      else if (result == 2)
      {
        sub_23C5EA6E4();
        sub_23C8710A4();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ContextProtoConfidence.traverse<A>(visitor:)()
{
  if (*v0 == 0.0 || (result = sub_23C871274(), !v1))
  {
    if (!*(v0 + 4) || (v4 = *(v0 + 4), sub_23C5EA6E4(), result = sub_23C871254(), !v1))
    {
      v3 = v0 + *(type metadata accessor for ContextProtoConfidence(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t static ContextProtoConfidence.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(type metadata accessor for ContextProtoConfidence(0) + 24);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C5B662C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_23C5B66AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAAA0, type metadata accessor for ContextProtoConfidence);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5B674C()
{
  sub_23C5EDAB0(&qword_27E1FA6C8, type metadata accessor for ContextProtoConfidence);

  return sub_23C8711F4();
}

uint64_t sub_23C5B67B8()
{
  sub_23C5EDAB0(&qword_27E1FA6C8, type metadata accessor for ContextProtoConfidence);

  return sub_23C871204();
}

uint64_t sub_23C5B6834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v3 = *(a3 + 24);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C5B6900()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA0E0);
  __swift_project_value_buffer(v0, qword_27E1FA0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siriRequestContext";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "intelligenceCommand";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "appInFocusContext";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "onScreenUIText";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "appContext";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoStructuredContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_23C5B6CC0(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        sub_23C5B7270(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_23C5B782C(v5, a1, a2, a3);
          break;
        case 4:
          sub_23C5B7DE8(v5, a1, a2, a3);
          break;
        case 5:
          sub_23C5B83A4(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C5B6CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA458, &qword_23C8755D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD90, &qword_23C879088);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FA458, &qword_23C8755D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FA458, &qword_23C8755D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C5EDD24(v14, v22, type metadata accessor for ContextProtoStructuredContextKind);
    sub_23C5EDD24(v22, v20, type metadata accessor for ContextProtoStructuredContextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C5EDCC4(v20, type metadata accessor for ContextProtoStructuredContextKind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FAD90, &qword_23C879088);
      v35 = v43;
      sub_23C5EDD24(v20, v43, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
      sub_23C5EDD24(v35, v28, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C5EDAB0(&qword_27E1FA6F8, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAD90, &qword_23C879088);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAD90, &qword_23C879088);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAD90, &qword_23C879088);
    return sub_23C585C34(v36, &qword_27E1FAD90, &qword_23C879088);
  }

  else
  {
    v39 = v44;
    sub_23C5EDD24(v36, v44, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAD90, &qword_23C879088);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FA458, &qword_23C8755D0);
    sub_23C5EDD24(v39, v40, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C5B7270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA458, &qword_23C8755D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD98, &qword_23C879090);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FA458, &qword_23C8755D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FA458, &qword_23C8755D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C5EDD24(v14, v22, type metadata accessor for ContextProtoStructuredContextKind);
    sub_23C5EDD24(v22, v20, type metadata accessor for ContextProtoStructuredContextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FAD98, &qword_23C879090);
      v35 = v44;
      sub_23C5EDD24(v20, v44, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
      sub_23C5EDD24(v35, v28, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C5EDCC4(v20, type metadata accessor for ContextProtoStructuredContextKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C5EDAB0(&qword_27E1FA768, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAD98, &qword_23C879090);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAD98, &qword_23C879090);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAD98, &qword_23C879090);
    return sub_23C585C34(v36, &qword_27E1FAD98, &qword_23C879090);
  }

  else
  {
    v39 = v43;
    sub_23C5EDD24(v36, v43, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAD98, &qword_23C879090);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FA458, &qword_23C8755D0);
    sub_23C5EDD24(v39, v40, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C5B782C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA458, &qword_23C8755D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADA0, &qword_23C879098);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FA458, &qword_23C8755D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FA458, &qword_23C8755D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C5EDD24(v14, v22, type metadata accessor for ContextProtoStructuredContextKind);
    sub_23C5EDD24(v22, v20, type metadata accessor for ContextProtoStructuredContextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E1FADA0, &qword_23C879098);
      v35 = v44;
      sub_23C5EDD24(v20, v44, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
      sub_23C5EDD24(v35, v28, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C5EDCC4(v20, type metadata accessor for ContextProtoStructuredContextKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C5EDAB0(&qword_27E1FA780, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FADA0, &qword_23C879098);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FADA0, &qword_23C879098);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FADA0, &qword_23C879098);
    return sub_23C585C34(v36, &qword_27E1FADA0, &qword_23C879098);
  }

  else
  {
    v39 = v43;
    sub_23C5EDD24(v36, v43, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FADA0, &qword_23C879098);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FA458, &qword_23C8755D0);
    sub_23C5EDD24(v39, v40, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C5B7DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA458, &qword_23C8755D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADA8, &qword_23C8790A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FA458, &qword_23C8755D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FA458, &qword_23C8755D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C5EDD24(v14, v22, type metadata accessor for ContextProtoStructuredContextKind);
    sub_23C5EDD24(v22, v20, type metadata accessor for ContextProtoStructuredContextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E1FADA8, &qword_23C8790A0);
      v35 = v44;
      sub_23C5EDD24(v20, v44, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
      sub_23C5EDD24(v35, v28, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C5EDCC4(v20, type metadata accessor for ContextProtoStructuredContextKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C5EDAB0(&qword_27E1FA7B0, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FADA8, &qword_23C8790A0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FADA8, &qword_23C8790A0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FADA8, &qword_23C8790A0);
    return sub_23C585C34(v36, &qword_27E1FADA8, &qword_23C8790A0);
  }

  else
  {
    v39 = v43;
    sub_23C5EDD24(v36, v43, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FADA8, &qword_23C8790A0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FA458, &qword_23C8755D0);
    sub_23C5EDD24(v39, v40, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C5B83A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ContextProtoStructedContextAppContext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA458, &qword_23C8755D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADB0, &qword_23C8790A8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FA458, &qword_23C8755D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FA458, &qword_23C8755D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C5EDD24(v14, v22, type metadata accessor for ContextProtoStructuredContextKind);
    sub_23C5EDD24(v22, v20, type metadata accessor for ContextProtoStructuredContextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E1FADB0, &qword_23C8790A8);
      v35 = v44;
      sub_23C5EDD24(v20, v44, type metadata accessor for ContextProtoStructedContextAppContext);
      sub_23C5EDD24(v35, v28, type metadata accessor for ContextProtoStructedContextAppContext);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C5EDCC4(v20, type metadata accessor for ContextProtoStructuredContextKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C5EDAB0(&qword_27E1FA798, type metadata accessor for ContextProtoStructedContextAppContext);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FADB0, &qword_23C8790A8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FADB0, &qword_23C8790A8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FADB0, &qword_23C8790A8);
    return sub_23C585C34(v36, &qword_27E1FADB0, &qword_23C8790A8);
  }

  else
  {
    v39 = v43;
    sub_23C5EDD24(v36, v43, type metadata accessor for ContextProtoStructedContextAppContext);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FADB0, &qword_23C8790A8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FA458, &qword_23C8755D0);
    sub_23C5EDD24(v39, v40, type metadata accessor for ContextProtoStructedContextAppContext);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ContextProtoStructuredContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA458, &qword_23C8755D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E1FA458, &qword_23C8755D0);
  v12 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23C5B8D8C(v3, a1, a2, a3);
    }

    else
    {
      sub_23C5B8B58(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_23C5B8FC4(v3, a1, a2, a3);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_23C5B91FC(v3, a1, a2, a3);
  }

  else
  {
    sub_23C5B9434(v3, a1, a2, a3);
  }

  result = sub_23C5EDCC4(v11, type metadata accessor for ContextProtoStructuredContextKind);
  if (!v4)
  {
LABEL_12:
    v15 = v3 + *(type metadata accessor for ContextProtoStructuredContext(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5B8B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA458, &qword_23C8755D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FA458, &qword_23C8755D0);
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FA458, &qword_23C8755D0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C5EDD24(v8, v12, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
    sub_23C5EDAB0(&qword_27E1FA6F8, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
    sub_23C871304();
    return sub_23C5EDCC4(v12, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  }

  result = sub_23C5EDCC4(v8, type metadata accessor for ContextProtoStructuredContextKind);
  __break(1u);
  return result;
}

uint64_t sub_23C5B8D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA458, &qword_23C8755D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FA458, &qword_23C8755D0);
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FA458, &qword_23C8755D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C5EDD24(v8, v12, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
    sub_23C5EDAB0(&qword_27E1FA768, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
    sub_23C871304();
    return sub_23C5EDCC4(v12, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
  }

  result = sub_23C5EDCC4(v8, type metadata accessor for ContextProtoStructuredContextKind);
  __break(1u);
  return result;
}

uint64_t sub_23C5B8FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA458, &qword_23C8755D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FA458, &qword_23C8755D0);
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FA458, &qword_23C8755D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C5EDD24(v8, v12, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
    sub_23C5EDAB0(&qword_27E1FA780, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
    sub_23C871304();
    return sub_23C5EDCC4(v12, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
  }

  result = sub_23C5EDCC4(v8, type metadata accessor for ContextProtoStructuredContextKind);
  __break(1u);
  return result;
}

uint64_t sub_23C5B91FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA458, &qword_23C8755D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FA458, &qword_23C8755D0);
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FA458, &qword_23C8755D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C5EDD24(v8, v12, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
    sub_23C5EDAB0(&qword_27E1FA7B0, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
    sub_23C871304();
    return sub_23C5EDCC4(v12, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
  }

  result = sub_23C5EDCC4(v8, type metadata accessor for ContextProtoStructuredContextKind);
  __break(1u);
  return result;
}

uint64_t sub_23C5B9434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA458, &qword_23C8755D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoStructedContextAppContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FA458, &qword_23C8755D0);
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FA458, &qword_23C8755D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C5EDD24(v8, v12, type metadata accessor for ContextProtoStructedContextAppContext);
    sub_23C5EDAB0(&qword_27E1FA798, type metadata accessor for ContextProtoStructedContextAppContext);
    sub_23C871304();
    return sub_23C5EDCC4(v12, type metadata accessor for ContextProtoStructedContextAppContext);
  }

  result = sub_23C5EDCC4(v8, type metadata accessor for ContextProtoStructuredContextKind);
  __break(1u);
  return result;
}

uint64_t (*sub_23C5B96EC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_23C5B9740(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA98, type metadata accessor for ContextProtoStructuredContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5B97E0()
{
  sub_23C5EDAB0(&qword_27E1FA6E0, type metadata accessor for ContextProtoStructuredContext);

  return sub_23C8711F4();
}

uint64_t sub_23C5B984C()
{
  sub_23C5EDAB0(&qword_27E1FA6E0, type metadata accessor for ContextProtoStructuredContext);

  return sub_23C871204();
}

uint64_t sub_23C5B98E8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA0F8);
  __swift_project_value_buffer(v0, qword_27E1FA0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_23C8755B0;
  v4 = v51 + v3;
  v5 = v51 + v3 + v1[14];
  *(v51 + v3) = 1;
  *v5 = "sessionID";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v51 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "requestID";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v51 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "inputOrigin";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v51 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "responseMode";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v51 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "isEyesFree";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v51 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "isMultiUser";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v51 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isVoiceTriggerEnabled";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v51 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "isTextToSpeechEnabled";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = v51 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "isTriggerlessFollowup";
  *(v22 + 8) = 21;
  *(v22 + 16) = 2;
  v8();
  v23 = (v51 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "deviceRestrictions";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v8();
  v25 = (v51 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "bargeInModes";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v8();
  v27 = (v51 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "identifiedUser";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v51 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "encodedLocation";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v51 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "countryCode";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v8();
  v33 = (v51 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "siriLocale";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v51 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "contentRestrictions";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v8();
  v37 = v51 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "uiScale";
  *(v37 + 8) = 7;
  *(v37 + 16) = 2;
  v8();
  v38 = (v51 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "temperatureUnit";
  *(v39 + 1) = 15;
  v39[16] = 2;
  v8();
  v40 = (v51 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "allowUserGeneratedContent";
  *(v41 + 1) = 25;
  v41[16] = 2;
  v8();
  v42 = (v51 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "censorSpeech";
  *(v43 + 1) = 12;
  v43[16] = 2;
  v8();
  v44 = (v51 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "meCard";
  *(v45 + 1) = 6;
  v45[16] = 2;
  v8();
  v46 = (v51 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "deviceIdiom";
  *(v47 + 1) = 11;
  v47[16] = 2;
  v8();
  v48 = (v51 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "didPSCFire";
  *(v49 + 1) = 10;
  v49[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        goto LABEL_18;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        goto LABEL_4;
      case 10:
      case 11:
        sub_23C871124();
        continue;
      case 12:
        sub_23C5BA23C();
        continue;
      case 13:
        v6 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 64);
        sub_23C8710B4();
        continue;
      case 14:
        v8 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 68);
        goto LABEL_17;
      case 15:
        v5 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 72);
        goto LABEL_17;
      case 16:
        sub_23C5BA2F0();
        continue;
      case 17:
        v4 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 80);
        sub_23C871134();
        continue;
      case 18:
        v7 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 84);
LABEL_17:
        v0 = 0;
LABEL_18:
        sub_23C871154();
        continue;
      case 19:
        v1 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 88);
        goto LABEL_3;
      case 20:
        v10 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 92);
        goto LABEL_3;
      case 21:
        sub_23C5BA3A4();
        continue;
      case 22:
        sub_23C5BA458();
        continue;
      case 23:
        v9 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 104);
LABEL_3:
        v0 = 0;
LABEL_4:
        sub_23C871074();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_23C5BA23C()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 60);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  sub_23C5EDAB0(&qword_27E1FA728, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  return sub_23C8711A4();
}

uint64_t sub_23C5BA2F0()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 76);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  sub_23C5EDAB0(&qword_27E1FA710, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  return sub_23C8711A4();
}

uint64_t sub_23C5BA3A4()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 96);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  sub_23C5EDAB0(&qword_27E1FA740, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
  return sub_23C8711A4();
}

uint64_t sub_23C5BA458()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 100);
  sub_23C5EDBB4();
  return sub_23C871094();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (*(v3 + 24))
  {
    v8 = *(v3 + 16);
    result = sub_23C8712C4();
  }

  if (!v4)
  {
    if (*(v3 + 40))
    {
      v9 = *(v3 + 32);
      sub_23C8712C4();
    }

    if (*(v3 + 56))
    {
      v10 = *(v3 + 48);
      sub_23C8712C4();
    }

    if (*(v3 + 72))
    {
      v11 = *(v3 + 64);
      sub_23C8712C4();
    }

    if (*(v3 + 80) != 2)
    {
      sub_23C871244();
    }

    if (*(v3 + 81) != 2)
    {
      sub_23C871244();
    }

    if (*(v3 + 82) != 2)
    {
      sub_23C871244();
    }

    if (*(v3 + 83) != 2)
    {
      sub_23C871244();
    }

    if (*(v3 + 84) != 2)
    {
      sub_23C871244();
    }

    if (*(*v3 + 16))
    {
      sub_23C8712A4();
    }

    if (*(*(v3 + 8) + 16))
    {
      sub_23C8712A4();
    }

    sub_23C5BA7FC(v3, v7, a2, a3);
    sub_23C5BAA18(v3);
    sub_23C5BAAB8(v3);
    sub_23C5BAB30(v3);
    sub_23C5BABA8(v3, v7, a2, a3);
    sub_23C5BADC4(v3);
    sub_23C5BAE3C(v3);
    sub_23C5BAEB4(v3);
    sub_23C5BAF2C(v3);
    sub_23C5BAFA4(v3, v7, a2, a3);
    sub_23C5BB1C0(v3);
    sub_23C5BB24C(v3);
    v12 = v3 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 108);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5BA7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD70, &unk_23C879180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_23C5855B0(a1 + *(v14 + 60), v8, &qword_27E1FAD70, &unk_23C879180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAD70, &unk_23C879180);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  sub_23C5EDAB0(&qword_27E1FA728, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
}

uint64_t sub_23C5BAA18(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = a1 + *(result + 64);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_23C5ACFC8(*v3, *(v3 + 8));
    sub_23C871264();
    return sub_23C5AD0AC(v5, v4);
  }

  return result;
}

uint64_t sub_23C5BAAB8(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = (a1 + *(result + 68));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C5BAB30(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = (a1 + *(result + 72));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C5BABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD60, &qword_23C879068);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_23C5855B0(a1 + *(v14 + 76), v8, &qword_27E1FAD60, &qword_23C879068);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAD60, &qword_23C879068);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_23C5EDAB0(&qword_27E1FA710, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
}

uint64_t sub_23C5BADC4(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = (a1 + *(result + 80));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C8712B4();
  }

  return result;
}

uint64_t sub_23C5BAE3C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = (a1 + *(result + 84));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C5BAEB4(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 88)) != 2)
  {
    return sub_23C871244();
  }

  return result;
}

uint64_t sub_23C5BAF2C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 92)) != 2)
  {
    return sub_23C871244();
  }

  return result;
}

uint64_t sub_23C5BAFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD50, &unk_23C879190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_23C5855B0(a1 + *(v14 + 96), v8, &qword_27E1FAD50, &unk_23C879190);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAD50, &unk_23C879190);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
  sub_23C5EDAB0(&qword_27E1FA740, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
}

uint64_t sub_23C5BB1C0(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 100)) != 12)
  {
    v3 = *(a1 + *(result + 100));
    sub_23C5EDBB4();
    return sub_23C871254();
  }

  return result;
}

uint64_t sub_23C5BB24C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 104)) != 2)
  {
    return sub_23C871244();
  }

  return result;
}

uint64_t sub_23C5BB330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 108);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5BB3A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 108);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_23C5BB418(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 108);
  return result;
}

uint64_t sub_23C5BB46C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA90, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5BB50C()
{
  sub_23C5EDAB0(&qword_27E1FA6F8, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);

  return sub_23C8711F4();
}

uint64_t sub_23C5BB578()
{
  sub_23C5EDAB0(&qword_27E1FA6F8, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);

  return sub_23C871204();
}

uint64_t sub_23C5BB614()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA110);
  __swift_project_value_buffer(v0, qword_27E1FA110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "appRestriction";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "countryCode";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "movieRestriction";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tvRestriction";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_23C8710E4();
      }
    }

    else
    {
      if (result == 1)
      {
        goto LABEL_2;
      }

      if (result == 2)
      {
        sub_23C871154();
      }
    }
  }
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.traverse<A>(visitor:)()
{
  if ((v0[1] & 1) == 0)
  {
    v2 = *v0;
    result = sub_23C871284();
  }

  if (!v1)
  {
    if (*(v0 + 2))
    {
      v4 = *(v0 + 1);
      sub_23C8712C4();
    }

    if ((v0[7] & 1) == 0)
    {
      v5 = v0[6];
      sub_23C871284();
    }

    if ((v0[9] & 1) == 0)
    {
      v6 = v0[8];
      sub_23C871284();
    }

    v7 = v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0) + 32);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5BBA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 1;
  *(a2 + 32) = 0;
  *(a2 + 36) = 1;
  v2 = a2 + *(a1 + 32);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5BBB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA88, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5BBBA8()
{
  sub_23C5EDAB0(&qword_27E1FA710, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);

  return sub_23C8711F4();
}

uint64_t sub_23C5BBC14()
{
  sub_23C5EDAB0(&qword_27E1FA710, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);

  return sub_23C871204();
}

uint64_t sub_23C5BBCB0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA128);
  __swift_project_value_buffer(v0, qword_27E1FA128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "userID";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isOnlyUserInHome";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "classification";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C5EDB4C();
          sub_23C871094();
          break;
        case 2:
          sub_23C871074();
          break;
        case 1:
          sub_23C871154();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.traverse<A>(visitor:)()
{
  if (*(v0 + 8))
  {
    v2 = *v0;
    result = sub_23C8712C4();
  }

  if (!v1)
  {
    if (*(v0 + 16) != 2)
    {
      sub_23C871244();
    }

    sub_23C5BC08C(v0);
    v4 = v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0) + 28);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5BC08C(uint64_t result)
{
  if (*(result + 17) != 5)
  {
    sub_23C5EDB4C();
    return sub_23C871254();
  }

  return result;
}

uint64_t sub_23C5BC150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1282;
  v2 = a2 + *(a1 + 28);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t (*sub_23C5BC198(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_23C5BC1EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA80, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5BC28C()
{
  sub_23C5EDAB0(&qword_27E1FA728, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);

  return sub_23C8711F4();
}

uint64_t sub_23C5BC2F8()
{
  sub_23C5EDAB0(&qword_27E1FA728, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);

  return sub_23C871204();
}

uint64_t sub_23C5BC394()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA140);
  __swift_project_value_buffer(v0, qword_27E1FA140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23C875550;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "givenName";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "middleName";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "familyName";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "nickName";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "fullName";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "addresses";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
LABEL_4:
          sub_23C871154();
          goto LABEL_5;
        }

        if (result == 6)
        {
          type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
          sub_23C5EDAB0(&qword_27E1FA480, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);
          sub_23C871194();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_4;
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.traverse<A>(visitor:)()
{
  if (v0[2])
  {
    v2 = v0[1];
    result = sub_23C8712C4();
  }

  if (!v1)
  {
    if (v0[4])
    {
      v4 = v0[3];
      sub_23C8712C4();
    }

    if (v0[6])
    {
      v5 = v0[5];
      sub_23C8712C4();
    }

    if (v0[8])
    {
      v6 = v0[7];
      sub_23C8712C4();
    }

    if (v0[10])
    {
      v7 = v0[9];
      sub_23C8712C4();
    }

    if (*(*v0 + 16))
    {
      type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
      sub_23C5EDAB0(&qword_27E1FA480, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);
      sub_23C8712F4();
    }

    v8 = v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0) + 40);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5BC9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v3 = a2 + *(a1 + 40);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t (*sub_23C5BCA10(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_23C5BCA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA78, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5BCB04()
{
  sub_23C5EDAB0(&qword_27E1FA740, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);

  return sub_23C8711F4();
}

uint64_t sub_23C5BCB70()
{
  sub_23C5EDAB0(&qword_27E1FA740, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);

  return sub_23C871204();
}

uint64_t sub_23C5BCC0C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA158);
  __swift_project_value_buffer(v0, qword_27E1FA158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23C875550;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "label";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "street";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "city";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "state";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "postalCode";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "countryCode";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5 || result == 6)
        {
LABEL_11:
          sub_23C871154();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_11;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.traverse<A>(visitor:)()
{
  if (v0[1])
  {
    v2 = *v0;
    result = sub_23C8712C4();
  }

  if (!v1)
  {
    if (v0[3])
    {
      v4 = v0[2];
      sub_23C8712C4();
    }

    if (v0[5])
    {
      v5 = v0[4];
      sub_23C8712C4();
    }

    if (v0[7])
    {
      v6 = v0[6];
      sub_23C8712C4();
    }

    if (v0[9])
    {
      v7 = v0[8];
      sub_23C8712C4();
    }

    if (v0[11])
    {
      v8 = v0[10];
      sub_23C8712C4();
    }

    v9 = v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0) + 40);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5BD148@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v2 = a2 + *(a1 + 40);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5BD1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA70, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5BD264()
{
  sub_23C5EDAB0(&qword_27E1FA480, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);

  return sub_23C8711F4();
}

uint64_t sub_23C5BD2D0()
{
  sub_23C5EDAB0(&qword_27E1FA480, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);

  return sub_23C871204();
}

uint64_t sub_23C5BD36C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA170);
  __swift_project_value_buffer(v0, qword_27E1FA170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "standaloneTitle";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "embeddingDescription";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "isDisabled";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "menuHierarchyComponents";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          goto LABEL_2;
        case 5:
          sub_23C871084();
          break;
        case 6:
          sub_23C871124();
          break;
      }
    }

    else if (result == 1)
    {
      sub_23C871164();
    }

    else if (result == 2 || result == 3)
    {
LABEL_2:
      sub_23C871154();
    }
  }
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_23C8712C4(), !v1))
  {
    if (*(v0 + 40))
    {
      v5 = *(v0 + 32);
      result = sub_23C8712C4();
    }

    if (!v1)
    {
      if (*(v0 + 56))
      {
        v6 = *(v0 + 48);
        sub_23C8712C4();
      }

      if (*(v0 + 72))
      {
        v7 = *(v0 + 64);
        sub_23C8712C4();
      }

      if (*(v0 + 16) == 1)
      {
        sub_23C871244();
      }

      if (*(*(v0 + 24) + 16))
      {
        sub_23C8712A4();
      }

      v8 = v0 + *(type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0) + 40);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C5BD8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 32) = 0u;
  v3 = a2 + *(a1 + 40);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C5BD958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5BD9CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C5BDA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA68, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5BDB10()
{
  sub_23C5EDAB0(&qword_27E1FA768, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);

  return sub_23C8711F4();
}

uint64_t sub_23C5BDB7C()
{
  sub_23C5EDAB0(&qword_27E1FA768, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);

  return sub_23C871204();
}

uint64_t sub_23C5BDC18()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA188);
  __swift_project_value_buffer(v0, qword_27E1FA188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "appName";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "category";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoStructedContextAppInFocusContext.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_23C871154();
    }

    else if (result == 1)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t ContextProtoStructedContextAppInFocusContext.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_23C8712C4(), !v1))
  {
    if (v0[3])
    {
      v5 = v0[2];
      result = sub_23C8712C4();
    }

    if (!v1)
    {
      if (v0[5])
      {
        v6 = v0[4];
        sub_23C8712C4();
      }

      v7 = v0 + *(type metadata accessor for ContextProtoStructedContextAppInFocusContext(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C5BE018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v3 = a2 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C5BE0A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA60, type metadata accessor for ContextProtoStructedContextAppInFocusContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5BE140()
{
  sub_23C5EDAB0(&qword_27E1FA780, type metadata accessor for ContextProtoStructedContextAppInFocusContext);

  return sub_23C8711F4();
}

uint64_t sub_23C5BE1AC()
{
  sub_23C5EDAB0(&qword_27E1FA780, type metadata accessor for ContextProtoStructedContextAppInFocusContext);

  return sub_23C871204();
}

uint64_t sub_23C5BE248()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA1A0);
  __swift_project_value_buffer(v0, qword_27E1FA1A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "appName";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "category";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isActive";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoStructedContextAppContext.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        sub_23C871084();
      }
    }

    else if (result == 1)
    {
      sub_23C871164();
    }

    else if (result == 2)
    {
LABEL_12:
      sub_23C871154();
    }
  }
}

uint64_t ContextProtoStructedContextAppContext.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_23C8712C4(), !v1))
  {
    if (*(v0 + 32))
    {
      v5 = *(v0 + 24);
      result = sub_23C8712C4();
    }

    if (!v1)
    {
      if (*(v0 + 48))
      {
        v6 = *(v0 + 40);
        sub_23C8712C4();
      }

      if (*(v0 + 16) == 1)
      {
        sub_23C871244();
      }

      v7 = v0 + *(type metadata accessor for ContextProtoStructedContextAppContext(0) + 32);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C5BE6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  v3 = a2 + *(a1 + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23C5BE760(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA58, type metadata accessor for ContextProtoStructedContextAppContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5BE800()
{
  sub_23C5EDAB0(&qword_27E1FA798, type metadata accessor for ContextProtoStructedContextAppContext);

  return sub_23C8711F4();
}

uint64_t sub_23C5BE86C()
{
  sub_23C5EDAB0(&qword_27E1FA798, type metadata accessor for ContextProtoStructedContextAppContext);

  return sub_23C871204();
}

uint64_t sub_23C5BE908()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA1B8);
  __swift_project_value_buffer(v0, qword_27E1FA1B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "boundingBox";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "uiMetadata";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C5BEB80()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0) + 20);
  type metadata accessor for ContextProtoCGRect(0);
  sub_23C5EDAB0(&qword_27E1FA7F8, type metadata accessor for ContextProtoCGRect);
  return sub_23C8711A4();
}

uint64_t sub_23C5BEC34()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0) + 24);
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  sub_23C5EDAB0(&qword_27E1FA7C8, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  return sub_23C8711A4();
}

uint64_t sub_23C5BED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD18, &unk_23C879170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoCGRect(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAD18, &unk_23C879170);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAD18, &unk_23C879170);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoCGRect);
  sub_23C5EDAB0(&qword_27E1FA7F8, type metadata accessor for ContextProtoCGRect);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_23C5BEF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD38, &qword_23C879050);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAD38, &qword_23C879050);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAD38, &qword_23C879050);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  sub_23C5EDAB0(&qword_27E1FA7C8, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
}

uint64_t sub_23C5BF238(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA50, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5BF2D8()
{
  sub_23C5EDAB0(&qword_27E1FA7B0, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);

  return sub_23C8711F4();
}

uint64_t sub_23C5BF344()
{
  sub_23C5EDAB0(&qword_27E1FA7B0, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);

  return sub_23C871204();
}

uint64_t sub_23C5BF4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD28, &unk_23C8791A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAD28, &unk_23C8791A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAD28, &unk_23C8791A0);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  sub_23C5EDAB0(&qword_27E1FA7E0, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
}

uint64_t sub_23C5BF77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA48, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5BF81C()
{
  sub_23C5EDAB0(&qword_27E1FA7C8, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);

  return sub_23C8711F4();
}

uint64_t sub_23C5BF888()
{
  sub_23C5EDAB0(&qword_27E1FA7C8, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);

  return sub_23C871204();
}

uint64_t sub_23C5BF924()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA1E8);
  __swift_project_value_buffer(v0, qword_27E1FA1E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "isActive";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "boundingBox";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "fractionVisible";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "appBundleId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 24);
        sub_23C871134();
      }

      else if (result == 4)
      {
        v4 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 28);
        sub_23C871154();
      }
    }

    else if (result == 1)
    {
      sub_23C871084();
    }

    else if (result == 2)
    {
      sub_23C5BFC98();
    }
  }

  return result;
}

uint64_t sub_23C5BFC98()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 20);
  type metadata accessor for ContextProtoCGRect(0);
  sub_23C5EDAB0(&qword_27E1FA7F8, type metadata accessor for ContextProtoCGRect);
  return sub_23C8711A4();
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_23C871244(), !v4))
  {
    result = sub_23C5BFE20(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C5C003C(v3);
      sub_23C5C00B4(v3);
      v9 = &v3[*(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 32)];
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C5BFE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD18, &unk_23C879170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoCGRect(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAD18, &unk_23C879170);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAD18, &unk_23C879170);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoCGRect);
  sub_23C5EDAB0(&qword_27E1FA7F8, type metadata accessor for ContextProtoCGRect);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_23C5C003C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C8712B4();
  }

  return result;
}

uint64_t sub_23C5C00B4(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C5C0178@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = &a2[a1[6]];
  *v7 = 0;
  v7[8] = 1;
  v8 = &a2[v6];
  *v8 = 0;
  v8[1] = 0;
  v9 = &a2[a1[8]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C5C0260(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA40, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5C0300()
{
  sub_23C5EDAB0(&qword_27E1FA7E0, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);

  return sub_23C8711F4();
}

uint64_t sub_23C5C036C()
{
  sub_23C5EDAB0(&qword_27E1FA7E0, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);

  return sub_23C871204();
}

uint64_t sub_23C5C0410()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA200);
  __swift_project_value_buffer(v0, qword_27E1FA200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "origin";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "size";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoCGRect.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ContextProtoCGPoint(0);
        sub_23C5EDAB0(&qword_27E1FA810, type metadata accessor for ContextProtoCGPoint);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C5C06FC();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C5C06FC()
{
  v0 = *(type metadata accessor for ContextProtoCGRect(0) + 20);
  type metadata accessor for ContextProtoCGSize(0);
  sub_23C5EDAB0(&qword_27E1FA828, type metadata accessor for ContextProtoCGSize);
  return sub_23C8711A4();
}

uint64_t sub_23C5C0804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD08, &qword_23C879030);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoCGPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAD08, &qword_23C879030);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAD08, &qword_23C879030);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoCGPoint);
  sub_23C5EDAB0(&qword_27E1FA810, type metadata accessor for ContextProtoCGPoint);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoCGPoint);
}

uint64_t sub_23C5C0A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACF8, &unk_23C8791B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoCGSize(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoCGRect(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FACF8, &unk_23C8791B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FACF8, &unk_23C8791B0);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoCGSize);
  sub_23C5EDAB0(&qword_27E1FA828, type metadata accessor for ContextProtoCGSize);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoCGSize);
}

uint64_t sub_23C5C0CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA38, type metadata accessor for ContextProtoCGRect);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5C0D9C()
{
  sub_23C5EDAB0(&qword_27E1FA7F8, type metadata accessor for ContextProtoCGRect);

  return sub_23C8711F4();
}

uint64_t sub_23C5C0E08()
{
  sub_23C5EDAB0(&qword_27E1FA7F8, type metadata accessor for ContextProtoCGRect);

  return sub_23C871204();
}

uint64_t sub_23C5C0EAC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA218);
  __swift_project_value_buffer(v0, qword_27E1FA218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 1) = 1;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C5C115C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA30, type metadata accessor for ContextProtoCGPoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5C11FC()
{
  sub_23C5EDAB0(&qword_27E1FA810, type metadata accessor for ContextProtoCGPoint);

  return sub_23C8711F4();
}

uint64_t sub_23C5C1268()
{
  sub_23C5EDAB0(&qword_27E1FA810, type metadata accessor for ContextProtoCGPoint);

  return sub_23C871204();
}

uint64_t sub_23C5C1308()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA230);
  __swift_project_value_buffer(v0, qword_27E1FA230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C5C150C()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_23C871144();
    }
  }

  return result;
}

uint64_t sub_23C5C15B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*v4 == 0.0 || (result = sub_23C8712B4(), !v5))
  {
    if (v4[1] == 0.0 || (result = sub_23C8712B4(), !v5))
    {
      v7 = v4 + *(a4(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C5C1694(double *a1, double *a2, uint64_t (*a3)(void))
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3(0) + 24);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C5C17D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA28, type metadata accessor for ContextProtoCGSize);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5C1878()
{
  sub_23C5EDAB0(&qword_27E1FA828, type metadata accessor for ContextProtoCGSize);

  return sub_23C8711F4();
}

uint64_t sub_23C5C18E4()
{
  sub_23C5EDAB0(&qword_27E1FA828, type metadata accessor for ContextProtoCGSize);

  return sub_23C871204();
}

uint64_t sub_23C5C1960(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C5C1A30()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA248);
  __swift_project_value_buffer(v0, qword_27E1FA248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_23C875060;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "version";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "spans";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "spansIsPresent";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "toolRetrievalResponse";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "dynamicEnumerationEntities";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "dynamicEnumerationEntitiesIsPresent";
  *(v17 + 1) = 35;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "context";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "contextIsPresent";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "deviceIdsID";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  return sub_23C871324();
}

uint64_t ContextProtoVersionedQueryDecorationOutput.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 3)
        {
          if (result == 1)
          {
            sub_23C5EDAF8();
            sub_23C8710A4();
            goto LABEL_5;
          }

          if (result != 3)
          {
            goto LABEL_5;
          }

          v3 = v0;
          type metadata accessor for ContextProtoSpanMatchedEntity(0);
          sub_23C5EDAB0(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity);
LABEL_23:
          v0 = v3;
LABEL_25:
          sub_23C871194();
          goto LABEL_5;
        }

        if (result == 4)
        {
          goto LABEL_4;
        }

        sub_23C5C2070();
      }

      else
      {
        if (result <= 7)
        {
          if (result != 6)
          {
LABEL_4:
            sub_23C871084();
            goto LABEL_5;
          }

          type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
          sub_23C5EDAB0(&qword_27E1FA4E8, type metadata accessor for ContextProtoDynamicEnumerationEntity);
          goto LABEL_25;
        }

        v3 = v0;
        switch(result)
        {
          case 8:
            type metadata accessor for ContextProtoRetrievedContext(0);
            sub_23C5EDAB0(&qword_27E1FA4F0, type metadata accessor for ContextProtoRetrievedContext);
            goto LABEL_23;
          case 9:
            goto LABEL_4;
          case 10:
            v4 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 48);
            sub_23C871154();
            break;
        }
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C5C2070()
{
  v0 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 44);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_23C5EDAB0(&qword_27E1FA948, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  return sub_23C8711A4();
}

uint64_t ContextProtoVersionedQueryDecorationOutput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ContextProtoSpanMatchedEntity(0), sub_23C5EDAB0(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity), result = sub_23C8712F4(), !v4))
  {
    if (*(v3 + 8) != 1 || (result = sub_23C871244(), !v4))
    {
      result = sub_23C5C23AC(v3, a1, a2, a3);
      if (!v4)
      {
        if (*(*(v3 + 16) + 16))
        {
          type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
          sub_23C5EDAB0(&qword_27E1FA4E8, type metadata accessor for ContextProtoDynamicEnumerationEntity);
          sub_23C8712F4();
        }

        if (*(v3 + 24) == 1)
        {
          sub_23C871244();
        }

        if (*(*(v3 + 32) + 16))
        {
          type metadata accessor for ContextProtoRetrievedContext(0);
          sub_23C5EDAB0(&qword_27E1FA4F0, type metadata accessor for ContextProtoRetrievedContext);
          sub_23C8712F4();
        }

        if (*(v3 + 40) == 1)
        {
          sub_23C871244();
        }

        sub_23C5C25C8(v3);
        v9 = v3 + *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 52);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C5C23AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE0, &unk_23C8A13B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v10 = *(DecorationToolRetrievalResponse - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  sub_23C5855B0(a1 + *(DecorationOutput + 44), v8, &qword_27E1FACE0, &unk_23C8A13B0);
  if ((*(v10 + 48))(v8, 1, DecorationToolRetrievalResponse) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FACE0, &unk_23C8A13B0);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_23C5EDAB0(&qword_27E1FA948, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
}

uint64_t sub_23C5C25C8(uint64_t a1)
{
  result = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v3 = (a1 + *(result + 48));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C5C268C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[11];
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a2 + v4, 1, 1, DecorationToolRetrievalResponse);
  v6 = a1[13];
  v7 = (a2 + a1[12]);
  *v7 = 0;
  v7[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v9 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = 0;
  *(a2 + 32) = v9;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_23C5C274C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5C27C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_23C5C2834(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_23C5C2888(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA20, type metadata accessor for ContextProtoVersionedQueryDecorationOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5C2928()
{
  sub_23C5EDAB0(&qword_27E1FA840, type metadata accessor for ContextProtoVersionedQueryDecorationOutput);

  return sub_23C8711F4();
}

uint64_t sub_23C5C2994()
{
  sub_23C5EDAB0(&qword_27E1FA840, type metadata accessor for ContextProtoVersionedQueryDecorationOutput);

  return sub_23C871204();
}

uint64_t sub_23C5C2AA4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA278);
  __swift_project_value_buffer(v0, qword_27E1FA278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23C875580;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 12;
  *v5 = "spans";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 13;
  *v9 = "spansIsPresent";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "requiredContext";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 14;
  *v13 = "requiredContextIsPresent";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "utteranceContext";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 15;
  *v17 = "utteranceContextIsPresent";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 11;
  *v19 = "toolRetrievalResponse";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 22;
  *v21 = "dynamicEnumerationEntities";
  *(v21 + 1) = 26;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 23;
  *v22 = "dynamicEnumerationEntitiesIsPresent";
  *(v22 + 8) = 35;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 24;
  *v24 = "context";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 25;
  *v26 = "contextIsPresent";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 26;
  *v28 = "deviceIdsId";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ContextProtoQueryDecorationOutput.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 14)
      {
        if (result > 23)
        {
          v3 = v0;
          switch(result)
          {
            case 24:
              type metadata accessor for ContextProtoRetrievedContext(0);
              sub_23C5EDAB0(&qword_27E1FA4F0, type metadata accessor for ContextProtoRetrievedContext);
              goto LABEL_29;
            case 25:
LABEL_4:
              sub_23C871084();
              break;
            case 26:
              v4 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 60);
              sub_23C871154();
              break;
          }
        }

        else
        {
          switch(result)
          {
            case 15:
              goto LABEL_4;
            case 22:
              v3 = v0;
              type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
              sub_23C5EDAB0(&qword_27E1FA4E8, type metadata accessor for ContextProtoDynamicEnumerationEntity);
              goto LABEL_29;
            case 23:
              goto LABEL_4;
          }
        }
      }

      else
      {
        if (result > 11)
        {
          if (result != 12)
          {
            goto LABEL_4;
          }

          v3 = v0;
          type metadata accessor for ContextProtoSpanMatchedEntity(0);
          sub_23C5EDAB0(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity);
          goto LABEL_29;
        }

        if (result == 3 || result == 4)
        {
          v3 = v0;
          type metadata accessor for ContextProtoRetrievedContext(0);
          sub_23C5EDAB0(&qword_27E1FA4F0, type metadata accessor for ContextProtoRetrievedContext);
LABEL_29:
          v0 = v3;
          sub_23C871194();
          goto LABEL_5;
        }

        if (result == 11)
        {
          sub_23C5C3220();
        }
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C5C3220()
{
  v0 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 56);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_23C5EDAB0(&qword_27E1FA948, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  return sub_23C8711A4();
}

uint64_t ContextProtoQueryDecorationOutput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*(v3 + 16) + 16) || (type metadata accessor for ContextProtoRetrievedContext(0), sub_23C5EDAB0(&qword_27E1FA4F0, type metadata accessor for ContextProtoRetrievedContext), result = sub_23C8712F4(), !v4))
  {
    if (!*(*(v3 + 32) + 16) || (type metadata accessor for ContextProtoRetrievedContext(0), sub_23C5EDAB0(&qword_27E1FA4F0, type metadata accessor for ContextProtoRetrievedContext), result = sub_23C8712F4(), !v4))
    {
      result = sub_23C5C36A4(v3, a1, a2, a3);
      if (!v4)
      {
        if (*(*v3 + 16))
        {
          type metadata accessor for ContextProtoSpanMatchedEntity(0);
          sub_23C5EDAB0(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity);
          sub_23C8712F4();
        }

        if (*(v3 + 8) == 1)
        {
          sub_23C871244();
        }

        if (*(v3 + 24) == 1)
        {
          sub_23C871244();
        }

        if (*(v3 + 40) == 1)
        {
          sub_23C871244();
        }

        if (*(*(v3 + 48) + 16))
        {
          type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
          sub_23C5EDAB0(&qword_27E1FA4E8, type metadata accessor for ContextProtoDynamicEnumerationEntity);
          sub_23C8712F4();
        }

        if (*(v3 + 56) == 1)
        {
          sub_23C871244();
        }

        if (*(*(v3 + 64) + 16))
        {
          type metadata accessor for ContextProtoRetrievedContext(0);
          sub_23C5EDAB0(&qword_27E1FA4F0, type metadata accessor for ContextProtoRetrievedContext);
          sub_23C8712F4();
        }

        if (*(v3 + 72) == 1)
        {
          sub_23C871244();
        }

        sub_23C5C38C0(v3);
        v9 = v3 + *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 64);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C5C36A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE0, &unk_23C8A13B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v10 = *(DecorationToolRetrievalResponse - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  sub_23C5855B0(a1 + *(DecorationOutput + 56), v8, &qword_27E1FACE0, &unk_23C8A13B0);
  if ((*(v10 + 48))(v8, 1, DecorationToolRetrievalResponse) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FACE0, &unk_23C8A13B0);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_23C5EDAB0(&qword_27E1FA948, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
}

uint64_t sub_23C5C38C0(uint64_t a1)
{
  result = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v3 = (a1 + *(result + 60));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C5C3984@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[14];
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a2 + v4, 1, 1, DecorationToolRetrievalResponse);
  v6 = a1[16];
  v7 = (a2 + a1[15]);
  *v7 = 0;
  v7[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v9 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = 0;
  *(a2 + 32) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = v9;
  *(a2 + 56) = 0;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_23C5C3A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5C3AC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_23C5C3B3C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 64);
  return result;
}

uint64_t sub_23C5C3B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA18, type metadata accessor for ContextProtoQueryDecorationOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5C3C30()
{
  sub_23C5EDAB0(&qword_27E1FA868, type metadata accessor for ContextProtoQueryDecorationOutput);

  return sub_23C8711F4();
}

uint64_t sub_23C5C3C9C()
{
  sub_23C5EDAB0(&qword_27E1FA868, type metadata accessor for ContextProtoQueryDecorationOutput);

  return sub_23C871204();
}

uint64_t sub_23C5C3D38()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA290);
  __swift_project_value_buffer(v0, qword_27E1FA290);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23C875590;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "query";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 8;
  *v8 = "requestId";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 9;
  *v10 = "caller";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "contextId";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 11;
  *v14 = "loggingSalt";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 12;
  *v16 = "servicesExecuted";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 13;
  *v18 = "deviceIdsId";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t ContextProtoQueryDecorationInput.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 9)
      {
        switch(result)
        {
          case 1:
            sub_23C871164();
            break;
          case 8:
            goto LABEL_4;
          case 9:
            sub_23C5EA738();
            sub_23C8710A4();
            break;
        }
      }

      else
      {
        if (result <= 11)
        {
          goto LABEL_4;
        }

        if (result == 12)
        {
          sub_23C5EA78C();
          sub_23C871064();
        }

        else if (result == 13)
        {
LABEL_4:
          sub_23C871154();
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ContextProtoQueryDecorationInput.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_23C8712C4(), !v1))
  {
    if (*(v0 + 40))
    {
      v5 = *(v0 + 32);
      result = sub_23C8712C4();
    }

    if (!v1)
    {
      if (*(v0 + 16))
      {
        v10 = *(v0 + 16);
        sub_23C5EA738();
        sub_23C871254();
      }

      if (*(v0 + 56))
      {
        v6 = *(v0 + 48);
        sub_23C8712C4();
      }

      if (*(v0 + 72))
      {
        v7 = *(v0 + 64);
        sub_23C8712C4();
      }

      if (*(*(v0 + 24) + 16))
      {
        sub_23C5EA78C();
        sub_23C871234();
      }

      if (*(v0 + 88))
      {
        v8 = *(v0 + 80);
        sub_23C8712C4();
      }

      v9 = v0 + *(type metadata accessor for ContextProtoQueryDecorationInput(0) + 44);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C5C43BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v3 = a2 + *(a1 + 44);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C5C4428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5C449C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C5C4540(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA10, type metadata accessor for ContextProtoQueryDecorationInput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5C45E0()
{
  sub_23C5EDAB0(&qword_27E1FA880, type metadata accessor for ContextProtoQueryDecorationInput);

  return sub_23C8711F4();
}

uint64_t sub_23C5C464C()
{
  sub_23C5EDAB0(&qword_27E1FA880, type metadata accessor for ContextProtoQueryDecorationInput);

  return sub_23C871204();
}

uint64_t sub_23C5C46E8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA2A8);
  __swift_project_value_buffer(v0, qword_27E1FA2A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterTypeInstance";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "typedValue";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C5C4960(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a5(a1, v9, a2, a3);
        break;
      case 2:
        a4(a1, v9, a2, a3);
        break;
      case 1:
        sub_23C871164();
        break;
    }
  }

  return result;
}

uint64_t sub_23C5C4A2C()
{
  v0 = *(type metadata accessor for ContextProtoDynamicEnumerationEntity(0) + 20);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C5EDAB0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t sub_23C5C4AE0()
{
  v0 = *(type metadata accessor for ContextProtoDynamicEnumerationEntity(0) + 24);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C5EDAB0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t sub_23C5C4BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  v14 = *v6;
  v15 = v6[1];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16 || (result = sub_23C8712C4(), !v7))
  {
    result = a4(v6, a1, a2, a3);
    if (!v7)
    {
      a5(v6, a1, a2, a3);
      v18 = v6 + *(a6(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C5C4CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C5EDAB0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C5C4EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDAB0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C5C517C@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, char *a4@<X8>)
{
  v7 = a1[5];
  v8 = a2(0);
  (*(*(v8 - 8) + 56))(&a4[v7], 1, 1, v8);
  v9 = a1[6];
  v10 = a3(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = &a4[a1[7]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = 0;
  *(a4 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C5C529C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA08, type metadata accessor for ContextProtoDynamicEnumerationEntity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5C533C()
{
  sub_23C5EDAB0(&qword_27E1FA4E8, type metadata accessor for ContextProtoDynamicEnumerationEntity);

  return sub_23C8711F4();
}

uint64_t sub_23C5C53A8()
{
  sub_23C5EDAB0(&qword_27E1FA4E8, type metadata accessor for ContextProtoDynamicEnumerationEntity);

  return sub_23C871204();
}

uint64_t sub_23C5C5444()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA2C0);
  __swift_project_value_buffer(v0, qword_27E1FA2C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "definition";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "similarityScore";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sampleInvocations";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "stage";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoRetrievedTool.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for ContextProtoSampleInvocation(0);
          sub_23C5EDAB0(&qword_27E1FA528, type metadata accessor for ContextProtoSampleInvocation);
          sub_23C871194();
        }

        else if (result == 4)
        {
          sub_23C5EA7E0();
          sub_23C8710A4();
        }
      }

      else if (result == 1)
      {
        sub_23C5C5814();
      }

      else if (result == 2)
      {
        sub_23C8710D4();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C5C5814()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedTool(0) + 28);
  type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  sub_23C5EDAB0(&qword_27E1FA8C8, type metadata accessor for ContextProtoRetrievedTool.Definition);
  return sub_23C8711A4();
}

uint64_t ContextProtoRetrievedTool.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C5C5A40(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 != 0.0)
    {
      sub_23C871274();
    }

    if (*(*(v3 + 8) + 16))
    {
      type metadata accessor for ContextProtoSampleInvocation(0);
      sub_23C5EDAB0(&qword_27E1FA528, type metadata accessor for ContextProtoSampleInvocation);
      sub_23C8712F4();
      if (!*(v3 + 16))
      {
        goto LABEL_9;
      }
    }

    else if (!*(v3 + 16))
    {
LABEL_9:
      v6 = v3 + *(type metadata accessor for ContextProtoRetrievedTool(0) + 32);
      return sub_23C870F14();
    }

    sub_23C5EA7E0();
    sub_23C871254();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_23C5C5A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD8, &qword_23C878EC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoRetrievedTool(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E1FAAD8, &qword_23C878EC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAD8, &qword_23C878EC0);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_23C5EDAB0(&qword_27E1FA8C8, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoRetrievedTool.Definition);
}

uint64_t sub_23C5C5CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23C5C5D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FAA00, type metadata accessor for ContextProtoRetrievedTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5C5E24()
{
  sub_23C5EDAB0(&qword_27E1FA578, type metadata accessor for ContextProtoRetrievedTool);

  return sub_23C8711F4();
}

uint64_t sub_23C5C5E90()
{
  sub_23C5EDAB0(&qword_27E1FA578, type metadata accessor for ContextProtoRetrievedTool);

  return sub_23C871204();
}

uint64_t sub_23C5C5F10()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA2D8);
  __swift_project_value_buffer(v0, qword_27E1FA2D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "one";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "two";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "three";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "four";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C5C61A0()
{
  result = MEMORY[0x23EED7100](0x74696E696665442ELL, 0xEB000000006E6F69);
  qword_27E1FA2F0 = 0xD000000000000015;
  *algn_27E1FA2F8 = 0x800000023C8A7B10;
  return result;
}

uint64_t static ContextProtoRetrievedTool.Definition.protoMessageName.getter()
{
  if (qword_27E1F82A8 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1FA2F0;

  return v0;
}

uint64_t sub_23C5C627C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA300);
  __swift_project_value_buffer(v0, qword_27E1FA300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23C875570;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "implementation";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "assistantSchema";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "entitySetter";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "clientAction";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "uiControl";
  *(v14 + 8) = 9;
  *(v14 + 16) = 2;
  v8();
  return sub_23C871324();
}

uint64_t ContextProtoRetrievedTool.Definition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_23C5C6634(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        sub_23C5C6BE4(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_23C5C71A0(v5, a1, a2, a3);
          break;
        case 4:
          sub_23C5C775C(v5, a1, a2, a3);
          break;
        case 5:
          sub_23C5C7D18(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C5C6634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FA540, &unk_23C8791D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FA540, &unk_23C8791D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C5EDD24(v14, v22, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_23C5EDD24(v22, v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C5EDCC4(v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FACA8, &unk_23C87B940);
      v35 = v43;
      sub_23C5EDD24(v20, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      sub_23C5EDD24(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C5EDAB0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FACA8, &unk_23C87B940);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FACA8, &unk_23C87B940);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FACA8, &unk_23C87B940);
    return sub_23C585C34(v36, &qword_27E1FACA8, &unk_23C87B940);
  }

  else
  {
    v39 = v44;
    sub_23C5EDD24(v36, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FACA8, &unk_23C87B940);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FA540, &unk_23C8791D0);
    sub_23C5EDD24(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C5C6BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FA540, &unk_23C8791D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FA540, &unk_23C8791D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C5EDD24(v14, v22, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_23C5EDD24(v22, v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FACC8, &unk_23C889C50);
      v35 = v44;
      sub_23C5EDD24(v20, v44, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      sub_23C5EDD24(v35, v28, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C5EDCC4(v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C5EDAB0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FACC8, &unk_23C889C50);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FACC8, &unk_23C889C50);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FACC8, &unk_23C889C50);
    return sub_23C585C34(v36, &qword_27E1FACC8, &unk_23C889C50);
  }

  else
  {
    v39 = v43;
    sub_23C5EDD24(v36, v43, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FACC8, &unk_23C889C50);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FA540, &unk_23C8791D0);
    sub_23C5EDD24(v39, v40, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}