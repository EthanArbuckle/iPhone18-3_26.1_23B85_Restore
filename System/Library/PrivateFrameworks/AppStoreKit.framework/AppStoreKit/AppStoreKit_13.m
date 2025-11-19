uint64_t sub_1E1455068(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E14550B0()
{
  result = qword_1ECEB4088;
  if (!qword_1ECEB4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4088);
  }

  return result;
}

unint64_t sub_1E145517C()
{
  result = qword_1ECEB4090;
  if (!qword_1ECEB4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4090);
  }

  return result;
}

void sub_1E14552F0()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

AppStoreKit::PrivacyCategoryStyle_optional __swiftcall PrivacyCategoryStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PrivacyCategoryStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x61506C6961746564;
  }

  else
  {
    return 0x50746375646F7270;
  }
}

uint64_t sub_1E1455624(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x61506C6961746564;
  }

  else
  {
    v3 = 0x50746375646F7270;
  }

  if (v2)
  {
    v4 = 0xEB00000000656761;
  }

  else
  {
    v4 = 0xEA00000000006567;
  }

  if (*a2)
  {
    v5 = 0x61506C6961746564;
  }

  else
  {
    v5 = 0x50746375646F7270;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006567;
  }

  else
  {
    v6 = 0xEB00000000656761;
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

uint64_t sub_1E14556D8@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1E1455738(uint64_t *a1@<X8>)
{
  v2 = 0x50746375646F7270;
  if (*v1)
  {
    v2 = 0x61506C6961746564;
  }

  v3 = 0xEB00000000656761;
  if (*v1)
  {
    v3 = 0xEA00000000006567;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1E1455784()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1455814()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1455890()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t PrivacyCategory.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrivacyCategory.__allocating_init(id:title:artwork:style:dataTypes:prefersSmallArtwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, char a7)
{
  v28 = a2;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  LODWORD(a5) = *a5;
  sub_1E138853C(a1, &v31);
  if (*(&v32 + 1))
  {
    v18 = v32;
    *(v16 + 64) = v31;
    *(v16 + 80) = v18;
    *(v16 + 96) = v33;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    HIDWORD(v26) = a5;
    a5 = v19;
    v27 = a3;
    v20 = a4;
    v21 = a6;
    v22 = a7;
    v24 = v23;
    (*(v13 + 8))(v15, v12);
    v29 = a5;
    v30 = v24;
    LOBYTE(a5) = BYTE4(v26);
    a7 = v22;
    a6 = v21;
    a4 = v20;
    a3 = v27;
    sub_1E1AF6F6C();
    sub_1E1308058(&v31, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  *(v16 + 16) = v28;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a6;
  *(v16 + 56) = a7 & 1;
  return v16;
}

uint64_t PrivacyCategory.init(id:title:artwork:style:dataTypes:prefersSmallArtwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, char a7)
{
  v8 = v7;
  v29 = a2;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a5) = *a5;
  sub_1E138853C(a1, &v32);
  if (*(&v33 + 1))
  {
    v35 = v32;
    v36 = v33;
    v37 = v34;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    HIDWORD(v27) = a5;
    a5 = v19;
    v28 = a3;
    v20 = a4;
    v21 = a6;
    v22 = a7;
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v30 = a5;
    v31 = v24;
    LOBYTE(a5) = BYTE4(v27);
    a7 = v22;
    a6 = v21;
    a4 = v20;
    a3 = v28;
    sub_1E1AF6F6C();
    sub_1E1308058(&v32, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v25 = v36;
  *(v8 + 64) = v35;
  *(v8 + 80) = v25;
  *(v8 + 96) = v37;
  *(v8 + 16) = v29;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7 & 1;
  return v8;
}

uint64_t PrivacyCategory.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v95 = a2;
  v84 = sub_1E1AEFEAC();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v78[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v86 = &v78[-v5];
  v88 = sub_1E1AF5A6C();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v81 = &v78[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1E1AF39DC();
  v99 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v78[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v78[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v78[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v78[-v18];
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v78[-v22];
  v24 = a1;
  sub_1E1AF381C();
  v89 = sub_1E1AF37CC();
  v26 = v25;
  v27 = *(v11 + 8);
  v97 = v10;
  v98 = v27;
  v105[7] = v11 + 8;
  v27(v23, v10);
  v94 = v7;
  if (!v26)
  {
    v40 = sub_1E1AF5A7C();
    sub_1E1456E64(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v41 = 0x656C746974;
    v42 = v96;
    v41[1] = 0xE500000000000000;
    v41[2] = v42;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x1E69AB690], v40);
    swift_willThrow();
    v28 = v24;
    v31 = v95;
LABEL_9:
    v39 = v99;
    v35 = v97;
LABEL_10:
    v38 = v98;
LABEL_11:
    (*(v39 + 8))(v31, v94);
    v38(v28, v35);
    return v9;
  }

  v92 = v26;
  type metadata accessor for Artwork();
  v28 = v24;
  sub_1E1AF381C();
  v29 = v95;
  (*(v99 + 16))(v9, v95, v7);
  sub_1E1456E64(&qword_1EE1E4BB8, 255, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v30 = v105[0];
  v31 = v29;
  if (!v105[0])
  {

    v43 = sub_1E1AF5A7C();
    sub_1E1456E64(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v44 = 0x6B726F77747261;
    v45 = v96;
    v44[1] = 0xE700000000000000;
    v44[2] = v45;
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x1E69AB690], v43);
    swift_willThrow();
    goto LABEL_9;
  }

  v9 = 0x656C797473;
  sub_1E1AF381C();
  sub_1E1AF37CC();
  v33 = v32;
  v34 = v19;
  v35 = v97;
  v98(v34, v97);
  v36 = v96;
  if (!v33)
  {

    v47 = sub_1E1AF5A7C();
    sub_1E1456E64(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v48 = 0x656C797473;
    v48[1] = 0xE500000000000000;
    v48[2] = v36;
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x1E69AB690], v47);
    swift_willThrow();

    v39 = v99;
    goto LABEL_10;
  }

  v37 = sub_1E1AF72FC();

  if (!v37)
  {
    v79 = 0;
    v38 = v98;
    v39 = v99;
    goto LABEL_15;
  }

  v38 = v98;
  v39 = v99;
  if (v37 != 1)
  {

    v64 = sub_1E1AF5A7C();
    sub_1E1456E64(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v65 = MEMORY[0x1E69E7CC0];
    *v66 = 0x656C797473;
    v66[1] = 0xE500000000000000;
    v66[2] = v96;
    v66[3] = v65;
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x1E69AB6A0], v64);
    swift_willThrow();

    v35 = v97;
    goto LABEL_11;
  }

  v79 = 1;
LABEL_15:
  v49 = v97;
  v50 = v85;
  v51 = v28;
  sub_1E1AF381C();
  v52 = v86;
  sub_1E1AF374C();
  v38(v50, v49);
  v53 = v87;
  v54 = v88;
  v55 = (*(v87 + 48))(v52, 1, v88);
  v80 = v30;
  if (v55 == 1)
  {
    sub_1E1308058(v52, &qword_1ECEB1F90);
    v99 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v56 = v81;
    (*(v53 + 32))(v81, v52, v54);
    v57 = v93;
    v99 = sub_1E1AF59FC();
    v93 = v57;
    (*(v53 + 8))(v56, v54);
  }

  v58 = v91;
  v59 = v90;
  sub_1E1AF381C();
  LODWORD(v91) = sub_1E1AF370C();
  v60 = v98;
  v98(v59, v49);
  sub_1E1AF381C();
  v61 = sub_1E1AF37CC();
  if (v62)
  {
    *&v102 = v61;
    *(&v102 + 1) = v62;
    sub_1E1AF6F6C();
    v63 = v58;
  }

  else
  {
    v67 = v82;
    sub_1E1AEFE9C();
    v68 = v58;
    v69 = sub_1E1AEFE7C();
    v71 = v70;
    (*(v83 + 8))(v67, v84);
    *&v102 = v69;
    *(&v102 + 1) = v71;
    sub_1E1AF6F6C();
    v63 = v68;
  }

  v60(v63, v49);
  v9 = swift_allocObject();
  sub_1E138853C(v105, &v102);
  if (*(&v103 + 1))
  {
    v72 = v103;
    *(v9 + 64) = v102;
    *(v9 + 80) = v72;
    *(v9 + 96) = v104;
  }

  else
  {
    v73 = v82;
    sub_1E1AEFE9C();
    v74 = sub_1E1AEFE7C();
    v76 = v75;
    (*(v83 + 8))(v73, v84);
    v100 = v74;
    v101 = v76;
    v49 = v97;
    sub_1E1AF6F6C();
    sub_1E1308058(&v102, &unk_1ECEB5670);
  }

  (*(v39 + 8))(v95, v94);
  v60(v51, v49);
  sub_1E1308058(v105, &unk_1ECEB5670);
  v77 = v92;
  *(v9 + 16) = v89;
  *(v9 + 24) = v77;
  *(v9 + 32) = v80;
  *(v9 + 40) = v79;
  *(v9 + 48) = v99;
  *(v9 + 56) = v91 & 1;
  return v9;
}

uint64_t PrivacyCategory.hash(into:)()
{
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_1E1AF5F0C();
  sub_1E1448710();
  sub_1E1AF5F0C();

  v1 = *(v0 + 48);
  MEMORY[0x1E6900360](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_1E1AF5F0C();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return sub_1E1AF764C();
}

uint64_t PrivacyCategory.deinit()
{

  sub_1E134B88C(v0 + 64);
  return v0;
}

uint64_t PrivacyCategory.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t PrivacyCategory.hashValue.getter()
{
  sub_1E1AF762C();
  PrivacyCategory.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E1456B3C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyCategory.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1456B68()
{
  sub_1E1AF762C();
  PrivacyCategory.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E1456BD0()
{
  sub_1E1AF762C();
  PrivacyCategory.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t _s11AppStoreKit15PrivacyCategoryC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1E68FFC60](a1 + 64, a2 + 64) & 1) == 0)
  {
    goto LABEL_29;
  }

  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1E1AF74AC() & 1) == 0 || (_s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_29;
  }

  if (*(a1 + 40))
  {
    v5 = 0x61506C6961746564;
  }

  else
  {
    v5 = 0x50746375646F7270;
  }

  if (*(a1 + 40))
  {
    v6 = 0xEA00000000006567;
  }

  else
  {
    v6 = 0xEB00000000656761;
  }

  if (*(a2 + 40))
  {
    v7 = 0x61506C6961746564;
  }

  else
  {
    v7 = 0x50746375646F7270;
  }

  if (*(a2 + 40))
  {
    v8 = 0xEA00000000006567;
  }

  else
  {
    v8 = 0xEB00000000656761;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_1E1AF74AC();

    if ((v10 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if ((sub_1E156ED5C(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
LABEL_29:
    v11 = 0;
    return v11 & 1;
  }

  v11 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  return v11 & 1;
}

unint64_t sub_1E1456D5C()
{
  result = qword_1ECEB40A0;
  if (!qword_1ECEB40A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB40A0);
  }

  return result;
}

uint64_t sub_1E1456E64(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1456F10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x65526D6574737973;
  if (a1 <= 3u)
  {
    v4 = 0x6C426D6574737973;
    v5 = 0xEA00000000006575;
    if (a1 != 2)
    {
      v4 = 0x724F6D6574737973;
      v5 = 0xEC00000065676E61;
    }

    v8 = 0x72476D6574737973;
    v9 = 0xEB000000006E6565;
    if (!a1)
    {
      v8 = 0x65526D6574737973;
      v9 = 0xE900000000000064;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0x75506D6574737973;
    v5 = 0xEC000000656C7072;
    v6 = 0x72476D6574737973;
    v7 = 0xEA00000000007961;
    if (a1 != 7)
    {
      v6 = 0x72426D6574737973;
      v7 = 0xEB000000006E776FLL;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x65596D6574737973;
    v9 = 0xEC000000776F6C6CLL;
    if (a1 != 4)
    {
      v8 = 0x69506D6574737973;
      v9 = 0xEA00000000006B6ELL;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0xEB000000006E6565;
        if (v11 != 0x72476D6574737973)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if (a2 == 2)
    {
      v13 = 0x6C426D6574737973;
      v14 = 25973;
LABEL_31:
      v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v11 != v13)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v15 = 0x724F6D6574737973;
    v16 = 1701277281;
LABEL_37:
    v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v11 != v15)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v2 = 0xEA00000000006B6ELL;
      if (v11 != 0x69506D6574737973)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v15 = 0x65596D6574737973;
    v16 = 2003790956;
    goto LABEL_37;
  }

  if (a2 == 6)
  {
    v15 = 0x75506D6574737973;
    v16 = 1701605490;
    goto LABEL_37;
  }

  if (a2 == 7)
  {
    v13 = 0x72476D6574737973;
    v14 = 31073;
    goto LABEL_31;
  }

  v3 = 0x72426D6574737973;
  v2 = 0xEB000000006E776FLL;
LABEL_40:
  if (v11 != v3)
  {
LABEL_44:
    v17 = sub_1E1AF74AC();
    goto LABEL_45;
  }

LABEL_41:
  if (v12 != v2)
  {
    goto LABEL_44;
  }

  v17 = 1;
LABEL_45:

  return v17 & 1;
}

uint64_t sub_1E1457204(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1802658148;
    }

    else
    {
      v5 = 0x746867696CLL;
    }

    if (v4 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6574696877;
    }

    else
    {
      v5 = 0x6974616D6F747561;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000063;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1802658148;
  if (a2 != 2)
  {
    v8 = 0x746867696CLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x6574696877;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E1457324(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7265746E6563;
    }

    else
    {
      v3 = 1952867692;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7468676972;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x656966697473756ALL;
    }

    else
    {
      v3 = 0x657A696C61636F6CLL;
    }

    v4 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x7265746E6563;
    }

    else
    {
      v8 = 1952867692;
    }

    if (a2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0x656966697473756ALL;
    if (a2 != 3)
    {
      v5 = 0x657A696C61636F6CLL;
    }

    if (a2 == 2)
    {
      v6 = 0x7468676972;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE900000000000064;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v7)
  {
LABEL_34:
    v9 = sub_1E1AF74AC();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_1E14574A0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 2u)
  {
    v2 = 0xE800000000000000;
    v3 = 0xE700000000000000;
    v6 = 0x656C6369747261;
    if (a1 != 1)
    {
      v6 = 0x6E6F6974706163;
      v3 = 0xE700000000000000;
    }

    v4 = a1 == 0;
    if (a1)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0x647261646E617473;
    }
  }

  else if (a1 > 4u)
  {
    v2 = 0x80000001E1B56E10;
    v3 = 0x80000001E1B58C10;
    v4 = a1 == 5;
    if (a1 == 5)
    {
      v5 = 0xD00000000000001BLL;
    }

    else
    {
      v5 = 0xD000000000000011;
    }
  }

  else
  {
    v2 = 0x80000001E1B58BF0;
    v3 = 0x80000001E1B58AE0;
    v4 = a1 == 3;
    if (a1 == 3)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD000000000000012;
    }
  }

  if (v4)
  {
    v7 = v2;
  }

  else
  {
    v7 = v3;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v12 = 0xE700000000000000;
      if (a2 == 1)
      {
        if (v5 != 0x656C6369747261)
        {
          goto LABEL_38;
        }
      }

      else if (v5 != 0x6E6F6974706163)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v5 != 0x647261646E617473)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    if (a2 > 4u)
    {
      v8 = 0x80000001E1B56E10;
      v9 = 0x80000001E1B58C10;
      v10 = a2 == 5;
      if (a2 == 5)
      {
        v11 = 0xD00000000000001BLL;
      }

      else
      {
        v11 = 0xD000000000000011;
      }
    }

    else
    {
      v8 = 0x80000001E1B58BF0;
      v9 = 0x80000001E1B58AE0;
      v10 = a2 == 3;
      if (a2 == 3)
      {
        v11 = 0xD000000000000010;
      }

      else
      {
        v11 = 0xD000000000000012;
      }
    }

    if (v10)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    if (v5 != v11)
    {
      goto LABEL_38;
    }
  }

  if (v7 != v12)
  {
LABEL_38:
    v13 = sub_1E1AF74AC();
    goto LABEL_39;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_1E145769C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368801;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656461637261;
    }

    else
    {
      v4 = 0x7041656461637261;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE900000000000070;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7275507070416E69;
    }

    else
    {
      v4 = 7368801;
    }

    if (v3)
    {
      v5 = 0xED00006573616863;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x656461637261;
  if (a2 != 2)
  {
    v8 = 0x7041656461637261;
    v7 = 0xE900000000000070;
  }

  if (a2)
  {
    v2 = 0x7275507070416E69;
    v6 = 0xED00006573616863;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E14577F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746567;
  v3 = 0xD000000000000018;
  v4 = a1;
  if (a1 <= 4u)
  {
    v15 = 0x80000001E1B583C0;
    v16 = 0xD000000000000029;
    v17 = 0x80000001E1B583F0;
    v18 = 0xD000000000000031;
    if (a1 != 3)
    {
      v18 = 0xD00000000000002DLL;
      v17 = 0x80000001E1B58430;
    }

    if (a1 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    v19 = 0x80000001E1B583A0;
    v20 = 0xD00000000000001CLL;
    if (!a1)
    {
      v20 = 0x6469577961646F74;
      v19 = 0xEB00000000746567;
    }

    if (a1 <= 1u)
    {
      v13 = v20;
    }

    else
    {
      v13 = v16;
    }

    if (v4 <= 1)
    {
      v14 = v19;
    }

    else
    {
      v14 = v15;
    }
  }

  else
  {
    v5 = 0x80000001E1B584D0;
    v6 = 0x80000001E1B584F0;
    if (a1 == 9)
    {
      v7 = 0xD000000000000019;
    }

    else
    {
      v7 = 0xD000000000000018;
    }

    if (a1 != 9)
    {
      v6 = 0x80000001E1B58510;
    }

    if (a1 == 8)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = v7;
    }

    if (a1 != 8)
    {
      v5 = v6;
    }

    v9 = 0x80000001E1B58460;
    v10 = 0xD000000000000020;
    v11 = 0x80000001E1B58490;
    v12 = 0xD00000000000001CLL;
    if (a1 != 6)
    {
      v12 = 0xD000000000000010;
      v11 = 0x80000001E1B584B0;
    }

    if (a1 != 5)
    {
      v10 = v12;
      v9 = v11;
    }

    if (a1 <= 7u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v8;
    }

    if (v4 <= 7)
    {
      v14 = v9;
    }

    else
    {
      v14 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v21 = "today_tab_largest_ax_support";
LABEL_53:
        v2 = (v21 - 32) | 0x8000000000000000;
        v3 = 0xD00000000000001CLL;
        goto LABEL_57;
      }

      v3 = 0x6469577961646F74;
    }

    else if (a2 == 2)
    {
      v2 = 0x80000001E1B583C0;
      v3 = 0xD000000000000029;
    }

    else if (a2 == 3)
    {
      v2 = 0x80000001E1B583F0;
      v3 = 0xD000000000000031;
    }

    else
    {
      v2 = 0x80000001E1B58430;
      v3 = 0xD00000000000002DLL;
    }
  }

  else
  {
    if (a2 > 7u)
    {
      if (a2 == 8)
      {
        v22 = "mini_today_cards_product";
      }

      else
      {
        if (a2 == 9)
        {
          v2 = 0x80000001E1B584F0;
          v3 = 0xD000000000000019;
          goto LABEL_57;
        }

        v22 = "mini_today_cards_article";
      }

      v2 = (v22 - 32) | 0x8000000000000000;
      goto LABEL_57;
    }

    if (a2 != 5)
    {
      if (a2 != 6)
      {
        v2 = 0x80000001E1B584B0;
        v3 = 0xD000000000000010;
        goto LABEL_57;
      }

      v21 = "arcade_hero_video_page_timer";
      goto LABEL_53;
    }

    v2 = 0x80000001E1B58460;
    v3 = 0xD000000000000020;
  }

LABEL_57:
  if (v13 == v3 && v14 == v2)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_1E1AF74AC();
  }

  return v23 & 1;
}

uint64_t sub_1E1457AD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6778480;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1667851624;
    }

    else
    {
      v4 = 7496556;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1734701162;
    }

    else
    {
      v4 = 6778480;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1667851624;
  if (a2 != 2)
  {
    v8 = 7496556;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 1734701162;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E1457BE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  if (a1 <= 3u)
  {
    v4 = 0x80000001E1B58330;
    v5 = 0xD000000000000016;
    if (a1 != 2)
    {
      v5 = 0x646E756F72;
      v4 = 0xE500000000000000;
    }

    v8 = 0x526465646E756F72;
    v9 = 0xEB00000000746365;
    if (!a1)
    {
      v8 = 0x6669636570736E75;
      v9 = 0xEB00000000646569;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 7364969;
    v6 = 0xE600000000000000;
    v7 = 0x746365527674;
    if (a1 != 7)
    {
      v7 = 0x656E726F64616E75;
      v6 = 0xE900000000000064;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xD000000000000010;
    v9 = 0x80000001E1B58350;
    if (a1 != 4)
    {
      v8 = 1819044208;
      v9 = 0xE400000000000000;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x80000001E1B58330;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x646E756F72)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2)
    {
      v2 = 0xEB00000000746365;
      if (v11 != 0x526465646E756F72)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x80000001E1B58350;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v11 != 1819044208)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 == 6)
    {
      v2 = 0xE300000000000000;
      if (v11 != 7364969)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (a2 == 7)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x746365527674)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v3 = 0x656E726F64616E75;
    v2 = 0xE900000000000064;
  }

  if (v11 != v3)
  {
LABEL_45:
    v13 = sub_1E1AF74AC();
    goto LABEL_46;
  }

LABEL_42:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v13 = 1;
LABEL_46:

  return v13 & 1;
}

uint64_t sub_1E1457E90(char a1, char a2)
{
  if (qword_1E1B0BE70[a1] == qword_1E1B0BE70[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1E1AF74AC();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1E1457EF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000061696465;
  v3 = 0x4D746375646F7270;
  v4 = a1;
  v5 = 0x80000001E1B582D0;
  v6 = 1701736302;
  if (a1 == 5)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v7 = 0x6365537961646F74;
  v8 = 0xEC0000006E6F6974;
  if (a1 == 3)
  {
    v7 = 0x4D746375646F7270;
    v8 = 0xEC00000061696465;
  }

  if (a1 <= 4u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (a1 > 4u)
  {
    v8 = v5;
  }

  v10 = 0x80000001E1B58250;
  v11 = 0xD000000000000027;
  v12 = 0x80000001E1B58280;
  v13 = 0xD00000000000001CLL;
  if (v4 != 1)
  {
    v13 = 0xD000000000000018;
    v12 = 0x80000001E1B582A0;
  }

  if (v4)
  {
    v11 = v13;
    v10 = v12;
  }

  if (v4 <= 2)
  {
    v14 = v11;
  }

  else
  {
    v14 = v9;
  }

  if (v4 <= 2)
  {
    v15 = v10;
  }

  else
  {
    v15 = v8;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x80000001E1B58250;
      if (v14 != 0xD000000000000027)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001E1B58280;
      if (v14 != 0xD00000000000001CLL)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0x80000001E1B582A0;
    v3 = 0xD000000000000018;
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x80000001E1B582D0;
        if (v14 != 0xD000000000000015)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v14 != 1701736302)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 != 3)
    {
      v2 = 0xEC0000006E6F6974;
      if (v14 != 0x6365537961646F74)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }
  }

  if (v14 != v3)
  {
LABEL_40:
    v16 = sub_1E1AF74AC();
    goto LABEL_41;
  }

LABEL_37:
  if (v15 != v2)
  {
    goto LABEL_40;
  }

  v16 = 1;
LABEL_41:

  return v16 & 1;
}

uint64_t sub_1E14580F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726F6C6F43656E6FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C6F436565726874;
    }

    else
    {
      v4 = 0x6F6C6F4372756F66;
    }

    if (v3 == 2)
    {
      v5 = 0xEA0000000000726FLL;
    }

    else
    {
      v5 = 0xE900000000000072;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x726F6C6F436F7774;
    }

    else
    {
      v4 = 0x726F6C6F43656E6FLL;
    }

    v5 = 0xE800000000000000;
  }

  v6 = 0x6C6F436565726874;
  v7 = 0xEA0000000000726FLL;
  if (a2 != 2)
  {
    v6 = 0x6F6C6F4372756F66;
    v7 = 0xE900000000000072;
  }

  if (a2)
  {
    v2 = 0x726F6C6F436F7774;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E1AF74AC();
  }

  return v10 & 1;
}

uint64_t sub_1E1458248(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x7461526F54706174;
  v4 = a1;
  v5 = 0xD000000000000014;
  v6 = 0x80000001E1B57B20;
  if (a1 != 5)
  {
    v5 = 0x6567617373656DLL;
    v6 = 0xE700000000000000;
  }

  v7 = 0x676E697461526F6ELL;
  v8 = 0xE900000000000073;
  if (a1 != 3)
  {
    v7 = 0x52746375646F7270;
    v8 = 0xED00007765697665;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
  }

  else
  {
    v7 = v5;
  }

  v9 = 0x6974615272617473;
  v10 = 0xEB0000000073676ELL;
  if (a1 != 1)
  {
    v9 = 0xD000000000000014;
    v10 = 0x80000001E1B57AF0;
  }

  if (!a1)
  {
    v9 = 0x7461526F54706174;
    v10 = 0xE900000000000065;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB0000000073676ELL;
        if (v11 != 0x6974615272617473)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0x80000001E1B57AF0;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x80000001E1B57B20;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6567617373656DLL)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE900000000000073;
      if (v11 != 0x676E697461526F6ELL)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x52746375646F7270;
    v2 = 0xED00007765697665;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_1E1AF74AC();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_1E1458488(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xEF68746469576C61;
  if (a1 != 2)
  {
    v4 = 0xEE00657A69536C61;
  }

  v5 = 0xD000000000000010;
  if (a1)
  {
    v3 = 0x80000001E1B57A80;
  }

  else
  {
    v5 = 0x6574756C6F736261;
  }

  if (a1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E6F697463617266;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0xEF68746469576C61;
    }

    else
    {
      v9 = 0xEE00657A69536C61;
    }

    if (v6 != 0x6E6F697463617266)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0xD000000000000010;
    }

    else
    {
      v8 = 0x6574756C6F736261;
    }

    if (a2)
    {
      v9 = 0x80000001E1B57A80;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    if (v6 != v8)
    {
      goto LABEL_27;
    }
  }

  if (v7 != v9)
  {
LABEL_27:
    v10 = sub_1E1AF74AC();
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:

  return v10 & 1;
}

uint64_t sub_1E1458600(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007364;
  v3 = 0xD000000000000010;
  v4 = 0x416564756C636E69;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0x416564756C636E69;
    }

    if (v5 == 2)
    {
      v7 = 0x80000001E1B57A50;
    }

    else
    {
      v7 = 0xEA00000000007364;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (v5)
    {
      v7 = 0x80000001E1B57A30;
    }

    else
    {
      v7 = 0x80000001E1B57A10;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000017;
    v2 = 0x80000001E1B57A50;
  }

  v8 = 0x80000001E1B57A30;
  if (a2)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v8 = 0x80000001E1B57A10;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E145872C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x696461654C706F74;
  v4 = a1;
  v5 = 0x654C6D6F74746F62;
  v6 = 0xED0000676E696461;
  if (a1 != 6)
  {
    v5 = 0x676E696461656CLL;
    v6 = 0xE700000000000000;
  }

  v7 = 0x72546D6F74746F62;
  v8 = 0xEE00676E696C6961;
  if (a1 != 4)
  {
    v7 = 0x6D6F74746F62;
    v8 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6C69617254706F74;
  v10 = 0xEB00000000676E69;
  if (a1 != 2)
  {
    v9 = 0x676E696C69617274;
    v10 = 0xE800000000000000;
  }

  v11 = 0xE300000000000000;
  v12 = 7368564;
  if (!a1)
  {
    v12 = 0x696461654C706F74;
    v11 = 0xEA0000000000676ELL;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xED0000676E696461;
        if (v13 != 0x654C6D6F74746F62)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x676E696461656CLL)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE00676E696C6961;
      if (v13 != 0x72546D6F74746F62)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x6D6F74746F62)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEB00000000676E69;
        if (v13 != 0x6C69617254706F74)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE800000000000000;
      v3 = 0x676E696C69617274;
    }

    else if (a2)
    {
      v2 = 0xE300000000000000;
      if (v13 != 7368564)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_1E1AF74AC();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_1E14589BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000065726F7453;
  v3 = 0x7070416F5477656ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x686374615777656ELL;
      v6 = 0xEF676E6972696150;
    }

    else
    {
      v6 = 0x80000001E1B57920;
      v5 = 0xD000000000000013;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x7070416F5477656ELL;
    }

    if (v4)
    {
      v6 = 0x80000001E1B578F0;
    }

    else
    {
      v6 = 0xED000065726F7453;
    }
  }

  v7 = 0x686374615777656ELL;
  v8 = 0x80000001E1B57920;
  if (a2 == 2)
  {
    v8 = 0xEF676E6972696150;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001E1B578F0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E1458B28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006563696F68;
  v3 = 0x4373726F74696465;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x72656469766964;
  if (a1 != 5)
  {
    v6 = 0x6867696C68676968;
    v5 = 0xEF74786554646574;
  }

  v7 = 0x6974615272617473;
  v8 = 0xEA0000000000676ELL;
  if (a1 != 3)
  {
    v7 = 0x6562614C74786574;
    v8 = 0xE90000000000006CLL;
  }

  if (a1 > 4u)
  {
    v9 = v5;
  }

  else
  {
    v6 = v7;
    v9 = v8;
  }

  v10 = 0xD000000000000011;
  v11 = 0x80000001E1B57890;
  v12 = 0x7469576567616D69;
  v13 = 0xEE006C6562614C68;
  if (a1 == 1)
  {
    v12 = 0x4373726F74696465;
    v13 = 0xED00006563696F68;
  }

  if (a1)
  {
    v10 = v12;
    v11 = v13;
  }

  if (a1 <= 2u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (v4 <= 2)
  {
    v15 = v11;
  }

  else
  {
    v15 = v9;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x80000001E1B57890;
      if (v14 != 0xD000000000000011)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (a2 != 1)
    {
      v2 = 0xEE006C6562614C68;
      if (v14 != 0x7469576567616D69)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE700000000000000;
        if (v14 != 0x72656469766964)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEF74786554646574;
        if (v14 != 0x6867696C68676968)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xEA0000000000676ELL;
      if (v14 != 0x6974615272617473)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x6562614C74786574;
    v2 = 0xE90000000000006CLL;
  }

  if (v14 != v3)
  {
LABEL_37:
    v16 = sub_1E1AF74AC();
    goto LABEL_38;
  }

LABEL_34:
  if (v15 != v2)
  {
    goto LABEL_37;
  }

  v16 = 1;
LABEL_38:

  return v16 & 1;
}

uint64_t sub_1E1458D8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x65706F6C65766564;
  v5 = 0xE900000000000072;
  v6 = 0xE500000000000000;
  v7 = 0x6369736162;
  if (a1 != 4)
  {
    v7 = 0x746E657645707061;
    v6 = 0xED000079726F7453;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x697463656C6C6F63;
  v9 = 0xEA00000000006E6FLL;
  if (a1 != 1)
  {
    v8 = 0x79726F7473;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x79726F6765746163;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000072;
      if (v10 != 0x65706F6C65766564)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6369736162)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xED000079726F7453;
      if (v10 != 0x746E657645707061)
      {
LABEL_34:
        v13 = sub_1E1AF74AC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000006E6FLL;
      if (v10 != 0x697463656C6C6F63)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x79726F7473)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x79726F6765746163)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1E1458F8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x656461637261;
    }

    else
    {
      v5 = 0x6863746177;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x79726F7473;
    }

    else
    {
      v5 = 0x65706F6C65766564;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000072;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x656461637261;
  if (a2 != 2)
  {
    v8 = 0x6863746177;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x79726F7473;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E14590B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000074786554;
  v3 = 0x6C6169726574616DLL;
  v4 = a1;
  v5 = 0xD000000000000010;
  v6 = 0x80000001E1B577E0;
  v7 = 0x6F4D656C676E6973;
  v8 = 0xEC000000656C7564;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v8 = 0x80000001E1B57800;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1954047348;
  if (a1 != 1)
  {
    v10 = 0x70756B636F6CLL;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x6C6169726574616DLL;
    v9 = 0xEC00000074786554;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000001E1B577E0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC000000656C7564;
      if (v11 != 0x6F4D656C676E6973)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0x80000001E1B57800;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1954047348)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE600000000000000;
      v3 = 0x70756B636F6CLL;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1E1AF74AC();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1E1459280(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v8 = 0xE500000000000000;
    v9 = 0xE400000000000000;
    v10 = 1752397168;
    v11 = 0x4D746E6573657270;
    v12 = 0xEC0000006C61646FLL;
    if (a1 != 3)
    {
      v11 = 0xD000000000000015;
      v12 = 0x80000001E1B57720;
    }

    if (a1 != 2)
    {
      v10 = v11;
      v9 = v12;
    }

    v13 = 0x61746544776F6873;
    if (a1)
    {
      v8 = 0xEA00000000006C69;
    }

    else
    {
      v13 = 0x7265666E69;
    }

    if (a1 <= 1u)
    {
      v7 = v13;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 1)
    {
      v14 = v8;
    }

    else
    {
      v14 = v9;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v3 = 0x80000001E1B577A0;
      v4 = 0xE600000000000000;
      v15 = 0x7463656C6573;
      if (a1 != 9)
      {
        v15 = 0x6563616C706572;
        v4 = 0xE700000000000000;
      }

      v6 = a1 == 8;
      if (a1 == 8)
      {
        v7 = 0xD000000000000013;
      }

      else
      {
        v7 = v15;
      }
    }

    else
    {
      v3 = 0x80000001E1B57740;
      v4 = 0x80000001E1B57760;
      v5 = 0xD00000000000001ALL;
      if (a1 == 6)
      {
        v5 = 0xD000000000000016;
      }

      else
      {
        v4 = 0x80000001E1B57780;
      }

      v6 = a1 == 5;
      if (a1 == 5)
      {
        v7 = 0xD000000000000015;
      }

      else
      {
        v7 = v5;
      }
    }

    if (v6)
    {
      v14 = v3;
    }

    else
    {
      v14 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v16 = 0xEA00000000006C69;
        if (v7 != 0x61746544776F6873)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v16 = 0xE500000000000000;
        if (v7 != 0x7265666E69)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_61;
    }

    if (a2 == 2)
    {
      v16 = 0xE400000000000000;
      if (v7 != 1752397168)
      {
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    if (a2 == 3)
    {
      v16 = 0xEC0000006C61646FLL;
      if (v7 != 0x4D746E6573657270)
      {
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    v17 = "presentModalFormSheet";
    goto LABEL_54;
  }

  if (a2 <= 7u)
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v16 = 0x80000001E1B57760;
        if (v7 != 0xD000000000000016)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v16 = 0x80000001E1B57780;
        if (v7 != 0xD00000000000001ALL)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_61;
    }

    v17 = "presentModalPageSheet";
LABEL_54:
    v16 = (v17 - 32) | 0x8000000000000000;
    if (v7 != 0xD000000000000015)
    {
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  if (a2 == 8)
  {
    v16 = 0x80000001E1B577A0;
    if (v7 != 0xD000000000000013)
    {
      goto LABEL_63;
    }
  }

  else if (a2 == 9)
  {
    v16 = 0xE600000000000000;
    if (v7 != 0x7463656C6573)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v16 = 0xE700000000000000;
    if (v7 != 0x6563616C706572)
    {
LABEL_63:
      v18 = sub_1E1AF74AC();
      goto LABEL_64;
    }
  }

LABEL_61:
  if (v14 != v16)
  {
    goto LABEL_63;
  }

  v18 = 1;
LABEL_64:

  return v18 & 1;
}

uint64_t sub_1E14595E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1869768040;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000064;
    v4 = 0xEB000000006C6961;
    if (a1 == 2)
    {
      v6 = 0x72614379726F7473;
    }

    else
    {
      v6 = 0x74654479726F7473;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xED000074756F6B61;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x657242656772616CLL;
    }

    else
    {
      v6 = 1869768040;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x72614379726F7473;
  v10 = 0xE900000000000064;
  if (a2 != 2)
  {
    v9 = 0x74654479726F7473;
    v10 = 0xEB000000006C6961;
  }

  if (a2)
  {
    v2 = 0x657242656772616CLL;
    v8 = 0xED000074756F6B61;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E1AF74AC();
  }

  return v13 & 1;
}

uint64_t sub_1E145974C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF74736575716552;
  v3 = 0x7975426F546B7361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x68736E6565726373;
    }

    else
    {
      v5 = 0x666C656873;
    }

    if (v4 == 2)
    {
      v6 = 0xEB0000000073746FLL;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x756B636F4C706F74;
    }

    else
    {
      v5 = 0x7975426F546B7361;
    }

    if (v4)
    {
      v6 = 0xE900000000000070;
    }

    else
    {
      v6 = 0xEF74736575716552;
    }
  }

  v7 = 0x68736E6565726373;
  v8 = 0xEB0000000073746FLL;
  if (a2 != 2)
  {
    v7 = 0x666C656873;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x756B636F4C706F74;
    v2 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E14598A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v6 = 0x80000001E1B574A0;
        v5 = 0xD000000000000012;
      }

      else
      {
        v5 = 0x65706F6C65766564;
        v6 = 0xED00006F666E4972;
      }
    }

    else if (a1 == 7)
    {
      v6 = 0xE300000000000000;
      v5 = 6775156;
    }

    else
    {
      v6 = 0xE700000000000000;
      if (a1 == 8)
      {
        v5 = 0x72656469766964;
      }

      else
      {
        v5 = 0x6E776F6E6B6E75;
      }
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x736F507472616863;
    }

    else
    {
      v5 = 0x6974615272657375;
    }

    if (v2)
    {
      v6 = 0xEE00736E6F697469;
    }

    else
    {
      v6 = 0xEA0000000000676ELL;
    }
  }

  else
  {
    v3 = 0x80000001E1B57460;
    v4 = 0xD000000000000015;
    if (a1 != 3)
    {
      v4 = 0xD00000000000001FLL;
      v3 = 0x80000001E1B57480;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0x80000001E1B57440;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v7 = 0x80000001E1B574A0;
        if (v5 != 0xD000000000000012)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v7 = 0xED00006F666E4972;
        if (v5 != 0x65706F6C65766564)
        {
LABEL_59:
          v9 = sub_1E1AF74AC();
          goto LABEL_60;
        }
      }
    }

    else if (a2 == 7)
    {
      v7 = 0xE300000000000000;
      if (v5 != 6775156)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v7 = 0xE700000000000000;
      if (a2 == 8)
      {
        if (v5 != 0x72656469766964)
        {
          goto LABEL_59;
        }
      }

      else if (v5 != 0x6E776F6E6B6E75)
      {
        goto LABEL_59;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x736F507472616863;
    }

    else
    {
      v8 = 0x6974615272657375;
    }

    if (a2)
    {
      v7 = 0xEE00736E6F697469;
    }

    else
    {
      v7 = 0xEA0000000000676ELL;
    }

    if (v5 != v8)
    {
      goto LABEL_59;
    }
  }

  else if (a2 == 2)
  {
    v7 = 0x80000001E1B57440;
    if (v5 != 0xD000000000000010)
    {
      goto LABEL_59;
    }
  }

  else if (a2 == 3)
  {
    v7 = 0x80000001E1B57460;
    if (v5 != 0xD000000000000015)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v7 = 0x80000001E1B57480;
    if (v5 != 0xD00000000000001FLL)
    {
      goto LABEL_59;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_59;
  }

  v9 = 1;
LABEL_60:

  return v9 & 1;
}

uint64_t sub_1E1459BF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6573756170;
    }

    else
    {
      v3 = 2036427888;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1702131053;
  }

  else if (a1 == 3)
  {
    v3 = 0x657263736C6C7566;
    v4 = 0xEA00000000006E65;
  }

  else
  {
    v4 = 0xE600000000000000;
    v3 = 0x656E696C6E69;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6573756170;
    }

    else
    {
      v9 = 2036427888;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x657263736C6C7566;
    v6 = 0xEA00000000006E65;
    if (a2 != 3)
    {
      v5 = 0x656E696C6E69;
      v6 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1702131053;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1E1AF74AC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1E1459D60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6574756D6E75;
  v6 = 0x6C75467265746E65;
  v7 = 0xEF6E65657263736CLL;
  if (a1 != 4)
  {
    v6 = 0x6C6C754674697865;
    v7 = 0xEE006E6565726373;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6573756170;
  if (a1 != 1)
  {
    v9 = 1702131053;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 2036427888;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6574756D6E75)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEF6E65657263736CLL;
      if (v10 != 0x6C75467265746E65)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE006E6565726373;
      if (v10 != 0x6C6C754674697865)
      {
LABEL_34:
        v13 = sub_1E1AF74AC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6573756170)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1702131053)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 2036427888)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1E1459F50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1954047348;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D754E656E6F6870;
    }

    else
    {
      v4 = 0x506C616D69636564;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000726562;
    }

    else
    {
      v5 = 0xEA00000000006461;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C69616D65;
    }

    else
    {
      v4 = 1954047348;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x6D754E656E6F6870;
  v8 = 0xEB00000000726562;
  if (a2 != 2)
  {
    v7 = 0x506C616D69636564;
    v8 = 0xEA00000000006461;
  }

  if (a2)
  {
    v2 = 0x6C69616D65;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E145A09C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x79726575516C7275;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79646F426E6F736ALL;
    }

    else
    {
      v4 = 0x79646F426D726F66;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x726564616568;
    }

    else
    {
      v4 = 0x79726575516C7275;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x79646F426E6F736ALL;
  if (a2 != 2)
  {
    v7 = 0x79646F426D726F66;
  }

  if (a2)
  {
    v2 = 0x726564616568;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E1AF74AC();
  }

  return v10 & 1;
}

uint64_t sub_1E145A1D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1937334628;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7368746E6F6DLL;
    }

    else
    {
      v4 = 0x7372616579;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x736B656577;
    }

    else
    {
      v4 = 1937334628;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x7368746E6F6DLL;
  if (a2 != 2)
  {
    v8 = 0x7372616579;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x736B656577;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E145A2F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = "matic";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v7 = "CONTROLLER_REQUIRED";
    }

    else
    {
      v7 = "CONTROLLER_OPTIONAL";
    }

    v6 = (v7 - 32);
    v5 = 0xD000000000000013;
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD000000000000022;
    }

    if (v4)
    {
      v6 = "ONTROLLER_REQUIRED";
    }

    else
    {
      v6 = "matic";
    }
  }

  if (a2 > 1u)
  {
    v3 = "SIRI_REMOTE_REQUIRED";
    v8 = "CONTROLLER_REQUIRED";
    v9 = a2 == 2;
  }

  else
  {
    v8 = "ONTROLLER_REQUIRED";
    v9 = a2 == 0;
    if (a2)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0xD000000000000022;
    }
  }

  if (!v9)
  {
    v3 = v8;
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E1AF74AC();
  }

  return v10 & 1;
}

uint64_t sub_1E145A40C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00397836316E6FLL;
  v3 = 0xD000000000000011;
  v4 = a1;
  if (a1 > 1u)
  {
    v5 = 0xD000000000000014;
    if (v4 == 2)
    {
      v5 = 0xD000000000000017;
      v6 = 0x80000001E1B572A0;
    }

    else
    {
      v6 = 0x80000001E1B572C0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x69746F4D6F726568;
    }

    if (v4)
    {
      v6 = 0x80000001E1B57280;
    }

    else
    {
      v6 = 0xEE00397836316E6FLL;
    }
  }

  v7 = 0xD000000000000017;
  v8 = 0x80000001E1B572C0;
  if (a2 == 2)
  {
    v8 = 0x80000001E1B572A0;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (a2)
  {
    v2 = 0x80000001E1B57280;
  }

  else
  {
    v3 = 0x69746F4D6F726568;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E145A540(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x4373726F74696465;
    v10 = 0xED00006563696F68;
    if (a1 != 6)
    {
      v9 = 1701736302;
      v10 = 0xE400000000000000;
    }

    v11 = 0xE800000000000000;
    v12 = 0x746E656964617267;
    if (a1 != 4)
    {
      v12 = 0xD000000000000010;
      v11 = 0x80000001E1B57260;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x7265764F6B726164;
    v5 = 0xEB0000000079616CLL;
    if (a1 != 2)
    {
      v4 = 0x7463617265746E69;
      v5 = 0xEB00000000657669;
    }

    v6 = 0x726F6C6F63;
    if (a1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v6 = 0x6B726F77747261;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xED00006563696F68;
        if (v7 != 0x4373726F74696465)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        if (v7 != 1701736302)
        {
LABEL_47:
          v16 = sub_1E1AF74AC();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x746E656964617267)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x80000001E1B57260;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v14 = 0x7265764F6B726164;
      v15 = 7954796;
    }

    else
    {
      v14 = 0x7463617265746E69;
      v15 = 6649449;
    }

    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v7 != v14)
    {
      goto LABEL_47;
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v7 != 0x726F6C6F63)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x6B726F77747261)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v16 = 1;
LABEL_48:

  return v16 & 1;
}

uint64_t sub_1E145A7D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6269736976;
  if (a1 != 5)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  v6 = 0xE800000000000000;
  v7 = 0x6E65657263536E6FLL;
  if (a1 != 3)
  {
    v7 = 0x656572635366666FLL;
    v6 = 0xE90000000000006ELL;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x65746E4565676170;
  v9 = 0xE900000000000072;
  if (a1 != 1)
  {
    v8 = 0x7469784565676170;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x646563616C70;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE900000000000072;
        if (v10 != 0x65746E4565676170)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x7469784565676170)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x646563616C70)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656C6269736976)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x6574656C706D6F63)
      {
LABEL_39:
        v13 = sub_1E1AF74AC();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x6E65657263536E6FLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE90000000000006ELL;
    if (v10 != 0x656572635366666FLL)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_1E145AA20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x79636176697270;
    }

    else
    {
      v5 = 0x65706F6C65766564;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000072;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE400000000000000;
    v5 = 1634497893;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x74726F70707573;
    }

    else
    {
      v5 = 0x504174726F706572;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEE006D656C626F72;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1634497893;
  v9 = 0xE700000000000000;
  v10 = 0x74726F70707573;
  if (a2 != 3)
  {
    v10 = 0x504174726F706572;
    v9 = 0xEE006D656C626F72;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x79636176697270;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E1AF74AC();
  }

  return v13 & 1;
}

uint64_t sub_1E145ABAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x437055656E4FLL;
  if (a1 != 6)
  {
    v4 = 0x447055656E4FLL;
  }

  v5 = 0x417055656E4FLL;
  if (a1 != 4)
  {
    v5 = 0x427055656E4FLL;
  }

  if (a1 <= 5u)
  {
    v4 = v5;
  }

  v6 = 0xE300000000000000;
  v7 = 7233862;
  if (a1 != 2)
  {
    v7 = 0x7274656D6D797341;
    v6 = 0xEC0000006C616369;
  }

  v8 = 0x70556565726854;
  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x70556F7754;
  }

  if (a1 > 1u)
  {
    v3 = v6;
  }

  else
  {
    v7 = v8;
  }

  if (a1 <= 3u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 3)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (a2 > 3u)
  {
    v11 = 0xE600000000000000;
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        if (v9 != 0x437055656E4FLL)
        {
          goto LABEL_45;
        }
      }

      else if (v9 != 0x447055656E4FLL)
      {
LABEL_45:
        v12 = sub_1E1AF74AC();
        goto LABEL_46;
      }
    }

    else if (a2 == 4)
    {
      if (v9 != 0x417055656E4FLL)
      {
        goto LABEL_45;
      }
    }

    else if (v9 != 0x427055656E4FLL)
    {
      goto LABEL_45;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0xE300000000000000;
      if (v9 != 7233862)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v11 = 0xEC0000006C616369;
      if (v9 != 0x7274656D6D797341)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x70556565726854)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x70556F7754)
    {
      goto LABEL_45;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_1E145ADF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E696461656CLL;
    }

    else
    {
      v4 = 0x676E696C69617274;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D6F74746F62;
    }

    else
    {
      v4 = 7368564;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E696461656CLL;
  if (a2 != 2)
  {
    v8 = 0x676E696C69617274;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6D6F74746F62;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E145AF24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 2036427888;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1801807219;
    }

    else
    {
      v4 = 0x756A644165746172;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEA00000000007473;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1886352499;
    }

    else
    {
      v4 = 2036427888;
    }

    v5 = 0xE400000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1801807219;
  if (a2 != 2)
  {
    v7 = 0x756A644165746172;
    v6 = 0xEA00000000007473;
  }

  if (a2)
  {
    v2 = 1886352499;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E1AF74AC();
  }

  return v10 & 1;
}

uint64_t sub_1E145B048(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7265666E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65676E61726FLL;
    }

    else
    {
      v4 = 0x6574696877;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1702194274;
    }

    else
    {
      v4 = 0x7265666E69;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x65676E61726FLL;
  if (a2 != 2)
  {
    v8 = 0x6574696877;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 1702194274;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E145B168(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x657461647075;
    }

    else
    {
      v4 = 0x6F6C6E776F646572;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEA00000000006461;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6573616863727570;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x657461647075;
  if (a2 != 2)
  {
    v8 = 0x6F6C6E776F646572;
    v7 = 0xEA00000000006461;
  }

  if (a2)
  {
    v2 = 0x6573616863727570;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E145B2AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x534E4F4954504FLL;
  if (a1 != 6)
  {
    v5 = 0x4543415254;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x4554454C4544;
  if (a1 != 4)
  {
    v7 = 0x5443454E4E4F43;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1145128264;
  if (a1 != 2)
  {
    v9 = 5526864;
    v8 = 0xE300000000000000;
  }

  v10 = 1414745936;
  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v10 = 5522759;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x534E4F4954504FLL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x4543415254)
        {
LABEL_45:
          v14 = sub_1E1AF74AC();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x4554454C4544)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x5443454E4E4F43)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1145128264)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE300000000000000;
      if (v11 != 5526864)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE400000000000000;
    if (v11 != 1414745936)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 5522759)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_1E145B4DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x754F6E496E676973;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x4C65636E616E6966;
    v14 = 0xEC000000736B6E69;
    if (a1 != 2)
    {
      v13 = 0xD000000000000014;
      v14 = 0x80000001E1B56E50;
    }

    v15 = 0xE500000000000000;
    v16 = 0x736B6E696CLL;
    if (!a1)
    {
      v16 = 0x754F6E496E676973;
      v15 = 0xE900000000000074;
    }

    if (a1 <= 1u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v15;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    v6 = 0x80000001E1B56E70;
    v7 = 0x80000001E1B56E90;
    v8 = 0xD000000000000017;
    if (a1 != 7)
    {
      v8 = 0x796C746E65636572;
      v7 = 0xEF64657461647055;
    }

    if (a1 != 6)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0x6341657461657263;
    v10 = 0xED0000746E756F63;
    if (a1 != 4)
    {
      v9 = 0x6F666E4972657375;
      v10 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xED0000746E756F63;
        if (v11 != 0x6341657461657263)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6F666E4972657375)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v2 = 0x80000001E1B56E90;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v3 = 0x796C746E65636572;
      v2 = 0xEF64657461647055;
      goto LABEL_45;
    }

    v17 = "pendingManualUpdates";
LABEL_42:
    v2 = (v17 - 32) | 0x8000000000000000;
    if (v11 != 0xD000000000000014)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xEC000000736B6E69;
      if (v11 != 0x4C65636E616E6966)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v17 = "personalizationLinks";
    goto LABEL_42;
  }

  if (a2)
  {
    v2 = 0xE500000000000000;
    if (v11 != 0x736B6E696CLL)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

LABEL_45:
  if (v11 != v3)
  {
LABEL_49:
    v18 = sub_1E1AF74AC();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v18 = 1;
LABEL_50:

  return v18 & 1;
}

uint64_t sub_1E145B7CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x80000001E1B56D00;
      v3 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xE400000000000000;
      v3 = 1701736302;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x726F6C6F63;
    }

    if (v2)
    {
      v4 = 0x80000001E1B56CE0;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000001E1B56D00;
      if (v3 != 0xD000000000000012)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE400000000000000;
      if (v3 != 1701736302)
      {
LABEL_26:
        v7 = sub_1E1AF74AC();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x726F6C6F63;
    }

    if (a2)
    {
      v6 = 0x80000001E1B56CE0;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_1E145B91C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6C616D73;
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v3 = 0xEA00000000006567;
    if (a1 == 2)
    {
      v5 = 0x72614C6172747865;
    }

    else
    {
      v5 = 0x646578696DLL;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 0x656772616CLL;
    }

    else
    {
      v5 = 0x6C6C616D73;
    }
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x72614C6172747865;
  v8 = 0xEA00000000006567;
  if (a2 != 2)
  {
    v7 = 0x646578696DLL;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x656772616CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E145BA4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6552686372616573;
    }

    else
    {
      v5 = 0x614C686372616573;
    }

    if (v2)
    {
      v6 = 0xED000073746C7573;
    }

    else
    {
      v6 = 0xED0000676E69646ELL;
    }
  }

  else
  {
    v3 = 0x50746375646F7270;
    v4 = 0xEF4C414D59656761;
    if (a1 != 3)
    {
      v3 = 0xD00000000000001DLL;
      v4 = 0x80000001E1B55C90;
    }

    if (a1 == 2)
    {
      v5 = 0x7961646F74;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x6552686372616573;
    }

    else
    {
      v11 = 0x614C686372616573;
    }

    if (a2)
    {
      v10 = 0xED000073746C7573;
    }

    else
    {
      v10 = 0xED0000676E69646ELL;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x50746375646F7270;
    v8 = 0x80000001E1B55C90;
    if (a2 == 3)
    {
      v8 = 0xEF4C414D59656761;
    }

    else
    {
      v7 = 0xD00000000000001DLL;
    }

    if (a2 == 2)
    {
      v9 = 0x7961646F74;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1E1AF74AC();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1E145BC08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000014;
      v4 = 0x80000001E1B56AE0;
    }

    else
    {
      v3 = 0x65736E65646E6F63;
      v4 = 0xEF68637261655364;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x64417465736E69;
    }

    else
    {
      v3 = 25697;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000001E1B56AE0;
      if (v3 != 0xD000000000000014)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xEF68637261655364;
      if (v3 != 0x65736E65646E6F63)
      {
LABEL_26:
        v7 = sub_1E1AF74AC();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x64417465736E69;
    }

    else
    {
      v5 = 25697;
    }

    if (a2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_1E145BD74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1802398060;
  v3 = a1;
  v4 = 0xE400000000000000;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1954047348;
    }

    else
    {
      v5 = 0xD000000000000021;
    }

    if (v3 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0x80000001E1B56A90;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7473694C6F666E69;
    }

    else
    {
      v5 = 1802398060;
    }

    if (v3)
    {
      v6 = 0xEC0000006D657449;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  v7 = 1954047348;
  v8 = 0x80000001E1B56A90;
  if (a2 == 2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xD000000000000021;
  }

  if (a2)
  {
    v2 = 0x7473694C6F666E69;
    v4 = 0xEC0000006D657449;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E145BEA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x722D686372616573;
    }

    else
    {
      v3 = 0x6C2D686372616573;
    }

    if (v2)
    {
      v4 = 0xEE0073746C757365;
    }

    else
    {
      v4 = 0xEE00676E69646E61;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7961646F74;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000021;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001E1B56A40;
    }

    else
    {
      v4 = 0x80000001E1B56A60;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x722D686372616573;
    }

    else
    {
      v7 = 0x6C2D686372616573;
    }

    if (a2)
    {
      v6 = 0xEE0073746C757365;
    }

    else
    {
      v6 = 0xEE00676E69646E61;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xE500000000000000;
    if (v3 != 0x7961646F74)
    {
LABEL_37:
      v8 = sub_1E1AF74AC();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD000000000000021;
    }

    if (a2 == 3)
    {
      v6 = 0x80000001E1B56A40;
    }

    else
    {
      v6 = 0x80000001E1B56A60;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_1E145C05C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE300000000000000;
  v5 = 6513005;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736976;
    v4 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6863746177;
  if (a1 != 3)
  {
    v7 = 30324;
    v6 = 0xE200000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 6578544;
  if (a1 != 1)
  {
    v9 = 0x736567617373656DLL;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656E6F6870;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE300000000000000;
        if (v10 != 6578544)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x736567617373656DLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x656E6F6870)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6513005)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6E6F69736976)
      {
LABEL_39:
        v13 = sub_1E1AF74AC();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6863746177)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE200000000000000;
    if (v10 != 30324)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_1E145C240(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x65746E4565676170;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x72656D6974;
  if (a1 != 5)
  {
    v6 = 0x726576656ELL;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7265746E45707061;
  if (a1 != 3)
  {
    v8 = 0x747475426B636162;
    v7 = 0xEA00000000006E6FLL;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x7469784565676170;
  if (a1 != 1)
  {
    v10 = 0x74697845707061;
    v9 = 0xE700000000000000;
  }

  if (!a1)
  {
    v10 = 0x65746E4565676170;
    v9 = 0xE900000000000072;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x7469784565676170)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x74697845707061)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_35;
    }

LABEL_31:
    if (v11 != v3)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (a2 > 4u)
  {
    v2 = 0xE500000000000000;
    if (a2 == 5)
    {
      v13 = 1701669236;
    }

    else
    {
      v13 = 1702258030;
    }

    if (v11 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x7200000000))
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (a2 != 3)
  {
    v3 = 0x747475426B636162;
    v2 = 0xEA00000000006E6FLL;
    goto LABEL_31;
  }

  v2 = 0xE800000000000000;
  if (v11 != 0x7265746E45707061)
  {
    goto LABEL_37;
  }

LABEL_35:
  if (v12 != v2)
  {
LABEL_37:
    v14 = sub_1E1AF74AC();
    goto LABEL_38;
  }

  v14 = 1;
LABEL_38:

  return v14 & 1;
}

uint64_t sub_1E145C44C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00736C69617465;
  v3 = 0x44746E756F636361;
  v4 = a1;
  v5 = 0xD000000000000013;
  v6 = 0x80000001E1B568C0;
  if (a1 != 6)
  {
    v5 = 0x6573616863727570;
    v6 = 0xEF79726F74736948;
  }

  v7 = 0xE800000000000000;
  v8 = 0x74666947646E6573;
  if (a1 != 4)
  {
    v8 = 0x6853796C696D6166;
    v7 = 0xED0000676E697261;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6D6565646572;
  if (a1 != 2)
  {
    v10 = 0x73646E7546646461;
    v9 = 0xE800000000000000;
  }

  v11 = 0x6341657461657263;
  v12 = 0xED0000746E756F63;
  if (!a1)
  {
    v11 = 0x44746E756F636361;
    v12 = 0xEE00736C69617465;
  }

  if (a1 <= 1u)
  {
    v10 = v11;
    v9 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001E1B568C0;
        if (v13 != 0xD000000000000013)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEF79726F74736948;
        if (v13 != 0x6573616863727570)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      if (a2 != 4)
      {
        v15 = 0x6853796C696D6166;
        v16 = 0x676E697261;
LABEL_34:
        v2 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v13 != v15)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE800000000000000;
      if (v13 != 0x74666947646E6573)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x6D6565646572)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE800000000000000;
      v3 = 0x73646E7546646461;
    }

    else if (a2)
    {
      v15 = 0x6341657461657263;
      v16 = 0x746E756F63;
      goto LABEL_34;
    }

    if (v13 != v3)
    {
LABEL_41:
      v17 = sub_1E1AF74AC();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v17 = 1;
LABEL_42:

  return v17 & 1;
}

uint64_t sub_1E145C6EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6D6565646572;
    }

    else
    {
      v4 = 0x746E756F636361;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1952868711;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x79746972616863;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6D6565646572;
    }

    else
    {
      v9 = 0x746E756F636361;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x6D6F74737563;
    if (a2 != 3)
    {
      v6 = 0x79746972616863;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1952868711;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1E1AF74AC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1E145C858(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = "";
  v4 = a1;
  v5 = 0xD000000000000016;
  if (a1 == 4)
  {
    v6 = "didBecomeArcadeTrialEligible";
  }

  else
  {
    v5 = 0xD000000000000013;
    v6 = "didBecomeNonSubscribed";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001CLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "didSubscribeToArcade";
  }

  if (a1 == 1)
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (v4 == 1)
  {
    v9 = "arcadeTabDidComeOnScreen";
  }

  else
  {
    v9 = "arcadePageDidAppear";
  }

  if (!v4)
  {
    v8 = 0xD000000000000018;
    v9 = "";
  }

  if (v4 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v8 = v7;
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001CLL;
      v3 = "didSubscribeToArcade";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000016;
      v3 = "didBecomeArcadeTrialEligible";
    }

    else
    {
      v3 = "didBecomeNonSubscribed";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "arcadeTabDidComeOnScreen";
    }

    else
    {
      v2 = 0xD000000000000014;
      v3 = "arcadePageDidAppear";
    }
  }

  else
  {
    v2 = 0xD000000000000018;
  }

  if (v8 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E145C9C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x657461647075;
    }

    else
    {
      v4 = 0x6C6C6174736E69;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x65726F74736572;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x68636E75616CLL;
  }

  else
  {
    v4 = 0x7369747265766461;
    v3 = 0xE900000000000065;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x657461647075;
    }

    else
    {
      v9 = 0x6C6C6174736E69;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x68636E75616CLL;
    if (a2 != 3)
    {
      v6 = 0x7369747265766461;
      v5 = 0xE900000000000065;
    }

    if (a2 == 2)
    {
      v7 = 0x65726F74736572;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1E1AF74AC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1E145CB44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7265666E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1802658148;
    }

    else
    {
      v4 = 0x6867696C746F7073;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE900000000000074;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746867696CLL;
    }

    else
    {
      v4 = 0x7265666E69;
    }

    v5 = 0xE500000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1802658148;
  if (a2 != 2)
  {
    v7 = 0x6867696C746F7073;
    v6 = 0xE900000000000074;
  }

  if (a2)
  {
    v2 = 0x746867696CLL;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E1AF74AC();
  }

  return v10 & 1;
}

uint64_t sub_1E145CC74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE800000000000000;
    v10 = 0x746E657645707061;
    if (a1 != 6)
    {
      v10 = 0x6553646564697567;
      v9 = 0xEC00000068637261;
    }

    v11 = 0xE600000000000000;
    v12 = 0x656C646E7562;
    if (a1 != 4)
    {
      v12 = 0xD000000000000010;
      v11 = 0x80000001E1B55910;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6169726F74696465;
    v5 = 0xE90000000000006CLL;
    if (a1 != 2)
    {
      v4 = 0x7275507070416E69;
      v5 = 0xED00006573616863;
    }

    v6 = 0x747265766461;
    if (a1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x746E65746E6F63;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE800000000000000;
        if (v7 != 0x746E657645707061)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xEC00000068637261;
        if (v7 != 0x6553646564697567)
        {
LABEL_47:
          v14 = sub_1E1AF74AC();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x656C646E7562)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x80000001E1B55910;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE90000000000006CLL;
      if (v7 != 0x6169726F74696465)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xED00006573616863;
      if (v7 != 0x7275507070416E69)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE600000000000000;
    if (v7 != 0x747265766461)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x746E65746E6F63)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

char *EditorialSearchResult.__allocating_init(deserializing:using:)(uint64_t a1, char *a2)
{
  v181 = a2;
  v170 = sub_1E1AEFEAC();
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1E1AF39DC();
  v180 = *(v184 - 8);
  v4 = MEMORY[0x1EEE9AC00](v184);
  v179 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v178 = &v135 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v172 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v175 = &v135 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v176 = &v135 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v173 = (&v135 - v14);
  v183 = sub_1E1AF380C();
  v15 = *(v183 - 8);
  v16 = MEMORY[0x1EEE9AC00](v183);
  v165 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v135 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v135 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v135 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v135 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v135 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v135 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v135 - v36;
  v182 = a1;
  sub_1E1AF381C();
  sub_1E14601A0();
  v38 = v177;
  sub_1E1AF36AC();
  if (v38)
  {
    (*(v180 + 8))(v181, v184);
    v39 = *(v15 + 8);
    v40 = v183;
    v39(v182, v183);
    v39(v37, v40);
    return v26;
  }

  v154 = v29;
  v155 = v26;
  v160 = v23;
  v156 = v20;
  v166 = v32;
  v164 = 0;
  v41 = *(v15 + 8);
  v177 = v15 + 8;
  v42 = v183;
  v41(v37, v183);
  v43 = LOBYTE(v198[0]);
  sub_1E1AF381C();
  v44 = v173;
  sub_1E1AF374C();
  v174 = v41;
  v41(v35, v42);
  v45 = sub_1E1AF5A6C();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 48))(v44, 1, v45);
  v163 = v43;
  if (v47 == 1)
  {
    sub_1E1308058(v44, &qword_1ECEB1F90);
    v171 = 0;
  }

  else
  {
    v48 = v164;
    v171 = sub_1E1AF59FC();
    v164 = v48;
    (*(v46 + 8))(v44, v45);
  }

  v49 = v179;
  v50 = v181;
  v51 = v178;
  v52 = v166;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v54 = v180 + 16;
  v53 = *(v180 + 16);
  v55 = v184;
  v53(v51, v50, v184);
  sub_1E1AF464C();
  v173 = v53;
  v53(v49, v50, v55);
  if (v171)
  {
    v56 = v182;
    sub_1E1AF381C();
    sub_1E1460790();
    sub_1E1AF36DC();
    v57 = v183;
    v58 = v52;
    v26 = v174;
    (v174)(v52, v183);
    v59 = LOBYTE(v198[0]);
    if (LOBYTE(v198[0]) == 4)
    {

      v60 = sub_1E1AF5A7C();
      sub_1E1460748(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      *v61 = 0x476B726F77747261;
      v61[1] = 0xEF65707954646972;
      v61[2] = v167;
      (*(*(v60 - 8) + 104))(v61, *MEMORY[0x1E69AB690], v60);
      swift_willThrow();
      v62 = *(v180 + 8);
      v63 = v184;
      v62(v181, v184);
      (v26)(v56, v57);
      v64 = v179;
      v65 = v63;
LABEL_39:
      v62(v64, v65);
      sub_1E1308058(v176, &unk_1ECEB1770);
      return v26;
    }
  }

  else
  {
    v59 = 4;
    v57 = v183;
    v58 = v52;
    v26 = v174;
    v56 = v182;
  }

  v153 = v59;
  v66 = type metadata accessor for Artwork();
  sub_1E1AF381C();
  v173(v178, v179, v184);
  v158 = sub_1E1460748(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  v159 = v66;
  sub_1E1AF464C();
  v161 = v198[0];
  sub_1E1AF381C();
  v157 = JSONObject.appStoreColor.getter();
  (v26)(v58, v57);
  if (v163 <= 2)
  {
    if (v163)
    {
      v26 = v178;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v163 == 3)
  {
LABEL_17:
    v26 = v178;
    goto LABEL_18;
  }

  v26 = v178;
  if (v163 != 4)
  {

    goto LABEL_19;
  }

LABEL_18:
  v67 = sub_1E1AF74AC();

  if (v67)
  {
LABEL_19:
    if (v161)
    {
      if (v157)
      {
        goto LABEL_21;
      }

      v131 = sub_1E1AF5A7C();
      sub_1E1460748(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      *v132 = 0x6F6C6F43746E6974;
      v132[1] = 0xE900000000000072;
      v132[2] = v167;
      (*(*(v131 - 8) + 104))(v132, *MEMORY[0x1E69AB690], v131);
      swift_willThrow();
    }

    else
    {

      v129 = sub_1E1AF5A7C();
      sub_1E1460748(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      *v130 = 0x6B726F77747261;
      v130[1] = 0xE700000000000000;
      v130[2] = v167;
      (*(*(v129 - 8) + 104))(v130, *MEMORY[0x1E69AB690], v129);
      swift_willThrow();
    }

    v62 = *(v180 + 8);
    v133 = v184;
    v62(v181, v184);
    (v174)(v56, v183);
    v64 = v179;
    v65 = v133;
    goto LABEL_39;
  }

LABEL_21:
  type metadata accessor for Lockup();
  sub_1E1AF381C();
  v68 = v179;
  v69 = v184;
  v70 = v173;
  v173(v26, v179, v184);
  sub_1E1460748(&qword_1EE1E4F60, type metadata accessor for Lockup);
  sub_1E1AF464C();
  v152 = v198[0];
  sub_1E1AF381C();
  v70(v26, v68, v69);
  sub_1E14601F4();
  sub_1E1AF464C();
  v71 = LODWORD(v198[0]) | ((WORD2(v198[0]) | (BYTE6(v198[0]) << 16)) << 32);
  if (LOBYTE(v198[0]) == 2)
  {
    v72 = v174;
    v73 = v183;
    v74 = v156;
    v75 = v160;
    v76 = v154;
    if (qword_1ECEB1190 != -1)
    {
      swift_once();
    }

    v151 = dword_1ECEB9550;
    v150 = BYTE1(dword_1ECEB9550);
    v149 = BYTE2(dword_1ECEB9550);
    v148 = HIBYTE(dword_1ECEB9550);
    v147 = byte_1ECEB9554;
    v146 = byte_1ECEB9555;
    v145 = byte_1ECEB9556;
  }

  else
  {
    v150 = (v71 >> 8) & 1;
    v149 = (v71 >> 16) & 1;
    v148 = (v71 >> 24) & 1;
    v147 = HIDWORD(v71) & 1;
    v146 = (v71 >> 40) & 1;
    v151 = LODWORD(v198[0]) | ((WORD2(v198[0]) | (BYTE6(v198[0]) << 16)) << 32);
    v145 = HIWORD(v71) & 1;
    v72 = v174;
    v73 = v183;
    v74 = v156;
    v75 = v160;
    v76 = v154;
  }

  v77 = v179;
  sub_1E1AF381C();
  v78 = sub_1E1AF37CC();
  v162 = v54;
  if (v79)
  {
    v190 = v78;
    v191 = v79;
  }

  else
  {
    v80 = v168;
    sub_1E1AEFE9C();
    v81 = sub_1E1AEFE7C();
    v83 = v82;
    (*(v169 + 8))(v80, v170);
    v190 = v81;
    v191 = v83;
    v75 = v160;
    v72 = v174;
  }

  sub_1E1AF6F6C();
  v72(v76, v73);
  v84 = v155;
  sub_1E1AF381C();
  v160 = sub_1E1AF37CC();
  v156 = v85;
  v72(v84, v73);
  sub_1E1AF381C();
  v155 = sub_1E1AF37CC();
  v154 = v86;
  v72(v75, v73);
  sub_1E1AF381C();
  v144 = sub_1E1AF37CC();
  v143 = v87;
  v72(v74, v73);
  type metadata accessor for Video();
  v88 = v166;
  sub_1E1AF381C();
  v89 = v178;
  v90 = v184;
  v91 = v173;
  v173(v178, v77, v184);
  sub_1E1460748(&qword_1EE1E52D0, type metadata accessor for Video);
  sub_1E1AF464C();
  v142 = v198[7];
  sub_1E1AF381C();
  v91(v89, v77, v90);
  sub_1E1AF464C();
  v141 = v197;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB40B8);
  sub_1E1AF381C();
  v91(v89, v77, v90);
  sub_1E1460648();
  sub_1E1AF464C();
  v140 = v196;
  sub_1E1AF381C();
  v91(v89, v77, v90);
  type metadata accessor for AppEventFormattedDate();
  sub_1E1460748(&unk_1EE1E1570, type metadata accessor for AppEventFormattedDate);
  v139 = sub_1E1AF630C();
  sub_1E1AF381C();
  sub_1E14056C8();
  sub_1E1AF369C();
  v92 = v183;
  v93 = v174;
  (v174)(v88, v183);
  v138 = v195;
  v94 = v165;
  sub_1E1AF381C();
  v137 = sub_1E1AF37CC();
  v136 = v95;
  v93(v94, v92);
  sub_1E1AF381C();
  v96 = v184;
  v173(v89, v77, v184);
  sub_1E1AF464C();
  v159 = v194;
  v97 = type metadata accessor for Action();
  sub_1E1AF381C();
  v167 = v97;
  v98 = static Action.tryToMakeInstance(byDeserializing:using:)(v88, v77);
  v99 = v96;
  v100 = v98;
  v93(v88, v92);
  sub_1E134FD1C(v176, v175, &unk_1ECEB1770);
  sub_1E1AF381C();
  sub_1E134B92C();
  sub_1E1AF369C();
  v93(v88, v92);
  LODWORD(v165) = v193;
  type metadata accessor for SearchAdOpportunity();
  sub_1E1AF381C();
  v101 = v181;
  v173(v89, v181, v99);
  sub_1E1460748(&qword_1EE1EE770, type metadata accessor for SearchAdOpportunity);
  v102 = v100;
  sub_1E1AF464C();
  v178 = v192;
  type metadata accessor for EditorialSearchResult();
  v26 = swift_allocObject();
  v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_type] = v163;
  v103 = &v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_title];
  v104 = v156;
  *v103 = v160;
  v103[1] = v104;
  v105 = &v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_subtitle];
  v106 = v154;
  *v105 = v155;
  v105[1] = v106;
  v107 = &v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tagline];
  v108 = v143;
  *v107 = v144;
  v107[1] = v108;
  *&v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialArtwork] = v161;
  *&v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialVideo] = v142;
  *&v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_iconArtwork] = v141;
  *&v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_collectionAdamIds] = v171;
  *&v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_collectionAppIcons] = v140;
  *&v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_lockup] = v152;
  v109 = &v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialDisplayOptions];
  *v109 = v151 & 1;
  v109[1] = v150;
  v109[2] = v149;
  v109[3] = v148;
  v109[4] = v147;
  v109[5] = v146;
  v109[6] = v145;
  v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_artworkGridType] = v153;
  *&v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_appEventFormattedDates] = v139;
  v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_mediaOverlayStyle] = v138;
  v110 = &v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_badgeText];
  v111 = v136;
  *v110 = v137;
  v110[1] = v111;
  *&v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_badgeArtwork] = v159;
  *&v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tintColor] = v157;
  *&v26[OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_clickAction] = v102;
  sub_1E134FD1C(v198, &v190, &unk_1ECEB5670);
  if (v102)
  {
    v173 = sub_1E1460748(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v167 = 0;
    v173 = 0;
  }

  v112 = v180;
  v113 = v170;
  v114 = v169;
  v115 = v168;
  sub_1E134FD1C(v175, v172, &unk_1ECEB1770);
  *&v26[OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity] = 0;
  sub_1E134FD1C(&v190, &v187, &unk_1ECEB5670);
  v116 = v174;
  v117 = v182;
  if (*(&v188 + 1))
  {
    v118 = v188;
    *(v26 + 24) = v187;
    *(v26 + 40) = v118;
    *(v26 + 7) = v189;
  }

  else
  {

    sub_1E1AEFE9C();
    v119 = sub_1E1AEFE7C();
    v120 = v113;
    v121 = v102;
    v122 = v119;
    v124 = v123;
    (*(v114 + 8))(v115, v120);
    v185 = v122;
    v102 = v121;
    v186 = v124;
    v101 = v181;
    sub_1E1AF6F6C();
    sub_1E1308058(&v187, &unk_1ECEB5670);
  }

  v125 = *(v112 + 8);
  v126 = v184;
  v125(v101, v184);
  v116(v117, v183);
  sub_1E1308058(&v190, &unk_1ECEB5670);
  sub_1E1308058(v175, &unk_1ECEB1770);
  sub_1E1308058(v198, &unk_1ECEB5670);
  v125(v179, v126);
  sub_1E1308058(v176, &unk_1ECEB1770);
  *(v26 + 8) = v102;
  *(v26 + 9) = 0;
  v127 = v167;
  *(v26 + 10) = 0;
  *(v26 + 11) = v127;
  *(v26 + 12) = v173;
  sub_1E134B7C8(v172, &v26[OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics]);
  v26[17] = 2;
  v26[16] = v165;
  v128 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *&v26[v128] = v178;
  return v26;
}

