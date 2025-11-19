uint64_t SongPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  SongPropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_21753B8F4(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  SongPropertyProvider.subscript.getter();
  return sub_217535208;
}

uint64_t sub_21753B970()
{
  sub_2177531E8();
  SongPropertyProvider.hash(into:)();
  return sub_217753238();
}

uint64_t (*sub_21753B9B8(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 292);
  return result;
}

uint64_t objectdestroyTm_3()
{
  if (v0[3] != 1)
  {
  }

  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  }

  v5 = v0[16];

  v6 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_21753BA74(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21753BA8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21753BAF0(uint64_t a1)
{
  v2 = type metadata accessor for SongPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21753BB94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21753BC04()
{
  sub_2172E2E58(319, &qword_280BE7698);
  v1 = v0;
  if (v2 > 0x3F)
  {
    return v1;
  }

  sub_2172E2E58(319, &qword_280BE8010);
  if (v4 > 0x3F)
  {
    return v3;
  }

  sub_2172E2E58(319, &qword_280BE7598);
  if (v6 > 0x3F)
  {
    return v5;
  }

  sub_21739F80C(319, qword_280BE99F8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v8 = v7;
  if (v9 > 0x3F)
  {
    return v8;
  }

  sub_217351B44(319, &unk_280BE75B8, &qword_27CB24C60, &qword_217759660);
  if (v10 > 0x3F)
  {
    return v3;
  }

  sub_217351B44(319, &qword_280BE7570, &qword_27CB24C70, &unk_217759670);
  if (v11 > 0x3F)
  {
    return v3;
  }

  sub_2172E2E58(319, qword_280BE7E70);
  if (v12 > 0x3F)
  {
    return v3;
  }

  sub_2172E2E58(319, &qword_280BE7E08);
  if (v13 > 0x3F)
  {
    return v3;
  }

  sub_2172E2E58(319, &qword_280BE7528);
  v15 = v14;
  if (v16 > 0x3F)
  {
    return v15;
  }

  sub_2172E2E58(319, &qword_280BE7538);
  if (v18 > 0x3F)
  {
    return v17;
  }

  sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
  if (v19 > 0x3F)
  {
    return v3;
  }

  sub_2172E2E58(319, &qword_280BE7DE8);
  if (v20 > 0x3F)
  {
    return v3;
  }

  sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
  if (v21 > 0x3F)
  {
    return v3;
  }

  sub_217351B44(319, &qword_280BE7548, &qword_27CB24C58, &unk_2177677B0);
  if (v22 > 0x3F)
  {
    return v3;
  }

  sub_2172E2E58(319, &qword_280BE7CB0);
  if (v23 > 0x3F)
  {
    return v3;
  }

  sub_2172E2E58(319, &qword_280BE7540);
  if (v25 > 0x3F)
  {
    return v24;
  }

  sub_2172E2E58(319, &qword_280BE7618);
  if (v26 > 0x3F)
  {
    return v3;
  }

  sub_2172E2E58(319, &qword_280BE7F18);
  if (v27 > 0x3F)
  {
    return v3;
  }

  sub_217351B44(319, &qword_280BE7558, &qword_27CB24C50, &unk_217759650);
  v1 = v28;
  if (v29 > 0x3F)
  {
    return v1;
  }

  sub_2172E2E58(319, &qword_280BE7DD0);
  v1 = v30;
  if (v31 > 0x3F)
  {
    return v1;
  }

  sub_217351B44(319, &qword_280BE7568, &qword_27CB24C48, &qword_217759648);
  v1 = v32;
  if (v33 > 0x3F)
  {
    return v1;
  }

  sub_21739F80C(319, &qword_280BE99F0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v1 = v34;
  if (v35 > 0x3F)
  {
    return v1;
  }

  sub_217351B44(319, &qword_280BE7DF8, &qword_27CB25C70, &unk_217775710);
  if (v36 > 0x3F)
  {
    return v3;
  }

  sub_2172E2E58(319, qword_280BE7948);
  if (v37 > 0x3F)
  {
    return v3;
  }

  sub_2172E2E58(319, &qword_280BE77E0);
  if (v38 > 0x3F)
  {
    return v3;
  }

  sub_2172E2E58(319, &qword_280BE77D8);
  if (v39 > 0x3F)
  {
    return v3;
  }

  sub_2172E2E58(319, &qword_280BE77C0);
  if (v40 > 0x3F)
  {
    return v3;
  }

  sub_2172E2E58(319, &unk_280BE7EF8);
  v1 = v41;
  if (v42 > 0x3F)
  {
    return v1;
  }

  sub_217351B44(319, &qword_280BE7FB8, &qword_27CB25388, &unk_21775D410);
  v1 = v43;
  if (v44 > 0x3F)
  {
    return v1;
  }

  sub_217351B44(319, &qword_280BE7FB0, &qword_27CB27C80, &unk_21775D420);
  v1 = v45;
  if (v46 > 0x3F)
  {
    return v1;
  }

  sub_217351B44(319, &qword_280BE7FA0, &qword_27CB25398, &unk_21776C4F0);
  v15 = v47;
  if (v48 > 0x3F)
  {
    return v15;
  }

  sub_217351B44(319, &qword_280BE7AC0, &qword_27CB25C78, &unk_21775EFE0);
  if (v49 > 0x3F)
  {
    return v3;
  }

  sub_217351B44(319, &qword_280BE7FC0, &qword_27CB27820, &qword_21775DAB0);
  v8 = v50;
  if (v51 > 0x3F)
  {
    return v8;
  }

  sub_217351B44(319, &qword_280BE7AB0, &qword_27CB25C80, &unk_217775700);
  if (v52 > 0x3F)
  {
    return v3;
  }

  sub_217351B44(319, &qword_280BE7AC8, &qword_27CB25C88, &unk_21775EFF0);
  if (v53 > 0x3F)
  {
    return v3;
  }

  sub_217351B44(319, &qword_280BE7FD0, &qword_27CB25380, &unk_21775DAA0);
  v1 = v54;
  if (v55 <= 0x3F)
  {
    sub_217351B44(319, &qword_280BE7F90, &qword_27CB255B8, &unk_21775D470);
    v1 = v56;
    if (v57 <= 0x3F)
    {
      sub_217351B44(319, &qword_280BE7578, &qword_27CB24C40, &qword_217759640);
      v1 = v58;
      if (v59 <= 0x3F)
      {
        sub_217351B44(319, &qword_280BE7550, &qword_27CB24BD8, &unk_2177595E0);
        v1 = v60;
        if (v61 <= 0x3F)
        {
          sub_21739F80C(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
          v1 = v62;
          if (v63 <= 0x3F)
          {
            sub_217351BFC();
            v1 = v64;
            if (v65 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_21_32()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_35()
{

  return sub_21726A630(v3 + v2, v0 + 7704, v1, v4);
}

uint64_t OUTLINED_FUNCTION_26_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_30()
{

  return swift_once();
}

void OUTLINED_FUNCTION_34_25(uint64_t a1@<X8>)
{
  v4 = *(v3 + a1);
  v5 = *(v1 + a1);
  *(v2 + 7704) = v4;
}

uint64_t OUTLINED_FUNCTION_42_22()
{

  return sub_2171F0738(v0 + 6048, v1, v2);
}

uint64_t OUTLINED_FUNCTION_45_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_64_19()
{

  return sub_2171F0738(v0 + 3152, v1, v2);
}

void *OUTLINED_FUNCTION_77_12()
{

  return memcpy((v0 + 3152), (v1 + 104), 0x68uLL);
}

void *OUTLINED_FUNCTION_78_12()
{

  return memcpy((v0 + 136), (v0 + 8), 0x68uLL);
}

void *OUTLINED_FUNCTION_79_14()
{

  return memcpy((v0 + 360), (v0 + 2184), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_96_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_97_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_98_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_99_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_100_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_103_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_104_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_105_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_106_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_108_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_109_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_110_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_111_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_112_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_113_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_114_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_115_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_116_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_117_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_118_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_120_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_121_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_122_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_123_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_126_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_127_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_128_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_129_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_130_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_132_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_134_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_135_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_139_8()
{

  return type metadata accessor for SongPropertyProvider();
}

uint64_t OUTLINED_FUNCTION_146_7()
{

  return type metadata accessor for SongPropertyProvider();
}

uint64_t OUTLINED_FUNCTION_147_6()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_151_6@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_161_7@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v4 + a3, v3 + 2184, a1, a2);
}

uint64_t OUTLINED_FUNCTION_164_6@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 32) + a1);
}

uint64_t OUTLINED_FUNCTION_166_6@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v4 + a3, v3 + 136, a1, a2);
}

uint64_t OUTLINED_FUNCTION_167_8@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v4 + a3, v3 + 8, a1, a2);
}

uint64_t OUTLINED_FUNCTION_172_7()
{
  result = v1;
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_185_3()
{
  result = *(v0 + 128);
  v2 = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_190_7@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return sub_217751DE8();
}

void *OUTLINED_FUNCTION_191_5()
{

  return memcpy((v0 + 7720), (v1 + 16), 0x68uLL);
}

void *OUTLINED_FUNCTION_192_6()
{

  return memcpy((v0 + 3152), (v1 + 128), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_193_6(unsigned __int8 *a1)
{
  v2 = *a1;

  return type metadata accessor for SongPropertyProvider();
}

uint64_t *OUTLINED_FUNCTION_195_6()
{
  *(v0 + 1720) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 1696));
}

uint64_t OUTLINED_FUNCTION_196_6(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 2592, v3, v2);
}

void *OUTLINED_FUNCTION_198_5()
{

  return memcpy((v0 + 136), (v0 + 8), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_199_3@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];

  return sub_21739AF10(v2, v3, v4);
}

void *OUTLINED_FUNCTION_200_4()
{

  return memcpy((v0 + 360), (v0 + 2184), 0x80uLL);
}

double OUTLINED_FUNCTION_221_5()
{
  result = 0.0;
  *(v0 + 1696) = 0u;
  *(v0 + 1712) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_222_4()
{

  return sub_217751EB8();
}

void *OUTLINED_FUNCTION_225_5(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x68uLL);
}

void *OUTLINED_FUNCTION_227_5(void *a1)
{

  return memcpy(a1, (v1 + 176), 0xB0uLL);
}

uint64_t String.convertToCodingKey()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for DynamicCodingKey;
  a3[4] = sub_21738B390();
  *a3 = a1;
  a3[1] = a2;

  return sub_217751DE8();
}

MusicKit::DynamicCodingKey __swiftcall CodingKey.convertToDynamicCodingKey()()
{
  v1 = v0;
  v2 = sub_217753318();
  *v1 = v2;
  v1[1] = v3;
  result.stringValue._object = v3;
  result.stringValue._countAndFlagsBits = v2;
  return result;
}

MusicKit::DynamicCodingKey __swiftcall String.convertToDynamicCodingKey()()
{
  *v2 = v0;
  v2[1] = v1;
  v3 = sub_217751DE8();
  result.stringValue._object = v4;
  result.stringValue._countAndFlagsBits = v3;
  return result;
}

MusicKit::DynamicCodingKey_optional __swiftcall DynamicCodingKey.init(intValue:)(Swift::Int intValue)
{
  *v1 = 0;
  v1[1] = 0;
  result.value.stringValue._countAndFlagsBits = intValue;
  return result;
}

uint64_t DynamicCodingKey.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t static DynamicCodingKey.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_217753058();
  }
}

uint64_t DynamicCodingKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_217751FF8();
}

uint64_t DynamicCodingKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2177531E8();
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_21753D1B4(uint64_t a1)
{
  v2 = sub_21738B390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicCodingKey.description.getter()
{
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  return 34;
}

unint64_t sub_21753D244()
{
  result = qword_280BE7CB8;
  if (!qword_280BE7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7CB8);
  }

  return result;
}

unint64_t sub_21753D29C()
{
  result = qword_280BE7CC0;
  if (!qword_280BE7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7CC0);
  }

  return result;
}

unint64_t sub_21753D2F4()
{
  result = qword_27CB291F8;
  if (!qword_27CB291F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB291F8);
  }

  return result;
}

uint64_t sub_21753D3EC(char a1, void (*a2)(void *), uint64_t (*a3)(void), void (*a4)(uint64_t, void *))
{
  LOBYTE(v17[0]) = a1;
  a2(v17);
  v8 = a3();

  a4(v4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB293D8, &qword_217786890);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C(v15, v18);
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    LOBYTE(v17[0]) = a1;
    v11 = (*(v10 + 24))(v17, v9, v10);
    swift_isUniquelyReferenced_nonNull_native();
    v17[0] = v8;
    OUTLINED_FUNCTION_27_34();
    sub_2175FCEF0(v11, v12, 0, v13, v17);
    v8 = v17[0];
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_2171F0790(v15, &qword_27CB293E0, &unk_217776CD0);
  }

  return v8;
}

uint64_t sub_21753D6F0(char a1)
{
  v2 = v1;
  sub_217275710(v1, v20);
  if (v21)
  {
    OUTLINED_FUNCTION_33_26();
    MusicVideo.convertToLegacyModelStorageDictionary(for:)();
    v5 = v4;
    sub_217283C08(v17);
  }

  else
  {
    OUTLINED_FUNCTION_33_26();
    v5 = Song.convertToLegacyModelStorageDictionary(for:)(v6);
    sub_217283B58(v17);
  }

  sub_2172A1834(v5);
  v8 = v7;

  sub_217275710(v2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB293D8, &qword_217786890);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C(v15, v17);
    v9 = v18;
    v10 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    LOBYTE(v20[0]) = a1;
    v11 = (*(v10 + 24))(v20, v9, v10);
    swift_isUniquelyReferenced_nonNull_native();
    v20[0] = v8;
    OUTLINED_FUNCTION_27_34();
    sub_2175FCEF0(v11, v12, 0, v13, v20);
    v8 = v20[0];
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_2171F0790(v15, &qword_27CB293E0, &unk_217776CD0);
  }

  return v8;
}

uint64_t LegacyModelLibrarySearchTopResult.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 48))(v106, v4, v5);
  v6 = v106[1];
  if (qword_280BE8A88 != -1)
  {
    OUTLINED_FUNCTION_43_17();
  }

  OUTLINED_FUNCTION_30_2(&qword_280BE8A90);
  v8 = v8 && v7 == v6;
  if (!v8 && (OUTLINED_FUNCTION_25_38() & 1) == 0)
  {
    if (qword_280BE8AE8 != -1)
    {
      OUTLINED_FUNCTION_42_23();
    }

    OUTLINED_FUNCTION_30_2(&qword_280BE8AF0);
    v10 = v8 && v9 == v6;
    if (!v10 && (OUTLINED_FUNCTION_25_38() & 1) == 0)
    {
      if (qword_280BE4A68 != -1)
      {
        OUTLINED_FUNCTION_41_22();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BE4A70);
      v28 = v8 && v27 == v6;
      if (v28 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
      {
        goto LABEL_31;
      }

      if (qword_280BE4B80 != -1)
      {
        OUTLINED_FUNCTION_40_23();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BE4B88);
      v30 = v8 && v29 == v6;
      if (v30 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
      {
LABEL_31:

        OUTLINED_FUNCTION_65_19(v31, v32);
        v33 = v100;
        __swift_project_boxed_opaque_existential_1(v99, v100);
        v34 = OUTLINED_FUNCTION_8_49();
        v35(v34);
        OUTLINED_FUNCTION_64_0();
        sub_217269F50(v105);
        *&v101 = v33;
        *(&v101 + 1) = v6;
        v36 = __swift_project_boxed_opaque_existential_1(v99, v100);
        OUTLINED_FUNCTION_11_6(v36, v37, v38, v39, v40, v41, v42, v43, v96);
        __swift_destroy_boxed_opaque_existential_1(v99);
        v24 = 1;
        goto LABEL_16;
      }

      if (qword_280BE8B28 != -1)
      {
        OUTLINED_FUNCTION_39_18();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BE8B30);
      v45 = v8 && v44 == v6;
      if (v45 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
      {
        goto LABEL_46;
      }

      if (qword_280BE8B68 != -1)
      {
        OUTLINED_FUNCTION_38_22();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BE8B70);
      v47 = v8 && v46 == v6;
      if (v47 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
      {
LABEL_46:

        OUTLINED_FUNCTION_65_19(v48, v49);
        v50 = v100;
        __swift_project_boxed_opaque_existential_1(v99, v100);
        v51 = OUTLINED_FUNCTION_8_49();
        v52(v51);
        OUTLINED_FUNCTION_64_0();
        sub_217269F50(v105);
        *&v101 = v50;
        *(&v101 + 1) = v6;
        v53 = __swift_project_boxed_opaque_existential_1(v99, v100);
        OUTLINED_FUNCTION_11_6(v53, v54, v55, v56, v57, v58, v59, v60, v96);
        __swift_destroy_boxed_opaque_existential_1(v99);
        v24 = 2;
        goto LABEL_16;
      }

      if (qword_280BE8A38 != -1)
      {
        OUTLINED_FUNCTION_37_25();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BE8A40);
      v62 = v8 && v61 == v6;
      if (v62 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
      {
        goto LABEL_61;
      }

      if (qword_280BE8AA8 != -1)
      {
        OUTLINED_FUNCTION_36_25();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BE8AB0);
      v64 = v8 && v63 == v6;
      if (v64 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
      {
LABEL_61:

        OUTLINED_FUNCTION_65_19(v65, v66);
        v67 = v100;
        __swift_project_boxed_opaque_existential_1(v99, v100);
        v68 = OUTLINED_FUNCTION_8_49();
        v69(v68);
        OUTLINED_FUNCTION_64_0();
        sub_217269F50(v105);
        *&v101 = v67;
        *(&v101 + 1) = v6;
        v70 = __swift_project_boxed_opaque_existential_1(v99, v100);
        OUTLINED_FUNCTION_11_6(v70, v71, v72, v73, v74, v75, v76, v77, v96);
        __swift_destroy_boxed_opaque_existential_1(v99);
        v24 = 3;
        goto LABEL_16;
      }

      if (qword_280BEA1C8 != -1)
      {
        OUTLINED_FUNCTION_35_24();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BEA1D0);
      v79 = v8 && v78 == v6;
      if (!v79 && (OUTLINED_FUNCTION_25_38() & 1) == 0)
      {
        if (qword_280BE8B08 != -1)
        {
          OUTLINED_FUNCTION_34_26();
        }

        OUTLINED_FUNCTION_30_2(&qword_280BE8B10);
        if (!v8 || v80 != v6)
        {
          v82 = OUTLINED_FUNCTION_25_38();

          if (v82)
          {
LABEL_78:
            OUTLINED_FUNCTION_65_19(v83, v84, v96, v98);
            v85 = v100;
            __swift_project_boxed_opaque_existential_1(v99, v100);
            v86 = OUTLINED_FUNCTION_8_49();
            v87(v86);
            OUTLINED_FUNCTION_64_0();
            sub_217269F50(v105);
            *&v101 = v85;
            *(&v101 + 1) = v6;
            v88 = __swift_project_boxed_opaque_existential_1(v99, v100);
            OUTLINED_FUNCTION_11_6(v88, v89, v90, v91, v92, v93, v94, v95, v97);
            __swift_destroy_boxed_opaque_existential_1(v99);
            v24 = 4;
            goto LABEL_16;
          }

          v98 = 0;
          v96 = 58;
          sub_217752D08();
          __break(1u);
        }
      }

      goto LABEL_78;
    }
  }

  OUTLINED_FUNCTION_65_19(v11, v12);
  v13 = v100;
  __swift_project_boxed_opaque_existential_1(v99, v100);
  v14 = OUTLINED_FUNCTION_8_49();
  v15(v14);
  OUTLINED_FUNCTION_64_0();
  sub_217269F50(v105);
  *&v101 = v13;
  *(&v101 + 1) = v6;
  v16 = __swift_project_boxed_opaque_existential_1(v99, v100);
  OUTLINED_FUNCTION_11_6(v16, v17, v18, v19, v20, v21, v22, v23, v96);
  __swift_destroy_boxed_opaque_existential_1(v99);
  v24 = 0;
LABEL_16:
  v25 = v102;
  *a2 = v101;
  *(a2 + 16) = v25;
  *(a2 + 32) = v103;
  *(a2 + 48) = v104;
  *(a2 + 56) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LegacyModelLibrarySearchTopResult.id.getter()
{
  LegacyModelLibrarySearchTopResult.innerItem.getter();
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t LegacyModelLibrarySearchTopResult.innerItem.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  sub_21753DFEC(v1, &v6);
  switch(v9)
  {
    case 1:
      v0[3] = &type metadata for Artist;
      v0[4] = &protocol witness table for Artist;
      goto LABEL_7;
    case 2:
      v0[3] = &type metadata for MusicVideo;
      v0[4] = &protocol witness table for MusicVideo;
      goto LABEL_7;
    case 3:
      v0[3] = &type metadata for Playlist;
      v0[4] = &protocol witness table for Playlist;
      goto LABEL_7;
    case 4:
      v0[3] = &type metadata for Song;
      v0[4] = &protocol witness table for Song;
      goto LABEL_7;
    case 5:
      v4 = v6;
      v5[0] = *v7;
      *(v5 + 9) = *&v7[9];
      sub_217541680(v0);
      return sub_2171F0790(&v4, &qword_27CB29208, &qword_217775F10);
    default:
      v0[3] = &type metadata for Album;
      v0[4] = &protocol witness table for Album;
LABEL_7:
      result = swift_allocObject();
      *v0 = result;
      v3 = *v7;
      *(result + 16) = v6;
      *(result + 32) = v3;
      *(result + 48) = *&v7[16];
      *(result + 64) = v8;
      return result;
  }
}

uint64_t LegacyModelLibrarySearchTopResult.propertyProvider.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  v1 = sub_21753DFEC(v0, &v24);
  switch(v26)
  {
    case 1:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v20, *(&v20 + 1), *&v21[0], *(&v21[0] + 1), *&v21[1], *(&v21[1] + 1), v22, v23, v24, *(&v24 + 1), *&v25[0], *(&v25[0] + 1), v25[1]);
      v18 = OUTLINED_FUNCTION_29(&v20);
      sub_21729C5E8(v18, v19);
      result = sub_217284498(&v20);
      break;
    case 2:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v20, *(&v20 + 1), *&v21[0], *(&v21[0] + 1), *&v21[1], *(&v21[1] + 1), v22, v23, v24, *(&v24 + 1), *&v25[0], *(&v25[0] + 1), v25[1]);
      v14 = OUTLINED_FUNCTION_29(&v20);
      sub_21729C5E8(v14, v15);
      result = sub_217283C08(&v20);
      break;
    case 3:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v20, *(&v20 + 1), *&v21[0], *(&v21[0] + 1), *&v21[1], *(&v21[1] + 1), v22, v23, v24, *(&v24 + 1), *&v25[0], *(&v25[0] + 1), v25[1]);
      v16 = OUTLINED_FUNCTION_29(&v20);
      sub_21729C5E8(v16, v17);
      result = sub_21726B8C4(&v20);
      break;
    case 4:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v20, *(&v20 + 1), *&v21[0], *(&v21[0] + 1), *&v21[1], *(&v21[1] + 1), v22, v23, v24, *(&v24 + 1), *&v25[0], *(&v25[0] + 1), v25[1]);
      v12 = OUTLINED_FUNCTION_29(&v20);
      sub_21729C5E8(v12, v13);
      result = sub_217283B58(&v20);
      break;
    case 5:
      v20 = v24;
      v21[0] = v25[0];
      *(v21 + 9) = *(v25 + 9);
      sub_21753E138();
      result = sub_2171F0790(&v20, &qword_27CB29208, &qword_217775F10);
      break;
    default:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v20, *(&v20 + 1), *&v21[0], *(&v21[0] + 1), *&v21[1], *(&v21[1] + 1), v22, v23, v24, *(&v24 + 1), *&v25[0], *(&v25[0] + 1), v25[1]);
      v9 = OUTLINED_FUNCTION_29(&v20);
      sub_21729C5E8(v9, v10);
      result = sub_21725CE44(&v20);
      break;
  }

  return result;
}

