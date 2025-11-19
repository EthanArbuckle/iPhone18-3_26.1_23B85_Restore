void *sub_3C928(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = sub_D7FF8();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_D8028();
        sub_D8058();
        v4 = v15;
        sub_D8068();
        sub_D8038();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

BOOL sub_3CB48(void *a1, void *a2)
{
  v5 = sub_D6998();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v9);
  v12 = &v31[-v11];
  v13 = [v2 controllerToProfileMappings];
  v14 = sub_D7B48();

  v15 = [a1 persistentIdentifier];
  v16 = sub_D7C18();
  v18 = v17;

  if (!*(v14 + 16))
  {
    goto LABEL_9;
  }

  v19 = sub_1ED4C(v16, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  (*(v6 + 16))(v8, *(v14 + 56) + *(v6 + 72) * v19, v5);

  (*(v6 + 32))(v12, v8, v5);
  v22 = [a2 profiles];
  sub_27120();
  v23 = sub_D7D28();

  __chkstk_darwin(v24);
  *&v31[-16] = v12;
  v25 = sub_3C928(sub_3DB40, &v31[-32], v23);
  if (v25 >> 62)
  {
    v30 = v25;
    v26 = sub_D8078();
    v25 = v30;
  }

  else
  {
    v26 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
  }

  v27 = v26 != 0;
  if (!v26)
  {
    goto LABEL_13;
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
    sub_D7FF8();
    swift_unknownObjectRelease();
LABEL_13:

    goto LABEL_14;
  }

  v28 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));

  if (!v28)
  {
    __break(1u);
LABEL_9:

    goto LABEL_10;
  }

LABEL_14:
  (*(v6 + 8))(v12, v5);
  return v27;
}