AppStoreKit::EditorialSearchResultType_optional __swiftcall EditorialSearchResultType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EditorialSearchResultType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 0x65706F6C65766564;
  v4 = 0x6369736162;
  if (v1 != 4)
  {
    v4 = 0x746E657645707061;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x697463656C6C6F63;
  if (v1 != 1)
  {
    v5 = 0x79726F7473;
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

uint64_t sub_1E145EC6C()
{
  sub_1E1AF5F0C();
}

void sub_1E145ED7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  v5 = 0xE900000000000072;
  v6 = 0x65706F6C65766564;
  v7 = 0xE500000000000000;
  v8 = 0x6369736162;
  if (v2 != 4)
  {
    v8 = 0x746E657645707061;
    v7 = 0xED000079726F7453;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006E6FLL;
  v10 = 0x697463656C6C6F63;
  if (v2 != 1)
  {
    v10 = 0x79726F7473;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

AppStoreKit::ArtworkGridType_optional __swiftcall ArtworkGridType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ArtworkGridType.rawValue.getter()
{
  v1 = 0x6C6C616D73;
  v2 = 0x72614C6172747865;
  if (*v0 != 2)
  {
    v2 = 0x646578696DLL;
  }

  if (*v0)
  {
    v1 = 0x656772616CLL;
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

uint64_t sub_1E145EF20()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E145EFD8()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E145F07C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E145F13C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C6C616D73;
  v4 = 0xEA00000000006567;
  v5 = 0x72614C6172747865;
  if (*v1 != 2)
  {
    v5 = 0x646578696DLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x656772616CLL;
    v2 = 0xE500000000000000;
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

uint64_t EditorialSearchResult.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_title);

  return v1;
}

uint64_t EditorialSearchResult.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_subtitle);

  return v1;
}

uint64_t EditorialSearchResult.tagline.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tagline);

  return v1;
}

void EditorialSearchResult.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialDisplayOptions + 1);
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialDisplayOptions + 2);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialDisplayOptions + 3);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialDisplayOptions + 4);
  v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialDisplayOptions + 5);
  v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialDisplayOptions + 6);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialDisplayOptions);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