uint64_t sub_21753E138()
{
  sub_21754240C(v0, v7, &qword_27CB29208, &qword_217775F10);
  if (v8)
  {
    sub_2171F3F0C(v7, v4);
    v1 = v5;
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    (*(v2 + 40))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t static LegacyModelLibrarySearchTopResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_21753DFEC(a1, v100);
  v4 = sub_21753DFEC(a2, &v101);
  switch(v100[56])
  {
    case 1:
      v59 = OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v103 != 1)
      {
        sub_217284498(&v93);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_2_0(v59, v60, v61, v62, v63, v64, v65, v66, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93);
      v69 = v30 && v67 == v68;
      if (v69 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v93, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93, v94, v95, v96, v97, v98, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v70 = OUTLINED_FUNCTION_13_4();
        v2(v70);
        OUTLINED_FUNCTION_9_3();
        sub_217284498(v71);
        if (a2)
        {
          sub_217284498(&v93);
          goto LABEL_51;
        }
      }

      else
      {
        sub_217284498(&v89);
      }

      sub_217284498(&v93);
      goto LABEL_62;
    case 2:
      v33 = OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v103 != 2)
      {
        sub_217283C08(&v93);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_2_0(v33, v34, v35, v36, v37, v38, v39, v40, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93);
      v43 = v30 && v41 == v42;
      if (v43 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v93, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93, v94, v95, v96, v97, v98, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v44 = OUTLINED_FUNCTION_13_4();
        v2(v44);
        OUTLINED_FUNCTION_9_3();
        sub_217283C08(v45);
        if (a2)
        {
          sub_217283C08(&v93);
          goto LABEL_51;
        }
      }

      else
      {
        sub_217283C08(&v89);
      }

      sub_217283C08(&v93);
      goto LABEL_62;
    case 3:
      v46 = OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v103 != 3)
      {
        sub_21726B8C4(&v93);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_2_0(v46, v47, v48, v49, v50, v51, v52, v53, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93);
      v56 = v30 && v54 == v55;
      if (v56 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v93, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93, v94, v95, v96, v97, v98, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v57 = OUTLINED_FUNCTION_13_4();
        v2(v57);
        OUTLINED_FUNCTION_9_3();
        sub_21726B8C4(v58);
        if (a2)
        {
          sub_21726B8C4(&v93);
          goto LABEL_51;
        }
      }

      else
      {
        sub_21726B8C4(&v89);
      }

      sub_21726B8C4(&v93);
      goto LABEL_62;
    case 4:
      v20 = OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v103 != 4)
      {
        sub_217283B58(&v93);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_2_0(v20, v21, v22, v23, v24, v25, v26, v27, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93);
      v30 = v30 && v28 == v29;
      if (v30 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v93, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93, v94, v95, v96, v97, v98, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v31 = OUTLINED_FUNCTION_13_4();
        v2(v31);
        OUTLINED_FUNCTION_9_3();
        sub_217283B58(v32);
        if (a2)
        {
          sub_217283B58(&v93);
          goto LABEL_51;
        }
      }

      else
      {
        sub_217283B58(&v89);
      }

      sub_217283B58(&v93);
      goto LABEL_62;
    case 5:
      OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v103 == 5)
      {
        v89 = v101;
        v90[0] = v102[0];
        *(v90 + 9) = *(v102 + 9);
        v72 = sub_21753E61C(&v93, &v89);
        v73 = v72;
        v81 = OUTLINED_FUNCTION_54_17(v72, v74, v75, v76, v77, v78, v79, v80, v89);
        sub_2171F0790(v81, v82, &qword_217775F10);
        sub_2171F0790(&v93, &qword_27CB29208, &qword_217775F10);
        sub_217541740(v100);
        return v73 & 1;
      }

      sub_2171F0790(&v93, &qword_27CB29208, &qword_217775F10);
      goto LABEL_43;
    default:
      v12 = OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v103)
      {
        sub_21725CE44(&v93);
LABEL_43:
        sub_2171F0790(v100, &qword_27CB29210, &unk_217775F18);
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_2_0(v12, v13, v14, v15, v16, v17, v18, v19, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93);
      v85 = v30 && v83 == v84;
      if (!v85 && (sub_217753058() & 1) == 0)
      {
        sub_21725CE44(&v89);
LABEL_61:
        sub_21725CE44(&v93);
LABEL_62:
        sub_217541740(v100);
LABEL_63:
        v73 = 0;
        return v73 & 1;
      }

      OUTLINED_FUNCTION_9_2(&v93, v89, *(&v89 + 1), *&v90[0], *(&v90[0] + 1), *&v90[1], *(&v90[1] + 1), v91, v92, v93, v94, v95, v96, v97, v98, v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
      v86 = OUTLINED_FUNCTION_13_4();
      v2(v86);
      OUTLINED_FUNCTION_9_3();
      sub_21725CE44(v87);
      if ((a2 & 1) == 0)
      {
        goto LABEL_61;
      }

      sub_21725CE44(&v93);
LABEL_51:
      sub_217541740(v100);
      v73 = 1;
      return v73 & 1;
  }
}

uint64_t sub_21753E61C(uint64_t a1, uint64_t a2)
{
  sub_21754240C(a1, v16, &qword_27CB29208, &qword_217775F10);
  sub_21754240C(a2, v18, &qword_27CB29208, &qword_217775F10);
  if (v17)
  {
    if (v19)
    {
      sub_2171F3F0C(v16, v13);
      sub_2171F3F0C(v18, v12);
      v3 = v14;
      v4 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v5 = *(v4 + 48);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB293E8, &unk_217776CE0);
      v7 = v5(v12, v6, v3, v4);
      __swift_destroy_boxed_opaque_existential_1(v12);
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1(v13);
      return v7 & 1;
    }

    sub_2171F3F0C(v16, v13);
    v12[0] = v18[0];
LABEL_7:
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v9 + 48))(v12, &type metadata for LegacyModelLibrarySearchTopResult.Placeholder, v8, v9);

    goto LABEL_8;
  }

  if (v19)
  {
    v12[0] = v16[0];
    sub_2171F3F0C(v18, v13);
    goto LABEL_7;
  }

  if (*&v16[0] == *&v18[0] && *(&v16[0] + 1) == *(&v18[0] + 1))
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_217753058();
  }

  return v7 & 1;
}

uint64_t sub_21753E7E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D75626C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1735290739 && a2 == 0xE400000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6C616E7265746E69 && a2 == 0xEC0000006D657449)
          {

            return 5;
          }

          else
          {
            v11 = sub_217753058();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21753E9D4(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x747369747261;
      break;
    case 2:
      result = 0x646956636973756DLL;
      break;
    case 3:
      result = 0x7473696C79616C70;
      break;
    case 4:
      result = 1735290739;
      break;
    case 5:
      result = 0x6C616E7265746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21753EA84(uint64_t a1)
{
  v2 = sub_217541AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21753EAC0(uint64_t a1)
{
  v2 = sub_217541AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21753EAFC(uint64_t a1)
{
  v2 = sub_217541A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21753EB38(uint64_t a1)
{
  v2 = sub_217541A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21753EB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21753E7E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21753EBA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21753E9CC();
  *a1 = result;
  return result;
}

uint64_t sub_21753EBCC(uint64_t a1)
{
  v2 = sub_217541770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21753EC08(uint64_t a1)
{
  v2 = sub_217541770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21753EC44(uint64_t a1)
{
  v2 = sub_2175417C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21753EC80(uint64_t a1)
{
  v2 = sub_2175417C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21753ECBC(uint64_t a1)
{
  v2 = sub_217541968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21753ECF8(uint64_t a1)
{
  v2 = sub_217541968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21753ED34(uint64_t a1)
{
  v2 = sub_2175418C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21753ED70(uint64_t a1)
{
  v2 = sub_2175418C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21753EDAC(uint64_t a1)
{
  v2 = sub_217541818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21753EDE8(uint64_t a1)
{
  v2 = sub_217541818();

  return MEMORY[0x2821FE720](a1, v2);
}

void LegacyModelLibrarySearchTopResult.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  a22 = v25;
  a23 = v26;
  v104 = v24;
  v107 = v23;
  v28 = v27;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29218, &qword_217775F28);
  OUTLINED_FUNCTION_0_0(v102);
  v101 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32, v33);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v34);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29220, &qword_217775F30);
  OUTLINED_FUNCTION_0_0(v99);
  v98 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38, v39);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v40);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29228, &qword_217775F38);
  OUTLINED_FUNCTION_0_0(v97);
  v96 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44, v45);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v46);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29230, &qword_217775F40);
  OUTLINED_FUNCTION_0_0(v95);
  v94[2] = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v50, v51);
  v53 = v94 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29238, &qword_217775F48);
  OUTLINED_FUNCTION_0_0(v54);
  v94[1] = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v58, v59);
  v61 = v94 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29240, &qword_217775F50);
  OUTLINED_FUNCTION_0_0(v62);
  v94[0] = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v66, v67);
  v69 = v94 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29248, &qword_217775F58);
  v105 = OUTLINED_FUNCTION_0_0(v70);
  v106 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v74, v75);
  v77 = v94 - v76;
  v78 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_217541770();
  v103 = v77;
  sub_2177532F8();
  sub_21753DFEC(v107, &v110);
  switch(v112)
  {
    case 1:
      OUTLINED_FUNCTION_4_73();
      a13 = 1;
      sub_217541A10();
      OUTLINED_FUNCTION_20_32();
      sub_217541A64();
      sub_217752F88();
      OUTLINED_FUNCTION_12_1(&v113);
      v88(v61, v54);
      sub_217284498(&v108);
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_4_73();
      a13 = 2;
      sub_217541968();
      v82 = v105;
      v83 = v103;
      sub_217752EE8();
      sub_2175419BC();
      v84 = v95;
      sub_217752F88();
      OUTLINED_FUNCTION_12_1(&a9);
      v85(v53, v84);
      sub_217283C08(&v108);
      (*(v106 + 8))(v83, v82);
      goto LABEL_8;
    case 3:
      OUTLINED_FUNCTION_4_73();
      a13 = 3;
      sub_2175418C0();
      OUTLINED_FUNCTION_20_32();
      sub_217541914();
      OUTLINED_FUNCTION_72_12(&a16);
      v86 = OUTLINED_FUNCTION_6_56(&a15);
      v87(v86);
      sub_21726B8C4(&v108);
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_4_73();
      a13 = 4;
      sub_217541818();
      OUTLINED_FUNCTION_20_32();
      sub_21754186C();
      OUTLINED_FUNCTION_72_12(&a19);
      v80 = OUTLINED_FUNCTION_6_56(&a18);
      v81(v80);
      sub_217283B58(&v108);
      goto LABEL_7;
    case 5:
      v108 = v110;
      *v109 = *v111;
      *&v109[9] = *&v111[9];
      a13 = 5;
      sub_2175417C4();
      v89 = v100;
      v90 = v105;
      v91 = v103;
      sub_217752EE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29208, &qword_217775F10);
      sub_2175423BC(&qword_27CB29260);
      v92 = v102;
      sub_217752F88();
      OUTLINED_FUNCTION_12_1(&a21);
      v93(v89, v92);
      sub_2171F0790(&v108, &qword_27CB29208, &qword_217775F10);
      (*(v106 + 8))(v91, v90);
      goto LABEL_8;
    default:
      OUTLINED_FUNCTION_4_73();
      a13 = 0;
      sub_217541AB8();
      OUTLINED_FUNCTION_20_32();
      sub_217541B0C();
      sub_217752F88();
      OUTLINED_FUNCTION_12_1(&v112);
      v79(v69, v62);
      sub_21725CE44(&v108);
LABEL_7:
      (*(v106 + 8))(v53, v77);
LABEL_8:
      OUTLINED_FUNCTION_170();
      return;
  }
}

uint64_t LegacyModelLibrarySearchTopResult.hash(into:)(uint64_t a1)
{
  v3 = v1;
  sub_21753DFEC(v3, &v30);
  switch(v32)
  {
    case 1:
      v18 = OUTLINED_FUNCTION_5_58();
      MEMORY[0x21CEA3550](1, v18);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1((v2 + 16), *&v24[24]);
      v19 = OUTLINED_FUNCTION_3_4();
      v20(v19);
      result = sub_217284498(&v23);
      break;
    case 2:
      v12 = OUTLINED_FUNCTION_5_58();
      MEMORY[0x21CEA3550](2, v12);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1((v2 + 16), *&v24[24]);
      v13 = OUTLINED_FUNCTION_3_4();
      v14(v13);
      result = sub_217283C08(&v23);
      break;
    case 3:
      v15 = OUTLINED_FUNCTION_5_58();
      MEMORY[0x21CEA3550](3, v15);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1((v2 + 16), *&v24[24]);
      v16 = OUTLINED_FUNCTION_3_4();
      v17(v16);
      result = sub_21726B8C4(&v23);
      break;
    case 4:
      v9 = OUTLINED_FUNCTION_5_58();
      MEMORY[0x21CEA3550](4, v9);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1((v2 + 16), *&v24[24]);
      v10 = OUTLINED_FUNCTION_3_4();
      v11(v10);
      result = sub_217283B58(&v23);
      break;
    case 5:
      v23 = v30;
      *v24 = v31[0];
      *&v24[9] = *(v31 + 9);
      MEMORY[0x21CEA3550](5);
      sub_21754240C(&v23, v28, &qword_27CB29208, &qword_217775F10);
      if (v29)
      {
        sub_2171F3F0C(v28, v25);
        v21 = v26;
        v22 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        (*(v22 + 56))(a1, v21, v22);
        sub_2171F0790(&v23, &qword_27CB29208, &qword_217775F10);
        result = __swift_destroy_boxed_opaque_existential_1(v25);
      }

      else
      {
        sub_217751DE8();
        sub_217751FF8();
        swift_bridgeObjectRelease_n();
        result = sub_2171F0790(&v23, &qword_27CB29208, &qword_217775F10);
      }

      break;
    default:
      v5 = OUTLINED_FUNCTION_5_58();
      MEMORY[0x21CEA3550](0, v5);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1((v2 + 16), *&v24[24]);
      v6 = OUTLINED_FUNCTION_3_4();
      v7(v6);
      result = sub_21725CE44(&v23);
      break;
  }

  return result;
}

uint64_t LegacyModelLibrarySearchTopResult.hashValue.getter()
{
  sub_2177531E8();
  LegacyModelLibrarySearchTopResult.hash(into:)(v1);
  return sub_217753238();
}

void LegacyModelLibrarySearchTopResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v138 = v25;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292B8, &qword_217775F60);
  OUTLINED_FUNCTION_0_0(v131);
  v136 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29, v30);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v31);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292C0, &qword_217775F68);
  OUTLINED_FUNCTION_0_0(v129);
  v137 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35, v36);
  OUTLINED_FUNCTION_150();
  v140 = v37;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292C8, &qword_217775F70);
  OUTLINED_FUNCTION_0_0(v130);
  v135 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41, v42);
  OUTLINED_FUNCTION_150();
  v139 = v43;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292D0, &qword_217775F78);
  OUTLINED_FUNCTION_0_0(v128);
  v134 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v47, v48);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v49);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292D8, &qword_217775F80);
  OUTLINED_FUNCTION_0_0(v127);
  v133 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v53, v54);
  v56 = &v122 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292E0, &qword_217775F88);
  OUTLINED_FUNCTION_0_0(v57);
  v132 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v61, v62);
  v64 = &v122 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292E8, &unk_217775F90);
  OUTLINED_FUNCTION_0_0(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v68, v69);
  v70 = v24[3];
  v71 = v24[4];
  v141 = v24;
  __swift_project_boxed_opaque_existential_1(v24, v70);
  sub_217541770();
  sub_2177532C8();
  if (v20)
  {
    goto LABEL_8;
  }

  v125 = v64;
  v124 = v57;
  v126 = v56;
  v72 = v140;
  v73 = sub_217752EB8();
  sub_21733CF68(v73, 0);
  if (v75 == v76 >> 1)
  {
LABEL_7:
    v85 = sub_217752B48();
    swift_allocError();
    v87 = v86;
    v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
    *v87 = &type metadata for LegacyModelLibrarySearchTopResult;
    sub_217752DF8();
    sub_217752B08();
    v89 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_41_0(v85);
    (*(v90 + 104))(v87);
    swift_willThrow();
    swift_unknownObjectRelease();
    v91 = OUTLINED_FUNCTION_45_24();
    v92(v91);
LABEL_8:
    v93 = v141;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v93);
    OUTLINED_FUNCTION_170();
    return;
  }

  v123 = 0;
  if (v75 < (v76 >> 1))
  {
    v77 = *(v74 + v75);
    sub_21733CF64(v75 + 1);
    v79 = v78;
    v81 = v80;
    swift_unknownObjectRelease();
    if (v79 == v81 >> 1)
    {
      v82 = v123;
      v83 = v138;
      v84 = v137;
      switch(v77)
      {
        case 1:
          v142 = 1;
          sub_217541A10();
          OUTLINED_FUNCTION_16_44();
          sub_217499AFC();
          OUTLINED_FUNCTION_19_27();
          OUTLINED_FUNCTION_23_38();
          swift_unknownObjectRelease();
          v113 = OUTLINED_FUNCTION_6_56(&a12);
          v114(v113);
          v115 = OUTLINED_FUNCTION_18_37();
          v116(v115);
          v104 = 1;
          goto LABEL_17;
        case 2:
          v142 = 2;
          sub_217541968();
          OUTLINED_FUNCTION_16_44();
          sub_217499488();
          OUTLINED_FUNCTION_19_27();
          OUTLINED_FUNCTION_23_38();
          swift_unknownObjectRelease();
          v100 = OUTLINED_FUNCTION_6_56(&a13);
          v101(v100);
          v102 = OUTLINED_FUNCTION_18_37();
          v103(v102);
          v104 = 2;
          goto LABEL_17;
        case 3:
          v142 = 3;
          sub_2175418C0();
          OUTLINED_FUNCTION_16_44();
          sub_21749A6F0();
          OUTLINED_FUNCTION_19_27();
          OUTLINED_FUNCTION_23_38();
          swift_unknownObjectRelease();
          v105 = OUTLINED_FUNCTION_6_56(&a14);
          v106(v105);
          v107 = OUTLINED_FUNCTION_18_37();
          v108(v107);
          v104 = 3;
LABEL_17:
          v143 = v104;
          goto LABEL_18;
        case 4:
          v142 = 4;
          sub_217541818();
          v94 = v72;
          sub_217752DE8();
          if (v82)
          {
            v96 = OUTLINED_FUNCTION_45_24();
            v97(v96);
            swift_unknownObjectRelease();
            goto LABEL_8;
          }

          sub_217499260();
          v95 = v129;
          sub_217752EA8();
          OUTLINED_FUNCTION_23_38();
          swift_unknownObjectRelease();
          (*(v84 + 8))(v94, v95);
          v98 = OUTLINED_FUNCTION_18_37();
          v99(v98);
          v143 = 4;
          v93 = OUTLINED_FUNCTION_15_43();
          v83 = v138;
LABEL_19:
          v117 = v145;
          *v83 = v144;
          v83[1] = v117;
          v83[2] = *v146;
          *(v83 + 41) = *&v146[9];
          break;
        case 5:
          v142 = 5;
          sub_2175417C4();
          OUTLINED_FUNCTION_16_44();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29208, &qword_217775F10);
          sub_2175423BC(&qword_27CB292F0);
          sub_217752EA8();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_6_56(&a15);
          v119(v118);
          v120 = OUTLINED_FUNCTION_45_24();
          v121(v120);
          v143 = 5;
          v93 = OUTLINED_FUNCTION_15_43();
          goto LABEL_19;
        default:
          v142 = 0;
          sub_217541AB8();
          OUTLINED_FUNCTION_16_44();
          sub_217498ED8();
          OUTLINED_FUNCTION_19_27();
          OUTLINED_FUNCTION_23_38();
          swift_unknownObjectRelease();
          v109 = OUTLINED_FUNCTION_6_56(&a11);
          v110(v109);
          v111 = OUTLINED_FUNCTION_18_37();
          v112(v111);
          v143 = 0;
LABEL_18:
          v93 = OUTLINED_FUNCTION_15_43();
          goto LABEL_19;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_217540264()
{
  sub_2177531E8();
  LegacyModelLibrarySearchTopResult.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2175402A0@<X0>(uint64_t *a1@<X8>)
{
  result = LegacyModelLibrarySearchTopResult.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void LegacyModelLibrarySearchTopResult.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memcpy(__dst, __src, 0x161uLL);
  if (([a2 respondsToSelector_] & 1) != 0 && (v8 = objc_msgSend(a2, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v9 = v8;
    v10 = sub_217751D98();
  }

  else
  {
    v10 = sub_217751DC8();
  }

  v11 = sub_21729FAE8(v10);
  v12 = sub_217751DE8();
  v13 = sub_21774C69C(v12);
  v14 = static LegacyModel.innerModelObject(for:)(a2);
  if (v14)
  {
    v15 = v14;

    switch(v13)
    {
      case 1:
        if (qword_280BE6270 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_32_27(&xmmword_280BE6278);
        OUTLINED_FUNCTION_74(v99);
        v100 = OUTLINED_FUNCTION_75_13();
        v101 = OUTLINED_FUNCTION_73_14(v100, sel_identifierSetFromLegacyModelObject_);
        OUTLINED_FUNCTION_14_38();
        v102 = sub_217751DE8();
        OUTLINED_FUNCTION_21_33(v102, v103, v104, v105, v106, v107, v108, v109, v190, v200, v210, v220, v230, a4, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254, *(&v254 + 1), *v255, *&v255[8], *&v255[16], *&v255[24], v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
        sub_217269F50(__dst);

        v110 = OUTLINED_FUNCTION_28_33();
        v118 = OUTLINED_FUNCTION_12_36(v110, v111, v112, v113, v114, v115, v116, v117, v195, v205, v215, v225, v235, v245, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254);
        Artist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v118, v119, v120, v121, v122);
        swift_unknownObjectRelease();
        v123 = OUTLINED_FUNCTION_53_17();
        OUTLINED_FUNCTION_17_35(v123, v124, v125, v126, v127, v128, v129, v130, v196, v206, v216, v226, v236, v246, v250, *v251, v131, *&v251[16]);
        v98 = 1;
        goto LABEL_38;
      case 2:
        if (([v15 &off_27822ACF8] & 1) != 0 && (v71 = objc_msgSend(v15, &off_27822AE20 + 7)) != 0)
        {
          v11 = v71;
          v72 = sub_217751D98();
        }

        else
        {
          v72 = sub_217751DC8();
        }

        sub_2173ACA4C(0xD00000000000001BLL, 0x80000002177A9730, v72);

        if (*&v255[8])
        {
          if (swift_dynamicCast())
          {
            v132 = v250;
            goto LABEL_29;
          }
        }

        else
        {
          sub_2171F0790(&v254, &qword_27CB2AD40, &qword_2177583F0);
        }

        v132 = 0;
LABEL_29:
        if ([objc_opt_self() playlistTypeForRawValue_] == 4)
        {
          sub_21754240C(a3, v294, &qword_27CB27590, &qword_21776ADF0);
          v133 = dynamic_cast_existential_1_conditional(&type metadata for LegacyModelLibrarySearchTopResult.Placeholder);
          if (v133)
          {
            v135 = v133;
            v136 = (*(v134 + 16))();
            OUTLINED_FUNCTION_60_20(v136, v137, v138, v139, v140, v141, v142, v143, v190, v200, v210, v220, v230, a4);
            sub_21754240C(v294, &v250, &qword_27CB27590, &qword_21776ADF0);
            v144 = *(v11[2] + 16);
            v292 = v135;
            v293 = v11;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v291);
            v153 = OUTLINED_FUNCTION_47_20(boxed_opaque_existential_0, v146, v147, v148, v149, v150, v151, v152, v197, v207, v217, v227, v237, v247, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254);
            v144(v153);
            swift_unknownObjectRelease();
            v70 = a3;
LABEL_32:
            sub_2171F0790(v70, &qword_27CB27590, &qword_21776ADF0);
            sub_2171F0790(v294, &qword_27CB27590, &qword_21776ADF0);
            sub_21749A32C(v291, &v250);
            v251[24] = 1;
            __swift_destroy_boxed_opaque_existential_1(v291);
          }

          else
          {
LABEL_33:
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            sub_2171F0790(a3, &qword_27CB27590, &qword_21776ADF0);
            sub_2171F0790(v294, &qword_27CB27590, &qword_21776ADF0);
            v154 = __dst[0];
            v155 = __dst[1];
            sub_217751DE8();
            sub_217269F50(__dst);
            *&v250 = v154;
            *(&v250 + 1) = v155;
            v251[24] = 0;
          }

          *&v255[9] = *&v251[9];
          v254 = v250;
          *v255 = *v251;
          v156 = *v251;
          *a5 = v250;
          *(a5 + 16) = v156;
          *(a5 + 25) = *&v255[9];
          v98 = 5;
        }

        else
        {
          if (qword_280BE6220 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_32_27(&xmmword_280BE6228);
          OUTLINED_FUNCTION_74(v157);
          v158 = OUTLINED_FUNCTION_75_13();
          v159 = OUTLINED_FUNCTION_73_14(v158, sel_identifierSetFromLegacyModelObject_);
          OUTLINED_FUNCTION_14_38();
          v160 = sub_217751DE8();
          OUTLINED_FUNCTION_21_33(v160, v161, v162, v163, v164, v165, v166, v167, v190, v200, v210, v220, v230, a4, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254, *(&v254 + 1), *v255, *&v255[8], *&v255[16], *&v255[24], v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
          sub_217269F50(__dst);

          v168 = OUTLINED_FUNCTION_28_33();
          v176 = OUTLINED_FUNCTION_12_36(v168, v169, v170, v171, v172, v173, v174, v175, v198, v208, v218, v228, v238, v248, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254);
          Playlist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v176, v177, v178, v179, v180);
          swift_unknownObjectRelease();
          v181 = OUTLINED_FUNCTION_53_17();
          OUTLINED_FUNCTION_17_35(v181, v182, v183, v184, v185, v186, v187, v188, v199, v209, v219, v229, v239, v249, v250, *v251, v189, *&v251[16]);
          v98 = 3;
        }

LABEL_38:
        *(a5 + 56) = v98;
        break;
      case 3:
        if (qword_280BE62A0 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_32_27(&xmmword_280BE62A8);
        OUTLINED_FUNCTION_74(v73);
        v74 = OUTLINED_FUNCTION_75_13();
        v75 = OUTLINED_FUNCTION_73_14(v74, sel_identifierSetFromLegacyModelObject_);
        OUTLINED_FUNCTION_14_38();
        v76 = sub_217751DE8();
        OUTLINED_FUNCTION_21_33(v76, v77, v78, v79, v80, v81, v82, v83, v190, v200, v210, v220, v230, a4, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254, *(&v254 + 1), *v255, *&v255[8], *&v255[16], *&v255[24], v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
        sub_217269F50(__dst);

        v84 = OUTLINED_FUNCTION_28_33();
        v92 = OUTLINED_FUNCTION_12_36(v84, v85, v86, v87, v88, v89, v90, v91, v194, v204, v214, v224, v234, v244, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254);
        Track.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v95, v92, v93, v94);
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_53_17();
        v96 = v253;
        v97 = *v251;
        *a5 = v250;
        *(a5 + 16) = v97;
        *(a5 + 32) = *&v251[16];
        *(a5 + 48) = v252;
        if (v96)
        {
          v98 = 2;
        }

        else
        {
          v98 = 4;
        }

        goto LABEL_38;
      case 4:
        sub_21754240C(a3, v294, &qword_27CB27590, &qword_21776ADF0);
        v49 = dynamic_cast_existential_1_conditional(&type metadata for LegacyModelLibrarySearchTopResult.Placeholder);
        if (!v49)
        {
          goto LABEL_33;
        }

        v51 = v49;
        v52 = (*(v50 + 16))();
        OUTLINED_FUNCTION_60_20(v52, v53, v54, v55, v56, v57, v58, v59, v190, v200, v210, v220, v230, a4);
        sub_21754240C(v294, &v250, &qword_27CB27590, &qword_21776ADF0);
        v60 = *(v11[2] + 16);
        v292 = v51;
        v293 = v11;
        v61 = __swift_allocate_boxed_opaque_existential_0(v291);
        v69 = OUTLINED_FUNCTION_47_20(v61, v62, v63, v64, v65, v66, v67, v68, v193, v203, v213, v223, v233, v243, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254);
        v60(v69);
        swift_unknownObjectRelease();
        v70 = a3;
        goto LABEL_32;
      default:
        if (qword_280BE62F0 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_32_27(&xmmword_280BE62F8);
        OUTLINED_FUNCTION_74(v16);
        v17 = OUTLINED_FUNCTION_75_13();
        v18 = OUTLINED_FUNCTION_73_14(v17, sel_identifierSetFromLegacyModelObject_);
        OUTLINED_FUNCTION_14_38();
        v19 = sub_217751DE8();
        OUTLINED_FUNCTION_21_33(v19, v20, v21, v22, v23, v24, v25, v26, v190, v200, v210, v220, v230, a4, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254, *(&v254 + 1), *v255, *&v255[8], *&v255[16], *&v255[24], v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
        sub_217269F50(__dst);

        v27 = OUTLINED_FUNCTION_28_33();
        v35 = OUTLINED_FUNCTION_12_36(v27, v28, v29, v30, v31, v32, v33, v34, v191, v201, v211, v221, v231, v241, v250, *(&v250 + 1), *v251, *&v251[8], *&v251[16], *&v251[24], v252, v253, v254);
        Album.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v35, v36, v37, v38, v39);
        swift_unknownObjectRelease();
        v40 = OUTLINED_FUNCTION_53_17();
        OUTLINED_FUNCTION_17_35(v40, v41, v42, v43, v44, v45, v46, v47, v192, v202, v212, v222, v232, v242, v250, *v251, v48, *&v251[16]);
        *(a5 + 56) = 0;
        return;
    }
  }

  else
  {
    sub_217752D08();
    __break(1u);
  }
}

uint64_t LegacyModelLibrarySearchTopResult.init(propertyProvider:underlyingLegacyModelObjectType:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 48))(v178, v6, v7);
  v8 = v178[1];
  if (qword_280BE8A88 != -1)
  {
    OUTLINED_FUNCTION_43_17();
  }

  OUTLINED_FUNCTION_31_0(&xmmword_280BE8A90);
  v10 = v10 && v9 == v8;
  if (v10 || (OUTLINED_FUNCTION_24_30() & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_280BE8AE8 != -1)
  {
    OUTLINED_FUNCTION_42_23();
  }

  OUTLINED_FUNCTION_31_0(&xmmword_280BE8AF0);
  v12 = v10 && v11 == v8;
  if (v12 || (OUTLINED_FUNCTION_24_30() & 1) != 0)
  {
LABEL_15:

    OUTLINED_FUNCTION_63_17(v13, v14, v15, v16, v17, v18, v19, v20, v173[0]);
    v21 = v174;
    __swift_project_boxed_opaque_existential_1(v173, v174);
    v22 = OUTLINED_FUNCTION_7_49();
    v23(v22);
    OUTLINED_FUNCTION_62_16();
    v24 = sub_217269F50(v177);
    *&v175[0] = v21;
    *(&v175[0] + 1) = v8;
    v32 = OUTLINED_FUNCTION_54_17(v24, v25, v26, v27, v28, v29, v30, v31, v173[0]);
    v34 = __swift_project_boxed_opaque_existential_1(v32, v33);
    OUTLINED_FUNCTION_10_42(v34, v35, v36, v37, v38, v39, v40);
    __swift_destroy_boxed_opaque_existential_1(v173);
    v41 = 0;
  }

  else
  {
    if (qword_280BE4A68 != -1)
    {
      OUTLINED_FUNCTION_41_22();
    }

    OUTLINED_FUNCTION_31_0(&xmmword_280BE4A70);
    v45 = v10 && v44 == v8;
    if (v45 || (OUTLINED_FUNCTION_24_30() & 1) != 0)
    {
      goto LABEL_31;
    }

    if (qword_280BE4B80 != -1)
    {
      OUTLINED_FUNCTION_40_23();
    }

    OUTLINED_FUNCTION_31_0(&qword_280BE4B88);
    v47 = v10 && v46 == v8;
    if (v47 || (OUTLINED_FUNCTION_24_30() & 1) != 0)
    {
LABEL_31:

      OUTLINED_FUNCTION_63_17(v48, v49, v50, v51, v52, v53, v54, v55, v173[0]);
      v56 = v174;
      __swift_project_boxed_opaque_existential_1(v173, v174);
      v57 = OUTLINED_FUNCTION_7_49();
      v58(v57);
      OUTLINED_FUNCTION_62_16();
      v59 = sub_217269F50(v177);
      *&v175[0] = v56;
      *(&v175[0] + 1) = v8;
      v67 = OUTLINED_FUNCTION_54_17(v59, v60, v61, v62, v63, v64, v65, v66, v173[0]);
      v69 = __swift_project_boxed_opaque_existential_1(v67, v68);
      OUTLINED_FUNCTION_10_42(v69, v70, v71, v72, v73, v74, v75);
      __swift_destroy_boxed_opaque_existential_1(v173);
      v41 = 1;
    }

    else
    {
      if (qword_280BE8B28 != -1)
      {
        OUTLINED_FUNCTION_39_18();
      }

      OUTLINED_FUNCTION_31_0(&qword_280BE8B30);
      v77 = v10 && v76 == v8;
      if (v77 || (OUTLINED_FUNCTION_24_30() & 1) != 0)
      {
        goto LABEL_46;
      }

      if (qword_280BE8B68 != -1)
      {
        OUTLINED_FUNCTION_38_22();
      }

      OUTLINED_FUNCTION_31_0(&qword_280BE8B70);
      v79 = v10 && v78 == v8;
      if (v79 || (OUTLINED_FUNCTION_24_30() & 1) != 0)
      {
LABEL_46:

        OUTLINED_FUNCTION_63_17(v80, v81, v82, v83, v84, v85, v86, v87, v173[0]);
        v88 = v174;
        __swift_project_boxed_opaque_existential_1(v173, v174);
        v89 = OUTLINED_FUNCTION_7_49();
        v90(v89);
        OUTLINED_FUNCTION_62_16();
        v91 = sub_217269F50(v177);
        *&v175[0] = v88;
        *(&v175[0] + 1) = v8;
        v99 = OUTLINED_FUNCTION_54_17(v91, v92, v93, v94, v95, v96, v97, v98, v173[0]);
        v101 = __swift_project_boxed_opaque_existential_1(v99, v100);
        OUTLINED_FUNCTION_10_42(v101, v102, v103, v104, v105, v106, v107);
        __swift_destroy_boxed_opaque_existential_1(v173);
        v41 = 2;
      }

      else
      {
        if (qword_280BE8A38 != -1)
        {
          OUTLINED_FUNCTION_37_25();
        }

        OUTLINED_FUNCTION_31_0(&qword_280BE8A40);
        v109 = v10 && v108 == v8;
        if (!v109 && (OUTLINED_FUNCTION_24_30() & 1) == 0)
        {
          if (qword_280BE8AA8 != -1)
          {
            OUTLINED_FUNCTION_36_25();
          }

          OUTLINED_FUNCTION_31_0(&qword_280BE8AB0);
          v111 = v10 && v110 == v8;
          if (!v111 && (OUTLINED_FUNCTION_24_30() & 1) == 0)
          {
            if (qword_280BEA1C8 != -1)
            {
              OUTLINED_FUNCTION_35_24();
            }

            OUTLINED_FUNCTION_31_0(&xmmword_280BEA1D0);
            v141 = v10 && v140 == v8;
            if (v141 || (OUTLINED_FUNCTION_24_30() & 1) != 0)
            {
              goto LABEL_77;
            }

            if (qword_280BE8B08 != -1)
            {
              OUTLINED_FUNCTION_34_26();
            }

            OUTLINED_FUNCTION_31_0(&qword_280BE8B10);
            if (v10 && v142 == v8)
            {
LABEL_77:
            }

            else
            {
              v144 = OUTLINED_FUNCTION_24_30();

              if ((v144 & 1) == 0)
              {
                sub_21749A32C(a1, v177);
                sub_217540F94(v177, v5, v175);
                v41 = 5;
                goto LABEL_16;
              }
            }

            OUTLINED_FUNCTION_63_17(v145, v146, v147, v148, v149, v150, v151, v152, v173[0]);
            v153 = v174;
            __swift_project_boxed_opaque_existential_1(v173, v174);
            v154 = OUTLINED_FUNCTION_7_49();
            v155(v154);
            OUTLINED_FUNCTION_62_16();
            v156 = sub_217269F50(v177);
            *&v175[0] = v153;
            *(&v175[0] + 1) = v8;
            v164 = OUTLINED_FUNCTION_54_17(v156, v157, v158, v159, v160, v161, v162, v163, v173[0]);
            v166 = __swift_project_boxed_opaque_existential_1(v164, v165);
            OUTLINED_FUNCTION_10_42(v166, v167, v168, v169, v170, v171, v172);
            __swift_destroy_boxed_opaque_existential_1(v173);
            v41 = 4;
            goto LABEL_16;
          }
        }

        OUTLINED_FUNCTION_63_17(v112, v113, v114, v115, v116, v117, v118, v119, v173[0]);
        v120 = v174;
        __swift_project_boxed_opaque_existential_1(v173, v174);
        v121 = OUTLINED_FUNCTION_7_49();
        v122(v121);
        OUTLINED_FUNCTION_62_16();
        v123 = sub_217269F50(v177);
        *&v175[0] = v120;
        *(&v175[0] + 1) = v8;
        v131 = OUTLINED_FUNCTION_54_17(v123, v124, v125, v126, v127, v128, v129, v130, v173[0]);
        v133 = __swift_project_boxed_opaque_existential_1(v131, v132);
        OUTLINED_FUNCTION_10_42(v133, v134, v135, v136, v137, v138, v139);
        __swift_destroy_boxed_opaque_existential_1(v173);
        v41 = 3;
      }
    }
  }

LABEL_16:
  v42 = v175[1];
  *a3 = v175[0];
  *(a3 + 16) = v42;
  *(a3 + 32) = v175[2];
  *(a3 + 48) = v176;
  *(a3 + 56) = v41;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217540F94@<X0>(uint64_t *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for LegacyModelLibrarySearchTopResult.Placeholder))
  {
    v7 = (*(v6 + 16))();
    v9 = v8;
    sub_21749A32C(a1, &v20);
    v18 = a2;
    v10 = *(v9 + 16);
    v11 = *(v10 + 24);
    v19[3] = v7;
    v19[4] = v9;
    __swift_allocate_boxed_opaque_existential_0(v19);
    v11(&v20, &v18, v7, v10);
    sub_21749A32C(v19, &v20);
    v21[24] = 1;
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    (*(v13 + 24))(v19, v12, v13);
    v15 = v19[0];
    v14 = v19[1];
    sub_217751DE8();
    sub_217269F50(v19);
    *&v20 = v15;
    *(&v20 + 1) = v14;
    v21[24] = 0;
  }

  v16 = *v21;
  *a3 = v20;
  a3[1] = v16;
  *(a3 + 25) = *&v21[9];
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LegacyModelLibrarySearchTopResult.underlyingLegacyModelObjectType.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  sub_21753DFEC(v1, &v13);
  switch(v15)
  {
    case 1:
      result = sub_217541740(&v13);
      v3 = 2;
      break;
    case 2:
      result = sub_217541740(&v13);
      v3 = 12;
      break;
    case 3:
      result = sub_217541740(&v13);
      v3 = 15;
      break;
    case 4:
      result = sub_217541740(&v13);
      v3 = 25;
      break;
    case 5:
      v11 = v13;
      v12[0] = v14[0];
      *(v12 + 9) = *(v14 + 9);
      sub_21754240C(&v11, v9, &qword_27CB29208, &qword_217775F10);
      if (v10)
      {
        sub_2171F3F0C(v9, v6 + 1);
        v5 = v7;
        v4 = v8;
        __swift_project_boxed_opaque_existential_1((v6 + 1), v7);
        (*(*(v4 + 16) + 32))(v6, v5);
        sub_2171F0790(&v11, &qword_27CB29208, &qword_217775F10);
        v3 = v6[0];
        result = __swift_destroy_boxed_opaque_existential_1((v6 + 1));
      }

      else
      {
        sub_2171F0790(&v11, &qword_27CB29208, &qword_217775F10);
        result = sub_2171F0790(v9, &qword_27CB29208, &qword_217775F10);
        v3 = 9;
      }

      break;
    default:
      result = sub_217541740(&v13);
      v3 = 0;
      break;
  }

  *v0 = v3;
  return result;
}

uint64_t LegacyModelLibrarySearchTopResult.convertToRawDictionary(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = sub_21753DFEC(v1, &v42);
  switch(v44)
  {
    case 1:
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v38, *(&v38 + 1), *&v39[0], *(&v39[0] + 1), *&v39[1], *(&v39[1] + 1), v40, v41, v42, *(&v42 + 1), *&v43[0], *(&v43[0] + 1), v43[1]);
      OUTLINED_FUNCTION_49_23();
      v31 = OUTLINED_FUNCTION_11_7();
      sub_21753D3EC(v31, v32, v33, v34);
      OUTLINED_FUNCTION_9_3();
      sub_217284498(v35);
      break;
    case 2:
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v38, *(&v38 + 1), *&v39[0], *(&v39[0] + 1), *&v39[1], *(&v39[1] + 1), v40, v41, v42, *(&v42 + 1), *&v43[0], *(&v43[0] + 1), v43[1]);
      OUTLINED_FUNCTION_50_18();
      v21 = OUTLINED_FUNCTION_11_7();
      sub_21753D3EC(v21, v22, v23, v24);
      OUTLINED_FUNCTION_9_3();
      sub_217283C08(v25);
      break;
    case 3:
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v38, *(&v38 + 1), *&v39[0], *(&v39[0] + 1), *&v39[1], *(&v39[1] + 1), v40, v41, v42, *(&v42 + 1), *&v43[0], *(&v43[0] + 1), v43[1]);
      OUTLINED_FUNCTION_52_21();
      v26 = OUTLINED_FUNCTION_11_7();
      sub_21753D3EC(v26, v27, v28, v29);
      OUTLINED_FUNCTION_9_3();
      sub_21726B8C4(v30);
      break;
    case 4:
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v38, *(&v38 + 1), *&v39[0], *(&v39[0] + 1), *&v39[1], *(&v39[1] + 1), v40, v41, v42, *(&v42 + 1), *&v43[0], *(&v43[0] + 1), v43[1]);
      OUTLINED_FUNCTION_51_17();
      v16 = OUTLINED_FUNCTION_11_7();
      sub_21753D3EC(v16, v17, v18, v19);
      OUTLINED_FUNCTION_9_3();
      sub_217283B58(v20);
      break;
    case 5:
      v38 = v42;
      v39[0] = v43[0];
      *(v39 + 9) = *(v43 + 9);
      v36 = OUTLINED_FUNCTION_11_7();
      v2 = sub_217541484(v36);
      sub_2171F0790(&v38, &qword_27CB29208, &qword_217775F10);
      break;
    default:
      OUTLINED_FUNCTION_0_83(v3, v4, v5, v6, v7, v8, v9, v10, v38, *(&v38 + 1), *&v39[0], *(&v39[0] + 1), *&v39[1], *(&v39[1] + 1), v40, v41, v42, *(&v42 + 1), *&v43[0], *(&v43[0] + 1), v43[1]);
      OUTLINED_FUNCTION_48_17();
      v11 = OUTLINED_FUNCTION_11_7();
      sub_21753D3EC(v11, v12, v13, v14);
      OUTLINED_FUNCTION_9_3();
      sub_21725CE44(v15);
      break;
  }

  return v2;
}

uint64_t sub_217541484(char a1)
{
  sub_21754240C(v1, v11, &qword_27CB29208, &qword_217775F10);
  if (v12)
  {
    sub_2171F3F0C(v11, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v7 = a1;
    v5 = (*(*(v4 + 16) + 40))(&v7, v3);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v5 = sub_217751DC8();
    sub_2171F0790(v11, &qword_27CB29208, &qword_217775F10);
  }

  return v5;
}

BOOL sub_217541574()
{
  v0 = sub_217752DC8();

  return v0 != 0;
}

BOOL sub_2175415E4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_217541574();
  *a2 = result;
  return result;
}

unint64_t sub_217541618@<X0>(void *a1@<X8>)
{
  result = sub_2175415BC();
  *a1 = 0xD000000000000028;
  a1[1] = v3;
  return result;
}

uint64_t sub_217541680@<X0>(uint64_t a1@<X8>)
{
  result = sub_21754240C(v1, v10, &qword_27CB29208, &qword_217775F10);
  if (v11)
  {
    sub_2171F3F0C(v10, v7);
    v5 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(*(*(v4 + 8) + 8) + 8))(v5);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    v6 = v10[0];
    *(a1 + 24) = &type metadata for LegacyModelLibrarySearchTopResult.Placeholder;
    *(a1 + 32) = &protocol witness table for LegacyModelLibrarySearchTopResult.Placeholder;
    *a1 = v6;
  }

  return result;
}

unint64_t sub_217541770()
{
  result = qword_27CB29250;
  if (!qword_27CB29250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29250);
  }

  return result;
}

