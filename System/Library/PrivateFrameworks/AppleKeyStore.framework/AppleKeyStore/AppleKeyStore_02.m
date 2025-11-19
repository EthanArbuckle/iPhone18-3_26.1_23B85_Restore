uint64_t AKSRefKeyParams.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t AKSRefKeyParams.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1E0B794D0(_BYTE *a1, uint64_t a2)
{
  v24 = a2;
  v4 = sub_1E0BA8AE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DERDictionaryItem();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for der_key();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23[-1] - v18;
  LOBYTE(v23[0]) = *a1;
  result = sub_1E0B78C00(v23, 2, &v23[-1] - v18);
  if (!v2)
  {
    v21 = v24 & 1;
    sub_1E0B76324(v19, v17, type metadata accessor for der_key);
    v23[0] = v21;
    sub_1E0BA8AD8();
    sub_1E0B67494(v17, v12, type metadata accessor for der_key);
    (*(v5 + 32))(&v12[*(v9 + 20)], v8, v4);
    swift_beginAccess();
    sub_1E0B64850(v12);
    sub_1E0B797D0(v12, type metadata accessor for DERDictionaryItem);
    swift_endAccess();
    return sub_1E0B797D0(v19, type metadata accessor for der_key);
  }

  return result;
}

uint64_t sub_1E0B797D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1E0B79830(_BYTE *a1)
{
  v4 = sub_1E0BA8AE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = type metadata accessor for DERDictionaryItem();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = type metadata accessor for der_key();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v21[0] = *a1;
  sub_1E0B78C00(v21, 2, v16);
  if (!v2)
  {
    swift_beginAccess();
    v18 = *(v1 + 16);

    sub_1E0B64650(v18, v12);

    (*(v5 + 16))(v8, &v12[*(v9 + 20)], v4);
    sub_1E0BA8B78();
    sub_1E0B797D0(v12, type metadata accessor for DERDictionaryItem);
    sub_1E0B797D0(v16, type metadata accessor for der_key);
    return v22 != 0;
  }

  return v17;
}

uint64_t sub_1E0B79B28(_BYTE *a1, uint64_t a2)
{
  v23 = a2;
  v4 = sub_1E0BA8AE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DERDictionaryItem();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for der_key();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v22[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22[-1] - v18;
  LOBYTE(v22[0]) = *a1;
  result = sub_1E0B78C00(v22, 0, &v22[-1] - v18);
  if (!v2)
  {
    sub_1E0B76324(v19, v17, type metadata accessor for der_key);
    v22[0] = v23;
    sub_1E0BA8AD8();
    sub_1E0B67494(v17, v12, type metadata accessor for der_key);
    (*(v5 + 32))(&v12[*(v9 + 20)], v8, v4);
    swift_beginAccess();
    sub_1E0B64850(v12);
    sub_1E0B797D0(v12, type metadata accessor for DERDictionaryItem);
    swift_endAccess();
    return sub_1E0B797D0(v19, type metadata accessor for der_key);
  }

  return result;
}

uint64_t sub_1E0B79E20(_BYTE *a1)
{
  v4 = sub_1E0BA8AE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = type metadata accessor for DERDictionaryItem();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = type metadata accessor for der_key();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v20[0] = *a1;
  result = sub_1E0B78C00(v20, 0, v16);
  if (!v2)
  {
    swift_beginAccess();
    v18 = *(v1 + 16);

    sub_1E0B64650(v18, v12);

    (*(v5 + 16))(v8, &v12[*(v9 + 20)], v4);
    sub_1E0BA8B78();
    sub_1E0B797D0(v12, type metadata accessor for DERDictionaryItem);
    sub_1E0B797D0(v16, type metadata accessor for der_key);
    return v21;
  }

  return result;
}

uint64_t sub_1E0B7A10C(unsigned __int8 *a1, uint64_t a2)
{
  v84 = a2;
  v78 = type metadata accessor for DERDictionaryItem();
  v3 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1E0BA8A88();
  v5 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78830, &unk_1E0BABD00);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v81 = &v69 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v69 - v13;
  v14 = sub_1E0BA8AE8();
  v85 = *(v14 - 8);
  v15 = *(v85 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v69 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v69 - v22;
  v24 = sub_1E0BA89F8();
  v89 = *(v24 - 8);
  v25 = *(v89 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v69 - v29;
  v31 = type metadata accessor for der_key();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  v88[0] = v35;
  v36 = v87;
  result = sub_1E0B78C00(v88, 1, v34);
  if (!v36)
  {
    v72 = v21;
    v70 = v18;
    v75 = v34;
    v76 = v28;
    v39 = v84;
    v38 = v85;
    v77 = v30;
    v73 = v23;
    v74 = v14;
    v87 = v24;
    if (v35 == 1)
    {
      _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
      v40 = v39;
    }

    else
    {
      v40 = v84;
      if (v35)
      {
        _s13AppleKeyStore7AKSUUIDV17defaultIdentifier17SwiftASN1Internal0hF0VvgZ_0();
      }

      else
      {
        sub_1E0BA89E8();
      }
    }

    v41 = sub_1E0BA8B08();
    v71 = *(v41 - 8);
    v42 = *(v71 + 56);
    v84 = v41;
    v42(v86, 1, 1);
    v43 = v76;
    _s13AppleKeyStore7AKSUUIDV17defaultIdentifier17SwiftASN1Internal0hF0VvgZ_0();
    v44 = sub_1E0BA89B8();
    v45 = *(v89 + 8);
    v89 += 8;
    v45(v43, v87);
    if (v44)
    {
      v46 = (2 * *(v40 + 16)) | 1;

      sub_1E0BA8A58();
      v47 = v72;
      sub_1E0BA8AD8();
      v83 = 0;
      v49 = v47;
      v50 = v86;
      v51 = v87;
    }

    else
    {
      v48 = v81;
      sub_1E0BA8C48();
      (v42)(v48, 0, 1, v84);
      v52 = v48;
      v50 = v86;
      sub_1E0B7A984(v52, v86);
      v53 = (2 * *(v40 + 16)) | 1;

      v54 = v70;
      sub_1E0BA8B68();
      v83 = 0;
      v51 = v87;
      v38 = v85;
      v49 = v54;
    }

    (*(v38 + 32))(v73, v49, v74);
    v55 = v80;
    sub_1E0B84AA4(v50, v80, &qword_1ECE78830, &unk_1E0BABD00);
    v56 = *(v71 + 48);
    v57 = v84;
    v58 = v56(v55, 1, v84);
    sub_1E0B84B0C(v55, &qword_1ECE78830, &unk_1E0BABD00);
    if (v58 == 1)
    {
      goto LABEL_14;
    }

    result = v56(v86, 1, v57);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v59 = v76;
      sub_1E0BA8AF8();
      sub_1E0B84B6C(&qword_1ECE78D18, MEMORY[0x1E69D4E28]);
      v60 = sub_1E0BA8CA8();
      v45(v59, v51);
      if (v60)
      {
LABEL_14:
        v61 = v73;
        v87 = v45;
        v62 = v75;
        v63 = v79;
        sub_1E0B76324(v75, v79, type metadata accessor for der_key);
        v64 = v85;
        v65 = v74;
        (*(v85 + 16))(v63 + *(v78 + 20), v61, v74);
        swift_beginAccess();
        sub_1E0B64850(v63);
        sub_1E0B797D0(v63, type metadata accessor for DERDictionaryItem);
        swift_endAccess();
        (*(v64 + 8))(v61, v65);
        v87(v77, v51);
        sub_1E0B797D0(v62, type metadata accessor for der_key);
        return sub_1E0B84B0C(v86, &qword_1ECE78830, &unk_1E0BABD00);
      }

      sub_1E0B67560();
      swift_allocError();
      *v66 = 10;
      swift_willThrow();
      (*(v85 + 8))(v73, v74);
      v67 = v75;
      v68 = v86;
      v45(v77, v51);
      sub_1E0B797D0(v67, type metadata accessor for der_key);
      return sub_1E0B84B0C(v68, &qword_1ECE78830, &unk_1E0BABD00);
    }
  }

  return result;
}

uint64_t sub_1E0B7A984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78830, &unk_1E0BABD00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_1E0B7A9F4(_BYTE *a1)
{
  v74 = a1;
  v67 = sub_1E0BA8A88();
  v65 = *(v67 - 8);
  v1 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E0BA89F8();
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v62 - v7;
  v9 = sub_1E0BA8B08();
  v70 = *(v9 - 8);
  v10 = *(v70 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v62 - v14;
  v16 = sub_1E0BA8C28();
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DERDictionaryItem();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for der_key();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75[0] = *v74;
  v28 = v76;
  sub_1E0B78C00(v75, 1, v27);
  if (!v28)
  {
    v62 = v13;
    v63 = v8;
    v64 = v15;
    v76 = v19;
    v74 = v16;
    v30 = v72;
    v29 = v73;
    swift_beginAccess();
    v31 = *(v29 + 16);

    sub_1E0B64650(v31, v23);

    v32 = v76;
    sub_1E0BA8C18();
    v33 = *(v20 + 20);
    sub_1E0BA8AE8();
    sub_1E0BA8C08();
    sub_1E0BA8BE8();
    sub_1E0BA8C48();
    v73 = 0;

    v37 = v63;
    sub_1E0BA8AF8();
    _s13AppleKeyStore7AKSUUIDV17defaultIdentifier17SwiftASN1Internal0hF0VvgZ_0();
    v38 = sub_1E0BA89B8();
    v39 = *(v68 + 8);
    v40 = v30;
    v41 = v69;
    v39(v40, v69);
    v39(v37, v41);
    if (v38)
    {
      v42 = v70;
      v43 = v9;
      (*(v70 + 16))(v62, v64, v9);
      v45 = v66;
      v44 = v67;
      v46 = v73;
      sub_1E0BA8BB8();
      v73 = v46;
      if (v46)
      {
        v47 = *(v42 + 8);
        v8 = (v42 + 8);
        v47(v64, v43);
        (*(v71 + 8))(v32, v74);
        v34 = v73;
        sub_1E0B67560();
        swift_allocError();
        *v35 = 25;
        swift_willThrow();
        MEMORY[0x1E12E8B70](v34);
        sub_1E0B797D0(v23, type metadata accessor for DERDictionaryItem);
        sub_1E0B797D0(v27, type metadata accessor for der_key);
        return v8;
      }

      v72 = v27;
      v48 = sub_1E0BA8A68();
      v49 = v52;
      v51 = v53;
      v50 = v54;
      (*(v65 + 8))(v45, v44);
      swift_unknownObjectRetain();
    }

    else
    {
      v72 = v27;
      v48 = sub_1E0BA8BE8();
      v49 = v48 + 32;
      v50 = (2 * *(v48 + 16)) | 1;

      v51 = 0;
      v43 = v9;
    }

    if (v50)
    {
      sub_1E0BA8EA8();
      swift_unknownObjectRetain_n();
      v60 = swift_dynamicCastClass();
      if (!v60)
      {
        swift_unknownObjectRelease();
        v60 = MEMORY[0x1E69E7CC0];
      }

      v61 = *(v60 + 16);

      if (__OFSUB__(v50 >> 1, v51))
      {
        __break(1u);
      }

      else if (v61 == (v50 >> 1) - v51)
      {
        v8 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v57 = v71;
        v56 = v72;
        v58 = v74;
        v59 = v70;
        v32 = v76;
        if (v8)
        {
LABEL_18:
          swift_unknownObjectRelease();
          (*(v59 + 8))(v64, v43);
          (*(v57 + 8))(v32, v58);
          sub_1E0B797D0(v23, type metadata accessor for DERDictionaryItem);
          sub_1E0B797D0(v56, type metadata accessor for der_key);
          return v8;
        }

        v8 = MEMORY[0x1E69E7CC0];
LABEL_17:
        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      swift_unknownObjectRelease_n();
      v32 = v76;
    }

    sub_1E0B726FC(v48, v49, v51, v50);
    v8 = v55;
    v57 = v71;
    v56 = v72;
    v58 = v74;
    v59 = v70;
    goto LABEL_17;
  }

  return v8;
}

uint64_t sub_1E0B7B170()
{
  v2 = v0;
  v3 = sub_1E0BA8C28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0BA8C18();
  swift_beginAccess();
  v10[5] = *(v2 + 16);
  sub_1E0B666F8();
  sub_1E0BA8C08();
  if (v1)
  {
    (*(v4 + 8))(v7, v3);
    sub_1E0B67560();
    swift_allocError();
    *v8 = 22;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v1);
  }

  else
  {
    v2 = sub_1E0BA8BE8();
    (*(v4 + 8))(v7, v3);
  }

  return v2;
}

uint64_t AKSRefKeyParams.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AKSRefKeyParams.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_1E0B7B344(int *a1, char *a2)
{
  v5 = sub_1E0BA8C28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_1E0BA8C18();
  v20 = a2;
  sub_1E0B666F8();
  sub_1E0BA8C08();
  v11 = v2;
  if (v2)
  {
    sub_1E0B67560();
    swift_allocError();
    *v12 = 25;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v2);
  }

  else
  {
    v13 = sub_1E0BA8D18();
    *(v13 + 16) = 0x8000;
    bzero((v13 + 32), 0x8000uLL);
    v20 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78838, &unk_1E0BABD10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E0BABE70;
    *(inited + 32) = v10;
    v19 = 0;
    v15 = sub_1E0BA8BE8();
    v11 = sub_1E0B84FE0(0x2Bu, inited, v15, &v19, &v20);

    if (v11)
    {

      sub_1E0B67560();
      swift_allocError();
      sub_1E0B676C8(v11, v16);
      swift_willThrow();
    }

    else if (v20)
    {
      v11 = v20;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }
  }

  (*(v6 + 8))(v9, v5);
  return v11;
}

unint64_t sub_1E0B7B5D0()
{
  v0 = sub_1E0BA89F8();
  v52 = *(v0 - 8);
  v53 = v0;
  v1 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78D80, &qword_1E0BAE900);
  v4 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v6 = &v46 - v5;
  v7 = sub_1E0BA8A88();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - v12;
  v14 = sub_1E0BA8B08();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v54;
  sub_1E0BA8C48();
  if (v19)
  {
    sub_1E0B67560();
    swift_allocError();
    *v21 = 25;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v19);
  }

  else
  {
    v47 = v11;
    v48 = v13;
    v49 = v15;
    v54 = v14;
    sub_1E0BA89E8();
    v20 = v51;
    sub_1E0BA8C58();
    v46 = v18;
    (*(v52 + 8))(v3, v53);
    v23 = *(v20 + 48);
    v24 = *(v50 + 32);
    v25 = v7;
    v24(v48, v6, v7);
    v26 = v47;
    v24(v47, &v6[v23], v7);
    v30 = sub_1E0BA8A68();
    if (v29)
    {
      v3 = v29;
      v32 = v28;
      v33 = v27;
      sub_1E0BA8EA8();
      swift_unknownObjectRetain_n();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        swift_unknownObjectRelease();
        v34 = MEMORY[0x1E69E7CC0];
      }

      v35 = *(v34 + 16);

      if (__OFSUB__(v3 >> 1, v32))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v35 != (v3 >> 1) - v32)
      {
        goto LABEL_25;
      }

      v3 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v25 = v7;
      if (v3)
      {
        goto LABEL_14;
      }

      v3 = MEMORY[0x1E69E7CC0];
      goto LABEL_13;
    }

    while (1)
    {
      sub_1E0B726FC(v30, v27, v28, v29);
      v3 = v31;
LABEL_13:
      swift_unknownObjectRelease();
LABEL_14:
      v30 = sub_1E0BA8A68();
      if ((v38 & 1) == 0)
      {
        goto LABEL_15;
      }

      v42 = v38;
      v32 = v37;
      v53 = v36;
      sub_1E0BA8EA8();
      swift_unknownObjectRetain_n();
      v43 = swift_dynamicCastClass();
      if (!v43)
      {
        swift_unknownObjectRelease();
        v43 = MEMORY[0x1E69E7CC0];
      }

      v33 = *(v43 + 16);

      if (!__OFSUB__(v42 >> 1, v32))
      {
        break;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      swift_unknownObjectRelease();
      v29 = v3;
      v28 = v32;
      v27 = v33;
      v25 = v7;
    }

    if (v33 != (v42 >> 1) - v32)
    {
      swift_unknownObjectRelease();
      v38 = v42;
      v37 = v32;
      v36 = v53;
      v25 = v7;
LABEL_15:
      sub_1E0B726FC(v30, v36, v37, v38);
      v40 = v49;
      v39 = v50;
      v41 = v54;
      goto LABEL_21;
    }

    v44 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v25 = v7;
    v40 = v49;
    v39 = v50;
    v41 = v54;
    if (v44)
    {
      goto LABEL_22;
    }

LABEL_21:
    swift_unknownObjectRelease();
LABEL_22:
    v45 = *(v39 + 8);
    v45(v26, v25);
    v45(v48, v25);
    (*(v40 + 8))(v46, v41);
  }

  return v3;
}

uint64_t sub_1E0B7BB24@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = sub_1E0BA89F8();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1E0BA8A88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  sub_1E0BA8B88();
  result = sub_1E0BA8B98();
  if (!v1)
  {
    v14 = v18;
    sub_1E0BA8B88();
    sub_1E0BA8B98();
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78D80, &qword_1E0BAE900) + 48);
    v16 = *(v6 + 32);
    v16(v14, v12, v5);
    return (v16)(v14 + v15, v10, v5);
  }

  return result;
}