void *EditorialSearchResult.tintColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tintColor);
  v2 = v1;
  return v1;
}

void sub_1E145F388(_BYTE *a1@<X8>)
{
  if (*(v1 + 16) == 2 && (v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_type), v2 <= 5))
  {
    *a1 = 0x30403030403uLL >> (8 * v2);
  }

  else
  {
    *a1 = 4;
  }
}

uint64_t sub_1E145F3D0()
{
  if (*(v0 + 16) && *(v0 + 16) != 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E1AF74AC();
  }

  return v1 & 1;
}

uint64_t EditorialSearchResult.badgeText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_badgeText);

  return v1;
}

uint64_t sub_1E145F4C4@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for EditorialSearchResult();
  *a1 = v1;
}

uint64_t sub_1E145F508()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_type);
  if (v1 <= 2)
  {
    if (*(v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_type))
    {
      if (v1 == 1)
      {
        v2 = (v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tagline);
        if (!*(v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tagline + 8))
        {
          v3 = 0xD000000000000033;
          v4 = 0x80000001E1B5EFC0;
LABEL_18:
          v9._countAndFlagsBits = 0;
          v9._object = 0xE000000000000000;
          countAndFlagsBits = localizedString(_:comment:)(*&v3, v9)._countAndFlagsBits;
          goto LABEL_19;
        }
      }

      else
      {
        v2 = (v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tagline);
        if (!*(v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tagline + 8))
        {
          v3 = 0xD00000000000002ELL;
          v4 = 0x80000001E1B5EF90;
          goto LABEL_18;
        }
      }

LABEL_15:
      countAndFlagsBits = *v2;
LABEL_19:

      return countAndFlagsBits;
    }

    v2 = (v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tagline);
    if (*(v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tagline + 8))
    {
      goto LABEL_15;
    }

    v6 = "Search.EditorialSearchResultType.Heading.Category";
LABEL_17:
    v4 = (v6 - 32) | 0x8000000000000000;
    v3 = 0xD000000000000031;
    goto LABEL_18;
  }

  if (v1 == 3)
  {
    v7._countAndFlagsBits = 0xD000000000000032;
    v7._object = 0x80000001E1B5EF50;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    return localizedString(_:comment:)(v7, v8)._countAndFlagsBits;
  }

  else
  {
    if (v1 != 4)
    {
      v2 = (v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tagline);
      if (*(v0 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tagline + 8))
      {
        goto LABEL_15;
      }

      v6 = "Search.EditorialSearchResultType.Heading.AppEvent";
      goto LABEL_17;
    }

    return 0;
  }
}