unint64_t sub_2175417C4()
{
  result = qword_27CB29258;
  if (!qword_27CB29258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29258);
  }

  return result;
}

unint64_t sub_217541818()
{
  result = qword_27CB29268;
  if (!qword_27CB29268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29268);
  }

  return result;
}

unint64_t sub_21754186C()
{
  result = qword_27CB29270;
  if (!qword_27CB29270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29270);
  }

  return result;
}

unint64_t sub_2175418C0()
{
  result = qword_27CB29278;
  if (!qword_27CB29278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29278);
  }

  return result;
}

unint64_t sub_217541914()
{
  result = qword_27CB29280;
  if (!qword_27CB29280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29280);
  }

  return result;
}

unint64_t sub_217541968()
{
  result = qword_27CB29288;
  if (!qword_27CB29288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29288);
  }

  return result;
}

unint64_t sub_2175419BC()
{
  result = qword_27CB29290;
  if (!qword_27CB29290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29290);
  }

  return result;
}

unint64_t sub_217541A10()
{
  result = qword_27CB29298;
  if (!qword_27CB29298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29298);
  }

  return result;
}

unint64_t sub_217541A64()
{
  result = qword_27CB292A0;
  if (!qword_27CB292A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB292A0);
  }

  return result;
}

unint64_t sub_217541AB8()
{
  result = qword_27CB292A8;
  if (!qword_27CB292A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB292A8);
  }

  return result;
}

unint64_t sub_217541B0C()
{
  result = qword_27CB292B0;
  if (!qword_27CB292B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB292B0);
  }

  return result;
}

uint64_t static LegacyModelLibrarySearchTopResult.typeValue.getter()
{
  if (qword_280BE2E30 != -1)
  {
    OUTLINED_FUNCTION_44_21();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE2E38);

  return sub_217751DE8();
}

uint64_t sub_217541BE8()
{
  if (qword_280BE2E30 != -1)
  {
    OUTLINED_FUNCTION_44_21();
  }

  xmmword_280BE6320 = xmmword_280BE2E38;
  qword_280BE6330 = qword_280BE2E48;
  unk_280BE6338 = unk_280BE2E50;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.legacyModelLibrarySearchTopResult.getter()
{
  if (qword_280BE6318 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE6320);

  return sub_217751DE8();
}

uint64_t sub_217541CB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217775F00;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  v2 = qword_280BE6308;
  v1 = unk_280BE6310;
  *(v0 + 32) = xmmword_280BE62F8;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v3 = qword_280BE6270;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_280BE6288;
  v4 = unk_280BE6290;
  *(v0 + 64) = xmmword_280BE6278;
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  v6 = qword_280BE6378;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_280BE6390;
  v7 = unk_280BE6398;
  *(v0 + 96) = xmmword_280BE6380;
  *(v0 + 112) = v8;
  *(v0 + 120) = v7;
  v9 = qword_280BE6220;
  sub_217751DE8();
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_280BE6238;
  v10 = unk_280BE6240;
  *(v0 + 128) = xmmword_280BE6228;
  *(v0 + 144) = v11;
  *(v0 + 152) = v10;
  v12 = qword_280BEB138;
  sub_217751DE8();
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_280BEB150;
  v13 = unk_280BEB158;
  *(v0 + 160) = xmmword_280BEB140;
  *(v0 + 176) = v14;
  *(v0 + 184) = v13;
  qword_27CB29200 = v0;

  return sub_217751DE8();
}

uint64_t static LegacyModelLibrarySearchTopResult.supportedTypeValues.getter()
{
  if (qword_27CB23C40 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t MusicLibrarySearchResponse.TopResult.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 56);
  if (v3 >= 5)
  {
    result = sub_217541740(result);
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    LOBYTE(v3) = -1;
  }

  else
  {
    v4 = *(result + 48);
    v6 = *(result + 16);
    v5 = *(result + 32);
    *a2 = *result;
    *(a2 + 16) = v6;
    *(a2 + 32) = v5;
    *(a2 + 48) = v4;
  }

  *(a2 + 56) = v3;
  return result;
}

double MusicLibrarySearchResponse.TopResult.convertToLegacyModelLibrarySearchTopResult()()
{
  v1 = OUTLINED_FUNCTION_68_1();
  sub_2172843E8(v1, v5);
  v2 = v8;
  v3 = v5[1];
  *v0 = v5[0];
  *(v0 + 16) = v3;
  result = *&v6;
  *(v0 + 32) = v6;
  *(v0 + 48) = v7;
  *(v0 + 56) = v2;
  return result;
}

uint64_t LegacyModelLibrarySearchTopResult.Placeholder.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t static LegacyModelLibrarySearchTopResult.Placeholder.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_217753058();
  }
}

uint64_t sub_217542018(uint64_t a1)
{
  v2 = sub_217542470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217542054(uint64_t a1)
{
  v2 = sub_217542470();

  return MEMORY[0x2821FE720](a1, v2);
}

void LegacyModelLibrarySearchTopResult.Placeholder.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB292F8, &qword_217775FA0);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v11 = v15 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_217542470();
  sub_217751DE8();
  sub_2177532F8();
  v15[0] = v12;
  v15[1] = v13;
  sub_2172E1B18();
  sub_217752F88();

  (*(v5 + 8))(v11, v3);
  OUTLINED_FUNCTION_170();
}

uint64_t LegacyModelLibrarySearchTopResult.Placeholder.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_217751FF8();
}

uint64_t LegacyModelLibrarySearchTopResult.Placeholder.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2177531E8();
  sub_217751FF8();
  return sub_217753238();
}

void LegacyModelLibrarySearchTopResult.Placeholder.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29308, &qword_217775FA8);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = v16 - v12;
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_217542470();
  sub_2177532C8();
  if (!v0)
  {
    sub_2172E1C68();
    sub_217752EA8();
    (*(v7 + 8))(v13, v5);
    v15 = v16[1];
    *v4 = v16[0];
    v4[1] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175423BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB29208, &qword_217775F10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21754240C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_41_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_217542470()
{
  result = qword_27CB29300;
  if (!qword_27CB29300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29300);
  }

  return result;
}

unint64_t sub_2175424C8()
{
  result = qword_27CB29310;
  if (!qword_27CB29310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29310);
  }

  return result;
}

unint64_t sub_21754251C(void *a1)
{
  a1[2] = sub_217542554();
  a1[3] = sub_2175425A8();
  result = sub_2175425FC();
  a1[4] = result;
  return result;
}

unint64_t sub_217542554()
{
  result = qword_280BE2E58;
  if (!qword_280BE2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E58);
  }

  return result;
}

unint64_t sub_2175425A8()
{
  result = qword_280BE2E70;
  if (!qword_280BE2E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E70);
  }

  return result;
}

unint64_t sub_2175425FC()
{
  result = qword_280BE2E68;
  if (!qword_280BE2E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E68);
  }

  return result;
}

unint64_t sub_217542654()
{
  result = qword_280BE2E60;
  if (!qword_280BE2E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E60);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2175426DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 57))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 56);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217542718(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_217542768(uint64_t result, unsigned int a2)
{
  if (a2 > 5)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 56) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyModelLibrarySearchTopResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2175428FC()
{
  result = qword_27CB29318;
  if (!qword_27CB29318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29318);
  }

  return result;
}

unint64_t sub_217542954()
{
  result = qword_27CB29320;
  if (!qword_27CB29320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29320);
  }

  return result;
}

unint64_t sub_2175429AC()
{
  result = qword_27CB29328;
  if (!qword_27CB29328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29328);
  }

  return result;
}

unint64_t sub_217542A04()
{
  result = qword_27CB29330;
  if (!qword_27CB29330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29330);
  }

  return result;
}

unint64_t sub_217542A5C()
{
  result = qword_27CB29338;
  if (!qword_27CB29338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29338);
  }

  return result;
}

unint64_t sub_217542AB4()
{
  result = qword_27CB29340;
  if (!qword_27CB29340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29340);
  }

  return result;
}

unint64_t sub_217542B0C()
{
  result = qword_27CB29348;
  if (!qword_27CB29348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29348);
  }

  return result;
}

unint64_t sub_217542B64()
{
  result = qword_27CB29350;
  if (!qword_27CB29350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29350);
  }

  return result;
}

unint64_t sub_217542BBC()
{
  result = qword_27CB29358;
  if (!qword_27CB29358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29358);
  }

  return result;
}

unint64_t sub_217542C14()
{
  result = qword_27CB29360;
  if (!qword_27CB29360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29360);
  }

  return result;
}

unint64_t sub_217542C6C()
{
  result = qword_27CB29368;
  if (!qword_27CB29368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29368);
  }

  return result;
}

unint64_t sub_217542CC4()
{
  result = qword_27CB29370;
  if (!qword_27CB29370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29370);
  }

  return result;
}

unint64_t sub_217542D1C()
{
  result = qword_27CB29378;
  if (!qword_27CB29378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29378);
  }

  return result;
}

unint64_t sub_217542D74()
{
  result = qword_27CB29380;
  if (!qword_27CB29380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29380);
  }

  return result;
}

unint64_t sub_217542DCC()
{
  result = qword_27CB29388;
  if (!qword_27CB29388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29388);
  }

  return result;
}

unint64_t sub_217542E24()
{
  result = qword_27CB29390;
  if (!qword_27CB29390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29390);
  }

  return result;
}

unint64_t sub_217542E7C()
{
  result = qword_27CB29398;
  if (!qword_27CB29398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29398);
  }

  return result;
}

unint64_t sub_217542ED4()
{
  result = qword_27CB293A0;
  if (!qword_27CB293A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293A0);
  }

  return result;
}

unint64_t sub_217542F2C()
{
  result = qword_27CB293A8;
  if (!qword_27CB293A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293A8);
  }

  return result;
}

unint64_t sub_217542F84()
{
  result = qword_27CB293B0;
  if (!qword_27CB293B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293B0);
  }

  return result;
}

unint64_t sub_217542FDC()
{
  result = qword_27CB293B8;
  if (!qword_27CB293B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293B8);
  }

  return result;
}

unint64_t sub_217543034()
{
  result = qword_27CB293C0;
  if (!qword_27CB293C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293C0);
  }

  return result;
}

unint64_t sub_21754308C()
{
  result = qword_27CB293C8;
  if (!qword_27CB293C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293C8);
  }

  return result;
}

unint64_t sub_2175430E4()
{
  result = qword_27CB293D0;
  if (!qword_27CB293D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293D0);
  }

  return result;
}