unint64_t sub_1E0B7BD50(void *a1, uint64_t a2)
{
  v3 = v2;
  v65 = sub_1E0BA8A28();
  v6 = *(v65 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v65);
  v54 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E0BA8AE8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for der_key();
  v13 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DERDictionaryItem();
  v58 = *(v50 - 8);
  v15 = *(v58 + 64);
  v16 = MEMORY[0x1EEE9AC00](v50);
  v51 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v59 = &v45 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v62 = (&v45 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v63 = &v45 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v45 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v66 = &v45 - v27;
  v67 = 0;
  if (!a2 || (swift_beginAccess(), !*(a2 + 16)))
  {
    v56 = 0;
    goto LABEL_43;
  }

  v46 = v6;
  v47 = a1;
  v48 = v10;
  v49 = v9;

  v29 = *(v28 + 16);
  v56 = v28;
  if (!v29)
  {
LABEL_42:
    v9 = v49;
    v10 = v48;
    a1 = v47;
    v6 = v46;
LABEL_43:
    v26 = v53;
    if (qword_1ECE783E8 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_58;
  }

  a1 = v28;
  v9 = 0;
  v6 = 0;
  while (v9 < v29)
  {
    v30 = *(v58 + 72);
    v64 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v61 = v9;
    v31 = a1 + v64 + v30 * v9;
    v9 = v66;
    v32 = sub_1E0B76324(v31, v66, type metadata accessor for DERDictionaryItem);
    v60 = &v45;
    if (!v6)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v67 = v6;
    MEMORY[0x1EEE9AC00](v32);
    *(&v45 - 2) = v9;
    v33 = sub_1E0B66E60(sub_1E0B765CC, (&v45 - 4), v6);
    if (v34)
    {
      v10 = v6[2];
      v35 = v10;
    }

    else
    {
      v35 = v33;
      v10 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_57;
      }

      v57 = v3;
      a1 = v6 + 2;
      v36 = v6[2];
      if (v10 != v36)
      {
        v3 = v64 + v30 * v10;
        while (v10 < v36)
        {
          sub_1E0B76324(v6 + v3, v26, type metadata accessor for DERDictionaryItem);
          sub_1E0B84B6C(&qword_1ECE78818, MEMORY[0x1E69D4E48]);
          v9 = sub_1E0BA8CA8();
          sub_1E0B797D0(v26, type metadata accessor for DERDictionaryItem);
          if ((v9 & 1) == 0)
          {
            if (v10 != v35)
            {
              if (v35 < 0)
              {
                goto LABEL_49;
              }

              a1 = *a1;
              if (v35 >= a1)
              {
                goto LABEL_50;
              }

              v9 = v35 * v30;
              sub_1E0B76324(v6 + v64 + v35 * v30, v63, type metadata accessor for DERDictionaryItem);
              if (v10 >= a1)
              {
                goto LABEL_51;
              }

              a1 = v62;
              sub_1E0B76324(v6 + v3, v62, type metadata accessor for DERDictionaryItem);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_1E0B66F4C(v6);
              }

              sub_1E0B674FC(a1, v6 + v64 + v9);
              if (v10 >= v6[2])
              {
                goto LABEL_52;
              }

              sub_1E0B674FC(v63, v6 + v3);
            }

            ++v35;
          }

          ++v10;
          a1 = v6 + 2;
          v36 = v6[2];
          v3 += v30;
          if (v10 == v36)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        break;
      }

LABEL_14:
      if (v10 < v35)
      {
        goto LABEL_54;
      }

      a1 = v56;
      v3 = v57;
      if (v35 < 0)
      {
        goto LABEL_55;
      }
    }

    v9 = v35;
    if (__OFADD__(v10, v35 - v10))
    {
      goto LABEL_56;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v35 > v6[3] >> 1)
    {
      if (v10 <= v35)
      {
        v38 = v35;
      }

      else
      {
        v38 = v10;
      }

      v6 = sub_1E0B66768(isUniquelyReferenced_nonNull_native, v38, 1, v6);
      v67 = v6;
    }

    sub_1E0B6728C(v35, v10, 0);
    v67 = v6;
    if (v6)
    {
      sub_1E0B76324(v66, v59, type metadata accessor for DERDictionaryItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1E0B66768(0, v6[2] + 1, 1, v6);
      }

      v10 = v6[2];
      v39 = v6[3];
      if (v10 >= v39 >> 1)
      {
        v6 = sub_1E0B66768(v39 > 1, v10 + 1, 1, v6);
      }

      v6[2] = v10 + 1;
      sub_1E0B67494(v59, v6 + v64 + v10 * v30, type metadata accessor for DERDictionaryItem);
      v67 = v6;
    }

    v9 = v61 + 1;
    sub_1E0B797D0(v66, type metadata accessor for DERDictionaryItem);
    v29 = a1[2];
    if (v9 == v29)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  swift_once();
LABEL_44:
  v40 = __swift_project_value_buffer(v52, qword_1ECE78DE0);
  sub_1E0B76324(v40, v26, type metadata accessor for der_key);
  (v6[2])(v54, a1, v65);
  v41 = v55;
  sub_1E0BA8AD8();
  if (v3)
  {
    sub_1E0B797D0(v26, type metadata accessor for der_key);

    sub_1E0B67560();
    swift_allocError();
    *v42 = 25;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v3);
  }

  else
  {
    v43 = v51;
    sub_1E0B67494(v26, v51, type metadata accessor for der_key);
    (*(v10 + 32))(v43 + *(v50 + 20), v41, v9);
    sub_1E0B64850(v43);
    sub_1E0B797D0(v43, type metadata accessor for DERDictionaryItem);
    v9 = v67;
  }

  return v9;
}

uint64_t AKSRefKey.__allocating_init(handle:key_class:key_type:params:)(int *a1, unsigned __int8 *a2, char *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  AKSRefKey.init(handle:key_class:key_type:params:)(a1, a2, a3, a4);
  return v8;
}

uint64_t AKSRefKey.init(handle:key_class:key_type:params:)(int *a1, unsigned __int8 *a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v11 = sub_1E0BA89F8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = *a1;
  v14 = *a2;
  v15 = *a3;
  *(v6 + 24) = xmmword_1E0BAB160;
  *(v6 + 16) = v13;
  if (qword_1ECE78478 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for der_key();
  v17 = __swift_project_value_buffer(v16, qword_1ECE78F90);
  v18 = sub_1E0B7BD50(v17, a4);
  if (v5)
  {
  }

  else
  {
    v24 = v18;
    if (qword_1ECE783F0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v16, qword_1ECE78DF8);
    sub_1E0B64A30(v19, v14);
    if (qword_1ECE78438 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v16, qword_1ECE78ED0);
    sub_1E0B64A30(v20, qword_1E0BAE910[v15]);
    LODWORD(v23) = *(v6 + 16);
    sub_1E0B7B344(&v23, v24);

    _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
    sub_1E0B670F0();
    sub_1E0BA8BA8();

    v22 = *(v6 + 24);
    *(v6 + 24) = v23;
    sub_1E0B836A4(v22);
  }

  return v6;
}

uint64_t AKSRefKey.__allocating_init(handle:blob:)(int *a1)
{
  v2 = swift_allocObject();
  AKSRefKey.init(handle:blob:)(a1);
  return v2;
}

uint64_t AKSRefKey.init(handle:blob:)(int *a1)
{
  v4 = sub_1E0BA89F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *a1;
  *(v1 + 24) = xmmword_1E0BAB160;
  *(v1 + 16) = v6;
  _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
  sub_1E0B670F0();
  sub_1E0BA8BA8();
  if (v2)
  {
    sub_1E0B67560();
    swift_allocError();
    *v7 = 25;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v2);
  }

  else
  {
    v8 = *(v1 + 24);
    *(v1 + 24) = v10;
    sub_1E0B836A4(v8);
  }

  return v1;
}

double AKSRefKey.__allocating_init(handle:)(int *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  *&result = 1;
  *(v2 + 24) = xmmword_1E0BAB160;
  *(v2 + 16) = v3;
  return result;
}

uint64_t AKSRefKey.init(handle:)(int *a1)
{
  v2 = *a1;
  *(v1 + 24) = xmmword_1E0BAB160;
  *(v1 + 16) = v2;
  return v1;
}

uint64_t sub_1E0B7CB38(uint64_t a1, uint64_t a2)
{
  v6 = sub_1E0BA8AE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  if (qword_1ECE78480 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for der_key();
  v15 = __swift_project_value_buffer(v14, qword_1ECE78FA8);
  v16 = sub_1E0B7BD50(v15, a2);
  if (v3)
  {
    return v6;
  }

  v23 = v16;
  if (qword_1ECE785F0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v14, qword_1ECE793F8);
  sub_1E0B64A30(v17, 1);
  if (qword_1ECE783F8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_1ECE78E10);
  result = sub_1E0B64CA0(v18, a1);
  if (*(v2 + 24) != 1)
  {
    v22 = *(v2 + 24);
    sub_1E0B666F8();

    sub_1E0BA8AD8();
    (*(v7 + 32))(v13, v11, v6);
    if (qword_1ECE78450 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v14, qword_1ECE78F18);
    sub_1E0B64F78(v20, v13);
    (*(v7 + 8))(v13, v6);
    LODWORD(v22) = *(v2 + 16);
    v6 = sub_1E0B7B344(&v22, v23);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0B7CEF8(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v3 = sub_1E0BA89F8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E0BA8A88();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E0BA8AE8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v55 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v55 - v22;
  v24 = (2 * *(a1 + 16)) | 1;

  v25 = v63;
  sub_1E0BA8B68();
  if (v25)
  {
    sub_1E0B67560();
    swift_allocError();
    *v26 = 10;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v25);
    return v18;
  }

  v56 = v18;
  v57 = v15;
  v55 = v6;
  v58 = v11;
  v27 = *(v11 + 32);
  v63 = v23;
  v28 = v23;
  v29 = v27;
  v27(v28, v21, v10);
  v30 = v10;
  if (qword_1ECE78468 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for der_key();
  v31 = __swift_project_value_buffer(v18, qword_1ECE78F60);
  v65 = sub_1E0B7BD50(v31, v62);
  v32 = v63;
  if (qword_1ECE783F8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v18, qword_1ECE78E10);
  result = sub_1E0B64F78(v33, v32);
  if (*(v61 + 24) != 1)
  {
    v64 = *(v61 + 24);
    sub_1E0B666F8();

    v35 = v57;
    sub_1E0BA8AD8();
    v62 = 0;
    v36 = v56;
    v29(v56, v35, v30);
    if (qword_1ECE78450 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v18, qword_1ECE78F18);
    v38 = v62;
    sub_1E0B64F78(v37, v36);
    if (v38)
    {
      v39 = *(v58 + 8);
      v39(v36, v30);

      v39(v63, v30);
    }

    else
    {
      v41 = v58 + 8;
      v40 = *(v58 + 8);
      v40(v36, v30);
      LODWORD(v64) = *(v61 + 16);
      sub_1E0B7B344(&v64, v65);
      v42 = v40;
      v62 = v30;

      v43 = v55;
      sub_1E0BA8B88();
      sub_1E0BA8BA8();
      v44 = sub_1E0BA8A68();
      v46 = v45;
      v48 = v47;
      v49 = v43;
      v51 = v50;
      (*(v59 + 8))(v9, v49);
      if (v51)
      {
        v58 = v41;
        sub_1E0BA8EA8();
        swift_unknownObjectRetain_n();
        v53 = swift_dynamicCastClass();
        if (!v53)
        {
          swift_unknownObjectRelease();
          v53 = MEMORY[0x1E69E7CC0];
        }

        v54 = *(v53 + 16);

        if (__OFSUB__(v51 >> 1, v48))
        {
          __break(1u);
        }

        else if (v54 == (v51 >> 1) - v48)
        {
          v18 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!v18)
          {
            swift_unknownObjectRelease();
            v18 = MEMORY[0x1E69E7CC0];
          }

          v42(v63, v62);
          swift_unknownObjectRelease();
          return v18;
        }

        swift_unknownObjectRelease_n();
      }

      sub_1E0B726FC(v44, v46, v48, v51);
      v18 = v52;
      swift_unknownObjectRelease();
      v42(v63, v62);
    }

    return v18;
  }

  __break(1u);
  return result;
}

char *sub_1E0B7D604(uint64_t a1)
{
  v4 = sub_1E0BA8AE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  if (qword_1ECE78470 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for der_key();
  v13 = __swift_project_value_buffer(v12, qword_1ECE78F78);
  result = sub_1E0B7BD50(v13, a1);
  if (!v2)
  {
    v18 = result;
    if (*(v1 + 24) == 1)
    {
      __break(1u);
    }

    else
    {
      v17 = *(v1 + 24);
      sub_1E0B666F8();

      sub_1E0BA8AD8();
      (*(v5 + 32))(v11, v9, v4);
      if (qword_1ECE78450 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v12, qword_1ECE78F18);
      sub_1E0B64F78(v15, v11);
      (*(v5 + 8))(v11, v4);
      LODWORD(v17) = *(v1 + 16);
      sub_1E0B7B344(&v17, v18);
    }
  }

  return result;
}

char *sub_1E0B7D8C4(unsigned __int8 *a1, uint64_t a2)
{
  v6 = sub_1E0BA89F8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1E0BA8AE8();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = *a1;
  if (qword_1ECE78488 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for der_key();
  v17 = __swift_project_value_buffer(v16, qword_1ECE78FC0);
  result = sub_1E0B7BD50(v17, a2);
  if (!v3)
  {
    v24 = result;
    if (qword_1ECE783F0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v16, qword_1ECE78DF8);
    result = sub_1E0B64A30(v19, v15);
    if (*(v2 + 24) == 1)
    {
      __break(1u);
    }

    else
    {
      v23 = *(v2 + 24);
      sub_1E0B666F8();

      sub_1E0BA8AD8();
      (*(v22 + 32))(v14, v12, v8);
      if (qword_1ECE78450 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v16, qword_1ECE78F18);
      sub_1E0B64F78(v20, v14);
      (*(v22 + 8))(v14, v8);
      LODWORD(v23) = *(v2 + 16);
      sub_1E0B7B344(&v23, v24);

      _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
      sub_1E0B670F0();
      sub_1E0BA8BA8();
      v21 = MEMORY[0x18];
      MEMORY[0x18] = v23;
      return sub_1E0B836A4(v21);
    }
  }

  return result;
}

uint64_t sub_1E0B7DD10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E0BA8AE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v34 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;

  sub_1E0BA8B58();
  if (v2)
  {
    sub_1E0B67560();
    swift_allocError();
    *v18 = 10;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v2);
    return v4;
  }

  v35 = v12;
  v36 = v9;
  v37 = v5;
  v19 = *(v5 + 32);
  v20 = v4;
  v19(v17, v15, v4);
  v21 = v17;
  if (qword_1ECE78498 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for der_key();
  v23 = __swift_project_value_buffer(v22, qword_1ECE78FF0);
  v24 = sub_1E0B7BD50(v23, a2);
  v25 = v38;
  v26 = v21;
  v40 = v24;
  if (qword_1ECE785F0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v22, qword_1ECE793F8);
  sub_1E0B64A30(v27, 1);
  if (qword_1ECE783F8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v22, qword_1ECE78E10);
  result = sub_1E0B64F78(v28, v21);
  if (*(v25 + 24) != 1)
  {
    v39 = *(v25 + 24);
    sub_1E0B666F8();

    v30 = v36;
    sub_1E0BA8AD8();
    v31 = v35;
    v19(v35, v30, v20);
    if (qword_1ECE78450 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v22, qword_1ECE78F18);
    sub_1E0B64F78(v32, v31);
    v33 = *(v37 + 8);
    v33(v31, v20);
    LODWORD(v39) = *(v38 + 16);
    v4 = sub_1E0B7B344(&v39, v40);
    v33(v26, v20);

    return v4;
  }

  __break(1u);
  return result;
}

char *sub_1E0B7E210(int *a1, uint64_t a2)
{
  v6 = sub_1E0BA89F8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1E0BA8AE8();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = *a1;
  if (qword_1ECE784B0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for der_key();
  v17 = __swift_project_value_buffer(v16, qword_1ECE79038);
  result = sub_1E0B7BD50(v17, a2);
  if (!v3)
  {
    v24 = v2;
    v27 = result;
    if (qword_1ECE784D8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v16, qword_1ECE790B0);
    result = sub_1E0B64A30(v19, v15);
    if (*(v24 + 24) == 1)
    {
      __break(1u);
    }

    else
    {
      v26 = *(v24 + 24);
      sub_1E0B666F8();

      sub_1E0BA8AD8();
      (*(v25 + 32))(v14, v12, v8);
      if (qword_1ECE78450 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v16, qword_1ECE78F18);
      sub_1E0B64F78(v20, v14);
      (*(v25 + 8))(v14, v8);
      v21 = v24;
      LODWORD(v26) = *(v24 + 16);
      sub_1E0B7B344(&v26, v27);

      *(v21 + 16) = v15;
      _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
      sub_1E0B670F0();
      sub_1E0BA8BA8();
      v22 = *(v24 + 24);
      *(v24 + 24) = v26;
      return sub_1E0B836A4(v22);
    }
  }

  return result;
}

uint64_t sub_1E0B7E638(uint64_t a1, uint64_t a2)
{
  v6 = sub_1E0BA8AE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  if (qword_1ECE784A0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for der_key();
  v15 = __swift_project_value_buffer(v14, qword_1ECE79008);
  v16 = sub_1E0B7BD50(v15, a2);
  if (v3)
  {
    return v6;
  }

  v23 = v16;
  if (qword_1ECE785F0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v14, qword_1ECE793F8);
  sub_1E0B64A30(v17, 1);
  if (qword_1ECE78430 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_1ECE78EB8);
  result = sub_1E0B64CA0(v18, a1);
  if (*(v2 + 24) != 1)
  {
    v22 = *(v2 + 24);
    sub_1E0B666F8();

    sub_1E0BA8AD8();
    (*(v7 + 32))(v13, v11, v6);
    if (qword_1ECE78450 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v14, qword_1ECE78F18);
    sub_1E0B64F78(v20, v13);
    (*(v7 + 8))(v13, v6);
    LODWORD(v22) = *(v2 + 16);
    v6 = sub_1E0B7B344(&v22, v23);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0B7EA68(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v32 = a2;
  v11 = sub_1E0BA8AE8();
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - v17;
  if (*a4 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for der_key();
  v20 = __swift_project_value_buffer(v19, a5);
  v21 = sub_1E0B7BD50(v20, a3);
  if (v6)
  {
    return a4;
  }

  v22 = v5;
  v34 = v21;
  if (qword_1ECE78430 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v19, qword_1ECE78EB8);
  sub_1E0B64CA0(v23, a1);
  if (qword_1ECE783F8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v19, qword_1ECE78E10);
  result = sub_1E0B64CA0(v24, v32);
  v26 = *(v5 + 24);
  if (v26 != 1)
  {
    v33 = v26;
    sub_1E0B666F8();

    sub_1E0BA8AD8();
    v27 = v16;
    v28 = v30;
    (*(v31 + 32))(v18, v27, v30);
    if (qword_1ECE78450 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v19, qword_1ECE78F18);
    sub_1E0B64F78(v29, v18);
    (*(v31 + 8))(v18, v28);
    LODWORD(v33) = *(v22 + 16);
    a4 = sub_1E0B7B344(&v33, v34);

    return a4;
  }

  __break(1u);
  return result;
}

char *sub_1E0B7EDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v75 = a3;
  v80 = sub_1E0BA8A88();
  v78 = *(v80 - 8);
  v6 = *(v78 + 64);
  v7 = MEMORY[0x1EEE9AC00](v80);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v71 - v9;
  v83 = type metadata accessor for DERDictionaryItem();
  v10 = *(*(v83 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v83);
  v82 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v71 - v13;
  v15 = sub_1E0BA89F8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = sub_1E0BA8AE8();
  v18 = *(v17 - 8);
  v85 = v17;
  v86 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v76 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v71 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v81 = &v71 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v84 = &v71 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v71 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v71 - v32;
  if (qword_1ECE786A8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for der_key();
  v35 = __swift_project_value_buffer(v34, qword_1ECE79620);
  result = sub_1E0B7BD50(v35, a2);
  if (v3)
  {
    return result;
  }

  v37 = 0;
  v89 = result;
  if (qword_1ECE78430 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v34, qword_1ECE78EB8);
  sub_1E0B64CA0(v38, a1);
  v39 = *(v87 + 3);
  if (v39 == 1)
  {
    __break(1u);
    goto LABEL_37;
  }

  v88 = *(v87 + 3);
  sub_1E0B666F8();

  sub_1E0BA8AD8();
  v40 = v86;
  v41 = v31;
  v42 = v85;
  (*(v86 + 32))(v33, v41, v85);
  if (qword_1ECE78450 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v34, qword_1ECE78F18);
  sub_1E0B64F78(v43, v33);
  v44 = v33;
  v45 = *(v40 + 8);
  v45(v44, v42);
  LODWORD(v88) = *(v87 + 4);
  sub_1E0B7B344(&v88, v89);

  v74 = v40 + 8;
  v87 = v45;
  _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
  sub_1E0B670F0();
  sub_1E0BA8BA8();
  v46 = v88;
  if (qword_1ECE783F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v34, qword_1ECE78E10);
  sub_1E0B64650(v46, v14);
  v47 = *(v86 + 16);
  v47(v84, &v14[*(v83 + 20)], v85);
  sub_1E0B797D0(v14, type metadata accessor for DERDictionaryItem);
  if (qword_1ECE784A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v34, qword_1ECE79008);
  v48 = v82;
  sub_1E0B64650(v46, v82);

  v49 = v81;
  v50 = v85;
  v47(v81, (v48 + *(v83 + 20)), v85);
  sub_1E0B797D0(v48, type metadata accessor for DERDictionaryItem);
  v47(v24, v84, v50);
  v51 = v79;
  v52 = v80;
  sub_1E0BA8B78();
  v86 = sub_1E0BA8A68();
  v72 = v53;
  v73 = v54;
  v82 = v55;
  v56 = *(v78 + 8);
  v56(v51, v52);
  v47(v76, v49, v50);
  v57 = v77;
  sub_1E0BA8B78();
  v83 = 0;
  v37 = v86;
  v39 = sub_1E0BA8A68();
  a1 = v58;
  v79 = v59;
  v31 = v60;
  v56(v57, v52);
  v24 = v73;
  if (v73)
  {
    sub_1E0BA8EA8();
    swift_unknownObjectRetain_n();
    v63 = swift_dynamicCastClass();
    if (!v63)
    {
      swift_unknownObjectRelease();
      v63 = MEMORY[0x1E69E7CC0];
    }

    v64 = *(v63 + 16);

    if (!__OFSUB__(v24 >> 1, v82))
    {
      if (v64 != (v24 >> 1) - v82)
      {
        goto LABEL_39;
      }

      v62 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v62)
      {
        goto LABEL_25;
      }

      v62 = MEMORY[0x1E69E7CC0];
      goto LABEL_24;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    sub_1E0B726FC(v37, v72, v82, v24);
    v62 = v61;
LABEL_24:
    swift_unknownObjectRelease();
LABEL_25:
    if ((v31 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_27:
      sub_1E0B726FC(v39, a1, v79, v31);
      v66 = v65;
      swift_unknownObjectRelease();
      goto LABEL_34;
    }

    sub_1E0BA8EA8();
    swift_unknownObjectRetain_n();
    v67 = swift_dynamicCastClass();
    if (!v67)
    {
      swift_unknownObjectRelease();
      v67 = MEMORY[0x1E69E7CC0];
    }

    v24 = *(v67 + 16);

    if (!__OFSUB__(v31 >> 1, v79))
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    swift_unknownObjectRelease();
  }

  if (v24 != (v31 >> 1) - v79)
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v66 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v66)
  {
    goto LABEL_35;
  }

  v66 = MEMORY[0x1E69E7CC0];
LABEL_34:
  swift_unknownObjectRelease();
LABEL_35:
  swift_unknownObjectRelease();
  v68 = v85;
  v69 = v87;
  v87(v81, v85);
  result = v69(v84, v68);
  v70 = v75;
  *v75 = v62;
  v70[1] = v66;
  return result;
}

uint64_t sub_1E0B7F86C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v10 = sub_1E0BA8AE8();
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  if (*a3 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for der_key();
  v19 = __swift_project_value_buffer(v18, a4);
  v20 = sub_1E0B7BD50(v19, a2);
  if (v5)
  {
    return a3;
  }

  v21 = v4;
  v32 = v20;
  if (qword_1ECE783F8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v18, qword_1ECE78E10);
  result = sub_1E0B64CA0(v22, a1);
  v24 = *(v4 + 24);
  if (v24 != 1)
  {
    v31 = v24;
    sub_1E0B666F8();

    sub_1E0BA8AD8();
    v25 = v15;
    v26 = v29;
    (*(v30 + 32))(v17, v25, v29);
    if (qword_1ECE78450 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v18, qword_1ECE78F18);
    sub_1E0B64F78(v27, v17);
    (*(v30 + 8))(v17, v26);
    LODWORD(v31) = *(v21 + 16);
    a3 = sub_1E0B7B344(&v31, v32);

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0B7FB8C(uint64_t a1, uint64_t a2)
{
  v6 = sub_1E0BA8AE8();
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v48 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v48 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v52 = v48 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v48 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v53 = v48 - v23;
  v24 = sub_1E0BA8C28();
  v25 = *(v24 - 8);
  v56 = v24;
  v57 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v58 = v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECE784A8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for der_key();
  v29 = __swift_project_value_buffer(v28, qword_1ECE79020);
  v30 = sub_1E0B7BD50(v29, a2);
  if (v3)
  {
    return v28;
  }

  v51 = v14;
  v61 = v30;
  result = sub_1E0BA8C18();
  v60 = 0;
  v32 = *(a1 + 24);
  if (v32 == 1)
  {
    __break(1u);
  }

  else
  {
    v59 = v32;
    v33 = sub_1E0B666F8();

    sub_1E0BA8AD8();
    v34 = *(v55 + 32);
    v35 = v53;
    v48[0] = v2;
    v48[1] = v55 + 32;
    v49 = v34;
    v50 = v33;
    v34(v53, v22, v54);
    if (qword_1ECE78450 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v28, qword_1ECE78F18);
    sub_1E0B64F78(v36, v35);
    v59 = v60;
    sub_1E0BA8C08();

    sub_1E0BA8BE8();
    v37 = v54;
    sub_1E0BA8B58();
    v38 = v52;
    v39 = v17;
    v40 = v49;
    v49(v52, v39, v37);
    if (qword_1ECE783F8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v28, qword_1ECE78E10);
    sub_1E0B64F78(v41, v38);
    result = *(v48[0] + 24);
    if (result != 1)
    {
      v59 = *(v48[0] + 24);

      sub_1E0BA8AD8();
      v42 = v36;
      v43 = v51;
      v40(v51, v11, v37);
      sub_1E0B64F78(v42, v43);
      v44 = *(v55 + 8);
      v44(v43, v37);
      LODWORD(v59) = *(v48[0] + 16);
      v45 = sub_1E0B7B344(&v59, v61);
      v46 = v37;
      v47 = v58;
      v28 = v45;

      v44(v52, v46);
      v44(v53, v46);
      (*(v57 + 8))(v47, v56);
      return v28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0B80320()
{
  v2 = v0;
  v3 = sub_1E0BA8C28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E0BA8C18();
  if (*(v2 + 24) == 1)
  {
    __break(1u);
  }

  else
  {
    v10[1] = *(v2 + 24);
    sub_1E0B666F8();
    sub_1E0BA8C08();
    if (v1)
    {
      (*(v4 + 8))(v7, v3);
      sub_1E0B67560();
      swift_allocError();
      *v9 = 22;
      swift_willThrow();
      MEMORY[0x1E12E8B70](v1);
    }

    else
    {
      v2 = sub_1E0BA8BE8();
      (*(v4 + 8))(v7, v3);
    }

    return v2;
  }

  return result;
}

uint64_t sub_1E0B80490()
{
  v2 = v1;
  v3 = sub_1E0BA89F8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E0BA8AE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v31 - v12;
  v13 = type metadata accessor for DERDictionaryItem();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78D88, &qword_1E0BAE908);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v31 - v22;
  v24 = *(v0 + 24);
  if (v24 == 1)
  {
    (*(v7 + 56))(&v31 - v22, 1, 1, v6);
  }

  else
  {
    v25 = qword_1ECE78450;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for der_key();
    __swift_project_value_buffer(v26, qword_1ECE78F18);
    sub_1E0B64650(v24, v16);
    result = sub_1E0B836A4(v24);
    if (v2)
    {
      return result;
    }

    (*(v7 + 16))(v23, &v16[*(v13 + 20)], v6);
    sub_1E0B797D0(v16, type metadata accessor for DERDictionaryItem);
    (*(v7 + 56))(v23, 0, 1, v6);
  }

  sub_1E0B84AA4(v23, v21, &qword_1ECE78D88, &qword_1E0BAE908);
  if ((*(v7 + 48))(v21, 1, v6) == 1)
  {
    sub_1E0B84B0C(v21, &qword_1ECE78D88, &qword_1E0BAE908);
    sub_1E0B67560();
    swift_allocError();
    *v28 = 10;
    swift_willThrow();
  }

  else
  {
    v29 = v32;
    (*(v7 + 32))();
    (*(v7 + 16))(v11, v29, v6);
    _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
    sub_1E0B670F0();
    sub_1E0BA8BC8();
    if (!v2)
    {
      (*(v7 + 8))(v29, v6);
      sub_1E0B84B0C(v23, &qword_1ECE78D88, &qword_1E0BAE908);
      return v33;
    }

    sub_1E0B67560();
    swift_allocError();
    *v30 = 10;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v2);
    (*(v7 + 8))(v29, v6);
  }

  return sub_1E0B84B0C(v23, &qword_1ECE78D88, &qword_1E0BAE908);
}

uint64_t sub_1E0B80920()
{
  v2 = v0;
  v26 = sub_1E0BA8C28();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DERDictionaryItem();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78D88, &qword_1E0BAE908);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v18 = *(v2 + 24);
  if (v18 == 1)
  {
    v19 = sub_1E0BA8AE8();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  else
  {

    sub_1E0B64650(v18, v10);
    sub_1E0B836A4(v18);
    if (v1)
    {
      return v15;
    }

    v25 = *(v7 + 20);
    v19 = sub_1E0BA8AE8();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v17, &v10[v25], v19);
    sub_1E0B797D0(v10, type metadata accessor for DERDictionaryItem);
    (*(v20 + 56))(v17, 0, 1, v19);
  }

  sub_1E0BA8C18();
  sub_1E0B84AA4(v17, v15, &qword_1ECE78D88, &qword_1E0BAE908);
  sub_1E0BA8AE8();
  v21 = *(v19 - 8);
  result = (*(v21 + 48))(v15, 1, v19);
  if (result != 1)
  {
    sub_1E0BA8C08();
    if (v1)
    {
      (*(v21 + 8))(v15, v19);
      sub_1E0B67560();
      v15 = swift_allocError();
      *v23 = 25;
      swift_willThrow();
      MEMORY[0x1E12E8B70](v1);
      (*(v3 + 8))(v6, v26);
      sub_1E0B84B0C(v17, &qword_1ECE78D88, &qword_1E0BAE908);
    }

    else
    {
      (*(v21 + 8))(v15, v19);
      v15 = sub_1E0BA8BE8();
      (*(v3 + 8))(v6, v26);
      sub_1E0B84B0C(v17, &qword_1ECE78D88, &qword_1E0BAE908);
    }

    return v15;
  }

  __break(1u);
  return result;
}

char sub_1E0B80D5C@<W0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for DERDictionaryItem();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E0BA8AE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = sub_1E0B80490();
  if (!v1)
  {
    v16 = v15;
    v22 = a1;
    if (qword_1ECE78438 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for der_key();
    __swift_project_value_buffer(v17, qword_1ECE78ED0);
    sub_1E0B64650(v16, v6);
    v18 = *(v3 + 20);
    v19 = *(v8 + 16);
    v19(v14, &v6[v18], v7);
    sub_1E0B797D0(v6, type metadata accessor for DERDictionaryItem);
    v19(v12, v14, v7);
    sub_1E0BA8B78();
    LOBYTE(v15) = AKSRefKeyType.init(rawValue:)(v24);
    v20 = v23;
    if (v23 == 12)
    {
      __break(1u);
    }

    else
    {
      (*(v8 + 8))(v14, v7);

      *v22 = v20;
    }
  }

  return v15;
}

char *sub_1E0B8103C()
{
  v0 = sub_1E0BA89F8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v47 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E0BA8A88();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DERDictionaryItem();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E0BA8AE8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  v19 = v49;
  v20 = sub_1E0B80490();
  if (v19)
  {
    return v10;
  }

  v43 = v16;
  v44 = v6;
  v45 = v18;
  v46 = v12;
  v49 = v11;
  v21 = v20;
  if (qword_1ECE78430 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for der_key();
  __swift_project_value_buffer(v22, qword_1ECE78EB8);
  sub_1E0B64650(v21, v10);

  v23 = v48;
  v24 = v45;
  v25 = *(v46 + 16);
  v26 = v49;
  v25(v45, &v10[*(v7 + 20)], v49);
  sub_1E0B797D0(v10, type metadata accessor for DERDictionaryItem);
  v25(v43, v24, v26);
  _s13AppleKeyStore7AKSUUIDV17defaultIdentifier17SwiftASN1Internal0hF0VvgZ_0();
  v27 = v44;
  sub_1E0BA8BC8();
  v29 = sub_1E0BA8A68();
  v31 = v30;
  v33 = v32;
  v34 = v27;
  v36 = v35;
  (*(v23 + 8))(v34, v3);
  if ((v36 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1E0BA8EA8();
  swift_unknownObjectRetain_n();
  v38 = swift_dynamicCastClass();
  if (!v38)
  {
    swift_unknownObjectRelease();
    v38 = MEMORY[0x1E69E7CC0];
  }

  v39 = *(v38 + 16);

  if (__OFSUB__(v36 >> 1, v33))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v39 != (v36 >> 1) - v33)
  {
LABEL_16:
    swift_unknownObjectRelease_n();
LABEL_7:
    sub_1E0B726FC(v29, v31, v33, v36);
    v10 = v37;
    swift_unknownObjectRelease();
    (*(v46 + 8))(v45, v49);
    return v10;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v40 = v45;
  v41 = v46;
  if (!v10)
  {
    v42 = v45;
    swift_unknownObjectRelease();
    v40 = v42;
    v10 = MEMORY[0x1E69E7CC0];
  }

  (*(v41 + 8))(v40, v49);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1E0B814E8()
{
  if (qword_1ECE78408 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for der_key();
  __swift_project_value_buffer(v1, qword_1ECE78E40);
  result = sub_1E0B80920();
  if (v0)
  {
    MEMORY[0x1E12E8B70](v0);
    if (qword_1ECE78400 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_1ECE78E28);
    return sub_1E0B80920();
  }

  return result;
}

char *sub_1E0B815C0()
{
  v0 = sub_1E0BA8A88();
  v46 = *(v0 - 8);
  v1 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DERDictionaryItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E0BA8AE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  v16 = v47;
  v17 = sub_1E0B80490();
  if (v16)
  {
    return v15;
  }

  v44 = v9;
  v45 = v13;
  v42 = v3;
  v43 = v8;
  v47 = v15;
  v18 = v17;
  if (qword_1ECE78448 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for der_key();
  __swift_project_value_buffer(v19, qword_1ECE78F00);
  v20 = v7;
  sub_1E0B64650(v18, v7);

  v21 = v47;
  v22 = v45;
  v23 = v43;
  v24 = *(v44 + 16);
  v24(v47, v20 + *(v4 + 20), v43);
  sub_1E0B797D0(v20, type metadata accessor for DERDictionaryItem);
  v24(v22, v21, v23);
  v25 = v42;
  sub_1E0BA8B78();
  v27 = sub_1E0BA8A68();
  v29 = v28;
  v31 = v30;
  v32 = v25;
  v34 = v33;
  (*(v46 + 8))(v32, v0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1E0BA8EA8();
  swift_unknownObjectRetain_n();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = MEMORY[0x1E69E7CC0];
  }

  v37 = *(v36 + 16);

  if (__OFSUB__(v34 >> 1, v31))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v37 != (v34 >> 1) - v31)
  {
LABEL_16:
    swift_unknownObjectRelease_n();
LABEL_7:
    sub_1E0B726FC(v27, v29, v31, v34);
    v15 = v35;
    swift_unknownObjectRelease();
    (*(v44 + 8))(v21, v43);
    return v15;
  }

  v15 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v38 = v43;
  v39 = v44;
  if (!v15)
  {
    v40 = v43;
    swift_unknownObjectRelease();
    v38 = v40;
    v21 = v47;
    v15 = MEMORY[0x1E69E7CC0];
  }

  (*(v39 + 8))(v21, v38);
  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_1E0B81A10()
{
  v1 = type metadata accessor for DERDictionaryItem();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E0BA8AE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  result = sub_1E0B80490();
  if (!v0)
  {
    v14 = result;
    if (qword_1ECE78440 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for der_key();
    __swift_project_value_buffer(v15, qword_1ECE78EE8);
    sub_1E0B64650(v14, v4);

    v16 = *(v6 + 16);
    v16(v12, &v4[*(v1 + 20)], v5);
    sub_1E0B797D0(v4, type metadata accessor for DERDictionaryItem);
    v16(v10, v12, v5);
    sub_1E0BA8B78();
    (*(v6 + 8))(v12, v5);
    return v17[3];
  }

  return result;
}

char sub_1E0B81CBC@<W0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for DERDictionaryItem();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E0BA8AE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = sub_1E0B80490();
  if (!v1)
  {
    v16 = v15;
    v22 = a1;
    if (qword_1ECE783F0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for der_key();
    __swift_project_value_buffer(v17, qword_1ECE78DF8);
    sub_1E0B64650(v16, v6);
    v18 = *(v3 + 20);
    v19 = *(v8 + 16);
    v19(v14, &v6[v18], v7);
    sub_1E0B797D0(v6, type metadata accessor for DERDictionaryItem);
    v19(v12, v14, v7);
    sub_1E0BA8B78();
    LOBYTE(v15) = AKSKeyClass.init(rawValue:)(v24);
    v20 = v23;
    if (v23 == 21)
    {
      __break(1u);
    }

    else
    {
      (*(v8 + 8))(v14, v7);

      *v22 = v20;
    }
  }

  return v15;
}

uint64_t sub_1E0B81F9C@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DERDictionaryItem();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E0BA8AE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - v13;
  result = sub_1E0B80490();
  if (!v1)
  {
    v16 = result;
    if (qword_1ECE785F8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for der_key();
    __swift_project_value_buffer(v17, qword_1ECE79410);
    sub_1E0B64650(v16, v6);

    v18 = *(v8 + 16);
    v18(v14, &v6[*(v3 + 20)], v7);
    sub_1E0B797D0(v6, type metadata accessor for DERDictionaryItem);
    v18(v12, v14, v7);
    sub_1E0BA8B78();
    result = (*(v8 + 8))(v14, v7);
    *a1 = v19[1];
  }

  return result;
}

char *sub_1E0B82248()
{
  v2 = sub_1E0BA8AE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  if (qword_1ECE784B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for der_key();
  v11 = __swift_project_value_buffer(v10, qword_1ECE79050);
  result = sub_1E0B7BD50(v11, 0);
  if (!v1)
  {
    v16 = result;
    if (*(v0 + 24) == 1)
    {
      __break(1u);
    }

    else
    {
      v15 = *(v0 + 24);
      sub_1E0B666F8();

      sub_1E0BA8AD8();
      (*(v3 + 32))(v9, v7, v2);
      if (qword_1ECE78450 != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v10, qword_1ECE78F18);
      sub_1E0B64F78(v13, v9);
      (*(v3 + 8))(v9, v2);
      LODWORD(v15) = *(v0 + 16);
      sub_1E0B7B344(&v15, v16);
    }
  }

  return result;
}

uint64_t AKSRefKey.deinit()
{
  sub_1E0B836A4(*(v0 + 24));
  v1 = *(v0 + 32);

  return v0;
}

uint64_t AKSRefKey.__deallocating_deinit()
{
  sub_1E0B836A4(*(v0 + 24));
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t AKSRefKeyCreateAndEncrypt(handle:key_class:key_type:data:params:)(int *a1, unsigned __int8 *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1E0BA89F8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = *a1;
  v14 = *a2;
  v15 = *a3;
  type metadata accessor for AKSRefKey();
  v16 = swift_allocObject();
  *(v16 + 24) = xmmword_1E0BAB160;
  *(v16 + 16) = v13;
  if (qword_1ECE78460 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for der_key();
  v18 = __swift_project_value_buffer(v17, qword_1ECE78F48);
  v19 = sub_1E0B7BD50(v18, a5);
  if (v5)
  {
  }

  else
  {
    v26 = v19;
    if (qword_1ECE783F0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v17, qword_1ECE78DF8);
    sub_1E0B64A30(v20, v14);
    if (qword_1ECE78438 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v17, qword_1ECE78ED0);
    sub_1E0B64A30(v21, qword_1E0BAE910[v15]);
    if (qword_1ECE783F8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v17, qword_1ECE78E10);
    sub_1E0B64CA0(v22, a4);
    LODWORD(v25) = *(v16 + 16);
    sub_1E0B7B344(&v25, v26);

    sub_1E0B7B5D0();

    _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
    sub_1E0B670F0();
    sub_1E0BA8BA8();
    v24 = *(v16 + 24);
    *(v16 + 24) = v25;
    sub_1E0B836A4(v24);
  }

  return v16;
}

uint64_t AKSRefKeyCreateAndWrap(handle:key_class:key_type:data:params:)(int *a1, unsigned __int8 *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1E0BA89F8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = *a1;
  v14 = *a2;
  v15 = *a3;
  type metadata accessor for AKSRefKey();
  v16 = swift_allocObject();
  *(v16 + 24) = xmmword_1E0BAB160;
  *(v16 + 16) = v13;
  if (qword_1ECE78658 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for der_key();
  v18 = __swift_project_value_buffer(v17, qword_1ECE79530);
  v19 = sub_1E0B7BD50(v18, a5);
  if (v5)
  {
  }

  else
  {
    v26 = v19;
    if (qword_1ECE783F0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v17, qword_1ECE78DF8);
    sub_1E0B64A30(v20, v14);
    if (qword_1ECE78438 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v17, qword_1ECE78ED0);
    sub_1E0B64A30(v21, qword_1E0BAE910[v15]);
    if (qword_1ECE783F8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v17, qword_1ECE78E10);
    sub_1E0B64CA0(v22, a4);
    LODWORD(v25) = *(v16 + 16);
    sub_1E0B7B344(&v25, v26);

    sub_1E0B7B5D0();

    _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
    sub_1E0B670F0();
    sub_1E0BA8BA8();
    v24 = *(v16 + 24);
    *(v16 + 24) = v25;
    sub_1E0B836A4(v24);
  }

  return v16;
}

uint64_t AKSSystemKeyAttest(type:generation:ref_key:params:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v8 = sub_1E0BA8AE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = *(a3 + 24);
  if (v16 == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = &v28 - v15;
    v18 = *a1;
    v19 = *a2;
    v32 = v16;
    sub_1E0B666F8();

    sub_1E0BA8AD8();
    if (v4)
    {
      sub_1E0B67560();
      swift_allocError();
      *v20 = 25;
      swift_willThrow();
      MEMORY[0x1E12E8B70](v4);
    }

    else
    {
      v29 = v18;
      v21 = v17;
      (*(v9 + 32))(v17, v13, v8);
      if (qword_1ECE78510 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for der_key();
      v23 = __swift_project_value_buffer(v22, qword_1ECE79158);
      v32 = sub_1E0B7BD50(v23, v30);
      if (qword_1ECE78450 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v22, qword_1ECE78F18);
      sub_1E0B64F78(v24, v17);
      v25 = v29;
      if (qword_1ECE78538 != -1)
      {
        swift_once();
      }

      v26 = __swift_project_value_buffer(v22, qword_1ECE791D0);
      sub_1E0B64A30(v26, v25 + 1);
      if (qword_1ECE78558 != -1)
      {
        swift_once();
      }

      v27 = __swift_project_value_buffer(v22, qword_1ECE79230);
      sub_1E0B64A30(v27, v19 + 1);
      if (qword_1ECE783D8 != -1)
      {
        swift_once();
      }

      v31 = dword_1ECE78C74;
      v17 = sub_1E0B7B344(&v31, v32);
      (*(v9 + 8))(v21, v8);
    }

    return v17;
  }

  return result;
}

char *AKSSystemKeyOperate(type:operation:params:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a2;
  if (qword_1ECE78528 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for der_key();
  v8 = __swift_project_value_buffer(v7, qword_1ECE791A0);
  result = sub_1E0B7BD50(v8, a3);
  if (!v3)
  {
    v13 = result;
    if (qword_1ECE78538 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v7, qword_1ECE791D0);
    sub_1E0B64A30(v10, v5 + 1);
    if (qword_1ECE78560 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v7, qword_1ECE79248);
    sub_1E0B64A30(v11, v6 + 1);
    if (qword_1ECE783D8 != -1)
    {
      swift_once();
    }

    v12 = dword_1ECE78C74;
    sub_1E0B7B344(&v12, v13);
  }

  return result;
}

uint64_t sub_1E0B83250(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *a2;
  if (*a4 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for der_key();
  v11 = __swift_project_value_buffer(v10, a5);
  v12 = sub_1E0B7BD50(v11, a3);
  if (!v5)
  {
    v17 = v12;
    if (qword_1ECE78538 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v10, qword_1ECE791D0);
    sub_1E0B64A30(v13, v8 + 1);
    if (qword_1ECE78558 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v10, qword_1ECE79230);
    sub_1E0B64A30(v14, v9 + 1);
    if (qword_1ECE783D8 != -1)
    {
      swift_once();
    }

    v16 = dword_1ECE78C74;
    v10 = sub_1E0B7B344(&v16, v17);
  }

  return v10;
}

char *sub_1E0B83480(unsigned __int8 *a1, unsigned __int8 *a2, char *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *a2;
  if (*a5 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for der_key();
  v13 = __swift_project_value_buffer(v12, a6);
  v14 = sub_1E0B7BD50(v13, a4);
  if (!v6)
  {
    v20 = v14;
    if (qword_1ECE78538 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v12, qword_1ECE791D0);
    sub_1E0B64A30(v15, v10 + 1);
    if (qword_1ECE78558 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v12, qword_1ECE79230);
    sub_1E0B64A30(v16, v11 + 1);
    if (qword_1ECE783F8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v12, qword_1ECE78E10);
    sub_1E0B64CA0(v17, a3);
    if (qword_1ECE783D8 != -1)
    {
      swift_once();
    }

    v19 = dword_1ECE78C74;
    a3 = sub_1E0B7B344(&v19, v20);
  }

  return a3;
}

uint64_t sub_1E0B836A4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1E0B836DC()
{
  result = qword_1ECE78D20;
  if (!qword_1ECE78D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D20);
  }

  return result;
}

unint64_t sub_1E0B83734()
{
  result = qword_1ECE78D28;
  if (!qword_1ECE78D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D28);
  }

  return result;
}

unint64_t sub_1E0B837BC()
{
  result = qword_1ECE78D40;
  if (!qword_1ECE78D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D40);
  }

  return result;
}

uint64_t sub_1E0B83840(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1E0B83898()
{
  result = qword_1ECE78D58;
  if (!qword_1ECE78D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D58);
  }

  return result;
}

unint64_t sub_1E0B838F0()
{
  result = qword_1ECE78D60;
  if (!qword_1ECE78D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D60);
  }

  return result;
}

unint64_t sub_1E0B83948()
{
  result = qword_1ECE78D68;
  if (!qword_1ECE78D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D68);
  }

  return result;
}

unint64_t sub_1E0B839A0()
{
  result = qword_1ECE78D70;
  if (!qword_1ECE78D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D70);
  }

  return result;
}

unint64_t sub_1E0B839F8()
{
  result = qword_1ECE78D78;
  if (!qword_1ECE78D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D78);
  }

  return result;
}

unint64_t sub_1E0B83A50()
{
  result = qword_1ECE77A58;
  if (!qword_1ECE77A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE77A58);
  }

  return result;
}

unint64_t sub_1E0B83AA8()
{
  result = qword_1ECE77A50;
  if (!qword_1ECE77A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE77A50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSRefKeyParam(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSRefKeyParam(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSSystemKeyType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSSystemKeyType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E0B83DAC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E0B83E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSKeyClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSKeyClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSRefKeyType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AKSRefKeyType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E0B84388(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E0B843D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E0B84AA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E0B84B0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E0B84B6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E0B84BE4()
{
  v0 = sub_1E0BA8D38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E0BA8D58();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1E0BA8C78();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E0B852DC();
  sub_1E0BA8C68();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1E0B85328();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78DA8, &qword_1E0BAE990);
  sub_1E0B85380();
  sub_1E0BA8D98();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8098], v0);
  result = sub_1E0BA8D68();
  qword_1ECE79650 = result;
  return result;
}

void sub_1E0B84DEC()
{
  v9 = *MEMORY[0x1E69E9840];
  if (!dword_1ECE78D90)
  {
    connect = 0;
    v0 = *MEMORY[0x1E696CD60];
    MatchingService = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IOService:/IOResources/AppleKeyStore");
    if (MatchingService || (v2 = sub_1E0BA8CC8(), v3 = IOServiceMatching((v2 + 32)), , (MatchingService = IOServiceGetMatchingService(v0, v3)) != 0))
    {
      v4 = MatchingService;
      if (!IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &connect))
      {
        if (!IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
        {
          dword_1ECE78D90 = connect;
          IOObjectRelease(v4);
          goto LABEL_8;
        }

        IOServiceClose(connect);
      }

      sub_1E0B67560();
      swift_allocError();
      *v5 = 21;
      swift_willThrow();
      IOObjectRelease(v4);
    }

    else
    {
      sub_1E0B67560();
      swift_allocError();
      *v7 = 21;
      swift_willThrow();
    }
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0B84FE0(uint32_t a1, uint64_t a2, uint64_t a3, char **a4, char **a5)
{
  v6 = v5;
  v34 = *MEMORY[0x1E69E9840];
  v9 = *a4;
  if (*a4)
  {
    v10 = *(v9 + 2);
    if (HIDWORD(v10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v11 = *a4;
  }

  else
  {
    LODWORD(v10) = 0;
    v11 = MEMORY[0x1E69E7CC0];
  }

  outputCnt = v10;
  v12 = *a5;
  if (*a5)
  {
    v13 = *(v12 + 2);
    v14 = *a5;
  }

  else
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
  }

  v32 = v13;
  v15 = qword_1ECE78728;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1ECE79650;
  sub_1E0BA8D48();
  if (v6)
  {

    goto LABEL_38;
  }

  v17 = dword_1ECE78D90;
  if (a2)
  {
    v18 = *(a2 + 16);
    if (!HIDWORD(v18))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  LODWORD(v18) = 0;
LABEL_16:
  inputCnt = v18;
  connection = v17;
  if (a3)
  {
    v19 = *(a3 + 16);
  }

  else
  {
    v19 = 0;
  }

  if (a2)
  {
    v20 = (a2 + 32);
  }

  else
  {
    v20 = 0;
  }

  if (a3)
  {
    v21 = (a3 + 32);
  }

  else
  {
    v21 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1E0B66A34(0, *(v11 + 2), 0, v11);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1E0B66940(0, *(v14 + 2), 0, v14);
  }

  v6 = IOConnectCallMethod(connection, a1, v20, inputCnt, v21, v19, v11 + 4, &outputCnt, v14 + 32, &v32);

  if (v9)
  {

    *a4 = v11;
    if (v12)
    {
      goto LABEL_31;
    }

LABEL_37:

    goto LABEL_38;
  }

  if (!v12)
  {
    goto LABEL_37;
  }

LABEL_31:
  if ((v32 & 0x8000000000000000) != 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  v22 = *(v14 + 2);
  if (v22 < v32)
  {
    goto LABEL_41;
  }

  if (v22 != v32)
  {
    sub_1E0B726FC(v14, (v14 + 32), 0, (2 * v32) | 1);
    v24 = v23;

    v14 = v24;
  }

  *a5 = v14;
LABEL_38:
  v25 = *MEMORY[0x1E69E9840];
  return v6;
}

unint64_t sub_1E0B852DC()
{
  result = qword_1ECE78D98;
  if (!qword_1ECE78D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE78D98);
  }

  return result;
}

unint64_t sub_1E0B85328()
{
  result = qword_1ECE78DA0;
  if (!qword_1ECE78DA0)
  {
    sub_1E0BA8D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78DA0);
  }

  return result;
}

unint64_t sub_1E0B85380()
{
  result = qword_1ECE78DB0;
  if (!qword_1ECE78DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE78DA8, &qword_1E0BAE990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78DB0);
  }

  return result;
}

uint64_t X509PolicySetFlagsForCommonNames(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 104);
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  result = X509CertificateSubjectNameGetCommonName(v2, v6);
  if (!result)
  {
    result = compare_octet_string(&iPhoneCAName, v6);
    if (!result)
    {
      v4 = 3840;
      goto LABEL_13;
    }

    result = compare_octet_string(&CodeSigningCAName, v6);
    if (!result)
    {
      v4 = 0x800000000008;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4AccessoryCAName, v6);
    if (!result)
    {
      v4 = 0x400000000;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4AttestationCAName, v6);
    if (!result)
    {
      v4 = 0x800000000;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4ProvisioningCAName, v6);
    if (!result)
    {
      v4 = 0x1000000000;
LABEL_13:
      *(a1 + 240) |= v4;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void X509PolicySetFlagsForMFI(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 104);
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  if (!X509CertificateSubjectNameGetCommonName(v2, v7))
  {
    if (!compare_octet_string_partial(&MFICommonNamePrefix, v7))
    {
      v6 = 0;
      if (X509CertificateGetNotBefore(a1, &v6))
      {
        goto LABEL_9;
      }

      memset(&v5, 0, sizeof(v5));
      strptime("2006-05-31", "%F", &v5);
      v3 = timegm(&v5);
      if (difftime(v3, v6) >= 0.0)
      {
        goto LABEL_9;
      }

      *(a1 + 240) |= 0x8000000uLL;
    }

    if (!compare_octet_string_partial(&MFi4ProvisioningHostNamePrefix, v7))
    {
      *(a1 + 240) |= 0x1000000000uLL;
    }
  }

LABEL_9:
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t X509PolicySetFlagsForRoots(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 16) == 1)
  {
    v4 = numAppleProdRoots;
    if (numAppleProdRoots)
    {
      if (a2 + 88 <= (a2 + 104))
      {
        v5 = AppleRootSPKIs;
        while (1)
        {
          v6 = v5 + 1;
          v7 = v5 < AppleRootSPKIs || v6 > &rsaEncryption;
          if (v7 || v5 >= v6)
          {
            break;
          }

          result = compare_octet_string(a2 + 88, *v5);
          if (!result)
          {
            *(a2 + 240) |= 0xD8E30653FFF8uLL;
            goto LABEL_17;
          }

          ++v5;
          if (!--v4)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_50;
    }
  }

LABEL_17:
  v9 = *(v3 + 8);
  if ((v9 & 0x1000000) != 0)
  {
    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &UcrtRootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1000000;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v9 & 0x1C00000000) == 0)
    {
      goto LABEL_28;
    }

    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &MFi4RootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1C00000000;
LABEL_27:
      *(a2 + 240) = v10;
      goto LABEL_28;
    }
  }

  if (*(v3 + 17) == 1)
  {
    result = X509PolicySetFlagsForTestAnchor(v3, a2);
  }

LABEL_28:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1 && numAppleProdRoots < numAppleRoots)
  {
    if (a2 + 88 <= (a2 + 104))
    {
      v11 = &AppleRootSPKIs[numAppleProdRoots];
      v12 = numAppleRoots - numAppleProdRoots;
      while (1)
      {
        v13 = v11 + 1;
        v14 = v11 < AppleRootSPKIs || v13 > &rsaEncryption;
        if (v14 || v11 >= v13)
        {
          break;
        }

        result = compare_octet_string(a2 + 88, *v11);
        if (!result)
        {
          *(a2 + 240) |= 0xD8E30653FFF8uLL;
          goto LABEL_44;
        }

        ++v11;
        if (!--v12)
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_50;
  }

LABEL_44:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1)
  {
    result = a2 + 88;
    if (a2 + 88 <= (a2 + 104))
    {
      result = compare_octet_string(result, &TestAppleRootECCSPKI);
      if (!result)
      {
        *(a2 + 240) |= 0x6400000uLL;
      }

      return result;
    }

LABEL_50:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509PolicySetFlagsForTestAnchor(void *a1, uint64_t a2)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  if (a2 + 88 > (a2 + 104))
  {
    __break(0x5519u);
  }

  result = X509CertificateParseSPKI((a2 + 88), v7, 0, v6);
  if (!result)
  {
    result = compare_octet_string(a1[4], v7);
    if (!result)
    {
      result = compare_octet_string(a1[3], v6);
      if (!result)
      {
        *(a2 + 240) |= a1[1];
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

int *find_digest(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = &digests[v2 / 4 + 2];
    if (result > &digests[v2 / 4 + 6])
    {
      __break(0x5519u);
      goto LABEL_9;
    }

    result = compare_octet_string_raw(result, *a1, *(a1 + 8));
    if (!result)
    {
      break;
    }

    v2 += 32;
    if (v2 == 160)
    {
      return 0;
    }
  }

  if (v2 <= ~digests)
  {
    return &digests[v2 / 4];
  }

LABEL_9:
  __break(0x5513u);
  return result;
}

int *find_digest_by_type(int *result)
{
  v1 = 0;
  while (digests[v1 / 4] != result)
  {
    v1 += 32;
    if (v1 == 160)
    {
      return 0;
    }
  }

  if (v1 <= ~digests)
  {
    return &digests[v1 / 4];
  }

  __break(0x5513u);
  return result;
}

uint64_t find_digestOID_for_signingOID(uint64_t a1, void *a2)
{
  if (!compare_octet_string_raw(a1, &sha1WithRSA_oid, 9uLL) || !compare_octet_string_raw(a1, &sha1WithECDSA_oid, 7uLL))
  {
    v6 = &CTOidSha1;
    v4 = 5;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha256WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha256;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha256WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha256;
LABEL_18:
    v4 = 9;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha384WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha384WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_18;
  }

  v4 = 9;
  if (compare_octet_string_raw(a1, &sha512WithRSA_oid, 9uLL))
  {
    if (compare_octet_string_raw(a1, &sha512WithECDSA_oid, 8uLL))
    {
      return 0;
    }

    v6 = &CTOidSha512;
    goto LABEL_18;
  }

  v6 = &CTOidSha512;
LABEL_11:
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

unint64_t validateSignatureRSA(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0;
  if (!result)
  {
    goto LABEL_24;
  }

  if (!a2)
  {
    goto LABEL_24;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    goto LABEL_24;
  }

  if (a5 + 7 > a5 + 9)
  {
    goto LABEL_34;
  }

  v8 = result;
  result = compare_octet_string(&rsaEncryption, (a5 + 7));
  if (result)
  {
    result = validateOIDs(&rsaAlgs, (a5 + 3), (a5 + 7));
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v10 = a5[9];
  v9 = a5[10];
  if (__CFADD__(v10, v9))
  {
    goto LABEL_35;
  }

  if (v10 > v10 + v9)
  {
    goto LABEL_34;
  }

  v25 = a5[9];
  v26 = v10 + v9;
  if (v9)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (__CFADD__(v8, a2))
  {
    goto LABEL_35;
  }

  if (v8 + a2 < v8)
  {
    goto LABEL_34;
  }

  result = ccder_decode_rsa_pub_n();
  if (!result)
  {
LABEL_23:
    v5 = 0;
LABEL_24:
    v15 = *MEMORY[0x1E69E9840];
    return v5 & 1;
  }

  v11 = result;
  if (!(result >> 58))
  {
    v12 = result << 6;
    if (result << 6 >= 0x400)
    {
      v29 = 0xAAAAAAAAAAAAAAAALL;
      v30 = -21846;
      v28 = 6;
      if (&vars0 == 82)
      {
        goto LABEL_35;
      }

      v13 = a5[4];
      LOBYTE(v29) = v13;
      if (&v28 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_35;
      }

      if (v13 < 0xA)
      {
        v14 = a5[3];
        result = __memcpy_chk();
        if (result <= result + v13)
        {
          if (v12 > 0x1068)
          {
            goto LABEL_23;
          }

          result = MEMORY[0x1EEE9AC00](result);
          v18 = (&v24 - 4 * v17);
          v19 = 0;
          *&v20 = 0xAAAAAAAAAAAAAAAALL;
          *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
          do
          {
            v21 = &v18[v19 / 8];
            *v21 = v20;
            *(v21 + 1) = v20;
            v19 += 32;
          }

          while ((v16 & 0x7FFFFFFFFFFFFFE0) != v19);
          if (v18 + 4 <= &v24 && v18 <= v18 + 4)
          {
            *v18 = v11;
            if (ccrsa_import_pub())
            {
              v5 = 0;
            }

            else
            {
              v23 = a5[11];
              v22 = a5[12];
              if (ccrsa_verify_pkcs1v15_allowshortsigs())
              {
                v5 = 0;
                v27 = 0;
              }

              else
              {
                v5 = v27;
              }
            }

            goto LABEL_24;
          }
        }
      }

LABEL_34:
      __break(0x5519u);
LABEL_35:
      __break(0x5513u);
      goto LABEL_36;
    }

    goto LABEL_23;
  }

LABEL_36:
  __break(0x550Cu);
  return result;
}

uint64_t validateOIDs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 1;
  while (v5 < v5 + 16)
  {
    result = compare_octet_string(v5, a2);
    if (result)
    {
      goto LABEL_11;
    }

    if (v5 + 16 > v5 + 32)
    {
      break;
    }

    result = compare_octet_string(v5 + 16, a3);
    if (result)
    {
LABEL_11:
      v7 = v6 < 3;
      v5 += 32;
      if (++v6 != 4)
      {
        continue;
      }
    }

    return v7;
  }

  __break(0x5519u);
  return result;
}

_UNKNOWN **oidForPubKeyLength()
{
  v0 = ccec_x963_import_pub_size();
  is_supported = ccec_keysize_is_supported();
  v2 = &CTOidSECP256r1;
  v3 = &CTOidSECP521r1;
  v4 = &CTOidSECP384r1;
  if (v0 != 384)
  {
    v4 = 0;
  }

  if (v0 != 521)
  {
    v3 = v4;
  }

  if (v0 != 256)
  {
    v2 = v3;
  }

  if (is_supported)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t *validateSignatureEC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  if (!result)
  {
    goto LABEL_31;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    goto LABEL_31;
  }

  v7 = a5 + 72;
  if (a5 + 56 > (a5 + 72))
  {
    goto LABEL_32;
  }

  result = compare_octet_string(&ecPublicKey, a5 + 56);
  if (result)
  {
    result = validateOIDs(&ecAlgs, a5 + 24, a5 + 56);
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (v7 > a5 + 88)
  {
    goto LABEL_32;
  }

  result = ccec_cp_for_oid((a5 + 72));
  if (!result)
  {
LABEL_27:
    v5 = 0;
LABEL_31:
    v19 = *MEMORY[0x1E69E9840];
    return (v5 & 1);
  }

  if (result >= result + 4)
  {
    goto LABEL_32;
  }

  v8 = *result;
  if (*result >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    goto LABEL_33;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_34;
  }

  result = MEMORY[0x1EEE9AC00](result);
  v14 = &v20[-16 * v13];
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 < 0x10)
  {
    goto LABEL_35;
  }

  *v14 = result;
  if (v14 + 2 > v20 || v14 > v14 + 2)
  {
LABEL_32:
    __break(0x5519u);
LABEL_33:
    __break(0x550Cu);
LABEL_34:
    __break(0x5500u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (MEMORY[0x1E12E84F0]())
  {
    goto LABEL_30;
  }

  result = ccec_x963_import_pub_size();
  if (result != 256 || *(a5 + 96) != 64)
  {
    v18 = *(a5 + 88);
    if (ccec_verify())
    {
LABEL_29:
      v21 = 0;
    }

LABEL_30:
    v5 = v21;
    goto LABEL_31;
  }

  if (*(a5 + 88) < 0xFFFFFFFFFFFFFFE0)
  {
    v17 = *(a5 + 88);
    if (!ccec_verify_composite())
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t ccec_cp_for_oid(int **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 != 7)
  {
    if (v1 == 10 && **a1 == 0x33DCE48862A0806 && *(*a1 + 4) == 1793)
    {
      JUMPOUT(0x1E12E84B0);
    }

    return 0;
  }

  v3 = *a1;
  if (**a1 == -2127887098 && *(*a1 + 3) == 570426497)
  {
    JUMPOUT(0x1E12E84C0);
  }

  v5 = *v3;
  v6 = *(v3 + 3);
  if (v5 != -2127887098 || v6 != 587203713)
  {
    return 0;
  }

  return MEMORY[0x1EEE6F3C8]();
}

uint64_t compressECPublicKey(void *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = ccec_cp_for_oid(a2);
  if (!v7)
  {
    result = 655366;
    goto LABEL_19;
  }

  v8 = v7;
  if (v7 >= v7 + 4)
  {
LABEL_20:
    __break(0x5519u);
LABEL_21:
    __break(0x550Cu);
    goto LABEL_22;
  }

  v9 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v9, 3uLL))
  {
    goto LABEL_21;
  }

  v10 = 24 * v9;
  v11 = __CFADD__(v10, 16);
  v12 = v10 + 16;
  if (v11 || v12 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_22:
    __break(0x5500u);
  }

  result = MEMORY[0x1EEE9AC00](v7);
  v16 = &v20[-2 * v15];
  v17 = 0;
  do
  {
    v18 = &v16[v17 / 8];
    *v18 = 0xAAAAAAAAAAAAAAAALL;
    v18[1] = 0xAAAAAAAAAAAAAAAALL;
    v17 += 16;
  }

  while ((v14 & 0xFFFFFFFFFFFFFFF0) != v17);
  if (v14 >= 0x10)
  {
    *v16 = v8;
    if (v16 + 2 <= v20 && v16 <= v16 + 2)
    {
      result = MEMORY[0x1E12E84F0](v8, a1[1], *a1, v16);
      if (result)
      {
LABEL_19:
        v19 = *MEMORY[0x1E69E9840];
        return result;
      }

      if (ccec_compressed_x962_export_pub_size() != a4)
      {
        result = 393220;
        goto LABEL_19;
      }

      if (!a3 || a4)
      {
        result = ccec_compressed_x962_export_pub();
        goto LABEL_19;
      }
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t decompressECPublicKey(uint64_t *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = ccec_cp_for_oid(a2);
  if (!v7)
  {
    v20 = 655366;
    goto LABEL_22;
  }

  if (v7 >= v7 + 4)
  {
LABEL_23:
    __break(0x5519u);
    goto LABEL_24;
  }

  v8 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
LABEL_25:
    __break(0x550Cu);
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_24;
  }

  result = MEMORY[0x1EEE9AC00](v7);
  v15 = &v24[-2 * v14];
  v16 = 0;
  do
  {
    v17 = &v15[v16 / 8];
    *v17 = 0xAAAAAAAAAAAAAAAALL;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 += 16;
  }

  while ((v13 & 0xFFFFFFFFFFFFFFF0) != v16);
  if (v13 >= 0x10)
  {
    *v15 = result;
    if (v15 + 2 <= v24 && v15 <= v15 + 2)
    {
      v19 = *a1;
      v18 = a1[1];
      v20 = ccec_compressed_x962_import_pub();
      if (!v20)
      {
        v21 = *v15;
        v22 = cczp_bitlen();
        if (v22 < 0xFFFFFFFFFFFFFFF9)
        {
          if (!a3 || a4)
          {
            if ((((v22 + 7) >> 2) | 1) == a4)
            {
              v20 = 0;
            }

            else
            {
              v20 = 393220;
            }

            ccec_export_pub();
            goto LABEL_22;
          }

          goto LABEL_23;
        }

LABEL_24:
        __break(0x5500u);
        goto LABEL_25;
      }

LABEL_22:
      v23 = *MEMORY[0x1E69E9840];
      return v20;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

unint64_t CTCopyDeviceIdentifiers(unint64_t result, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = 327696;
  if (!result || !a2)
  {
LABEL_10:
    v7 = *MEMORY[0x1E69E9840];
    return v3;
  }

  v13 = 0;
  v14[0] = 0;
  v12 = 0;
  if (__CFADD__(result, a2))
  {
    __break(0x5513u);
  }

  else if (result + a2 >= result)
  {
    v11[0] = result;
    v11[1] = result + a2;
    v5 = CTConvertDashTerminatedHexstringTo64BitInteger(v11, v14);
    v6 = 327697;
    if (!v5 && !HIDWORD(v14[0]))
    {
      if (CTConvertDashTerminatedHexstringTo64BitInteger(v11, &v13))
      {
        v6 = 327698;
      }

      else
      {
        v8 = CTConvertDashTerminatedHexstringTo64BitInteger(v11, &v12);
        v6 = 327699;
        if (!v8)
        {
          v9 = v12;
          if (v12 <= 0xFF)
          {
            v6 = 0;
            if (a3)
            {
              v10 = v13;
              *a3 = v14[0];
              *(a3 + 8) = v10;
              *(a3 + 16) = (v9 & 8) != 0;
              *(a3 + 17) = (v9 & 4) != 0;
              *(a3 + 18) = v9 & 3;
              *(a3 + 24) = 0;
              *(a3 + 32) = 0;
            }
          }
        }
      }
    }

    v3 = v6;
    goto LABEL_10;
  }

  __break(0x5519u);
  return result;
}

uint64_t CTConvertDashTerminatedHexstringTo64BitInteger(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  if (*result > v3)
  {
    goto LABEL_50;
  }

  v4 = result;
  v5 = *result;
  if (*result < v3)
  {
    v5 = *result;
    while (*v5 != 45)
    {
      v6 = v5 + 1;
      if ((v5 + 1) > v3 || v5 > v6)
      {
        goto LABEL_50;
      }

      *result = v6;
      ++v5;
      if (v6 == v3)
      {
        v5 = v3;
        break;
      }
    }
  }

  if (v5 > v3 || v2 > v5)
  {
    goto LABEL_50;
  }

  result = 327708;
  if (v5 == v3)
  {
    return result;
  }

  v7 = v5 - v2;
  if (v5 - v2 > 16)
  {
    return result;
  }

  if (v5 == -1)
  {
    goto LABEL_51;
  }

  v8 = v5 + 1;
  if ((v5 + 1) > v3 || v5 > v8)
  {
LABEL_50:
    __break(0x5519u);
LABEL_51:
    __break(0x5513u);
LABEL_52:
    __break(0x5500u);
    return result;
  }

  v9 = 0;
  *v4 = v8;
  if (v2 >= v5 || (v10 = (v7 + 1 + (((v7 + 1) & 0x8000u) >> 15)) >> 1, v10 < 1))
  {
LABEL_46:
    result = 0;
    if (a2)
    {
      *a2 = v9;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0;
    while (1)
    {
      if (v7 & 1) == 0 || (v11)
      {
        v13 = *v2;
        if (v13 > ~asciiNibbleToByte)
        {
          goto LABEL_51;
        }

        v14 = &asciiNibbleToByte[v13];
        v15 = v14 < &CTOidAppleImg4Manifest && v14 >= asciiNibbleToByte;
        if (!v15)
        {
          goto LABEL_50;
        }

        if (v2 == -1)
        {
          goto LABEL_51;
        }

        if (v2 + 1 > v5 || v2 > v2 + 1)
        {
          goto LABEL_50;
        }

        v12 = *v14;
        ++v2;
      }

      else
      {
        v12 = 0;
      }

      if (v2 >= v5)
      {
        return 327703;
      }

      v16 = *v2;
      if (v16 > ~asciiNibbleToByte)
      {
        goto LABEL_51;
      }

      v17 = &asciiNibbleToByte[v16];
      if (&asciiNibbleToByte[v16] >= &CTOidAppleImg4Manifest || v17 < asciiNibbleToByte)
      {
        goto LABEL_50;
      }

      v19 = v2 + 1;
      if (v2 + 1 > v5 || v2 > v19)
      {
        goto LABEL_50;
      }

      if (v12 > 0xF)
      {
        return 327703;
      }

      v20 = *v17;
      if (v20 > 0xF)
      {
        return 327703;
      }

      v21 = (v20 | (16 * v12)) << (8 * (v10 - 1));
      v15 = __CFADD__(v9, v21);
      v9 += v21;
      if (v15)
      {
        goto LABEL_52;
      }

      if (v19 < v5)
      {
        v11 = 1;
        v22 = v10;
        LOBYTE(v10) = v10 - 1;
        ++v2;
        if (v22 > 1)
        {
          continue;
        }
      }

      goto LABEL_46;
    }
  }

  return result;
}

unint64_t CTEvaluateBAASystemWithId(unint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  v8 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 0, 1, a3, a4, 0, 0, &v8, &v9, X509PolicyBAASystem);
  if (!result)
  {
    result = CTFillBAAIdentity(v8, v9, v10, a5);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t CTFillBAAIdentity(int a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a1 & 0x800000) != 0 && a4)
  {
    result = CTCopyDeviceIdentifiers(a2, a3, a4);
    if (result)
    {
      return result;
    }
  }

  else if (!a4)
  {
    return 0;
  }

  result = 0;
  if (a1 < 0 && a3)
  {
    if (a2)
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      if (a4 + 40 < a4)
      {
        __break(0x5519u);
      }

      else
      {
        result = 0;
        *(a4 + 24) = a2;
        *(a4 + 32) = a3;
      }

      return result;
    }

    return 0;
  }

  return result;
}

unint64_t CTEvaluateBAASystemTestRoot(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  v10 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 1, 1, a5, a6, a3, a4, &v10, &v11, X509PolicyBAASystem);
  if (!result)
  {
    result = CTFillBAAIdentity(v10, v11, v12, a7);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t CTEvaluateBAAUser(unint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  v8 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 0, 1, a3, a4, 0, 0, &v8, &v9, X509PolicyBAAUser);
  if (!result)
  {
    result = CTFillBAAIdentity(v8, v9, v10, a5);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t CTEvaluateBAAUserTestRoot(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  v10 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 1, 1, a5, a6, a3, a4, &v10, &v11, X509PolicyBAAUser);
  if (!result)
  {
    result = CTFillBAAIdentity(v10, v11, v12, a7);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t CTEvaluateBAASepApp(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  v10 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 1, 1, a5, a6, a3, a4, &v10, &v11, X509PolicyBAASepApp);
  if (!result)
  {
    result = CTFillBAAIdentity(v10, v11, v12, a7);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTEvaluateBAAAccessory(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 0, 1, a5, a6, a3, a4, 0, &v13, X509PolicyMFi4Attestation);
  if (!result && a7 && a8)
  {
    v11 = v14;
    *a7 = v13;
    *a8 = v11;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTEvaluateBAA(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, unint64_t a10)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return CTEvaluateBAASepApp(a2, a3, a4, a5, a6, a7, a10);
      }

      return 327712;
    }

    return CTEvaluateBAAAccessory(a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return CTEvaluateBAAUserTestRoot(a2, a3, a4, a5, a6, a7, a10);
      }

      return 327712;
    }

    return CTEvaluateBAASystemTestRoot(a2, a3, a4, a5, a6, a7, a10);
  }
}

uint64_t CTGetBAARootType(unint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_14:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_14;
  }

  v4[0] = a1;
  v4[1] = a1 + a2;
  if (X509CertificateParse(v5, v4))
  {
    result = 0;
  }

  else if (compare_octet_string(&v5[5] + 8, &BASystemRootSPKI))
  {
    if (compare_octet_string(&v5[5] + 8, &BAUserRootSPKI))
    {
      if (compare_octet_string(&v5[5] + 8, &MFi4RootSPKI))
      {
        result = 4 * (compare_octet_string(&v5[5] + 8, &BASepAppRootSPKI) == 0);
      }

      else
      {
        result = 3;
      }
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 1;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTGetBAASubCAType(unint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_14:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_14;
  }

  v4[0] = a1;
  v4[1] = a1 + a2;
  if (X509CertificateParse(v5, v4))
  {
    result = 0;
  }

  else if (compare_octet_string(&v5[10] + 8, &BASystemRootSKID))
  {
    if (compare_octet_string(&v5[10] + 8, &BAUserRootSKID))
    {
      if (compare_octet_string(&v5[10] + 8, &MFi4RootSKID))
      {
        result = 4 * (compare_octet_string(&v5[10] + 8, &BASepAppRootSKID) == 0);
      }

      else
      {
        result = 3;
      }
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 1;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTEvaluateDAK(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a1 + a2;
  if (a1 + a2 < a1)
  {
    goto LABEL_32;
  }

  result = CTEvaluateBAAUserTestRoot(a1, a2, a3, a4, a5, a6, a7);
  if (result)
  {
    goto LABEL_5;
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[17] = v12;
  v29[18] = v12;
  v29[15] = v12;
  v29[16] = v12;
  v29[13] = v12;
  v29[14] = v12;
  v29[11] = v12;
  v29[12] = v12;
  v29[9] = v12;
  v29[10] = v12;
  v29[7] = v12;
  v29[8] = v12;
  v29[5] = v12;
  v29[6] = v12;
  v29[3] = v12;
  v29[4] = v12;
  v29[1] = v12;
  v29[2] = v12;
  v29[0] = v12;
  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_33;
  }

  v18[0] = a1;
  v18[1] = v7;
  result = X509ChainParseCertificateSet(v18, v29, 1, v20, &v19);
  if (result)
  {
    goto LABEL_5;
  }

  if (v20[0] >= v20[0] + 304)
  {
LABEL_32:
    __break(0x5519u);
  }

  if (!v20[0])
  {
    result = 327691;
    goto LABEL_5;
  }

  v27 = 0;
  v28 = 0;
  result = CTParseExtensionValue(*v20[0], *(v20[0] + 8), &CTOidAppleFDRIdentity, 9uLL, &v27, &v28);
  if (result)
  {
LABEL_5:
    v13 = *MEMORY[0x1E69E9840];
    return result;
  }

  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v27, v28))
  {
    goto LABEL_33;
  }

  if (v27 > v27 + v28)
  {
    goto LABEL_32;
  }

  v25 = v27;
  v26 = v27 + v28;
  v24 = v28;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    result = 720929;
    goto LABEL_5;
  }

  if (v26 < v25)
  {
    goto LABEL_32;
  }

  v14 = v24;
  if (v24 > v26 - v25)
  {
    goto LABEL_32;
  }

  v27 = v25;
  v28 = v24;
  if (!__CFADD__(v25, v24))
  {
    v15 = v25;
    if (v25 < v25 + v24)
    {
      do
      {
        if (v15 < v25)
        {
          goto LABEL_32;
        }

        if (*v15 == 45)
        {
          goto LABEL_20;
        }

        ++v15;
        --v14;
      }

      while (v14);
      v15 = (v25 + v24);
    }

LABEL_20:
    if (v15 != -1)
    {
      if ((v15 + 1) >= v25 + v24)
      {
        result = 327711;
        goto LABEL_5;
      }

      if (v25 <= (v15 + 1))
      {
        v23[0] = v15 + 1;
        v23[1] = v25 + v24;
        v21 = 0;
        v22 = 0;
        v16 = CTConvertDashTerminatedHexstringTo64BitInteger(v23, &v22);
        result = 327697;
        if (!v16 && !HIDWORD(v22))
        {
          if (CTConvertDashTerminatedHexstringTo64BitInteger(v23, &v21))
          {
            result = 327698;
          }

          else
          {
            result = 0;
            if (a7)
            {
              v17 = v21;
              *a7 = v22;
              *(a7 + 8) = v17;
            }
          }
        }

        goto LABEL_5;
      }

      goto LABEL_32;
    }
  }

LABEL_33:
  __break(0x5513u);
  return result;
}

uint64_t CMSParseContentInfoSignedDataWithOptions(char *a1, uint64_t a2, unint64_t *a3, char a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_110;
  }

  if (&a1[a2] < a1)
  {
    goto LABEL_108;
  }

  v4 = 65537;
  v28 = a1;
  v29 = &a1[a2];
  v27 = 0;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v7 = ccder_blob_decode_ber_tl(&v28, 0x2000000000000010, &v27 + 1, &v26);
  result = 65537;
  if (v7)
  {
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v28, v26))
    {
      goto LABEL_110;
    }

    if (v28 > &v28[v26] || &v28[v26] > v29)
    {
      goto LABEL_108;
    }

    v24 = v28;
    v25 = &v28[v26];
    if (!ccder_blob_decode_tl())
    {
      result = 65538;
      goto LABEL_13;
    }

    if (v25 < v24 || v26 > v25 - v24)
    {
      goto LABEL_108;
    }

    if (compare_octet_string_raw(&pkcs7_signedData_oid, v24, v26))
    {
      result = 65539;
      goto LABEL_13;
    }

    if (__CFADD__(v24, v26))
    {
      goto LABEL_110;
    }

    if (v24 > &v24[v26] || &v24[v26] > v25)
    {
      goto LABEL_108;
    }

    v24 += v26;
    if (!ccder_blob_decode_ber_tl(&v24, 0xA000000000000000, &v27, &v26))
    {
      result = 65540;
      goto LABEL_13;
    }

    v22 = 0xAAAAAAAAAAAAAAAALL;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v24, v26))
    {
      goto LABEL_110;
    }

    if (v24 > &v24[v26] || &v24[v26] > v25)
    {
      goto LABEL_108;
    }

    v22 = v24;
    v23 = &v24[v26];
    v31 = 0;
    memset(v30, 170, sizeof(v30));
    if ((ccder_blob_decode_ber_tl(&v22, 0x2000000000000010, &v31 + 1, v30) & 1) == 0)
    {
      result = 131073;
      goto LABEL_13;
    }

    if (__CFADD__(v22, v30[0]))
    {
      goto LABEL_110;
    }

    v10 = 131080;
    if (&v22[v30[0]] != v23)
    {
      result = 131082;
      goto LABEL_13;
    }

    if (!ccder_blob_decode_uint64())
    {
      result = 131074;
      goto LABEL_13;
    }

    v11 = a3[11];
    result = 131092;
    if (v11 <= 4 && ((1 << v11) & 0x1A) != 0)
    {
      if (!ccder_blob_eat_ber_inner(&v22, 0x2000000000000011, 0, 125))
      {
        result = 131075;
        goto LABEL_13;
      }

      v35 = 0;
      v34 = 0;
      if ((ccder_blob_decode_ber_tl(&v22, 0x2000000000000010, &v35, &v34) & 1) == 0)
      {
        v10 = 131076;
        goto LABEL_44;
      }

      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0xAAAAAAAAAAAAAAAALL;
      if (__CFADD__(v22, v34))
      {
        goto LABEL_110;
      }

      if (v22 > &v22[v34] || &v22[v34] > v23)
      {
        goto LABEL_108;
      }

      v32 = v22;
      v33 = &v22[v34];
      if (!ccder_blob_decode_tl())
      {
        v10 = 131077;
        goto LABEL_44;
      }

      if (v33 < v32 || v34 > v33 - v32)
      {
        goto LABEL_108;
      }

      if (compare_octet_string_raw(&pkcs7_data_oid, v32, v34))
      {
        v10 = 131078;
LABEL_44:
        result = v10;
        goto LABEL_13;
      }

      if (__CFADD__(v32, v34))
      {
        goto LABEL_110;
      }

      v12 = &v32[v34];
      if (v32 > &v32[v34] || v12 > v33)
      {
        goto LABEL_108;
      }

      v32 += v34;
      v13 = v35;
      if (v12 != v33 || (v35 & 1) != 0)
      {
        v40 = 0;
        v38 = v33;
        v39 = 0;
        v37 = v12;
        if (ccder_blob_decode_ber_tl(&v37, 0xA000000000000000, &v40, &v39))
        {
          if ((v13 & 1) == 0)
          {
            if (__CFADD__(v37, v39))
            {
              goto LABEL_110;
            }

            if (&v37[v39] != v33)
            {
              goto LABEL_44;
            }
          }

          if (v37 > v38)
          {
            goto LABEL_108;
          }

          v32 = v37;
          v33 = v38;
          v36 = 0;
          v16 = v40;
          if (v40 == 1 && !ccder_blob_decode_ber_tl(&v32, 0x2000000000000004, &v36, &v39))
          {
            v10 = 131079;
            goto LABEL_44;
          }

          v41 = 0;
          if (!ccder_blob_decode_tl())
          {
            v10 = 131090;
            goto LABEL_44;
          }

          v17 = v32;
          v18 = v33;
          if (v33 < v32)
          {
            goto LABEL_108;
          }

          v19 = v41;
          if (v41 > v33 - v32)
          {
            goto LABEL_108;
          }

          a3[9] = v32;
          a3[10] = v19;
          if (__CFADD__(v17, v19))
          {
LABEL_110:
            __break(0x5513u);
            goto LABEL_111;
          }

          v20 = &v17[v19];
          if (v20 > v18 || v17 > v20)
          {
            goto LABEL_108;
          }

          v32 = v20;
          if ((ccder_blob_decode_eoc(&v32, v36) & 1) == 0)
          {
            v10 = 131089;
            goto LABEL_44;
          }
        }

        else
        {
          if (!v13)
          {
            goto LABEL_44;
          }

          v16 = v40;
        }

        if ((ccder_blob_decode_eoc(&v32, v16 & 1) & 1) == 0)
        {
          v10 = 131088;
          goto LABEL_44;
        }

        v12 = v32;
      }

      if (v12 > v23 || v22 > v12)
      {
        goto LABEL_108;
      }

      v22 = v12;
      if ((ccder_blob_decode_eoc(&v22, v13) & 1) == 0)
      {
        v10 = 131081;
        goto LABEL_44;
      }

      v37 = 0xAAAAAAAAAAAAAAAALL;
      v38 = 0xAAAAAAAAAAAAAAAALL;
      if (v22 > v23)
      {
        goto LABEL_108;
      }

      v37 = v22;
      v38 = v23;
      if ((ccder_blob_decode_ber_tl(&v37, 0xA000000000000000, &v31, v30) & 1) == 0)
      {
        v14 = v22;
        v15 = v23;
        goto LABEL_85;
      }

      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0xAAAAAAAAAAAAAAAALL;
      if (!__CFADD__(v37, v30[0]))
      {
        if (v37 > &v37[v30[0]] || &v37[v30[0]] > v38)
        {
          goto LABEL_108;
        }

        v32 = v37;
        v33 = &v37[v30[0]];
        if (!CMSParseImplicitCertificateSet(&v32, a3[1], *a3, a3 + 3, a3 + 2))
        {
          result = 131085;
          goto LABEL_13;
        }

        if (!ccder_blob_decode_eoc(&v32, v31))
        {
          result = 131086;
          goto LABEL_13;
        }

        v14 = v32;
        if (v32 >= v37 != v32 - v37 < 0)
        {
          if (v37 > v32)
          {
            goto LABEL_108;
          }

          v15 = v38;
          if (v32 > v38)
          {
            goto LABEL_108;
          }

          v22 = v32;
          v23 = v38;
LABEL_85:
          if (v14 <= v15)
          {
            v37 = v14;
            v38 = v15;
            if (ccder_blob_eat_ber_inner(&v37, 0xA000000000000001, 0, 125))
            {
              if (v37 > v38)
              {
                goto LABEL_108;
              }

              v22 = v37;
              v23 = v38;
            }

            if (!ccder_blob_eat_ber_inner(&v22, 0x2000000000000011, &v30[1], 125))
            {
              result = 131083;
              goto LABEL_13;
            }

            if (v30[2] >= v30[1])
            {
              v21 = &v22[-v30[1]];
              if (&v22[-v30[1]] <= v30[2] - v30[1])
              {
                a3[5] = v30[1];
                a3[6] = v21;
                if ((ccder_blob_decode_eoc(&v22, HIBYTE(v31)) & 1) == 0)
                {
                  result = 131084;
                  goto LABEL_13;
                }

                if (!ccder_blob_decode_eoc(&v22, v27))
                {
                  result = 65541;
                  goto LABEL_13;
                }

                if (v22 <= v25 && v24 <= v22)
                {
                  v24 = v22;
                  if (ccder_blob_decode_eoc(&v24, HIBYTE(v27)))
                  {
                    if ((a4 & 1) == 0 && v24 != v29)
                    {
                      result = 65543;
                      goto LABEL_13;
                    }

LABEL_111:
                    result = 0;
                    goto LABEL_13;
                  }

LABEL_109:
                  result = (v4 + 5);
                  goto LABEL_13;
                }
              }
            }
          }

LABEL_108:
          __break(0x5519u);
          goto LABEL_109;
        }
      }

      goto LABEL_110;
    }
  }

LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ccder_blob_decode_ber_tl(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8 && a2 == 0xAAAAAAAAAAAAAAAALL)
  {
    result = ccder_blob_decode_ber_len(a1, a3, a4);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ccder_blob_decode_eoc(unint64_t *a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_9;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_10:
    v7 = *MEMORY[0x1E69E9840];
    return result;
  }

  v4 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    v5 = v4 - 0x5555555555555556;
    if (v4 <= v4 - 0x5555555555555556 && v5 <= a1[1])
    {
      *a1 = v5;
LABEL_9:
      result = 1;
      goto LABEL_10;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSParseSignerInfos(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __int128 *))
{
  v84 = *MEMORY[0x1E69E9840];
  v82 = 0xAAAAAAAAAAAAAAAALL;
  v83 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (__CFADD__(v4, v3))
  {
    goto LABEL_94;
  }

  if (v4 > v4 + v3)
  {
LABEL_93:
    __break(0x5519u);
LABEL_94:
    __break(0x5513u);
LABEL_95:
    __break(0x5500u);
  }

  v82 = *(a1 + 40);
  v83 = v4 + v3;
  v70 = 0xAAAAAAAAAAAAAAAALL;
  if (v4 >= v4 + v3)
  {
    v48 = 0;
    result = 0;
    if (!v3)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v8 = 0;
  v60 = 0;
  v9 = 196871;
  v10 = 256;
  while (1)
  {
    v69 = 0;
    v80 = 0u;
    v81 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    DWORD2(v81) = 327681;
    LOBYTE(v80) = v8 + 1;
    if ((ccder_blob_decode_ber_tl(&v82, 0x2000000000000010, &v69, &v70) & 1) == 0)
    {
      result = (v9 - 6);
      goto LABEL_84;
    }

    v67 = 0xAAAAAAAAAAAAAAAALL;
    v68 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v82, v70))
    {
      goto LABEL_94;
    }

    if (v82 > v82 + v70 || v82 + v70 > v83)
    {
      goto LABEL_93;
    }

    v67 = v82;
    v68 = v82 + v70;
    if ((ccder_blob_decode_uint64() & 1) == 0)
    {
      result = (v9 - 5);
      goto LABEL_84;
    }

    v11 = v67;
    v12 = v68;
    v65 = 0xAAAAAAAAAAAAAAAALL;
    v66 = 0xAAAAAAAAAAAAAAAALL;
    if (v67 > v68)
    {
      goto LABEL_93;
    }

    v65 = v67;
    v66 = v68;
    v63 = v67;
    v64 = v68;
    if (ccder_blob_decode_tl())
    {
      v13 = v67;
    }

    else
    {
      if (ccder_blob_decode_tl())
      {
        v13 = v65;
        v14 = v66;
      }

      else
      {
        if (!ccder_blob_decode_tl())
        {
          v59 = 196611;
          goto LABEL_92;
        }

        v13 = v63;
        v14 = v64;
      }

      if (v13 > v14)
      {
        goto LABEL_93;
      }

      v67 = v13;
      v68 = v14;
    }

    if (__CFADD__(v70, v13 - v11))
    {
      goto LABEL_95;
    }

    if (v70 + v13 - v11 > v12 - v11)
    {
      goto LABEL_93;
    }

    *(&v71 + 1) = v11;
    *&v72 = v70 + v13 - v11;
    if (__CFADD__(v13, v70))
    {
      goto LABEL_94;
    }

    if (v13 > v13 + v70 || v13 + v70 > v68)
    {
      goto LABEL_93;
    }

    v67 = v13 + v70;
    if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v67, &v72 + 1))
    {
      v59 = 196612;
LABEL_92:
      result = (v59 + v10);
      goto LABEL_84;
    }

    v61 = 0xAAAAAAAAAAAAAAAALL;
    v62 = 0xAAAAAAAAAAAAAAAALL;
    if (v67 > v68)
    {
      goto LABEL_93;
    }

    v61 = v67;
    v62 = v68;
    if (ccder_blob_decode_tl())
    {
      if (v62 < v61 || v70 > v62 - v61)
      {
        goto LABEL_93;
      }

      *(&v73 + 1) = v61;
      *&v74 = v70;
      if (__CFADD__(v61, v70))
      {
        goto LABEL_94;
      }

      if (v61 + v70 > v62 || v61 > v61 + v70)
      {
        goto LABEL_93;
      }

      v67 = v61 + v70;
      v68 = v62;
    }

    else
    {
      *(&v73 + 1) = 0;
      *&v74 = 0;
    }

    if ((ccder_blob_decode_AlgorithmIdentifierNULL(&v67, &v74 + 1) & 1) == 0)
    {
      result = (v9 - 2);
      goto LABEL_84;
    }

    if ((ccder_blob_decode_tl() & 1) == 0)
    {
      result = (v9 - 1);
      goto LABEL_84;
    }

    if (v68 < v67 || v70 > v68 - v67)
    {
      goto LABEL_93;
    }

    *(&v76 + 1) = v67;
    *&v77 = v70;
    if (__CFADD__(v67, v70))
    {
      goto LABEL_94;
    }

    v15 = v67 + v70;
    if (v67 + v70 > v68 || v67 > v15)
    {
      goto LABEL_93;
    }

    v67 += v70;
    v61 = v15;
    v62 = v68;
    if (ccder_blob_eat_ber_inner(&v61, 0xA000000000000001, 0, 125))
    {
      if (v61 > v62)
      {
        goto LABEL_93;
      }

      v67 = v61;
      v68 = v62;
    }

    if (!ccder_blob_decode_eoc(&v67, v69))
    {
      result = v9;
      goto LABEL_84;
    }

    digest = find_digest(&v72 + 8);
    if (!digest)
    {
      goto LABEL_73;
    }

    v17 = digest;
    v18 = *(a1 + 96);
    if (v18)
    {
      if (*digest > v18)
      {
        goto LABEL_73;
      }
    }

    result = a3(a2, a1, &v71);
    if (result == 327710)
    {
      goto LABEL_73;
    }

    if (result)
    {
      goto LABEL_84;
    }

    v20 = *(a1 + 64);
    if (v20 <= v60)
    {
      if (v20)
      {
        v32 = *(a1 + 56);
        v33 = 176 * v60 - 176;
        if (__CFADD__(v32, v33))
        {
          goto LABEL_94;
        }

        v34 = v32 + v33;
        if (v32 + v33 < v32 || v34 + 176 > v32 + 176 * v20 || v34 > v34 + 176 || v34 + 24 > v34 + 40)
        {
          goto LABEL_93;
        }

        v35 = find_digest(v34 + 24);
        if (v35)
        {
          if (*v17 > *v35)
          {
            v36 = *(a1 + 96);
            if (!v36 || *v17 <= v36)
            {
              v37 = *(a1 + 56);
              if (__CFADD__(v37, v33))
              {
                goto LABEL_94;
              }

              v38 = 176 * *(a1 + 64);
              if ((v38 - v33) < 0xB0)
              {
                goto LABEL_93;
              }

              v39 = (v37 + v33);
              if (v37 + v33 > v37 + v38)
              {
                goto LABEL_93;
              }

              if (v37 > v39)
              {
                goto LABEL_93;
              }

              v40 = v71;
              v41 = v73;
              v39[1] = v72;
              v39[2] = v41;
              *v39 = v40;
              v42 = v74;
              v43 = v75;
              v44 = v77;
              v39[5] = v76;
              v39[6] = v44;
              v39[3] = v42;
              v39[4] = v43;
              v45 = v78;
              v46 = v79;
              v47 = v81;
              v39[9] = v80;
              v39[10] = v47;
              v39[7] = v45;
              v39[8] = v46;
              if (v39 >= v39 + 11)
              {
                goto LABEL_93;
              }
            }
          }
        }
      }

      goto LABEL_73;
    }

    v21 = *(a1 + 96);
    if (!v21 || *v17 <= v21)
    {
      break;
    }

LABEL_73:
    if (v67 > v83 || v82 > v67)
    {
      goto LABEL_93;
    }

    v82 = v67;
    v48 = v8 + 1;
    if (v8 <= 6)
    {
      v10 += 256;
      v9 = (v9 + 256);
      ++v8;
      if (v67 < v83)
      {
        continue;
      }
    }

    if (v67 == v83)
    {
      if (v60)
      {
        goto LABEL_81;
      }

      if (!*(a1 + 64))
      {
        goto LABEL_81;
      }

      v49 = *(a1 + 56);
      v50 = v71;
      v51 = v73;
      v49[1] = v72;
      v49[2] = v51;
      *v49 = v50;
      v52 = v74;
      v53 = v75;
      v54 = v77;
      v49[5] = v76;
      v49[6] = v54;
      v49[3] = v52;
      v49[4] = v53;
      v55 = v78;
      v56 = v79;
      v57 = v81;
      v49[9] = v80;
      v49[10] = v57;
      v49[7] = v55;
      v49[8] = v56;
      if (v49 < v49 + 11)
      {
LABEL_81:
        result = 0;
LABEL_84:
        v58 = *MEMORY[0x1E69E9840];
        return result;
      }

      goto LABEL_93;
    }

LABEL_83:
    result = (v48 << 8) + 196616;
    goto LABEL_84;
  }

  v22 = *(a1 + 56);
  if (__CFADD__(v22, 176 * v60))
  {
    goto LABEL_94;
  }

  if (176 * (v20 - v60) < 0xB0)
  {
    goto LABEL_93;
  }

  v23 = (v22 + 176 * v60);
  v24 = v71;
  v25 = v73;
  v23[1] = v72;
  v23[2] = v25;
  *v23 = v24;
  v26 = v74;
  v27 = v75;
  v28 = v77;
  v23[5] = v76;
  v23[6] = v28;
  v23[3] = v26;
  v23[4] = v27;
  v29 = v78;
  v30 = v79;
  v31 = v81;
  v23[9] = v80;
  v23[10] = v31;
  v23[7] = v29;
  v23[8] = v30;
  if (v23 >= v23 + 11)
  {
    goto LABEL_93;
  }

  if (v60 != 0xFF)
  {
    ++v60;
    goto LABEL_73;
  }

  __break(0x5507u);
  return result;
}

uint64_t CMSBuildPath(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v3 = a3[1];
  v4 = a3[2];
  if (__CFADD__(v3, v4))
  {
LABEL_55:
    __break(0x5513u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_54;
  }

  v20 = a3[1];
  v21 = v5;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  if (*a3 == 3)
  {
    if (*(a2 + 88) == 1)
    {
      v8 = 524298;
      goto LABEL_53;
    }

    v18[2] = 0xAAAAAAAAAAAAAAAALL;
    v18[3] = 0xAAAAAAAAAAAAAAAALL;
    v18[0] = v3;
    v18[1] = v5;
    if (ccder_blob_decode_tl())
    {
      v11 = v20;
      v12 = v21;
    }

    else
    {
      if (!ccder_blob_decode_tl() || !ccder_blob_decode_tl())
      {
        v8 = 524294;
        goto LABEL_53;
      }

      v11 = v18[0];
      v12 = v18[1];
      if (v18[0] > v18[1])
      {
        goto LABEL_54;
      }

      v20 = v18[0];
      v21 = v18[1];
    }

    if (v12 < v11 || v19 > v12 - v11)
    {
      goto LABEL_54;
    }

    v18[2] = v11;
    v18[3] = v19;
    if (__CFADD__(v11, v19))
    {
      goto LABEL_55;
    }

    if (v11 + v19 > v12 || v11 > v11 + v19)
    {
      goto LABEL_54;
    }

    v20 = v11 + v19;
    CertificateUsingKeyIdentifier = X509ChainGetCertificateUsingKeyIdentifier((a2 + 24), &v18[2]);
    if (!CertificateUsingKeyIdentifier)
    {
      v8 = 524295;
      goto LABEL_53;
    }

LABEL_38:
    if (v20 != v21)
    {
      v8 = 524543;
      goto LABEL_53;
    }

    if (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && a2 + 24 <= (a2 + 40))
    {
      v13 = a3 + 19;
      v14 = a3 + 21;
      if (v13 <= v14)
      {
        v15 = X509ChainBuildPath(CertificateUsingKeyIdentifier, (a2 + 24), v13);
        v8 = v15;
        if (*v14 == 327681)
        {
          *v14 = v15;
        }

        goto LABEL_53;
      }
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

  if (*a3 == 1)
  {
    v8 = 524290;
    memset(v18, 170, sizeof(v18));
    if (ccder_blob_decode_tl())
    {
      if (ccder_blob_decode_tl())
      {
        if (v21 < v20 || v19 > v21 - v20)
        {
          goto LABEL_54;
        }

        v18[0] = v20;
        v18[1] = v19;
        if (__CFADD__(v20, v19))
        {
          goto LABEL_55;
        }

        if (v20 + v19 > v21 || v20 > v20 + v19)
        {
          goto LABEL_54;
        }

        v20 += v19;
        if (ccder_blob_decode_tl())
        {
          if (v21 < v20 || v19 > v21 - v20)
          {
            goto LABEL_54;
          }

          v18[2] = v20;
          v18[3] = v19;
          if (__CFADD__(v20, v19))
          {
            goto LABEL_55;
          }

          if (v20 + v19 > v21)
          {
            goto LABEL_54;
          }

          if (v20 > v20 + v19)
          {
            goto LABEL_54;
          }

          v20 += v19;
          v9 = (a2 + 24);
          if (a2 + 24 > (a2 + 40))
          {
            goto LABEL_54;
          }

          CertificateUsingKeyIdentifier = *v9;
          if (*v9)
          {
            while (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && CertificateUsingKeyIdentifier + 15 <= CertificateUsingKeyIdentifier + 17)
            {
              if (!compare_octet_string(v18, (CertificateUsingKeyIdentifier + 15)))
              {
                if (CertificateUsingKeyIdentifier + 17 > CertificateUsingKeyIdentifier + 19)
                {
                  goto LABEL_54;
                }

                if (!compare_octet_string(&v18[2], (CertificateUsingKeyIdentifier + 17)))
                {
                  goto LABEL_38;
                }
              }

              CertificateUsingKeyIdentifier = CertificateUsingKeyIdentifier[34];
              if (!CertificateUsingKeyIdentifier)
              {
                goto LABEL_26;
              }
            }

            goto LABEL_54;
          }

LABEL_26:
          v8 = 524293;
        }

        else
        {
          v8 = 524292;
        }
      }

      else
      {
        v8 = 524291;
      }
    }
  }

  else
  {
    v8 = 524289;
  }

LABEL_53:
  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t validateSignerInfo(unint64_t a1, void *a2, uint64_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v3 = (a3 + 24);
  v4 = (a3 + 40);
  if (a3 + 24 > (a3 + 40))
  {
    goto LABEL_183;
  }

  digest = find_digest(a3 + 24);
  if (!digest)
  {
    result = 327682;
    goto LABEL_181;
  }

  v9 = (*(digest + 3))();
  v10 = v9;
  memset(v95, 0, sizeof(v95));
  v11 = a2[13];
  v12 = a2[14];
  if (!v11 || !v12)
  {
    if (a2[9] && a2[10])
    {
      v11 = v95;
      v13 = ccdigest();
      v12 = *v10;
      if (*v10 >= 0x41)
      {
        goto LABEL_183;
      }

      goto LABEL_14;
    }

    if (!v11)
    {
      goto LABEL_144;
    }
  }

  if (*v9 != v12)
  {
LABEL_144:
    *(a3 + 168) = 327710;
    result = 327710;
    goto LABEL_181;
  }

  if (v12 >= 0x41)
  {
    goto LABEL_183;
  }

  v15 = a2[13];
  v16 = a2[14];
  v13 = __memcpy_chk();
  if (v13 > v13 + v12)
  {
    goto LABEL_183;
  }

LABEL_14:
  v17 = a1 + 16;
  *(a3 + 128) = v11;
  *(a3 + 136) = v12;
  v18 = (a3 + 128);
  v19 = *(a3 + 48);
  if (!v19)
  {
    goto LABEL_157;
  }

  if (v17 < a1)
  {
    goto LABEL_183;
  }

  v80 = a1 + 16;
  v81 = v10;
  v89 = 0xAAAAAAAAAAAAAAAALL;
  v90 = 0xAAAAAAAAAAAAAAAALL;
  v20 = *v4;
  if (__CFADD__(*v4, v19))
  {
    goto LABEL_184;
  }

  v21 = &v20[v19];
  if (v20 > v21)
  {
    goto LABEL_183;
  }

  v89 = *v4;
  v90 = v21;
  v88 = 0xAAAAAAAAAAAAAAAALL;
  if (v20 >= v21)
  {
LABEL_145:
    result = 262156;
    goto LABEL_179;
  }

  v22 = 0;
  v23 = 0x96463F78648862ALL;
  v84 = 0x2000000000000010;
  v79 = 262146;
  v83 = 262147;
  v82 = 262148;
  do
  {
    if (!ccder_blob_decode_tl())
    {
      result = 262145;
      goto LABEL_179;
    }

    if (__CFADD__(v89, v88))
    {
      goto LABEL_184;
    }

    v24 = &v89[v88];
    v87 = 0xAAAAAAAAAAAAAAAALL;
    v86 = 0xAAAAAAAAAAAAAAAALL;
    if (v89 > &v89[v88] || v24 > v90)
    {
      goto LABEL_183;
    }

    v86 = v89;
    v87 = &v89[v88];
    if (!ccder_blob_decode_tl())
    {
      result = v79;
      goto LABEL_179;
    }

    v26 = v86;
    if (__CFADD__(v86, v88))
    {
      goto LABEL_184;
    }

    if (&v86[v88] > v87 || v86 > &v86[v88])
    {
      goto LABEL_183;
    }

    v86 += v88;
    if (v88 != 9)
    {
      goto LABEL_147;
    }

    if ((v87 - v26) < 9)
    {
      goto LABEL_183;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 3)
    {
      if (v22)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v37 = ccder_blob_decode_tl();
      result = v83;
      if (v37)
      {
        if (CMSAttributeParseContentType(&v86))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 1u;
      goto LABEL_134;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 4)
    {
      if ((v22 & 2) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v40 = ccder_blob_decode_tl();
      result = v83;
      if (v40)
      {
        if (CMSAttributeParseMessageDigest(&v86, v38, v39, a3))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 2u;
      goto LABEL_134;
    }

    if (*v26 == v23 && v26[8] == 2)
    {
      if ((v22 & 0x10) != 0)
      {
        goto LABEL_149;
      }

      v93 = 0xAAAAAAAAAAAAAAAALL;
      v41 = ccder_blob_decode_tl();
      result = v83;
      if (v41)
      {
        v42 = v86;
        v43 = v87;
        if (v86 >= v87)
        {
LABEL_110:
          if (v42 == v43)
          {
            result = 0;
          }

          else
          {
            result = 262155;
          }
        }

        else
        {
          v78 = a1;
          while (1)
          {
            if (!ccder_blob_decode_tl())
            {
              result = 262157;
              goto LABEL_132;
            }

            v94[0] = 0xAAAAAAAAAAAAAAAALL;
            v94[1] = 0xAAAAAAAAAAAAAAAALL;
            if (__CFADD__(v86, v93))
            {
              goto LABEL_184;
            }

            if (v86 > &v86[v93] || &v86[v93] > v87)
            {
              goto LABEL_183;
            }

            v45 = v23;
            v94[0] = v86;
            v94[1] = &v86[v93];
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              result = 262151;
              goto LABEL_131;
            }

            v91 = 0xAAAAAAAAAAAAAAAALL;
            v92 = 0xAAAAAAAAAAAAAAAALL;
            if (v94[1] < v94[0] || v93 > v94[1] - v94[0])
            {
              goto LABEL_183;
            }

            v91 = v94[0];
            v92 = v93;
            if (__CFADD__(v94[0], v93))
            {
              goto LABEL_184;
            }

            if (v94[0] + v93 > v94[1] || v94[0] > v94[0] + v93)
            {
              goto LABEL_183;
            }

            v94[0] += v93;
            if (!ccder_blob_decode_tl())
            {
              result = 262152;
              goto LABEL_131;
            }

            v46 = v94[0];
            if (__CFADD__(v94[0], v93))
            {
              goto LABEL_184;
            }

            v47 = v94[1];
            v48 = v94[0] + v93;
            if (v94[0] + v93 > v94[1] || v94[0] > v48)
            {
              goto LABEL_183;
            }

            v94[0] += v93;
            if (v48 != v94[1])
            {
              break;
            }

            v49 = find_digest(&v91);
            if (v49)
            {
              v50 = *v49;
              if (*v49 > *(a3 + 104))
              {
                v51 = *(v78 + 8);
                if (!v51 || v50 <= v51)
                {
                  *(a3 + 104) = v50;
                  v52 = v93;
                  if (v93 > v47 - v46)
                  {
                    goto LABEL_183;
                  }

                  *(a3 + 112) = v46;
                  *(a3 + 120) = v52;
                }
              }
            }

            v42 = v94[0];
            v43 = v87;
            if (v94[0] > v87 || v86 > v94[0])
            {
              goto LABEL_183;
            }

            v86 = v94[0];
            v23 = v45;
            if (v94[0] >= v87)
            {
              a1 = v78;
              goto LABEL_110;
            }
          }

          result = 262153;
LABEL_131:
          v23 = v45;
LABEL_132:
          a1 = v78;
        }
      }

      v22 |= 0x10u;
      goto LABEL_134;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 5)
    {
      if ((v22 & 4) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v53 = ccder_blob_decode_tl();
      result = v83;
      if (v53)
      {
        if (CMSAttributeParseSigningTime(&v86))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 4u;
      goto LABEL_134;
    }

    if (*v26 == v23 && v26[8] == 1)
    {
      if ((v22 & 8) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v56 = ccder_blob_decode_tl();
      result = v83;
      if (v56)
      {
        if (CMSAttributeParseAppleHashAgility(&v86, v54, v55, a3))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 8u;
LABEL_134:
      if (result)
      {
        goto LABEL_179;
      }

      goto LABEL_135;
    }

    if (*v26 != 0x9010DF78648862ALL || v26[8] != 52)
    {
      v33 = *v26;
      v34 = v26[8];
      if (v33 != 0x9010DF78648862ALL || v34 != 15)
      {
LABEL_147:
        result = 262150;
        goto LABEL_179;
      }

      if ((v22 & 0x40) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v36 = ccder_blob_decode_tl();
      result = v83;
      if (v36)
      {
        if (CMSAttributeParseSMIMECapabilities(&v86))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 0x40u;
      goto LABEL_134;
    }

    if ((v22 & 0x20) != 0)
    {
LABEL_149:
      result = 262149;
      goto LABEL_179;
    }

    v22 |= 0x20u;
LABEL_135:
    if (v24 > v90 || v89 > v24)
    {
      goto LABEL_183;
    }

    v89 = v24;
  }

  while (v24 < v90);
  if ((~v22 & 3) != 0)
  {
    goto LABEL_145;
  }

  v58 = ccder_sizeof_tag();
  v59 = *(a3 + 48);
  result = ccder_sizeof_len();
  v60 = __CFADD__(v58, result);
  v61 = v58 + result;
  v10 = v81;
  if (v60)
  {
    goto LABEL_185;
  }

  if (v61 > 0x14)
  {
    result = 327689;
    goto LABEL_179;
  }

  memset(v94, 170, 20);
  if (__CFADD__(v94, v61))
  {
LABEL_184:
    __break(0x5513u);
  }

  v91 = v94;
  v92 = v94 + v61;
  result = ccder_blob_encode_tl();
  if (!result)
  {
    result = 327688;
    goto LABEL_179;
  }

  v62 = v81[1];
  v60 = __CFADD__(v62, 8);
  v63 = v62 + 8;
  if (v60 || (v64 = v81[2], v60 = __CFADD__(v63, v64), v65 = v63 + v64, v60) || (v60 = __CFADD__(v65, 4), v66 = v65 + 4, v60) || v66 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_185:
    __break(0x5500u);
    return result;
  }

  MEMORY[0x1EEE9AC00](result);
  v68 = &v77 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v68, 170, ((v69 - 9) & 0xFFFFFFFFFFFFFFF8) + 8);
  ccdigest_init();
  ccdigest_update();
  v71 = *(a3 + 40);
  v70 = *(a3 + 48);
  ccdigest_update();
  v13 = (v10[7])(v10, v68, v95);
  v17 = v80;
LABEL_157:
  if (v17 <= a1)
  {
LABEL_183:
    __break(0x5519u);
    goto LABEL_184;
  }

  result = CMSBuildPath(v13, a2, a3);
  if (result <= 524294)
  {
    if (!result)
    {
      goto LABEL_169;
    }

    if (result != 524293)
    {
      goto LABEL_179;
    }

    goto LABEL_166;
  }

  switch(result)
  {
    case 0x80007:
LABEL_166:
      *(a3 + 168) = result;
      result = 0;
      goto LABEL_181;
    case 0x80009:
      v72 = 524297;
LABEL_168:
      *(a3 + 168) = v72;
      break;
    case 0x80008:
      if (*(a3 + 168) == 458753)
      {
        v72 = 524296;
        goto LABEL_168;
      }

      break;
    default:
      goto LABEL_179;
  }

LABEL_169:
  v73 = *v10;
  if (*v10 > 0x40)
  {
    goto LABEL_183;
  }

  v85[0] = v95;
  v85[1] = v73;
  v74 = *(a3 + 152);
  if (v74 >= v74 + 304)
  {
    goto LABEL_183;
  }

  result = X509CertificateCheckSignatureDigest(29, v74, v85, v3, (a3 + 88));
  if (!result || result == 655648 || result == 655632)
  {
    v75 = *(a3 + 168);
    if (!v75 || v75 == 458753 || v75 == 327681)
    {
      *(a3 + 168) = result;
    }

    result = 0;
  }

LABEL_179:
  if (*v18 == v95)
  {
    *v18 = 0;
    *(a3 + 136) = 0;
  }

LABEL_181:
  v76 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t validateSignerInfoAndChain(uint64_t *a1, void *a2, uint64_t a3)
{
  result = validateSignerInfo(a1, a2, a3);
  v6 = result;
  if (result)
  {
    return v6;
  }

  v7 = (a3 + 152);
  v8 = (a3 + 168);
  if (v7 <= v8)
  {
    v9 = X509ChainCheckPath(29, v7, *a1);
    if (v9)
    {
      if (!*v8)
      {
        *v8 = v9;
      }
    }

    return v6;
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSVerifySignedDataWithLeaf(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v10[1] = *MEMORY[0x1E69E9840];
  result = CMSVerify(a1, a2, a3, a4, a5, a6, a7, &v9, v10);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSVerify(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v33 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31[0] = 0;
  memset(v29, 0, sizeof(v29));
  v27 = 0;
  v26 = 0;
  v24 = 0u;
  v25 = &v24 + 8;
  v31[1] = 0;
  memset(__b, 170, sizeof(__b));
  v23[0] = 4;
  v23[1] = __b;
  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  v28 = v20;
  *&v29[0] = 1;
  DWORD2(v22) = 327681;
  if (a2 < 0)
  {
    goto LABEL_20;
  }

  result = CMSParseContentInfoSignedDataWithOptions(a1, a2, v23, 0);
  if (result)
  {
    goto LABEL_9;
  }

  if (a4)
  {
    result = 131091;
    if (*(v29 + 8) != 0)
    {
      goto LABEL_9;
    }

    if (a4 < 0)
    {
      goto LABEL_20;
    }

    *(&v29[0] + 1) = a3;
    *&v29[1] = a4;
  }

  v31[0] = a5;
  DWORD2(v22) = 458753;
  result = CMSParseSignerInfos(v23, v31, validateSignerInfoAndChain);
  if (result)
  {
    goto LABEL_9;
  }

  result = DWORD2(v22);
  if (DWORD2(v22))
  {
    goto LABEL_9;
  }

  if (a6 && a7)
  {
    if (*(&v21 + 1) < (*(&v21 + 1) + 304))
    {
      result = X509CertificateParseKey(*(&v21 + 1), a6, a7);
      goto LABEL_14;
    }

LABEL_20:
    __break(0x5519u);
  }

LABEL_14:
  if (!a4)
  {
    if (a8)
    {
      if (a9)
      {
        v19 = *&v29[1];
        if (*&v29[1])
        {
          if (*(&v29[0] + 1))
          {
            *a8 = *(&v29[0] + 1);
            *a9 = v19;
          }
        }
      }
    }
  }

LABEL_9:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSVerifySignedData(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0;
  result = CMSVerify(a1, a2, a3, a4, a5, &v7, &v8, &v9, v10);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSVerifyAndReturnSignedData(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8[0] = 0;
  result = CMSVerify(a1, a2, 0, 0, a5, &v7, v8, a3, a4);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ccder_blob_decode_ber_len(uint64_t result, _BYTE *a2, unint64_t *a3)
{
  *a2 = 0;
  v3 = *result;
  if (!*result)
  {
    return 0;
  }

  v4 = *(result + 8);
  if (v3 >= v4)
  {
    return 0;
  }

  if (v3 == -1)
  {
    goto LABEL_48;
  }

  v5 = v3 + 1;
  if (v3 >= v3 + 1 || v5 > v4)
  {
    goto LABEL_47;
  }

  *result = v5;
  v7 = *v3;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = *v3;
  if (v9 > 0x81)
  {
    if (v9 == 130)
    {
      if ((v4 - v5) < 2)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          v10 = v3 + 3;
          if (v5 <= v3 + 3 && v10 <= v4)
          {
            v11 = v3[1] << 8;
            v12 = v3[2];
            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      if (v9 != 131)
      {
        return v8;
      }

      if ((v4 - v5) < 3)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          if (v3 + 3 >= v5 && (v3 + 3) < v4)
          {
            if (v5 > 0xFFFFFFFFFFFFFFFCLL)
            {
              goto LABEL_48;
            }

            v10 = v3 + 4;
            if (v5 <= v3 + 4 && v10 <= v4)
            {
              v11 = (v3[1] << 16) | (v3[2] << 8);
              v12 = v3[3];
LABEL_45:
              v7 = v11 | v12;
              *result = v10;
              goto LABEL_46;
            }
          }
        }
      }
    }

LABEL_47:
    __break(0x5519u);
    goto LABEL_48;
  }

  if (v9 == 128)
  {
    v7 = v4 - v5;
    *a2 = 1;
    goto LABEL_9;
  }

  if (v9 != 129)
  {
    return v8;
  }

  if ((v4 - v5) < 1)
  {
    return 0;
  }

  if (v3 != -2)
  {
    v10 = v3 + 2;
    if (v5 <= v3 + 2 && v10 <= v4)
    {
      *result = v10;
      v7 = *v5;
LABEL_46:
      v5 = v10;
LABEL_9:
      if (v4 - v5 >= v7)
      {
        *a3 = v7;
        return 1;
      }

      return 0;
    }

    goto LABEL_47;
  }

LABEL_48:
  __break(0x5513u);
  return result;
}

uint64_t CMSParseImplicitCertificateSet(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v32[3] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4 || (memset(v32, 170, 24), v6 = *a1, v7 = a1[1], *a1 > v7))
  {
LABEL_48:
    __break(0x5519u);
LABEL_49:
    __break(0x5513u);
  }

  v32[0] = *a1;
  v32[1] = v7;
  if (v6 < v7 && a3 != 0)
  {
    v11 = 0;
    v12 = 304 * a3;
    v13 = a2 + 304 * a3;
    v27 = ~a2;
    v14 = a4 + 1;
    v15 = a2 + 304;
    while (1)
    {
      v31 = 0;
      if (!ccder_blob_decode_tag())
      {
        goto LABEL_46;
      }

      if (!v32[2])
      {
        goto LABEL_9;
      }

      if (!ccder_blob_decode_ber_len(v32, &v31, &v30) || (v31 & 1) != 0 || v32[2] != 0x2000000000000010)
      {
LABEL_46:
        result = 0;
        goto LABEL_47;
      }

      if ((v11 * 304) >> 64 != (304 * v11) >> 63 || 304 * v11 > v27)
      {
        goto LABEL_49;
      }

      v16 = (v15 - 304);
      if (v15 - 304 > v13)
      {
        goto LABEL_48;
      }

      if (v16 < a2)
      {
        goto LABEL_48;
      }

      v17 = v12 >= 0x130;
      v12 -= 304;
      if (!v17)
      {
        goto LABEL_48;
      }

      *(v15 - 32) = 0u;
      *(v15 - 16) = 0u;
      *(v15 - 64) = 0u;
      *(v15 - 48) = 0u;
      *(v15 - 96) = 0u;
      *(v15 - 80) = 0u;
      *(v15 - 128) = 0u;
      *(v15 - 112) = 0u;
      *(v15 - 160) = 0u;
      *(v15 - 144) = 0u;
      *(v15 - 192) = 0u;
      *(v15 - 176) = 0u;
      *(v15 - 224) = 0u;
      *(v15 - 208) = 0u;
      *(v15 - 256) = 0u;
      *(v15 - 240) = 0u;
      *(v15 - 288) = 0u;
      *(v15 - 272) = 0u;
      *v16 = 0u;
      if (v16 > v15)
      {
        goto LABEL_48;
      }

      if (v11)
      {
        if (v15 > v13)
        {
          goto LABEL_48;
        }

        *(v15 - 32) = 0;
        v18 = *v14;
        *(v15 - 24) = *v14;
        if (v16 > v15)
        {
          goto LABEL_48;
        }

        *v18 = v16;
        *v14 = v15 - 32;
        if (v15 != 304)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v15 > v13)
        {
          goto LABEL_48;
        }

        v19 = *a4;
        *(v15 - 32) = *a4;
        v20 = v15 - 32;
        v21 = (v15 - 24);
        if (v19)
        {
          if (v20 > v21)
          {
            goto LABEL_48;
          }

          v22 = (v19 + 280);
        }

        else
        {
          v22 = v14;
          if (v20 > v21)
          {
            goto LABEL_48;
          }
        }

        *v22 = v20;
        if (v16 > v15)
        {
          goto LABEL_48;
        }

        *a4 = v16;
        if (v14 < a4)
        {
          goto LABEL_48;
        }

        *v21 = a4;
        if (v15 != 304)
        {
LABEL_37:
          if (v15 > v13 || v16 > v15)
          {
            goto LABEL_48;
          }
        }
      }

      if (X509CertificateParseImplicit(v15 - 304, v32, 0, 0))
      {
        goto LABEL_46;
      }

      v23 = v32[0];
      v24 = v32[0] - v6;
      if (v32[0] - v6 > v7 - v6)
      {
        goto LABEL_48;
      }

      if (v15 > v13)
      {
        goto LABEL_48;
      }

      *v16 = v6;
      *(v15 - 296) = v24;
      v7 = v32[1];
      if (v23 > v32[1])
      {
        goto LABEL_48;
      }

      *a1 = v23;
      a1[1] = v7;
      ++v11;
      if (v23 < v7)
      {
        v15 += 304;
        v6 = v23;
        if (v11 < a3)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_9:
  if (a5)
  {
    *a5 = v11;
  }

  result = 1;
LABEL_47:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ccder_blob_eat_ber_inner(unint64_t *a1, uint64_t a2, unint64_t *a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (!v8 || v15 != a2)
  {
    goto LABEL_17;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  result = ccder_blob_decode_ber_len(a1, &v16, &v14);
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    v10 = a1[1];
    if (*a1 > v10)
    {
LABEL_18:
      __break(0x5519u);
      goto LABEL_19;
    }

    *a3 = *a1;
    a3[1] = v10;
  }

  if (v16 == 1)
  {
    if (a4 < 1)
    {
      goto LABEL_11;
    }

    result = ccder_blob_eat_ber_inner(a1, 0, 0, (a4 - 1));
    if (!result)
    {
LABEL_17:
      v13 = *MEMORY[0x1E69E9840];
      return result;
    }

    if ((ccder_blob_decode_eoc(a1, 1) & 1) == 0)
    {
LABEL_11:
      result = 0;
      goto LABEL_17;
    }

LABEL_16:
    result = 1;
    goto LABEL_17;
  }

  v11 = *a1;
  if (!__CFADD__(*a1, v14))
  {
    v12 = v11 + v14;
    if (v11 <= v11 + v14 && v12 <= a1[1])
    {
      *a1 = v12;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(0x5513u);
  return result;
}

uint64_t CMSAttributeParseContentType(char **a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    if (v3 - 0x5555555555555556 != a1[1])
    {
      result = 0;
LABEL_7:
      v4 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (v3 <= v3 - 0x5555555555555556)
    {
      result = compare_octet_string_raw(&pkcs7_data_oid, v3, 0xAAAAAAAAAAAAAAAALL) == 0;
      goto LABEL_7;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSAttributeParseMessageDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_16;
  }

  if (*a1 >= 0x5555555555555556uLL)
  {
    __break(0x5513u);
  }

  else
  {
    if (*a1 - 0x5555555555555556 != *(a1 + 8))
    {
      result = 0;
LABEL_16:
      v10 = *MEMORY[0x1E69E9840];
      return result;
    }

    result = a4 + 24;
    if (a4 + 24 <= (a4 + 40))
    {
      result = find_digest(result);
      if (!result)
      {
        goto LABEL_16;
      }

      if (*(a4 + 136) != 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_14;
      }

      result = (*(result + 24))();
      if (*result != 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_14;
      }

      v7 = *(a1 + 8);
      v8 = v7 >= *a1;
      v9 = v7 - *a1;
      if (v8 && *(a4 + 136) >= 0xAAAAAAAAAAAAAAAALL && v9 >= 0xAAAAAAAAAAAAAAAALL)
      {
        if (!memcmp(*(a4 + 128), *a1, 0xAAAAAAAAAAAAAAAALL))
        {
LABEL_15:
          result = 1;
          goto LABEL_16;
        }

LABEL_14:
        *(a4 + 168) = 458754;
        goto LABEL_15;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSAttributeParseSigningTime(unint64_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*a1 > a1[1])
  {
    goto LABEL_10;
  }

  v5 = *a1;
  v6 = a1[1];
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    goto LABEL_7;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_9:
    v4 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = v5;
  if (v5 > v6)
  {
LABEL_10:
    __break(0x5519u);
  }

  *a1 = v5;
  a1[1] = v6;
LABEL_7:
  if (v3 < 0x5555555555555556)
  {
    result = v3 - 0x5555555555555556 == a1[1];
    goto LABEL_9;
  }

  __break(0x5513u);
  return result;
}

uint64_t CMSAttributeParseAppleHashAgility(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    if (v7 - 0x5555555555555556 != a1[1])
    {
      result = 0;
LABEL_9:
      v8 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (*(a4 + 104))
    {
LABEL_8:
      result = 1;
      goto LABEL_9;
    }

    if (v7 <= v7 - 0x5555555555555556)
    {
      *(a4 + 112) = v7;
      *(a4 + 120) = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_8;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSAttributeParseSMIMECapabilities(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_4;
  }

  if (*a1 < 0x5555555555555556uLL)
  {
    result = *a1 - 0x5555555555555556 == a1[1];
LABEL_4:
    v3 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(0x5513u);
  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_raw(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, a3);
  }

  if (v3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_partial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 <= *(a2 + 8))
  {
    return memcmp(*a2, *a1, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unint64_t *a1, unint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_20;
    }

    v6 = *a1;
    v7 = *a1;
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (a2)
      {
        if (v7 < v6)
        {
          goto LABEL_20;
        }

        *a2 = v6;
        a2[1] = 0;
      }

      if (v6 == v7)
      {
        if (v6 <= a1[1] && *a1 <= v6)
        {
          *a1 = v6;
LABEL_18:
          result = 1;
          goto LABEL_19;
        }

LABEL_20:
        __break(0x5519u);
      }

      if (v6 > v7)
      {
        goto LABEL_20;
      }

      result = ccder_blob_decode_tl();
      if (result)
      {
        if (v6 != v7)
        {
          result = 0;
          goto LABEL_19;
        }

        if (v6 <= a1[1] && *a1 <= v6)
        {
          *a1 = v6;
          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }
  }

LABEL_19:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ccder_blob_decode_Time(uint64_t *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*a1 > a1[1])
  {
    goto LABEL_7;
  }

  v4 = *a1;
  if ((ccder_blob_decode_tl() & 1) == 0)
  {
    if (*a1 <= a1[1])
    {
      v5 = *a1;
      ccder_blob_decode_tl();
      result = 0;
      goto LABEL_6;
    }

LABEL_7:
    __break(0x5519u);
  }

  result = 0;
LABEL_6:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ccder_blob_decode_GeneralName(unint64_t *a1, int *a2, unint64_t *a3)
{
  result = 0;
  v22 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    *a3 = 0;
    a3[1] = 0;
    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v11 = *a1;
    if (ccder_blob_decode_tl())
    {
      *a2 = 0;
LABEL_6:
      v7 = v11;
LABEL_16:
      if (v7 <= a1[1] && *a1 <= v7)
      {
        *a1 = v7;
        result = 1;
        goto LABEL_19;
      }

LABEL_42:
      __break(0x5519u);
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v12 = *a1;
    v17 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v12;
      if (v17 < v12)
      {
        goto LABEL_42;
      }

      *a3 = v12;
      a3[1] = 0;
      v8 = 1;
    }

    else
    {
      if (*a1 > a1[1])
      {
        goto LABEL_42;
      }

      v13 = *a1;
      v18 = a1[1];
      if (!ccder_blob_decode_tl())
      {
        if (*a1 > a1[1])
        {
          goto LABEL_42;
        }

        v11 = *a1;
        if (ccder_blob_decode_tl())
        {
          v10 = 3;
        }

        else
        {
          if (*a1 > a1[1])
          {
            goto LABEL_42;
          }

          v14 = *a1;
          v19 = a1[1];
          if (ccder_blob_decode_tl())
          {
            v7 = v14;
            if (v19 < v14)
            {
              goto LABEL_42;
            }

            *a3 = v14;
            a3[1] = 0;
            v8 = 4;
            goto LABEL_15;
          }

          if (*a1 > a1[1])
          {
            goto LABEL_42;
          }

          v11 = *a1;
          if (ccder_blob_decode_tl())
          {
            v10 = 5;
          }

          else
          {
            if (*a1 > a1[1])
            {
              goto LABEL_42;
            }

            v15 = *a1;
            v20 = a1[1];
            if (ccder_blob_decode_tl())
            {
              v7 = v15;
              if (v20 < v15)
              {
                goto LABEL_42;
              }

              *a3 = v15;
              a3[1] = 0;
              v8 = 6;
              goto LABEL_15;
            }

            if (*a1 > a1[1])
            {
              goto LABEL_42;
            }

            v16 = *a1;
            v21 = a1[1];
            if (ccder_blob_decode_tl())
            {
              v7 = v16;
              if (v21 < v16)
              {
                goto LABEL_42;
              }

              *a3 = v16;
              a3[1] = 0;
              v8 = 7;
              goto LABEL_15;
            }

            if (*a1 > a1[1])
            {
              goto LABEL_42;
            }

            v11 = *a1;
            result = ccder_blob_decode_tl();
            if (!result)
            {
              goto LABEL_19;
            }

            v10 = 8;
          }
        }

        *a2 = v10;
        goto LABEL_6;
      }

      v7 = v13;
      if (v18 < v13)
      {
        goto LABEL_42;
      }

      *a3 = v13;
      a3[1] = 0;
      v8 = 2;
    }

LABEL_15:
    *a2 = v8;
    goto LABEL_16;
  }

LABEL_19:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ccder_blob_check_null()
{
  v2 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTParseCertificateSet(unint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  v19 = *MEMORY[0x1E69E9840];
  if (a1 < a2 && a4)
  {
    v8 = 0;
    v9 = a4 - 1;
    v10 = a3;
    v11 = &a3[a4];
    while (1)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v18[17] = v12;
      v18[18] = v12;
      v18[15] = v12;
      v18[16] = v12;
      v18[13] = v12;
      v18[14] = v12;
      v18[11] = v12;
      v18[12] = v12;
      v18[9] = v12;
      v18[10] = v12;
      v18[7] = v12;
      v18[8] = v12;
      v18[5] = v12;
      v18[6] = v12;
      v18[3] = v12;
      v18[4] = v12;
      v18[1] = v12;
      v18[2] = v12;
      v18[0] = v12;
      v16 = a1;
      v17 = a2;
      result = X509CertificateParse(v18, &v16);
      if (result)
      {
        break;
      }

      a1 = v16;
      a2 = v17;
      if (v16 > v17 || v10 < a3 || (v10 + 1) > v11 || v10 > v10 + 1)
      {
        __break(0x5519u);
      }

      *v10 = v18[0];
      v6 = v8 + 1;
      if (a1 < a2)
      {
        ++v10;
        if (v9 != v8++)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
LABEL_12:
    result = 0;
    if (a5)
    {
      *a5 = v6;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTParseExtensionValue(unint64_t a1, uint64_t a2, const void *a3, size_t a4, void *a5, void *a6)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_11;
  }

  v11[0] = a1;
  v11[1] = a1 + a2;
  result = X509CertificateParseWithExtension(v12, v11, a3, a4);
  if (!result)
  {
    result = 720914;
    if (*(&v13 + 1))
    {
      v10 = v14;
      if (v14)
      {
        result = 0;
        if (a5)
        {
          if (a6)
          {
            result = 0;
            *a5 = *(&v13 + 1);
            *a6 = v10;
          }
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTParseKey(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_7:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_7;
  }

  v8[0] = a1;
  v8[1] = a1 + a2;
  result = X509CertificateParse(v9, v8);
  if (!result)
  {
    result = X509CertificateParseKey(v9, a3, a4);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTEvaluateCertifiedChip(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, _BYTE *a7, uint64_t a8, const void *a9, size_t a10, BOOL *a11, uint64_t a12, uint64_t a13)
{
  __b[152] = *MEMORY[0x1E69E9840];
  memset(__b, 170, 0x4C0uLL);
  memset(v37, 170, sizeof(v37));
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_42;
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_41;
  }

  v34 = a1;
  v35 = a1 + a2;
  CommonName = X509ChainParseCertificateSet(&v34, __b, 4, &v37[2], &v36);
  if (CommonName)
  {
LABEL_4:
    v22 = CommonName;
    goto LABEL_25;
  }

  v22 = 327690;
  if (v34 != v35)
  {
    goto LABEL_25;
  }

  if (v36 != 2)
  {
    v22 = 327692;
    goto LABEL_25;
  }

  X509ChainResetChain(v37, &v37[2]);
  __b[74] = v37[0];
  v23 = v37[0] ? (v37[0] + 296) : &v37[1];
  *v23 = &__b[74];
  if ((&__b[38] + 1) != 0 && __b >= 0xFFFFFFFFFFFFFECFLL)
  {
LABEL_42:
    __break(0x5513u);
  }

  v37[0] = &__b[38];
  __b[75] = v37;
  __b[36] = 0;
  __b[37] = v37[1];
  *v37[1] = __b;
  v37[1] = &__b[36];
  CommonName = X509ChainCheckPathWithOptions(12, v37, a12, 0);
  if (CommonName)
  {
    goto LABEL_4;
  }

  v24 = **(v37[1] + 8);
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v32 = a3;
  v33 = a4;
  v25 = oidForPubKeyLength();
  if (v24 > v24 + 304)
  {
    goto LABEL_41;
  }

  if (v24 + 16 > v24 + 32)
  {
    goto LABEL_41;
  }

  v26 = (v24 + 56);
  if (v24 + 40 > v24 + 56 || v26 > v24 + 72)
  {
    goto LABEL_41;
  }

  CommonName = X509CertificateCheckSignatureWithPublicKey(&v32, &ecPublicKey, v25, (v24 + 16), (v24 + 40), v26);
  if (CommonName)
  {
    goto LABEL_4;
  }

  if (a9 && a10)
  {
    if ((a10 & 0x8000000000000000) != 0 || v24 + 248 > v24 + 264)
    {
      goto LABEL_41;
    }

    if (compare_octet_string_raw(v24 + 248, a9, a10))
    {
      v22 = 590085;
      goto LABEL_25;
    }
  }

  v29 = v37[0];
  if (v37[0] >= v37[0] + 304)
  {
LABEL_41:
    __break(0x5519u);
    goto LABEL_42;
  }

  v30 = X509CertificateParseKey(v37[0], a5, a6);
  if (v30)
  {
    v22 = v30;
  }

  else
  {
    v22 = 327691;
  }

  if (v29 && !v30)
  {
    if (a11)
    {
      *a11 = (*(v29 + 240) & a13) != 0;
    }

    if (!a7 || !a8)
    {
      goto LABEL_40;
    }

    v31[0] = 0;
    v31[1] = 0;
    if (v29 + 104 <= v29 + 120)
    {
      CommonName = X509CertificateSubjectNameGetCommonName((v29 + 104), v31);
      if (CommonName)
      {
        goto LABEL_4;
      }

      if ((a8 & 0x8000000000000000) == 0)
      {
        CommonName = CTCopyUID(v31, a7, a8);
        if (CommonName)
        {
          goto LABEL_4;
        }

LABEL_40:
        v22 = 0;
        goto LABEL_25;
      }
    }

    goto LABEL_41;
  }

LABEL_25:
  v27 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t CTEvaluateCertsForPolicy(unint64_t a1, uint64_t a2, char a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, __int128 *a11)
{
  v46 = *MEMORY[0x1E69E9840];
  memset(v42, 170, sizeof(v42));
  bzero(v43, 0x4C0uLL);
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_47:
    __break(0x5513u);
  }

  v41 = 0xAAAAAAAAAAAAAAAALL;
  if (a1 + a2 < a1)
  {
    goto LABEL_46;
  }

  v39 = a1;
  v40 = a1 + a2;
  result = X509ChainParseCertificateSet(&v39, v43, 4, &v42[2], &v41);
  if (result)
  {
    goto LABEL_34;
  }

  if (v39 != v40)
  {
    result = 327690;
    goto LABEL_34;
  }

  if ((a4 & 1) == 0 && !v44)
  {
    X509ChainResetChain(v42, &v42[2]);
    v20 = v42[0];
    v21 = (v42[0] + 296);
    if (!v42[0])
    {
      v21 = &v42[1];
    }

    *v21 = v45;
    v42[0] = v43;
    v45[0] = v20;
    v45[1] = v42;
LABEL_23:
    v38[0] = a7;
    v38[1] = a8;
    if (a7)
    {
      v24 = a8 == 0;
    }

    else
    {
      v24 = 1;
    }

    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = 0xAAAAAAAAAAAAAAAALL;
    v35 = v25;
    v36 = v25;
    v34 = *a11;
    LOBYTE(v35) = *(a11 + 16);
    if (v24)
    {
      v26 = a3;
    }

    else
    {
      v26 = 1;
    }

    BYTE1(v35) = v26;
    WORD1(v35) = *(a11 + 9);
    if (!v24)
    {
      v27 = *(a11 + 4);
      *(&v35 + 1) = v38;
      *&v36 = v27;
      v28 = oidForPubKeyLength();
LABEL_33:
      v30 = *(a11 + 6);
      *(&v36 + 1) = v28;
      v37 = v30;
      result = X509ChainCheckPathWithOptions(12, v42, &v34, 0);
      if (result)
      {
        goto LABEL_34;
      }

      v32 = v42[0];
      if (!a5 || !a6 || !v42[0])
      {
        goto LABEL_40;
      }

      if (v42[0] < v42[0] + 304)
      {
        result = X509CertificateParseKey(v42[0], a5, a6);
        if (result)
        {
          goto LABEL_34;
        }

LABEL_40:
        if (a10 && v32)
        {
          v33 = v32[32];
          *a10 = v32[31];
          a10[1] = v33;
        }

        result = 0;
        if (a9 && v32)
        {
          result = 0;
          *a9 = v32[30];
        }

        goto LABEL_34;
      }

      goto LABEL_46;
    }

    if (*(a11 + 3) < (*(a11 + 3) + 16))
    {
      v29 = *(a11 + 4);
      v28 = *(a11 + 5);
      *(&v35 + 1) = *(a11 + 3);
      *&v36 = v29;
      goto LABEL_33;
    }

LABEL_46:
    __break(0x5519u);
    goto LABEL_47;
  }

  if (v43[265] != 1)
  {
    v23 = &v46;
    v22 = v43;
    goto LABEL_20;
  }

  if (!v42[2])
  {
    v22 = 0;
    goto LABEL_22;
  }

  v22 = v42[2];
  do
  {
    if ((v22[265] & 1) == 0)
    {
      v23 = (v22 + 304);
      if (v22 < v22 + 304)
      {
        goto LABEL_20;
      }

      goto LABEL_46;
    }

    v22 = *(v22 + 34);
  }

  while (v22);
  v23 = (v42[2] + 304);
  v22 = v42[2];
LABEL_20:
  if (v22 + 304 > v23 || v22 > v22 + 304)
  {
    goto LABEL_46;
  }

LABEL_22:
  result = X509ChainBuildPathPartial(v22, &v42[2], v42, a4 ^ 1u);
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_34:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTEvaluatePragueSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0xAAAAAAAA0000AA01;
  v9 = xmmword_1E0BB3B00;
  BYTE1(v10) = a5;
  v11 = 0u;
  v12 = 0u;
  result = CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v9, a6, a7);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTEvaluateKDLSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0xAAAAAAAA0000AA01;
  v9 = xmmword_1E0BB3B10;
  BYTE1(v10) = a5;
  v11 = 0u;
  v12 = 0u;
  result = CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v9, a6, a7);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTVerifyAppleMarkerExtension(void *a1, uint64_t a2)
{
  result = 327700;
  v4 = a1[31];
  v5 = a1[32];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 327707;
  }

  v7 = a1[30];
  if ((v7 & 0x100000000) == 0)
  {
    if ((v7 & 0x200000000) == 0)
    {
      return result;
    }

    if (!__CFADD__(v4, v5))
    {
      v11 = v4 + v5;
      if (v4 + v5 != -1)
      {
        if (v5 > 0x13)
        {
          return 327704;
        }

        v15 = (v11 - 1);
        if (v11 - 1 >= v4)
        {
          v16 = 0;
          v10 = 0;
          v17 = 0;
          while (v15 < v11)
          {
            v18 = *v15;
            if ((v18 - 58) < 0xFFFFFFF6)
            {
              return 327705;
            }

            v19 = (&powersOfTen + v16);
            if ((&powersOfTen + v16) < &powersOfTen || v19 + 1 > &CTOidCommonName || v19 > v19 + 1)
            {
              break;
            }

            if (v16 == 160 || (v17 & 0x1FFFFFFFFFFFFFFFLL) == 0x14)
            {
              goto LABEL_42;
            }

            v20 = v18 & 0xF;
            v21 = *v19;
            if (!is_mul_ok(v20, v21))
            {
              goto LABEL_43;
            }

            v22 = v20 * v21;
            v14 = __CFADD__(v10, v22);
            v10 += v22;
            if (v14)
            {
              goto LABEL_41;
            }

            ++v17;
            --v15;
            v16 += 8;
            if (v15 < v4)
            {
              goto LABEL_23;
            }
          }

LABEL_40:
          __break(0x5519u);
LABEL_41:
          __break(0x5500u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(0x550Cu);
          goto LABEL_44;
        }

        goto LABEL_13;
      }
    }

LABEL_44:
    __break(0x5513u);
    return result;
  }

  if (__CFADD__(v4, v5))
  {
    goto LABEL_44;
  }

  v8 = v4 + v5;
  if (v4 + v5 == -1)
  {
    goto LABEL_44;
  }

  v9 = (v8 - 1);
  if (v8 - 1 >= v4)
  {
    LOBYTE(v12) = 0;
    v10 = 0;
    while (v9 < v8)
    {
      v13 = (*v9 & 0x7F) << (7 * v12);
      v14 = __CFADD__(v10, v13);
      v10 += v13;
      if (v14)
      {
        goto LABEL_41;
      }

      if (--v9 >= v4)
      {
        v12 = (v12 + 1);
        if (v12 < 9)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_13:
  v10 = 0;
LABEL_23:
  if (v10 == a2)
  {
    return 0;
  }

  else
  {
    return 589829;
  }
}