uint64_t EditorialSearchResult.__allocating_init(id:type:title:subtitle:tagline:editorialArtwork:editorialVideo:iconArtwork:collectionAdamIds:collectionAppIcons:lockup:editorialDisplayOptions:artworkGridType:appEventFormattedDates:mediaOverlayStyle:tintColor:badgeText:badgeArtwork:clickAction:impressionMetrics:condensedBehavior:searchAdOpportunity:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, char *a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26)
{
  v73 = a8;
  v72 = a7;
  v69 = a6;
  v67 = a5;
  v75 = a1;
  v82 = a24;
  v70 = a23;
  v79 = a21;
  v80 = a22;
  v81 = a19;
  v78 = a20;
  v74 = a14;
  v71 = a13;
  v68 = a12;
  v76 = a17;
  v77 = a25;
  v66 = sub_1E1AEFEAC();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v83 = &v63 - v31;
  v32 = swift_allocObject();
  v33 = *a15;
  v34 = a15[1];
  v35 = a15[2];
  v36 = a15[3];
  v37 = a15[4];
  v38 = a15[5];
  v39 = a15[6];
  v40 = *a16;
  v41 = *a18;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_type) = *a2;
  v42 = (v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_title);
  *v42 = a3;
  v42[1] = a4;
  v43 = (v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_subtitle);
  *v43 = v67;
  v43[1] = v69;
  v44 = (v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tagline);
  *v44 = v72;
  v44[1] = v73;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialArtwork) = a9;
  v45 = v70;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialVideo) = a10;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_iconArtwork) = a11;
  v46 = v75;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_collectionAdamIds) = v68;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_collectionAppIcons) = v71;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_lockup) = v74;
  v47 = (v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialDisplayOptions);
  *v47 = v33;
  v47[1] = v34;
  v47[2] = v35;
  v47[3] = v36;
  v47[4] = v37;
  v47[5] = v38;
  v47[6] = v39;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_artworkGridType) = v40;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_appEventFormattedDates) = v76;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_mediaOverlayStyle) = v41;
  v48 = *v77;
  v49 = (v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_badgeText);
  v51 = v79;
  v50 = v80;
  *v49 = v78;
  v49[1] = v51;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_badgeArtwork) = v50;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tintColor) = v81;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_clickAction) = v45;
  sub_1E134FD1C(v46, v89, &unk_1ECEB5670);
  if (v45)
  {
    v52 = type metadata accessor for Action();
    v53 = sub_1E1460748(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v54 = v82;
  sub_1E134FD1C(v82, v83, &unk_1ECEB1770);
  *(v32 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v89, &v86, &unk_1ECEB5670);
  if (*(&v87 + 1))
  {
    v55 = v87;
    *(v32 + 24) = v86;
    *(v32 + 40) = v55;
    *(v32 + 56) = v88;
  }

  else
  {

    v56 = v64;
    sub_1E1AEFE9C();
    v57 = v48;
    v58 = sub_1E1AEFE7C();
    v60 = v59;
    (*(v65 + 8))(v56, v66);
    v84 = v58;
    v48 = v57;
    v54 = v82;
    v85 = v60;
    sub_1E1AF6F6C();
    sub_1E1308058(&v86, &unk_1ECEB5670);
  }

  sub_1E1308058(v54, &unk_1ECEB1770);
  sub_1E1308058(v46, &unk_1ECEB5670);
  sub_1E1308058(v89, &unk_1ECEB5670);
  *(v32 + 64) = v45;
  *(v32 + 72) = 0;
  *(v32 + 80) = 0;
  *(v32 + 88) = v52;
  *(v32 + 96) = v53;
  sub_1E134B7C8(v83, v32 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
  *(v32 + 17) = 2;
  *(v32 + 16) = v48;
  v61 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v32 + v61) = a26;
  return v32;
}

uint64_t EditorialSearchResult.init(id:type:title:subtitle:tagline:editorialArtwork:editorialVideo:iconArtwork:collectionAdamIds:collectionAppIcons:lockup:editorialDisplayOptions:artworkGridType:appEventFormattedDates:mediaOverlayStyle:tintColor:badgeText:badgeArtwork:clickAction:impressionMetrics:condensedBehavior:searchAdOpportunity:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, char *a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26)
{
  v27 = v26;
  v75 = a8;
  v74 = a7;
  v71 = a6;
  v69 = a5;
  v83 = a24;
  v72 = a23;
  v81 = a22;
  v80 = a21;
  v82 = a19;
  v79 = a20;
  v76 = a14;
  v73 = a13;
  v70 = a12;
  v68 = a11;
  v78 = a25;
  v77 = a17;
  v67 = sub_1E1AEFEAC();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v84 = &v64 - v34;
  v35 = *a15;
  v36 = a15[1];
  v37 = a15[2];
  v38 = a15[3];
  v39 = a15[4];
  v40 = a15[5];
  v41 = a15[6];
  v42 = *a16;
  v43 = *a18;
  v44 = a1;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_type) = *a2;
  v45 = (v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_title);
  *v45 = a3;
  v45[1] = a4;
  v46 = (v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_subtitle);
  *v46 = v69;
  v46[1] = v71;
  v47 = (v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tagline);
  *v47 = v74;
  v47[1] = v75;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialArtwork) = a9;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialVideo) = a10;
  v48 = v72;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_iconArtwork) = v68;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_collectionAdamIds) = v70;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_collectionAppIcons) = v73;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_lockup) = v76;
  v49 = (v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialDisplayOptions);
  *v49 = v35;
  v49[1] = v36;
  v49[2] = v37;
  v49[3] = v38;
  v49[4] = v39;
  v49[5] = v40;
  v49[6] = v41;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_artworkGridType) = v42;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_appEventFormattedDates) = v77;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_mediaOverlayStyle) = v43;
  v50 = *v78;
  v51 = (v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_badgeText);
  v52 = v80;
  *v51 = v79;
  v51[1] = v52;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_badgeArtwork) = v81;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_tintColor) = v82;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_clickAction) = v48;
  sub_1E134FD1C(a1, v93, &unk_1ECEB5670);
  if (v48)
  {
    v53 = type metadata accessor for Action();
    v54 = sub_1E1460748(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v55 = v83;
  sub_1E134FD1C(v83, v84, &unk_1ECEB1770);
  *(v27 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v93, &v87, &unk_1ECEB5670);
  if (*(&v88 + 1))
  {
    v90 = v87;
    v91 = v88;
    v92 = v89;
  }

  else
  {

    v56 = v65;
    sub_1E1AEFE9C();
    v57 = v50;
    v58 = sub_1E1AEFE7C();
    v60 = v59;
    (*(v66 + 8))(v56, v67);
    v85 = v58;
    v50 = v57;
    v55 = v83;
    v86 = v60;
    sub_1E1AF6F6C();
    sub_1E1308058(&v87, &unk_1ECEB5670);
  }

  sub_1E1308058(v55, &unk_1ECEB1770);
  sub_1E1308058(v44, &unk_1ECEB5670);
  sub_1E1308058(v93, &unk_1ECEB5670);
  v61 = v91;
  *(v27 + 24) = v90;
  *(v27 + 40) = v61;
  *(v27 + 56) = v92;
  *(v27 + 64) = v48;
  *(v27 + 72) = 0;
  *(v27 + 80) = 0;
  *(v27 + 88) = v53;
  *(v27 + 96) = v54;
  sub_1E134B7C8(v84, v27 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
  *(v27 + 17) = 2;
  *(v27 + 16) = v50;
  v62 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v27 + v62) = a26;

  return v27;
}

unint64_t sub_1E14601A0()
{
  result = qword_1ECEB40B0;
  if (!qword_1ECEB40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB40B0);
  }

  return result;
}