_BYTE *sub_217543138(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2175431E0(uint64_t a1)
{
  *(a1 + 8) = sub_2172A5230();
  result = sub_217543210();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_217543210()
{
  result = qword_27CB293F0;
  if (!qword_27CB293F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB293F0);
  }

  return result;
}

unint64_t sub_217543268()
{
  result = qword_280BE2E78;
  if (!qword_280BE2E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_38()
{
  STACK[0x208] = v0;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_15_43()
{
  v1 = *(v0 - 208);
  *(v0 - 160) = *(v0 - 224);
  *(v0 - 144) = v1;
  *(v0 - 128) = *(v0 - 192);
  *(v0 - 119) = *(v0 - 183);
  return *(v0 - 232);
}

uint64_t OUTLINED_FUNCTION_16_44()
{

  return sub_217752DE8();
}

uint64_t OUTLINED_FUNCTION_20_32()
{
  v2 = *(v0 - 232);
  v3 = *(v0 - 248);

  return sub_217752EE8();
}

void OUTLINED_FUNCTION_21_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  sub_2172B6904(v69, &a15, &STACK[0x208], &a69, &a23);
}

uint64_t OUTLINED_FUNCTION_34_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_43_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_17()
{

  return sub_2171F0790(v1, v0, v2);
}

void *OUTLINED_FUNCTION_60_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(__dst, a14);

  return memcpy(__dst, &STACK[0x230], 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_61_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  return sub_21753DFEC(va1, va);
}

uint64_t OUTLINED_FUNCTION_62_16()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_63_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_21749A32C(v9, &a9);
}

uint64_t OUTLINED_FUNCTION_65_19(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_21749A32C(v2, va);
}

uint64_t OUTLINED_FUNCTION_72_12@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 240);

  return sub_217752F88();
}

id OUTLINED_FUNCTION_73_14(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_2175435D0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_84(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2173B716C(v4, 1);
  OUTLINED_FUNCTION_7_50();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_77();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_3_71(v3 + v7);
  memcpy(v9, v10, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_6_57();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_21754365C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_84(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2173B7184(v4, 1);
  OUTLINED_FUNCTION_7_50();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_77();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_71(v3 + 24 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_6_57();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2175436F4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_84(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2173B719C(v4, 1);
  OUTLINED_FUNCTION_7_50();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_77();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_3_71(v3 + v7);
  memcpy(v9, v10, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_6_57();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2175437A8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_84(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2173B71E4(v4, 1);
  OUTLINED_FUNCTION_7_50();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_77();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_71(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_6_57();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2175438A8(uint64_t a1)
{
  v4 = sub_217751428();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_1();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294E8, &qword_217776E50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v24.n128_f64[0] = MEMORY[0x28223BE20](v21, v22);
  v26 = v53 - v25;
  v27 = *(a1 + 16);
  v28 = *(*v1 + 16);
  if (__OFADD__(v28, v27))
  {
    __break(1u);
    goto LABEL_10;
  }

  v66 = v23;
  v67 = v13;
  sub_2173B71CC(v28 + v27, 1);
  v2 = *v1;
  v13 = *(v6 + 72);
  v29 = (*(*v1 + 24) >> 1) - *(*v1 + 16);
  v65 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  sub_2176F80F0();
  if (v30 < v27)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v30)
  {
    v33 = *(v2 + 16);
    v34 = __OFADD__(v33, v30);
    v35 = v33 + v30;
    if (v34)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v2 + 16) = v35;
  }

  if (v30 != v29)
  {
    sub_2172303F0();
LABEL_8:
    *v1 = v2;
    return;
  }

LABEL_11:
  v27 = *(v2 + 16);
  v31 = v69;
  v59 = v68;
  v32 = v70;
  v29 = v71;
  v57 = v69;
  v53[1] = v70;
  if (v72)
  {
    v36 = (v72 - 1) & v72;
    v37 = __clz(__rbit64(v72)) | (v71 << 6);
    v56 = (v70 + 64) >> 6;
LABEL_19:
    (*(v6 + 16))(v26, *(v59 + 48) + v37 * v13, v4, v24);
    v40 = 0;
LABEL_20:
    __swift_storeEnumTagSinglePayload(v26, v40, 1, v4);
    v58 = (v6 + 16);
    v54 = (v6 + 8);
    v55 = (v6 + 32);
    v41 = v27;
    v60 = v18;
    v63 = v26;
    while (2)
    {
      v42 = v66;
      sub_2175471C0(v26, v66);
      if (__swift_getEnumTagSinglePayload(v42, 1, v4) != 1)
      {
        sub_217547230(v42);
        v43 = *(v2 + 24);
        v62 = v43 >> 1;
        if ((v43 >> 1) < v41 + 1)
        {
          sub_2172B1A50(v43 > 1, v41 + 1, 1, v2);
          v2 = v52;
          v62 = *(v52 + 24) >> 1;
        }

        v64 = v41;
        v61 = v2 + v65;
        v44 = v55;
        while (1)
        {
          sub_2175471C0(v26, v18);
          if (__swift_getEnumTagSinglePayload(v18, 1, v4) == 1)
          {
            break;
          }

          v45 = *v44;
          v46 = v67;
          (*v44)(v67, v18, v4);
          v47 = v4;
          v48 = v64;
          if (v64 >= v62)
          {
            (*v54)(v46, v47);
            v4 = v47;
            v18 = v60;
            v26 = v63;
            goto LABEL_39;
          }

          sub_217547230(v63);
          v45(v61 + v48 * v13, v46, v47);
          v4 = v47;
          if (!v36)
          {
            v26 = v63;
            v42 = v64;
            v18 = v60;
            while (1)
            {
              v49 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                break;
              }

              if (v49 >= v56)
              {
                v36 = 0;
                v51 = 1;
                goto LABEL_35;
              }

              v36 = *(v57 + 8 * v49);
              ++v29;
              if (v36)
              {
                v29 = v49;
                goto LABEL_34;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

          v49 = v29;
          v26 = v63;
          v42 = v64;
          v18 = v60;
LABEL_34:
          v50 = __clz(__rbit64(v36));
          v36 &= v36 - 1;
          (*v58)(v26, *(v59 + 48) + (v50 | (v49 << 6)) * v13, v4);
          v51 = 0;
LABEL_35:
          v64 = v42 + 1;
          __swift_storeEnumTagSinglePayload(v26, v51, 1, v4);
        }

        sub_217547230(v18);
LABEL_39:
        v41 = v64;
        *(v2 + 16) = v64;
        continue;
      }

      break;
    }

LABEL_41:
    sub_217547230(v26);
    sub_2172303F0();
    sub_217547230(v42);
    goto LABEL_8;
  }

LABEL_14:
  v56 = (v32 + 64) >> 6;
  while (1)
  {
    v38 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v38 >= ((v32 + 64) >> 6))
    {
      v36 = 0;
      v40 = 1;
      goto LABEL_20;
    }

    v39 = *(v31 + 8 * v38);
    ++v29;
    if (v39)
    {
      v36 = (v39 - 1) & v39;
      v37 = __clz(__rbit64(v39)) | (v38 << 6);
      v29 = v38;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_217543D94(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_84(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2173B71FC(v4, 1);
  OUTLINED_FUNCTION_7_50();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_77();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_71(v3 + 32 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_6_57();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_217543E50(uint64_t a1)
{
  result = OUTLINED_FUNCTION_5_59(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_44();
  v6();
  v7 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v8 = (*(v7 + 24) >> 1) - *(v7 + 16);
  v9 = OUTLINED_FUNCTION_13_2();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v11 = *(result - 8);
  if (v8 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v7;
    return result;
  }

  v14 = *(v7 + 16);
  v5 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v5)
  {
    *(v7 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_21754431C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_5_59(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_44();
  result = v6();
  v7 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v7 + 24) >> 1) - *(v7 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = OUTLINED_FUNCTION_13_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v7;
    return result;
  }

  v10 = *(v7 + 16);
  v5 = __OFADD__(v10, v1);
  v11 = v10 + v1;
  if (!v5)
  {
    *(v7 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_217544414(uint64_t a1)
{
  result = OUTLINED_FUNCTION_5_59(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(result, 1);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_21754451C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_84(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2173B7274(v4, 1);
  OUTLINED_FUNCTION_7_50();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_77();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_71(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_6_57();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t Dictionary<>.init<A>(from:skippingValuesFoundIn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v5 = sub_217753268();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  *(&v32 + 1) = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v31);
  v16 = *(a3 - 8);
  v28 = a2;
  v29 = a3;
  (*(v16 + 16))(boxed_opaque_existential_0, a2, a3);
  sub_217753248();
  sub_217753258();
  sub_217752C58();
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_217752D78();
    if (!*(&v33 + 1))
    {
      break;
    }

    v30[0] = v32;
    v30[1] = v33;
    v18 = v31;
    __swift_destroy_boxed_opaque_existential_1(v30);
    if (*(&v18 + 1))
    {
      v27 = v7;
      v19 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_40();
        v17 = v22;
      }

      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_57(v20);
        sub_2172AFF2C();
        v17 = v23;
      }

      *(v17 + 16) = v21 + 1;
      *(v17 + 16 * v21 + 32) = v18;
      v5 = v19;
      v7 = v27;
    }
  }

  v24 = v34;
  sub_2171FF30C(v34, &v31);
  v25 = sub_217544F40(&v31);
  (*(v16 + 8))(v28, v29);
  __swift_destroy_boxed_opaque_existential_1(v24);
  (*(v7 + 8))(v14, v5);
  return v25;
}

uint64_t Dictionary<>.init(from:skippingValuesFor:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 16);
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_217275C90();
    v5 = v17;
    v6 = a2 + 32;
    do
    {
      sub_2171FF30C(v6, v16);
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      v7 = sub_217753318();
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1(v16);
      v17 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_57(v10);
        sub_217275C90();
        v5 = v17;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v6 += 40;
      --v4;
    }

    while (v4);

    v3 = a1;
  }

  else
  {
  }

  sub_2171FF30C(v3, v16);
  v13 = sub_217544F40(v16);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v13;
}

uint64_t Dictionary<>.init<A>(from:skippingValuesFoundIn:and:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = sub_217753268();
  OUTLINED_FUNCTION_0();
  v38 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  *(&v42 + 1) = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v41);
  v34 = *(a4 - 8);
  v36 = a4;
  (*(v34 + 16))(boxed_opaque_existential_0, a2, a4);
  sub_217753248();
  v35 = v14;
  sub_217753258();
  sub_217752C58();
  v16 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_217752D78();
    if (!*(&v43 + 1))
    {
      break;
    }

    v40[0] = v42;
    v40[1] = v43;
    v17 = v41;
    __swift_destroy_boxed_opaque_existential_1(v40);
    if (*(&v17 + 1))
    {
      v18 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_40();
        v16 = v21;
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_57(v19);
        sub_2172AFF2C();
        v16 = v22;
      }

      *(v16 + 16) = v20 + 1;
      *(v16 + 16 * v20 + 32) = v17;
      a3 = v18;
    }
  }

  v23 = *(a3 + 16);
  if (v23)
  {
    v39 = MEMORY[0x277D84F90];
    sub_217275C90();
    v24 = v39;
    v25 = a3 + 32;
    do
    {
      sub_2171FF30C(v25, &v41);
      __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      v26 = sub_217753318();
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1(&v41);
      v30 = *(v39 + 16);
      v29 = *(v39 + 24);
      if (v30 >= v29 >> 1)
      {
        OUTLINED_FUNCTION_57(v29);
        sub_217275C90();
      }

      *(v39 + 16) = v30 + 1;
      v31 = v39 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      v25 += 40;
      --v23;
    }

    while (v23);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  sub_2171FF30C(a1, &v41);
  sub_2175437A8(v24);
  v32 = sub_217544F40(&v41);
  (*(v34 + 8))(a2, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  (*(v38 + 8))(v35, v44);
  return v32;
}

uint64_t Dictionary<>.merging<A>(withValuesFoundIn:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  sub_2171FF30C(a2, v18);
  result = sub_217545454(v13, v18, a4);
  if (!v4)
  {
    v16 = result;
    v17 = sub_217751DE8();
    return sub_2174D37FC(v17, v16);
  }

  return result;
}

uint64_t sub_217544D9C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_217545730(a1, sub_217747ADC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t Dictionary<>.merging<A>(withValuesFoundIn:and:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0();
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12);
  sub_2171FF30C(a3, v21);
  result = sub_217545454(v14, v21, a5);
  if (!v5)
  {
    v17 = result;
    v18 = sub_217751DE8();
    v19 = sub_217544D9C(v18, v17);
    v20 = sub_217751DE8();
    return sub_217544D9C(v20, v19);
  }

  return result;
}

uint64_t sub_217544F40(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294F0, &qword_217776E58);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v57 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21738B390();
  sub_2177532C8();
  v15 = v1;
  if (!v1)
  {
    v60 = v4;
    v61 = v6;
    v59 = v12;
    isUniquelyReferenced_nonNull_native = sub_217752EB8();
    v18 = 0;
    v65 = *(isUniquelyReferenced_nonNull_native + 16);
    v71 = isUniquelyReferenced_nonNull_native;
    v19 = isUniquelyReferenced_nonNull_native + 40;
    v62 = MEMORY[0x277D84F90];
    for (i = isUniquelyReferenced_nonNull_native + 40; ; v19 = i)
    {
      for (j = (v19 + 16 * v18); ; j += 2)
      {
        if (v65 == v18)
        {

          v2 = sub_217751DC8();
          v29 = 0;
          v31 = v61;
          v30 = v62;
          v58 = *(v62 + 16);
          v32 = (v62 + 40);
          v33 = v59;
          v34 = v60;
          while (1)
          {
            if (v58 == v29)
            {
              (*(v31 + 8))(v33, v34);

              __swift_destroy_boxed_opaque_existential_1(v57);
              return v2;
            }

            if (v29 >= *(v30 + 16))
            {
              goto LABEL_32;
            }

            v36 = *(v32 - 1);
            v35 = *v32;
            v71 = v32;
            v66 = v36;
            v67 = v35;
            sub_21733AD70();
            sub_217751DE8();
            sub_217752EA8();
            if (v15)
            {
              (*(v31 + 8))(v33, v34);

              goto LABEL_29;
            }

            v63 = v29;
            i = 0;
            v37 = v36;
            v39 = v68;
            v38 = v69;
            v40 = v70;
            swift_isUniquelyReferenced_nonNull_native();
            v68 = v2;
            v65 = v37;
            v41 = sub_21763246C(v37, v35);
            if (__OFADD__(v2[2], (v42 & 1) == 0))
            {
              goto LABEL_33;
            }

            v43 = v41;
            v44 = v42;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
            if (sub_217752CB8())
            {
              v45 = sub_21763246C(v65, v35);
              v31 = v61;
              if ((v44 & 1) != (v46 & 1))
              {
                goto LABEL_35;
              }

              v43 = v45;
              if (v44)
              {
LABEL_25:

                v2 = v68;
                v52 = v68[7] + 24 * v43;
                v53 = *v52;
                v54 = *(v52 + 8);
                *v52 = v39;
                *(v52 + 8) = v38;
                v55 = *(v52 + 16);
                *(v52 + 16) = v40;
                sub_21726A608(v53, v54, v55);
                goto LABEL_26;
              }
            }

            else
            {
              v31 = v61;
              if (v44)
              {
                goto LABEL_25;
              }
            }

            v2 = v68;
            v68[(v43 >> 6) + 8] |= 1 << v43;
            v47 = (v2[6] + 16 * v43);
            *v47 = v65;
            v47[1] = v35;
            v48 = v2[7] + 24 * v43;
            *v48 = v39;
            *(v48 + 8) = v38;
            *(v48 + 16) = v40;
            v49 = v2[2];
            v50 = __OFADD__(v49, 1);
            v51 = v49 + 1;
            if (v50)
            {
              goto LABEL_34;
            }

            v2[2] = v51;
LABEL_26:
            v32 = (v71 + 16);
            v15 = i;
            v29 = v63 + 1;
            v33 = v59;
            v34 = v60;
            v30 = v62;
          }
        }

        if (v18 >= *(v71 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_217753178();
          __break(1u);
          return result;
        }

        v21 = *(j - 1);
        v22 = *j;
        v68 = v21;
        v69 = v22;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v17);
        *(&v57 - 2) = &v68;
        swift_bridgeObjectRetain_n();
        v23 = sub_2171F8728();

        if (!v23)
        {
          break;
        }

        ++v18;
      }

      v24 = v62;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = *(v24 + 16);
        sub_217276D94();
        v24 = v66;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v27 >= v26 >> 1)
      {
        OUTLINED_FUNCTION_57(v26);
        sub_217276D94();
        v24 = v66;
      }

      ++v18;
      *(v24 + 16) = v27 + 1;
      v62 = v24;
      v28 = v24 + 16 * v27;
      *(v28 + 32) = v21;
      *(v28 + 40) = v22;
    }
  }

LABEL_29:
  __swift_destroy_boxed_opaque_existential_1(v57);
  return v2;
}

uint64_t sub_217545454(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_217751378();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_217751368();
  v10 = a2[3];
  v11 = a2[4];
  v12 = OUTLINED_FUNCTION_93();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  Encoder.dataRequestConfiguration.getter(v10, v11);
  v14 = v9;
  JSONEncoder.dataRequestConfiguration.setter(v33);
  OUTLINED_FUNCTION_13_2();
  v15 = sub_217751358();
  if (v3)
  {
    v17 = *(*(a3 - 8) + 8);
    v18 = OUTLINED_FUNCTION_13_2();
    v19(v18);

    __swift_destroy_boxed_opaque_existential_1(a2);
  }

  else
  {
    v20 = v16;
    v34 = v15;
    v21 = sub_217751348();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_217751338();
    v24 = a2[3];
    v25 = a2[4];
    v26 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v26, v27);
    Encoder.dataRequestConfiguration.getter(v24, v25);
    JSONDecoder.dataRequestConfiguration.setter(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_2174CCE6C();
    v28 = v34;
    sub_217751308();
    v29 = *(*(a3 - 8) + 8);
    v30 = OUTLINED_FUNCTION_13_2();
    v31(v30);

    sub_217275694(v28, v20);

    v14 = v33[0];
    __swift_destroy_boxed_opaque_existential_1(a2);
  }

  return v14;
}

uint64_t sub_2175456A0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

uint64_t sub_217545730(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v70 = a5;
  sub_217747F44(v69);
  v5 = v69[1];
  v6 = v69[3];
  v7 = v69[4];
  v57 = v69[5];
  v58 = v69[0];
  v8 = (v69[2] + 64) >> 6;
  sub_217751DE8();

  v55 = v8;
  v56 = v5;
  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = (*(v58 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(v58 + 56) + 24 * v12;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v62[0] = *v13;
    v62[1] = v14;
    v62[2] = v17;
    v62[3] = v16;
    v63 = v18;
    sub_217751DE8();
    sub_21726A5E0(v17, v16, v18);
    v57(&v64, v62);
    v19 = v63;

    v20 = OUTLINED_FUNCTION_93();
    sub_21726A608(v20, v21, v19);
    v22 = v65;
    if (!v65)
    {
LABEL_19:
      sub_2172303F0();
    }

    v23 = v64;
    v25 = v66;
    v24 = v67;
    v60 = v68;
    v26 = *v70;
    v28 = sub_21763246C(v64, v65);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_21;
    }

    v32 = v27;
    if (*(v26 + 24) >= v31)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
        sub_217752CC8();
      }
    }

    else
    {
      v33 = v70;
      sub_217747120(v31, a4 & 1);
      v34 = *v33;
      v35 = sub_21763246C(v23, v22);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_23;
      }

      v28 = v35;
    }

    v59 = (v9 - 1) & v9;
    v37 = *v70;
    if (v32)
    {
      v38 = 3 * v28;
      v39 = v37[7] + 8 * v38;
      v40 = *v39;
      v41 = *(v39 + 8);
      v42 = *(v39 + 16);
      v43 = OUTLINED_FUNCTION_93();
      sub_21726A5E0(v43, v44, v42);
      sub_21726A608(v25, v24, v60);

      v45 = v37[7] + 8 * v38;
      v46 = *v45;
      v47 = *(v45 + 8);
      *v45 = v40;
      *(v45 + 8) = v41;
      v48 = *(v45 + 16);
      *(v45 + 16) = v42;
      sub_21726A608(v46, v47, v48);
    }

    else
    {
      v37[(v28 >> 6) + 8] |= 1 << v28;
      v49 = (v37[6] + 16 * v28);
      *v49 = v23;
      v49[1] = v22;
      v50 = v37[7] + 24 * v28;
      *v50 = v25;
      *(v50 + 8) = v24;
      *(v50 + 16) = v60;
      v51 = v37[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_22;
      }

      v37[2] = v53;
    }

    a4 = 1;
    v6 = v10;
    v8 = v55;
    v5 = v56;
    v7 = v59;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_217753178();
  __break(1u);
  return result;
}

void sub_217545A58()
{
  OUTLINED_FUNCTION_11_47();
  if (v2)
  {
    v5 = sub_217752D38();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      OUTLINED_FUNCTION_93();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_217204DD0(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        type metadata accessor for AnyMusicProperty();
        OUTLINED_FUNCTION_16_45();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v23 = v6;
        sub_217547298(&unk_27CB277D0, &qword_27CB24520, &unk_217758A10);
        do
        {
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24520, &unk_217758A10);
          v15 = OUTLINED_FUNCTION_9_44(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24[0]);
          v18 = sub_21773387C(v15, v16, v17);
          v20 = *v19;

          v18(v24, 0);
          OUTLINED_FUNCTION_14_39();
        }

        while (!v21);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_217545B8C()
{
  OUTLINED_FUNCTION_11_47();
  if (v2)
  {
    v5 = sub_217752D38();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      OUTLINED_FUNCTION_93();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_217204DD0(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        type metadata accessor for BatchNotificationCoalescer.Observer();
        OUTLINED_FUNCTION_16_45();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v23 = v6;
        sub_217547298(&qword_27CB294F8, &qword_27CB24AD0, &qword_2177590A0);
        do
        {
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24AD0, &qword_2177590A0);
          v15 = OUTLINED_FUNCTION_9_44(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24[0]);
          v18 = sub_217733A58(v15, v16, v17);
          v20 = *v19;

          v18(v24, 0);
          OUTLINED_FUNCTION_14_39();
        }

        while (!v21);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_217545CC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, &unk_217765A40);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29430, &qword_27CB29428, &qword_217776DF0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29428, &qword_217776DF0);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217545E40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27A78, &qword_21776B6A8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29450, &qword_27CB29448, &qword_217776E00);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29448, &qword_217776E00);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217545FC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27FA8, &qword_21776BF00);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB294B0, &qword_27CB294A8, &qword_217776E30);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294A8, &qword_217776E30);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217546140(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, &unk_217775A50);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29420, &qword_27CB29418, &qword_217776DE8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29418, &qword_217776DE8);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2175462C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240B8, &qword_217757AF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29400, &qword_27CB293F8, &qword_217776DD8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB293F8, &qword_217776DD8);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217546440(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27C70, &qword_21776B9D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29470, &qword_27CB29468, &qword_217776E10);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29468, &qword_217776E10);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2175465C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27DF8, &qword_21776BC68);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29490, &qword_27CB29488, &qword_217776E20);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29488, &qword_217776E20);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217546740(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27B48, &qword_21776B800);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29460, &qword_27CB29458, &qword_217776E08);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29458, &qword_217776E08);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2175468C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28128, &qword_21776C160);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB294D0, &qword_27CB294C8, &qword_217776E40);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294C8, &qword_217776E40);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217546A40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28068, &qword_21776C030);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB294C0, &qword_27CB294B8, &qword_217776E38);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294B8, &qword_217776E38);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217546BC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27D30, &qword_21776BB18);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29480, &qword_27CB29478, &qword_217776E18);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29478, &qword_217776E18);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217546D40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB279A8, &qword_21776B560);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB29440, &qword_27CB29438, &qword_217776DF8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29438, &qword_217776DF8);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217546EC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C00, &unk_21775ECD0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB294E0, &qword_27CB294D8, &qword_217776E48);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294D8, &qword_217776E48);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217547040(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_217752D38();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_217204DD0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27EB8, &qword_21776BDA0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_217547298(&qword_27CB294A0, &qword_27CB29498, &qword_217776E28);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29498, &qword_217776E28);
          v9 = sub_217733A58(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2175471C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294E8, &qword_217776E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217547230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294E8, &qword_217776E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217547298(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_45()
{

  return swift_arrayInitWithCopy();
}

uint64_t CloudAttribute.init(item:rawValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for CloudAttribute();
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t CloudAttribute<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v19[-v13 - 8];
  sub_2171FF30C(v15, v19);
  sub_217752608();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2171FF30C(a1, v19);
  (*(v7 + 16))(v10, v14, a2);
  v17 = Dictionary<>.init<A>(from:skippingValuesFoundIn:)(v19, v10, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  (*(v7 + 32))(a3, v14, a2);
  result = type metadata accessor for CloudAttribute();
  *(a3 + *(result + 28)) = v17;
  return result;
}

uint64_t CloudAttribute<A>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 28));
  if (*(v4 + 16))
  {
    result = Dictionary<>.merging<A>(withValuesFoundIn:for:)(v2, a1, v4, *(a2 + 16));
    if (!v3)
    {
      sub_21733AC44();
      sub_217751E48();
    }
  }

  else
  {
    v6 = *(a2 + 16);
    return sub_217751E88();
  }

  return result;
}