uint64_t sub_3CE44(id *a1)
{
  v2 = sub_D6998();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_D6978();

  v8 = sub_D6968();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_3D094()
{
  v1 = [v0 bundleIdentifier];
  v2 = sub_D7C18();
  v4 = v3;

  v5 = [objc_opt_self() defaultIdentifier];
  v6 = sub_D7C18();
  v8 = v7;

  if (v2 == v6 && v4 == v8)
  {

    v11 = 0;
  }

  else
  {
    v10 = sub_D8118();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_3D178()
{
  sub_DC40(&qword_118E40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_DEAA0;
  *(v0 + 32) = [swift_getObjCClassFromMetadata() defaultGame];
  sub_3DB70(_swiftEmptyArrayStorage);
  sub_3DD4C(_swiftEmptyArrayStorage);
  v1 = objc_allocWithZone(GCSGame);
  v2 = sub_D7BD8();
  v3 = sub_D7BD8();
  sub_D6998();
  isa = sub_D7B38().super.isa;

  type metadata accessor for GCSCompatibilityMode();
  v5 = sub_D7B38().super.isa;

  v6 = [v1 initWithBundleIdentifier:v2 title:v3 controllerToProfileMappings:isa controllerToCompatibilityModeMappings:v5];

  *(v0 + 40) = v6;
  return v0;
}

uint64_t sub_3D37C()
{
  v1 = v0;
  v2 = [v0 bundleIdentifier];
  v3 = sub_D7C18();
  v5 = v4;

  v6 = [objc_opt_self() defaultIdentifier];
  v7 = sub_D7C18();
  v9 = v8;

  if (v3 == v7 && v5 == v9)
  {

    return sub_A9308(0xD000000000000010, 0x80000000000E5650);
  }

  v11 = sub_D8118();

  if (v11)
  {
    return sub_A9308(0xD000000000000010, 0x80000000000E5650);
  }

  if (objc_getAssociatedObject(v1, &unk_11B3C0))
  {
    sub_D7F58();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (*(&v26 + 1))
  {
    if (swift_dynamicCast())
    {
      return v24;
    }
  }

  else
  {
    sub_3DEA0(v27);
  }

  v13 = [v1 title];
  sub_D7C18();

  v14 = [v1 bundleIdentifier];
  v15 = sub_D7C18();
  v17 = v16;

  v18 = objc_allocWithZone(LSApplicationRecord);
  v19 = sub_3D688(v15, v17, 0);

  sub_D69A8();
  isa = sub_D7D18().super.isa;

  v21 = [v19 localizedNameWithPreferredLocalizations:isa];

  v22 = sub_D7C18();
  v23 = sub_D7BD8();
  objc_setAssociatedObject(v1, &unk_11B3C0, v23, &stru_2E8.segname[9]);

  return v22;
}

void sub_3D630(uint64_t *a1@<X8>)
{
  v3 = [*v1 bundleIdentifier];
  v4 = sub_D7C18();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

id sub_3D688(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_D7BD8();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_D6848();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_3D76C(uint64_t a1, id *a2)
{
  result = sub_D7BF8();
  *a2 = 0;
  return result;
}

uint64_t sub_3D7E4(uint64_t a1, id *a2)
{
  v3 = sub_D7C08();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_3D864@<X0>(void *a1@<X8>)
{
  sub_D7C18();
  v2 = sub_D7BD8();

  *a1 = v2;
  return result;
}

uint64_t sub_3D8A8@<X0>(void *a1@<X8>)
{
  v2 = sub_D7BD8();

  *a1 = v2;
  return result;
}

uint64_t sub_3D8F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D7C18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_3D91C(uint64_t a1)
{
  v2 = sub_3DFA4(&qword_117290);
  v3 = sub_3DFA4(&unk_119190);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_3D9B4()
{
  sub_D7C18();
  v0 = sub_D7CE8();

  return v0;
}

uint64_t sub_3D9F0()
{
  sub_D7C18();
  sub_D7C78();
}

Swift::Int sub_3DA44()
{
  sub_D7C18();
  sub_D8168();
  sub_D7C78();
  v0 = sub_D8198();

  return v0;
}

uint64_t sub_3DAB8()
{
  v0 = sub_D7C18();
  v2 = v1;
  if (v0 == sub_D7C18() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_D8118();
  }

  return v5 & 1;
}

unint64_t sub_3DB70(uint64_t a1)
{
  v2 = sub_DC40(&qword_1172A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_DC40(&unk_119100);
    v7 = sub_D80A8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_3DFE8(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1ED4C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_D6998();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3DD4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_DC40(&qword_117298);
    v3 = sub_D80A8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1ED4C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void type metadata accessor for GCSCompatibilityMode()
{
  if (!qword_117280)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_117280);
    }
  }
}

uint64_t sub_3DEA0(uint64_t a1)
{
  v2 = sub_DC40(&qword_119330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3DFA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GCSCompatibilityMode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3DFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_1172A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_3E074()
{
  v1 = *(v0 + 8);
  if (v1)
  {

    return v1;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_43340(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_3E100()
{
  type metadata accessor for GCSPreferencesStore();
  sub_43340(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DC8();
}

uint64_t sub_3E188()
{
  sub_DC40(&qword_116510);
  sub_D78B8();
  return v1;
}

void (*sub_3E23C(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 40);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_16444(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_DC40(&qword_116510);
  sub_D78B8();
  return sub_22030;
}

uint64_t sub_3E2F8()
{
  sub_DC40(&qword_116510);
  sub_D78E8();
  return v1;
}

uint64_t sub_3E354()
{
  sub_DC40(&qword_1172A8);
  sub_D78B8();
  return v1;
}

void (*sub_3E408(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[6];
  v6 = v1[7];
  v3[9] = v5;
  v3[10] = v6;
  v7 = v1[8];
  v3[11] = v7;
  v3[6] = v5;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  v8 = v7;
  v4[12] = sub_DC40(&qword_1172A8);
  sub_D78B8();
  return sub_3E4C8;
}

void sub_3E4C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  *(v2 + 24) = *(*a1 + 72);
  v4 = *(v2 + 56);
  *(v2 + 64) = v4;
  v5 = *(v2 + 88);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    sub_D78C8();
    sub_164A0(v2 + 48);
  }

  else
  {
    sub_D78C8();
    sub_164A0(v2 + 48);
  }

  free(v2);
}

uint64_t sub_3E584()
{
  sub_DC40(&qword_1172A8);
  sub_D78E8();
  return v1;
}

void *sub_3E5E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_D7078();
  v12 = 1;
  v4 = sub_D6FB8();
  v11 = 1;
  sub_3E6D0(v1, __src);
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v14, __src, 0x109uLL);
  sub_16054(__dst, &v8, &qword_1172B0);
  sub_160BC(v14, &qword_1172B0);
  memcpy(&v10[7], __dst, 0x109uLL);
  v5 = v11;
  v6 = v12;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = v5;
  return memcpy((a1 + 41), v10, 0x110uLL);
}

void sub_3E6D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_58D24();
  v6 = nullsub_1(v5);
  v124 = v8;
  v125 = v7;
  v126 = sub_D7088();
  v146 = 0;
  v9 = [v4 localizedName];
  v10 = sub_D7C18();
  v12 = v11;

  *v159 = v10;
  *&v159[8] = v12;
  sub_16000();
  v13 = sub_D73B8();
  v121 = v14;
  v122 = v13;
  v120 = v15;
  v123 = v16;
  v17 = *(a1 + 8);
  if (v17)
  {
    v18 = *(&stru_248.size + (swift_isaMask & *v17));
    v19 = v17;
    v127 = v6;
    if (v18(v4))
    {
      v20 = (*(&stru_248.offset + (swift_isaMask & *v19)))(v4);

      v117 = sub_D6FA8();
      v163 = 0;
      if (v20)
      {
        v113 = sub_D7688();
        sub_D7A18();
        sub_D6C28();
        *&v128[6] = v135;
        *&v128[22] = v136;
        *&v128[38] = v137;
        *v159 = sub_A9308(0x5F544F4C49504F43, 0xEE0044454B4E494CLL);
        *&v159[8] = v21;
        v22 = sub_D73B8();
        v24 = v23;
        v26 = v25;
        sub_D72E8();
        v27 = sub_D7398();
        v29 = v28;
        v31 = v30;
        v111 = v32;

        sub_1F8F0(v22, v24, v26 & 1);

        v33 = v4;
        v34 = sub_2DBF4();
        v36 = v35;
        v37 = sub_2D0E0();
        sub_2DC6C(v34, v36, v37, v38, v33, v147);
        v39 = *v147;
        v40 = *v147;
        v41 = *&v147[16];
        v42 = *&v147[40];
        *v158 = v113;
        *&v158[8] = 256;
        *&v158[10] = *v128;
        *&v158[26] = *&v128[16];
        *&v158[42] = *&v128[32];
        *&v158[56] = *(&v137 + 1);
        LOBYTE(v24) = v31 & 1;
        v165 = v31 & 1;
        v164 = v147[32] & 1;
        v115 = v147[32] & 1;
        *&v150[32] = *&v158[32];
        *&v150[48] = *&v158[48];
        *v150 = *v158;
        *&v150[16] = *&v158[16];
        sub_16054(v158, v159, &qword_1171A0);
        sub_1F900(v27, v29, v31 & 1);
        v43 = v39;

        sub_43B70();
        v44 = v42;

        sub_2DAA4();
        sub_1F8F0(v27, v29, v24);

        *v159 = v113;
        *&v159[8] = 256;
        *&v159[10] = *v128;
        *&v159[26] = *&v128[16];
        *&v159[42] = *&v128[32];
        *&v159[56] = *(&v137 + 1);
        sub_160BC(v159, &qword_1171A0);
        v135 = *v150;
        v136 = *&v150[16];
        v137 = *&v150[32];
        v138 = *&v150[48];
        DWORD1(v140) = *&v158[3];
        *(&v140 + 1) = *v158;
        DWORD1(v143) = *&v147[3];
        *(&v143 + 1) = *v147;
        *&v139 = v27;
        *(&v139 + 1) = v29;
        LOBYTE(v140) = v24;
        *(&v140 + 1) = v111;
        v141 = v40;
        v142 = v41;
        LOBYTE(v143) = v115;
        *(&v143 + 1) = v44;
        *&v128[32] = *&v150[32];
        *&v128[48] = *&v150[48];
        *v128 = *v150;
        *&v128[16] = *&v150[16];
        *&v129 = v27;
        *(&v129 + 1) = v29;
        LOBYTE(v130) = v24;
        DWORD1(v130) = *&v158[3];
        *(&v130 + 1) = *v158;
        *(&v130 + 1) = v111;
        v131 = v40;
        v132 = v41;
        LOBYTE(v133) = v115;
        DWORD1(v133) = *&v147[3];
        *(&v133 + 1) = *v147;
        *(&v133 + 1) = v44;
        sub_16054(&v135, v159, &qword_117488);
        sub_160BC(v128, &qword_117488);
        *&v147[87] = v140;
        *&v147[103] = v141;
        *&v147[119] = v142;
        *&v147[135] = v143;
        *&v147[23] = v136;
        *&v147[39] = v137;
        *&v147[55] = v138;
        *&v147[71] = v139;
        *&v147[7] = v135;
        LOBYTE(v39) = v163;
        v45 = sub_D7198();
        *&v159[113] = *&v147[96];
        *&v159[129] = *&v147[112];
        *&v159[145] = *&v147[128];
        *&v159[49] = *&v147[32];
        *&v159[65] = *&v147[48];
        *&v159[81] = *&v147[64];
        *&v159[97] = *&v147[80];
        *&v159[17] = *v147;
        *v159 = v117;
        *&v159[8] = 0x4014000000000000;
        v159[16] = v39;
        *&v159[160] = *&v147[143];
        *&v159[33] = *&v147[16];
        *&v159[168] = v45;
        sub_43B68(v159);
      }

      else
      {
        v114 = sub_D7658();
        sub_D7A18();
        sub_D6C28();
        *&v128[6] = v135;
        *&v128[22] = v136;
        *&v128[38] = v137;
        *v159 = sub_A9308(0xD000000000000013, 0x80000000000E52F0);
        *&v159[8] = v63;
        v64 = sub_D73B8();
        v66 = v65;
        v68 = v67;
        sub_D72E8();
        v69 = sub_D7398();
        v71 = v70;
        v73 = v72;
        v112 = v74;

        sub_1F8F0(v64, v66, v68 & 1);

        v75 = v4;
        v76 = sub_2DBF4();
        v78 = v77;
        v79 = sub_2D0E0();
        sub_2DC6C(v76, v78, v79, v80, v75, v147);
        v81 = *v147;
        v82 = *v147;
        v83 = *&v147[16];
        v84 = *&v147[40];
        *v158 = v114;
        *&v158[8] = 256;
        *&v158[10] = *v128;
        *&v158[26] = *&v128[16];
        *&v158[42] = *&v128[32];
        *&v158[56] = *(&v137 + 1);
        LOBYTE(v66) = v73 & 1;
        v165 = v73 & 1;
        v164 = v147[32] & 1;
        v116 = v147[32] & 1;
        *&v150[32] = *&v158[32];
        *&v150[48] = *&v158[48];
        *v150 = *v158;
        *&v150[16] = *&v158[16];
        sub_16054(v158, v159, &qword_1171A0);
        sub_1F900(v69, v71, v73 & 1);
        v85 = v81;

        sub_43B70();
        v86 = v84;

        sub_2DAA4();
        sub_1F8F0(v69, v71, v66);

        *v159 = v114;
        *&v159[8] = 256;
        *&v159[10] = *v128;
        *&v159[26] = *&v128[16];
        *&v159[42] = *&v128[32];
        *&v159[56] = *(&v137 + 1);
        sub_160BC(v159, &qword_1171A0);
        v135 = *v150;
        v136 = *&v150[16];
        v137 = *&v150[32];
        v138 = *&v150[48];
        DWORD1(v140) = *&v158[3];
        *(&v140 + 1) = *v158;
        DWORD1(v143) = *&v147[3];
        *(&v143 + 1) = *v147;
        *&v139 = v69;
        *(&v139 + 1) = v71;
        LOBYTE(v140) = v66;
        *(&v140 + 1) = v112;
        v141 = v82;
        v142 = v83;
        LOBYTE(v143) = v116;
        *(&v143 + 1) = v86;
        *&v128[32] = *&v150[32];
        *&v128[48] = *&v150[48];
        *v128 = *v150;
        *&v128[16] = *&v150[16];
        *&v129 = v69;
        *(&v129 + 1) = v71;
        LOBYTE(v130) = v66;
        DWORD1(v130) = *&v158[3];
        *(&v130 + 1) = *v158;
        *(&v130 + 1) = v112;
        v131 = v82;
        v132 = v83;
        LOBYTE(v133) = v116;
        DWORD1(v133) = *&v147[3];
        *(&v133 + 1) = *v147;
        *(&v133 + 1) = v86;
        sub_16054(&v135, v159, &qword_117488);
        sub_160BC(v128, &qword_117488);
        *&v147[87] = v140;
        *&v147[103] = v141;
        *&v147[119] = v142;
        *&v147[135] = v143;
        *&v147[23] = v136;
        *&v147[39] = v137;
        *&v147[55] = v138;
        *&v147[71] = v139;
        *&v147[7] = v135;
        LOBYTE(v75) = v163;
        v87 = sub_D7198();
        *&v159[113] = *&v147[96];
        *&v159[129] = *&v147[112];
        *&v159[145] = *&v147[128];
        *&v159[49] = *&v147[32];
        *&v159[65] = *&v147[48];
        *&v159[81] = *&v147[64];
        *&v159[97] = *&v147[80];
        *&v159[17] = *v147;
        *v159 = v117;
        *&v159[8] = 0x4014000000000000;
        v159[16] = v75;
        *&v159[160] = *&v147[143];
        *&v159[33] = *&v147[16];
        *&v159[168] = v87;
        sub_43B54(v159);
      }

      *&v158[128] = *&v159[128];
      *&v158[144] = *&v159[144];
      *&v158[157] = *&v159[157];
      *&v158[64] = *&v159[64];
      *&v158[80] = *&v159[80];
      *&v158[112] = *&v159[112];
      *&v158[96] = *&v159[96];
      *v158 = *v159;
      *&v158[16] = *&v159[16];
      *&v158[48] = *&v159[48];
      *&v158[32] = *&v159[32];
      sub_DC40(&qword_117468);
      sub_43A70();
      sub_D70B8();
      *&v158[128] = v155;
      *&v158[144] = *v156;
      *&v158[157] = *&v156[13];
      *&v158[64] = v151;
      *&v158[80] = v152;
      *&v158[112] = v154;
      *&v158[96] = v153;
      *v158 = *v150;
      *&v158[16] = *&v150[16];
      *&v158[48] = *&v150[48];
      *&v158[32] = *&v150[32];
      sub_43B60(v158);
      v133 = *&v158[128];
      v134[0] = *&v158[144];
      *(v134 + 14) = *&v158[158];
      v129 = *&v158[64];
      v130 = *&v158[80];
      v131 = *&v158[96];
      v132 = *&v158[112];
      *v128 = *v158;
      *&v128[16] = *&v158[16];
      *&v128[32] = *&v158[32];
      *&v128[48] = *&v158[48];
      sub_DC40(&qword_117450);
      sub_DC40(&qword_117160);
      sub_439EC();
      sub_39804();
      sub_D70B8();
    }

    else
    {

      v119 = sub_D6FA8();
      v165 = 0;
      v46 = sub_D75C8();
      sub_D7A18();
      sub_D6C28();
      *&v150[6] = *v147;
      *&v150[22] = *&v147[16];
      *&v150[38] = *&v147[32];
      *v159 = sub_A9308(0xD000000000000016, 0x80000000000E5310);
      *&v159[8] = v47;
      v48 = sub_D73B8();
      v50 = v49;
      v51 = a2;
      v53 = v52;
      sub_D72E8();
      v54 = sub_D7398();
      v56 = v55;
      v58 = v57;
      v118 = v59;

      v60 = v53 & 1;
      a2 = v51;
      sub_1F8F0(v48, v50, v60);

      *v158 = v46;
      *&v158[8] = 256;
      *&v158[10] = *v150;
      *&v158[26] = *&v150[16];
      *&v158[42] = *&v150[32];
      *&v158[56] = *&v147[40];
      *&v128[32] = *&v158[32];
      *&v128[48] = *&v158[48];
      *v128 = *v158;
      *&v128[16] = *&v158[16];
      sub_16054(v158, v159, &qword_1171A0);
      sub_1F900(v54, v56, v58 & 1);

      sub_1F8F0(v54, v56, v58 & 1);

      *v159 = v46;
      *&v159[8] = 256;
      *&v159[10] = *v150;
      *&v159[26] = *&v150[16];
      *&v159[42] = *&v150[32];
      *&v159[56] = *&v147[40];
      sub_160BC(v159, &qword_1171A0);
      v135 = *v128;
      v136 = *&v128[16];
      v137 = *&v128[32];
      v138 = *&v128[48];
      *&v139 = v54;
      *(&v139 + 1) = v56;
      LOBYTE(v140) = v58 & 1;
      DWORD1(v140) = *&v158[3];
      *(&v140 + 1) = *v158;
      *(&v140 + 1) = v118;
      *&v150[32] = *&v128[32];
      *&v150[48] = *&v128[48];
      *v150 = *v128;
      *&v150[16] = *&v128[16];
      *&v151 = v54;
      *(&v151 + 1) = v56;
      LOBYTE(v152) = v58 & 1;
      DWORD1(v152) = *&v158[3];
      *(&v152 + 1) = *v158;
      *(&v152 + 1) = v118;
      sub_16054(&v135, v159, &qword_117150);
      sub_160BC(v150, &qword_117150);
      *&v147[39] = v137;
      *&v147[55] = v138;
      *&v147[71] = v139;
      *&v147[87] = v140;
      *&v147[7] = v135;
      *&v147[23] = v136;
      v61 = v165;
      v62 = sub_D7198();
      *&v158[65] = *&v147[48];
      *&v158[81] = *&v147[64];
      *&v158[97] = *&v147[80];
      *&v158[17] = *v147;
      *&v158[33] = *&v147[16];
      *v158 = v119;
      *&v158[8] = 0x4014000000000000;
      v158[16] = v61;
      *&v158[112] = *&v147[95];
      *&v158[49] = *&v147[32];
      *&v158[120] = v62;
      sub_439E0(v158);
      v133 = *&v158[128];
      v134[0] = *&v158[144];
      *(v134 + 14) = *&v158[158];
      v129 = *&v158[64];
      v130 = *&v158[80];
      v131 = *&v158[96];
      v132 = *&v158[112];
      *v128 = *v158;
      *&v128[16] = *&v158[16];
      *&v128[32] = *&v158[32];
      *&v128[48] = *&v158[48];
      sub_DC40(&qword_117450);
      sub_DC40(&qword_117160);
      sub_439EC();
      sub_39804();
      sub_D70B8();
    }

    *&v158[128] = *&v159[128];
    *&v158[144] = *&v159[144];
    *&v158[158] = *&v159[158];
    *&v158[64] = *&v159[64];
    *&v158[80] = *&v159[80];
    *&v158[112] = *&v159[112];
    *&v158[96] = *&v159[96];
    *v158 = *v159;
    *&v158[16] = *&v159[16];
    *&v158[48] = *&v159[48];
    *&v158[32] = *&v159[32];
    v133 = *&v159[128];
    v134[0] = *&v159[144];
    *(v134 + 14) = *&v159[158];
    v129 = *&v159[64];
    v130 = *&v159[80];
    v131 = *&v159[96];
    v132 = *&v159[112];
    *v128 = *v159;
    *&v128[16] = *&v159[16];
    *&v128[32] = *&v159[32];
    *&v128[48] = *&v159[48];
    v143 = *&v159[128];
    v144[0] = *&v159[144];
    *(v144 + 14) = *&v159[158];
    v139 = *&v159[64];
    v140 = *&v159[80];
    v141 = *&v159[96];
    v142 = *&v159[112];
    v135 = *v159;
    v136 = *&v159[16];
    v165 = v120 & 1;
    v137 = *&v159[32];
    v138 = *&v159[48];
    sub_1F900(v122, v121, v120 & 1);

    sub_16054(v128, v150, &qword_117480);
    sub_160BC(v158, &qword_117480);
    sub_1F8F0(v122, v121, v120 & 1);

    *&v147[32] = v135;
    *&v147[48] = v136;
    *&v147[96] = v139;
    *&v147[112] = v140;
    *&v147[64] = v137;
    *&v147[80] = v138;
    *(v149 + 14) = *(v144 + 14);
    v148 = v143;
    v149[0] = v144[0];
    *&v147[128] = v141;
    *&v147[144] = v142;
    *&v156[16] = v143;
    v157[0] = v144[0];
    *(v157 + 14) = *(v144 + 14);
    v153 = v139;
    v154 = v140;
    *v156 = v142;
    v155 = v141;
    *v147 = v122;
    *&v147[8] = v121;
    v147[16] = v120 & 1;
    *&v147[17] = *v158;
    *&v147[20] = *&v158[3];
    *&v147[24] = v123;
    *v150 = v122;
    *&v150[8] = v121;
    v150[16] = v120 & 1;
    *&v150[17] = *v158;
    *&v150[20] = *&v158[3];
    *&v150[24] = v123;
    *&v150[32] = v135;
    *&v150[48] = v136;
    v152 = v138;
    v151 = v137;
    sub_16054(v147, v159, &qword_117440);
    sub_160BC(v150, &qword_117440);
    *&v145[151] = *&v147[144];
    *&v145[167] = v148;
    *&v145[183] = v149[0];
    *&v145[197] = *(v149 + 14);
    *&v145[87] = *&v147[80];
    *&v145[103] = *&v147[96];
    *&v145[119] = *&v147[112];
    *&v145[135] = *&v147[128];
    *&v145[23] = *&v147[16];
    *&v145[39] = *&v147[32];
    *&v145[55] = *&v147[48];
    *&v145[71] = *&v147[64];
    *&v145[7] = *v147;
    *&v158[177] = *&v145[160];
    v88 = *&v145[160];
    v89 = *&v145[176];
    *&v158[193] = *&v145[176];
    v90 = *&v145[192];
    *&v158[209] = *&v145[192];
    *&v158[222] = *(&v149[1] + 6);
    *&v158[113] = *&v145[96];
    v91 = *&v145[96];
    v92 = *&v145[112];
    *&v158[129] = *&v145[112];
    *&v158[145] = *&v145[128];
    v93 = *&v145[128];
    v94 = *&v145[144];
    *&v158[161] = *&v145[144];
    v95 = *&v145[48];
    *&v158[49] = *&v145[32];
    v96 = *&v145[32];
    *&v158[65] = *&v145[48];
    v97 = *&v145[80];
    *&v158[81] = *&v145[64];
    v98 = *&v145[64];
    *&v158[97] = *&v145[80];
    v99 = *&v145[16];
    *&v158[17] = *v145;
    v100 = *v145;
    *&v158[33] = *&v145[16];
    v101 = *&v158[160];
    *(a2 + 200) = *&v158[176];
    v102 = *&v158[208];
    *(a2 + 216) = *&v158[192];
    *(a2 + 232) = v102;
    v103 = *&v158[96];
    *(a2 + 136) = *&v158[112];
    v104 = *&v158[144];
    *(a2 + 152) = *&v158[128];
    *(a2 + 168) = v104;
    *(a2 + 184) = v101;
    v105 = *&v158[32];
    *(a2 + 72) = *&v158[48];
    v106 = *&v158[80];
    *(a2 + 88) = *&v158[64];
    v107 = v146;
    *v158 = v126;
    *&v158[8] = 0x4010000000000000;
    v158[16] = v146;
    *(a2 + 104) = v106;
    *(a2 + 120) = v103;
    v108 = *&v158[16];
    *(a2 + 24) = *v158;
    *(a2 + 40) = v108;
    *(a2 + 56) = v105;
    v160 = v88;
    v161 = v89;
    *v162 = v90;
    *&v159[113] = v91;
    *&v159[129] = v92;
    *&v159[145] = v93;
    *&v159[161] = v94;
    *&v159[49] = v96;
    *&v159[65] = v95;
    *&v159[81] = v98;
    *&v159[97] = v97;
    *&v159[17] = v100;
    LOBYTE(v135) = 1;
    *a2 = v127;
    *(a2 + 8) = v125;
    *(a2 + 16) = v124;
    *(a2 + 246) = *&v158[222];
    *(a2 + 256) = 0;
    *(a2 + 264) = 1;
    *v159 = v126;
    *&v159[8] = 0x4010000000000000;
    v159[16] = v107;
    *&v162[13] = *&v145[205];
    *&v159[33] = v99;
    v109 = v127;
    v110 = v124;
    sub_16054(v158, v128, &qword_117448);
    sub_160BC(v159, &qword_117448);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_43340(&qword_116448, type metadata accessor for GCSPreferencesStore);
    sub_D6DD8();
    __break(1u);
  }
}

uint64_t sub_3F9E4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  a1(0);
  sub_43340(a2, a3);

  return sub_D6DF8();
}

uint64_t sub_3FA50@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

uint64_t sub_3FA70()
{
  if (*(v0 + 24))
  {
  }

  else
  {
    type metadata accessor for BluetoothManager();
    sub_43340(&qword_117058, type metadata accessor for BluetoothManager);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_3FB44()
{
  type metadata accessor for BluetoothManager();
  sub_43340(&qword_117058, type metadata accessor for BluetoothManager);

  return sub_D6DC8();
}

uint64_t sub_3FBCC()
{
  sub_DC40(&qword_116510);
  sub_D78B8();
  return v1;
}

void (*sub_3FC80(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 56);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = sub_DC40(&qword_116510);
  sub_D78B8();
  return sub_17138;
}

uint64_t sub_3FD34()
{
  sub_DC40(&qword_116510);
  sub_D78E8();
  return v1;
}

uint64_t sub_3FD90()
{
  sub_DC40(&qword_1172A8);
  sub_D78B8();
  return v1;
}

void (*sub_3FE40(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[8];
  v6 = v1[9];
  v4[8] = v5;
  v4[9] = v6;
  v7 = v1[10];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v8 = v7;
  v4[11] = sub_DC40(&qword_1172A8);
  sub_D78B8();
  return sub_23270;
}

uint64_t sub_3FEF8()
{
  sub_DC40(&qword_1172A8);
  sub_D78E8();
  return v1;
}

__n128 sub_3FF54@<Q0>(uint64_t a1@<X8>)
{
  sub_DC40(&qword_116848);
  sub_D78B8();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_40010()
{
  v1 = *(v0 + 200);
  v16[6] = *(v0 + 184);
  v16[7] = v1;
  v16[8] = *(v0 + 216);
  v17 = *(v0 + 232);
  v2 = *(v0 + 136);
  v16[2] = *(v0 + 120);
  v16[3] = v2;
  v3 = *(v0 + 168);
  v16[4] = *(v0 + 152);
  v16[5] = v3;
  v4 = *(v0 + 104);
  v16[0] = *(v0 + 88);
  v16[1] = v4;
  v12 = *(v0 + 184);
  v13 = *(v0 + 200);
  v14 = *(v0 + 216);
  v15 = *(v0 + 232);
  v8 = *(v0 + 120);
  v9 = *(v0 + 136);
  v10 = *(v0 + 152);
  v11 = *(v0 + 168);
  v6 = *(v0 + 88);
  v7 = *(v0 + 104);
  sub_16054(v16, v18, &qword_116848);
  sub_DC40(&qword_116848);
  sub_D78C8();
  v18[6] = v12;
  v18[7] = v13;
  v18[8] = v14;
  v19 = v15;
  v18[2] = v8;
  v18[3] = v9;
  v18[4] = v10;
  v18[5] = v11;
  v18[0] = v6;
  v18[1] = v7;
  return sub_160BC(v18, &qword_116848);
}

void (*sub_40164(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x510uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 200);
  *(v3 + 96) = *(v1 + 184);
  *(v3 + 112) = v5;
  *(v3 + 128) = *(v1 + 216);
  *(v3 + 144) = *(v1 + 232);
  v6 = *(v1 + 136);
  *(v3 + 32) = *(v1 + 120);
  *(v3 + 48) = v6;
  v7 = *(v1 + 168);
  *(v3 + 64) = *(v1 + 152);
  *(v3 + 80) = v7;
  v8 = *(v1 + 104);
  *v3 = *(v1 + 88);
  *(v3 + 16) = v8;
  *(v3 + 248) = *(v1 + 184);
  v9 = *(v1 + 216);
  *(v3 + 264) = *(v1 + 200);
  *(v3 + 280) = v9;
  *(v3 + 296) = *(v1 + 232);
  *(v3 + 184) = *(v1 + 120);
  *(v3 + 200) = *(v1 + 136);
  *(v3 + 216) = *(v1 + 152);
  *(v3 + 232) = *(v1 + 168);
  *(v3 + 152) = *(v1 + 88);
  *(v3 + 168) = *(v1 + 104);
  sub_16054(v3, v3 + 304, &qword_116848);
  *(v4 + 1288) = sub_DC40(&qword_116848);
  sub_D78B8();
  return sub_23A8C;
}

double sub_402A4@<D0>(uint64_t a1@<X8>)
{
  sub_DC40(&qword_116848);
  sub_D78E8();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_40368(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v2);
  sub_42710(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSProfileParams);
  sub_D77D8();
  return sub_28ACC(a1);
}

void *sub_40420()
{
  v1 = v0;
  v44 = *v0;
  v2 = [*v0 macAddresses];
  if (!v2)
  {
LABEL_31:
    v19 = [v44 uuidIdentifiers];
    if (v19)
    {
      v20 = v19;
      v21 = sub_D7D28();

      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = 0;
        v24 = v21 + 40;
        v45 = v22 - 1;
        v47 = v21 + 40;
LABEL_34:
        v25 = v24 + 16 * v23;
        while (1)
        {
          if (v23 >= *(v21 + 16))
          {
            goto LABEL_61;
          }

          v26 = v1[3];
          if (!v26)
          {
            goto LABEL_64;
          }

          v27 = *(*v26 + 536);

          v29 = v27(v28);

          if (v29 >> 62)
          {
            break;
          }

          v30 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
          if (v30)
          {
            goto LABEL_42;
          }

LABEL_39:
          ++v23;

          v25 += 16;
          if (v22 == v23)
          {
            goto LABEL_58;
          }
        }

        v30 = sub_D8078();
        if (!v30)
        {
          goto LABEL_39;
        }

LABEL_42:
        if (v30 < 1)
        {
          goto LABEL_63;
        }

        v41 = v22;
        v43 = v21;
        v31 = 0;
        while (1)
        {
          v32 = v1;
          if ((v29 & 0xC000000000000001) != 0)
          {
            v33 = sub_D7FF8();
          }

          else
          {
            v33 = *(v29 + 8 * v31 + 32);
          }

          v34 = (*(*v33 + 264))();
          v35 = [v34 identifier];

          if (v35)
          {
            sub_D7C18();

            if ((*(*v33 + 664))())
            {
              sub_16000();
              v36 = sub_D7F18();

              if (!v36)
              {

                sub_D7D08();
                if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_D7D48();
                }

                sub_D7D68();

                goto LABEL_46;
              }
            }

            else
            {
            }
          }

LABEL_46:
          ++v31;
          v1 = v32;
          if (v30 == v31)
          {

            v21 = v43;
            v18 = v45 == v23++;
            v22 = v41;
            v24 = v47;
            if (v18)
            {
              break;
            }

            goto LABEL_34;
          }
        }
      }

LABEL_58:
    }

    return _swiftEmptyArrayStorage;
  }

  v3 = v2;
  v4 = sub_D7D28();

  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_30:

    goto LABEL_31;
  }

  v6 = 0;
  v7 = v4 + 40;
  v46 = *(v4 + 16);
  v40 = v5 - 1;
  v48 = v4;
  v42 = v4 + 40;
LABEL_4:
  v8 = v7 + 16 * v6;
  while (v6 < *(v4 + 16))
  {
    v9 = v1[3];
    if (!v9)
    {
      goto LABEL_64;
    }

    v10 = *(*v9 + 536);

    v12 = v10(v11);

    if (v12 >> 62)
    {
      v13 = sub_D8078();
      if (v13)
      {
LABEL_12:
        if (v13 < 1)
        {
          goto LABEL_62;
        }

        v39 = v1;
        v14 = 0;
        v38 = v6 + 1;
        while (2)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = sub_D7FF8();
          }

          else
          {
            v15 = *(v12 + 8 * v14 + 32);
          }

          (*(*v15 + 408))();
          if (!v16)
          {
            goto LABEL_15;
          }

          if (((*(*v15 + 664))() & 1) == 0)
          {

LABEL_15:

            v4 = v48;
            goto LABEL_16;
          }

          sub_16000();
          v17 = sub_D7F18();

          if (v17)
          {
            goto LABEL_15;
          }

          sub_D7D08();
          v4 = v48;
          if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_D7D48();
          }

          sub_D7D68();

LABEL_16:
          if (v13 != ++v14)
          {
            continue;
          }

          break;
        }

        v1 = v39;
        v18 = v40 == v6;
        v7 = v42;
        ++v6;
        if (v18)
        {
          goto LABEL_30;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
      if (v13)
      {
        goto LABEL_12;
      }
    }

    ++v6;

    v8 += 16;
    if (v46 == v6)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  type metadata accessor for BluetoothManager();
  sub_43340(&qword_117058, type metadata accessor for BluetoothManager);

  result = sub_D6DD8();
  __break(1u);
  return result;
}

uint64_t sub_40B24(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      v4 = 0;
      if ((a1 & 0xC000000000000001) != 0)
      {
        break;
      }

      while (1)
      {
        if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * v3 + 32);

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

LABEL_9:
        if (v4)
        {

          v4 = 1;
          if (v6 == v2)
          {
            return v4 & 1;
          }
        }

        else
        {
          v7 = (*(*v5 + 520))();

          v4 = v7 ^ 1;
          if (v6 == v2)
          {
            return v4 & 1;
          }
        }

        ++v3;
        if ((a1 & 0xC000000000000001) != 0)
        {
          goto LABEL_4;
        }
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v2 = sub_D8078();
      if (!v2)
      {
        goto LABEL_18;
      }
    }

LABEL_4:
    v5 = sub_D7FF8();
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_18:
  v4 = 0;
  return v4 & 1;
}

uint64_t sub_40C58@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GCSControllerView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v11 = v1;
  sub_DC40(&qword_1172B8);
  sub_15FB8(&qword_1172C0, &qword_1172B8);
  sub_D79B8();
  sub_42710(v1, &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for GCSControllerView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_43978(&v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for GCSControllerView);
  result = sub_DC40(&qword_1172D0);
  v9 = (a1 + *(result + 36));
  *v9 = sub_4277C;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_40E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v118 = sub_DC40(&qword_1173B8);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v113 = (&v98 - v3);
  v4 = type metadata accessor for GCSControllerView();
  v103 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v105 = v5;
  v106 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_DC40(&qword_116810);
  __chkstk_darwin(v6 - 8);
  v104 = &v98 - v7;
  v109 = sub_DC40(&qword_116818);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v102 = &v98 - v8;
  v111 = sub_DC40(&qword_1173C0);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v107 = &v98 - v9;
  v10 = sub_DC40(&qword_1173C8);
  __chkstk_darwin(v10 - 8);
  v112 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v115 = &v98 - v13;
  v14 = sub_DC40(&qword_1173D0);
  v120 = *(v14 - 8);
  v121 = v14;
  __chkstk_darwin(v14);
  v116 = &v98 - v15;
  v16 = sub_DC40(&qword_1173D8);
  __chkstk_darwin(v16 - 8);
  v122 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v127 = &v98 - v19;
  v20 = sub_DC40(&qword_1173E0);
  __chkstk_darwin(v20);
  v125 = sub_DC40(&qword_1173E8);
  v21 = *(v125 - 8);
  __chkstk_darwin(v125);
  v23 = &v98 - v22;
  v124 = sub_DC40(&qword_1173F0);
  __chkstk_darwin(v124);
  v119 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v98 - v26;
  __chkstk_darwin(v28);
  v126 = &v98 - v29;
  v128 = a1;
  sub_41E24(a1);
  sub_43204();
  v30 = sub_EBC0(&qword_117400);
  v31 = sub_43258();
  v32 = sub_16000();
  v131 = v30;
  v132 = &type metadata for String;
  v133 = v31;
  v134 = v32;
  v33 = a1;
  swift_getOpaqueTypeConformance2();
  sub_D6C98();
  v34 = *(a1 + 8);
  if (v34)
  {
    v114 = v33;
    v35 = *v33;
    v36 = *(&stru_248.reloff + (swift_isaMask & *v34));
    v37 = v34;
    LOBYTE(v36) = v36(v35);

    KeyPath = swift_getKeyPath();
    v39 = swift_allocObject();
    *(v39 + 16) = v36 & 1;
    (*(v21 + 32))(v27, v23, v125);
    v40 = &v27[*(v124 + 36)];
    *v40 = KeyPath;
    v40[1] = sub_285D8;
    v40[2] = v39;
    v41 = v126;
    sub_43398(v27, v126);
    v42 = *(&stru_248.size + (swift_isaMask & *v37));
    v43 = v37;
    LOBYTE(v42) = v42(v35);

    if ((v42 & 1) == 0)
    {
      v47 = v127;
      (*(v120 + 56))(v127, 1, 1, v121);
      v50 = v122;
      v49 = v123;
LABEL_34:
      v95 = v119;
      sub_43408(v41, v119);
      sub_16054(v47, v50, &qword_1173D8);
      sub_43408(v95, v49);
      v96 = sub_DC40(&qword_117428);
      sub_16054(v50, v49 + *(v96 + 48), &qword_1173D8);
      sub_160BC(v47, &qword_1173D8);
      sub_43478(v41);
      sub_160BC(v50, &qword_1173D8);
      return sub_43478(v95);
    }

    v44 = *(&stru_248.reloff + (swift_isaMask & *v43));
    v45 = v43;
    v46 = v44(v35);

    v47 = v127;
    if (v46)
    {
      v48 = v116;
      (*(v117 + 56))(v116, 1, 1, v118);
      v50 = v122;
      v49 = v123;
LABEL_33:
      sub_21A44(v48, v47, &qword_1173D0);
      (*(v120 + 56))(v47, 0, 1, v121);
      goto LABEL_34;
    }

    v51 = *&stru_298.segname[(swift_isaMask & *v45) - 8];
    v52 = v45;
    v53 = v51(v35);

    if (v53)
    {
      v54 = sub_AD850();
      v55 = v115;
      if (v54)
      {
        v56 = *(&stru_248.offset + (swift_isaMask & *v52));
        v57 = v52;
        v58 = v56(v35);

        if ((v58 & 1) == 0)
        {
          v80 = v114[31];
          v129 = *(v114 + 240);
          v130 = v80;
          v81 = v35;
          sub_DC40(&qword_1166E0);
          v82 = sub_D7808();
          v83 = v131;
          v84 = v132;
          v85 = v133;
          v86 = sub_284F8(v82);
          sub_28570(v86, v87, v81, v53, v83, v84, v85, &v131);
          v59 = v131;
          v125 = v132;
          v60 = v133;
          v101 = v134;
          v124 = v135;
          v100 = v136;
          v99 = v137;
          v61 = sub_40420();
          if (v61)
          {
            goto LABEL_12;
          }

          goto LABEL_31;
        }
      }

      v59 = 0;
      v125 = 0;
      v60 = 0;
      v101 = 0;
      v124 = 0;
      v100 = 0;
      v99 = 0;
    }

    else
    {
      v59 = 0;
      v125 = 0;
      v101 = 0;
      v124 = 0;
      v100 = 0;
      v99 = 0;
      v60 = 1;
      v55 = v115;
    }

    v61 = sub_40420();
    if (v61)
    {
LABEL_12:
      v62 = v61;
      v63 = v61 & 0xFFFFFFFFFFFFFF8;
      v98 = v59;
      if (v61 >> 62)
      {
        goto LABEL_37;
      }

      for (i = *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
      {
        v65 = 0;
        v66 = 0;
        while ((v62 & 0xC000000000000001) != 0)
        {
          v67 = sub_D7FF8();
          v68 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            goto LABEL_35;
          }

LABEL_21:
          if (v66)
          {

            if (v68 == i)
            {
              goto LABEL_28;
            }

            v66 = 1;
            ++v65;
          }

          else
          {
            v69 = (*(*v67 + 520))();

            if (v68 == i)
            {
              if (v69)
              {
                goto LABEL_27;
              }

LABEL_28:
              v74 = v104;
              sub_D6B38();
              v75 = sub_D6B58();
              (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
              v76 = v106;
              sub_42710(v114, v106, type metadata accessor for GCSControllerView);
              v77 = (*(v103 + 80) + 24) & ~*(v103 + 80);
              v78 = swift_allocObject();
              *(v78 + 16) = v62;
              sub_43978(v76, v78 + v77, type metadata accessor for GCSControllerView);
              v79 = v102;
              sub_D7838();
              v72 = v108;
              v73 = v107;
              v71 = v109;
              (*(v108 + 32))(v107, v79, v109);
              v70 = 0;
              goto LABEL_29;
            }

            v66 = v69 ^ 1;
            ++v65;
          }
        }

        if (v65 >= *(v63 + 16))
        {
          goto LABEL_36;
        }

        v67 = *(v62 + 8 * v65 + 32);

        v68 = v65 + 1;
        if (!__OFADD__(v65, 1))
        {
          goto LABEL_21;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        ;
      }

LABEL_27:

      v70 = 1;
      v71 = v109;
      v72 = v108;
      v73 = v107;
LABEL_29:
      (*(v72 + 56))(v73, v70, 1, v71);
      sub_21A44(v73, v55, &qword_1173C0);
      (*(v110 + 56))(v55, 0, 1, v111);
      v49 = v123;
      v59 = v98;
LABEL_32:
      v88 = v112;
      sub_16054(v55, v112, &qword_1173C8);
      v89 = v113;
      v90 = v124;
      v91 = v125;
      *v113 = v59;
      *(v89 + 8) = v91;
      v92 = v60;
      *(v89 + 16) = v60;
      v93 = v101;
      *(v89 + 24) = v101;
      *(v89 + 32) = v90;
      *(v89 + 40) = v100;
      *(v89 + 48) = v99;
      v94 = sub_DC40(&qword_117430);
      sub_16054(v88, v89 + *(v94 + 48), &qword_1173C8);
      sub_434E0(v59, v91, v92, v93);
      sub_160BC(v115, &qword_1173C8);
      sub_160BC(v88, &qword_1173C8);
      sub_43560(v59, v91, v92, v93);
      v48 = v116;
      sub_21A44(v89, v116, &qword_1173B8);
      (*(v117 + 56))(v48, 0, 1, v118);
      v50 = v122;
      v41 = v126;
      v47 = v127;
      goto LABEL_33;
    }

LABEL_31:
    (*(v110 + 56))(v55, 1, 1, v111);
    v49 = v123;
    goto LABEL_32;
  }

  type metadata accessor for GCSPreferencesStore();
  sub_43340(&qword_116448, type metadata accessor for GCSPreferencesStore);
  result = sub_D6DD8();
  __break(1u);
  return result;
}

uint64_t sub_41E24(uint64_t a1)
{
  v2 = sub_DC40(&qword_117438);
  __chkstk_darwin(v2 - 8);
  v4 = v32 - v3;
  v5 = type metadata accessor for GCSControllerCustomizeControlsView();
  __chkstk_darwin(v5 - 8);
  v7 = (v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_DC40(&qword_117400);
  __chkstk_darwin(v8);
  v10 = v32 - v9;
  v11 = *a1;
  v12 = *(a1 + 200);
  v32[6] = *(a1 + 184);
  v32[7] = v12;
  v32[8] = *(a1 + 216);
  v33 = *(a1 + 232);
  v13 = *(a1 + 136);
  v32[2] = *(a1 + 120);
  v32[3] = v13;
  v14 = *(a1 + 168);
  v32[4] = *(a1 + 152);
  v32[5] = v14;
  v15 = *(a1 + 104);
  v32[0] = *(a1 + 88);
  v32[1] = v15;
  v16 = v11;
  sub_DC40(&qword_116848);
  v17 = sub_D78E8();
  v18 = sub_683F0(v17);
  v20 = v19;
  sub_68468();
  v21 = sub_684CC();
  sub_684F0(v18, v20, v4, v21, v22 & 1, v16, &v34, v7);
  v23 = *(a1 + 8);
  type metadata accessor for GCSPreferencesStore();
  sub_43340(&qword_116448, type metadata accessor for GCSPreferencesStore);
  if (v23)
  {
    v24 = v23;
    v25 = sub_D6A58();
    sub_43978(v7, v10, type metadata accessor for GCSControllerCustomizeControlsView);
    v26 = &v10[*(v8 + 36)];
    *v26 = v25;
    v26[1] = v23;
    v27 = [v16 localizedName];
    v28 = sub_D7C18();
    v30 = v29;

    *&v32[0] = v28;
    *(&v32[0] + 1) = v30;
    sub_43258();
    sub_16000();
    sub_D7498();

    return sub_160BC(v10, &qword_117400);
  }

  else
  {
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_42168@<X0>(uint64_t a1@<X8>)
{
  sub_A9308(0xD00000000000001FLL, 0x80000000000E56C0);
  sub_16000();
  result = sub_D73B8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_421D8(id *a1)
{
  v2 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v11 - v7;
  v9 = [*a1 baseProfile];
  sub_D20B4(v8);

  type metadata accessor for GCSControllerView();
  sub_42710(v8, v4, type metadata accessor for GCSProfileParams);
  sub_DC40(&qword_1172C8);
  sub_D77F8();
  return sub_28ACC(v8);
}

uint64_t sub_42330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v34 = a8;
  v32 = a6;
  v33 = a7;
  v31 = a5;
  v30 = a10;
  v17 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v30 - v21;
  *(a9 + 64) = v30;
  v23 = *(a12 + 112);
  *(a9 + 184) = *(a12 + 96);
  *(a9 + 200) = v23;
  *(a9 + 216) = *(a12 + 128);
  v24 = *(a12 + 48);
  *(a9 + 120) = *(a12 + 32);
  *(a9 + 136) = v24;
  v25 = *(a12 + 80);
  *(a9 + 152) = *(a12 + 64);
  *(a9 + 168) = v25;
  v26 = *(a12 + 16);
  *(a9 + 88) = *a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v27 = v32;
  *(a9 + 32) = v31;
  *(a9 + 40) = v27;
  *(a9 + 48) = v33;
  *(a9 + 56) = v34;
  *(a9 + 80) = a11;
  *(a9 + 232) = *(a12 + 144);
  *(a9 + 104) = v26;
  v35 = 0;
  sub_D77D8();
  v28 = v37;
  *(a9 + 240) = v36;
  *(a9 + 248) = v28;
  type metadata accessor for GCSControllerView();
  sub_D1AF8(v22);
  sub_42710(v22, v19, type metadata accessor for GCSProfileParams);
  sub_D77D8();
  return sub_28ACC(v22);
}

uint64_t sub_424EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v3;
  sub_DC40(&qword_1172B8);
  sub_15FB8(&qword_1172C0, &qword_1172B8);
  sub_D79B8();
  sub_42710(v3, v7, type metadata accessor for GCSControllerView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_43978(v7, v9 + v8, type metadata accessor for GCSControllerView);
  result = sub_DC40(&qword_1172D0);
  v11 = (a2 + *(result + 36));
  *v11 = sub_43B84;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

uint64_t type metadata accessor for GCSControllerView()
{
  result = qword_11B850;
  if (!qword_11B850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_42710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_427B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_42800(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_42874(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_DC40(&qword_1172C8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_42944(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_DC40(&qword_1172C8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_429F4()
{
  sub_35F0C();
  if (v0 <= 0x3F)
  {
    sub_26BDC();
    if (v1 <= 0x3F)
    {
      sub_42BD4();
      if (v2 <= 0x3F)
      {
        sub_26D2C(319, &qword_116918, &type metadata for Bool, &type metadata accessor for Binding);
        if (v3 <= 0x3F)
        {
          sub_42C68(319, &qword_117338, sub_35F0C, &type metadata accessor for Binding);
          if (v4 <= 0x3F)
          {
            sub_26D2C(319, &qword_116930, &type metadata for GCSProfileViewData, &type metadata accessor for Binding);
            if (v5 <= 0x3F)
            {
              sub_26D2C(319, &qword_117340, &type metadata for Bool, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_42C68(319, &qword_117348, type metadata accessor for GCSProfileParams, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_42BD4()
{
  if (!qword_117330)
  {
    type metadata accessor for BluetoothManager();
    sub_43340(&qword_117058, type metadata accessor for BluetoothManager);
    v0 = sub_D6E08();
    if (!v1)
    {
      atomic_store(v0, &qword_117330);
    }
  }
}

void sub_42C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_42D14()
{
  result = qword_1173A0;
  if (!qword_1173A0)
  {
    sub_EBC0(&qword_1172D0);
    sub_42DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1173A0);
  }

  return result;
}

unint64_t sub_42DA0()
{
  result = qword_1173A8;
  if (!qword_1173A8)
  {
    sub_EBC0(&qword_1173B0);
    sub_15FB8(&qword_1172C0, &qword_1172B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1173A8);
  }

  return result;
}

uint64_t sub_42E5C()
{
  v1 = (type metadata accessor for GCSControllerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[13];
  v6 = sub_D6998();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for GCSProfileParams();

  sub_DC40(&qword_1172C8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_43068()
{
  v1 = *(type metadata accessor for GCSControllerView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_421D8(v2);
}

__n128 sub_430C8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *v3;
  sub_DC40(&qword_116510);
  sub_D78E8();
  v10 = *(v3 + 64);
  sub_DC40(&qword_1172A8);
  sub_D78E8();
  type metadata accessor for GCSPreferencesStore();
  sub_43340(&qword_116448, type metadata accessor for GCSPreferencesStore);
  v5 = sub_D6DF8();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9.n128_u64[0];
  *(a1 + 40) = v9.n128_u8[8];
  *(a1 + 41) = v10;
  *(a1 + 44) = *(&v10 + 3);
  *(a1 + 48) = v8;
  result = v9;
  *(a1 + 56) = v9;
  return result;
}

unint64_t sub_43204()
{
  result = qword_1173F8;
  if (!qword_1173F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1173F8);
  }

  return result;
}

unint64_t sub_43258()
{
  result = qword_117408;
  if (!qword_117408)
  {
    sub_EBC0(&qword_117400);
    sub_43340(&qword_117410, type metadata accessor for GCSControllerCustomizeControlsView);
    sub_15FB8(&qword_117418, &qword_117420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117408);
  }

  return result;
}

uint64_t sub_43340(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_43398(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_1173F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_43408(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_1173F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_43478(uint64_t a1)
{
  v2 = sub_DC40(&qword_1173F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_434E0(id result, uint64_t a2, void *a3, void *a4)
{
  if (a3 != &dword_0 + 1)
  {
    return sub_434F0(result, a2, a3, a4);
  }

  return result;
}

id sub_434F0(id result, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = result;

    v6 = v5;
    v7 = a3;

    return a4;
  }

  return result;
}

uint64_t sub_43560(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  if (a3 != &dword_0 + 1)
  {
    return sub_43570(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_43570(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = result;
  }

  return result;
}

uint64_t sub_435D4()
{
  v1 = (type metadata accessor for GCSControllerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[13];
  v6 = sub_D6998();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for GCSProfileParams();

  sub_DC40(&qword_1172C8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_437E8()
{
  v1 = type metadata accessor for GCSControllerView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v3 + 80);
  v5 = *(v0 + 16);
  if (v5 >> 62)
  {
LABEL_14:
    result = sub_D8078();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return result;
    }
  }

  v7 = v0 + ((v4 + 24) & ~v4);
  for (i = 4; ; ++i)
  {
    v0 = i - 4;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v4 = sub_D7FF8();
      v9 = i - 3;
      if (__OFADD__(v0, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v0 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v4 = *(v5 + 8 * i);

      v9 = i - 3;
      if (__OFADD__(v0, 1))
      {
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    if (!*(v7 + 24))
    {
      break;
    }

    sub_B8D00(v4);

    if (v9 == v6)
    {
      return result;
    }
  }

  type metadata accessor for BluetoothManager();
  sub_43340(&qword_117058, type metadata accessor for BluetoothManager);
  result = sub_D6DD8();
  __break(1u);
  return result;
}

uint64_t sub_43978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_439EC()
{
  result = qword_117458;
  if (!qword_117458)
  {
    sub_EBC0(&qword_117450);
    sub_43A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117458);
  }

  return result;
}

unint64_t sub_43A70()
{
  result = qword_117460;
  if (!qword_117460)
  {
    sub_EBC0(&qword_117468);
    sub_15FB8(&qword_117470, &qword_117478);
    sub_15FB8(&qword_117188, &qword_117190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117460);
  }

  return result;
}

uint64_t sub_43DA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  return v1;
}

uint64_t sub_43E1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_43E68(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t sub_43EBC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

void (*sub_43F2C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_E24C;
}

uint64_t sub_44020(uint64_t a1)
{
  v2 = sub_DC40(&qword_117538);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_117530);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_44138(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_117538);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings11GCSAppStore__supportedApps;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_117530);
  sub_D6A98();
  return sub_E580;
}

uint64_t sub_4428C(int a1)
{
  v2 = swift_allocObject();
  sub_442CC(a1);
  return v2;
}

void sub_442CC(int a1)
{
  v3 = sub_D6868();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_DC40(&qword_117530);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = OBJC_IVAR____TtC25GameControlleriOSSettings11GCSAppStore__supportedApps;
  *&aBlock = _swiftEmptyArrayStorage;
  sub_DC40(&qword_117528);
  sub_D6A88();
  v11 = *(v7 + 32);
  v32 = v1;
  v11(v1 + v10, v9, v6);
  v12 = [objc_opt_self() enumeratorWithOptions:0];
  if (a1)
  {
    v41 = sub_448E4;
    v42 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v39 = sub_44904;
    v40 = &unk_107B30;
    v13 = _Block_copy(&aBlock);
    [v12 setFilter:v13];
    _Block_release(v13);
  }

  v45 = _swiftEmptyArrayStorage;
  v36 = SBSCopyDisplayIdentifiers();
  if (!v36)
  {
    goto LABEL_33;
  }

  v29 = v12;
  sub_D7DE8();
  sub_D6858();
  if (!v40)
  {
    v33 = _swiftEmptyArrayStorage;
LABEL_30:
    (*(v30 + 8))(v5, v31);
    swift_getKeyPath();
    swift_getKeyPath();
    *&aBlock = v33;

    sub_D6AD8();

    return;
  }

  v33 = _swiftEmptyArrayStorage;
  v14 = &selRef_supportsBuddyController;
  v35 = a1;
  v34 = v5;
  while (1)
  {
    sub_3B548(&aBlock, v44);
    sub_450A0(0, &qword_117540);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    v15 = v43;
    v17 = [v43 v14[80]];
    if (v17)
    {
      break;
    }

LABEL_8:

LABEL_9:
    sub_D6858();
    if (!v40)
    {
      goto LABEL_30;
    }
  }

  v18 = v17;
  if ((a1 & 1) == 0)
  {
LABEL_7:
    v16 = [v36 containsObject:v18];

    if (v16)
    {
      v28 = v15;
      sub_D7D08();
      if (*(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v45 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_D7D48();
      }

      sub_D7D68();

      v33 = v45;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v19 = [v15 supportedGameControllers];
  sub_450A0(0, &qword_117548);
  v20 = sub_D7D28();

  v37 = v15;
  if (!(v20 >> 62))
  {
    v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
    if (v21)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  v21 = sub_D8078();
  if (!v21)
  {
LABEL_28:

    LOBYTE(a1) = v35;
    v5 = v34;
    v14 = &selRef_supportsBuddyController;
    goto LABEL_9;
  }

LABEL_15:
  v22 = 0;
  while (1)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = sub_D7FF8();
    }

    else
    {
      if (v22 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_32;
      }

      v23 = *(v20 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    v26 = sub_D7BD8();
    sub_450A0(0, &qword_117550);
    v27 = [v24 objectForKey:v26 ofClass:swift_getObjCClassFromMetadata()];

    if (v27)
    {

      sub_D7F58();

      swift_unknownObjectRelease();
      sub_160BC(v44, &qword_119330);
      LOBYTE(a1) = v35;
      v5 = v34;
      v14 = &selRef_supportsBuddyController;
      v15 = v37;
      goto LABEL_7;
    }

    memset(v44, 0, sizeof(v44));
    sub_160BC(v44, &qword_119330);
    ++v22;
    if (v25 == v21)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_44904(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void *sub_4495C(void *a1, void *a2)
{
  v54 = a1;
  v4 = sub_DC40(&qword_117558);
  v5 = __chkstk_darwin(v4 - 8);
  v55 = &v51 - v6;
  v7 = [a2 games];
  sub_450A0(0, &qword_1164A8);
  v8 = sub_D7D28();

  if (v8 >> 62)
  {
LABEL_41:
    v56 = v8 & 0xFFFFFFFFFFFFFF8;
    v9 = sub_D8078();
  }

  else
  {
    v56 = v8 & 0xFFFFFFFFFFFFFF8;
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v9)
  {
    v52 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v10 = 0;
  v53 = v8 & 0xC000000000000001;
  v51 = v2;
  v52 = _swiftEmptyArrayStorage;
  do
  {
    v11 = v10;
    while (1)
    {
      if (v53)
      {
        v13 = sub_D7FF8();
      }

      else
      {
        if (v11 >= *(v56 + 16))
        {
          goto LABEL_38;
        }

        v13 = *(v8 + 8 * v11 + 32);
      }

      v14 = v13;
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v15 = v9;
      v16 = [v13 controllerToProfileMappings];
      v17 = sub_D6998();
      v2 = sub_D7B48();

      v18 = [v54 persistentIdentifier];
      v19 = sub_D7C18();
      v21 = v20;

      if (*(v2 + 16))
      {
        break;
      }

LABEL_7:

      v12 = v55;
      (*(*(v17 - 8) + 56))(v55, 1, 1, v17);
      sub_160BC(v12, &qword_117558);
      ++v11;
      v9 = v15;
      if (v10 == v15)
      {
        v2 = v51;
        goto LABEL_24;
      }
    }

    v22 = sub_1ED4C(v19, v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_7;
    }

    v25 = *(v17 - 8);
    v26 = v25;
    v27 = *(v2 + 56) + *(v25 + 72) * v22;
    v28 = v55;
    (*(v25 + 16))(v55, v27, v17);

    (*(v26 + 56))(v28, 0, 1, v17);
    sub_160BC(v28, &qword_117558);
    v29 = [v14 bundleIdentifier];
    v30 = sub_D7C18();
    v32 = v31;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_38A50(0, *(v52 + 2) + 1, 1, v52);
    }

    v9 = v15;
    v34 = *(v52 + 2);
    v33 = *(v52 + 3);
    if (v34 >= v33 >> 1)
    {
      v52 = sub_38A50((v33 > 1), v34 + 1, 1, v52);
    }

    v35 = v52;
    *(v52 + 2) = v34 + 1;
    v36 = &v35[16 * v34];
    *(v36 + 4) = v30;
    *(v36 + 5) = v32;
    v2 = v51;
  }

  while (v10 != v15);
LABEL_24:

  v38 = (*(*v2 + 88))(v37);
  v39 = v38;
  v58 = _swiftEmptyArrayStorage;
  if (v38 >> 62)
  {
    v40 = sub_D8078();
    if (v40)
    {
LABEL_26:
      v8 = 0;
      v55 = (v39 & 0xFFFFFFFFFFFFFF8);
      v56 = v39 & 0xC000000000000001;
      while (1)
      {
        if (v56)
        {
          v41 = sub_D7FF8();
        }

        else
        {
          if (v8 >= *(v55 + 2))
          {
            goto LABEL_40;
          }

          v41 = *(v39 + 8 * v8 + 32);
        }

        v42 = v41;
        v43 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v44 = [v41 bundleIdentifier];
        if (!v44 || (v45 = v44, v46 = sub_D7C18(), v48 = v47, v45, v57[0] = v46, v57[1] = v48, __chkstk_darwin(v49), *(&v51 - 2) = v57, v2 = sub_450E8(sub_45194, (&v51 - 4), v52), , (v2 & 1) != 0))
        {
        }

        else
        {
          v2 = &v58;
          sub_D8028();
          sub_D8058();
          sub_D8068();
          sub_D8038();
        }

        ++v8;
        if (v43 == v40)
        {
          goto LABEL_43;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

  else
  {
    v40 = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
    if (v40)
    {
      goto LABEL_26;
    }
  }

LABEL_43:

  return v58;
}

uint64_t sub_44F34()
{
  v1 = OBJC_IVAR____TtC25GameControlleriOSSettings11GCSAppStore__supportedApps;
  v2 = sub_DC40(&qword_117530);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_44FA0()
{
  v1 = OBJC_IVAR____TtC25GameControlleriOSSettings11GCSAppStore__supportedApps;
  v2 = sub_DC40(&qword_117530);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_45048@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GCSAppStore();
  result = sub_D6A68();
  *a1 = result;
  return result;
}

uint64_t sub_45088(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_450A0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_450E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_45194(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_D8118() & 1;
  }
}

uint64_t type metadata accessor for GCSAppStore()
{
  result = qword_11B910;
  if (!qword_11B910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_45240()
{
  sub_452D0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_452D0()
{
  if (!qword_117588)
  {
    sub_EBC0(&qword_117528);
    v0 = sub_D6AE8();
    if (!v1)
    {
      atomic_store(v0, &qword_117588);
    }
  }
}

uint64_t sub_453AC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = type metadata accessor for GCSPreferencesStore();
  v6 = sub_4985C(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return a1(v2, v3, v4, v5, v6);
}

uint64_t sub_45484()
{
  sub_EC8C();
}

uint64_t sub_454C8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = type metadata accessor for BluetoothManager();
  v6 = sub_4985C(&qword_117058, type metadata accessor for BluetoothManager);

  return a1(v2, v3, v4, v5, v6);
}

uint64_t sub_45580(uint64_t a1, unint64_t *a2)
{
  sub_450A0(0, a2);
  sub_D77D8();
  return v3;
}

id sub_455BC()
{
  v0 = [objc_opt_self() defaultGame];

  return v0;
}

id sub_45610()
{
  v0 = [objc_opt_self() defaultProfile];

  return v0;
}

uint64_t sub_45654()
{
  sub_DC40(&qword_116800);
  sub_D77D8();
  return v1;
}

uint64_t sub_4569C(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v2);
  sub_47C94(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSProfileParams);
  sub_D77D8();
  return sub_28ACC(a1);
}

__n128 sub_45750@<Q0>(_OWORD *a1@<X8>)
{
  sub_D77D8();
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

__n128 sub_457DC@<Q0>(uint64_t a1@<X8>)
{
  sub_50594(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7;
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

id sub_45858()
{
  v0 = objc_allocWithZone(GCSController);

  return [v0 initDummy];
}

uint64_t sub_4589C()
{
  v1 = *(v0 + *(type metadata accessor for GCSEntryView() + 76));
  sub_4592C(v1);
  return v1;
}

uint64_t type metadata accessor for GCSEntryView()
{
  result = qword_11B9A0;
  if (!qword_11B9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4592C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_4593C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GCSEntryView() + 76));
  result = sub_45984(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_45984(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_459DC()
{
  type metadata accessor for GCSPreferencesStore();
  sub_4985C(&qword_116448, type metadata accessor for GCSPreferencesStore);
  v0 = sub_D6BD8();
  v1 = [v0 controllers];

  sub_450A0(0, &qword_117060);
  v2 = sub_D7D28();

  if (v2 >> 62)
  {
    v3 = sub_D8078();
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  if (v3 > 0)
  {
    return 0;
  }

  type metadata accessor for BluetoothManager();
  sub_4985C(&qword_117058, type metadata accessor for BluetoothManager);
  v5 = *sub_D6BD8();
  v6 = (*(v5 + 1160))();

  if (v6 >> 62)
  {
    v7 = sub_D8078();
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  return v7 < 1;
}

uint64_t sub_45BEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_DC40(&qword_117640);
  __chkstk_darwin(v3);
  v5 = (&v61 - v4);
  v6 = sub_D6D08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for GCSEntryView();
  v76 = *(v80 - 8);
  __chkstk_darwin(v80);
  v89 = v10;
  v83 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_DC40(&qword_117648);
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v12 = &v61 - v11;
  v75 = sub_DC40(&qword_117650);
  v73 = *(v75 - 1);
  __chkstk_darwin(v75);
  v71 = &v61 - v13;
  v14 = sub_DC40(&qword_117658);
  v77 = *(v14 - 8);
  v78 = v14;
  __chkstk_darwin(v14);
  v87 = &v61 - v15;
  v81 = sub_DC40(&qword_117660);
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v88 = &v61 - v16;
  v17 = sub_DC40(&qword_117668);
  v84 = *(v17 - 8);
  v85 = v17;
  __chkstk_darwin(v17);
  v82 = &v61 - v18;
  v19 = sub_DC40(&qword_117670);
  __chkstk_darwin(v19);
  v21 = &v61 - v20;
  v22 = sub_459DC();
  if (v22)
  {
    sub_A8C90(&v92);
    v23 = v93;
    *v5 = v92;
    v5[1] = v23;
    v5[2] = v94;
    swift_storeEnumTagMultiPayload();
    sub_48378();
    sub_48748();
    return sub_D70B8();
  }

  else
  {
    v62 = &v61;
    __chkstk_darwin(v22);
    v69 = v3;
    __chkstk_darwin(v25);
    v65 = v6;
    v70 = a1;
    v86 = v1;
    v66 = v7;
    sub_DC40(&qword_117678);
    v64 = v21;
    v63 = v9;
    v67 = v19;
    sub_DC40(&qword_117680);
    v68 = v5;
    sub_15FB8(&qword_117688, &qword_117678);
    sub_15FB8(&qword_117690, &qword_117680);
    sub_D7318();
    *&v92 = sub_A9308(0x53474E4954544553, 0xEE00454C5449545FLL);
    *(&v92 + 1) = v26;
    v27 = sub_15FB8(&qword_117698, &qword_117648);
    v28 = sub_16000();
    v29 = v71;
    v30 = v74;
    sub_D7498();

    (*(v72 + 8))(v12, v30);
    *&v92 = v30;
    *(&v92 + 1) = &type metadata for String;
    *&v93 = v27;
    *(&v93 + 1) = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = v75;
    sub_D73C8();
    (*(v73 + 1))(v29, v32);
    v33 = v86;
    v34 = *(v86 + 136);
    v90 = *(v86 + 128);
    v91 = v34;
    v74 = sub_DC40(&qword_1166E0);
    sub_D7808();
    v61 = v92;
    LODWORD(v62) = v93;
    v73 = type metadata accessor for GCSEntryView;
    v35 = v83;
    sub_47C94(v33, v83, type metadata accessor for GCSEntryView);
    v36 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v37 = swift_allocObject();
    v76 = type metadata accessor for GCSEntryView;
    sub_49A80(v35, v37 + v36, type metadata accessor for GCSEntryView);
    v71 = sub_DC40(&qword_1176A0);
    *&v92 = v32;
    *(&v92 + 1) = OpaqueTypeConformance2;
    v72 = swift_getOpaqueTypeConformance2();
    v75 = &protocol conformance descriptor for NavigationView<A>;
    v38 = sub_15FB8(&qword_1176A8, &qword_1176A0);
    v39 = v87;
    v40 = v78;
    sub_D7518();

    (*(v77 + 8))(v39, v40);
    v41 = v86;
    v42 = v86 + *(v80 + 64);
    v43 = *v42;
    v44 = *(v42 + 8);
    v90 = v43;
    v91 = v44;
    sub_D7808();
    sub_47C94(v41, v35, v73);
    v45 = swift_allocObject();
    sub_49A80(v35, v45 + v36, v76);
    v46 = sub_DC40(&qword_1176B0);
    *&v92 = v40;
    *(&v92 + 1) = v71;
    *&v93 = v72;
    *(&v93 + 1) = v38;
    *&v60 = swift_getOpaqueTypeConformance2();
    *(&v60 + 1) = sub_15FB8(&qword_1176B8, &qword_1176B0);
    v48 = v81;
    v47 = v82;
    v49 = v88;
    sub_D7518();

    (*(v79 + 8))(v49, v48);
    v50 = v63;
    sub_D7A48();
    *&v92 = v48;
    *(&v92 + 1) = v46;
    v93 = v60;
    swift_getOpaqueTypeConformance2();
    sub_4985C(&qword_116888, &type metadata accessor for GroupedFormStyle);
    v51 = v64;
    v52 = v85;
    v53 = v65;
    sub_D7558();
    (*(v66 + 8))(v50, v53);
    (*(v84 + 8))(v47, v52);
    type metadata accessor for GCSPreferencesStore();
    sub_4985C(&qword_116448, type metadata accessor for GCSPreferencesStore);
    v54 = sub_D6BD8();
    v55 = sub_D6A58();
    v56 = (v51 + *(sub_DC40(&qword_1176C0) + 36));
    *v56 = v55;
    v56[1] = v54;
    type metadata accessor for BluetoothManager();
    sub_4985C(&qword_117058, type metadata accessor for BluetoothManager);
    v57 = sub_D6BD8();
    v58 = sub_D6A58();
    v59 = (v51 + *(v67 + 36));
    *v59 = v58;
    v59[1] = v57;
    sub_48308(v51, v68);
    swift_storeEnumTagMultiPayload();
    sub_48378();
    sub_48748();
    sub_D70B8();
    return sub_4879C(v51);
  }
}

uint64_t sub_46960@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v3 = sub_DC40(&qword_116840);
  __chkstk_darwin(v3 - 8);
  v144 = &v132 - v4;
  v5 = type metadata accessor for GCSProfileListView();
  v145 = *(v5 - 8);
  v146 = v5;
  __chkstk_darwin(v5);
  v143 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_DC40(&qword_117848);
  __chkstk_darwin(v7 - 8);
  v155 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v157 = &v132 - v10;
  v158 = sub_DC40(&qword_117850);
  v154 = *(v158 - 8);
  __chkstk_darwin(v158);
  v153 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v156 = &v132 - v13;
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 16);
  v17 = type metadata accessor for GCSPreferencesStore();
  v18 = sub_4985C(&qword_116448, type metadata accessor for GCSPreferencesStore);
  v19 = sub_D6BD8();
  v20 = [v19 controllers];

  v21 = sub_450A0(0, &qword_117060);
  v22 = sub_D7D28();

  if (v22 >> 62)
  {
    v23 = sub_D8078();
  }

  else
  {
    v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
  }

  v147 = v21;
  v148 = v18;
  v149 = v17;
  LODWORD(v150) = v16;
  v151 = v15;
  v152 = v14;

  if (v23 < 1)
  {
    sub_498A4(&v201);
  }

  else
  {
    v24 = a1[7];
    LOBYTE(v185) = *(a1 + 48);
    *(&v185 + 1) = v24;
    sub_DC40(&qword_1166E0);
    sub_D7808();
    v25 = *(&v201 + 1);
    v142 = v201;
    v26 = v202;
    v27 = a1[9];
    *&v185 = a1[8];
    *(&v185 + 1) = v27;
    sub_DC40(&qword_117808);
    sub_D7808();
    v28 = v201;
    v29 = v202;
    v30 = type metadata accessor for GCSEntryView();
    v31 = (a1 + *(v30 + 60));
    v32 = v31[7];
    v207 = v31[6];
    v208 = v32;
    v209 = v31[8];
    v33 = v31[3];
    v203 = v31[2];
    v204 = v33;
    v34 = v31[4];
    v206 = v31[5];
    v205 = v34;
    v35 = *v31;
    v202 = v31[1];
    v201 = v35;
    sub_DC40(&qword_117820);
    sub_D7808();
    v36 = (a1 + *(v30 + 76));
    v37 = *v36;
    v38 = v36[1];
    v39 = sub_4592C(*v36);
    v40 = sub_B5590(v39);
    sub_B5608(v40, v41, v142, v25, v26, v28, *(&v28 + 1), v29, &v185, v219, v37, v38);
    nullsub_1(&v185);
    v213 = v197;
    v214 = v198;
    v215 = v199;
    v216 = v200;
    v209 = v193;
    v210 = v194;
    v211 = v195;
    v212 = v196;
    v205 = v189;
    v206 = v190;
    v207 = v191;
    v208 = v192;
    v201 = v185;
    v202 = v186;
    v203 = v187;
    v204 = v188;
  }

  type metadata accessor for BluetoothManager();
  sub_4985C(&qword_117058, type metadata accessor for BluetoothManager);
  v42 = *sub_D6BD8();
  v43 = (*(v42 + 1160))();

  if (v43 >> 62)
  {
    v44 = sub_D8078();
  }

  else
  {
    v44 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
  }

  if (v44 < 1)
  {
    v139 = 0;
    v140 = 0;
    v137 = 1;
    v138 = 0;
  }

  else
  {
    v46 = sub_36B30();
    v139 = v48;
    v140 = v47;
    v138 = v49;

    v137 = v46;
    v45 = v46;
  }

  __chkstk_darwin(v45);
  sub_DC40(&qword_117858);
  sub_15FB8(&qword_117860, &qword_117858);
  sub_D79C8();
  v50 = sub_D6BD8();
  v51 = [v50 controllers];

  v52 = sub_D7D28();
  if (v52 >> 62)
  {
    v53 = sub_D8078();
  }

  else
  {
    v53 = *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8));
  }

  if (v53 < 1)
  {
    v73 = 1;
    v72 = v157;
  }

  else
  {
    v175[0] = *(a1 + 7);
    sub_DC40(&qword_117818);
    sub_D7808();
    v142 = v185;
    v135 = v186;
    v136 = *(&v185 + 1);
    v54 = a1[17];
    LOBYTE(v175[0]) = *(a1 + 128);
    *(&v175[0] + 1) = v54;
    sub_DC40(&qword_1166E0);
    sub_D7808();
    v133 = *(&v185 + 1);
    v134 = v185;
    v55 = v186;
    v56 = a1[19];
    LOBYTE(v175[0]) = *(a1 + 144);
    *(&v175[0] + 1) = v56;
    sub_D7808();
    v57 = v185;
    v58 = v186;
    v175[0] = *(a1 + 10);
    sub_D7808();
    v132 = v185;
    v59 = v186;
    v60 = type metadata accessor for GCSEntryView();
    sub_DC40(&qword_1172C8);
    v61 = v144;
    sub_D7808();
    v62 = (a1 + *(v60 + 60));
    v63 = v62[7];
    v191 = v62[6];
    v192 = v63;
    v193 = v62[8];
    v64 = v62[3];
    v187 = v62[2];
    v188 = v64;
    v65 = v62[5];
    v189 = v62[4];
    v190 = v65;
    v66 = v62[1];
    v185 = *v62;
    v186 = v66;
    sub_DC40(&qword_117820);
    v67 = sub_D7808();
    v68 = sub_5C730(v67);
    v69 = v143;
    sub_5C7A8(v68, v70, v142, v136, v135, v134, v133, v55, v143, v57, *(&v57 + 1), v58, v132, v59, v61, &v218);
    v71 = v69;
    v72 = v157;
    sub_49A80(v71, v157, type metadata accessor for GCSProfileListView);
    v73 = 0;
  }

  (*(v145 + 56))(v72, v73, 1, v146);
  v74 = sub_D6BD8();
  v75 = [v74 fusedControllers];

  v76 = sub_D7D28();
  if (v76 >> 62)
  {
    v77 = sub_D8078();
  }

  else
  {
    v77 = *(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8));
  }

  if (v77 > 0 || ((v78 = sub_D6BD8(), v79 = [v78 unfusedFusableControllers], v78, v80 = sub_D7D28(), v79, v80 >> 62) ? (v81 = sub_D8078()) : (v81 = *(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8))), , v81 >= 2))
  {
    v82 = type metadata accessor for GCSEntryView();
    v83 = (a1 + v82[17]);
    v85 = *v83;
    v84 = v83[1];
    *&v175[0] = v85;
    *(&v175[0] + 1) = v84;
    sub_DC40(&qword_117808);
    sub_D7808();
    v86 = v185;
    v87 = v186;
    v88 = (a1 + v82[18]);
    v90 = *v88;
    v89 = v88[1];
    *&v175[0] = v90;
    *(&v175[0] + 1) = v89;
    sub_D7808();
    v91 = v185;
    v92 = v186;
    v93 = a1 + v82[16];
    v94 = *v93;
    v95 = *(v93 + 1);
    LOBYTE(v175[0]) = v94;
    *(&v175[0] + 1) = v95;
    sub_DC40(&qword_1166E0);
    v96 = sub_D7808();
    v97 = v185;
    v98 = v186;
    v99 = sub_158D4(v96);
    sub_83B28(v99, v100, v86, *(&v86 + 1), v87, v91, *(&v91 + 1), v92, v217, v97, *(&v97 + 1), v98);
    v135 = v217[2];
    v136 = v217[0];
    v151 = v217[3];
    v152 = v217[1];
    v149 = v217[5];
    v150 = v217[4];
    v147 = v217[7];
    v148 = v217[6];
    v145 = v217[9];
    v146 = v217[8];
    v143 = v217[11];
    v144 = v217[10];
    v142 = v217[12];
  }

  else
  {
    v135 = 0;
    v136 = 0;
    v151 = 0;
    v152 = 0;
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v142 = 0;
  }

  v171 = v213;
  v172 = v214;
  v173 = v215;
  v174 = v216;
  v167 = v209;
  v168 = v210;
  v169 = v211;
  v170 = v212;
  v163 = v205;
  v164 = v206;
  v165 = v207;
  v166 = v208;
  v159 = v201;
  v160 = v202;
  v161 = v203;
  v162 = v204;
  v101 = v153;
  v134 = *(v154 + 16);
  v134(v153, v156, v158);
  v102 = v155;
  sub_16054(v157, v155, &qword_117848);
  v103 = v172;
  v175[12] = v171;
  v175[13] = v172;
  v104 = v173;
  v175[14] = v173;
  v105 = v167;
  v106 = v168;
  v175[8] = v167;
  v175[9] = v168;
  v107 = v169;
  v108 = v170;
  v175[10] = v169;
  v175[11] = v170;
  v109 = v163;
  v110 = v164;
  v175[4] = v163;
  v175[5] = v164;
  v111 = v165;
  v112 = v166;
  v175[6] = v165;
  v175[7] = v166;
  v113 = v159;
  v114 = v160;
  v175[0] = v159;
  v175[1] = v160;
  v115 = v161;
  v116 = v162;
  v175[2] = v161;
  v175[3] = v162;
  v117 = v141;
  *(v141 + 192) = v171;
  *(v117 + 208) = v103;
  *(v117 + 224) = v104;
  *(v117 + 128) = v105;
  *(v117 + 144) = v106;
  *(v117 + 160) = v107;
  *(v117 + 176) = v108;
  *(v117 + 64) = v109;
  *(v117 + 80) = v110;
  *(v117 + 96) = v111;
  *(v117 + 112) = v112;
  *v117 = v113;
  *(v117 + 16) = v114;
  v118 = v174;
  v176 = v174;
  *(v117 + 32) = v115;
  *(v117 + 48) = v116;
  v119 = v137;
  v120 = v138;
  *(v117 + 240) = v118;
  *(v117 + 248) = v119;
  v121 = v139;
  *(v117 + 256) = v140;
  *(v117 + 264) = v121;
  *(v117 + 272) = v120;
  v122 = sub_DC40(&qword_117868);
  v134((v117 + v122[16]), v101, v158);
  sub_16054(v102, v117 + v122[20], &qword_117848);
  v123 = v117 + v122[24];
  v125 = v135;
  v124 = v136;
  *&v177 = v136;
  *(&v177 + 1) = v152;
  *&v178 = v135;
  *(&v178 + 1) = v151;
  *&v179 = v150;
  *(&v179 + 1) = v149;
  *&v180 = v148;
  *(&v180 + 1) = v147;
  *&v181 = v146;
  *(&v181 + 1) = v145;
  *&v182 = v144;
  *(&v182 + 1) = v143;
  v183 = v142;
  sub_16054(v175, &v185, &qword_117870);
  sub_499F4(v119);
  sub_16054(&v177, &v185, &qword_117878);
  sub_49A3C(v119);
  v126 = v182;
  *(v123 + 64) = v181;
  *(v123 + 80) = v126;
  *(v123 + 96) = v183;
  v127 = v178;
  *v123 = v177;
  *(v123 + 16) = v127;
  v128 = v180;
  *(v123 + 32) = v179;
  *(v123 + 48) = v128;
  sub_160BC(v157, &qword_117848);
  v129 = *(v154 + 8);
  v130 = v158;
  v129(v156, v158);
  v184[0] = v124;
  v184[1] = v152;
  v184[2] = v125;
  v184[3] = v151;
  v184[4] = v150;
  v184[5] = v149;
  v184[6] = v148;
  v184[7] = v147;
  v184[8] = v146;
  v184[9] = v145;
  v184[10] = v144;
  v184[11] = v143;
  v184[12] = v142;
  sub_160BC(v184, &qword_117878);
  sub_160BC(v155, &qword_117848);
  v129(v153, v130);
  sub_49A3C(v119);
  v197 = v171;
  v198 = v172;
  v199 = v173;
  v200 = v174;
  v193 = v167;
  v194 = v168;
  v195 = v169;
  v196 = v170;
  v189 = v163;
  v190 = v164;
  v191 = v165;
  v192 = v166;
  v185 = v159;
  v186 = v160;
  v187 = v161;
  v188 = v162;
  return sub_160BC(&v185, &qword_117870);
}

uint64_t sub_47900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_DC40(&qword_117828);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_DC40(&qword_116818);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v15 = sub_DC40(&qword_117830);
  __chkstk_darwin(v15 - 8);
  v17 = &v25 - v16;
  *a2 = sub_D6FB8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v18 = *(a1 + *(type metadata accessor for GCSEntryView() + 76));
  if (v18)
  {
    v29 = v17;
    v30 = a2;

    sub_D7028();
    v26 = v11;
    v27 = v5;
    v28 = v4;

    sub_D7858();
    v19 = *(v9 + 16);
    v20 = v26;
    v19(v26, v14, v8);
    *v7 = 0;
    v7[8] = 1;
    v21 = sub_DC40(&qword_117840);
    v19(&v7[*(v21 + 48)], v20, v8);
    sub_45984(v18);
    v22 = *(v9 + 8);
    v22(v14, v8);
    v17 = v29;
    v22(v20, v8);
    a2 = v30;
    sub_21A44(v7, v17, &qword_117828);
    (*(v27 + 56))(v17, 0, 1, v28);
  }

  else
  {
    (*(v5 + 56))(v17, 1, 1, v4);
  }

  v23 = sub_DC40(&qword_117838);
  return sub_21A44(v17, a2 + *(v23 + 44), &qword_117830);
}

uint64_t sub_47C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_47D00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_47D10()
{
  type metadata accessor for GCSEntryView();
  type metadata accessor for GCSProfileSheetView();
  sub_4985C(&qword_117810, type metadata accessor for GCSProfileSheetView);
  return sub_D6CB8();
}

double sub_47DE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_DC40(&qword_116840);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = *(a1 + 152);
  LOBYTE(v28) = *(a1 + 144);
  *(&v28 + 1) = v6;
  sub_DC40(&qword_1166E0);
  sub_D7808();
  v23 = v38;
  v24 = v37;
  v7 = v39;
  v28 = *(a1 + 160);
  sub_DC40(&qword_117818);
  sub_D7808();
  v9 = v37;
  v8 = v38;
  v10 = v39;
  v11 = type metadata accessor for GCSEntryView();
  sub_DC40(&qword_1172C8);
  sub_D7808();
  v12 = (a1 + *(v11 + 60));
  v13 = v12[7];
  v34 = v12[6];
  v35 = v13;
  v36 = v12[8];
  v14 = v12[3];
  v30 = v12[2];
  v31 = v14;
  v15 = v12[5];
  v32 = v12[4];
  v33 = v15;
  v16 = v12[1];
  v28 = *v12;
  v29 = v16;
  sub_DC40(&qword_117820);
  sub_D7808();
  v17 = *(a1 + 136);
  v26 = *(a1 + 128);
  v27 = v17;
  sub_D7808();
  v18 = v28;
  LOBYTE(v11) = v29;
  v19 = sub_26684();
  return sub_26688(v19, v20, v24, v23, v7, v9, v8, v10, v25, v5, &v37, v18, *(&v18 + 1), v11);
}

uint64_t sub_47FCC()
{
  v1 = (type metadata accessor for GCSEntryView() - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_47D00(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  sub_2DAA4();

  v5 = v0 + v4 + v1[16];
  v6 = sub_D6998();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for GCSProfileParams();

  sub_DC40(&qword_1172C8);

  v7 = (v0 + v4 + v1[17]);

  if (*(v0 + v4 + v1[21]))
  {
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_48270()
{
  type metadata accessor for GCSEntryView();
  sub_49800();
  return sub_D6CB8();
}

uint64_t sub_48308(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_117670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_48378()
{
  result = qword_1176C8;
  if (!qword_1176C8)
  {
    sub_EBC0(&qword_117670);
    sub_48430();
    sub_15FB8(&qword_1176D8, &qword_1176E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1176C8);
  }

  return result;
}

unint64_t sub_48430()
{
  result = qword_1176D0;
  if (!qword_1176D0)
  {
    sub_EBC0(&qword_1176C0);
    sub_EBC0(&qword_117668);
    sub_D6D08();
    sub_EBC0(&qword_117660);
    sub_EBC0(&qword_1176B0);
    sub_EBC0(&qword_117658);
    sub_EBC0(&qword_1176A0);
    sub_EBC0(&qword_117650);
    sub_EBC0(&qword_117648);
    sub_15FB8(&qword_117698, &qword_117648);
    sub_16000();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_15FB8(&qword_1176A8, &qword_1176A0);
    swift_getOpaqueTypeConformance2();
    sub_15FB8(&qword_1176B8, &qword_1176B0);
    swift_getOpaqueTypeConformance2();
    sub_4985C(&qword_116888, &type metadata accessor for GroupedFormStyle);
    swift_getOpaqueTypeConformance2();
    sub_15FB8(&qword_117418, &qword_117420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1176D0);
  }

  return result;
}

unint64_t sub_48748()
{
  result = qword_1176E8;
  if (!qword_1176E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1176E8);
  }

  return result;
}

uint64_t sub_4879C(uint64_t a1)
{
  v2 = sub_DC40(&qword_117670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_48804@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  *a1 = sub_45368;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_45484;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  LOBYTE(v29) = 0;
  sub_D77D8();
  v8 = *(&v31 + 1);
  *(a1 + 48) = v31;
  *(a1 + 56) = v8;
  v29 = [objc_allocWithZone(GCSController) initDummy];
  sub_450A0(0, &qword_117060);
  sub_D77D8();
  v9 = *(&v31 + 1);
  *(a1 + 64) = v31;
  *(a1 + 72) = v9;
  v29 = [objc_opt_self() defaultGame];
  sub_450A0(0, &qword_1164A8);
  sub_D77D8();
  v10 = *(&v31 + 1);
  *(a1 + 80) = v31;
  *(a1 + 88) = v10;
  v29 = [objc_opt_self() defaultProfile];
  sub_450A0(0, &qword_118F10);
  sub_D77D8();
  v11 = *(&v31 + 1);
  *(a1 + 96) = v31;
  *(a1 + 104) = v11;
  v29 = 0;
  sub_DC40(&qword_116800);
  sub_D77D8();
  *(a1 + 112) = v31;
  LOBYTE(v29) = 0;
  sub_D77D8();
  v12 = *(&v31 + 1);
  *(a1 + 128) = v31;
  *(a1 + 136) = v12;
  LOBYTE(v29) = 0;
  sub_D77D8();
  v13 = *(&v31 + 1);
  *(a1 + 144) = v31;
  *(a1 + 152) = v13;
  v29 = 0;
  sub_D77D8();
  *(a1 + 160) = v31;
  v14 = type metadata accessor for GCSEntryView();
  sub_D1AF8(v7);
  sub_47C94(v7, v4, type metadata accessor for GCSProfileParams);
  sub_D77D8();
  sub_28ACC(v7);
  v15 = (a1 + v14[15]);
  sub_50594(&v29);
  sub_D77D8();
  v16 = v38;
  v15[6] = v37;
  v15[7] = v16;
  v15[8] = v39;
  v17 = v34;
  v15[2] = v33;
  v15[3] = v17;
  v18 = v36;
  v15[4] = v35;
  v15[5] = v18;
  v19 = v32;
  *v15 = v31;
  v15[1] = v19;
  v20 = a1 + v14[16];
  LOBYTE(v28) = 0;
  sub_D77D8();
  v21 = v30;
  *v20 = v29;
  *(v20 + 8) = v21;
  v22 = (a1 + v14[17]);
  v28 = [objc_allocWithZone(GCSController) initDummy];
  sub_D77D8();
  v23 = v30;
  *v22 = v29;
  v22[1] = v23;
  v24 = (a1 + v14[18]);
  v28 = [objc_allocWithZone(GCSController) initDummy];
  result = sub_D77D8();
  v26 = v30;
  *v24 = v29;
  v24[1] = v26;
  v27 = (a1 + v14[19]);
  *v27 = 0;
  v27[1] = 0;
  return result;
}

uint64_t sub_48BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a5;
  v40 = a6;
  v12 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = 0;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = 0;
  LOBYTE(v42) = 0;
  sub_D77D8();
  v18 = *(&v44 + 1);
  *(a7 + 48) = v44;
  *(a7 + 56) = v18;
  v42 = [objc_allocWithZone(GCSController) initDummy];
  sub_450A0(0, &qword_117060);
  sub_D77D8();
  v19 = *(&v44 + 1);
  *(a7 + 64) = v44;
  *(a7 + 72) = v19;
  v42 = [objc_opt_self() defaultGame];
  sub_450A0(0, &qword_1164A8);
  sub_D77D8();
  v20 = *(&v44 + 1);
  *(a7 + 80) = v44;
  *(a7 + 88) = v20;
  v42 = [objc_opt_self() defaultProfile];
  sub_450A0(0, &qword_118F10);
  sub_D77D8();
  v21 = *(&v44 + 1);
  *(a7 + 96) = v44;
  *(a7 + 104) = v21;
  v42 = 0;
  sub_DC40(&qword_116800);
  sub_D77D8();
  *(a7 + 112) = v44;
  LOBYTE(v42) = 0;
  sub_D77D8();
  v22 = *(&v44 + 1);
  *(a7 + 128) = v44;
  *(a7 + 136) = v22;
  LOBYTE(v42) = 0;
  sub_D77D8();
  v23 = *(&v44 + 1);
  *(a7 + 144) = v44;
  *(a7 + 152) = v23;
  v42 = 0;
  sub_D77D8();
  *(a7 + 160) = v44;
  v24 = type metadata accessor for GCSEntryView();
  sub_D1AF8(v17);
  sub_47C94(v17, v14, type metadata accessor for GCSProfileParams);
  sub_D77D8();
  sub_28ACC(v17);
  v25 = (a7 + v24[15]);
  sub_50594(&v42);
  sub_D77D8();
  v26 = v51;
  v25[6] = v50;
  v25[7] = v26;
  v25[8] = v52;
  v27 = v47;
  v25[2] = v46;
  v25[3] = v27;
  v28 = v49;
  v25[4] = v48;
  v25[5] = v28;
  v29 = v45;
  *v25 = v44;
  v25[1] = v29;
  v30 = a7 + v24[16];
  LOBYTE(v41) = 0;
  sub_D77D8();
  v31 = v43;
  *v30 = v42;
  *(v30 + 8) = v31;
  v32 = (a7 + v24[17]);
  v41 = [objc_allocWithZone(GCSController) initDummy];
  sub_D77D8();
  v33 = v43;
  *v32 = v42;
  v32[1] = v33;
  v34 = (a7 + v24[18]);
  v41 = [objc_allocWithZone(GCSController) initDummy];
  result = sub_D77D8();
  v36 = v43;
  *v34 = v42;
  v34[1] = v36;
  v37 = (a7 + v24[19]);
  v38 = v40;
  *v37 = v39;
  v37[1] = v38;
  return result;
}

uint64_t sub_48FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_DC40(&qword_1172C8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_490C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = sub_DC40(&qword_1172C8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_49178()
{
  sub_49394();
  if (v0 <= 0x3F)
  {
    sub_49428();
    if (v1 <= 0x3F)
    {
      sub_4956C(319, &qword_117340);
      if (v2 <= 0x3F)
      {
        sub_494BC(319, &qword_117758, &qword_117060);
        if (v3 <= 0x3F)
        {
          sub_494BC(319, &qword_117760, &qword_1164A8);
          if (v4 <= 0x3F)
          {
            sub_494BC(319, &qword_117768, &qword_118F10);
            if (v5 <= 0x3F)
            {
              sub_495B8(319, &qword_117770, &qword_116800, &unk_DF0C0, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_49514();
                if (v7 <= 0x3F)
                {
                  sub_4956C(319, &qword_117778);
                  if (v8 <= 0x3F)
                  {
                    sub_495B8(319, &qword_117780, &unk_117788, &unk_E2C00, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_49394()
{
  if (!qword_117748)
  {
    type metadata accessor for GCSPreferencesStore();
    sub_4985C(&qword_116448, type metadata accessor for GCSPreferencesStore);
    v0 = sub_D6BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_117748);
    }
  }
}

void sub_49428()
{
  if (!qword_117750)
  {
    type metadata accessor for BluetoothManager();
    sub_4985C(&qword_117058, type metadata accessor for BluetoothManager);
    v0 = sub_D6BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_117750);
    }
  }
}

void sub_494BC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_450A0(255, a3);
    v4 = sub_D7818();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_49514()
{
  if (!qword_117348)
  {
    type metadata accessor for GCSProfileParams();
    v0 = sub_D7818();
    if (!v1)
    {
      atomic_store(v0, &qword_117348);
    }
  }
}

void sub_4956C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_D7818();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_495B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_EBC0(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_49620()
{
  result = qword_1177F0;
  if (!qword_1177F0)
  {
    sub_EBC0(&qword_1177F8);
    sub_48378();
    sub_48748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1177F0);
  }

  return result;
}

__n128 sub_496AC@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for GCSEntryView();
  sub_DC40(&qword_117808);
  sub_D7808();
  sub_D7808();
  sub_DC40(&qword_1166E0);
  sub_D7808();
  v2 = sub_26684();
  sub_D56EC(v2, v3, v7, *(&v7 + 1), v8, v7, *(&v7 + 1), v8, &v7, v7, *(&v7 + 1), v8);
  v4 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(a1 + 96) = v13;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  result = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_49800()
{
  result = qword_117800;
  if (!qword_117800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117800);
  }

  return result;
}

uint64_t sub_4985C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_498A4(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_498D0()
{
  v1 = sub_A9308(0xD00000000000001ALL, 0x80000000000E58E0);
  nullsub_1(v1);
  type metadata accessor for GCSPreferencesStore();
  sub_4985C(&qword_116448, type metadata accessor for GCSPreferencesStore);
  sub_D6BD8();
  sub_D6A58();
  sub_DC40(&qword_117880);
  sub_49AE8();
  sub_16000();
  return sub_D6CA8();
}

char *sub_499F4(char *result)
{
  if (result != &dword_0 + 1)
  {
    v2 = result;

    return v2;
  }

  return result;
}

char *sub_49A3C(char *result)
{
  if (result != &dword_0 + 1)
  {
  }

  return result;
}

uint64_t sub_49A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_49AE8()
{
  result = qword_117888;
  if (!qword_117888)
  {
    sub_EBC0(&qword_117880);
    sub_49BA0();
    sub_15FB8(&qword_117418, &qword_117420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117888);
  }

  return result;
}

unint64_t sub_49BA0()
{
  result = qword_117890;
  if (!qword_117890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117890);
  }

  return result;
}

__n128 sub_49C08@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_DC40(&qword_117898);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  *v6 = sub_D6FB8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_DC40(&qword_1178A0);
  sub_49D4C(a1, &v6[*(v7 + 44)]);
  sub_D7A18();
  sub_D6DB8();
  sub_4A3E0(v6, a2);
  v8 = a2 + *(sub_DC40(&qword_1178A8) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_49D4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v68 = a1;
  v64 = sub_D7708();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D7598();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_DC40(&qword_1170E8) - 8;
  __chkstk_darwin(v65);
  v66 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v13 = *(sub_D6D98() + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = sub_D7048();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #7.0 }

  *v12 = _Q0;
  sub_DC40(&qword_1170D8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_DC430;
  v22 = enum case for Color.RGBColorSpace.sRGB(_:);
  v23 = *(v6 + 104);
  v23(v8, enum case for Color.RGBColorSpace.sRGB(_:), v5);
  *(v21 + 32) = sub_D76D8();
  v23(v8, v22, v5);
  *(v21 + 40) = sub_D76D8();
  sub_D79D8();
  sub_D6C78();
  v24 = sub_DC40(&qword_1170C8);
  v25 = &v12[*(v24 + 52)];
  v26 = v76;
  *v25 = v75;
  *(v25 + 1) = v26;
  *(v25 + 4) = v77;
  *&v12[*(v24 + 56)] = 256;
  v63 = sub_D7A18();
  v28 = v27;
  v29 = [v68 sfSymbolsName];
  sub_D7C18();

  sub_D76F8();
  v30 = v64;
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v64);
  v31 = sub_D7758();

  (*(v2 + 8))(v4, v30);
  v32 = sub_D7668();
  LOBYTE(v4) = sub_D71F8();
  sub_D6B68();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v78 = v31;
  LOWORD(v79) = 1;
  *(&v79 + 2) = v73;
  WORD3(v79) = v74;
  *(&v79 + 1) = v32;
  LOBYTE(v80) = v4;
  *(&v80 + 1) = *v72;
  DWORD1(v80) = *&v72[3];
  *(&v80 + 1) = v33;
  *&v81 = v35;
  *(&v81 + 1) = v37;
  *&v82 = v39;
  BYTE8(v82) = 0;
  HIDWORD(v82) = *(&v69 + 3);
  *(&v82 + 9) = v69;
  v41 = v63;
  *&v83 = v63;
  *(&v83 + 1) = v28;
  v42 = &v12[*(sub_DC40(&qword_1170D0) + 36)];
  v43 = v81;
  *(v42 + 2) = v80;
  *(v42 + 3) = v43;
  v44 = v83;
  *(v42 + 4) = v82;
  *(v42 + 5) = v44;
  v45 = v79;
  *v42 = v78;
  *(v42 + 1) = v45;
  v84[0] = v31;
  v84[1] = 0;
  v85 = 1;
  v87 = v74;
  v86 = v73;
  v88 = v32;
  v89 = v4;
  *&v90[3] = *&v72[3];
  *v90 = *v72;
  v91 = v34;
  v92 = v36;
  v93 = v38;
  v94 = v40;
  v95 = 0;
  *v96 = v69;
  *&v96[3] = *(&v69 + 3);
  v97 = v41;
  v98 = v28;
  sub_16054(&v78, v71, &qword_1170E0);
  sub_160BC(v84, &qword_1170E0);
  sub_D7A18();
  sub_D6C28();
  v46 = &v12[*(v65 + 44)];
  v47 = v71[1];
  *v46 = v71[0];
  *(v46 + 1) = v47;
  *(v46 + 2) = v71[2];
  v48 = [v68 name];
  v49 = sub_D7C18();
  v51 = v50;

  v69 = v49;
  v70 = v51;
  sub_16000();
  v52 = sub_D73B8();
  v54 = v53;
  LOBYTE(v51) = v55;
  v57 = v56;
  v58 = v66;
  sub_16054(v12, v66, &qword_1170E8);
  v59 = v67;
  sub_16054(v58, v67, &qword_1170E8);
  v60 = v59 + *(sub_DC40(&qword_1178C0) + 48);
  *v60 = v52;
  *(v60 + 8) = v54;
  LOBYTE(v51) = v51 & 1;
  *(v60 + 16) = v51;
  *(v60 + 24) = v57;
  sub_1F900(v52, v54, v51);

  sub_160BC(v12, &qword_1170E8);
  sub_1F8F0(v52, v54, v51);

  return sub_160BC(v58, &qword_1170E8);
}

uint64_t sub_4A3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_117898);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_4A488()
{
  result = qword_1178B0;
  if (!qword_1178B0)
  {
    sub_EBC0(&qword_1178A8);
    sub_4A514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1178B0);
  }

  return result;
}

unint64_t sub_4A514()
{
  result = qword_1178B8;
  if (!qword_1178B8)
  {
    sub_EBC0(&qword_117898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1178B8);
  }

  return result;
}

uint64_t sub_4A578@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_D6FB8();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = sub_DC40(&qword_1178C8);
  return sub_4A5D0(a1, a2 + *(v4 + 44));
}

uint64_t sub_4A5D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_DC40(&qword_1178E0);
  __chkstk_darwin(v3 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v30 - v6);
  *v7 = sub_D7A18();
  v7[1] = v8;
  v9 = sub_DC40(&qword_1178E8);
  sub_4A820(a1, v7 + *(v9 + 44));
  v10 = [a1 localizedName];
  v11 = sub_D7C18();
  v13 = v12;

  v33 = v11;
  v34 = v13;
  sub_16000();
  v14 = sub_D73B8();
  v16 = v15;
  v18 = v17;
  sub_D76B8();
  v19 = sub_D7378();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_1F8F0(v14, v16, v18 & 1);

  v26 = v31;
  sub_16054(v7, v31, &qword_1178E0);
  v27 = v32;
  sub_16054(v26, v32, &qword_1178E0);
  v28 = v27 + *(sub_DC40(&qword_1178F0) + 48);
  *v28 = v19;
  *(v28 + 8) = v21;
  *(v28 + 16) = v23 & 1;
  *(v28 + 24) = v25;
  sub_1F900(v19, v21, v23 & 1);

  sub_160BC(v7, &qword_1178E0);
  sub_1F8F0(v19, v21, v23 & 1);

  return sub_160BC(v26, &qword_1178E0);
}

uint64_t sub_4A820@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D7598();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_DC40(&qword_1170E8);
  __chkstk_darwin(v68);
  v9 = &v64 - v8;
  v66 = sub_DC40(&qword_1178F8);
  __chkstk_darwin(v66);
  v67 = &v64 - v10;
  v65 = sub_D7708();
  v11 = *(v65 - 8);
  v12 = __chkstk_darwin(v65);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 bundleIdentifier];
  if (v15 && (v16 = v15, v17 = [objc_opt_self() appIconImageForBundleIdentifier:v15], v16, v17) && (v18 = objc_msgSend(v17, "UIImage"), v17, v18))
  {
    v19 = v18;
    sub_D76E8();
    v20 = v65;
    (*(v11 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v65);
    v21 = sub_D7758();

    (*(v11 + 8))(v14, v20);
    sub_D7A18();
    sub_D6C28();
    LOBYTE(v76[0]) = 1;
    v69 = 0;
    *(&v77[2] + 6) = v72;
    *(&v77[1] + 6) = v71;
    *(v77 + 6) = v70;
    v80 = v21;
    LOWORD(v81) = 257;
    *(&v81 + 2) = v84;
    WORD3(v81) = WORD2(v84);
    *(&v81 + 1) = 0x3FF0000000000000;
    *v82 = 0;
    *&v82[48] = *(&v72 + 1);
    *&v82[34] = v77[2];
    *&v82[18] = v77[1];
    *&v82[2] = v77[0];
    v22 = *&v82[16];
    v23 = v67;
    *(v67 + 2) = *v82;
    *(v23 + 3) = v22;
    *(v23 + 4) = *&v82[32];
    *(v23 + 10) = *&v82[48];
    v24 = v81;
    *v23 = v80;
    *(v23 + 1) = v24;
    swift_storeEnumTagMultiPayload();
    sub_16054(&v80, v77, &qword_117900);
    sub_DC40(&qword_117900);
    sub_4B248(&qword_117908, &qword_117900, &unk_DF448, sub_4B1BC);
    sub_4B248(&qword_117120, &qword_1170E8, &unk_DE5D0, sub_39714);
    sub_D70B8();

    v25 = &v80;
    v26 = &qword_117900;
  }

  else
  {
    v27 = *(sub_D6D98() + 20);
    v28 = enum case for RoundedCornerStyle.continuous(_:);
    v29 = sub_D7048();
    (*(*(v29 - 8) + 104))(&v9[v27], v28, v29);
    __asm { FMOV            V0.2D, #7.0 }

    *v9 = _Q0;
    sub_DC40(&qword_1170D8);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_DC430;
    v36 = enum case for Color.RGBColorSpace.sRGB(_:);
    v64 = a2;
    v37 = *(v5 + 104);
    v37(v7, enum case for Color.RGBColorSpace.sRGB(_:), v4);
    *(v35 + 32) = sub_D76D8();
    v37(v7, v36, v4);
    *(v35 + 40) = sub_D76D8();
    sub_D79D8();
    sub_D6C78();
    v38 = sub_DC40(&qword_1170C8);
    v39 = &v9[*(v38 + 52)];
    v40 = v85;
    *v39 = v84;
    *(v39 + 1) = v40;
    *(v39 + 4) = v86;
    *&v9[*(v38 + 56)] = 256;
    v41 = sub_D7A18();
    v43 = v42;
    sub_D76F8();
    v44 = v65;
    (*(v11 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v65);
    v45 = sub_D7758();

    (*(v11 + 8))(v14, v44);
    v46 = sub_D7668();
    v47 = sub_D71F8();
    sub_D6B68();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v77[0] = v45;
    LOWORD(v77[1]) = 1;
    *(&v77[1] + 2) = v74;
    WORD3(v77[1]) = v75;
    *(&v77[1] + 1) = v46;
    LOBYTE(v77[2]) = v47;
    *(&v77[2] + 1) = *v73;
    DWORD1(v77[2]) = *&v73[3];
    *(&v77[2] + 1) = v48;
    *&v77[3] = v50;
    *(&v77[3] + 1) = v52;
    *&v78 = v54;
    BYTE8(v78) = 0;
    HIDWORD(v78) = *(v76 + 3);
    *(&v78 + 9) = v76[0];
    *&v79 = v41;
    *(&v79 + 1) = v43;
    v56 = &v9[*(sub_DC40(&qword_1170D0) + 36)];
    v57 = v77[3];
    *(v56 + 2) = v77[2];
    *(v56 + 3) = v57;
    v58 = v79;
    *(v56 + 4) = v78;
    *(v56 + 5) = v58;
    v59 = v77[1];
    *v56 = v77[0];
    *(v56 + 1) = v59;
    v80 = v45;
    LOWORD(v81) = 1;
    WORD3(v81) = v75;
    *(&v81 + 2) = v74;
    *(&v81 + 1) = v46;
    v82[0] = v47;
    *&v82[4] = *&v73[3];
    *&v82[1] = *v73;
    *&v82[8] = v49;
    *&v82[16] = v51;
    *&v82[24] = v53;
    *&v82[32] = v55;
    v82[40] = 0;
    *&v82[41] = v76[0];
    *&v82[44] = *(v76 + 3);
    *&v82[48] = v41;
    v83 = v43;
    sub_16054(v77, &v70, &qword_1170E0);
    sub_160BC(&v80, &qword_1170E0);
    sub_D7A18();
    sub_D6C28();
    v60 = v67;
    v61 = &v9[*(v68 + 36)];
    v62 = v71;
    *v61 = v70;
    *(v61 + 1) = v62;
    *(v61 + 2) = v72;
    sub_16054(v9, v60, &qword_1170E8);
    swift_storeEnumTagMultiPayload();
    sub_DC40(&qword_117900);
    sub_4B248(&qword_117908, &qword_117900, &unk_DF448, sub_4B1BC);
    sub_4B248(&qword_117120, &qword_1170E8, &unk_DE5D0, sub_39714);
    sub_D70B8();
    v25 = v9;
    v26 = &qword_1170E8;
  }

  return sub_160BC(v25, v26);
}

uint64_t sub_4B110@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_D6FB8();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v4 = sub_DC40(&qword_1178C8);
  return sub_4A5D0(v3, a1 + *(v4 + 44));
}

unint64_t sub_4B1BC()
{
  result = qword_117910;
  if (!qword_117910)
  {
    sub_EBC0(&qword_117918);
    sub_16168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117910);
  }

  return result;
}

uint64_t sub_4B248(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_EBC0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4B2CC()
{
  type metadata accessor for GCSAppStore();
  sub_4C4F4(&qword_117920, type metadata accessor for GCSAppStore);

  return sub_D6DF8();
}

uint64_t sub_4B340@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_DC40(&qword_117928);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_4B3C4()
{
  type metadata accessor for GCSAppSelectionView();
  sub_DC40(&qword_117930);
  sub_D78B8();
  return v1;
}

uint64_t type metadata accessor for GCSAppSelectionView()
{
  result = qword_11BB40;
  if (!qword_11BB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4B478()
{
  type metadata accessor for GCSAppSelectionView();
  sub_DC40(&qword_117930);
  return sub_D78C8();
}

void (*sub_4B4E8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for GCSAppSelectionView() + 24));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v9 = v8;

  v4[11] = sub_DC40(&qword_117930);
  sub_D78B8();
  return sub_23270;
}

uint64_t sub_4B5B4()
{
  type metadata accessor for GCSAppSelectionView();
  sub_DC40(&qword_117930);
  sub_D78E8();
  return v1;
}

uint64_t sub_4B620()
{
  sub_DC40(&qword_117528);
  sub_D77D8();
  return v1;
}

uint64_t sub_4B668@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v31 = sub_D70E8();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D70F8();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_DC40(&qword_117938);
  v9 = *(v8 - 8);
  v29 = v8;
  v30 = v9;
  __chkstk_darwin(v8);
  v11 = v28 - v10;
  v35 = v1;
  v28[0] = sub_DC40(&qword_117940);
  v12 = sub_EBC0(&qword_117948);
  v13 = sub_EBC0(&qword_117950);
  v14 = sub_EBC0(&qword_117958);
  v15 = sub_EBC0(&qword_117960);
  v16 = sub_4C2F0();
  v17 = sub_16000();
  v38 = v15;
  v39 = &type metadata for String;
  v40 = v16;
  v41 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v14;
  v39 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = sub_EBC0(&qword_116998);
  v21 = sub_15FB8(&qword_1179A0, &qword_116998);
  v38 = v20;
  v39 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v38 = v12;
  v39 = v13;
  v40 = v19;
  v41 = v22;
  swift_getOpaqueTypeConformance2();
  sub_D6CB8();
  v23 = (v28[1] + *(type metadata accessor for GCSAppSelectionView() + 32));
  v24 = *v23;
  v25 = *(v23 + 2);
  v36 = v24;
  v37 = v25;
  sub_DC40(&qword_1169A8);
  sub_D7808();
  sub_D70D8();
  sub_D70C8();
  (*(v2 + 8))(v4, v31);
  sub_15FB8(&qword_1179A8, &qword_117938);
  v26 = v29;
  sub_D7418();

  (*(v32 + 8))(v7, v33);
  return (*(v30 + 8))(v11, v26);
}

uint64_t sub_4BAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v65 = a2;
  v3 = sub_D6F98();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v62 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GCSAppSelectionView();
  v6 = v5 - 8;
  v57 = *(v5 - 8);
  v56 = *(v57 + 64);
  __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_D6D08();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_DC40(&qword_117980);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v54 = sub_DC40(&qword_117960);
  __chkstk_darwin(v54);
  v18 = &v52 - v17;
  v19 = sub_DC40(&qword_117958);
  v20 = *(v19 - 8);
  v58 = v19;
  v59 = v20;
  __chkstk_darwin(v19);
  v53 = &v52 - v21;
  v22 = sub_DC40(&qword_117948);
  v23 = *(v22 - 8);
  v60 = v22;
  v61 = v23;
  __chkstk_darwin(v22);
  v55 = &v52 - v24;
  v67 = a1;
  sub_DC40(&qword_117A70);
  sub_4D6C8();
  sub_D7328();
  sub_D7A48();
  sub_15FB8(&qword_117988, &qword_117980);
  sub_4C4F4(&qword_116888, &type metadata accessor for GroupedFormStyle);
  sub_D7558();
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  v25 = v52;
  v26 = v52 + *(v6 + 40);
  v27 = *v26;
  v28 = *(v26 + 16);
  v68 = v27;
  v69 = v28;
  sub_DC40(&qword_1169A8);
  sub_D77E8();
  v29 = v71;
  v30 = v72;
  sub_4D778(v25, v8);
  v31 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v32 = swift_allocObject();
  sub_4D7E0(v8, v32 + v31);
  v33 = &v18[*(sub_DC40(&qword_117978) + 36)];
  *v33 = v29;
  *(v33 + 1) = v30;
  *(v33 + 2) = sub_4D844;
  *(v33 + 3) = v32;
  sub_4D778(v25, v8);
  v34 = swift_allocObject();
  sub_4D7E0(v8, v34 + v31);
  v35 = v54;
  v36 = &v18[*(v54 + 36)];
  *v36 = sub_4DBD4;
  v36[1] = v34;
  v36[2] = 0;
  v36[3] = 0;
  *&v68 = sub_A9308(0x5449545F53505041, 0xEA0000000000454CLL);
  *(&v68 + 1) = v37;
  v38 = sub_4C2F0();
  v39 = sub_16000();
  v40 = v53;
  v41 = v35;
  sub_D7498();

  sub_4DD1C(v18);
  v42 = v62;
  v43 = v63;
  v44 = v64;
  (*(v63 + 104))(v62, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v64);
  *&v68 = v41;
  *(&v68 + 1) = &type metadata for String;
  v69 = v38;
  v70 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v55;
  v47 = v58;
  sub_D74F8();
  (*(v43 + 8))(v42, v44);
  (*(v59 + 8))(v40, v47);
  v66 = v25;
  sub_DC40(&qword_117950);
  *&v68 = v47;
  *(&v68 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = sub_EBC0(&qword_116998);
  v49 = sub_15FB8(&qword_1179A0, &qword_116998);
  *&v68 = v48;
  *(&v68 + 1) = v49;
  swift_getOpaqueTypeConformance2();
  v50 = v60;
  sub_D7528();
  return (*(v61 + 8))(v46, v50);
}

unint64_t sub_4C2F0()
{
  result = qword_117968;
  if (!qword_117968)
  {
    sub_EBC0(&qword_117960);
    sub_4C37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117968);
  }

  return result;
}

unint64_t sub_4C37C()
{
  result = qword_117970;
  if (!qword_117970)
  {
    sub_EBC0(&qword_117978);
    sub_EBC0(&qword_117980);
    sub_D6D08();
    sub_15FB8(&qword_117988, &qword_117980);
    sub_4C4F4(&qword_116888, &type metadata accessor for GroupedFormStyle);
    swift_getOpaqueTypeConformance2();
    sub_15FB8(&qword_117990, &qword_117998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117970);
  }

  return result;
}

uint64_t sub_4C4F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4C53C(uint64_t a1)
{
  v2 = type metadata accessor for GCSAppSelectionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v11[1] = *(a1 + *(v5 + 36) + 8);
  sub_DC40(&qword_117A90);
  sub_D77E8();

  v11[0] = sub_4EFBC(v6);
  sub_4E04C(v11);

  swift_getKeyPath();
  sub_4D778(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_4D7E0(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_DC40(&qword_117528);
  sub_DC40(&qword_117A88);
  sub_15FB8(&qword_117A98, &qword_117528);
  sub_4F480();
  sub_15FB8(&qword_117A80, &qword_117A88);
  return sub_D7988();
}

void sub_4C798(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_D7C18();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_4C800(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for GCSAppSelectionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = *a1;
  sub_4D778(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_4D7E0(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v13 = v7;
  sub_4F744();
  v10 = v7;
  return sub_D7848();
}

uint64_t sub_4C95C(uint64_t a1, void *a2)
{
  v4 = sub_D6C48();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for GCSAppSelectionView() + 24));
  v9 = *v8;
  v10 = *(v8 + 2);
  v14 = v9;
  v15 = v10;
  v13 = a2;
  v11 = a2;
  sub_DC40(&qword_117930);
  sub_D78C8();
  sub_4DDF4(v7);
  sub_D6C38();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_4CA90(uint64_t a1)
{
  v2 = sub_D7128();
  __chkstk_darwin(v2 - 8);
  v3 = sub_DC40(&qword_116998);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_D7108();
  v9 = a1;
  sub_DC40(&qword_116818);
  sub_15FB8(&qword_116830, &qword_116818);
  sub_D6C08();
  sub_15FB8(&qword_1179A0, &qword_116998);
  sub_D7168();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_4CC7C(uint64_t a1)
{
  v2 = type metadata accessor for GCSAppSelectionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v9[0] = sub_A9308(0x4C45434E4143, 0xE600000000000000);
  v9[1] = v5;
  sub_4D778(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_4D7E0(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_16000();
  return sub_D7868();
}

uint64_t sub_4CDB0(uint64_t a1)
{
  v2 = sub_D6F68();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_DC40(&qword_117928);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = sub_D6C48();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GCSAppSelectionView();
  sub_4DFDC(a1 + *(v13 + 20), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_D7E28();
    v14 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_D6C38();
  return (*(v10 + 8))(v12, v9);
}

double sub_4D024@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for GCSAppStore();
  sub_4C4F4(&qword_117920, type metadata accessor for GCSAppStore);
  *a4 = sub_D6DF8();
  a4[1] = v8;
  v9 = type metadata accessor for GCSAppSelectionView();
  v10 = v9[5];
  *(a4 + v10) = swift_getKeyPath();
  sub_DC40(&qword_117928);
  swift_storeEnumTagMultiPayload();
  v11 = (a4 + v9[6]);
  *v11 = a1;
  v11[1] = a2;
  v11[2] = a3;
  v12 = (a4 + v9[7]);
  sub_DC40(&qword_117528);
  sub_D77D8();
  *v12 = v15;
  v13 = a4 + v9[8];
  sub_D77D8();
  result = *&v15;
  *v13 = v15;
  *(v13 + 2) = v16;
  return result;
}

uint64_t sub_4D1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_DC40(&qword_1179B0);
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

    return (v12 + 1);
  }
}

uint64_t sub_4D298(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_DC40(&qword_1179B0);
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_4D364()
{
  sub_4D488();
  if (v0 <= 0x3F)
  {
    sub_4D51C();
    if (v1 <= 0x3F)
    {
      sub_4D574(319, &qword_117A20, &qword_117A28, &unk_E37B0, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_4D574(319, &unk_117A30, &qword_117528, &unk_DEFE0, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_4D5D8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_4D488()
{
  if (!qword_117A10)
  {
    type metadata accessor for GCSAppStore();
    sub_4C4F4(&qword_117920, type metadata accessor for GCSAppStore);
    v0 = sub_D6E08();
    if (!v1)
    {
      atomic_store(v0, &qword_117A10);
    }
  }
}

void sub_4D51C()
{
  if (!qword_117A18)
  {
    sub_D6C48();
    v0 = sub_D6BC8();
    if (!v1)
    {
      atomic_store(v0, &qword_117A18);
    }
  }
}

void sub_4D574(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_EBC0(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_4D5D8()
{
  if (!qword_116938)
  {
    v0 = sub_D7818();
    if (!v1)
    {
      atomic_store(v0, &qword_116938);
    }
  }
}

uint64_t sub_4D628()
{
  sub_EBC0(&qword_117938);
  sub_15FB8(&qword_1179A8, &qword_117938);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_4D6C8()
{
  result = qword_117A78;
  if (!qword_117A78)
  {
    sub_EBC0(&qword_117A70);
    sub_15FB8(&qword_117A80, &qword_117A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117A78);
  }

  return result;
}

uint64_t sub_4D778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GCSAppSelectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4D7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GCSAppSelectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4D844(void *a1)
{
  v3 = type metadata accessor for GCSAppSelectionView();
  v4 = a1[1];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v6 = *(v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));
  if (v5)
  {
    if (v6)
    {
      v7 = *(*v6 + 88);

      v9 = v7(v8);

      if (v9 >> 62)
      {
        goto LABEL_22;
      }

      for (i = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
      {
        v11 = 4;
        while (1)
        {
          v12 = v11 - 4;
          if ((v9 & 0xC000000000000001) != 0)
          {
            v13 = sub_D7FF8();
          }

          else
          {
            if (v12 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_21;
            }

            v13 = *(v9 + 8 * v11);
          }

          v14 = v13;
          v15 = v11 - 3;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          sub_D69A8();
          isa = sub_D7D18().super.isa;

          v17 = [v14 localizedNameWithPreferredLocalizations:isa];

          sub_D7C18();
          sub_D7C48();

          sub_D7C48();
          sub_16000();
          LOBYTE(v17) = sub_D7F48();

          if (v17)
          {
            sub_D8028();
            sub_D8058();
            sub_D8068();
            sub_D8038();
          }

          else
          {
          }

          ++v11;
          if (v15 == i)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        ;
      }

LABEL_23:

      goto LABEL_24;
    }
  }

  else if (v6)
  {
    v18 = *(*v6 + 88);

    v18(v19);

LABEL_24:
    sub_DC40(&qword_117A90);
    return sub_D77F8();
  }

  type metadata accessor for GCSAppStore();
  sub_4C4F4(&qword_117920, type metadata accessor for GCSAppStore);
  result = sub_D6DD8();
  __break(1u);
  return result;
}

uint64_t sub_4DBD4()
{
  v1 = type metadata accessor for GCSAppSelectionView();
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  if (v2)
  {
    v3 = *(*v2 + 88);

    v3(v4);

    sub_DC40(&qword_117A90);
    return sub_D77F8();
  }

  else
  {
    type metadata accessor for GCSAppStore();
    sub_4C4F4(&qword_117920, type metadata accessor for GCSAppStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_4DD1C(uint64_t a1)
{
  v2 = sub_DC40(&qword_117960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4DD94()
{
  v1 = *(type metadata accessor for GCSAppSelectionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_4CDB0(v2);
}

uint64_t sub_4DDF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_D6F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_DC40(&qword_117928);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_4DFDC(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_D6C48();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_D7E28();
    v13 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_4DFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_117928);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4E04C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_4F7E4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_4E150(v6);
  return sub_D8038();
}

void *sub_4E0C8(uint64_t a1, uint64_t a2)
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

  sub_DC40(&qword_118E40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

Swift::Int sub_4E150(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_D80E8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_4F798();
        v6 = sub_D7D58();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_4E3D0(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_4E254(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_4E254(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 localizedName];
      v11 = sub_D7C18();
      v13 = v12;

      v14 = [v9 localizedName];
      v15 = sub_D7C18();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_D8118();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_4E3D0(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_4EBD0((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_1EC34(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_1EBA8(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_1EC34(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 localizedName];
      v16 = sub_D7C18();
      v18 = v17;

      v19 = [v14 localizedName];
      v20 = sub_D7C18();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_D8118();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 localizedName];
          v5 = sub_D7C18();
          v29 = v28;

          v30 = [v26 localizedName];
          v31 = sub_D7C18();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_D8118();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_1EC48(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_1EC48((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_4EBD0((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1EC34(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_1EBA8(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 localizedName];
    v5 = sub_D7C18();
    v51 = v50;

    v52 = [v48 localizedName];
    v53 = sub_D7C18();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_D8118();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_4EBD0(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 localizedName];
        v38 = sub_D7C18();
        v40 = v39;

        v41 = [v36 localizedName];
        v42 = sub_D7C18();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = sub_D8118();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 localizedName];
        v18 = sub_D7C18();
        v20 = v19;

        v21 = [v16 localizedName];
        v22 = sub_D7C18();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_D8118();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

void *sub_4EFBC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_D8078();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_4E0C8(v3, 0);
  sub_4F050((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_4F050(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_D8078();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_D8078();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_15FB8(&qword_117AB0, &qword_117528);
          for (i = 0; i != v6; ++i)
          {
            sub_DC40(&qword_117528);
            v9 = sub_4F1F4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_4F798();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_4F1F4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_D7FF8();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_4F274;
  }

  __break(1u);
  return result;
}

uint64_t sub_4F288()
{
  v1 = type metadata accessor for GCSAppSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  sub_DC40(&qword_117928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_D6C48();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + *(v1 + 24);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4F400(void **a1)
{
  v3 = *(type metadata accessor for GCSAppSelectionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_4C800(a1, v4);
}

unint64_t sub_4F480()
{
  result = qword_117AA0;
  if (!qword_117AA0)
  {
    sub_EBC0(&qword_118ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117AA0);
  }

  return result;
}

uint64_t sub_4F4FC()
{
  v1 = type metadata accessor for GCSAppSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  sub_DC40(&qword_117928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_D6C48();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v5 + *(v1 + 24);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

uint64_t sub_4F688()
{
  v1 = *(type metadata accessor for GCSAppSelectionView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_4C95C(v0 + v2, v3);
}

uint64_t sub_4F714@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*(v1 + 16));
  *a1 = result;
  return result;
}

unint64_t sub_4F744()
{
  result = qword_117AA8;
  if (!qword_117AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117AA8);
  }

  return result;
}

unint64_t sub_4F798()
{
  result = qword_117540;
  if (!qword_117540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_117540);
  }

  return result;
}

uint64_t sub_4F8C4(uint64_t a1, uint64_t a2)
{
  if (*(sub_54798() + 16))
  {
    sub_1ED4C(a1, a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_4F924(uint64_t a1, uint64_t a2)
{
  v4 = sub_54798();
  if (*(v4 + 16) && (v5 = sub_1ED4C(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 32 * v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_4F9A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_54798();
  if (*(v4 + 16) && (v5 = sub_1ED4C(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 32 * v5 + 16);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_4FA1C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_4FA4C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_4FA84()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_4FAB4(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_4FAF4(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_4FB28(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_4FB7C(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_4FBD0(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_4FC20(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
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

    v4 = sub_2AEB0();
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
          v15 = sub_D7FF8();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_D7FF8();
LABEL_26:
        v17 = v16;
        v18 = sub_D7EA8();

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
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
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
      v18 = sub_D7EA8();

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
    v5 = sub_D8078();
  }

  result = sub_D8078();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_4FE60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v4 = 1;
    }

    else
    {
      sub_55710();
      v3 = 0;
      do
      {
        v4 = sub_D7BA8();
        if ((v4 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_4FF40(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v25 = v2;
  v26 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v17 = *v5;
    v18[0] = v8;
    *(v18 + 11) = *(v5 + 27);
    v15 = v17;
    v16[0] = v8;
    *(v16 + 11) = *(v18 + 11);
    v9 = v6[1];
    v19 = *v6;
    v20[0] = v9;
    *(v20 + 11) = *(v6 + 27);
    v13 = v19;
    v14[0] = v9;
    *(v14 + 11) = *(v20 + 11);
    sub_1B040(&v17, v12);
    sub_1B040(&v19, v12);
    sub_556BC();
    v10 = sub_D7BA8();
    v21 = v13;
    v22[0] = v14[0];
    *(v22 + 11) = *(v14 + 11);
    sub_1B09C(&v21);
    v23 = v15;
    v24[0] = v16[0];
    *(v24 + 11) = *(v16 + 11);
    sub_1B09C(&v23);
    if ((v10 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 3;
    v5 += 3;
  }

  return 1;
}

void sub_5007C(uint64_t a1)
{
  sub_D7C78();
  sub_D7C78();
  sub_543E8(a1, v1[4]);
  sub_543E8(a1, v1[5]);
  v3 = v1[6];
  v4 = *(v3 + 16);
  sub_D8178(v4);
  if (v4)
  {
    sub_55048();
    v5 = (v3 + 64);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 5;
      __dst = v6;
      *v19 = v7;
      *&v19[16] = v8;
      sub_D7B88();
      --v4;
    }

    while (v4);
  }

  v9 = v1[7];
  v10 = *(v9 + 16);
  sub_D8178(v10);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      v12 = *v11;
      v13 = v11[1];
      *&v15[11] = *(v11 + 27);
      v14 = v12;
      *v15 = v13;
      memmove(&__dst, v11, 0x2BuLL);
      sub_1B040(&v14, &v16);
      sub_5509C();
      sub_D7B88();
      v16 = __dst;
      v17[0] = *v19;
      *(v17 + 11) = *&v19[11];
      sub_1B09C(&v16);
      v11 += 3;
      --v10;
    }

    while (v10);
  }
}

Swift::Int sub_501D0()
{
  sub_D8168();
  sub_5007C(v1);
  return sub_D8198();
}

uint64_t sub_50210@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

Swift::Int sub_50228()
{
  sub_D8168();
  sub_5007C(v1);
  return sub_D8198();
}

uint64_t sub_50264@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_50270(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_4FC1C(v7, v8) & 1;
}

id sub_502BC()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_502EC(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_50318@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2FBB0();

  return sub_31FEC(v2, a1);
}

uint64_t sub_50378(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_503CC(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_50420(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

void *sub_504CC()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t sub_50548(uint64_t a1)
{

  *(v1 + 128) = a1;
  return result;
}

__n128 sub_50594@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_2FBB0();
  v13[0] = *v2;
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[1];
  v14 = *(v2 + 8);
  v13[2] = v4;
  v13[3] = v3;
  v13[1] = v5;
  v6 = v2[3];
  v17 = v2[2];
  v18 = v6;
  v19 = *(v2 + 8);
  v7 = v2[1];
  v15 = *v2;
  v16 = v7;
  sub_31FEC(v13, v12);
  v8 = sub_54CE8(_swiftEmptyArrayStorage);
  *a1 = 0;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  v9 = v18;
  *(a1 + 48) = v17;
  *(a1 + 64) = v9;
  v10 = v19;
  result = v16;
  *(a1 + 16) = v15;
  *(a1 + 32) = result;
  *(a1 + 80) = v10;
  *(a1 + 88) = v8;
  *(a1 + 96) = _swiftEmptyArrayStorage;
  *(a1 + 104) = _swiftEmptyArrayStorage;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_50648@<X0>(unint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v449 = 0;
  *(&v449 + 1) = _swiftEmptyArrayStorage;
  v7 = sub_2FBB0();
  v459[0] = *v7;
  v9 = v7[2];
  v8 = v7[3];
  v10 = v7[1];
  v460 = *(v7 + 8);
  v459[2] = v9;
  v459[3] = v8;
  v459[1] = v10;
  memmove(&v450, v7, 0x48uLL);
  sub_31FEC(v459, &v430);
  sub_54CE8(_swiftEmptyArrayStorage);
  v457 = _swiftEmptyArrayStorage;
  v11 = type metadata accessor for GCSProfileParams();
  sub_30674(*(a1 + *(v11 + 72)), v458);
  sub_550F0(v458, &v450);
  if (a2)
  {
    v12 = a2;

    v13 = [v12 localizedProductCategory];
    v14 = sub_D7C18();
    v16 = v15;

    v17 = [v12 productCategoryKey];
    v18 = sub_D7C18();
    v406 = v19;

    v20 = [v12 allButtons];
    sub_2AEB0();
    sub_D7D28();

    v21 = sub_CF530();

    v22 = [v12 allDpads];
    sub_D7D28();

    sub_CFC70();
    v24 = v23;

    LOBYTE(v456) = [v12 supportsHaptics];
    BYTE1(v456) = [v12 supportsLight];
    *(&v456 + 1) = [v12 shareButton];
    sub_DC40(&qword_117048);
    v25 = swift_allocObject();
    v415 = v14;
    *&v430 = v14;
    *(&v430 + 1) = v16;
    *&v431 = v18;
    *(&v431 + 1) = v406;
    *&v432 = _swiftEmptyArrayStorage;
    *(&v432 + 1) = _swiftEmptyArrayStorage;
    *&v433 = v21;
    *(&v433 + 1) = v24;
    v26 = v430;
    v27 = v431;
    *(v25 + 16) = xmmword_DCB80;
    *(v25 + 32) = v26;
    v28 = v432;
    v29 = v433;
    *(v25 + 48) = v27;
    *(v25 + 64) = v28;
    *(v25 + 80) = v29;
    v457 = v25;
    *&v455 = v21;
    *(&v455 + 1) = v24;
    sub_35294(&v430, &v421);
    v30 = [v12 buttons];
    v31 = sub_D7B48();

    v32 = [v12 dpads];
    v33 = sub_D7B48();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v420[0] = v31;
    sub_5514C(v33, sub_5462C, 0, isUniquelyReferenced_nonNull_native, v420);

    v35 = *&v420[0];
    sub_28ACC(a1);

    *(&v454 + 1) = v35;
    *&v421 = v415;
    *(&v421 + 1) = v16;
    *&v422 = v18;
    *(&v422 + 1) = v406;
    *&v423 = _swiftEmptyArrayStorage;
    *(&v423 + 1) = _swiftEmptyArrayStorage;
    *&v424 = v21;
    *(&v424 + 1) = v24;
    sub_35304(&v421);
LABEL_252:
    v427 = v455;
    v428 = v456;
    v423 = v451;
    v424 = v452;
    v425 = v453;
    v426 = v454;
    v421 = v449;
    v422 = v450;
    v436 = v455;
    v437 = v456;
    v432 = v451;
    v433 = v452;
    v434 = v453;
    v435 = v454;
    v429 = v457;
    v438 = v457;
    v430 = v449;
    v431 = v450;
    sub_23CAC(&v421, v420);
    result = sub_23D08(&v430);
    v365 = v428;
    *(a4 + 96) = v427;
    *(a4 + 112) = v365;
    *(a4 + 128) = v429;
    v366 = v424;
    *(a4 + 32) = v423;
    *(a4 + 48) = v366;
    v367 = v426;
    *(a4 + 64) = v425;
    *(a4 + 80) = v367;
    v368 = v422;
    *a4 = v421;
    *(a4 + 16) = v368;
    return result;
  }

  v448 = sub_54CE8(_swiftEmptyArrayStorage);
  v447 = sub_54CE8(_swiftEmptyArrayStorage);
  v36 = sub_54DEC(_swiftEmptyArrayStorage);
  v446 = v36;
  v37 = a3;
  v385 = a3;
  if (a3 >> 62)
  {
    goto LABEL_284;
  }

  v38 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
LABEL_5:
  v392 = a1;
  if (!v38)
  {
    LOWORD(v456) = 0;
    *(&v456 + 1) = 0;
    *(&v378 + 1) = 0x80000000000E5900;
LABEL_193:
    *&v378 = 0xD000000000000014;

    goto LABEL_194;
  }

  v39 = 0;
  v386 = v37 & 0xC000000000000001;
  v376 = v37 & 0xFFFFFFFFFFFFFF8;
  v373 = (v37 + 32);
  v383 = v38;
  do
  {
    if (v386)
    {
      v45 = sub_D7FF8();
      v46 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_273;
      }
    }

    else
    {
      if (v39 >= *(v376 + 16))
      {
        goto LABEL_281;
      }

      v45 = *(v37 + 8 * v39 + 32);
      v46 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_273;
      }
    }

    v409 = v46;
    v47 = v45;
    v48 = [v45 productCategoryKey];
    a1 = sub_D7C18();
    v50 = v49;

    v51 = [v47 localizedProductCategory];
    v52 = sub_D7C18();
    v54 = v53;

    v416 = v47;
    v55 = [v47 productCategoryKey];
    v56 = sub_D7C18();
    v58 = v57;

    v59 = swift_isUniquelyReferenced_nonNull_native();
    *&v421 = v36;
    v446 = 0x8000000000000000;
    v60 = sub_1ED4C(a1, v50);
    v62 = *(v36 + 16);
    v63 = (v61 & 1) == 0;
    v64 = __OFADD__(v62, v63);
    v65 = v62 + v63;
    if (v64)
    {
      goto LABEL_274;
    }

    v66 = v61;
    if (*(v36 + 24) < v65)
    {
      sub_53614(v65, v59);
      v60 = sub_1ED4C(a1, v50);
      if ((v66 & 1) != (v67 & 1))
      {
        goto LABEL_287;
      }

LABEL_20:
      if (v66)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    if (v59)
    {
      goto LABEL_20;
    }

    v72 = v60;
    sub_53F64();
    v60 = v72;
    if (v66)
    {
LABEL_7:
      v40 = v60;

      v36 = v421;
      v41 = *(v421 + 56) + (v40 << 6);
      v43 = *(v41 + 32);
      v42 = *(v41 + 48);
      v44 = *(v41 + 16);
      v430 = *v41;
      v431 = v44;
      v432 = v43;
      v433 = v42;
      *v41 = v52;
      *(v41 + 8) = v54;
      *(v41 + 16) = v56;
      *(v41 + 24) = v58;
      *(v41 + 32) = _swiftEmptyArrayStorage;
      *(v41 + 40) = _swiftEmptyArrayStorage;
      *(v41 + 48) = _swiftEmptyArrayStorage;
      *(v41 + 56) = _swiftEmptyArrayStorage;
      sub_35304(&v430);

      goto LABEL_8;
    }

LABEL_21:
    v36 = v421;
    *(v421 + 8 * (v60 >> 6) + 64) |= 1 << v60;
    v68 = (*(v36 + 48) + 16 * v60);
    *v68 = a1;
    v68[1] = v50;
    v69 = (*(v36 + 56) + (v60 << 6));
    *v69 = v52;
    v69[1] = v54;
    v69[2] = v56;
    v69[3] = v58;
    v69[4] = _swiftEmptyArrayStorage;
    v69[5] = _swiftEmptyArrayStorage;
    v69[6] = _swiftEmptyArrayStorage;
    v69[7] = _swiftEmptyArrayStorage;

    v70 = *(v36 + 16);
    v64 = __OFADD__(v70, 1);
    v71 = v70 + 1;
    if (v64)
    {
      goto LABEL_280;
    }

    *(v36 + 16) = v71;
LABEL_8:
    v446 = v36;
    ++v39;
    v37 = v385;
  }

  while (v409 != v383);
  v381 = 0;
  v379 = 0;
  v375 = 0;
  v73 = 0;
  v417 = *(v36 + 16);
  do
  {
    if (v386)
    {
      v74 = v73;
      v75 = sub_D7FF8();
    }

    else
    {
      if (v73 >= *(v376 + 16))
      {
        goto LABEL_283;
      }

      v74 = v73;
      v75 = v373[v73];
    }

    a1 = v75;
    v64 = __OFADD__(v74, 1);
    v76 = v74 + 1;
    if (v64)
    {
      goto LABEL_282;
    }

    v377 = v76;
    if (v379)
    {
      v379 = 1;
      if ((v381 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v379 = [v75 supportsHaptics];
      if ((v381 & 1) == 0)
      {
LABEL_34:
        v77 = [a1 supportsLight];
        goto LABEL_37;
      }
    }

    v77 = 1;
LABEL_37:
    v78 = [a1 shareButton];
    v407 = a1;
    v381 = v77;
    if (v78)
    {
      if (v375)
      {
      }

      else
      {
        v375 = v78;
        if (v417 >= 2)
        {
          v79 = v78;
          v80 = [v78 name];
          v81 = sub_D7C18();
          v83 = v82;

          if (*(sub_54798() + 16) && (sub_1ED4C(v81, v83), (v84 & 1) != 0))
          {

            v85 = [v79 name];
            v86 = sub_D7C18();
            v88 = v87;

            if (*(sub_54798() + 16) && (sub_1ED4C(v86, v88), (v89 & 1) != 0))
            {

              v90 = [v79 name];
              if (!v90)
              {
                sub_D7C18();
                v90 = sub_D7BD8();
              }

              v91 = [v79 remappingKey];
              v92 = objc_allocWithZone(GCSElement);
              v93 = sub_D7BD8();

              v94 = sub_D7BD8();

              v375 = [v92 initWithName:v90 nameLocalizationKey:v93 sfSymbolsName:v94 remappingKey:v91 kind:1];
            }

            else
            {

              v375 = v79;
            }

            a1 = v407;
          }

          else
          {

            v375 = v79;
          }
        }
      }
    }

    v95 = [a1 allButtons];
    v36 = sub_2AEB0();
    v96 = sub_D7D28();

    if (v96 >> 62)
    {
      v97 = sub_D8078();
      if (!v97)
      {
        goto LABEL_120;
      }

LABEL_53:
      a1 = 0;
      v410 = v96 & 0xC000000000000001;
      v387 = v96 + 32;
      v389 = v96 & 0xFFFFFFFFFFFFFF8;
      v393 = v97;
      while (1)
      {
        while (1)
        {
          if (v410)
          {
            v98 = sub_D7FF8();
          }

          else
          {
            if (a1 >= *(v389 + 16))
            {
              goto LABEL_263;
            }

            v98 = *(v387 + 8 * a1);
          }

          v99 = v98;
          v64 = __OFADD__(a1++, 1);
          if (v64)
          {
            __break(1u);
LABEL_258:
            __break(1u);
LABEL_259:
            __break(1u);
LABEL_260:
            __break(1u);
LABEL_261:
            __break(1u);
LABEL_262:
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            __break(1u);
LABEL_265:
            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
LABEL_271:
            __break(1u);
LABEL_272:
            __break(1u);
LABEL_273:
            __break(1u);
LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
LABEL_276:
            __break(1u);
LABEL_277:
            __break(1u);
LABEL_278:
            __break(1u);
LABEL_279:
            __break(1u);
LABEL_280:
            __break(1u);
LABEL_281:
            __break(1u);
LABEL_282:
            __break(1u);
LABEL_283:
            __break(1u);
LABEL_284:
            v38 = sub_D8078();
            v37 = v385;
            goto LABEL_5;
          }

          v100 = [v98 name];
          v101 = sub_D7C18();
          v103 = v102;

          if (*(v448 + 16))
          {
            break;
          }

LABEL_64:
          v105 = [v99 name];
          v106 = sub_D7C18();
          v108 = v107;

          if (v417 >= 2)
          {
            if (!*(sub_54798() + 16))
            {
              goto LABEL_85;
            }

            sub_1ED4C(v106, v108);
            v110 = v109;

            if (v110)
            {
              v111 = [v99 name];
              v112 = sub_D7C18();
              v114 = v113;

              if (!*(sub_54798() + 16))
              {
                goto LABEL_85;
              }

              sub_1ED4C(v112, v114);
              v116 = v115;

              if (v116)
              {

                v117 = [v99 name];
                v118 = sub_D7C18();
                v120 = v119;

                if (*(sub_54798() + 16))
                {
                  sub_1ED4C(v118, v120);
                  v122 = v121;

                  if (v122)
                  {

                    v123 = [v99 name];
                    v124 = sub_D7C18();
                    v403 = v125;

                    v126 = [v99 name];
                    if (!v126)
                    {
                      sub_D7C18();
                      v126 = sub_D7BD8();
                    }

                    v127 = [v99 remappingKey];
                    v128 = objc_allocWithZone(GCSElement);
                    v129 = sub_D7BD8();

                    v130 = sub_D7BD8();

                    v131 = [v128 initWithName:v126 nameLocalizationKey:v129 sfSymbolsName:v130 remappingKey:v127 kind:1];

                    v36 = &v448;
                    sub_52B14(v131, v124, v403);

                    goto LABEL_116;
                  }

LABEL_85:
                }

                else
                {
                }
              }
            }

            v144 = [v407 productCategoryKey];
            v145 = sub_D7C18();
            v147 = v146;

            v148 = v446;
            if (*(v446 + 16))
            {
              v149 = sub_1ED4C(v145, v147);
              v151 = v150;

              if (v151)
              {
                v152 = (*(v148 + 56) + (v149 << 6));
                v154 = v152[2];
                v153 = v152[3];
                v155 = v152[1];
                v430 = *v152;
                v431 = v155;
                v432 = v154;
                v433 = v153;
                v157 = *(&v430 + 1);
                v156 = v430;
                v158 = *(&v155 + 1);
                v159 = v155;
                v160 = *(&v154 + 1);
                v161 = v154;
                v162 = *(&v153 + 1);
                v36 = v153;
                sub_35294(&v430, &v421);
                if (v157)
                {
                  v430 = __PAIR128__(v157, v156);
                  v431 = __PAIR128__(v158, v159);
                  v432 = __PAIR128__(v160, v161);
                  v433 = __PAIR128__(v162, v36);

                  sub_553E8(&v430);
                  if (v161 >> 62)
                  {
                    v399 = sub_D8078();
                  }

                  else
                  {
                    v399 = *(&dword_10 + (v161 & 0xFFFFFFFFFFFFFF8));
                  }

                  v163 = 0;
                  while (v399 != v163)
                  {
                    if ((v161 & 0xC000000000000001) != 0)
                    {
                      v165 = sub_D7FF8();
                    }

                    else
                    {
                      if (v163 >= *(&dword_10 + (v161 & 0xFFFFFFFFFFFFFF8)))
                      {
                        goto LABEL_260;
                      }

                      v165 = *(v161 + 8 * v163 + 32);
                    }

                    v166 = v165;
                    if (__OFADD__(v163, 1))
                    {
                      goto LABEL_259;
                    }

                    v167 = [v165 name];
                    v168 = sub_D7C18();
                    v170 = v169;

                    v171 = [v99 name];
                    v172 = sub_D7C18();
                    v36 = v173;

                    if (v168 == v172 && v170 == v36)
                    {

LABEL_111:

                      goto LABEL_116;
                    }

                    v164 = sub_D8118();

                    ++v163;
                    if (v164)
                    {

                      v36 = v161;
                      goto LABEL_111;
                    }
                  }

                  v174 = [v407 productCategoryKey];
                  v175 = sub_D7C18();
                  v177 = v176;

                  v36 = &v446;
                  v179 = sub_52C0C(&v421, v175, v177);
                  if (*(v178 + 8))
                  {
                    v180 = v178;
                    v181 = v99;
                    sub_D7D08();
                    if (*(&dword_10 + (*(v180 + 32) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v180 + 32) & 0xFFFFFFFFFFFFFF8)) >> 1)
                    {
                      sub_D7D48();
                    }

                    v36 = v180 + 32;
                    sub_D7D68();
                    (v179)(&v421, 0);
                  }

                  else
                  {
                    (v179)(&v421, 0);
                  }

                  goto LABEL_116;
                }

                goto LABEL_105;
              }
            }

            else
            {
            }

            v162 = 0;
            v36 = 0;
            v160 = 0;
            v161 = 0;
            v158 = 0;
            v159 = 0;
            v156 = 0;
LABEL_105:

            v430 = v156;
            *&v431 = v159;
            *(&v431 + 1) = v158;
            *&v432 = v161;
            *(&v432 + 1) = v160;
            *&v433 = v36;
            *(&v433 + 1) = v162;
            sub_553E8(&v430);
            goto LABEL_116;
          }

          v132 = v99;
          v36 = v448;
          v133 = swift_isUniquelyReferenced_nonNull_native();
          *&v430 = v36;
          v448 = 0x8000000000000000;
          v134 = sub_1ED4C(v106, v108);
          v136 = *(v36 + 16);
          v137 = (v135 & 1) == 0;
          v64 = __OFADD__(v136, v137);
          v138 = v136 + v137;
          if (v64)
          {
            goto LABEL_265;
          }

          v139 = v135;
          if (*(v36 + 24) >= v138)
          {
            if ((v133 & 1) == 0)
            {
              v36 = &v430;
              v182 = v134;
              sub_54104();
              v134 = v182;
              if ((v139 & 1) == 0)
              {
LABEL_114:
                v183 = v430;
                *(v430 + 8 * (v134 >> 6) + 64) |= 1 << v134;
                v184 = (v183[6] + 16 * v134);
                *v184 = v106;
                v184[1] = v108;
                *(v183[7] + 8 * v134) = v132;

                v185 = v183[2];
                v64 = __OFADD__(v185, 1);
                v186 = v185 + 1;
                if (v64)
                {
                  goto LABEL_271;
                }

                v183[2] = v186;
                v448 = v183;
                goto LABEL_116;
              }

              goto LABEL_80;
            }
          }

          else
          {
            sub_53958(v138, v133);
            v36 = v430;
            v134 = sub_1ED4C(v106, v108);
            if ((v139 & 1) != (v140 & 1))
            {
              goto LABEL_287;
            }
          }

          if ((v139 & 1) == 0)
          {
            goto LABEL_114;
          }

LABEL_80:
          v141 = v134;

          v36 = v430;
          v142 = *(v430 + 56);
          v143 = *(v142 + 8 * v141);
          *(v142 + 8 * v141) = v132;

          v448 = v36;
LABEL_116:
          v97 = v393;
          if (a1 == v393)
          {
            goto LABEL_120;
          }
        }

        sub_1ED4C(v101, v103);
        v36 = v104;

        if ((v36 & 1) == 0)
        {
          goto LABEL_64;
        }

        if (a1 == v97)
        {
          goto LABEL_120;
        }
      }
    }

    v97 = *(&dword_10 + (v96 & 0xFFFFFFFFFFFFFF8));
    if (v97)
    {
      goto LABEL_53;
    }

LABEL_120:

    v187 = [v407 allDpads];
    v188 = sub_D7D28();

    if (v188 >> 62)
    {
      v189 = sub_D8078();
      if (!v189)
      {
        goto LABEL_26;
      }

LABEL_122:
      a1 = 0;
      v411 = v188 & 0xC000000000000001;
      v394 = v188 & 0xFFFFFFFFFFFFFF8;
      v396 = v189;
      v390 = v188 + 32;
      while (1)
      {
        while (1)
        {
          if (v411)
          {
            v193 = sub_D7FF8();
          }

          else
          {
            if (a1 >= *(v394 + 16))
            {
              goto LABEL_264;
            }

            v193 = *(v390 + 8 * a1);
          }

          v194 = v193;
          v64 = __OFADD__(a1++, 1);
          if (v64)
          {
            goto LABEL_258;
          }

          v195 = [v193 name];
          v196 = sub_D7C18();
          v198 = v197;

          v36 = v447;
          if (*(v447 + 16))
          {
            break;
          }

LABEL_135:
          v201 = [v194 name];
          v202 = sub_D7C18();
          v204 = v203;

          if (v417 >= 2)
          {
            if (!*(sub_54798() + 16))
            {
              goto LABEL_157;
            }

            sub_1ED4C(v202, v204);
            v206 = v205;

            if (v206)
            {
              v207 = [v194 name];
              v208 = sub_D7C18();
              v210 = v209;

              if (!*(sub_54798() + 16))
              {
                goto LABEL_157;
              }

              sub_1ED4C(v208, v210);
              v212 = v211;

              if (v212)
              {

                v213 = [v194 name];
                v214 = sub_D7C18();
                v216 = v215;

                if (*(sub_54798() + 16))
                {
                  sub_1ED4C(v214, v216);
                  v218 = v217;

                  if (v218)
                  {

                    v219 = [v194 name];
                    v220 = sub_D7C18();
                    v400 = v221;
                    v404 = v220;

                    v222 = [v194 name];
                    if (!v222)
                    {
                      sub_D7C18();
                      v222 = sub_D7BD8();
                    }

                    v223 = [v194 remappingKey];
                    v224 = objc_allocWithZone(GCSElement);
                    v225 = sub_D7BD8();

                    v226 = sub_D7BD8();

                    v227 = [v224 initWithName:v222 nameLocalizationKey:v225 sfSymbolsName:v226 remappingKey:v223 kind:2];

                    v36 = &v447;
                    sub_52B14(v227, v404, v400);

                    goto LABEL_124;
                  }

LABEL_157:
                }

                else
                {
                }
              }
            }

            v241 = [v407 productCategoryKey];
            v242 = sub_D7C18();
            v244 = v243;

            v245 = v446;
            if (*(v446 + 16))
            {
              v246 = sub_1ED4C(v242, v244);
              v248 = v247;

              if (v248)
              {
                v249 = (*(v245 + 56) + (v246 << 6));
                v251 = v249[2];
                v250 = v249[3];
                v252 = v249[1];
                v430 = *v249;
                v431 = v252;
                v432 = v251;
                v433 = v250;
                v254 = *(&v430 + 1);
                v253 = v430;
                v255 = *(&v252 + 1);
                v256 = v252;
                v36 = *(&v251 + 1);
                v257 = v251;
                v258 = *(&v250 + 1);
                v259 = v250;
                sub_35294(&v430, &v421);
                if (v254)
                {
                  v430 = __PAIR128__(v254, v253);
                  v431 = __PAIR128__(v255, v256);
                  v432 = __PAIR128__(v36, v257);
                  v433 = __PAIR128__(v258, v259);

                  sub_553E8(&v430);
                  if (v36 >> 62)
                  {
                    v401 = sub_D8078();
                  }

                  else
                  {
                    v401 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
                  }

                  v260 = 0;
                  while (v401 != v260)
                  {
                    if ((v36 & 0xC000000000000001) != 0)
                    {
                      v262 = sub_D7FF8();
                    }

                    else
                    {
                      if (v260 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
                      {
                        goto LABEL_262;
                      }

                      v262 = *(v36 + 8 * v260 + 32);
                    }

                    v263 = v262;
                    if (__OFADD__(v260, 1))
                    {
                      goto LABEL_261;
                    }

                    v264 = [v262 name];
                    v265 = sub_D7C18();
                    v267 = v266;

                    v268 = [v194 name];
                    v269 = sub_D7C18();
                    v271 = v270;

                    if (v265 == v269 && v267 == v271)
                    {

LABEL_183:

                      goto LABEL_124;
                    }

                    v261 = sub_D8118();

                    ++v260;
                    if (v261)
                    {

                      goto LABEL_183;
                    }
                  }

                  v272 = [v407 productCategoryKey];
                  v273 = sub_D7C18();
                  v275 = v274;

                  v36 = &v446;
                  v277 = sub_52C0C(&v421, v273, v275);
                  if (*(v276 + 8))
                  {
                    v278 = v276;
                    v279 = v194;
                    sub_D7D08();
                    if (*(&dword_10 + (*(v278 + 40) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v278 + 40) & 0xFFFFFFFFFFFFFF8)) >> 1)
                    {
                      sub_D7D48();
                    }

                    v36 = v278 + 40;
                    sub_D7D68();
                    (v277)(&v421, 0);
                  }

                  else
                  {
                    (v277)(&v421, 0);
                  }

                  goto LABEL_124;
                }

                goto LABEL_177;
              }
            }

            else
            {
            }

            v258 = 0;
            v259 = 0;
            v36 = 0;
            v257 = 0;
            v255 = 0;
            v256 = 0;
            v253 = 0;
LABEL_177:

            v430 = v253;
            *&v431 = v256;
            *(&v431 + 1) = v255;
            *&v432 = v257;
            *(&v432 + 1) = v36;
            *&v433 = v259;
            *(&v433 + 1) = v258;
            sub_553E8(&v430);
            goto LABEL_124;
          }

          v228 = v194;
          v36 = v447;
          v229 = swift_isUniquelyReferenced_nonNull_native();
          *&v430 = v36;
          v447 = 0x8000000000000000;
          v230 = sub_1ED4C(v202, v204);
          v232 = *(v36 + 16);
          v233 = (v231 & 1) == 0;
          v64 = __OFADD__(v232, v233);
          v234 = v232 + v233;
          if (v64)
          {
            goto LABEL_266;
          }

          v235 = v231;
          if (*(v36 + 24) < v234)
          {
            sub_53958(v234, v229);
            v36 = v430;
            v230 = sub_1ED4C(v202, v204);
            if ((v235 & 1) != (v236 & 1))
            {
              goto LABEL_287;
            }

LABEL_150:
            if (v235)
            {
              goto LABEL_123;
            }

            goto LABEL_151;
          }

          if (v229)
          {
            goto LABEL_150;
          }

          v36 = &v430;
          v280 = v230;
          sub_54104();
          v230 = v280;
          if (v235)
          {
LABEL_123:
            v190 = v230;

            v36 = v430;
            v191 = *(v430 + 56);
            v192 = *(v191 + 8 * v190);
            *(v191 + 8 * v190) = v228;

            v447 = v36;
            goto LABEL_124;
          }

LABEL_151:
          v237 = v430;
          *(v430 + 8 * (v230 >> 6) + 64) |= 1 << v230;
          v238 = (v237[6] + 16 * v230);
          *v238 = v202;
          v238[1] = v204;
          *(v237[7] + 8 * v230) = v228;

          v239 = v237[2];
          v64 = __OFADD__(v239, 1);
          v240 = v239 + 1;
          if (v64)
          {
            goto LABEL_272;
          }

          v237[2] = v240;
          v447 = v237;
LABEL_124:
          v189 = v396;
          if (a1 == v396)
          {
            goto LABEL_26;
          }
        }

        sub_1ED4C(v196, v198);
        v200 = v199;

        if ((v200 & 1) == 0)
        {
          goto LABEL_135;
        }

        if (a1 == v189)
        {
          goto LABEL_26;
        }
      }
    }

    v189 = *(&dword_10 + (v188 & 0xFFFFFFFFFFFFFF8));
    if (v189)
    {
      goto LABEL_122;
    }

LABEL_26:

    v73 = v377;
    a1 = v392;
  }

  while (v377 != v383);
  LOBYTE(v456) = v379;
  BYTE1(v456) = v381;
  *(&v456 + 1) = v375;
  if (v417 > 1)
  {
    *(&v378 + 1) = 0x80000000000E5900;
    goto LABEL_193;
  }

  if (v386)
  {
    v369 = sub_D7FF8();
    goto LABEL_256;
  }

  if (*(v376 + 16))
  {
    v369 = *v373;
LABEL_256:
    v370 = v369;

    v371 = [v370 productCategoryKey];

    *&v378 = sub_D7C18();
    *(&v378 + 1) = v372;

LABEL_194:
    v281 = v448;

    sub_52CE0(v282);
    v283 = sub_CF530();

    v284 = v447;

    sub_52CE0(v285);
    sub_CFC70();
    v287 = v286;

    v288 = swift_isUniquelyReferenced_nonNull_native();
    v445 = v281;
    sub_5514C(v284, sub_5462C, 0, v288, &v445);

    v289 = v445;
    *&v430 = 0x636972656E6547;
    *(&v430 + 1) = 0xE700000000000000;
    v431 = v378;
    *&v432 = _swiftEmptyArrayStorage;
    *(&v432 + 1) = _swiftEmptyArrayStorage;
    *&v433 = v283;
    *(&v433 + 1) = v287;
    sub_35294(&v430, &v421);
    v457 = _swiftEmptyArrayStorage;

    v457 = sub_35358(0, 1, 1, _swiftEmptyArrayStorage);
    v291 = *(v457 + 2);
    v290 = *(v457 + 3);
    v398 = v457;
    if (v291 >= v290 >> 1)
    {
      v398 = sub_35358((v290 > 1), v291 + 1, 1, v457);
    }

    *(v398 + 2) = v291 + 1;
    v292 = &v398[64 * v291];
    v293 = v430;
    v294 = v431;
    v295 = v433;
    *(v292 + 4) = v432;
    *(v292 + 5) = v295;
    *(v292 + 2) = v293;
    *(v292 + 3) = v294;
    v457 = v398;
    *&v455 = v283;
    *(&v455 + 1) = v287;
    v296 = v446 + 64;
    v297 = 1 << *(v446 + 32);
    v298 = -1;
    if (v297 < 64)
    {
      v298 = ~(-1 << v297);
    }

    v299 = v298 & *(v446 + 64);
    v36 = (v297 + 63) >> 6;
    v388 = v446;

    v300 = 0;
    v384 = v287;
    v385 = v283;
    v380 = v36;
    v382 = v296;
LABEL_200:
    if (v299)
    {
      goto LABEL_205;
    }

    while (1)
    {
      v301 = v300 + 1;
      if (__OFADD__(v300, 1))
      {
        goto LABEL_277;
      }

      if (v301 >= v36)
      {
        break;
      }

      v299 = *(v296 + 8 * v301);
      ++v300;
      if (v299)
      {
        v300 = v301;
LABEL_205:
        v395 = v300;
        v397 = v299;
        v302 = (*(v388 + 56) + ((v300 << 12) | (__clz(__rbit64(v299)) << 6)));
        v303 = v302[1];
        v305 = v302[2];
        v304 = v302[3];
        v420[0] = *v302;
        v420[1] = v303;
        v420[2] = v305;
        v420[3] = v304;
        v306 = v302[1];
        v442 = *v302;
        v443 = v306;
        v444 = v302[2];
        sub_35294(v420, &v421);

        v307 = sub_CF530();

        sub_CFC70();
        v309 = v308;

        v422 = v443;
        v423 = v444;
        v421 = v442;
        *&v424 = v307;
        *(&v424 + 1) = v309;
        v310 = *(&v444 + 1);
        v311 = v444;
        sub_35294(&v421, v439);
        v457 = v398;
        v312 = *(v398 + 2);
        v313 = *(v398 + 3);
        v402 = v307;

        v414 = v310;

        if (v312 >= v313 >> 1)
        {
          v398 = sub_35358((v313 > 1), v312 + 1, 1, v398);
        }

        *(v398 + 2) = v312 + 1;
        v314 = &v398[64 * v312];
        v315 = v421;
        v316 = v422;
        v317 = v424;
        *(v314 + 4) = v423;
        *(v314 + 5) = v317;
        *(v314 + 2) = v315;
        *(v314 + 3) = v316;
        v457 = v398;
        sub_52D70(v307);
        v36 = &v455 + 8;
        v391 = v309;
        sub_52E68(v309);
        a1 = v392;
        if (v311 >> 62)
        {
          v318 = sub_D8078();
          if (!v318)
          {
            goto LABEL_229;
          }

LABEL_209:
          v319 = 0;
          v408 = v311;
          v412 = v311 & 0xC000000000000001;
          v405 = (v311 & 0xFFFFFFFFFFFFFF8);
          while (2)
          {
            if (v412)
            {
              v321 = sub_D7FF8();
            }

            else
            {
              if (v319 >= v405[2])
              {
                goto LABEL_278;
              }

              v321 = *(v311 + 8 * v319 + 32);
            }

            v322 = v321;
            if (__OFADD__(v319, 1))
            {
              goto LABEL_267;
            }

            v418 = v319 + 1;
            v323 = [v321 name];
            v324 = sub_D7C18();
            v326 = v325;

            v327 = v322;
            v328 = swift_isUniquelyReferenced_nonNull_native();
            *&v439[0] = v289;
            v36 = v289;
            v330 = sub_1ED4C(v324, v326);
            v331 = v289[2];
            v332 = (v329 & 1) == 0;
            v333 = v331 + v332;
            if (__OFADD__(v331, v332))
            {
              goto LABEL_268;
            }

            a1 = v329;
            if (v289[3] >= v333)
            {
              if (v328)
              {
                if ((v329 & 1) == 0)
                {
                  goto LABEL_224;
                }
              }

              else
              {
                v36 = v439;
                sub_54104();
                if ((a1 & 1) == 0)
                {
                  goto LABEL_224;
                }
              }
            }

            else
            {
              sub_53958(v333, v328);
              v36 = *&v439[0];
              v334 = sub_1ED4C(v324, v326);
              if ((a1 & 1) != (v335 & 1))
              {
                goto LABEL_287;
              }

              v330 = v334;
              if ((a1 & 1) == 0)
              {
LABEL_224:
                v289 = *&v439[0];
                *(*&v439[0] + 8 * (v330 >> 6) + 64) |= 1 << v330;
                v336 = (v289[6] + 16 * v330);
                *v336 = v324;
                v336[1] = v326;
                *(v289[7] + 8 * v330) = v327;

                v337 = v289[2];
                v64 = __OFADD__(v337, 1);
                v338 = v337 + 1;
                if (v64)
                {
                  goto LABEL_275;
                }

                v289[2] = v338;
                goto LABEL_211;
              }
            }

            v289 = *&v439[0];
            v320 = *(*&v439[0] + 56);
            v36 = *(v320 + 8 * v330);
            *(v320 + 8 * v330) = v327;

LABEL_211:
            ++v319;
            a1 = v392;
            v311 = v408;
            if (v418 == v318)
            {
              goto LABEL_229;
            }

            continue;
          }
        }

        v318 = *(&dword_10 + (v311 & 0xFFFFFFFFFFFFFF8));
        if (v318)
        {
          goto LABEL_209;
        }

LABEL_229:

        v339 = v414;
        if (v414 >> 62)
        {
          v363 = sub_D8078();
          v339 = v414;
          v340 = v363;
          if (!v363)
          {
            goto LABEL_199;
          }

LABEL_231:
          v341 = 0;
          v419 = v339 & 0xC000000000000001;
          v413 = v339 & 0xFFFFFFFFFFFFFF8;
          while (2)
          {
            if (v419)
            {
              v344 = sub_D7FF8();
            }

            else
            {
              if (v341 >= *(v413 + 16))
              {
                goto LABEL_279;
              }

              v344 = *(v339 + 8 * v341 + 32);
            }

            v345 = v344;
            v346 = v341 + 1;
            if (__OFADD__(v341, 1))
            {
              goto LABEL_269;
            }

            v347 = [v344 name];
            v348 = sub_D7C18();
            v350 = v349;

            v351 = v345;
            a1 = swift_isUniquelyReferenced_nonNull_native();
            *&v439[0] = v289;
            v36 = v289;
            v352 = sub_1ED4C(v348, v350);
            v354 = v289[2];
            v355 = (v353 & 1) == 0;
            v64 = __OFADD__(v354, v355);
            v356 = v354 + v355;
            if (v64)
            {
              goto LABEL_270;
            }

            v357 = v353;
            if (v289[3] >= v356)
            {
              if (a1)
              {
                goto LABEL_244;
              }

              v36 = v439;
              v362 = v352;
              sub_54104();
              v352 = v362;
              a1 = v392;
              if (v357)
              {
                goto LABEL_232;
              }

LABEL_245:
              v289 = *&v439[0];
              *(*&v439[0] + 8 * (v352 >> 6) + 64) |= 1 << v352;
              v359 = (v289[6] + 16 * v352);
              *v359 = v348;
              v359[1] = v350;
              *(v289[7] + 8 * v352) = v351;

              v360 = v289[2];
              v64 = __OFADD__(v360, 1);
              v361 = v360 + 1;
              if (v64)
              {
                goto LABEL_276;
              }

              v289[2] = v361;
            }

            else
            {
              sub_53958(v356, a1);
              v36 = *&v439[0];
              v352 = sub_1ED4C(v348, v350);
              if ((v357 & 1) != (v358 & 1))
              {
                goto LABEL_287;
              }

LABEL_244:
              a1 = v392;
              if ((v357 & 1) == 0)
              {
                goto LABEL_245;
              }

LABEL_232:
              v342 = v352;

              v289 = *&v439[0];
              v343 = *(*&v439[0] + 56);
              v36 = *(v343 + 8 * v342);
              *(v343 + 8 * v342) = v351;
            }

            ++v341;
            v339 = v414;
            if (v346 == v340)
            {
              goto LABEL_199;
            }

            continue;
          }
        }

        v340 = *(&dword_10 + (v414 & 0xFFFFFFFFFFFFFF8));
        if (v340)
        {
          goto LABEL_231;
        }

LABEL_199:
        v299 = (v397 - 1) & v397;

        v439[0] = v442;
        v439[1] = v443;
        v439[2] = v444;
        v440 = v402;
        v441 = v391;
        sub_35304(v439);
        v287 = v384;
        v283 = v385;
        v36 = v380;
        v296 = v382;
        v300 = v395;
        goto LABEL_200;
      }
    }

    sub_28ACC(a1);

    *(&v454 + 1) = v289;
    *&v421 = 0x636972656E6547;
    *(&v421 + 1) = 0xE700000000000000;
    v422 = v378;
    *&v423 = _swiftEmptyArrayStorage;
    *(&v423 + 1) = _swiftEmptyArrayStorage;
    *&v424 = v283;
    *(&v424 + 1) = v287;
    sub_35304(&v421);

    goto LABEL_252;
  }

  __break(1u);
LABEL_287:
  sub_D8138();
  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}