unint64_t sub_1E14601F4()
{
  result = qword_1EE1D9BA8[0];
  if (!qword_1EE1D9BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1D9BA8);
  }

  return result;
}

uint64_t sub_1E1460248@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E1AF37CC();
  if (v3)
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E146028C()
{
}

uint64_t EditorialSearchResult.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + 64, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t EditorialSearchResult.__deallocating_deinit()
{
  EditorialSearchResult.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1460568@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for EditorialSearchResult();
  *a1 = v3;
}

void sub_1E14605B0(_BYTE *a1@<X8>)
{
  if (*(*v1 + 16) == 2 && (v2 = *(*v1 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_type), v2 <= 5))
  {
    *a1 = 0x30403030403uLL >> (8 * v2);
  }

  else
  {
    *a1 = 4;
  }
}

void sub_1E14605FC(_BYTE *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC11AppStoreKit21EditorialSearchResult_editorialDisplayOptions);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v2) = v2[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v2;
}

unint64_t sub_1E1460648()
{
  result = qword_1EE1D2650;
  if (!qword_1EE1D2650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB40B8);
    sub_1E1460748(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2650);
  }

  return result;
}

uint64_t type metadata accessor for EditorialSearchResult()
{
  result = qword_1EE1DAC50;
  if (!qword_1EE1DAC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1460748(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E1460790()
{
  result = qword_1EE1DFB20;
  if (!qword_1EE1DFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFB20);
  }

  return result;
}

unint64_t sub_1E14607E8()
{
  result = qword_1ECEB40C0;
  if (!qword_1ECEB40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB40C0);
  }

  return result;
}

unint64_t sub_1E1460840()
{
  result = qword_1ECEB40C8[0];
  if (!qword_1ECEB40C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEB40C8);
  }

  return result;
}