void static CloudAttribute<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_217751F08())
  {
    v4 = *(type metadata accessor for CloudAttribute() + 28);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);

    sub_217261FB0(v5, v6);
  }
}

void sub_21754774C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  static CloudAttribute<A>.== infix(_:_:)(a1, a2);
}

uint64_t CloudAttribute<A>.hash(into:)(const void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  sub_217751EB8();
  v6 = *(v2 + *(a2 + 28));

  return sub_217265A08(a1, v6);
}

uint64_t CloudAttribute<A>.hashValue.getter(uint64_t a1)
{
  sub_2177531E8();
  CloudAttribute<A>.hash(into:)(v3, a1);
  return sub_217753238();
}

uint64_t sub_217547810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  CloudAttribute<A>.hash(into:)(v6, a2);
  return sub_217753238();
}

void sub_2175478AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_217351BFC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_217547934(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_217547A70(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t PlayParameters.Kind.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PlayParameters.Kind.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_280BE8A88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_81(&qword_280BE8A90);
  v6 = v6 && v5 == v3;
  if (v6 || (OUTLINED_FUNCTION_0_85() & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_280BE8AE8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_81(&qword_280BE8AF0);
  v8 = v6 && v7 == v3;
  if (v8 || (OUTLINED_FUNCTION_0_85() & 1) != 0)
  {
LABEL_15:
    v9 = 0xE500000000000000;
    v10 = 0x6D75626C61;
  }

  else
  {
    if (qword_280BE8B48 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_2_81(qword_280BE8B50);
    v13 = v6 && v12 == v3;
    if (v13 || (OUTLINED_FUNCTION_0_85() & 1) != 0)
    {
      v9 = 0xE500000000000000;
      v10 = 0x6569766F6DLL;
    }

    else
    {
      if (qword_280BE8B28 != -1)
      {
        swift_once();
      }

      v9 = 0xEA00000000006F65;
      OUTLINED_FUNCTION_2_81(&qword_280BE8B30);
      v15 = v6 && v14 == v3;
      if (v15 || (OUTLINED_FUNCTION_0_85() & 1) != 0)
      {
        goto LABEL_41;
      }

      if (qword_280BE8B68 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_2_81(&qword_280BE8B70);
      v17 = v6 && v16 == v3;
      if (v17 || (OUTLINED_FUNCTION_0_85() & 1) != 0)
      {
LABEL_41:
        v10 = 0x646956636973756DLL;
      }

      else
      {
        if (qword_280BE8A38 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_2_81(&qword_280BE8A40);
        v19 = v6 && v18 == v3;
        if (v19 || (OUTLINED_FUNCTION_0_85() & 1) != 0)
        {
          goto LABEL_56;
        }

        if (qword_280BE8AA8 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_2_81(&qword_280BE8AB0);
        v21 = v6 && v20 == v3;
        if (v21 || (OUTLINED_FUNCTION_0_85() & 1) != 0)
        {
LABEL_56:
          v9 = 0xE800000000000000;
          v10 = 0x7473696C79616C70;
        }

        else
        {
          if (qword_280BE8AC8 != -1)
          {
            swift_once();
          }

          v9 = 0xEE007972746E4574;
          OUTLINED_FUNCTION_2_81(&qword_280BE8AD0);
          v23 = v6 && v22 == v3;
          if (v23 || (OUTLINED_FUNCTION_0_85() & 1) != 0)
          {
            v10 = 0x73696C79616C705FLL;
          }

          else
          {
            if (qword_280BE8A60 != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_2_81(&qword_280BE8A68);
            v25 = v6 && v24 == v3;
            if (v25 || (OUTLINED_FUNCTION_0_85() & 1) != 0)
            {
              v9 = 0xE700000000000000;
              v10 = 0x6E6F6974617473;
            }

            else
            {
              if (qword_280BEA1C8 != -1)
              {
                swift_once();
              }

              OUTLINED_FUNCTION_2_81(&qword_280BEA1D0);
              v27 = v6 && v26 == v3;
              if (v27 || (OUTLINED_FUNCTION_0_85() & 1) != 0)
              {
                goto LABEL_87;
              }

              if (qword_280BE8B08 != -1)
              {
                swift_once();
              }

              OUTLINED_FUNCTION_2_81(&qword_280BE8B10);
              v29 = v6 && v28 == v3;
              if (v29 || (OUTLINED_FUNCTION_0_85() & 1) != 0)
              {
LABEL_87:
                v9 = 0xE400000000000000;
                v10 = 1735290739;
              }

              else
              {
                if (qword_280BE49D8 != -1)
                {
                  swift_once();
                }

                v9 = 0xE900000000000065;
                OUTLINED_FUNCTION_2_81(qword_280BE49E0);
                v31 = v6 && v30 == v3;
                if (v31 || (OUTLINED_FUNCTION_0_85() & 1) != 0)
                {
                  v10 = 0x646F736970457674;
                }

                else
                {
                  if (qword_280BE4B40 != -1)
                  {
                    swift_once();
                  }

                  v9 = 0xED00006F69647541;
                  OUTLINED_FUNCTION_2_81(qword_280BE4B48);
                  v33 = v6 && v32 == v3;
                  if (!v33 && (OUTLINED_FUNCTION_0_85() & 1) == 0)
                  {
                    if (qword_280BE4B18 != -1)
                    {
                      swift_once();
                    }

                    v9 = 0xED00006F65646956;
                    OUTLINED_FUNCTION_2_81(qword_280BE4B20);
                    v35 = v6 && v34 == v3;
                    if (!v35 && (OUTLINED_FUNCTION_0_85() & 1) == 0)
                    {
                      sub_217752AA8();
                      MEMORY[0x21CEA23B0](0xD000000000000038, 0x80000002177B0290);
                      MEMORY[0x21CEA23B0](v4, v3);
                      MEMORY[0x21CEA23B0](34, 0xE100000000000000);
                      MEMORY[0x21CEA23B0](34, 0xE100000000000000);

                      MEMORY[0x21CEA23B0](46, 0xE100000000000000);
                      result = sub_217752D08();
                      __break(1u);
                      return result;
                    }
                  }

                  v10 = 0x646564616F6C7075;
                }
              }
            }
          }
        }
      }
    }
  }

  *a2 = v10;
  a2[1] = v9;

  return sub_217751DE8();
}

uint64_t PlayParameters.Kind.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t sub_2175483B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = PlayParameters.Kind.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_2175483F8@<X0>(uint64_t *a1@<X8>)
{
  result = PlayParameters.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PlayParameters.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_29();
  sub_2177532A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_1_29();
    v6 = sub_217753078();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PlayParameters.Kind.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2177530B8();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t PlayParameters.Kind.description.getter()
{
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  return 34;
}

unint64_t sub_2175485EC()
{
  result = qword_27CB29500;
  if (!qword_27CB29500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29500);
  }

  return result;
}

id sub_217548654(void *a1)
{
  result = sub_217548710();
  if (result)
  {
    [a1 endGeneratingPlaybackNotifications];
    result = *(v1 + 24);
    if (result)
    {

      return [result beginGeneratingPlaybackNotifications];
    }
  }

  return result;
}

void sub_2175486B8(void *a1)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  v2 = a1;
  sub_217548654(v3);
}

BOOL sub_217548710()
{
  OUTLINED_FUNCTION_0_86();

  os_unfair_lock_lock(v2);
  v3 = *(v1 + 40) > 0;
  os_unfair_lock_unlock(*(v0 + 16));

  return v3;
}

void sub_217548770()
{
  OUTLINED_FUNCTION_0_86();

  os_unfair_lock_lock(v2);
  v3 = *(v1 + 40);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 40) = v4;
    os_unfair_lock_unlock(*(v0 + 16));

    if (v4 == 1)
    {
      [*(v1 + 24) beginGeneratingPlaybackNotifications];
    }

    v5 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244D8, &qword_2177589B0);
    sub_217548A0C();
    sub_217751C38();
  }
}

void sub_217548828()
{
  OUTLINED_FUNCTION_0_86();

  os_unfair_lock_lock(v2);
  v3 = *(v1 + 40);
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 40) = v4;
    os_unfair_lock_unlock(*(v0 + 16));

    if (!v4)
    {
      v5 = *(v1 + 24);

      [v5 endGeneratingPlaybackNotifications];
    }
  }
}

uint64_t sub_2175488BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_2175488EC()
{
  sub_2175488BC();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_217548944()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244D8, &qword_2177589B0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_217751B98();
  *(v0 + 24) = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  *(v1 + 32) = v5;
  *(v1 + 40) = 0;
  return v1;
}

unint64_t sub_217548A0C()
{
  result = qword_27CB29508;
  if (!qword_27CB29508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB244D8, &qword_2177589B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29508);
  }

  return result;
}

uint64_t Station.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v125 = a3;
  v122 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v112 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v113 = &v112 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v121 = &v112 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B38, &unk_217770C68);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v112 - v19;
  v21 = type metadata accessor for StationPropertyProvider();
  v22 = OUTLINED_FUNCTION_43(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v112 - v30;

  memcpy(v134, a1, 0x161uLL);
  if (([a2 respondsToSelector_] & 1) != 0 && (v32 = objc_msgSend(a2, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v33 = v32;
    v34 = sub_217751D98();
  }

  else
  {
    v34 = sub_217751DC8();
  }

  v124 = a2;
  v35 = sub_21729F0C4(v34);

  memcpy(v130, a1, 0x161uLL);
  if (qword_280BE8A60 != -1)
  {
    swift_once();
  }

  v128[0] = qword_280BE8A68;
  v128[1] = unk_280BE8A70;
  LOBYTE(v128[2]) = byte_280BE8A78;
  memset(v127, 0, 17);
  sub_217751DE8();
  v135.value.rawValue._countAndFlagsBits = v128;
  v135.value.rawValue._object = v127;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(&v129, v135, v136);

  object = v129.id.rawValue._object;
  countAndFlagsBits = v129.type.rawValue._countAndFlagsBits;
  v36 = v129.type.rawValue._object;
  isLibraryType = v129.type.isLibraryType;
  v120 = v129.href.value._countAndFlagsBits;
  v37 = v129.href.value._object;
  sub_2171F5110(v125, &v129, &qword_27CB27590, &qword_21776ADF0);
  v117 = v35;
  if (!v129.type.rawValue._object)
  {
    sub_2171F0738(&v129, &qword_27CB27590, &qword_21776ADF0);
    memset(v130, 0, 40);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v130, 0, 40);
    goto LABEL_14;
  }

  if (!*(&v130[1] + 1))
  {
LABEL_14:
    sub_2171F0738(v130, &qword_27CB24B68, &qword_217759430);
    goto LABEL_15;
  }

  sub_2171F3F0C(v130, v131);
  v38 = v132;
  v39 = v133;
  __swift_project_boxed_opaque_existential_1(v131, v132);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v38, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
    sub_21754A000(v20, v27);
    sub_217549F40(v27, v31);
    memcpy(v130, v134, 0x161uLL);
    v40 = v21[27];
    memcpy(v127, &v27[v40], 0x161uLL);
    memcpy(v126, &v27[v40], sizeof(v126));
    sub_217269EF4(v127, &v129);
    MusicIdentifierSet.union(_:)();
    memcpy(v128, v126, 0x161uLL);
    sub_217269F50(v128);
    sub_217549FA4(v27);
    v41 = v21[27];
    memcpy(v130, &v31[v41], 0x161uLL);
    sub_217269F50(v130);
    memcpy(&v31[v41], &v129, 0x161uLL);
    v42 = &v31[v21[28]];
    v43 = *(v42 + 1);
    sub_217751DE8();

    *v42 = countAndFlagsBits;
    *(v42 + 1) = v36;
    v42[16] = isLibraryType;
    v44 = &v31[v21[29]];
    v45 = *(v44 + 1);

    *v44 = v120;
    *(v44 + 1) = v37;
    __swift_destroy_boxed_opaque_existential_1(v131);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v21);
  sub_2171F0738(v20, &qword_27CB28B38, &unk_217770C68);
  __swift_destroy_boxed_opaque_existential_1(v131);
LABEL_15:
  sub_217269EF4(v134, v130);
  sub_217751DE8();
  sub_217751DE8();
  v116 = OUTLINED_FUNCTION_0_87();
  v115 = OUTLINED_FUNCTION_0_87();
  v46 = OUTLINED_FUNCTION_0_87();
  v47 = OUTLINED_FUNCTION_0_87();
  type metadata accessor for Station._AirTime();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  v52 = v21[5];
  sub_2172A497C(v130);
  memcpy(&v31[v52], v130, 0x221uLL);
  v31[v21[6]] = 2;
  v53 = &v31[v21[7]];
  *v53 = 0;
  v53[8] = 1;
  *&v31[v21[8]] = 0;
  v54 = &v31[v21[9]];
  v114 = xmmword_2177586D0;
  *v54 = xmmword_2177586D0;
  *(v54 + 1) = 0u;
  *(v54 + 2) = 0u;
  *(v54 + 3) = 0u;
  *&v31[v21[10]] = 0;
  v55 = &v31[v21[11]];
  *v55 = 0;
  v55[8] = 1;
  v31[v21[12]] = 2;
  v31[v21[13]] = 14;
  memcpy(&v31[v21[14]], v130, 0x221uLL);
  OUTLINED_FUNCTION_19_17(v21[15]);
  v56 = &v31[v21[16]];
  *(v56 + 14) = 0;
  *(v56 + 5) = 0u;
  *(v56 + 6) = 0u;
  *(v56 + 3) = 0u;
  *(v56 + 4) = 0u;
  *(v56 + 1) = 0u;
  *(v56 + 2) = 0u;
  *v56 = 0u;
  OUTLINED_FUNCTION_19_17(v21[17]);
  v57 = v21[18];
  v58 = sub_2177516D8();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
  OUTLINED_FUNCTION_19_17(v21[19]);
  v62 = v21[20];
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v58);
  v66 = &v31[v21[21]];
  *v66 = v114;
  *(v66 + 2) = 0;
  *(v66 + 3) = 0;
  OUTLINED_FUNCTION_19_17(v21[22]);
  *&v31[v21[23]] = 0;
  v67 = &v31[v21[24]];
  *(v67 + 6) = 0u;
  *(v67 + 7) = 0u;
  *(v67 + 4) = 0u;
  *(v67 + 5) = 0u;
  *(v67 + 2) = 0u;
  *(v67 + 3) = 0u;
  *v67 = 0u;
  *(v67 + 1) = 0u;
  v68 = &v31[v21[25]];
  *(v68 + 12) = 0;
  *(v68 + 4) = 0u;
  *(v68 + 5) = 0u;
  *(v68 + 2) = 0u;
  *(v68 + 3) = 0u;
  *v68 = 0u;
  *(v68 + 1) = 0u;
  if (qword_280BE3758 != -1)
  {
    swift_once();
  }

  v69 = qword_280C01FC0;
  if (qword_280C01FC0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v111 = sub_217752D28();

    object = v69;
    v69 = v111;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *&v31[v21[26]] = v69;
  v70 = &v31[v21[29]];
  memcpy(&v31[v21[27]], v134, 0x161uLL);
  v71 = &v31[v21[28]];
  *v71 = countAndFlagsBits;
  *(v71 + 1) = v36;
  v71[16] = isLibraryType;
  *v70 = v120;
  *(v70 + 1) = v37;
  v72 = v115;
  *&v31[v21[30]] = v116;
  *&v31[v21[31]] = v72;
  *&v31[v21[32]] = v46;
  *&v31[v21[33]] = v47;
  v35 = v117;
LABEL_20:
  v73 = sub_217751F18();
  v74 = [v124 musicKit:v73 artworkCatalogForProperty:?];

  if (v74)
  {
    swift_getObjectType();
    v75 = sub_217717634();
    *&v126[24] = &type metadata for SoftLinking_ArtworkCatalog;
    *&v126[32] = &off_28297F3C8;
    swift_unknownObjectRelease();
    *v126 = v75;
    sub_2171F3F0C(v126, v127);
    sub_2171FF30C(v127, v130);
    v129.id.rawValue._countAndFlagsBits = 1;
    memset(&v129.id.rawValue._object, 0, 24);
    Artwork.init(_:alternateText:existingColorAnalysis:)(v130, 0, 0, &v129, v128);
    memcpy(&v129, v128, 0x221uLL);
    nullsub_1(&v129, v76);
    v77 = v21[5];
    memcpy(v130, &v31[v77], 0x221uLL);
    sub_2171F0738(v130, &qword_27CB24400, &unk_21775E9A0);
    memcpy(&v31[v77], &v129, 0x221uLL);
    __swift_destroy_boxed_opaque_existential_1(v127);
  }

  KeyPath = swift_getKeyPath();
  sub_2173ACB54(8, v35);
  if (*(&v130[1] + 1))
  {
    v79 = swift_dynamicCast();
    if (v79)
    {
      v80 = v129.id.rawValue._countAndFlagsBits;
    }

    else
    {
      v80 = 0;
    }

    if (v79)
    {
      v81 = v129.id.rawValue._object;
    }

    else
    {
      v81 = 0;
    }
  }

  else
  {
    sub_2171F0738(v130, &qword_27CB2AD40, &qword_2177583F0);
    v80 = 0;
    v81 = 0;
  }

  sub_2173ACB54(1, v35);
  if (*&v126[24])
  {
    v82 = swift_dynamicCast();
    v84 = *(&v130[0] + 1);
    v83 = *&v130[0];
    if (!v82)
    {
      v83 = 0;
      v84 = 0;
    }
  }

  else
  {
    sub_2171F0738(v126, &qword_27CB2AD40, &qword_2177583F0);
    v83 = 0;
    v84 = 0;
  }

  if (!(v81 | v84))
  {
    v80 = 0;
    v83 = 0;
    v84 = 0;
    v81 = 1;
  }

  v129.id.rawValue._countAndFlagsBits = v80;
  v129.id.rawValue._object = v81;
  v129.type.rawValue._countAndFlagsBits = v83;
  v129.type.rawValue._object = v84;
  memset(&v129.type.isLibraryType, 0, 32);
  v130[0] = v129.id;
  v130[1] = v129.type.rawValue;
  memset(&v130[2], 0, 32);
  sub_2172A54C0(KeyPath, v130, 0);

  sub_2171F0738(&v129, &qword_27CB24B70, &unk_217759460);
  v85 = v21[6];
  if (v31[v85] == 2)
  {
    v86 = sub_2172A3A18(2, v35);
    if (v86 != 2)
    {
      v31[v85] = v86 & 1;
    }
  }

  v87 = v21[12];
  if (v31[v87] == 2)
  {
    v88 = sub_2172A3A18(3, v35);
    if (v88 != 2)
    {
      v31[v87] = v88;
    }
  }

  v89 = &v31[v21[15]];
  if (!v89[1])
  {
    v90 = sub_2172A3A00(4, v35);
    if (v91)
    {
      *v89 = v90;
      v89[1] = v91;
    }
  }

  v92 = &v31[v21[17]];
  if (!v92[1])
  {
    v93 = sub_2172A3A00(5, v35);
    if (v94)
    {
      *v92 = v93;
      v92[1] = v94;
    }
  }

  v95 = v21[18];
  v96 = v35;
  v97 = v121;
  sub_2171F5110(&v31[v95], v121, &unk_27CB277C0, &qword_217758DC0);
  v98 = sub_2177516D8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v97, 1, v98);
  sub_2171F0738(v97, &unk_27CB277C0, &qword_217758DC0);
  if (EnumTagSinglePayload == 1)
  {
    v100 = v113;
    sub_2172A39D4(v96, v113);
    if (__swift_getEnumTagSinglePayload(v100, 1, v98) != 1)
    {
      v101 = v112;
      sub_2171F5110(v100, v112, &unk_27CB277C0, &qword_217758DC0);
      sub_2171F0738(&v31[v95], &unk_27CB277C0, &qword_217758DC0);
      sub_21751AF10(v101, &v31[v95]);
    }

    sub_2171F0738(v100, &unk_27CB277C0, &qword_217758DC0);
  }

  v102 = &v31[v21[19]];
  if (v102[1])
  {
  }

  else
  {
    v103 = sub_2172A3A00(6, v96);
    v105 = v104;

    if (v105)
    {
      *v102 = v103;
      v102[1] = v105;
    }
  }

  swift_getKeyPath();
  sub_2174AEA00();

  sub_217269F50(v134);
  v128[3] = v21;
  v128[4] = &protocol witness table for StationPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v128);
  sub_217549F40(v31, boxed_opaque_existential_0);
  Station.init(propertyProvider:)(v128, v122);
  swift_unknownObjectRelease();
  sub_2171F0738(v125, &qword_27CB27590, &qword_21776ADF0);
  return sub_217549FA4(v31);
}