uint64_t Footnote.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Footnote.__allocating_init(id:text:clickAction:presentationStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 80) = 0;
  sub_1E138853C(a1, &v28);
  if (*(&v29 + 1))
  {
    v15 = v29;
    *(v14 + 40) = v28;
    *(v14 + 56) = v15;
    *(v14 + 72) = v30;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v24 = a2;
    v25 = a3;
    v17 = v16;
    v18 = a4;
    v19 = a5;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v26 = v17;
    v27 = v21;
    a5 = v19;
    a4 = v18;
    a2 = v24;
    a3 = v25;
    sub_1E1AF6F6C();
    sub_1E1308058(&v28, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  swift_beginAccess();
  *(v14 + 80) = a4;
  *(v14 + 32) = a5;
  return v14;
}

uint64_t Footnote.init(id:text:clickAction:presentationStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 80) = 0;
  sub_1E138853C(a1, &v29);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v25 = a2;
    v26 = a3;
    v17 = v16;
    v18 = a4;
    v19 = a5;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v27 = v17;
    v28 = v21;
    a5 = v19;
    a4 = v18;
    a2 = v25;
    a3 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v29, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v22 = v33;
  *(v6 + 40) = v32;
  *(v6 + 56) = v22;
  *(v6 + 72) = v34;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  swift_beginAccess();
  *(v6 + 80) = a4;

  *(v6 + 32) = a5;
  return v6;
}

uint64_t Footnote.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Footnote.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Footnote.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v40 = a2;
  v3 = v2;
  v39[0] = *v3;
  v5 = sub_1E1AEFEAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E1AF380C();
  v9 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v39 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - v16;
  *(v3 + 80) = 0;
  v39[1] = v3 + 80;
  v41 = a1;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  if (v19)
  {
    v42 = v18;
    v43 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v21 = v6;
    v23 = v22;
    (*(v21 + 8))(v8, v5);
    v42 = v20;
    v43 = v23;
  }

  sub_1E1AF6F6C();
  v24 = *(v9 + 8);
  v24(v17, v47);
  v25 = v45;
  *(v3 + 40) = v44;
  *(v3 + 56) = v25;
  *(v3 + 72) = v46;
  v26 = v41;
  sub_1E1AF381C();
  v27 = sub_1E1AF37CC();
  v29 = v28;
  v24(v14, v47);
  if (v29)
  {
    *(v3 + 16) = v27;
    *(v3 + 24) = v29;
    type metadata accessor for Action();
    sub_1E1AF381C();
    v30 = v40;
    v31 = static Action.tryToMakeInstance(byDeserializing:using:)(v11, v40);
    v32 = v47;
    v24(v11, v47);
    swift_beginAccess();
    *(v3 + 80) = v31;

    sub_1E1AF381C();
    v33 = _sSo28ASKFootnotePresentationStyleV11AppStoreKitE13deserializingAB9JetEngine10JSONObjectV_tcfC_0(v11);
    v34 = sub_1E1AF39DC();
    (*(*(v34 - 8) + 8))(v30, v34);
    v24(v26, v32);
    *(v3 + 32) = v33;
  }

  else
  {
    v35 = sub_1E1AF5A7C();
    sub_1E1461BB0(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v36 = 1954047348;
    v36[1] = 0xE400000000000000;
    v36[2] = v39[0];
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v35);
    swift_willThrow();
    v37 = sub_1E1AF39DC();
    (*(*(v37 - 8) + 8))(v40, v37);
    v24(v26, v47);
    sub_1E134B88C(v3 + 40);

    type metadata accessor for Footnote();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t sub_1E14613D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;
}