uint64_t Station.convertToLegacyModelStorageDictionary(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = v77 - v3;
  sub_2172A51DC();
  v84 = sub_217751DC8();
  if (qword_280BE6760 != -1)
  {
    swift_once();
  }

  sub_2176CABE4(qword_280C020A0, v5, v6, v7, v8, v9, v10, v11, v77[0], v77[1], v77[2], v77[3], v77[4], v77[5], v77[6], v77[7], v77[8], v77[9], v77[10], v77[11], v77[12], v77[13], v77[14], v77[15], v77[16], v77[17]);
  memcpy(v85, v82, 0x221uLL);
  memcpy(v86, v82, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v86) == 1)
  {
    memset(v83, 0, sizeof(v83));
  }

  else
  {
    v12 = *MEMORY[0x277D7F968];
    memcpy(v77, v86, 0x221uLL);
    v13 = sub_217751F48();
    Artwork._convertToLegacyModelArtworkCatalog(rawCropStyle:)(v13, v14, v83);

    sub_2171F0738(v85, &qword_27CB24400, &unk_21775E9A0);
  }

  sub_21729D40C(v83, 0);
  if (qword_280BE6800 != -1)
  {
    swift_once();
  }

  v22 = qword_280C02110;
  sub_2176CA430(qword_280C02110, v15, v16, v17, v18, v19, v20, v21, v77[0], v77[1], v77[2], v77[3], v77[4], v77[5], v77[6], v77[7], v77[8], v77[9], v77[10], v77[11], v77[12], v77[13], v77[14], v77[15], v77[16], v77[17]);
  v23 = MEMORY[0x277D837D0];
  if (v82[1] == 1 || (v24 = v82[2], v25 = v82[3], sub_217751DE8(), sub_2171F0738(v82, &qword_27CB24B70, &unk_217759460), !v25))
  {
    memset(v77, 0, 32);
  }

  else
  {
    v77[3] = v23;
    v77[0] = v24;
    v77[1] = v25;
  }

  v26 = OUTLINED_FUNCTION_1_78();
  sub_21729D40C(v26, 1);
  if (qword_280BE6818 != -1)
  {
    swift_once();
  }

  sub_2176CA43C(qword_280C02128, v27, v28, v29, v30, v31, v32, v33, v77[0], v77[1], v77[2], v77[3], v77[4], v77[5], v77[6], v77[7], v77[8], v77[9], v77[10], v77[11], v77[12], v77[13], v77[14], v77[15], v77[16], v77[17], v77[18], v77[19]);
  v34 = MEMORY[0x277D839B0];
  v77[3] = MEMORY[0x277D839B0];
  LOBYTE(v77[0]) &= 1u;
  v35 = OUTLINED_FUNCTION_1_78();
  sub_21729D40C(v35, 2);
  if (qword_280BE6768 != -1)
  {
    swift_once();
  }

  sub_2172A402C(qword_280C020A8, v36, v37, v38, v39, v40, v41, v42, v77[0], v77[1], v77[2], v77[3], v77[4], v77[5], SWORD2(v77[5]), SBYTE6(v77[5]), SHIBYTE(v77[5]), v77[6], v77[7], v77[8], v77[9], v77[10], v77[11], v77[12], v77[13]);
  v77[3] = v34;
  LOBYTE(v77[0]) = v43 & 1;
  v44 = OUTLINED_FUNCTION_1_78();
  sub_21729D40C(v44, 3);
  if (qword_280BE6778 != -1)
  {
    swift_once();
  }

  v45 = sub_2172A3FDC();
  if (v46)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0;
  }

  v48 = 0xE000000000000000;
  v77[3] = v23;
  if (v46)
  {
    v48 = v46;
  }

  v77[0] = v47;
  v77[1] = v48;
  v49 = OUTLINED_FUNCTION_1_78();
  sub_21729D40C(v49, 4);
  if (qword_280BE6790 != -1)
  {
    swift_once();
  }

  v50 = sub_2172A3FDC();
  if (v51)
  {
    v52 = MEMORY[0x277D837D0];
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v77[2] = 0;
  }

  v77[0] = v50;
  v77[1] = v51;
  v77[3] = v52;
  v53 = OUTLINED_FUNCTION_1_78();
  sub_21729D40C(v53, 5);
  if (qword_280BE67C8 != -1)
  {
    swift_once();
  }

  v54 = sub_2172A3FDC();
  if (v55)
  {
    v56 = MEMORY[0x277D837D0];
  }

  else
  {
    v54 = 0;
    v56 = 0;
    v77[2] = 0;
  }

  v77[0] = v54;
  v77[1] = v55;
  v77[3] = v56;
  v57 = OUTLINED_FUNCTION_1_78();
  sub_21729D40C(v57, 6);
  if (qword_280BE67A8 != -1)
  {
    swift_once();
  }

  sub_2176CA410(qword_280C020D8, v58, v59, v60, v61, v62, v63, v64, v77[0], v77[1], v77[2], v77[3], v77[4], v77[5], v77[6], v77[7], v77[8], v77[9], v77[10], v77[11], v77[12], v77[13], v77[14], v77[15], v77[16], v77[17], v77[18], v77[19], v77[20], v77[21]);
  v65 = sub_2177516D8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v65) == 1)
  {
    sub_2171F0738(v4, &unk_27CB277C0, &qword_217758DC0);
    v80 = 0u;
    v81 = 0u;
  }

  else
  {
    *(&v81 + 1) = v65;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v80);
    (*(*(v65 - 8) + 32))(boxed_opaque_existential_0, v4, v65);
  }

  sub_21729D40C(&v80, 7);
  sub_2176CA430(v22, v67, v68, v69, v70, v71, v72, v73, v77[0], v77[1], v77[2], v77[3], v77[4], v77[5], v77[6], v77[7], v77[8], v77[9], v77[10], v77[11], v77[12], v77[13], v77[14], v77[15], v77[16], v77[17]);
  v74 = v77[1];
  if (v77[1] == 1 || (v75 = v77[0], sub_217751DE8(), sub_2171F0738(v77, &qword_27CB24B70, &unk_217759460), !v74))
  {
    v78 = 0u;
    v79 = 0u;
  }

  else
  {
    *(&v79 + 1) = v23;
    *&v78 = v75;
    *(&v78 + 1) = v74;
  }

  sub_21729D40C(&v78, 8);
  return v84;
}

uint64_t Station.LegacyModelRadioStationPropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_217752DC8();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t Station.LegacyModelRadioStationPropertyKey.rawValue.getter()
{
  result = 0xD000000000000022;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
      result = 0xD00000000000002DLL;
      break;
    case 3:
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD000000000000033;
      break;
    case 6:
      result = 0xD000000000000027;
      break;
    case 7:
      result = 0xD000000000000030;
      break;
    case 8:
      result = 0xD00000000000002BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217549F0C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Station.LegacyModelRadioStationPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_217549F18@<X0>(unint64_t *a1@<X8>)
{
  result = Station.LegacyModelRadioStationPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217549F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StationPropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217549FA4(uint64_t a1)
{
  v2 = type metadata accessor for StationPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21754A000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StationPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21754A08C()
{
  result = qword_27CB29510;
  if (!qword_27CB29510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29510);
  }

  return result;
}

unint64_t sub_21754A0E0(uint64_t a1)
{
  *(a1 + 8) = sub_2172A51DC();
  result = sub_21754A110();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21754A110()
{
  result = qword_27CB29518;
  if (!qword_27CB29518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29518);
  }

  return result;
}

unint64_t sub_21754A168()
{
  result = qword_27CB29520;
  if (!qword_27CB29520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29520);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicCatalogID.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s34LegacyModelRadioStationPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t static AnyMusicSortDescriptor.sortDescriptor<A>(keyPath:ascending:)(void *a1, char a2)
{
  v4 = *(*a1 + *MEMORY[0x277D84208]);
  type metadata accessor for MusicSortDescriptor();
  v5 = MusicSortDescriptor.__allocating_init(_:ascending:)(a1, a2);

  return v5;
}

void sub_21754A3BC()
{
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000062, 0x80000002177B0350);
  type metadata accessor for AnyMusicSortDescriptor();
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  OUTLINED_FUNCTION_0_88();
  __break(1u);
}

void sub_21754A470()
{
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000056, 0x80000002177B03C0);
  type metadata accessor for AnyMusicSortDescriptor();
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  OUTLINED_FUNCTION_0_88();
  __break(1u);
}

uint64_t MusicSortDescriptor.init(_:ascending:)(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MusicSortDescriptor.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MusicSortDescriptor.__deallocating_deinit()
{
  MusicSortDescriptor.deinit();

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t MusicCatalogSearchResponse.TopResult.id.getter()
{
  MusicCatalogSearchResponse.TopResult.innerItem.getter(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return OUTLINED_FUNCTION_93();
}

double MusicCatalogSearchResponse.TopResult.innerItem.getter@<D0>(uint64_t *a1@<X8>)
{
  sub_217283E1C(v1, v8);
  v3 = off_27822A798[v11];
  v4 = *(&off_27822A7E0 + v11);
  a1[3] = off_27822A750[v11];
  a1[4] = v3;
  v5 = swift_allocObject();
  *a1 = v5;
  v6 = v8[1];
  *(v5 + 16) = v8[0];
  *(v5 + 32) = v6;
  result = *&v9;
  *(v5 + 48) = v9;
  *(v5 + 64) = v10;
  return result;
}

void *MusicCatalogSearchResponse.TopResult.artwork.getter@<X0>(void *a1@<X8>)
{
  sub_217283E1C(v1, v72);
  switch(v74)
  {
    case 1:
      v70[0] = v72[0];
      v70[1] = v72[1];
      v70[2] = v72[2];
      v71 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
      swift_allocObject();
      *&v63 = MEMORY[0x277D84F90];
      *(&v63 + 1) = MEMORY[0x277D84F90];
      v36 = sub_2173C381C(0x6B726F77747261, 0xE700000000000000, 0, 0, 0, 0, 2, 0, v63, MEMORY[0x277D84F90], &unk_282959AF8);
      sub_2174C7A58(v36, __src);

      sub_217284498(v70);
      memcpy(__dst, __src, sizeof(__dst));
      break;
    case 2:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE8148 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CAC7C(v12, v13, v14, v15, v16, v17, v18, v19, v62, v64, v65, v66, v67, v68, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_2172842E4(__src);
      break;
    case 3:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE6B50 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CA83C(v20, v21, v22, v23, v24, v25, v26, v27, v62, v64, v65, v66, v67, v68, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_217283C08(__src);
      break;
    case 4:
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_26_0();
      Playlist.artwork.getter(v11);
      sub_21726B8C4(__src);
      break;
    case 5:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE6648 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CAC70(v37, v38, v39, v40, v41, v42, v43, v44, v62, v64, v65, v66, v67, v68, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_217284394(__src);
      break;
    case 6:
      OUTLINED_FUNCTION_4_2();
      if (qword_27CB23B10 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CA854(v45, v46, v47, v48, v49, v50, v51, v52, v62, v64, v65, v66, v67, v68, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_217283CC4(__src);
      break;
    case 7:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE9708 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CA860(v28, v29, v30, v31, v32, v33, v34, v35, v62, v64, v65, v66, v67, v68, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_217283B58(__src);
      break;
    case 8:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE6760 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CABE4(v53, v54, v55, v56, v57, v58, v59, v60, v62, v64, v65, v66, v67, v68, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_217283DC8(__src);
      break;
    default:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE9428 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CA9A8(v3, v4, v5, v6, v7, v8, v9, v10, v62, v64, v65, v66, v67, v68, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_21725CE44(__src);
      break;
  }

  return memcpy(a1, __dst, 0x221uLL);
}

uint64_t MusicCatalogSearchResponse.TopResult.title.getter()
{
  v1 = sub_217283E1C(v0, &v18);
  switch(v23)
  {
    case 1:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE6898 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3FF0();
      OUTLINED_FUNCTION_21_4();
      sub_217284498(&v10);
      break;
    case 2:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE8158 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A4018();
      OUTLINED_FUNCTION_21_4();
      sub_2172842E4(&v10);
      break;
    case 3:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE6BC8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A4204();
      OUTLINED_FUNCTION_21_4();
      sub_217283C08(&v10);
      break;
    case 4:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE9208 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3F14();
      OUTLINED_FUNCTION_21_4();
      sub_21726B8C4(&v10);
      break;
    case 5:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE6658 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3F00();
      OUTLINED_FUNCTION_21_4();
      sub_217284394(&v10);
      break;
    case 6:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_27CB23B30 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A4004();
      OUTLINED_FUNCTION_21_4();
      sub_217283CC4(&v10);
      break;
    case 7:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE9750 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A41AC();
      OUTLINED_FUNCTION_21_4();
      sub_217283B58(&v10);
      break;
    case 8:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE6778 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3FDC();
      OUTLINED_FUNCTION_21_4();
      sub_217283DC8(&v10);
      break;
    default:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE9470 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A4380();
      OUTLINED_FUNCTION_21_4();
      sub_21725CE44(&v10);
      break;
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t static MusicCatalogSearchResponse.TopResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_217283E1C(a1, v137);
  v4 = sub_217283E1C(a2, &v138);
  switch(v137[56])
  {
    case 1:
      v68 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v139 != 1)
      {
        sub_217284498(&v130);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v68, v69, v70, v71, v72, v73, v74, v75, v122, v123, v124, v125, v126, v127, v128, v129, v130);
      v78 = v30 && v76 == v77;
      if (v78 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v130, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v79 = OUTLINED_FUNCTION_13_4();
        if (v2(v79))
        {
          sub_217284498(&v122);
          sub_217284498(&v130);
          goto LABEL_84;
        }
      }

      sub_217284498(&v122);
      sub_217284498(&v130);
      goto LABEL_95;
    case 2:
      v32 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v139 != 2)
      {
        sub_2172842E4(&v130);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v32, v33, v34, v35, v36, v37, v38, v39, v122, v123, v124, v125, v126, v127, v128, v129, v130);
      v42 = v30 && v40 == v41;
      if (v42 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v130, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v43 = OUTLINED_FUNCTION_13_4();
        if (v2(v43))
        {
          sub_2172842E4(&v122);
          sub_2172842E4(&v130);
          goto LABEL_84;
        }
      }

      sub_2172842E4(&v122);
      sub_2172842E4(&v130);
      goto LABEL_95;
    case 3:
      v44 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v139 != 3)
      {
        sub_217283C08(&v130);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v44, v45, v46, v47, v48, v49, v50, v51, v122, v123, v124, v125, v126, v127, v128, v129, v130);
      v54 = v30 && v52 == v53;
      if (v54 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v130, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v55 = OUTLINED_FUNCTION_13_4();
        if (v2(v55))
        {
          sub_217283C08(&v122);
          sub_217283C08(&v130);
          goto LABEL_84;
        }
      }

      sub_217283C08(&v122);
      sub_217283C08(&v130);
      goto LABEL_95;
    case 4:
      v20 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v139 != 4)
      {
        sub_21726B8C4(&v130);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v20, v21, v22, v23, v24, v25, v26, v27, v122, v123, v124, v125, v126, v127, v128, v129, v130);
      v30 = v30 && v28 == v29;
      if (v30 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v130, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v31 = OUTLINED_FUNCTION_13_4();
        if (v2(v31))
        {
          sub_21726B8C4(&v122);
          sub_21726B8C4(&v130);
          goto LABEL_84;
        }
      }

      sub_21726B8C4(&v122);
      sub_21726B8C4(&v130);
      goto LABEL_95;
    case 5:
      v80 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v139 != 5)
      {
        sub_217284394(&v130);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v80, v81, v82, v83, v84, v85, v86, v87, v122, v123, v124, v125, v126, v127, v128, v129, v130);
      v90 = v30 && v88 == v89;
      if (v90 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v130, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v91 = OUTLINED_FUNCTION_13_4();
        if (v2(v91))
        {
          sub_217284394(&v122);
          sub_217284394(&v130);
          goto LABEL_84;
        }
      }

      sub_217284394(&v122);
      sub_217284394(&v130);
      goto LABEL_95;
    case 6:
      v92 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v139 != 6)
      {
        sub_217283CC4(&v130);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v92, v93, v94, v95, v96, v97, v98, v99, v122, v123, v124, v125, v126, v127, v128, v129, v130);
      v102 = v30 && v100 == v101;
      if (v102 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v130, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v103 = OUTLINED_FUNCTION_13_4();
        if (v2(v103))
        {
          sub_217283CC4(&v122);
          sub_217283CC4(&v130);
          goto LABEL_84;
        }
      }

      sub_217283CC4(&v122);
      sub_217283CC4(&v130);
      goto LABEL_95;
    case 7:
      v56 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v139 != 7)
      {
        sub_217283B58(&v130);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v56, v57, v58, v59, v60, v61, v62, v63, v122, v123, v124, v125, v126, v127, v128, v129, v130);
      v66 = v30 && v64 == v65;
      if (v66 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v130, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v67 = OUTLINED_FUNCTION_13_4();
        if (v2(v67))
        {
          sub_217283B58(&v122);
          sub_217283B58(&v130);
          goto LABEL_84;
        }
      }

      sub_217283B58(&v122);
      sub_217283B58(&v130);
      goto LABEL_95;
    case 8:
      v104 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v139 != 8)
      {
        sub_217283DC8(&v130);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_2_0(v104, v105, v106, v107, v108, v109, v110, v111, v122, v123, v124, v125, v126, v127, v128, v129, v130);
      v114 = v30 && v112 == v113;
      if (v114 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v130, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v115 = OUTLINED_FUNCTION_13_4();
        if (v2(v115))
        {
          sub_217283DC8(&v122);
          sub_217283DC8(&v130);
          goto LABEL_84;
        }
      }

      sub_217283DC8(&v122);
      sub_217283DC8(&v130);
      goto LABEL_95;
    default:
      v12 = OUTLINED_FUNCTION_28_34(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v139)
      {
        sub_21725CE44(&v130);
LABEL_76:
        sub_21754CBE4(v137);
        return 0;
      }

      OUTLINED_FUNCTION_2_0(v12, v13, v14, v15, v16, v17, v18, v19, v122, v123, v124, v125, v126, v127, v128, v129, v130);
      v118 = v30 && v116 == v117;
      if (!v118 && (sub_217753058() & 1) == 0)
      {
        sub_21725CE44(&v122);
LABEL_94:
        sub_21725CE44(&v130);
LABEL_95:
        sub_217283E78(v137);
        return 0;
      }

      OUTLINED_FUNCTION_9_2(&v130, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
      v119 = OUTLINED_FUNCTION_13_4();
      v120 = v2(v119);
      sub_21725CE44(&v122);
      if ((v120 & 1) == 0)
      {
        goto LABEL_94;
      }

      sub_21725CE44(&v130);
LABEL_84:
      sub_217283E78(v137);
      return 1;
  }
}

uint64_t MusicCatalogSearchResponse.TopResult.hash(into:)()
{
  v1 = sub_217283E1C(v0, &v45);
  switch(v50)
  {
    case 1:
      v25 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      MEMORY[0x21CEA3550](1, v25);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1(&v39, v42);
      v26 = OUTLINED_FUNCTION_3_4();
      v27(v26);
      result = sub_217284498(&v37);
      break;
    case 2:
      v16 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      MEMORY[0x21CEA3550](2, v16);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1(&v39, v42);
      v17 = OUTLINED_FUNCTION_3_4();
      v18(v17);
      result = sub_2172842E4(&v37);
      break;
    case 3:
      v19 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      MEMORY[0x21CEA3550](3, v19);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1(&v39, v42);
      v20 = OUTLINED_FUNCTION_3_4();
      v21(v20);
      result = sub_217283C08(&v37);
      break;
    case 4:
      v13 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      MEMORY[0x21CEA3550](4, v13);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1(&v39, v42);
      v14 = OUTLINED_FUNCTION_3_4();
      v15(v14);
      result = sub_21726B8C4(&v37);
      break;
    case 5:
      v28 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      MEMORY[0x21CEA3550](5, v28);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1(&v39, v42);
      v29 = OUTLINED_FUNCTION_3_4();
      v30(v29);
      result = sub_217284394(&v37);
      break;
    case 6:
      v31 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      MEMORY[0x21CEA3550](6, v31);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1(&v39, v42);
      v32 = OUTLINED_FUNCTION_3_4();
      v33(v32);
      result = sub_217283CC4(&v37);
      break;
    case 7:
      v22 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      MEMORY[0x21CEA3550](7, v22);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1(&v39, v42);
      v23 = OUTLINED_FUNCTION_3_4();
      v24(v23);
      result = sub_217283B58(&v37);
      break;
    case 8:
      v34 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      MEMORY[0x21CEA3550](8, v34);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1(&v39, v42);
      v35 = OUTLINED_FUNCTION_3_4();
      v36(v35);
      result = sub_217283DC8(&v37);
      break;
    default:
      v9 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      MEMORY[0x21CEA3550](0, v9);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1(&v39, v42);
      v10 = OUTLINED_FUNCTION_3_4();
      v11(v10);
      result = sub_21725CE44(&v37);
      break;
  }

  return result;
}

uint64_t MusicCatalogSearchResponse.TopResult.hashValue.getter()
{
  sub_2177531E8();
  MusicCatalogSearchResponse.TopResult.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21754B718()
{
  sub_2177531E8();
  MusicCatalogSearchResponse.TopResult.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21754B754@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCatalogSearchResponse.TopResult.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicCatalogSearchResponse.TopResult.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EEED4();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicCatalogSearchResponse.TopResult.description.getter()
{
  sub_217283E1C(v0, &v29);
  switch(v34)
  {
    case 1:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      Artist.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217284498(v14);
      break;
    case 2:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      Curator.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_2172842E4(v11);
      break;
    case 3:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      MusicVideo.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217283C08(v12);
      break;
    case 4:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      Playlist.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_21726B8C4(v10);
      break;
    case 5:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      RadioShow.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217284394(v15);
      break;
    case 6:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      RecordLabel.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217283CC4(v16);
      break;
    case 7:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      Song.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217283B58(v13);
      break;
    case 8:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      Station.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217283DC8(v17);
      break;
    default:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_27_0();
      Album.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_21725CE44(v9);
      break;
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t MusicCatalogSearchResponse.TopResult.debugDescription.getter()
{
  sub_217283E1C(v0, v11);
  switch(v11[56])
  {
    case 1:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      Artist.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217284498(v6);
      break;
    case 2:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      Curator.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_2172842E4(v3);
      break;
    case 3:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      MusicVideo.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217283C08(v4);
      break;
    case 4:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      Playlist.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_21726B8C4(v2);
      break;
    case 5:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      RadioShow.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217284394(v7);
      break;
    case 6:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      RecordLabel.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217283CC4(v8);
      break;
    case 7:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      Song.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217283B58(v5);
      break;
    case 8:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      Station.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217283DC8(v9);
      break;
    default:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_25_39();
      Album.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_21725CE44(v1);
      break;
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t MusicCatalogSearchResponse.TopResult.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 48))(v151, v4, v5);
  v6 = v151[1];
  if (qword_280BE8A88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_30_2(&qword_280BE8A90);
  v8 = v8 && v7 == v6;
  if (v8 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_280BE8AE8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_30_2(&qword_280BE8AF0);
  v10 = v8 && v9 == v6;
  if (v10 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
  {
LABEL_15:

    OUTLINED_FUNCTION_32_28(v11, v12);
    v13 = v145;
    __swift_project_boxed_opaque_existential_1(v144, v145);
    v14 = OUTLINED_FUNCTION_8_49();
    v15(v14);
    OUTLINED_FUNCTION_64_0();
    sub_217269F50(v150);
    *&v146 = v13;
    *(&v146 + 1) = v6;
    v16 = __swift_project_boxed_opaque_existential_1(v144, v145);
    OUTLINED_FUNCTION_11_6(v16, v17, v18, v19, v20, v21, v22, v23, v141);
    __swift_destroy_boxed_opaque_existential_1(v144);
    v24 = 0;
  }

  else
  {
    if (qword_280BE4A68 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_30_2(&qword_280BE4A70);
    v28 = v8 && v27 == v6;
    if (v28 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
    {
      goto LABEL_31;
    }

    if (qword_280BE4B80 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_30_2(&qword_280BE4B88);
    v30 = v8 && v29 == v6;
    if (v30 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
    {
LABEL_31:

      OUTLINED_FUNCTION_32_28(v31, v32);
      v33 = v145;
      __swift_project_boxed_opaque_existential_1(v144, v145);
      v34 = OUTLINED_FUNCTION_8_49();
      v35(v34);
      OUTLINED_FUNCTION_64_0();
      sub_217269F50(v150);
      *&v146 = v33;
      *(&v146 + 1) = v6;
      v36 = __swift_project_boxed_opaque_existential_1(v144, v145);
      OUTLINED_FUNCTION_11_6(v36, v37, v38, v39, v40, v41, v42, v43, v141);
      __swift_destroy_boxed_opaque_existential_1(v144);
      v24 = 1;
    }

    else
    {
      if (qword_280BE7E50 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BE7E58);
      v45 = v8 && v44 == v6;
      if (v45 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
      {

        OUTLINED_FUNCTION_32_28(v46, v47);
        v48 = v145;
        __swift_project_boxed_opaque_existential_1(v144, v145);
        v49 = OUTLINED_FUNCTION_8_49();
        v50(v49);
        OUTLINED_FUNCTION_64_0();
        sub_217269F50(v150);
        *&v146 = v48;
        *(&v146 + 1) = v6;
        v51 = __swift_project_boxed_opaque_existential_1(v144, v145);
        OUTLINED_FUNCTION_11_6(v51, v52, v53, v54, v55, v56, v57, v58, v141);
        __swift_destroy_boxed_opaque_existential_1(v144);
        v24 = 2;
      }

      else
      {
        if (qword_280BE8B28 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_30_2(&qword_280BE8B30);
        v60 = v8 && v59 == v6;
        if (v60 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
        {
          goto LABEL_54;
        }

        if (qword_280BE8B68 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_30_2(&qword_280BE8B70);
        v62 = v8 && v61 == v6;
        if (v62 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
        {
LABEL_54:

          OUTLINED_FUNCTION_32_28(v63, v64);
          v65 = v145;
          __swift_project_boxed_opaque_existential_1(v144, v145);
          v66 = OUTLINED_FUNCTION_8_49();
          v67(v66);
          OUTLINED_FUNCTION_64_0();
          sub_217269F50(v150);
          *&v146 = v65;
          *(&v146 + 1) = v6;
          v68 = __swift_project_boxed_opaque_existential_1(v144, v145);
          OUTLINED_FUNCTION_11_6(v68, v69, v70, v71, v72, v73, v74, v75, v141);
          __swift_destroy_boxed_opaque_existential_1(v144);
          v24 = 3;
        }

        else
        {
          if (qword_280BE8A38 != -1)
          {
            goto LABEL_100;
          }

          while (1)
          {
            OUTLINED_FUNCTION_30_2(&qword_280BE8A40);
            v77 = v8 && v76 == v6;
            if (v77 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
            {
              goto LABEL_68;
            }

            if (qword_280BE8AA8 != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_30_2(&qword_280BE8AB0);
            v79 = v8 && v78 == v6;
            if (v79 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
            {
LABEL_68:

              OUTLINED_FUNCTION_32_28(v80, v81);
              v82 = v145;
              __swift_project_boxed_opaque_existential_1(v144, v145);
              v83 = OUTLINED_FUNCTION_8_49();
              v84(v83);
              OUTLINED_FUNCTION_64_0();
              sub_217269F50(v150);
              *&v146 = v82;
              *(&v146 + 1) = v6;
              v85 = __swift_project_boxed_opaque_existential_1(v144, v145);
              OUTLINED_FUNCTION_11_6(v85, v86, v87, v88, v89, v90, v91, v92, v141);
              __swift_destroy_boxed_opaque_existential_1(v144);
              v24 = 4;
              goto LABEL_16;
            }

            if (qword_280BE4C38 != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_30_2(&qword_280BE4C40);
            v94 = v8 && v93 == v6;
            if (v94 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
            {

              OUTLINED_FUNCTION_32_28(v95, v96);
              v97 = v145;
              __swift_project_boxed_opaque_existential_1(v144, v145);
              v98 = OUTLINED_FUNCTION_8_49();
              v99(v98);
              OUTLINED_FUNCTION_64_0();
              sub_217269F50(v150);
              *&v146 = v97;
              *(&v146 + 1) = v6;
              v100 = __swift_project_boxed_opaque_existential_1(v144, v145);
              OUTLINED_FUNCTION_11_6(v100, v101, v102, v103, v104, v105, v106, v107, v141);
              __swift_destroy_boxed_opaque_existential_1(v144);
              v24 = 6;
              goto LABEL_16;
            }

            if (qword_280BEA1C8 != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_30_2(&qword_280BEA1D0);
            v109 = v8 && v108 == v6;
            if (v109 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
            {
              goto LABEL_91;
            }

            if (qword_280BE8B08 != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_30_2(&qword_280BE8B10);
            v111 = v8 && v110 == v6;
            if (v111 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
            {
LABEL_91:

              OUTLINED_FUNCTION_32_28(v112, v113);
              v114 = v145;
              __swift_project_boxed_opaque_existential_1(v144, v145);
              v115 = OUTLINED_FUNCTION_8_49();
              v116(v115);
              OUTLINED_FUNCTION_64_0();
              sub_217269F50(v150);
              *&v146 = v114;
              *(&v146 + 1) = v6;
              v117 = __swift_project_boxed_opaque_existential_1(v144, v145);
              OUTLINED_FUNCTION_11_6(v117, v118, v119, v120, v121, v122, v123, v124, v141);
              __swift_destroy_boxed_opaque_existential_1(v144);
              v24 = 7;
              goto LABEL_16;
            }

            if (qword_280BE8A60 != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_30_2(&qword_280BE8A68);
            if (v8 && v125 == v6)
            {
              break;
            }

            v127 = OUTLINED_FUNCTION_25_38();

            if (v127)
            {
              goto LABEL_102;
            }

            v143 = 0;
            v141 = 250;
            sub_217752D08();
            __break(1u);
LABEL_100:
            swift_once();
          }

LABEL_102:
          OUTLINED_FUNCTION_32_28(v128, v129, v141, v143);
          v130 = v145;
          __swift_project_boxed_opaque_existential_1(v144, v145);
          v131 = OUTLINED_FUNCTION_8_49();
          v132(v131);
          OUTLINED_FUNCTION_64_0();
          sub_217269F50(v150);
          *&v146 = v130;
          *(&v146 + 1) = v6;
          v133 = __swift_project_boxed_opaque_existential_1(v144, v145);
          OUTLINED_FUNCTION_11_6(v133, v134, v135, v136, v137, v138, v139, v140, v142);
          __swift_destroy_boxed_opaque_existential_1(v144);
          v24 = 8;
        }
      }
    }
  }

LABEL_16:
  v25 = v147;
  *a2 = v146;
  *(a2 + 16) = v25;
  *(a2 + 32) = v148;
  *(a2 + 48) = v149;
  *(a2 + 56) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double sub_21754C67C()
{
  if (qword_280BEB7A0 != -1)
  {
    swift_once();
  }

  v0 = off_280BEB7A8;
  os_unfair_lock_lock(*(off_280BEB7A8 + 2));
  sub_21770FA7C(0xD000000000000024, 0x80000002177B0760, &type metadata for MusicCatalogSearchResponse.TopResult, &protocol witness table for MusicCatalogSearchResponse.TopResult, &v2);
  os_unfair_lock_unlock(v0[2]);
  result = *&v2;
  xmmword_27CB29528 = v2;
  qword_27CB29538 = v3;
  unk_27CB29540 = v4;
  return result;
}

uint64_t static MusicCatalogSearchResponse.TopResult.typeValue.getter@<X0>(__n128 *a1@<X8>)
{
  if (qword_27CB23C48 != -1)
  {
    swift_once();
  }

  *a1 = OUTLINED_FUNCTION_1449(&xmmword_27CB29528);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v2;

  return sub_217751DE8();
}

uint64_t sub_21754C7B4()
{
  if (qword_27CB23C48 != -1)
  {
    swift_once();
  }

  xmmword_27CB29548 = xmmword_27CB29528;
  xmmword_27CB29558 = xmmword_27CB29538;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.catalogSearchTopResult.getter@<X0>(__n128 *a1@<X8>)
{
  if (qword_27CB23C50 != -1)
  {
    swift_once();
  }

  *a1 = OUTLINED_FUNCTION_1449(&xmmword_27CB29548);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v2;

  return sub_217751DE8();
}

uint64_t sub_21754C89C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217777380;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = OUTLINED_FUNCTION_1449(&xmmword_280BE62F8);
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v3 = qword_280BE6270;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = OUTLINED_FUNCTION_1449(&xmmword_280BE6278);
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  v6 = qword_280BE7FE8;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  *(v0 + 96) = OUTLINED_FUNCTION_1449(&xmmword_280BE7FF0);
  *(v0 + 112) = v8;
  *(v0 + 120) = v7;
  v9 = qword_280BE6378;
  sub_217751DE8();
  if (v9 != -1)
  {
    swift_once();
  }

  *(v0 + 128) = OUTLINED_FUNCTION_1449(&xmmword_280BE6380);
  *(v0 + 144) = v11;
  *(v0 + 152) = v10;
  v12 = qword_280BE6220;
  sub_217751DE8();
  if (v12 != -1)
  {
    swift_once();
  }

  *(v0 + 160) = OUTLINED_FUNCTION_1449(&xmmword_280BE6228);
  *(v0 + 176) = v14;
  *(v0 + 184) = v13;
  v15 = qword_280BE61F8;
  sub_217751DE8();
  if (v15 != -1)
  {
    swift_once();
  }

  *(v0 + 192) = OUTLINED_FUNCTION_1449(&xmmword_280BE6200);
  *(v0 + 208) = v17;
  *(v0 + 216) = v16;
  v18 = qword_280BE6348;
  sub_217751DE8();
  if (v18 != -1)
  {
    swift_once();
  }

  *(v0 + 224) = OUTLINED_FUNCTION_1449(&xmmword_280BE6350);
  *(v0 + 240) = v20;
  *(v0 + 248) = v19;
  v21 = qword_280BEB138;
  sub_217751DE8();
  if (v21 != -1)
  {
    swift_once();
  }

  *(v0 + 256) = OUTLINED_FUNCTION_1449(&xmmword_280BEB140);
  *(v0 + 272) = v23;
  *(v0 + 280) = v22;
  v24 = qword_280BE6248;
  sub_217751DE8();
  if (v24 != -1)
  {
    swift_once();
  }

  *(v0 + 288) = OUTLINED_FUNCTION_1449(&xmmword_280BE6250);
  *(v0 + 304) = v26;
  *(v0 + 312) = v25;
  qword_27CB29568 = v0;

  return sub_217751DE8();
}