uint64_t sub_1E1461468(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t sub_1E1461500@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for Footnote();
  *a1 = v1;
}

uint64_t Footnote.deinit()
{

  sub_1E134B88C(v0 + 40);

  return v0;
}

uint64_t Footnote.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1E14615C8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Footnote();
  v7 = swift_allocObject();
  result = Footnote.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E1461674@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for Footnote();
  *a1 = v3;
}

uint64_t _sSo28ASKFootnotePresentationStyleV11AppStoreKitE13deserializingAB9JetEngine10JSONObjectV_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - v3;
  sub_1E1AF374C();
  v5 = sub_1E1AF5A6C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v7 = sub_1E1AF380C();
    (*(*(v7 - 8) + 8))(a1, v7);
    sub_1E1308058(v4, &qword_1ECEB1F90);
    return 0;
  }

  v8 = sub_1E1AF5A0C();
  (*(v6 + 8))(v4, v5);
  if (!v8)
  {
    v17 = sub_1E1AF380C();
    (*(*(v17 - 8) + 8))(a1, v17);
    return 0;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v25 = "textLightensOnHighlight";
    v11 = (v8 + 40);
    v24 = xmmword_1E1B02CD0;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = v12 == 0x7276656843736168 && v13 == 0xEA00000000006E6FLL;
      if (v14 || (sub_1E1AF74AC() & 1) != 0)
      {
        v10 |= 2uLL;
      }

      else
      {
        v15 = v12 == 0xD000000000000017 && 0x80000001E1B5F130 == v13;
        if (v15 || (sub_1E1AF74AC() & 1) != 0)
        {
          v10 |= 4uLL;
        }

        else if (v12 == 0x7261706553736168 && v13 == 0xEC000000726F7461 || (sub_1E1AF74AC() & 1) != 0)
        {
          v10 |= 8uLL;
        }

        else
        {
          v22 = v8;
          v23 = a1;
          v16 = qword_1EE1D27B0;

          if (v16 != -1)
          {
            swift_once();
          }

          v21 = sub_1E1AF591C();
          v20[2] = __swift_project_value_buffer(v21, qword_1EE215450);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
          v20[1] = *(*(sub_1E1AF38EC() - 8) + 72);
          *(swift_allocObject() + 16) = v24;
          sub_1E1AF382C();
          v26[3] = MEMORY[0x1E69E6158];
          v26[0] = v12;
          v26[1] = v13;
          sub_1E1AF38BC();
          sub_1E1308058(v26, &qword_1ECEB2DF0);
          sub_1E1AF54BC();

          v8 = v22;
          a1 = v23;
        }
      }

      v11 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v18 = sub_1E1AF380C();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v10;
}

uint64_t sub_1E1461BB0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1461CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  sub_1E1AF0C9C();
  v6 = sub_1E1AF2C9C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = *(v7 + 16);
  v11(v13 - v9, a1, v6, v8);
  sub_1E1AF0D0C();
  (v11)(v10, a1, v6);
  type metadata accessor for AlertActionImplementation();
  sub_1E1AF0D3C();
  return (*(v7 + 8))(a1, v6);
}

uint64_t sub_1E1461E80()
{
  result = sub_1E1AF0D1C();
  if (v1 <= 0x3F)
  {
    result = sub_1E1AF0D4C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E1461F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_style))
  {
    return sub_1E14630C4(a1, a2, a3);
  }

  else
  {
    return sub_1E1461F88(a1, a2, a3);
  }
}

uint64_t sub_1E1461F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v124 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4158);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v108 = v95 - v6;
  v113 = sub_1E1AF553C();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1E1AF3D4C();
  v110 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v107 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v109 = v95 - v10;
  v123 = a3;
  v12 = *(a3 - 8);
  v11 = a3 - 8;
  v119 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v103 = v14;
  v118 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1E1AF3E1C();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v128 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1E1AF3E4C();
  v121 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v122 = v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF551C();
  v18 = *(v17 - 8);
  v129 = v17;
  v130 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v117 = v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v116 = v95 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v115 = v95 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v114 = v95 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4160);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (v95 - v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v106 = sub_1E1AF588C();
  v131 = a1;
  v32 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_buttonActions);
  v33 = *(v32 + 16);
  v134 = v32;
  if (v33)
  {
    v11 = 0;
    v34 = (v32 + 64);
    v35 = MEMORY[0x1E69E7CC0];
    v101 = v33;
    v102 = (v32 + 64);
    do
    {
      v120 = v35;
      v36 = (v33 - v11);
      v37 = &v34[5 * v11];
      while (1)
      {
        v38 = *(v32 + 16);
        if (v11 >= v38)
        {
          __break(1u);
          goto LABEL_60;
        }

        v39 = v28;
        v40 = *(v37 - 3);
        v41 = *(v37 - 2);
        v42 = *(v37 - 1);
        v132 = *(v37 - 4);
        v133 = v41;
        v43 = *v37;
        if (v42)
        {
          v44 = swift_allocObject();
          *(v44 + 16) = v42;
          *(v44 + 24) = v43;
          v45 = sub_1E137AFA0;
        }

        else
        {
          v45 = 0;
          v44 = 0;
        }

        sub_1E1300E34(v42);
        if (v40)
        {
          break;
        }

        sub_1E1361B18(v45, v44);
        v37 += 5;
        ++v11;
        --v36;
        v32 = v134;
        v28 = v39;
        if (!v36)
        {
          v35 = v120;
          goto LABEL_18;
        }
      }

      sub_1E1300E34(v42);

      sub_1E1361B18(v45, v44);
      v35 = v120;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v137 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E135C560(0, *(v35 + 16) + 1, 1);
        v35 = v137;
      }

      v34 = v102;
      v48 = *(v35 + 16);
      v47 = *(v35 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1E135C560((v47 > 1), v48 + 1, 1);
        v34 = v102;
        v35 = v137;
      }

      ++v11;
      *(v35 + 16) = v48 + 1;
      v49 = (v35 + 40 * v48);
      v50 = v133;
      v49[4] = v132;
      v49[5] = v40;
      v49[6] = v50;
      v49[7] = v42;
      v49[8] = v43;
      v32 = v134;
      v28 = v39;
      v33 = v101;
    }

    while (v36 != 1);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  if ((*(v131 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_isCancelable) & 1) == 0)
  {

    v36 = 0;
    v133 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v51 = *(v35 + 16);

  v52 = v127;
  if (v51)
  {
    if (!*(v131 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_cancelTitle + 8))
    {
      v56._countAndFlagsBits = 0x432E6E6F69746341;
      v56._object = 0xED00006C65636E61;
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      localizedString(_:comment:)(v56, v57);
    }

    v55 = v121;
  }

  else
  {
    v53._countAndFlagsBits = 0x4F2E6E6F69746341;
    v53._object = 0xE90000000000004BLL;
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    localizedString(_:comment:)(v53, v54);
    v55 = v121;
  }

  if (*(v131 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_cancelAction))
  {
    *&v137 = *(v131 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_cancelAction);
    v58 = *(v123 + 16);

    v59 = v58;
    v36 = 0;
    sub_1E14634F8(&v137, v125, v124, v59, v31);
    v52 = v127;

    (v55[7])(v31, 0, 1, v52);
  }

  else
  {
    (v55[7])(v31, 1, 1, v52);
    v36 = 0;
  }

  sub_1E1AF54DC();
  sub_1E1463C0C(v31, v28);
  if ((v55[6])(v28, 1, v52) == 1)
  {
    sub_1E1463C7C(v28);
    v137 = 0u;
    v138 = 0u;
    v139 = 0;
  }

  else
  {
    *(&v138 + 1) = v52;
    v139 = MEMORY[0x1E69AB020];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v137);
    (v55[4])(boxed_opaque_existential_0, v28, v52);
  }

  v61 = v114;
  sub_1E1AF54FC();
  (*(v130 + 16))(v115, v61, v129);
  v62 = sub_1E172E228(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v62[2];
  v38 = v62[3];
  v133 = v62;
  v37 = (v11 + 1);
  if (v11 >= v38 >> 1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v64 = v129;
    v63 = v130;
    (*(v130 + 8))(v114, v129);
    sub_1E1463C7C(v31);
    v65 = v133;
    v133[2] = v37;
    (*(v63 + 32))(v65 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v11, v115, v64);
LABEL_34:
    v37 = *(v32 + 16);
    if (!v37)
    {
      break;
    }

    v95[1] = v36;
    v66 = 0;
    v132 = v131 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_destructiveActionIndex;
    v120 = v119 + 16;
    v115 = v103 + 7;
    v114 = (v119 + 32);
    v103 = (v121 + 2);
    v102 = (v130 + 16);
    v101 = v130 + 8;
    ++v121;
    v100 = v130 + 32;
    v99 = v37 - 1;
    v67 = v32 + 64;
    v98 = v32 + 64;
LABEL_36:
    v31 = (v67 + 40 * v66);
    v36 = v66;
    while (1)
    {
      v38 = *(v32 + 16);
      if (v36 >= v38)
      {
        break;
      }

      v69 = *(v31 - 4);
      v68 = *(v31 - 3);
      v71 = *(v31 - 2);
      v70 = *(v31 - 1);
      v72 = *v31;
      if (v70)
      {
        v73 = swift_allocObject();
        *(v73 + 16) = v70;
        *(v73 + 24) = v72;
        v11 = sub_1E1463DE0;
        if (v68)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v11 = 0;
        v73 = 0;
        if (v68)
        {
LABEL_44:

          swift_bridgeObjectRetain_n();
          sub_1E1300E34(v70);
          sub_1E1AF3DFC();
          v74 = v119;
          v75 = v123;
          (*(v119 + 16))(v118, v125, v123);
          v96 = (*(v74 + 80) + 64) & ~*(v74 + 80);
          v97 = &v115[v96] & 0xFFFFFFFFFFFFFFF8;
          v76 = swift_allocObject();
          *(v76 + 2) = *(v75 + 16);
          *(v76 + 3) = v69;
          *(v76 + 4) = v68;
          *(v76 + 5) = v71;
          *(v76 + 6) = v11;
          *(v76 + 7) = v73;
          (*(v74 + 32))(&v76[v96], v118, v75);
          *&v76[v97] = v124;

          sub_1E1300E34(v11);
          sub_1E1AF3E3C();
          if ((*(v132 + 8) & 1) == 0 && *v132 == v36)
          {
            sub_1E1AF54CC();
          }

          v77 = v127;
          *(&v138 + 1) = v127;
          v139 = MEMORY[0x1E69AB020];
          v78 = __swift_allocate_boxed_opaque_existential_0(&v137);
          (*v103)(v78, v122, v77);
          v79 = v116;
          sub_1E1AF54FC();
          (*v102)(v117, v79, v129);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v133 = sub_1E172E228(0, v133[2] + 1, 1, v133);
          }

          v81 = v133[2];
          v80 = v133[3];
          if (v81 >= v80 >> 1)
          {
            v133 = sub_1E172E228(v80 > 1, v81 + 1, 1, v133);
          }

          v66 = v36 + 1;

          sub_1E1361B18(v11, v73);
          v11 = v129;
          v82 = v130;
          (*(v130 + 8))(v116, v129);
          (*v121)(v122, v127);
          v83 = v133;
          v133[2] = v81 + 1;
          (*(v82 + 32))(v83 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v81, v117, v11);
          v32 = v134;
          v67 = v98;
          if (v99 != v36)
          {
            goto LABEL_36;
          }

          goto LABEL_52;
        }
      }

      ++v36;
      sub_1E1300E34(v70);
      sub_1E1361B18(v11, v73);
      v31 += 5;
      v32 = v134;
      if (v37 == v36)
      {
        goto LABEL_52;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    v133 = sub_1E172E228(v38 > 1, v37, 1, v133);
  }

LABEL_52:
  v84 = *(v131 + 32);
  if (!v84)
  {
    goto LABEL_57;
  }

  v85 = *(v84 + 16);
  v86 = *(v84 + 24);
  *&v137 = v85;
  *(&v137 + 1) = v86;

  if (!Artwork.URLTemplate.isBundleImage.getter())
  {
    v135 = v85;
    v136 = v86;
    if (!Artwork.URLTemplate.isSystemImage.getter())
    {

LABEL_57:
      v87 = v109;
      sub_1E1AF3D3C();
      goto LABEL_58;
    }
  }

  sub_1E1463B14(MEMORY[0x1E69E7CC0]);
  v87 = v109;
  sub_1E1AF3D1C();

LABEL_58:
  (*(v104 + 16))(v128, v131 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v105);
  v88 = sub_1E1AF552C();
  (*(*(v88 - 8) + 56))(v108, 1, 1, v88);
  v89 = v110;
  (*(v110 + 16))(v107, v87, v126);

  v90 = v111;
  sub_1E1AF54EC();
  sub_1E1AF0D1C();
  swift_getWitnessTable();
  sub_1E1AF502C();
  v91 = sub_1E1361A80();
  v92 = v106;
  swift_retain_n();
  v93 = sub_1E1AF68EC();
  *(&v138 + 1) = v91;
  v139 = MEMORY[0x1E69AB720];
  *&v137 = v93;
  sub_1E1AF57FC();

  (*(v112 + 8))(v90, v113);
  (*(v89 + 8))(v87, v126);
  __swift_destroy_boxed_opaque_existential_1(&v137);
  return v92;
}